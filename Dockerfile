FROM ubuntu:16.04 
#RUN apt-get update -y
EXPOSE 1433

COPY ./install / 
RUN chmod +x install.sh
RUN ./install.sh

CMD /opt/mssql/bin/sqlserver
