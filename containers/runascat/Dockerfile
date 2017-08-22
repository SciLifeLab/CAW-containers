FROM r-base:3.3.2

LABEL author="Maxime Garcia" \
description="R 3.3.2 image for use in CAW" \
maintainer="maxime.garcia@scilifelab.se"

# Install libraries
RUN R -e "install.packages(c('RColorBrewer','grDevices','graphics','stats','utils'), repos='https://cloud.r-project.org/')"

# Create UPPMAX directories
RUN mkdir /pica /proj /sw
