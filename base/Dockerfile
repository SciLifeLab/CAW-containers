FROM debian:8.6

MAINTAINER Maxime Garcia <maxime.garcia@scilifelab.se>

RUN apt-get update && apt-get install -y --no-install-recommends \
	unzip \
	wget \
	git \
	ca-certificates \
	gcc \
	make \
	build-essential \
	&& rm -rf /var/lib/apt/lists/*

RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list

# Default to UTF-8 file.encoding
ENV LANG C.UTF-8
