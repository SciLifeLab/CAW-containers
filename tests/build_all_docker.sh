#!/bin/bash

# snpeff is not included in the test, because the build takes too long...
echo "Starting Nextflow... Command:"
echo "./nextflow run . --docker --containers bcftools,concatvcf,fastqc,gatk,multiqc,mutect1,picard,mapreads,runallelecount,runascat,runconvertallelecounts,runmanta,samtools,strelka"
echo "-----"
./nextflow run . --docker --containers bcftools,concatvcf,fastqc,gatk,multiqc,mutect1,picard,mapreads,runallelecount,runascat,runconvertallelecounts,runmanta,samtools,strelka
