# gnlearn-docker
gnlearn Docker Container

https://github.com/rlebron-bioinfo/gnlearn

## Install *gnlearn* Docker container

```
docker pull rlebronbioinfo/gnlearn:latest
```

## Usage

Open an R interpreter with `gnlearn` already installed:

```
docker run -ti --rm -v "$PWD":/root/wd rlebronbioinfo/gnlearn R
```

Run an R script inside this Docker container:

```
cd path/to/script/directory
docker run -ti --rm -v "$PWD":/root/wd rlebronbioinfo/gnlearn Rscript /root/wd/myscript.R
```

After running one of these commands, your working directory will be mounted in /root/wd inside the Docker container. This container will be automatically destroyed after closing the interpreter.
