FROM openjdk:7

LABEL maintainer "maxime.garcia@scilifelab.se" \
	description="MuTect 1.1.5 image for use in CAW"

#Install mutect1
ENV MUTECT_HOME /opt/mutect-1.1.5
RUN wget -q -O /opt/mutect-1.1.5.zip https://github.com/broadinstitute/mutect/releases/download/1.1.5/muTect-1.1.5-bin.zip \
	&& unzip /opt/mutect-1.1.5.zip -d $MUTECT_HOME \
	&& rm /opt/mutect-1.1.5.zip \
	&& mv $MUTECT_HOME/muTect-1.1.5.jar $MUTECT_HOME/muTect.jar
