FROM openjdk:8

LABEL author="Maxime Garcia" \
description="IGVtools 2.3.91 image for use in CAW" \
maintainer="maxime.garcia@scilifelab.se"

# Setup ENV variables
ENV IGVTOOLS_BIN="igvtools_2.3.91.zip" \
IGVTOOLS_HOME="/opt/IGVTools"

# Install IGVTools
RUN curl -fsSL http://data.broadinstitute.org/igv/projects/downloads/$IGVTOOLS_BIN -o /opt/$IGVTOOLS_BIN \
&& cd /opt \
&& unzip $IGVTOOLS_BIN \
&& rm $IGVTOOLS_BIN

# Create UPPMAX directories
RUN mkdir /pica /proj /sw
