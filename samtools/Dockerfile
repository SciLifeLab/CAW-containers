FROM debian:8.6

LABEL maintainer "maxime.garcia@scilifelab.se" \
	description="SAMTools 1.3 image for use in CAW"

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

#Install SAMTools 1.3
RUN wget -q -O /opt/samtools-1.3.tar.bz2 https://github.com/samtools/samtools/releases/download/1.3/samtools-1.3.tar.bz2 \
	&& tar xvjf /opt/samtools-1.3.tar.bz2 -C /opt/ \
	&& cd /opt/samtools-1.3 \
	&& make \
	&& make install \
	&& rm /opt/samtools-1.3.tar.bz2
