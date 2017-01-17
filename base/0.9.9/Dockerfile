FROM debian:8.6

MAINTAINER Maxime Garcia <maxime.garcia@scilifelab.se>

#Install essentials
RUN apt-get update && apt-get install -y --no-install-recommends \
	build-essential \
	ca-certificates \
	gcc \
	git \
	make \
	unzip \
	wget \
	&& rm -rf /var/lib/apt/lists/*
