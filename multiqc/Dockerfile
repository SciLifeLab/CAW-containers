FROM openjdk:8

LABEL author="Maxime Garcia" \
description="MultiQC 0.9 image for use in CAW" \
maintainer="maxime.garcia@scilifelab.se"

#Install libraries
RUN apt-get update && apt-get install -y --no-install-recommends \
gcc \
python-dev \
&& rm -rf /var/lib/apt/lists/*

#Setup ENV variables
ENV MULTIQC_VERSION v0.9

#Install pip
RUN curl -fsSL https://bootstrap.pypa.io/get-pip.py -o /opt/get-pip.py \
&& python /opt/get-pip.py \
&& rm /opt/get-pip.py

#Install MultiQC
RUN pip install git+git://github.com/ewels/MultiQC.git@$MULTIQC_VERSION
