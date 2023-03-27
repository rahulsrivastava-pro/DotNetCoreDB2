
References: https://dev.to/berviantoleo/web-api-in-net-6-docker-41d5


1. dotnet new webapi -o DockerNetExample
2. dotnet new sln
3. dotnet sln add DockerNetExample
4. Add DockerFile

#  Build the Image and Run the Container 

1. docker build . -t dotnetexample
2. docker run --name dotnetexample -p 8081:80 -d dotnetexample
3. docker ps
   

# On changes 
1. dotnet publish -c Release -o published


Ref: https://www.mygreatlearning.com/blog/top-essential-docker-commands/

## Other commands 

1. docker ps [list all containers] 
2. docker stop dotnetexample
3. docker restart dotnetexample
4. docker exec -t -i dotnetexample ls -all  [to see file system] 
5. docker cp dotnetexample:/ /github/DotNetCoreDB2/dump  [to take a dump of files in container ]
6. docker images -a [to see all images]
7. docker rmi dotnetexample [remove image by image name]
8. docker rm dotnetexample [remove container by containername]