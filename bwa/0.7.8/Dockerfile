FROM maxulysse/caw-base:vA

MAINTAINER Maxime Garcia <maxime.garcia@scilifelab.se>

#Install libraries
RUN apt-get update && apt-get install -y --no-install-recommends \
	zlib1g-dev \
	libncurses5-dev \
	libncursesw5-dev

#Install BWA 0.7.8
RUN git clone http://github.com/lh3/bwa bwa && \
	cd bwa && \
	git checkout 0.7.8 && \
	make && cp bwa /usr/local/bin/bwa
