FROM openjdk:8

LABEL author="Maxime Garcia" \
description="Qualimap 2.2.1 image for use in CAW" \
maintainer="maxime.garcia@scilifelab.se"

# Install libraries
RUN apt-get update && apt-get install -y --no-install-recommends \
curl \
&& rm -rf /var/lib/apt/lists/*

# Setup ENV variables
ENV QUALIMAP_BIN="qualimap_v2.2.1.zip" \
QUALIMAP_VERSION="v2.2.1" \
PATH="$PATH:/opt/qualimap"

# Install BamQC
RUN curl -fsSL https://bitbucket.org/kokonech/qualimap/downloads/$QUALIMAP_BIN -o /opt/$QUALIMAP_BIN \
&& unzip /opt/$QUALIMAP_BIN -d /opt/ \
&& mv /opt/qualimap_$QUALIMAP_VERSION /opt/qualimap

# Create UPPMAX directories
RUN mkdir /pica /proj /sw
