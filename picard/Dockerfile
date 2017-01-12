FROM maxulysse/caw-containers:base-vA

MAINTAINER Maxime Garcia <maxime.garcia@scilifelab.se>

#Install PicardTools
RUN wget -q -O /opt/picard-tools-1.118.zip https://github.com/broadinstitute/picard/archive/1.118.zip
RUN unzip /opt/picard-tools-1.118.zip -d /opt/
RUN rm /opt/picard-tools-1.118.zip
ENV PICARD_HOME /opt/picard-tools-1.118
