#### image build, cd to folder contains Dockerfile, run the command bellow

```shell
docker build -t goodsmanager .
```

#### run image

```text
 sudo docker run -d -p 8088:8088 --network="host" goodsmanager
```



