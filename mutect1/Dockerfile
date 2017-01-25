FROM openjdk:7

LABEL author="Maxime Garcia" \
description="MuTect 1.1.5 image for use in CAW" \
maintainer="maxime.garcia@scilifelab.se"

#Setup ENV variables
ENV MUTECT_VERSION 1.1.5
ENV MUTECT_HOME /opt/mutect-$MUTECT_VERSION
ENV MUTECT_ZIP muTect-$MUTECT_VERSION-bin.zip

#Install MuTect1
RUN curl -fsSL https://github.com/broadinstitute/mutect/releases/download/$MUTECT_VERSION/$MUTECT_ZIP -o /opt/$MUTECT_ZIP \
&& unzip /opt/$MUTECT_ZIP -d $MUTECT_HOME \
&& rm /opt/$MUTECT_ZIP \
&& mv $MUTECT_HOME/muTect-$MUTECT_VERSION.jar $MUTECT_HOME/muTect.jar
