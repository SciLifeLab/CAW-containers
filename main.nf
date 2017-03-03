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
 https://github.com/MaxUlysse/CAW-containers
--------------------------------------------------------------------------------
 @Documentation
 https://github.com/MaxUlysse/caw/containers/blob/master/README.md
--------------------------------------------------------------------------------
@Licence
 https://github.com/MaxUlysse/caw/containers/blob/master/LICENSE
--------------------------------------------------------------------------------
 Processes overview
 - BuildContainers - Build containers using Docker
 - PushContainers - Push containers to DockerHub
================================================================================
=                           C O N F I G U R A T I O N                          =
================================================================================
*/

revision = grabGitRevision() ?: ''
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

containerList = [
	'bcftools',
	'fastqc',
	'gatk',
	'multiqc',
	'mutect1',
	'picard',
	'mapreads',
	'runallelecount',
	'runmanta',
	'strelka',
	'samtools',
	'snpeff'
]

/*
================================================================================
=                                 P R O C E S S                                =
================================================================================
*/

process BuildContainers {
	tag {container}

	input:
		val container from containerList

	output:
		val container into containerBuilt

	script:
	"""
	docker build -t maxulysse/${container}:${version} $baseDir/${container}/.
	"""
}

containerBuilt = containerBuilt.view {"Container built: $it"}

process PushContainers {
	tag {container}

	input:
		val container from containerBuilt

	output:
		val container into containerPushed

	script:
	"""
	docker push maxulysse/${container}:${version}
	"""
}

containerPushed = containerPushed.view {"Container pushed: $it"}

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
	log.info "       nextflow run MaxUlysse/CAW-containers"
	log.info "    --help"
	log.info "       you're reading it"
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
	if (workflow.commitId) {
		log.info "Git info    : $workflow.repository - $workflow.revision [$workflow.commitId]"
	} else {
		log.info "  revision  : $revision"
	}
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
