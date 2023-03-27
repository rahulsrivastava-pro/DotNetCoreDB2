
1. mkdir Docker
2. cd Docker
3. docker login
4. docker pull ibmcom/db2
5. type nul > ".env_list"
    LICENSE=accept
    DB2INSTANCE=db2inst1
    DB2INST1_PASSWORD=password
    DBNAME=testdb
    BLU=false
    ENABLE_ORACLE_COMPATIBILITY=false
    UPDATEAVAIL=NO
    TO_CREATE_SAMPLEDB=false
    REPODB=false
    IS_OSXFS=false
    PERSISTENT_HOME=false
    HADR_ENABLED=false
    ETCD_ENDPOINT=
    ETCD_USERNAME=
    ETCD_PASSWORD=

6. :wq!
7. docker run -h db2server --name db2server --restart=always --detach --privileged=true -p 50000:50000 --env-file .env_list -v /Docker:/database ibmcom/db2
8. docker exec -ti db2server bash -c "su – db2inst1"









