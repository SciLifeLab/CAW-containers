FROM debian:8.6

LABEL author="Maxime Garcia" \
	description="Strelka 1.0.15 image for use in CAW" \
	maintainer="maxime.garcia@scilifelab.se"

#Install libraries
RUN apt-get update && apt-get install -y --no-install-recommends \
	bzip2 \
	curl \
	g++ \
	make \
	perl-doc \
	python \
	rsync \
	zlib1g-dev \
	&& rm -rf /var/lib/apt/lists/*

	#Install Strelka
ENV STRELKA_INSTALL_DIR /opt/strelka/
RUN curl -fsSL https://sites.google.com/site/strelkasomaticvariantcaller/home/download/strelka_workflow-1.0.15.tar.gz \
	&& tar xf strelka_workflow-1.0.15.tar.gz \
	&& rm -f strelka_workflow-1.0.15.tar.gz \
	&& cd strelka_workflow-1.0.15 \
	&& ./configure --prefix=$STRELKA_INSTALL_DIR \
	&& make
