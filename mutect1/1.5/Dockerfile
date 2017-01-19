FROM openjdk:7

MAINTAINER Maxime Garcia <maxime.garcia@scilifelab.se>

#Install mutect1
RUN wget -q -O /opt/mutect-1.1.5.zip https://github.com/broadinstitute/mutect/archive/1.1.5.zip \
  && unzip /opt/mutect-1.1.5.zip -d /opt/ \
  && rm /opt/mutect-1.1.5.zip

ENV MUTECT_HOME /opt/mutect-1.1.5
