FROM openjdk:8

MAINTAINER Maxime Garcia <maxime.garcia@scilifelab.se>

#Install libraries
RUN apt-get update && apt-get install -y --no-install-recommends \
	ca-certificates \
	unzip \
	wget \
	&& rm -rf /var/lib/apt/lists/*

#Install PicardTools 2.0.1
RUN wget -q -O /opt/picard-tools-2.0.1.zip https://github.com/broadinstitute/picard/releases/download/2.0.1/picard-tools-2.0.1.zip \
	&& unzip /opt/picard-tools-2.0.1.zip -d /opt/ \
	&& rm /opt/picard-tools-2.0.1.zip

ENV PICARD_HOME /opt/picard-tools-2.0.1
