FROM openjdk:8

LABEL author="Maxime Garcia" \
	description="FastQC 0.11.5 image for use in CAW" \
	maintainer="maxime.garcia@scilifelab.se"

#Install libraries
RUN apt-get update && apt-get install -y --no-install-recommends \
	perl \
	unzip \
	&& rm -rf /var/lib/apt/lists/*

#Install FastQC
RUN curl -fsSL http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.5.zip -o /opt/fastqc_v0.11.5.zip \
	&& unzip /opt/fastqc_v0.11.5.zip -d /opt/ \
	&& chmod 755 /opt/FastQC/fastqc \
	&& ln -s /opt/FastQC/fastqc /usr/local/bin/fastqc \
	&& rm /opt/fastqc_v0.11.5.zip

ENV PATH $PATH:/opt/FastQC
