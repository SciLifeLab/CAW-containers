<img src="doc/Logo.png" width="300" title="CAW">
# Containers for Cancer Analysis Workflow

[![caw-containers version][version-badge]][version-link] [![Licence][licence-badge]][licence-link] [![nextflow version][nextflow-badge]][nextflow-link]

CAW developed at the [National Genomics Infastructure][ngi-link] at [SciLifeLab Stockholm][scilifelab-stockholm-link], Sweden.

## Author

- Maxime Garcia (@MaxUlysse)

## Containers

For process that needs only one tool, a container is made with the tool to be used for this process, named from the tool.
For process that needs more than one tool, a container is made with the tools to be used for this process, named from the process.

### bcftools [![bcftools-docker status][bcftools-docker-badge]][bcftools-docker-link]

- Based on `debian:8.6`
- Contain **[BCFTools][bcftools-link]** 1.3

### fastqc [![fastqc-docker status][fastqc-docker-badge]][fastqc-docker-link]

- Based on `openjdk:8`
- Contain **[FastQC][fastqc-link]** 0.11.5

### gatk [![gatk-docker status][gatk-docker-badge]][gatk-docker-link]

- Based on `openjdk:8`
- Contain **[GATK][gatk-link]** 3.7

### MapReads [![mapreads-docker status][mapreads-docker-badge]][mapreads-docker-link]

- Based on `debian:8.6`
- Contain **[BWA][bwa-link]** 0.7.8
- Contain **[SAMTools][samtools-link]** 1.3

### multiqc [![multiqc-docker status][multiqc-docker-badge]][multiqc-docker-link]

- Based on `openjdk:8`
- Contain **[MultiQC][multiqc-link]** 0.9

### mutect1 [![mutect1-docker status][mutect1-docker-badge]][mutect1-docker-link]

- Based on `openjdk:7`
- Contain **[MuTect1][mutect1-link]** 1.5

### picard [![picard-docker status][picard-docker-badge]][picard-docker-link]

- Based on `openjdk:8`
- Contain **[Picard][picard-link]** 2.0.1

### RunAlleleCount [![runallelecount-docker status][runallelecount-docker-badge]][runallelecount-docker-link]

- Based on `debian:8.6`
- Contain **[AlleleCount][AlleleCount-link]** 2.2.0
- Contain **[SAMTools][samtools-link]** 1.3

### RunManta [![runmanta-docker status][runmanta-docker-badge]][runmanta-docker-link]

- Based on `debian:8.6`
- Contain **[Manta][manta-link]** 1.0
- Contain **[SAMTools][samtools-link]** 1.3

### snpeff [![snpeff-docker status][snpeff-docker-badge]][snpeff-docker-link]

- Based on `openjdk:8`
- Contain **[snpEff][snpeff-link]** 4.2

### strelka [![strelka-docker status][strelka-docker-badge]][strelka-docker-link]

- Based on `debian:8.6`
- Contain **[Strelka][strelka-link]** 1.0.15

[AlleleCount-link]: https://github.com/cancerit/alleleCount
[bwa-link]: https://github.com/lh3/bwa
[bcftools-docker-badge]: https://img.shields.io/docker/automated/maxulysse/bcftools.svg
[bcftools-docker-link]: https://hub.docker.com/r/maxulysse/bcftools
[bcftools-link]: https://samtools.github.io/bcftools/
[fastqc-docker-badge]: https://img.shields.io/docker/automated/maxulysse/fastqc.svg
[fastqc-docker-link]: https://hub.docker.com/r/maxulysse/fastqc
[fastqc-link]: http://www.bioinformatics.babraham.ac.uk/projects/fastqc/
[gatk-docker-badge]: https://img.shields.io/docker/automated/maxulysse/gatk.svg
[gatk-docker-link]: https://hub.docker.com/r/maxulysse/gatk
[gatk-link]: https://github.com/broadgsa/gatk-protected
[licence-badge]: https://img.shields.io/github/license/MaxUlysse/CAW-containers.svg
[licence-link]: https://github.com/MaxUlysse/CAW-containers/blob/master/LICENSE
[manta-link]: https://github.com/Illumina/manta
[mapreads-docker-badge]: https://img.shields.io/docker/automated/maxulysse/mapreads.svg
[mapreads-docker-link]: https://hub.docker.com/r/maxulysse/mapreads
[multiqc-docker-badge]: https://img.shields.io/docker/automated/maxulysse/multiqc.svg
[multiqc-docker-link]: https://hub.docker.com/r/maxulysse/multiqc
[multiqc-link]: https://github.com/ewels/MultiQC/
[mutect1-docker-badge]: https://img.shields.io/docker/automated/maxulysse/mutect1.svg
[mutect1-docker-link]: https://hub.docker.com/r/maxulysse/mutect1
[mutect1-link]: https://github.com/broadinstitute/mutect
[nextflow-badge]: https://img.shields.io/badge/nextflow-%E2%89%A50.22.2-brightgreen.svg
[nextflow-link]: https://www.nextflow.io/
[ngi-link]: https://ngisweden.scilifelab.se/
[picard-docker-badge]: https://img.shields.io/docker/automated/maxulysse/picard.svg
[picard-docker-link]: https://hub.docker.com/r/maxulysse/picard
[picard-link]: https://github.com/broadinstitute/picard
[runmanta-docker-badge]: https://img.shields.io/docker/automated/maxulysse/runmanta.svg
[runallelecount-docker-link]: https://hub.docker.com/r/maxulysse/runallelecount
[runallelecount-docker-badge]: https://img.shields.io/docker/automated/maxulysse/runallelecount.svg
[runmanta-docker-link]: https://hub.docker.com/r/maxulysse/runmanta
[samtools-link]: https://github.com/samtools/samtools
[scilifelab-stockholm-link]: https://www.scilifelab.se/platforms/ngi/
[snpeff-docker-badge]: https://img.shields.io/docker/automated/maxulysse/snpeff.svg
[snpeff-docker-link]: https://hub.docker.com/r/maxulysse/snpeff
[snpeff-link]: http://snpeff.sourceforge.net/
[strelka-docker-badge]: https://img.shields.io/docker/automated/maxulysse/strelka.svg
[strelka-docker-link]: https://hub.docker.com/r/maxulysse/strelka
[strelka-link]: https://sites.google.com/site/strelkasomaticvariantcaller/home
[version-badge]: https://img.shields.io/github/release/MaxUlysse/CAW-containers.svg
[version-link]: https://github.com/MaxUlysse/CAW-containers/releases/latest
