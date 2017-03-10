#!/bin/bash

./nextflow run . --docker --containers bcftools,fastqc,gatk,multiqc,mutect1,picard,mapreads,runallelecount,runascat,runconvertallelecounts,runmanta,strelka,samtools
