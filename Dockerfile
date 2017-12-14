FROM ubuntu:16.04 
RUN apt-get update -y


COPY ./install / 
RUN chmod +x install.sh
RUN ./install.sh
EXPOSE 1433
RUN CMD /opt/mssql/bin/sqlservr 
