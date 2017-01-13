FROM maxulysse/caw-base:vA

MAINTAINER Maxime Garcia <maxime.garcia@scilifelab.se>

#Install FastQC v0.11.5
RUN wget -O /opt/fastqc_v0.11.5.zip http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.5.zip
RUN unzip /opt/fastqc_v0.11.5.zip -d /opt/
RUN chmod 755 /opt/FastQC/fastqc
RUN ln -s /opt/FastQC/fastqc /usr/local/bin/fastqc
RUN rm /opt/fastqc_v0.11.5.zip
