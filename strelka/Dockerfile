FROM debian:8.6

LABEL maintainer "maxime.garcia@scilifelab.se" \
	description="Strelka 1.0.15 image for use in CAW"

#Install libraries
RUN apt-get update && apt-get install -y --no-install-recommends \
	bzip2 \
	ca-certificates \
	g++ \
	make \
	perl-doc \
	python \
	rsync \
	wget \
	zlib1g-dev \
	&& rm -rf /var/lib/apt/lists/*

	#Install Strelka
ENV STRELKA_INSTALL_DIR /opt/strelka/
RUN wget https://github.com/Illumina/strelka/releases/download/v2.7.1/strelka-2.7.1.centos5_x86_64.tar.bz2 \
	&& tar xf strelka-2.7.1.centos5_x86_64.tar.bz2 \
	&& rm -f strelka-2.7.1.centos5_x86_64.tar.bz2 \
	&& mv strelka-2.7.1.centos5_x86_64 $STRELKA_INSTALL_DIR
