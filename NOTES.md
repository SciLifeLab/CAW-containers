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
- [ ] RunAlleleCount
- [ ] RunConvertAlleleCounts
- [ ] RunAscat
- [x] RunMultiQC
- [x] BCFTools


## Build and push images:
docker build -t maxulysse/bcftools:1.3 bcftools/.
docker push maxulysse/bcftools:1.3

docker build -t maxulysse/fastqc:0.11.5 fastqc/.
docker push maxulysse/fastqc:0.11.5

docker build -t maxulysse/gatk:3.7 gatk/.
docker push maxulysse/gatk:3.7

docker build -t maxulysse/multiqc:0.9 multiqc/.
docker push maxulysse/multiqc:0.9

docker build -t maxulysse/mutect1:1.5 mutect1/.
docker push maxulysse/mutect1:1.5

docker build -t maxulysse/picard:2.0.1 picard/.
docker push maxulysse/picard:2.0.1

docker build -t maxulysse/mapreads:0.9.9 Processes/MapReads/.
docker push maxulysse/mapreads:0.9.9

docker build -t maxulysse/runmanta:0.9.9 Processes/RunManta/.
docker push maxulysse/runmanta:0.9.9

docker build -t maxulysse/strelka:1.0.15 strelka/.
docker push maxulysse/strelka:1.0.15

docker build -t maxulysse/samtools:1.3 samtools/.
docker push maxulysse/samtools:1.3
