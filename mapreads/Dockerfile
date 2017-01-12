FROM maxulysse/caw-containers:samtools-vA

MAINTAINER Maxime Garcia <maxime.garcia@scilifelab.se>

#Install BWA 0.7.8
RUN git clone http://github.com/lh3/bwa bwa && \
	cd bwa && \
	git checkout 0.7.8 && \
	make && cp bwa /usr/local/bin/bwa
