FROM ubuntu:16.04

LABEL author="Maxime Garcia" \
description="VEP 87.27 image for use in CAW" \
maintainer="maxime.garcia@scilifelab.se"

#Install libraries
RUN apt-get update && apt-get install -y --no-install-recommends \
apache2 \
build-essential \
ca-certificates \
cpanminus \
curl \
git \
libmysqlclient-dev \
libmysqlclient-dev \
libpng12-dev \
libssl-dev \
libssl-dev \
manpages \
mysql-client \
openssl \
perl \
perl-base \
unzip \
vim \
wget \
&& rm -rf /var/lib/apt/lists/* \
&& cpanm DBI DBD::mysql

ENV HOME="/home/vep"
ENV CFLAGS="-fPIC" \
DEPS="$HOME/src" \
HTSLIB_DIR="$HOME/src/htslib" \
KENT_SRC="$HOME/src/kent-335_base/src" \
MACHTYPE="x86_64" \
PATH="$HOME/src/ensembl-vep:$PATH" \
PERL5LIB="$PERL5LIB:$HOME/src/bioperl-live-release-1-6-924"

# clone git repositories
RUN mkdir -p $HOME/src \
&& cd $HOME/src \
&& git clone https://github.com/Ensembl/ensembl.git \
&& git clone https://github.com/Ensembl/ensembl-vep.git \
&& $HOME/src/ensembl-vep/travisci/get_dependencies.sh

RUN cd $HOME/src \
&& $HOME/src/ensembl-vep/travisci/build_c.sh \
&& cd $HTSLIB_DIR \
&& make install \
&& cpanm --installdeps --with-recommends --notest --cpanfile $HOME/src/ensembl/cpanfile . \
&& cpanm --installdeps --with-recommends --notest --cpanfile $HOME/src/ensembl-vep/cpanfile .

# update bash profile
RUN echo >> $HOME/.profile && \
echo PATH=$HOME/src/ensembl-vep:\$PATH >> $HOME/.profile && \
echo export PATH >> $HOME/.profile

# run INSTALL.pl
RUN chmod u+x $HOME/src/ensembl-vep/*.pl
RUN $HOME/src/ensembl-vep/INSTALL.pl -a a -l
