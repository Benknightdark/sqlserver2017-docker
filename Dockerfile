FROM ubuntu:16.04 
RUN apt-get update -y
RUN apt-get install -y curl
RUN apt-get install -y libunwind8
RUN apt-get install -y libjemalloc1
RUN apt-get install -y libc++1
RUN apt-get install -y libcurl3
RUN apt-get install -y python
RUN apt-get install -y gdb
#RUN apt-get install -y apt-transport-https
RUN apt-get install -y software-properties-common
RUN apt-get install -y ca-certificates
RUN dpkg -S add-apt-repository
COPY ./install / 
RUN chmod +x setup.sh
RUN ./setup.sh
EXPOSE 1433
RUN CMD /opt/mssql/bin/sqlservr 
