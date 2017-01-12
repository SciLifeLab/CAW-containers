FROM maxulysse/caw-containers:base-vA

MAINTAINER Maxime Garcia <maxime.garcia@scilifelab.se>

RUN apt-get update && apt-get install -y --no-install-recommends \
	zlib1g-dev \
	libncurses5-dev \
	libncursesw5-dev

#Install BWA 0.7.8
RUN git clone http://github.com/lh3/bwa bwa && \
	cd bwa && \
	git checkout 0.7.8 && \
	make && cp bwa /usr/local/bin/bwa

#Install SAMTools 1.3
RUN wget -q -O /opt/samtools-1.3.tar.bz2 https://github.com/samtools/samtools/releases/download/1.3/samtools-1.3.tar.bz2
RUN tar xvjf /opt/samtools-1.3.tar.bz2 -C /opt/
RUN cd /opt/samtools-1.3 && \
	make && \
	make install
RUN rm /opt/samtools-1.3.tar.bz2
