FROM ubuntu:16.04 
RUN apt-get update -y


COPY ./install / 
RUN chmod +x install.sh
#RUN ./install.sh
EXPOSE 1433
CMD /opt/mssql/bin/sqlserver
