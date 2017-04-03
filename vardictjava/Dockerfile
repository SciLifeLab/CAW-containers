FROM openjdk:8

LABEL author="Maxime Garcia" \
description="VarDictJava 1.4.5 image for use in CAW" \
maintainer="maxime.garcia@scilifelab.se"

#Install libraries
RUN apt-get update && apt-get install -y --no-install-recommends \
curl \
&& rm -rf /var/lib/apt/lists/*

#Setup ENV variables
ENV PATH="/opt/VarDictJava/" \
VARDICTJAVA_BIN="v1.4.5.zip"

RUN curl -fsSL https://github.com/AstraZeneca-NGS/VarDictJava/archive/$VARDICTJAVA_BIN -o /opt/$VARDICTJAVA_BIN \
&& unzip /opt/$VARDICTJAVA_BIN -d /opt/ \
&& rm /opt/$VARDICTJAVA_BIN

RUN ls -l /opt/
