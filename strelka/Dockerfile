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
RUN wget https://sites.google.com/site/strelkasomaticvariantcaller/home/download/strelka_workflow-1.0.15.tar.gz \
	&& tar xf strelka_workflow-1.0.15.tar.gz \
	&& rm -f strelka_workflow-1.0.15.tar.gz \
	&& cd strelka_workflow-1.0.15 \
	&& ./configure --prefix=$STRELKA_INSTALL_DIR \
	&& make
