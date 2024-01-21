reset

clear

set -e 
set -x

echo "build"

docker build -t seo-content-fairy-python-api .

##docker-compose up --build

## echo "hello"

docker run -p 28444:80 seo-content-fairy-python-api

##docker run -p 28444:80 seo-content-fairy/seo-content-fairy-api-flask 

##docker run -p 28444:80 seo-content-fairy/seo-content-fairy-api-flask 