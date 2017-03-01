FROM openjdk:8

LABEL author="Maxime Garcia" \
description="snpEff 4.2 image for use in CAW" \
maintainer="maxime.garcia@scilifelab.se"

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

#Setup ENV variables
ENV GENOME="GRCh37.75" \
SNPEFF_BIN="snpEff_v4_2_core.zip" \
SNPEFF_HOME="/opt/snpEff"

#Install snpEff and Genome
RUN wget http://downloads.sourceforge.net/project/snpeff/$SNPEFF_BIN -O /opt/$SNPEFF_BIN \
&& unzip /opt/$SNPEFF_BIN -d /opt/ \
&& java -jar $SNPEFF_HOME/snpEff.jar download -v $GENOME \
&& rm /opt/$SNPEFF_BIN
