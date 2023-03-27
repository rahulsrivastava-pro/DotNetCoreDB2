
1. dotnet new sln
2. dotnet sln add DotNetMySql
3. Add DockerFile

#  Build the Image and Run the Container 
[run, connect with mysql]

1. docker build . -t dotnetmysqlexample

## linux
1. docker run --name dotnetmysqlexample -p 8082:80 -d dotnetmysqlexample

2. docker ps
   

   
# On changes 
1. dotnet publish -c Release -o published

https://localhost:8082/swagger/index.html


## Other commands 

1. docker ps [list all containers] 
2. docker stop dotnetmysqlexample
3. docker restart dotnetmysqlexample
4. docker exec -t -i dotnetmysqlexample ls -all  [to see file system] 
5. docker cp dotnetmysqlexample:/ /github/DotNetCoreDB2/dump  [to take a dump of files in container ]
6. docker images -a [to see all images]
7. docker rmi dotnetmysqlexample [remove image by image name]
8. docker rm dotnetmysqlexample [remove container by containername]




  docker run -dt -v "C:\Users\rahul\vsdbg\vs2017u5:/remote_debugger:rw" 
  -v "C:\Users\rahul\AppData\Roaming\Microsoft\UserSecrets:/root/.microsoft/usersecrets:ro" 
  -v "C:\Users\rahul\AppData\Roaming\ASP.NET\Https:/root/.aspnet/https:ro" 
  -v "C:\github\DotNetCoreDB2\DotNetCoreMySql\DotNetMySql:/app" 
  -v "C:\github\DotNetCoreDB2\DotNetCoreMySql\DotNetMySql:/src/" 
  -v "C:\Users\rahul\.nuget\packages\:/root/.nuget/fallbackpackages" 
  -e "ASPNETCORE_LOGGING__CONSOLE__DISABLECOLORS=true" 
  -e "ASPNETCORE_ENVIRONMENT=Development" 
  -e "DOTNET_USE_POLLING_FILE_WATCHER=1" 
  -e "NUGET_PACKAGES=/root/.nuget/fallbackpackages" 
  -e "NUGET_FALLBACK_PACKAGES=/root/.nuget/fallbackpackages" 
  -p 51803:80 -p 44360:443 --name DotNetMySql 
  -l mylabel=value --entrypoint tail dotnetmysql:dev -f /dev/null 

docker build . -t dotnetmysql2
docker run -p 8084:80 -p 8083:443 --name dotnetmysql2 

docker run --name dotnetmysql2 -p 51803:80 -p 44360:443 -d dotnetmysql2