FROM debian:8.6

MAINTAINER Maxime Garcia <maxime.garcia@scilifelab.se>

#Install essentials
RUN apt-get update && apt-get install -y --no-install-recommends \
	unzip \
	wget \
	git \
	ca-certificates \
	gcc \
	make \
	build-essential

# Default to UTF-8 file.encoding
ENV LANG C.UTF-8
