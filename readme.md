docker run with nodejs

### build

```
docker build -t docker-web1 ./
```

### run container from image

```
docker run --name web1 -d -p 3001:3000 docker-web1
```