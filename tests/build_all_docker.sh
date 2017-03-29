#!/bin/bash

# snpeff is not included in the test, because the build takes too long...
echo "Starting Nextflow... Command:"
echo "./nextflow run . --docker --containers bcftools,concatvcf,fastqc,freebayes,gatk,htslib,igvtools,mapreads,multiqc,mutect1,picard,runallelecount,runascat,runconvertallelecounts,runmanta,samtools,strelka"
echo "-----"
./nextflow run . --docker --containers bcftools,concatvcf,fastqc,freebayes,gatk,htslib,igvtools,mapreads,multiqc,mutect1,picard,runallelecount,runascat,runconvertallelecounts,runmanta,samtools,strelka
