FROM openjdk:7

LABEL author="Maxime Garcia" \
description="MuTect 1.1.5 image for use in CAW" \
maintainer="maxime.garcia@scilifelab.se"

#Setup ENV variables
ENV MUTECT_BIN="muTect-1.1.5-bin.zip" \
MUTECT_HOME="/opt/mutect-1.1.5" \
MUTECT_VERSION="1.1.5"

#Install MuTect1
RUN curl -fsSL https://github.com/broadinstitute/mutect/releases/download/$MUTECT_VERSION/$MUTECT_BIN -o /opt/$MUTECT_BIN \
&& unzip /opt/$MUTECT_BIN -d $MUTECT_HOME \
&& rm /opt/$MUTECT_BIN \
&& mv $MUTECT_HOME/muTect-$MUTECT_VERSION.jar $MUTECT_HOME/muTect.jar
