FROM openjdk:7

LABEL author="Maxime Garcia" \
	description="MuTect 1.1.5 image for use in CAW" \
	maintainer="maxime.garcia@scilifelab.se"

#Install mutect1
ENV MUTECT_HOME /opt/mutect-1.1.5
RUN curl -fsSL https://github.com/broadinstitute/mutect/releases/download/1.1.5/muTect-1.1.5-bin.zip -o /opt/mutect-1.1.5.zip \
	&& unzip /opt/mutect-1.1.5.zip -d $MUTECT_HOME \
	&& rm /opt/mutect-1.1.5.zip \
	&& mv $MUTECT_HOME/muTect-1.1.5.jar $MUTECT_HOME/muTect.jar
