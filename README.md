# docker-python

[Debian](https://hub.docker.com/_/debian) based image for building documents
using [Python](https://python.org). This includes [GNU
make](https://www.gnu.org/software/make/).

The latest Docker image can be found on [Docker Hub](https://cloud.docker.com),
[here](https://cloud.docker.com/repository/docker/frankhjung/python/general).


## Build

The latest build uses Python `3.7.3`. The Git tag is `v1.0.1`.

```bash
docker build --compress --rm --tag frankhjung/python:latest --tag frankhjung/python:3.7.3 --label=v1.0.1 .
```

## Push

```bash
docker login
docker push frankhjung/python:3.7.3
```

## Run

```bash
docker run frankhjung/python:latest
```

Latest version:

```text
$ docker run frankhjung/python:latest
Python 3.7.3
```

## Method

The way I build and maintain my Docker images is as follows:

* Create a repository on GitHub, https://github.com/frankhjung/docker-python
* Build, and test the Docker image locally
* Create a Docker repository
* Add automated build to Docker repository and link to GitHub repository.
* Once happy with Docker image, commit, tag and push to remote. Where the Git tag is the same as
  the Docker label.
* This will trigger a Docker Hub build.
* Once build is successful, then
  * locally log into Docker Hub
  * you can push you image label and tag to Docker Hub.


