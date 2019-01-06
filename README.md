# Using Makefiles with Docker-Compose
Example of using makefile to organize container management with Docker-Compose.

This basic example creates two containers - An NGINX reverse proxy server, and an app container running a basic Flask application using Gunicorn.

## Running the Example

Simply run:
```
make dev
```
or
```
make prod
```

The makefile takes care of the details of running Docker-Compose with the appropriate compose file(s).

## Tearing Down

To stop and destroy the containers, simply run:
```
make down
```
To completely remove the container images, run:
```
docker rmi my_nginx my_gunicorn
```
