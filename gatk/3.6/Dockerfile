FROM debian:8.6

MAINTAINER Maxime Garcia <maxime.garcia@scilifelab.se>

#Install libraries
RUN apt-get update && apt-get install -y --no-install-recommends \
	ca-certificates \
	unzip \
	wget \
	&& rm -rf /var/lib/apt/lists/*

#Install GATK 3.6
RUN wget -q -O /opt/gatk.3.6.zip https://github.com/broadgsa/gatk-protected/archive/3.6.zip \
	&& unzip /opt/gatk.3.6.zip -d /opt/ \
	&& rm -rf /opt/gatk.3.6.zip
