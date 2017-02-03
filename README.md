# python_in_bottle
A Simple docker python:latest container (ie: python3) completed by Bottle and Requests libraries that serves to run web python apps easily.

## Docker image
image name **d3fk/python_in_bottle**

`docker pull d3fk/python_in_bottle`

Docker hub repository: https://hub.docker.com/r/d3fk/python_in_bottle/

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
