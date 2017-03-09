FROM maxulysse/samtools:1.0

LABEL author="Maxime Garcia" \
description="alleleCount 3.2.2 and SAMTools 1.3 image for use in CAW" \
maintainer="maxime.garcia@scilifelab.se"

#Setup ENV variables
ENV PATH="$PATH:/opt/bin" \
PERL5LIB="$PERL5LIB:/opt/lib/perl5"

#Install alleleCount
RUN curl -fsSL https://github.com/cancerit/alleleCount/archive/v3.2.2.tar.gz -o /opt/alleleCount-3.2.2.tar.gz \
&& tar xvzf /opt/alleleCount-3.2.2.tar.gz -C /opt/ \
&& cd /opt/alleleCount-3.2.2 \
&& ./setup.sh /opt/ \
&& rm -rf /opt/alleleCount-3.2.2.tar.gz
