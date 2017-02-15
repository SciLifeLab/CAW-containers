FROM debian:8.6

LABEL author="Maxime Garcia" \
description="R 3.2.3 image for use in CAW" \
maintainer="maxime.garcia@scilifelab.se"

ENV R_BASE_VERSION="3.2.3"

#Install libraries
RUN apt-get update && apt-get install -y --no-install-recommends \
ca-certificates \
ed \
fonts-texgyre \
less \
littler \
locales \
r-base=${R_BASE_VERSION}* \
r-base-dev=${R_BASE_VERSION}* \
r-cran-littler \
r-recommended=${R_BASE_VERSION}* \
vim-tiny \
wget \
&& rm -rf /var/lib/apt/lists/*
