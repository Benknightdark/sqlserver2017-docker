docker volume rm sql1data
docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=P@ssw0rd'  --name 'sql1' -e 'MSSQL_PID=Enterprise' -p 1401:1433  -v sql1data:/var/opt/mssql  -d official
Start-Sleep -s 15
docker exec -it sql1 /opt/mssql-tools/bin/sqlcmd  -S localhost -U SA -P "P@ssw0rd"    -Q  "RESTORE DATABASE BookStoreAppDB FROM DISK = '/var/opt/mssql/data/test.bak' WITH MOVE 'test_Data' TO '/var/opt/mssql/data/test.mdf',  MOVE 'test_Log' TO '/var/opt/mssql/data/test.ldf'"