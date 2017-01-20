FROM openjdk:8

MAINTAINER Maxime Garcia <maxime.garcia@scilifelab.se>

#Install libraries
RUN apt-get update && apt-get install -y --no-install-recommends \
	bzip2 \
	&& rm -rf /var/lib/apt/lists/*

#Install GATK 3.7
COPY GenomeAnalysisTK-3.7.tar.bz2 /opt/gatk/gatk.tar.bz2

RUN cd /opt/gatk/ \
	&& tar -jxf gatk.tar.bz2 \
	&& rm gatk.tar.bz2

ENV GATK_HOME /opt/gatk
