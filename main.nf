#!/usr/bin/env nextflow

/*
vim: syntax=groovy
-*- mode: groovy;-*-
================================================================================
=                          C A W - c o n ta i n e r s                          =
================================================================================
@Author
Maxime Garcia <maxime.garcia@scilifelab.se> [@MaxUlysse]
--------------------------------------------------------------------------------
 @Homepage
 https://github.com/SciLifeLab/CAW-containers
--------------------------------------------------------------------------------
 @Documentation
 https://github.com/SciLifeLab/CAW-containers/blob/master/README.md
--------------------------------------------------------------------------------
@Licence
 https://github.com/SciLifeLab/CAW-containers/blob/master/LICENSE
--------------------------------------------------------------------------------
 Processes overview
 - BuildContainers - Build containers using Docker
 - PushContainers - Push containers to DockerHub
================================================================================
=                           C O N F I G U R A T I O N                          =
================================================================================
*/

version = '1.1'
containersList = defineContainersList()
containers = params.containers.split(',').collect {it.trim()}
containers = containers == ['all'] ? containersList : containers
docker = params.docker ? true : false
push = params.docker && params.push ? true : false
repository = params.repository
tag = params.tag ? params.tag : version
singularity = params.singularity ? true : false

if (params.help) {
  help_message(version, grabRevision())
  exit 1
}
if (params.version) {
  version_message(version, grabRevision())
  exit 1
}

startMessage(version, grabRevision())

if (!checkContainers(containers,containersList)) {exit 1, 'Unknown container(s), see --help for more information'}

/*
================================================================================
=                                 P R O C E S S                                =
================================================================================
*/

dockerContainers = containers
singularityContainers = containers

process BuildDockerContainers {
  tag {repository + "/" + container + ":" + tag}

  input:
    val container from dockerContainers

  output:
    val container into dockerContainersBuilt

  when: docker

  script:
  """
  docker build -t $repository/$container:$tag $baseDir/$container/.
  """
}

dockerContainersBuilt = dockerContainersBuilt.view {"Docker container: $repository/$it:$tag built."}

process BuildSingularityContainers {
  tag {container}

  input:
    val container from singularityContainers

  output:
    val container into singularityContainersBuilt

  when: singularity

  script:
  """
  docker run \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v /tmp/$container:/output \
  --privileged -t --rm \
  singularityware/docker2singularity \
  $repository/$container:$tag
  """
}

singularityContainersBuilt = singularityContainersBuilt.view {"Singularity container: $it built."}

process PushDockerContainers {
  tag {repository + "/" + container + ":" + tag}

  input:
    val container from dockerContainersBuilt

  output:
    val container into dockerContainersPushed

  when: docker && push

  script:
  """
  docker push $repository/$container:$tag
  """
}

dockerContainersPushed = dockerContainersPushed.view {"Docker container: $repository/$it:$tag pushed"}

/*
================================================================================
=                               F U N C T I O N S                              =
================================================================================
*/

def checkContainerExistence(container, list) {
  try {assert list.contains(container)}
  catch (AssertionError ae) {
    println("Unknown container: $container")
    return false
  }
  return true
}

def checkContainers(containers, containersList) {
  containerExists = true
  containers.each{
    test = checkContainerExistence(it, containersList)
    !(test) ? containerExists = false : ""
  }
  return containerExists ? true : false
}

def defineContainersList(){
  return ['bcftools', 'concatvcf', 'fastqc', 'gatk', 'multiqc', 'mutect1', 'picard', 'mapreads', 'runallelecount', 'runascat', 'runconvertallelecounts', 'runmanta', 'strelka', 'samtools', 'snpeff']
}

def grabRevision() {
	return workflow.commitId ? workflow.revision : workflow.scriptId.substring(0,10)
}

def helpMessage(version, revision) {
  log.info "CAW-containers ~ $version - revision: $revision"
  log.info "    Usage:"
  log.info "       nextflow run SciLifeLab/CAW-containers [--docker] [--push]"
  log.info "          [--containers <container1...>] [--singularity]"
  log.info "          [--tag <tag>] [--repository <repository>]"
  log.info "    Example:"
  log.info "      nextflow run . --docker --containers multiqc,fastqc"
  log.info "    --containers: Choose which containers to build. Default: all."
  log.info "       Possible values:"
  log.info "         all, bcftools, fastqc, gatk, multiqc, mutect1,"
  log.info "         picard, mapreads, runallelecount, runascat,"
  log.info "         runconvertallelecounts, runmanta, strelka,"
  log.info "         samtools, snpeff"
  log.info "    --docker: Build containers using Docker"
  log.info "    --help"
  log.info "       you're reading it"
  log.info "    --push: Push containers to DockerHub"
  log.info "    --repository: Build containers under given repository."
  log.info "       Default: maxulysse"
  log.info "    --tag`: Build containers using given tag."
  log.info "       Default is version number."
  log.info "    --singularity: Build containers using Singularity"
  log.info "    --version"
  log.info "       displays version number"
}

def startMessage(version, revision) {
  log.info "CAW-containers ~ $version [$revision]"
  log.info "Command line: $workflow.commandLine"
  log.info "Project Dir : $workflow.projectDir"
}

def versionMessage(version, revision) {
  log.info "CAW-containers"
  log.info "  version $version"
  log.info workflow.commitId ? "Git info   : $workflow.repository - $workflow.revision [$workflow.commitId]" : "  revision  : $revision"
  log.info "Project   : $workflow.projectDir"
  log.info "Directory : $workflow.launchDir"
}

workflow.onComplete {
	log.info "N E X T F L O W  ~  version $workflow.nextflow.version [$workflow.nextflow.build]"
  log.info "CAW-containers ~ $version [$revision]"
	log.info "Command line: $workflow.commandLine"
  log.info "Tag         : $tag"
  log.info "Repository  : $repository"
	log.info "Project Dir : $workflow.projectDir"
	log.info "Completed at: $workflow.complete"
	log.info "Duration    : $workflow.duration"
	log.info "Success     : $workflow.success"
	log.info "Exit status : $workflow.exitStatus"
	log.info "Error report: " + workflow.errorReport ?: '-'
}

workflow.onError {
	log.info "CAW-containers"
	log.info "Workflow execution stopped with the following message: $workflow.errorMessage"
}
