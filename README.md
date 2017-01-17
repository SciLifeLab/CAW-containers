# Containers for CAW

[![CAW-containers version][version-badge]][version-link] [![MIT License][license-badge]][license-link] [![Nextflow version][nextflow-badge]][nextflow-link]

Nextflow Cancer Analysis Workflow Prototype developed at the [National Genomics Infastructure](https://ngisweden.scilifelab.se/)
at [SciLifeLab Stockholm](https://www.scilifelab.se/platforms/ngi/), Sweden.

## Author
- Maxime Garcia (@MaxUlysse)

## Containers
Each container contains a tool whose version is the directory the Dockerfile is inside.

### bwa [![bwa-Docker status][bwa-docker-badge]][bwa-docker-link]
- Based on `debian:8.6`
- Contain [BWA](http://github.com/lh3/bwa)

### fastqc [![fastqc-Docker status][fastqc-docker-badge]][fastqc-docker-link]
- Based on `debian:8.6`
- Contain [FastQC](http://www.bioinformatics.babraham.ac.uk/projects/fastqc/)

### gatk [![gatk-Docker status][gatk-docker-badge]][gatk-docker-link]
- Based on `debian:8.6`
- Contain [gatk](https://github.com/broadgsa/gatk-protected)

### mutect1 [![mutect1-Docker status][mutect1-docker-badge]][mutect1-docker-link]
- Based on `debian:8.6`
- Contain [mutect1]()

### picard [![picard-Docker status][picard-docker-badge]][picard-docker-link]
- Based on `openjdk:8`
- Contain [picard](https://github.com/broadinstitute/picard)

### samtools [![samtools-Docker status][samtools-docker-badge]][samtools-docker-link]
- Based on `debian:8.6`
- Contain [samtools](https://github.com/samtools/samtools)


[version-badge]: https://img.shields.io/badge/CAW--containers-vα-green.svg
[version-link]: https://github.com/MaxUlysse/CAW-containers/releases/tag/vα
[license-badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license-link]: https://github.com/MaxUlysse/CAW-containers/blob/master/LICENSE
[nextflow-badge]: https://img.shields.io/badge/nextflow-%E2%89%A50.22.2-brightgreen.svg
[nextflow-link]: https://www.nextflow.io/
[bwa-docker-badge]: https://img.shields.io/docker/automated/maxulysse/bwa.svg
[bwa-docker-link]: https://hub.docker.com/r/maxulysse/bwa
[fastqc-docker-badge]: https://img.shields.io/docker/automated/maxulysse/fastqc.svg
[fastqc-docker-link]: https://hub.docker.com/r/maxulysse/fastqc
[gatk-docker-badge]: https://img.shields.io/docker/automated/maxulysse/gatk.svg
[gatk-docker-link]: https://hub.docker.com/r/maxulysse/gatk
[mutect1-docker-badge]: https://img.shields.io/docker/automated/maxulysse/mutect1.svg
[mutect1-docker-link]: https://hub.docker.com/r/maxulysse/mutect1
[picard-docker-badge]: https://img.shields.io/docker/automated/maxulysse/picard.svg
[picard-docker-link]: https://hub.docker.com/r/maxulysse/picard
[samtools-docker-badge]: https://img.shields.io/docker/automated/maxulysse/samtools.svg
[samtools-docker-link]: https://hub.docker.com/r/maxulysse/samtools
