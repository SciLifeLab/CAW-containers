FROM maxulysse/vep:1.1

LABEL author="Maxime Garcia" \
description="VEP 89.7 image with GRCH38 genome for use in CAW" \
maintainer="maxime.garcia@scilifelab.se"

# Setup ENV variables
ENV GENOME="GRCh38"

# Download Genome
RUN mkdir -p $HOME/.vep \
&& cd $HOME/.vep \
&& curl -O ftp://ftp.ensembl.org/pub/release-89/variation/VEP/homo_sapiens_vep_89_$GENOME.tar.gz \
&& tar xzf homo_sapiens_vep_89_$GENOME.tar.gz \
&& rm homo_sapiens_vep_89_$GENOME.tar.gz
