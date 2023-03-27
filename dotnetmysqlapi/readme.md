
References: https://dev.to/berviantoleo/web-api-in-net-6-docker-41d5


1. dotnet new webapi -o dotnetmysqlapi
2. dotnet new sln
3. dotnet sln add dotnetmysqlapi
4. Add DockerFile

#  Build the Image and Run the Container 

1. docker build . -t dotnetmysqlapi
2. docker run --name dotnetmysqlapi -p 8079:80 -d dotnetmysqlapi
3. docker ps
   

# On changes 
1. dotnet publish -c Release -o published


Ref: https://www.mygreatlearning.com/blog/top-essential-docker-commands/

## Other commands 

1. docker ps [list all containers] 
2. docker stop dotnetmysqlapi
3. docker restart dotnetmysqlapi
4. docker exec -t -i dotnetmysqlapi ls -all  [to see file system] 
5. docker cp dotnetmysqlapi:/ /github/DotNetCoreDB2/dump  [to take a dump of files in container ]
6. docker images -a [to see all images]
7. docker rmi dotnetmysqlapi [remove image by image name]
8. docker rm dotnetmysqlapi [remove container by containername]