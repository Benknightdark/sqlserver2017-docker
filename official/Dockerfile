FROM microsoft/mssql-server-linux:2017-latest

RUN apt-get update -y
RUN apt-get install -y curl
RUN curl https://packages.microsoft.com/keys/microsoft.asc |  apt-key add -
RUN apt-get update -y
RUN  apt-get install -y mssql-tools 
RUN echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
RUN /bin/bash -c "source ~/.bashrc"
COPY /db /var/opt/mssql/data/
EXPOSE 1433
#CMD /opt/mssql/bin/sqlserver
