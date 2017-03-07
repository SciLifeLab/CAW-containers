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

containers = params.containers.split(',').collect {it.trim()}
containers = (containers == ['all'] ? ['bcftools', 'fastqc', 'gatk', 'multiqc', 'mutect1', 'picard', 'mapreads', 'runallelecount', 'runmanta', 'strelka', 'samtools', 'snpeff'] : containers)
docker = (params.docker ? true : false)
push = (params.docker && params.push ? true : false)
repository = params.repository
revision = grabGitRevision() ?: ''
singularity = (params.singularity ? true : false)
version = '1.0'

switch (params) {
  case {params.help} :
    helpMessage(version, revision)
    exit 1

  case {params.version} :
    versionMessage(version, revision)
    exit 1
}

startMessage(version, revision)

/*
================================================================================
=                                 P R O C E S S                                =
================================================================================
*/

dockerContainers = containers
singularityContainers = containers

process BuildDockerContainers {
  tag {container}

  input:
    val container from dockerContainers

  output:
    val container into dockerContainersBuilt

  when: docker

  script:
  """
  docker build -t ${repository}/${container}:${version} $baseDir/${container}/.
  """
}

dockerContainersBuilt = dockerContainersBuilt.view {"Docker container: $it built."}

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
  -v /tmp/${container}:/output \
  --privileged -t --rm \
  singularityware/docker2singularity \
  ${repository}/${container}:${version}
  """
}

singularityContainersBuilt = singularityContainersBuilt.view {"Singularity container: $it built."}

process PushDockerContainers {
  tag {container}

  input:
    val container from dockerContainersBuilt

  output:
    val container into dockerContainersPushed

  when: docker && push

  script:
  """
  docker push ${repository}/${container}:${version}
  """
}

dockerContainersPushed = dockerContainersPushed.view {"Docker container: $it pushed"}

/*
================================================================================
=                               F U N C T I O N S                              =
================================================================================
*/

def grabGitRevision() { // Borrowed from https://github.com/NBISweden/wgs-structvar
  if (workflow.commitId) { // it's run directly from github
    return workflow.commitId.substring(0,10)
  }
  // Try to find the revision directly from git
  headPointerFile = file("${baseDir}/.git/HEAD")
  if (!headPointerFile.exists()) {
    return ''
  }
  ref = headPointerFile.newReader().readLine().tokenize()[1]
  refFile = file("${baseDir}/.git/$ref")
  if (!refFile.exists()) {
    return ''
  }
  revision = refFile.newReader().readLine()
  return revision.substring(0,10)
}

def helpMessage(version, revision) {
  log.info "CAW-containers ~ $version - revision: $revision"
  log.info "    Usage:"
  log.info "       nextflow run SciLifeLab/CAW-containers [--containers]"
  log.info "          [--docker] [--singularity] [--push]"
  log.info "    Example:"
  log.info "      nextflow run . --containers multiqc,fastqc"
  log.info "    --containers: Choose which containers to build. Default: `all`."
  log.info "       Possible values:"
  log.info "         `all`, `bcftools`, `fastqc`, `gatk`, `multiqc`, `mutect1`,"
  log.info "         `picard`, `mapreads`, `runallelecount`, `runmanta`,"
  log.info "         `strelka`, `samtools`, `snpeff`"
  log.info "    --docker: Build containers using Docker (Default)"
  log.info "    --help"
  log.info "       you're reading it"
  log.info "    --push: Push containers to DockerHub"
  log.info "    --singularity: Build containers using Singularity"
  log.info "    --version"
  log.info "       displays version number"
}

def startMessage(version, revision) {
  log.info "CAW-containers ~ $version - revision: $revision"
  log.info "Command line: $workflow.commandLine"
  log.info "Project Dir : $workflow.projectDir"
  log.info "Launch Dir  : $workflow.launchDir"
  log.info "Work Dir    : $workflow.workDir"
}

def versionMessage(version, revision) {
  log.info "CAW-containers"
  log.info "  version $version"
  log.info (workflow.commitId ? "Git info   : $workflow.repository - $workflow.revision [$workflow.commitId]" : "  revision  : $revision")
  log.info "Project   : $workflow.projectDir"
  log.info "Directory : $workflow.launchDir"
}

workflow.onComplete {
	log.info "N E X T F L O W ~ $workflow.nextflow.version - $workflow.nextflow.build"
	log.info "CAW-containers ~ $version - revision: $revision"
	log.info "Command line: $workflow.commandLine"
	log.info "Project Dir : $workflow.projectDir"
	log.info "Launch Dir  : $workflow.launchDir"
	log.info "Work Dir    : $workflow.workDir"
	log.info "Completed at: $workflow.complete"
	log.info "Duration    : $workflow.duration"
	log.info "Success     : $workflow.success"
	log.info "Exit status : $workflow.exitStatus"
	log.info "Error report:" + (workflow.errorReport ?: '-')
}

workflow.onError {
	log.info "CAW-containers"
	log.info "Workflow execution stopped with the following message: $workflow.errorMessage"
}
