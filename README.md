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

## Importing/Exporting Docker images

You probably know already that you can push your container images to a Docker
Hub repository for free. However, if you wish to transport your image to another
machine while keeping it private, you can export a container image as a file.

To generate a container image file for the NGINX server, run:
```
make save
```

To export a different image (for example `my_app`), run:
```
make container_name=my_app save
```

You can then move the tar file and load it in a new machine with:
```
make load
```

or

```
make container_name=my_app load
```

## Tearing Down

To stop and destroy the containers, simply run:
```
make down
```
To completely remove the container images, run:
```
docker rmi my_nginx my_gunicorn
```
