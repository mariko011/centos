<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `zookeeper`

-	[`zookeeper:3.3.6`](#zookeeper336)
-	[`zookeeper:3.3`](#zookeeper33)
-	[`zookeeper:3.4.9`](#zookeeper349)
-	[`zookeeper:3.4`](#zookeeper34)
-	[`zookeeper:latest`](#zookeeperlatest)

## `zookeeper:3.3.6`

```console
$ docker pull zookeeper@sha256:31084a697968ffca474db678ca58a131944eab1c87f7fd043c33ca4bba1fd0b5
```

-	Platforms:
	-	linux; amd64

### `zookeeper:3.3.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (54966653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c896c8ccd9162aaf86f9ee8d823c632bcc51b36720e085757d621537de01de7d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 03 Mar 2017 22:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 03 Mar 2017 23:45:18 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Fri, 03 Mar 2017 23:56:59 GMT
RUN apk add --no-cache     bash     su-exec
# Fri, 03 Mar 2017 23:56:59 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2
# Fri, 03 Mar 2017 23:57:00 GMT
RUN set -x     && adduser -D "$ZOO_USER"     && mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"     && chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Mar 2017 23:57:00 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Fri, 03 Mar 2017 23:57:01 GMT
ARG DISTRO_NAME=zookeeper-3.3.6
# Fri, 03 Mar 2017 23:57:06 GMT
# ARGS: DISTRO_NAME=zookeeper-3.3.6 GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Fri, 03 Mar 2017 23:57:06 GMT
WORKDIR /zookeeper-3.3.6
# Fri, 03 Mar 2017 23:57:07 GMT
VOLUME [/data /datalog]
# Fri, 03 Mar 2017 23:57:07 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Mar 2017 23:57:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.3.6/bin ZOOCFGDIR=/conf
# Fri, 03 Mar 2017 23:57:08 GMT
COPY file:a44a253687b69c8f12fac800e2f52c3cc758e785c8004013379af200b5f27bea in / 
# Fri, 03 Mar 2017 23:57:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Mar 2017 23:57:08 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd134db5e982d5650745e9479866c856f24b892a92c4bfad3f3de6fd1bb7cc6d`  
		Last Modified: Sat, 04 Mar 2017 04:20:58 GMT  
		Size: 39.7 MB (39678331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d15e2bb0a2545f573343e84aab39df79ad481cea9ecb9cf516c09bf8578cc7`  
		Last Modified: Sat, 04 Mar 2017 06:45:06 GMT  
		Size: 1.1 MB (1098605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67faf494a604de537a09b361c60a47d922bda7928cf61db91964139caff25b2b`  
		Last Modified: Sat, 04 Mar 2017 06:45:04 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9db6485dd2913cfa8c179b70aaad51e723071fc7280a311425a0beb367ef5c`  
		Last Modified: Sat, 04 Mar 2017 06:45:09 GMT  
		Size: 11.9 MB (11874275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b834d7412e0c539e63abf68391e0a4aa140dad6dc5e02dafd0d5a783e04521c2`  
		Last Modified: Sat, 04 Mar 2017 06:45:04 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `zookeeper:3.3`

```console
$ docker pull zookeeper@sha256:31084a697968ffca474db678ca58a131944eab1c87f7fd043c33ca4bba1fd0b5
```

-	Platforms:
	-	linux; amd64

### `zookeeper:3.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (54966653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c896c8ccd9162aaf86f9ee8d823c632bcc51b36720e085757d621537de01de7d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 03 Mar 2017 22:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 03 Mar 2017 23:45:18 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Fri, 03 Mar 2017 23:56:59 GMT
RUN apk add --no-cache     bash     su-exec
# Fri, 03 Mar 2017 23:56:59 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2
# Fri, 03 Mar 2017 23:57:00 GMT
RUN set -x     && adduser -D "$ZOO_USER"     && mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"     && chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Mar 2017 23:57:00 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Fri, 03 Mar 2017 23:57:01 GMT
ARG DISTRO_NAME=zookeeper-3.3.6
# Fri, 03 Mar 2017 23:57:06 GMT
# ARGS: DISTRO_NAME=zookeeper-3.3.6 GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Fri, 03 Mar 2017 23:57:06 GMT
WORKDIR /zookeeper-3.3.6
# Fri, 03 Mar 2017 23:57:07 GMT
VOLUME [/data /datalog]
# Fri, 03 Mar 2017 23:57:07 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Mar 2017 23:57:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.3.6/bin ZOOCFGDIR=/conf
# Fri, 03 Mar 2017 23:57:08 GMT
COPY file:a44a253687b69c8f12fac800e2f52c3cc758e785c8004013379af200b5f27bea in / 
# Fri, 03 Mar 2017 23:57:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Mar 2017 23:57:08 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd134db5e982d5650745e9479866c856f24b892a92c4bfad3f3de6fd1bb7cc6d`  
		Last Modified: Sat, 04 Mar 2017 04:20:58 GMT  
		Size: 39.7 MB (39678331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d15e2bb0a2545f573343e84aab39df79ad481cea9ecb9cf516c09bf8578cc7`  
		Last Modified: Sat, 04 Mar 2017 06:45:06 GMT  
		Size: 1.1 MB (1098605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67faf494a604de537a09b361c60a47d922bda7928cf61db91964139caff25b2b`  
		Last Modified: Sat, 04 Mar 2017 06:45:04 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9db6485dd2913cfa8c179b70aaad51e723071fc7280a311425a0beb367ef5c`  
		Last Modified: Sat, 04 Mar 2017 06:45:09 GMT  
		Size: 11.9 MB (11874275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b834d7412e0c539e63abf68391e0a4aa140dad6dc5e02dafd0d5a783e04521c2`  
		Last Modified: Sat, 04 Mar 2017 06:45:04 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `zookeeper:3.4.9`

```console
$ docker pull zookeeper@sha256:585de3d1a99f5fc61a9303373ad3ce3a5564ee547d8032d62bdb7f2c8d08b0cb
```

-	Platforms:
	-	linux; amd64

### `zookeeper:3.4.9` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.9 MB (65882880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc5125eb70fac439685178c2aee8103282ec6ba2f3d344174e0fd45d42839992`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 03 Mar 2017 22:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 03 Mar 2017 23:45:18 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Fri, 03 Mar 2017 23:56:59 GMT
RUN apk add --no-cache     bash     su-exec
# Fri, 03 Mar 2017 23:56:59 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2
# Fri, 03 Mar 2017 23:57:00 GMT
RUN set -x     && adduser -D "$ZOO_USER"     && mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"     && chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Mar 2017 23:57:09 GMT
ARG GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
# Fri, 03 Mar 2017 23:57:09 GMT
ARG DISTRO_NAME=zookeeper-3.4.9
# Fri, 03 Mar 2017 23:57:15 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.9 GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Fri, 03 Mar 2017 23:57:15 GMT
WORKDIR /zookeeper-3.4.9
# Fri, 03 Mar 2017 23:57:16 GMT
VOLUME [/data /datalog]
# Fri, 03 Mar 2017 23:57:16 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Mar 2017 23:57:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.9/bin ZOOCFGDIR=/conf
# Fri, 03 Mar 2017 23:57:17 GMT
COPY file:a44a253687b69c8f12fac800e2f52c3cc758e785c8004013379af200b5f27bea in / 
# Fri, 03 Mar 2017 23:57:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Mar 2017 23:57:17 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd134db5e982d5650745e9479866c856f24b892a92c4bfad3f3de6fd1bb7cc6d`  
		Last Modified: Sat, 04 Mar 2017 04:20:58 GMT  
		Size: 39.7 MB (39678331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d15e2bb0a2545f573343e84aab39df79ad481cea9ecb9cf516c09bf8578cc7`  
		Last Modified: Sat, 04 Mar 2017 06:45:06 GMT  
		Size: 1.1 MB (1098605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67faf494a604de537a09b361c60a47d922bda7928cf61db91964139caff25b2b`  
		Last Modified: Sat, 04 Mar 2017 06:45:04 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b8e9bf88772720e30579392eb329fd89938d8a3d138c2f5df3a3460aa08094`  
		Last Modified: Sat, 04 Mar 2017 06:45:57 GMT  
		Size: 22.8 MB (22790504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c62a148be81009fc6ffcd8c8ece104bf6ef579c8abfdaf5f3d49c79e7b0503`  
		Last Modified: Sat, 04 Mar 2017 06:45:51 GMT  
		Size: 514.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `zookeeper:3.4`

```console
$ docker pull zookeeper@sha256:585de3d1a99f5fc61a9303373ad3ce3a5564ee547d8032d62bdb7f2c8d08b0cb
```

-	Platforms:
	-	linux; amd64

### `zookeeper:3.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.9 MB (65882880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc5125eb70fac439685178c2aee8103282ec6ba2f3d344174e0fd45d42839992`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 03 Mar 2017 22:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 03 Mar 2017 23:45:18 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Fri, 03 Mar 2017 23:56:59 GMT
RUN apk add --no-cache     bash     su-exec
# Fri, 03 Mar 2017 23:56:59 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2
# Fri, 03 Mar 2017 23:57:00 GMT
RUN set -x     && adduser -D "$ZOO_USER"     && mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"     && chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Mar 2017 23:57:09 GMT
ARG GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
# Fri, 03 Mar 2017 23:57:09 GMT
ARG DISTRO_NAME=zookeeper-3.4.9
# Fri, 03 Mar 2017 23:57:15 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.9 GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Fri, 03 Mar 2017 23:57:15 GMT
WORKDIR /zookeeper-3.4.9
# Fri, 03 Mar 2017 23:57:16 GMT
VOLUME [/data /datalog]
# Fri, 03 Mar 2017 23:57:16 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Mar 2017 23:57:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.9/bin ZOOCFGDIR=/conf
# Fri, 03 Mar 2017 23:57:17 GMT
COPY file:a44a253687b69c8f12fac800e2f52c3cc758e785c8004013379af200b5f27bea in / 
# Fri, 03 Mar 2017 23:57:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Mar 2017 23:57:17 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd134db5e982d5650745e9479866c856f24b892a92c4bfad3f3de6fd1bb7cc6d`  
		Last Modified: Sat, 04 Mar 2017 04:20:58 GMT  
		Size: 39.7 MB (39678331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d15e2bb0a2545f573343e84aab39df79ad481cea9ecb9cf516c09bf8578cc7`  
		Last Modified: Sat, 04 Mar 2017 06:45:06 GMT  
		Size: 1.1 MB (1098605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67faf494a604de537a09b361c60a47d922bda7928cf61db91964139caff25b2b`  
		Last Modified: Sat, 04 Mar 2017 06:45:04 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b8e9bf88772720e30579392eb329fd89938d8a3d138c2f5df3a3460aa08094`  
		Last Modified: Sat, 04 Mar 2017 06:45:57 GMT  
		Size: 22.8 MB (22790504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c62a148be81009fc6ffcd8c8ece104bf6ef579c8abfdaf5f3d49c79e7b0503`  
		Last Modified: Sat, 04 Mar 2017 06:45:51 GMT  
		Size: 514.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `zookeeper:latest`

```console
$ docker pull zookeeper@sha256:585de3d1a99f5fc61a9303373ad3ce3a5564ee547d8032d62bdb7f2c8d08b0cb
```

-	Platforms:
	-	linux; amd64

### `zookeeper:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.9 MB (65882880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc5125eb70fac439685178c2aee8103282ec6ba2f3d344174e0fd45d42839992`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 03 Mar 2017 22:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 03 Mar 2017 23:45:18 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Fri, 03 Mar 2017 23:56:59 GMT
RUN apk add --no-cache     bash     su-exec
# Fri, 03 Mar 2017 23:56:59 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2
# Fri, 03 Mar 2017 23:57:00 GMT
RUN set -x     && adduser -D "$ZOO_USER"     && mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"     && chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Mar 2017 23:57:09 GMT
ARG GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
# Fri, 03 Mar 2017 23:57:09 GMT
ARG DISTRO_NAME=zookeeper-3.4.9
# Fri, 03 Mar 2017 23:57:15 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.9 GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Fri, 03 Mar 2017 23:57:15 GMT
WORKDIR /zookeeper-3.4.9
# Fri, 03 Mar 2017 23:57:16 GMT
VOLUME [/data /datalog]
# Fri, 03 Mar 2017 23:57:16 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Mar 2017 23:57:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.9/bin ZOOCFGDIR=/conf
# Fri, 03 Mar 2017 23:57:17 GMT
COPY file:a44a253687b69c8f12fac800e2f52c3cc758e785c8004013379af200b5f27bea in / 
# Fri, 03 Mar 2017 23:57:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Mar 2017 23:57:17 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd134db5e982d5650745e9479866c856f24b892a92c4bfad3f3de6fd1bb7cc6d`  
		Last Modified: Sat, 04 Mar 2017 04:20:58 GMT  
		Size: 39.7 MB (39678331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d15e2bb0a2545f573343e84aab39df79ad481cea9ecb9cf516c09bf8578cc7`  
		Last Modified: Sat, 04 Mar 2017 06:45:06 GMT  
		Size: 1.1 MB (1098605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67faf494a604de537a09b361c60a47d922bda7928cf61db91964139caff25b2b`  
		Last Modified: Sat, 04 Mar 2017 06:45:04 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b8e9bf88772720e30579392eb329fd89938d8a3d138c2f5df3a3460aa08094`  
		Last Modified: Sat, 04 Mar 2017 06:45:57 GMT  
		Size: 22.8 MB (22790504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c62a148be81009fc6ffcd8c8ece104bf6ef579c8abfdaf5f3d49c79e7b0503`  
		Last Modified: Sat, 04 Mar 2017 06:45:51 GMT  
		Size: 514.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
