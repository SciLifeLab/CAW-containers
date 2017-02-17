FROM openjdk:8

LABEL author="Maxime Garcia" \
description="snpEff 4.2 image for use in CAW" \
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
ENV PATH="/opt/snpEff:$PATH" \
SNPEFF_BIN="snpEff_v4_2_core.zip"

#Install snpEff
RUN curl -fsSL https://downloads.sourceforge.net/project/snpeff/$SNPEFF_BIN -o /opt/$SNPEFF_BIN \
&& unzip /opt/$SNPEFF_BIN -d /opt/ \
&& rm /opt/$SNPEFF_BIN
