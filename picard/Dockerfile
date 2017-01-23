FROM openjdk:8

LABEL author="Maxime Garcia" \
	description="Picard 2.0.1 image for use in CAW" \
	maintainer="maxime.garcia@scilifelab.se"

#Install libraries
RUN apt-get update && apt-get install -y --no-install-recommends \
	unzip \
	&& rm -rf /var/lib/apt/lists/*

#Install PicardTools 2.0.1
ENV PICARD_HOME /opt/picard-tools-2.0.1
RUN curl -fsSL https://github.com/broadinstitute/picard/releases/download/2.0.1/picard-tools-2.0.1.zip -o /opt/picard-tools-2.0.1.zip \
	&& unzip /opt/picard-tools-2.0.1.zip -d /opt/ \
	&& rm /opt/picard-tools-2.0.1.zip
