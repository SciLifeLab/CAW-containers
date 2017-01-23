FROM debian:8.6

LABEL author="Maxime Garcia" \
	description="BWA 0.7.8 and SAMTools 1.3 image for use in CAW" \
	maintainer="maxime.garcia@scilifelab.se"

#Install libraries
RUN apt-get update && apt-get install -y --no-install-recommends \
	build-essential \
	ca-certificates \
	curl \
	git \
	libncursesw5-dev \
	libncurses5-dev \
	make \
	zlib1g-dev \
	&& rm -rf /var/lib/apt/lists/*

#Install BWA
RUN git clone http://github.com/lh3/bwa bwa \
	&& cd bwa \
	&& git checkout 0.7.8 \
	&& make \
	&& cp bwa /usr/local/bin/bwa \
	&& cd .. \
	&& rm -rf bwa

#Install SAMTools
RUN curl -fsSL https://github.com/samtools/samtools/releases/download/1.3/samtools-1.3.tar.bz2 -o /opt/samtools-1.3.tar.bz2 \
	&& tar xvjf /opt/samtools-1.3.tar.bz2 -C /opt/ \
	&& cd /opt/samtools-1.3 \
	&& make \
	&& make install \
	&& rm /opt/samtools-1.3.tar.bz2
