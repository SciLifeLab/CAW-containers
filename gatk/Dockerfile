FROM openjdk:8

LABEL author="Maxime Garcia" \
description="GATK 3.7 image for use in CAW" \
maintainer="maxime.garcia@scilifelab.se"

#Setup ENV variables
ENV GATK_VERSION 3.7
ENV GATK_BIN GenomeAnalysisTK-$GATK_VERSION.tar.bz2
ENV GATK_HOME /opt/gatk

#Install GATK
COPY $GATK_BIN $GATK_HOME/$GATK_BIN
RUN cd $GATK_HOME \
&& tar -jxf $GATK_BIN \
&& rm $GATK_BIN
