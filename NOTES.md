# TODO

## Docker images for each process:

- [x] RunFastQC
- [x] MapReads
- [x] MergeBams
- [x] MarkDuplicates
- [x] CreateIntervals
- [x] RealignBams
- [x] CreateRecalibrationTable
- [x] RecalibrateBam
- [x] RunHaplotypecaller
- [x] RunMutect1
- [x] RunMutect2
- [ ] RunFreeBayes
- [ ] RunVardict
- [x] ConcatVCF
- [x] RunStrelka
- [x] RunManta
- [x] RunAlleleCount
- [ ] RunConvertAlleleCounts
- [ ] RunAscat
- [x] RunSnpeff
- [x] BCFTools
- [x] RunMultiQC

## Build and push images:
docker build -t maxulysse/bcftools:1.0 bcftools/.
docker push maxulysse/bcftools:1.0

docker build -t maxulysse/fastqc:1.0 fastqc/.
docker push maxulysse/fastqc:1.0

docker build -t maxulysse/gatk:1.0 gatk/.
docker push maxulysse/gatk:1.0

docker build -t maxulysse/multiqc:1.0 multiqc/.
docker push maxulysse/multiqc:1.0

docker build -t maxulysse/mutect1:1.0 mutect1/.
docker push maxulysse/mutect1:1.0

docker build -t maxulysse/picard:1.0 picard/.
docker push maxulysse/picard:1.0

docker build -t maxulysse/mapreads:1.0 mapreads/.
docker push maxulysse/mapreads:1.0

docker build -t maxulysse/r:1.cawr/.
docker push maxulysse/r:1.0

docker build -t maxulysse/runallelecount:1.0 runallelecount/.
docker push maxulysse/runallelecount:1.0

docker build -t maxulysse/runmanta:1.0 runmanta/.
docker push maxulysse/runmanta:1.0

docker build -t maxulysse/strelka:1.0 strelka/.
docker push maxulysse/strelka:1.0

docker build -t maxulysse/samtools:1.0 samtools/.
docker push maxulysse/samtools:1.0

docker build -t maxulysse/snpeff:1.0 snpeff/.
docker push maxulysse/snpeff:1.0
