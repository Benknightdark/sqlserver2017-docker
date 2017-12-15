FROM ubuntu:16.04

RUN apt-get update -y
RUN apt-get -y install libunwind8 libnuma1 libjemalloc1 libc++1 gdb libcurl3 openssl python python3 curl  python-software-properties software-properties-common  
#RUN ufw disable
#RUN apt-get -o Acquire::ForceIPv4=true update
EXPOSE 1433

COPY ./setup / 
RUN chmod +x install.sh
RUN ./install.sh

#CMD /opt/mssql/bin/sqlserver
