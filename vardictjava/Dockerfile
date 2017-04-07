FROM openjdk:8

LABEL author="Maxime Garcia" \
description="VarDictJava 1.4.5 image for use in CAW" \
maintainer="maxime.garcia@scilifelab.se"

# Setup ENV variables
ENV PATH="$PATH:/opt/VarDictJava:/opt/VarDictJava/VarDict" \
VARDICTJAVA_BIN="v1.4.5.zip" \
VARDICTJAVA_VERSION="1.4.5"

# Install VarDictJava and VarDict
RUN curl -fsSL https://github.com/AstraZeneca-NGS/VarDictJava/archive/$VARDICTJAVA_BIN -o /opt/$VARDICTJAVA_BIN \
&& unzip /opt/$VARDICTJAVA_BIN -d /opt/ \
&& mv /opt/VarDictJava-$VARDICTJAVA_VERSION /opt/VarDictJava \
&& rm /opt/$VARDICTJAVA_BIN \
&& git clone git://github.com/AstraZeneca-NGS/VarDict.git /opt/VarDictJava/VarDict
