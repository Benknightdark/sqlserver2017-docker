FROM ubuntu:16.04
EXPOSE 1433
#CMD /opt/mssql/bin/sqlservr
#RUN  apt-get update
RUN apt-get update && apt-get install -y  apt-utils
RUN apt-get install -y wget
RUN apt-get install -y libunwind8
RUN apt-get install -y libjemalloc1
RUN apt-get install -y libc++1
RUN apt-get install -y libcurl3
RUN apt-get install -y python
RUN apt-get install -y gdb

# Install prerequisites
#RUN apt-get update && apt-get install -y curl
#RUN curl https://packages.microsoft.com/keys/microsoft.asc |  apt-key add –
#RUN curl https://packages.microsoft.com/config/ubuntu/16.04/mssql-server.list
#RUN tee /etc/apt/sources.list.d/mssql-server.list
#RUN apt-get update
#RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
#RUN 
#RUN  add-apt-repository "$(curl https://packages.microsoft.com/config/ubuntu/16.04/mssql-server-2017.list)" && sudo apt-get update
#RUN apt-get install -y mssql-server
RUN wget https://packages.microsoft.com/ubuntu/16.04/mssql-server/pool/main/m/mssql-server/mssql-server_14.0.1.246-6_amd64.deb

RUN  dpkg -i mssql-server_14.0.1.246-6_amd64.deb
RUN apt-get -f install 
RUN /opt/mssql/bin/sqlservr-setup
#RUN  apt-get install nano
#RUN CMD /opt/mssql/bin/sqlservr