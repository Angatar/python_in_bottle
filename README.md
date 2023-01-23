[![Docker Pulls](https://badgen.net/docker/pulls/d3fk/python_in_bottle?icon=docker&label=pulls)](https://hub.docker.com/r/d3fk/python_in_bottle/tags) [![Docker Image Size](https://badgen.net/docker/size/d3fk/python_in_bottle/latest?icon=docker&label=image%20size)](https://hub.docker.com/r/d3fk/python_in_bottle/tags) [![Docker build](https://img.shields.io/docker/cloud/automated/d3fk/python_in_bottle?label=build&logo=docker)](https://hub.docker.com/r/d3fk/python_in_bottle/tags) [![Build status](https://img.shields.io/docker/cloud/build/d3fk/python_in_bottle?label=build%20status&logo=docker)](https://hub.docker.com/r/d3fk/python_in_bottle/builds) [![Docker Stars](https://badgen.net/docker/stars/d3fk/python_in_bottle?icon=docker&label=stars&color=green)](https://hub.docker.com/r/d3fk/python_in_bottle) [![Github Stars](https://img.shields.io/github/stars/Angatar/python_in_bottle?label=stars&logo=github&color=green)](https://github.com/Angatar/python_in_bottle) [![Github forks](https://img.shields.io/github/forks/Angatar/python_in_bottle?logo=github)](https://github.com/Angatar/python_in_bottle/fork) [![Github open issues](https://img.shields.io/github/issues-raw/Angatar/python_in_bottle?logo=github&color=yellow)](https://github.com/Angatar/python_in_bottle/issues) [![Github closed issues](https://img.shields.io/github/issues-closed-raw/Angatar/python_in_bottle?logo=github&color=green)](https://github.com/Angatar/python_in_bottle/issues?q=is%3Aissue+is%3Aclosed) [![GitHub license](https://img.shields.io/github/license/Angatar/python_in_bottle)](https://github.com/Angatar/python_in_bottle/blob/master/LICENSE)


# python in bottle (d3fk/python_in_bottle)
A simple Python 3 in a docker Alpine linux multi-arch container image completed by Bottle and Requests libraries that serves to run web python apps easily (Total size of the container: [![Docker Image Size](https://badgen.net/docker/size/d3fk/python_in_bottle/latest?icon=docker&label=compressed)](https://hub.docker.com/r/d3fk/python_in_bottle/tags)).

## Docker image
Pre-build as multi-arch image from Docker hub with "automated build" option.

image name **d3fk/python_in_bottle**

`docker pull d3fk/python_in_bottle`

Docker hub repository: https://hub.docker.com/r/d3fk/python_in_bottle/

[![DockerHub Badge](https://lucky-red-wombat.cyclic.app/image/d3fk/python_in_bottle)](https://hub.docker.com/r/d3fk/python_in_bottle)


### Image TAGS

This image is provided with 2 TAGS wich are both multi-arch images:

- **d3fk/python_in_bottle:latest**: is a multi-arch image that is regularly updated for python 3 and Alpine linux versions including packages & security fixes.
- **d3fk/python_in_bottle:stable**: is a multi-arch image with fixed versions, i.e. python 3.11 in an Alpine 3.17. This image had a stable behaviour observed in production, so that it was freezed in a release of the code repo and built from the Docker hub by automated build. It won't be changed or rebuilt in the future (the code is available from the "releases" section of this [image code repository on GitHub](https://github.com/Angatar/python_in_bottle)).


*These multi-arch images will fit most of architectures:*

- *linux/amd64*
- *linux/386*
- *linux/arm/v6*
- *linux/arm/v7*
- *linux/arm64/v8*
- *linux/ppc64le*
- *linux/s390x*

## Run it

For example, if you need to run a web app you could use it this way:

`docker run -itd -p 80:80 -v $(pwd)/myapp:/usr/src/myapp -w /usr/src/myapp d3fk/python_in_bottle:latest python your-python-script.py`

Then go to your browser at http://localhost  to see your web app running

## Example Script 

Here is a small "Hello World" example using the Bottle Web Framework
>[your-python-script.py](https://github.com/Angatar/python_in_bottle/blob/master/your-python-script.py)


```
from bottle import route, run

@route('/')
def hello():
    return "Hello World!"

run(host='0.0.0.0', port=80, debug=True)
```



## More info

More details on the Bottle Web Framework here: https://bottlepy.org

More details on the Requests python library here: http://docs.python-requests.org

## License

The content of this [GitHub code repository](https://github.com/Angatar/python_in_bottle) is provided under **MIT** licence [![GitHub license](https://img.shields.io/github/license/Angatar/python_in_bottle)](https://github.com/Angatar/python_in_bottle/blob/master/LICENSE). For the embeded libraries and packages please see the related licenses information on their respective official repositories.
