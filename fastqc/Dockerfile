FROM openjdk:8

MAINTAINER Maxime Garcia <maxime.garcia@scilifelab.se>

#Install libraries
RUN apt-get update && apt-get install -y --no-install-recommends \
	ca-certificates \
	perl \
	unzip \
	wget \
	&& rm -rf /var/lib/apt/lists/*

#Install FastQC 0.11.5
RUN wget -O /opt/fastqc_v0.11.5.zip http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.5.zip \
	&& unzip /opt/fastqc_v0.11.5.zip -d /opt/ \
	&& chmod 755 /opt/FastQC/fastqc \
	&& ln -s /opt/FastQC/fastqc /usr/local/bin/fastqc \
	&& rm /opt/fastqc_v0.11.5.zip

ENV PATH $PATH:/opt/FastQC
