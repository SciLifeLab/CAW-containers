FROM debian:8.6

MAINTAINER Maxime Garcia <maxime.garcia@scilifelab.se>

#Install libraries
RUN apt-get update && apt-get install -y --no-install-recommends \
	build-essential \
	ca-certificates \
	git \
	libncursesw5-dev \
	libncurses5-dev \
	make \
	zlib1g-dev \
	&& rm -rf /var/lib/apt/lists/*

#Install BWA 0.7.8
RUN git clone http://github.com/lh3/bwa bwa && \
	cd bwa && \
	git checkout 0.7.8 && \
	make && cp bwa /usr/local/bin/bwa
