FROM node:24.22.2
MAINTAINER Filip Dupanović <filip.dupanovic@gmail.com>

RUN \
	npm install -g http-server@0.9.0 && \
	git clone --depth 1 https://github.com/josdirksen/learning-threejs

WORKDIR /learning-threejs
EXPOSE 8080
CMD ["http-server", "./"]
