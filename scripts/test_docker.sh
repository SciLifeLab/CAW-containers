#!/bin/bash
set -xeuo pipefail

# snpeff and vep are not included in the test, because the build takes too long...

nextflow run . --docker --containers bcftools,concatvcf,fastqc,gatk,htslib,igvtools,mapreads,multiqc,mutect1,picard,qualimap,runallelecount,runascat,runconvertallelecounts,runmanta,samtools,strelka
