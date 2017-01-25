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

#Setup ENV variables
ENV BWA_VERSION 0.7.8
ENV SAMTOOLS_VERSION 1.3
ENV SAMTOOLS_TAR samtools-$SAMTOOLS_VERSION.tar.bz2

#Install BWA
RUN git clone http://github.com/lh3/bwa.git bwa \
&& cd bwa \
&& git checkout $BWA_VERSION -b Docker-BWA-$BWA_VERSION \
&& make \
&& cp bwa /usr/local/bin/bwa \
&& cd .. \
&& rm -rf bwa

#Install SAMTools
RUN curl -fsSL https://github.com/samtools/samtools/releases/download/$SAMTOOLS_VERSION/$SAMTOOLS_TAR -o /opt/$SAMTOOLS_TAR \
&& tar xvjf /opt/$SAMTOOLS_TAR -C /opt/ \
&& cd /opt/samtools-$SAMTOOLS_VERSION \
&& make \
&& make install \
&& rm /opt/$SAMTOOLS_TAR
