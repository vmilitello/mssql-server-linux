# MSSQL on For Linux with mssql-tools

> **Starting with the CTP 1.4 (March 17, 2017) release the mssql-tools package including sqlcmd, bcp are included in the image, therefore this image has become _obsolete_**.  You can connect to the SQL Server using the sqlcmd tool inside of the container by using the following command on the host:

```console
docker exec -it <container_id|container_name> /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P <your_password>
```

Learn more about the latest release of SQL Server on Linux here: [SQL Server on Linux Documentation](https://docs.microsoft.com/en-us/sql/linux/).
----------

This Docker image uses SQL Server 2017 Developer Edition on Linux on top of an Ubuntu 16.04 base image.

Full documentation can be found at the [SQL Server on Linux Docker image page](https://docs.microsoft.com/en-us/sql/linux/sql-server-linux-setup-docker).
