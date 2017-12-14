FROM ubuntu:16.04 
RUN apt-get update
RUN apt-get install -y curl

#RUN apt-get install -y apt-transport-https
RUN apt-get install -y software-properties-common
RUN apt-get install -y ca-certificates
RUN dpkg -S add-apt-repository

COPY ./install /
RUN chmod +x setup.sh
RUN ./setup.sh
RUN CMD /opt/mssql/bin/sqlservr 
#EXPOSE 1433
#CMD /opt/mssql/bin/sqlservr
#RUN  apt-get update
#RUN apt-get update && apt-get install -y  apt-utils
#RUN apt-get install -y wget
#RUN apt-get install -y libunwind8
#RUN apt-get install -y libjemalloc1
#RUN apt-get install -y libc++1
#RUN apt-get install -y libcurl3
#RUN apt-get install -y python
#RUN apt-get install -y gdb

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
#RUN wget https://packages.microsoft.com/ubuntu/16.04/mssql-server/pool/main/m/mssql-server/mssql-server_14.0.1.246-6_amd64.deb

#RUN  dpkg -i mssql-server_14.0.1.246-6_amd64.deb
#RUN apt-get -f install 
#RUN /opt/mssql/bin/mssql-conf set-collation
#RUN  ACCEPT_EULA='Y' MSSQL_PID='Developer' MSSQL_SA_PASSWORD='<YourStrong!Passw0rd>' MSSQL_TCP_PORT=1234 /opt/mssql/bin/mssql-conf setup
#RUN  /opt/mssql/bin/sqlservr-setup 
#RUN  apt-get install nano
