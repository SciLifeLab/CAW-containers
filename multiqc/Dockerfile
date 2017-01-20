FROM openjdk:8

MAINTAINER Maxime Garcia <maxime.garcia@scilifelab.se>

#Install libraries
RUN apt-get update && apt-get install -y --no-install-recommends \
	ca-certificates \
	python-dev \
	wget \
	&& rm -rf /var/lib/apt/lists/*

RUN wget -O /opt/get-pip.py https://bootstrap.pypa.io/get-pip.py
RUN python /opt/get-pip.py
RUN rm /opt/get-pip.py

#Install MultiQC 0.9
RUN pip install git+git://github.com/ewels/MultiQC.git
