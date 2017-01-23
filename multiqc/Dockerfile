FROM openjdk:8

LABEL maintainer "maxime.garcia@scilifelab.se" \
	description="MultiQC 0.9 image for use in CAW"

#Install libraries
RUN apt-get update && apt-get install -y --no-install-recommends \
	ca-certificates \
	gcc  \
	python-dev \
	wget \
	&& rm -rf /var/lib/apt/lists/*

#Install pip
RUN wget -O /opt/get-pip.py https://bootstrap.pypa.io/get-pip.py \
	&& python /opt/get-pip.py \
	&& rm /opt/get-pip.py

#Install MultiQC
RUN pip install git+git://github.com/ewels/MultiQC.git
