FROM debian:8.6

LABEL author="Maxime Garcia" \
description="alleleCount 2.2.0 and SAMTools 1.3 image for use in CAW" \
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
ENV PATH="$PATH:/opt/bin" \
PERL5LIB="$PERL5LIB:/opt/lib/perl5" \
SAMTOOLS_BIN="samtools-1.3.tar.bz2" \
SAMTOOLS_VERSION="1.3"

#Install SAMTools
RUN curl -fsSL https://github.com/samtools/samtools/releases/download/$SAMTOOLS_VERSION/$SAMTOOLS_BIN -o /opt/$SAMTOOLS_BIN \
&& tar xvjf /opt/$SAMTOOLS_BIN -C /opt/ \
&& cd /opt/samtools-$SAMTOOLS_VERSION \
&& make \
&& make install \
&& rm /opt/$SAMTOOLS_BIN

#Install alleleCount
RUN curl -fsSL https://github.com/cancerit/alleleCount/archive/v2.2.0.tar.gz -o /opt/alleleCount-2.2.0.tar.gz \
&& tar xvzf /opt/alleleCount-2.2.0.tar.gz -C /opt/ \
&& cd /opt/alleleCount-2.2.0 \
&& ./setup.sh /opt/
