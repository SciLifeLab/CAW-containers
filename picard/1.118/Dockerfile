FROM openjdk:8

MAINTAINER Maxime Garcia <maxime.garcia@scilifelab.se>

#Install libraries
RUN apt-get update && apt-get install -y --no-install-recommends \
	ca-certificates \
	unzip \
	wget \
	&& rm -rf /var/lib/apt/lists/*

#Install PicardTools
RUN wget -q -O /opt/picard-tools-1.118.zip https://github.com/broadinstitute/picard/archive/1.118.zip \
	&& unzip /opt/picard-tools-1.118.zip -d /opt/ \
	&& rm /opt/picard-tools-1.118.zip

ENV PICARD_HOME /opt/picard-tools-1.118
