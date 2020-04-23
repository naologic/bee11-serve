# Bee11 Nest Serve

Docker image for Nest CLI to use as build container.

![Docker stats](https://dockeri.co/image/naologic/bee11-dev-docker)

Currently this image uses node 12 (npm 6) and node as base distribution.

## Example usage 

To run the Nest CLI development server from docker you need to map the port.
For example use
```
cd MyDemo
docker run --rm --expose 3000 -p 3010:3010 -v "$PWD":/app naologic/bee11-dev-docker -e "npm_run_command=start:dev"
```
