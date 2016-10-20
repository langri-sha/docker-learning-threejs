# docker-learning-threejs

Docker container for accessing the sources for Packt's [*Learning Three.js*](publisher), from [josdirksen/learning-threejs](sources).

[publisher]:  https://www.packtpub.com/web-development/learning-threejs-javascript-3d-library-webgl
[sources]: https://github.com/josdirksen/learning-threejs

## Usage

Run an interactive container and obtain the server URL from the output:

```
docker run -it langrisha/learning-threejs
```

Alternatively, run a detached container and access the server via the container's IP address:

```
CID=$(docker run -d langrisha/learning-threejs)
echo "Server running on http://$(docker inspect --format '{{ .NetworkSettings.IPAddress }}' ${CID}):8080"
```

The server runs on port `8080`.
