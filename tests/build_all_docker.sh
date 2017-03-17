#!/bin/bash

echo "Starting Nextflow... Command:"
echo "nextflow run . --docker --containers bcftools,concatvcf,fastqc,gatk,multiqc,mutect1,picard,mapreads,runallelecount,runascat,runconvertallelecounts,runmanta,strelka,samtools"
echo "-----"
nextflow run . --docker --containers bcftools,concatvcf,fastqc,gatk,multiqc,mutect1,picard,mapreads,runallelecount,runascat,runconvertallelecounts,runmanta,strelka,samtools
