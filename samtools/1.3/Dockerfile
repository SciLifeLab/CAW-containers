FROM maxulysse/caw-base:0.9.9

MAINTAINER Maxime Garcia <maxime.garcia@scilifelab.se>

#Install libraries
RUN apt-get update && apt-get install -y --no-install-recommends \
	zlib1g-dev \
	libncurses5-dev \
	libncursesw5-dev

#Install SAMTools 1.3
RUN wget -q -O /opt/samtools-1.3.tar.bz2 https://github.com/samtools/samtools/releases/download/1.3/samtools-1.3.tar.bz2
RUN tar xvjf /opt/samtools-1.3.tar.bz2 -C /opt/
RUN cd /opt/samtools-1.3 && \
	make && \
	make install
RUN rm /opt/samtools-1.3.tar.bz2
