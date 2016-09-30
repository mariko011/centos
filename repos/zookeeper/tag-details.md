<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `zookeeper`

-	[`zookeeper:3.3.6`](#zookeeper336)
-	[`zookeeper:3.3`](#zookeeper33)
-	[`zookeeper:3.4.9`](#zookeeper349)
-	[`zookeeper:3.4`](#zookeeper34)
-	[`zookeeper:latest`](#zookeeperlatest)

## `zookeeper:3.3.6`

```console
$ docker pull zookeeper@sha256:70a0ac4179dab901de772ea84b223245737c3f118161feef138e910d1f3ec7c0
```

-	Platforms:
	-	linux; amd64

### `zookeeper:3.3.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54937047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f09b87e168be4977a22d4647d6d6d7f6040c51bf776b9ce50e72d26f3efa3a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 23 Sep 2016 17:07:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:07:02 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:07:05 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:48:25 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Fri, 23 Sep 2016 18:48:28 GMT
RUN apk add --no-cache     bash     su-exec
# Fri, 23 Sep 2016 18:48:28 GMT
ENV ZOO_USER=zookeeper
# Fri, 23 Sep 2016 18:48:29 GMT
ENV ZOO_CONF_DIR=/conf
# Fri, 23 Sep 2016 18:48:29 GMT
ENV ZOO_DATA_DIR=/data
# Fri, 23 Sep 2016 18:48:30 GMT
ENV ZOO_DATA_LOG_DIR=/datalog
# Fri, 23 Sep 2016 18:48:31 GMT
RUN set -x     && adduser -D "$ZOO_USER"     && mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"     && chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 23 Sep 2016 18:48:31 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Fri, 23 Sep 2016 18:48:32 GMT
ARG DISTRO_NAME=zookeeper-3.3.6
# Fri, 23 Sep 2016 18:48:41 GMT
# ARGS: DISTRO_NAME=zookeeper-3.3.6 GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Fri, 23 Sep 2016 18:48:42 GMT
WORKDIR /zookeeper-3.3.6
# Fri, 23 Sep 2016 18:48:42 GMT
VOLUME [/data /datalog]
# Fri, 23 Sep 2016 18:48:42 GMT
ENV ZOO_PORT=2181
# Fri, 23 Sep 2016 18:48:43 GMT
EXPOSE 2181/tcp
# Fri, 23 Sep 2016 18:48:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.3.6/bin
# Fri, 23 Sep 2016 18:48:43 GMT
ENV ZOOCFGDIR=/conf
# Fri, 30 Sep 2016 19:46:33 GMT
COPY file:c977471681bd4fed5c9a918b0d0653d8e9a779b348bfb1c3815bf0613425255b in / 
# Fri, 30 Sep 2016 19:46:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 30 Sep 2016 19:46:34 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69001e8f079b82a7067ea481b58cb7076d7e3154a5e2da4b8eb4fc9670ebab2d`  
		Last Modified: Fri, 23 Sep 2016 17:07:21 GMT  
		Size: 39.6 MB (39647465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc039eee2ca8463943efb50cdef25a575ae472cfe780cd812ec39986d088f1a`  
		Last Modified: Fri, 23 Sep 2016 18:48:56 GMT  
		Size: 1.1 MB (1100300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19839529bff44d3c82411bdc1e469f1f8c552e914818f011ddac602bf4b7bdc`  
		Last Modified: Fri, 23 Sep 2016 18:48:54 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dc9300d0f57fd3aafacd96361d51f8612286bdb61e38bf516da30f4b70985d5`  
		Last Modified: Fri, 23 Sep 2016 18:48:56 GMT  
		Size: 11.9 MB (11874308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f74d4edafe89e27e1a897e324b53b7ae52fbac5a74d747add14128fdc112f48c`  
		Last Modified: Fri, 30 Sep 2016 19:46:44 GMT  
		Size: 503.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `zookeeper:3.3`

```console
$ docker pull zookeeper@sha256:70a0ac4179dab901de772ea84b223245737c3f118161feef138e910d1f3ec7c0
```

-	Platforms:
	-	linux; amd64

### `zookeeper:3.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54937047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f09b87e168be4977a22d4647d6d6d7f6040c51bf776b9ce50e72d26f3efa3a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 23 Sep 2016 17:07:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:07:02 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:07:05 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:48:25 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Fri, 23 Sep 2016 18:48:28 GMT
RUN apk add --no-cache     bash     su-exec
# Fri, 23 Sep 2016 18:48:28 GMT
ENV ZOO_USER=zookeeper
# Fri, 23 Sep 2016 18:48:29 GMT
ENV ZOO_CONF_DIR=/conf
# Fri, 23 Sep 2016 18:48:29 GMT
ENV ZOO_DATA_DIR=/data
# Fri, 23 Sep 2016 18:48:30 GMT
ENV ZOO_DATA_LOG_DIR=/datalog
# Fri, 23 Sep 2016 18:48:31 GMT
RUN set -x     && adduser -D "$ZOO_USER"     && mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"     && chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 23 Sep 2016 18:48:31 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Fri, 23 Sep 2016 18:48:32 GMT
ARG DISTRO_NAME=zookeeper-3.3.6
# Fri, 23 Sep 2016 18:48:41 GMT
# ARGS: DISTRO_NAME=zookeeper-3.3.6 GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Fri, 23 Sep 2016 18:48:42 GMT
WORKDIR /zookeeper-3.3.6
# Fri, 23 Sep 2016 18:48:42 GMT
VOLUME [/data /datalog]
# Fri, 23 Sep 2016 18:48:42 GMT
ENV ZOO_PORT=2181
# Fri, 23 Sep 2016 18:48:43 GMT
EXPOSE 2181/tcp
# Fri, 23 Sep 2016 18:48:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.3.6/bin
# Fri, 23 Sep 2016 18:48:43 GMT
ENV ZOOCFGDIR=/conf
# Fri, 30 Sep 2016 19:46:33 GMT
COPY file:c977471681bd4fed5c9a918b0d0653d8e9a779b348bfb1c3815bf0613425255b in / 
# Fri, 30 Sep 2016 19:46:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 30 Sep 2016 19:46:34 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69001e8f079b82a7067ea481b58cb7076d7e3154a5e2da4b8eb4fc9670ebab2d`  
		Last Modified: Fri, 23 Sep 2016 17:07:21 GMT  
		Size: 39.6 MB (39647465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc039eee2ca8463943efb50cdef25a575ae472cfe780cd812ec39986d088f1a`  
		Last Modified: Fri, 23 Sep 2016 18:48:56 GMT  
		Size: 1.1 MB (1100300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19839529bff44d3c82411bdc1e469f1f8c552e914818f011ddac602bf4b7bdc`  
		Last Modified: Fri, 23 Sep 2016 18:48:54 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dc9300d0f57fd3aafacd96361d51f8612286bdb61e38bf516da30f4b70985d5`  
		Last Modified: Fri, 23 Sep 2016 18:48:56 GMT  
		Size: 11.9 MB (11874308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f74d4edafe89e27e1a897e324b53b7ae52fbac5a74d747add14128fdc112f48c`  
		Last Modified: Fri, 30 Sep 2016 19:46:44 GMT  
		Size: 503.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `zookeeper:3.4.9`

```console
$ docker pull zookeeper@sha256:2136f79076828ba60a2d86b7dae2ca04dab029d35b0b923397e580bf919b552d
```

-	Platforms:
	-	linux; amd64

### `zookeeper:3.4.9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.9 MB (65852828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dcd253cae80993f0dcf7fd888f637b2f60a25c6302635941776909e43e471fd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 23 Sep 2016 17:07:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:07:02 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:07:05 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:48:25 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Fri, 23 Sep 2016 18:48:28 GMT
RUN apk add --no-cache     bash     su-exec
# Fri, 23 Sep 2016 18:48:28 GMT
ENV ZOO_USER=zookeeper
# Fri, 23 Sep 2016 18:48:29 GMT
ENV ZOO_CONF_DIR=/conf
# Fri, 23 Sep 2016 18:48:29 GMT
ENV ZOO_DATA_DIR=/data
# Fri, 23 Sep 2016 18:48:30 GMT
ENV ZOO_DATA_LOG_DIR=/datalog
# Fri, 23 Sep 2016 18:48:31 GMT
RUN set -x     && adduser -D "$ZOO_USER"     && mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"     && chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 23 Sep 2016 18:49:15 GMT
ARG GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
# Fri, 23 Sep 2016 18:49:15 GMT
ARG DISTRO_NAME=zookeeper-3.4.9
# Fri, 23 Sep 2016 18:49:22 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.9 GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Fri, 23 Sep 2016 18:49:22 GMT
WORKDIR /zookeeper-3.4.9
# Fri, 23 Sep 2016 18:49:22 GMT
VOLUME [/data /datalog]
# Fri, 23 Sep 2016 18:49:23 GMT
ENV ZOO_PORT=2181
# Fri, 23 Sep 2016 18:49:23 GMT
EXPOSE 2181/tcp
# Fri, 23 Sep 2016 18:49:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.9/bin
# Fri, 23 Sep 2016 18:49:23 GMT
ENV ZOOCFGDIR=/conf
# Fri, 30 Sep 2016 19:46:35 GMT
COPY file:c977471681bd4fed5c9a918b0d0653d8e9a779b348bfb1c3815bf0613425255b in / 
# Fri, 30 Sep 2016 19:46:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 30 Sep 2016 19:46:35 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69001e8f079b82a7067ea481b58cb7076d7e3154a5e2da4b8eb4fc9670ebab2d`  
		Last Modified: Fri, 23 Sep 2016 17:07:21 GMT  
		Size: 39.6 MB (39647465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc039eee2ca8463943efb50cdef25a575ae472cfe780cd812ec39986d088f1a`  
		Last Modified: Fri, 23 Sep 2016 18:48:56 GMT  
		Size: 1.1 MB (1100300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19839529bff44d3c82411bdc1e469f1f8c552e914818f011ddac602bf4b7bdc`  
		Last Modified: Fri, 23 Sep 2016 18:48:54 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c552c816fc63684d4234f2be63f690ce8451d017afdf2310421d77e7954a87a`  
		Last Modified: Fri, 23 Sep 2016 18:49:36 GMT  
		Size: 22.8 MB (22790090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1be6cbcb9a0d6e862075866eea03cf28dd23f5c7cd0b73a1447ddbcc105f04`  
		Last Modified: Fri, 30 Sep 2016 19:47:10 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `zookeeper:3.4`

```console
$ docker pull zookeeper@sha256:2136f79076828ba60a2d86b7dae2ca04dab029d35b0b923397e580bf919b552d
```

-	Platforms:
	-	linux; amd64

### `zookeeper:3.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.9 MB (65852828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dcd253cae80993f0dcf7fd888f637b2f60a25c6302635941776909e43e471fd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 23 Sep 2016 17:07:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:07:02 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:07:05 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:48:25 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Fri, 23 Sep 2016 18:48:28 GMT
RUN apk add --no-cache     bash     su-exec
# Fri, 23 Sep 2016 18:48:28 GMT
ENV ZOO_USER=zookeeper
# Fri, 23 Sep 2016 18:48:29 GMT
ENV ZOO_CONF_DIR=/conf
# Fri, 23 Sep 2016 18:48:29 GMT
ENV ZOO_DATA_DIR=/data
# Fri, 23 Sep 2016 18:48:30 GMT
ENV ZOO_DATA_LOG_DIR=/datalog
# Fri, 23 Sep 2016 18:48:31 GMT
RUN set -x     && adduser -D "$ZOO_USER"     && mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"     && chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 23 Sep 2016 18:49:15 GMT
ARG GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
# Fri, 23 Sep 2016 18:49:15 GMT
ARG DISTRO_NAME=zookeeper-3.4.9
# Fri, 23 Sep 2016 18:49:22 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.9 GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Fri, 23 Sep 2016 18:49:22 GMT
WORKDIR /zookeeper-3.4.9
# Fri, 23 Sep 2016 18:49:22 GMT
VOLUME [/data /datalog]
# Fri, 23 Sep 2016 18:49:23 GMT
ENV ZOO_PORT=2181
# Fri, 23 Sep 2016 18:49:23 GMT
EXPOSE 2181/tcp
# Fri, 23 Sep 2016 18:49:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.9/bin
# Fri, 23 Sep 2016 18:49:23 GMT
ENV ZOOCFGDIR=/conf
# Fri, 30 Sep 2016 19:46:35 GMT
COPY file:c977471681bd4fed5c9a918b0d0653d8e9a779b348bfb1c3815bf0613425255b in / 
# Fri, 30 Sep 2016 19:46:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 30 Sep 2016 19:46:35 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69001e8f079b82a7067ea481b58cb7076d7e3154a5e2da4b8eb4fc9670ebab2d`  
		Last Modified: Fri, 23 Sep 2016 17:07:21 GMT  
		Size: 39.6 MB (39647465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc039eee2ca8463943efb50cdef25a575ae472cfe780cd812ec39986d088f1a`  
		Last Modified: Fri, 23 Sep 2016 18:48:56 GMT  
		Size: 1.1 MB (1100300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19839529bff44d3c82411bdc1e469f1f8c552e914818f011ddac602bf4b7bdc`  
		Last Modified: Fri, 23 Sep 2016 18:48:54 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c552c816fc63684d4234f2be63f690ce8451d017afdf2310421d77e7954a87a`  
		Last Modified: Fri, 23 Sep 2016 18:49:36 GMT  
		Size: 22.8 MB (22790090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1be6cbcb9a0d6e862075866eea03cf28dd23f5c7cd0b73a1447ddbcc105f04`  
		Last Modified: Fri, 30 Sep 2016 19:47:10 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `zookeeper:latest`

```console
$ docker pull zookeeper@sha256:2136f79076828ba60a2d86b7dae2ca04dab029d35b0b923397e580bf919b552d
```

-	Platforms:
	-	linux; amd64

### `zookeeper:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.9 MB (65852828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dcd253cae80993f0dcf7fd888f637b2f60a25c6302635941776909e43e471fd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 23 Sep 2016 17:07:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:07:02 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:07:05 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:48:25 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Fri, 23 Sep 2016 18:48:28 GMT
RUN apk add --no-cache     bash     su-exec
# Fri, 23 Sep 2016 18:48:28 GMT
ENV ZOO_USER=zookeeper
# Fri, 23 Sep 2016 18:48:29 GMT
ENV ZOO_CONF_DIR=/conf
# Fri, 23 Sep 2016 18:48:29 GMT
ENV ZOO_DATA_DIR=/data
# Fri, 23 Sep 2016 18:48:30 GMT
ENV ZOO_DATA_LOG_DIR=/datalog
# Fri, 23 Sep 2016 18:48:31 GMT
RUN set -x     && adduser -D "$ZOO_USER"     && mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"     && chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 23 Sep 2016 18:49:15 GMT
ARG GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
# Fri, 23 Sep 2016 18:49:15 GMT
ARG DISTRO_NAME=zookeeper-3.4.9
# Fri, 23 Sep 2016 18:49:22 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.9 GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Fri, 23 Sep 2016 18:49:22 GMT
WORKDIR /zookeeper-3.4.9
# Fri, 23 Sep 2016 18:49:22 GMT
VOLUME [/data /datalog]
# Fri, 23 Sep 2016 18:49:23 GMT
ENV ZOO_PORT=2181
# Fri, 23 Sep 2016 18:49:23 GMT
EXPOSE 2181/tcp
# Fri, 23 Sep 2016 18:49:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.9/bin
# Fri, 23 Sep 2016 18:49:23 GMT
ENV ZOOCFGDIR=/conf
# Fri, 30 Sep 2016 19:46:35 GMT
COPY file:c977471681bd4fed5c9a918b0d0653d8e9a779b348bfb1c3815bf0613425255b in / 
# Fri, 30 Sep 2016 19:46:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 30 Sep 2016 19:46:35 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69001e8f079b82a7067ea481b58cb7076d7e3154a5e2da4b8eb4fc9670ebab2d`  
		Last Modified: Fri, 23 Sep 2016 17:07:21 GMT  
		Size: 39.6 MB (39647465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc039eee2ca8463943efb50cdef25a575ae472cfe780cd812ec39986d088f1a`  
		Last Modified: Fri, 23 Sep 2016 18:48:56 GMT  
		Size: 1.1 MB (1100300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19839529bff44d3c82411bdc1e469f1f8c552e914818f011ddac602bf4b7bdc`  
		Last Modified: Fri, 23 Sep 2016 18:48:54 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c552c816fc63684d4234f2be63f690ce8451d017afdf2310421d77e7954a87a`  
		Last Modified: Fri, 23 Sep 2016 18:49:36 GMT  
		Size: 22.8 MB (22790090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1be6cbcb9a0d6e862075866eea03cf28dd23f5c7cd0b73a1447ddbcc105f04`  
		Last Modified: Fri, 30 Sep 2016 19:47:10 GMT  
		Size: 502.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
