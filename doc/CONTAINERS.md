# Containers

A container named after the process is made for each process. If a container can be reused, it will be named after the tool used.

## bcftools [![bcftools-docker status][bcftools-docker-badge]][bcftools-docker-link]

- Based on `debian:8.6`
- Contain **[BCFTools][bcftools-link]** 1.4

## concatvcf [![concatvcf-docker status][concatvcf-docker-badge]][concatvcf-docker-link]

- Based on `maxulysse/gatk:1.0`
- Contain **[Picard][picard-link]** 2.0.1

## fastqc [![fastqc-docker status][fastqc-docker-badge]][fastqc-docker-link]

- Based on `openjdk:8`
- Contain **[FastQC][fastqc-link]** 0.11.5

## gatk [![gatk-docker status][gatk-docker-badge]][gatk-docker-link]

- Based on `openjdk:8`
- Contain **[GATK][gatk-link]** 3.7

## mapreads [![mapreads-docker status][mapreads-docker-badge]][mapreads-docker-link]

- Based on `maxulysse/samtools:1.0`
- Contain **[BWA][bwa-link]** 0.7.8

## multiqc [![multiqc-docker status][multiqc-docker-badge]][multiqc-docker-link]

- Based on `openjdk:8`
- Contain **[MultiQC][multiqc-link]** 0.9

## mutect1 [![mutect1-docker status][mutect1-docker-badge]][mutect1-docker-link]

- Based on `openjdk:7`
- Contain **[MuTect1][mutect1-link]** 1.5

## picard [![picard-docker status][picard-docker-badge]][picard-docker-link]

- Based on `openjdk:8`
- Contain **[Picard][picard-link]** 2.0.1

## runallelecount [![runallelecount-docker status][runallelecount-docker-badge]][runallelecount-docker-link]

- Based on `maxulysse/samtools:1.0`
- Contain **[AlleleCount][allelecount-link]** 2.2.0

## runascat [![runascat-docker status][runascat-docker-badge]][runascat-docker-link]

- Based on `maxulysse/samtools:1.0`
- Contain **[RColorBrewer][rcolorbrewer-link]**

## runconvertallelecounts [![runconvertallelecounts-docker status][runconvertallelecounts-docker-badge]][runconvertallelecounts-docker-link]

- Based on `r-base:3.3.2`

## runmanta [![runmanta-docker status][runmanta-docker-badge]][runmanta-docker-link]

- Based on `maxulysse/samtools:1.0`
- Contain **[Manta][manta-link]** 1.0.3

## snpeff [![snpeff-docker status][snpeff-docker-badge]][snpeff-docker-link]

- Based on `openjdk:8`
- Contain **[snpEff][snpeff-link]** 4.2

## samtools [![samtools-docker status][samtools-docker-badge]][samtools-docker-link]

- Based on `debian:8.6`
- Contain **[samtools][samtools-link]** 1.4

## strelka [![strelka-docker status][strelka-docker-badge]][strelka-docker-link]

- Based on `debian:8.6`
- Contain **[Strelka][strelka-link]** 1.0.15

---
[![](images/SciLifeLab_logo.png "SciLifeLab")][scilifelab-link] [![](images/NGI-final-small.png "NGI")][ngi-link]

[allelecount-link]: https://github.com/cancerit/alleleCount
[bcftools-docker-badge]: https://img.shields.io/docker/automated/maxulysse/bcftools.svg
[bcftools-docker-link]: https://hub.docker.com/r/maxulysse/bcftools
[bcftools-link]: https://samtools.github.io/bcftools/
[bwa-link]: https://github.com/lh3/bwa
[concatvcf-docker-badge]: https://img.shields.io/docker/automated/maxulysse/concatvcf.svg
[concatvcf-docker-link]: https://hub.docker.com/r/maxulysse/concatvcf
[fastqc-docker-badge]: https://img.shields.io/docker/automated/maxulysse/fastqc.svg
[fastqc-docker-link]: https://hub.docker.com/r/maxulysse/fastqc
[fastqc-link]: http://www.bioinformatics.babraham.ac.uk/projects/fastqc/
[gatk-docker-badge]: https://img.shields.io/docker/automated/maxulysse/gatk.svg
[gatk-docker-link]: https://hub.docker.com/r/maxulysse/gatk
[gatk-link]: https://github.com/broadgsa/gatk-protected
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
[rcolorbrewer-link]: https://CRAN.R-project.org/package=RColorBrewer
[runallelecount-docker-badge]: https://img.shields.io/docker/automated/maxulysse/runallelecount.svg
[runallelecount-docker-link]: https://hub.docker.com/r/maxulysse/runallelecount
[runascat-docker-badge]: https://img.shields.io/docker/automated/maxulysse/runascat.svg
[runascat-docker-link]: https://hub.docker.com/r/maxulysse/runascat
[runconvertallelecounts-docker-badge]: https://img.shields.io/docker/automated/maxulysse/runconvertallelecounts.svg
[runconvertallelecounts-docker-link]: https://hub.docker.com/r/maxulysse/runconvertallelecounts
[runmanta-docker-badge]: https://img.shields.io/docker/automated/maxulysse/runmanta.svg
[runmanta-docker-link]: https://hub.docker.com/r/maxulysse/runmanta
[samtools-docker-badge]: https://img.shields.io/docker/automated/maxulysse/samtools.svg
[samtools-docker-link]: https://hub.docker.com/r/maxulysse/samtools
[samtools-link]: https://github.com/samtools/samtools
[scilifelab-link]: http://www.scilifelab.se/
[scilifelab-stockholm-link]: https://www.scilifelab.se/platforms/ngi/
[snpeff-docker-badge]: https://img.shields.io/docker/automated/maxulysse/snpeff.svg
[snpeff-docker-link]: https://hub.docker.com/r/maxulysse/snpeff
[snpeff-link]: http://snpeff.sourceforge.net/
[strelka-docker-badge]: https://img.shields.io/docker/automated/maxulysse/strelka.svg
[strelka-docker-link]: https://hub.docker.com/r/maxulysse/strelka
[strelka-link]: https://github.com/Illumina/strelka
[version-badge]: https://img.shields.io/github/release/MaxUlysse/CAW-containers.svg
[version-link]: https://github.com/MaxUlysse/CAW-containers/releases/latest
