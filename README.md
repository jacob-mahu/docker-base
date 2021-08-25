# docker-base
docker base images with php & composer pre-installed

- Ubuntu 18.04 -> PHP 7.2, Composer 1
- Ubuntu 20.04 -> PHP 7.4 Composer 2

# build & push
```
docker login -u jacobmahu -p XYZ

docker build --no-cache -f Dockerfile_1804 -t jacobmahu/ubuntu-18.04:latest .
docker push jacobmahu/ubuntu-18.04:latest

docker build --no-cache -f Dockerfile_2004 -t jacobmahu/ubuntu-20.04:latest .
docker push jacobmahu/ubuntu-20.04:latest
```

# run
```
docker run -it jacobmahu/ubuntu-18.04:latest
docker run -it jacobmahu/ubuntu-20.04:latest
```

# todo
- install composer 2 in Ubuntu 20.04