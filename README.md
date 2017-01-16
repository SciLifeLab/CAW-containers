# Containers for CAW

[![CAW-containers version][version-badge]][version-link] [![MIT License][license-badge]][license-link] [![Nextflow version][nextflow-badge]][nextflow-link] [![Docker status][docker-badge]][docker-link]

Nextflow Cancer Analysis Workflow Prototype developed at the [National Genomics Infastructure](https://ngisweden.scilifelab.se/)
at [SciLifeLab Stockholm](https://www.scilifelab.se/platforms/ngi/), Sweden.

## Author
- Maxime Garcia (@MaxUlysse)

## Containers
### caw-base
- Based on `debian:8.6`
- Contain building essentials

### bwa
- Based on `caw-base`
- Contain [BWA](http://github.com/lh3/bwa)

### fastqc
- Based on `caw-base`
- Contain [FastQC](http://www.bioinformatics.babraham.ac.uk/projects/fastqc/)

### gatk
- Based on `caw-base`
- Contain [gatk](https://github.com/broadgsa/gatk-protected)

### mutect1
- Based on `caw-base`
- Contain [mutect1]()

### picard
- Based on `caw-base` & `openjdk:8`
- Contain [picard](https://github.com/broadinstitute/picard)

### samtools
- Based on `caw-base`
- Contain [samtools](https://github.com/samtools/samtools)


[version-badge]:    https://img.shields.io/badge/CAW--containers-vα-green.svg
[version-link]:     https://github.com/MaxUlysse/CAW-containers/releases/tag/vα
[license-badge]:    https://img.shields.io/badge/license-MIT-blue.svg
[license-link]:     https://github.com/MaxUlysse/CAW-containers/blob/master/LICENSE
[nextflow-badge]:   https://img.shields.io/badge/nextflow-%E2%89%A50.22.2-brightgreen.svg
[nextflow-link]:    https://www.nextflow.io/
[docker-badge]:     https://img.shields.io/docker/automated/maxulysse/caw-base.svg
[docker-link]:      https://hub.docker.com/r/maxulysse/caw-base
