FROM openjdk:8

LABEL author="Maxime Garcia" \
	description="GATK 3.7 image for use in CAW" \
	maintainer="maxime.garcia@scilifelab.se"

#Install GATK
ENV GATK_HOME /opt/gatk
COPY GenomeAnalysisTK-3.7.tar.bz2 $GATK_HOME/gatk.tar.bz2

RUN cd $GATK_HOME \
	&& tar -jxf gatk.tar.bz2 \
	&& rm gatk.tar.bz2
