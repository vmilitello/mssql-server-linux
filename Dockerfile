FROM microsoft/mssql-server-linux:latest

MAINTAINER Vincenzo Militello - 902 Software

LABEL description="microsoft/mssql-server-linux with mssql-tools already installed"

ENV ACCEPT_EULA=Y

RUN \
apt-get update && \
apt-get install -y python sudo
  
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# sql tools setup; 
RUN \
locale-gen en_US.UTF-8 && \
update-locale && \
apt-get update && \
apt-get install -y curl apt-transport-https && \
curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - && \
curl https://packages.microsoft.com/config/ubuntu/15.10/prod.list | tee /etc/apt/sources.list.d/msprod.list && \
apt-get update && \
apt-get install -y mssql-tools 

EXPOSE 1433

 
