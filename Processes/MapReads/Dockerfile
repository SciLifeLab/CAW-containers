FROM debian:8.6

LABEL maintainer "maxime.garcia@scilifelab.se" \
	description="BWA 0.7.8 and SAMTools 1.3 image for use in CAW"

#Install libraries
RUN apt-get update && apt-get install -y --no-install-recommends \
	build-essential \
	ca-certificates \
	git \
	libncursesw5-dev \
	libncurses5-dev \
	make \
	wget \
	zlib1g-dev \
	&& rm -rf /var/lib/apt/lists/*

#Install BWA
RUN git clone http://github.com/lh3/bwa bwa && \
	cd bwa && \
	git checkout 0.7.8 && \
	make && \
	cp bwa /usr/local/bin/bwa && \
	cd .. && \
	rm -rf bwa

#Install SAMTools
RUN wget -q -O /opt/samtools-1.3.tar.bz2 https://github.com/samtools/samtools/releases/download/1.3/samtools-1.3.tar.bz2 \
	&& tar xvjf /opt/samtools-1.3.tar.bz2 -C /opt/ \
	&& cd /opt/samtools-1.3 \
	&& make \
	&& make install \
	&& rm /opt/samtools-1.3.tar.bz2
