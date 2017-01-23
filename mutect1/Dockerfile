FROM openjdk:7

MAINTAINER Maxime Garcia <maxime.garcia@scilifelab.se>

#Install mutect1
RUN wget -q -O /opt/mutect-1.1.5.zip https://github.com/broadinstitute/mutect/releases/download/1.1.5/muTect-1.1.5-bin.zip \
  && unzip /opt/mutect-1.1.5.zip -d /opt/ \
  && rm /opt/mutect-1.1.5.zip

ENV MUTECT_HOME /opt/mutect-1.1.5
