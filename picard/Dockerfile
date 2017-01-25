FROM openjdk:8

LABEL author="Maxime Garcia" \
description="Picard 2.0.1 image for use in CAW" \
maintainer="maxime.garcia@scilifelab.se"

#Setup ENV variables
ENV PICARD_VERSION 2.0.1
ENV PICARD_ZIP picard-tools-$PICARD_VERSION.zip
ENV PICARD_HOME /opt/picard-tools-$PICARD_VERSION

#Install PicardTools 2.0.1
RUN curl -fsSL https://github.com/broadinstitute/picard/releases/download/$PICARD_VERSION/$PICARD_ZIP -o /opt/$PICARD_ZIP \
&& unzip /opt/$PICARD_ZIP -d /opt/ \
&& rm /opt/$PICARD_ZIP
