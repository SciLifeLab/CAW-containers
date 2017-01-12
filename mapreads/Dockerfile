FROM maxulysse/caw-containers:base-vA

MAINTAINER Maxime Garcia <maxime.garcia@scilifelab.se>

RUN apt-get update && apt-get install -y --no-install-recommends \
	zlib1g-dev

RUN git clone http://github.com/lh3/bwa bwa && \
	cd bwa && \
	git checkout 0.7.8 && \
	make && cp bwa /usr/local/bin/bwa
