<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `zookeeper`

-	[`zookeeper:3.3.6`](#zookeeper336)
-	[`zookeeper:3.3`](#zookeeper33)
-	[`zookeeper:3.4.9`](#zookeeper349)
-	[`zookeeper:3.4`](#zookeeper34)
-	[`zookeeper:latest`](#zookeeperlatest)

## `zookeeper:3.3.6`

```console
$ docker pull zookeeper@sha256:1afac122f673ddc07a6c2bef5669511ac8d02450baa9c7f97fc8066903baeef8
```

-	Platforms:
	-	linux; amd64

### `zookeeper:3.3.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54934661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f979561d0ed4abc73a94e49b1c2fa75d094fe7666a0021c20435fce326995bce`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 12 Sep 2016 21:01:15 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Mon, 12 Sep 2016 21:01:18 GMT
RUN apk add --no-cache     bash     su-exec
# Mon, 12 Sep 2016 21:01:18 GMT
ENV ZOO_USER=zookeeper
# Mon, 12 Sep 2016 21:01:18 GMT
ENV ZOO_CONF_DIR=/conf
# Mon, 12 Sep 2016 21:01:19 GMT
ENV ZOO_DATA_DIR=/data
# Mon, 12 Sep 2016 21:01:19 GMT
ENV ZOO_DATA_LOG_DIR=/datalog
# Mon, 12 Sep 2016 21:01:20 GMT
RUN set -x     && adduser -D "$ZOO_USER"     && mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"     && chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Mon, 12 Sep 2016 21:01:20 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Mon, 12 Sep 2016 21:01:21 GMT
ARG DISTRO_NAME=zookeeper-3.3.6
# Mon, 12 Sep 2016 21:01:34 GMT
# ARGS: DISTRO_NAME=zookeeper-3.3.6 GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Mon, 12 Sep 2016 21:01:34 GMT
WORKDIR /zookeeper-3.3.6
# Mon, 12 Sep 2016 21:01:34 GMT
VOLUME [/data /datalog]
# Mon, 12 Sep 2016 21:01:34 GMT
ENV ZOO_PORT=2181
# Mon, 12 Sep 2016 21:01:35 GMT
EXPOSE 2181/tcp
# Mon, 12 Sep 2016 21:01:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.3.6/bin
# Mon, 12 Sep 2016 21:01:35 GMT
ENV ZOOCFGDIR=/conf
# Mon, 12 Sep 2016 21:01:36 GMT
COPY file:ff4944992015e2ab099e02d1cfcb3af5bbfb0170bdd16e6c6377495e4d957747 in / 
# Mon, 12 Sep 2016 21:01:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 12 Sep 2016 21:01:36 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72391ae24f6b2f51646b2027820046edc3e06c6aad27882cb5158e4782a88b5`  
		Last Modified: Mon, 12 Sep 2016 21:01:53 GMT  
		Size: 1.1 MB (1100334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40ab409b6b344613b0fc0d21a3f3cad4f66da65bb5d92525a08ad16f8e69a3ca`  
		Last Modified: Mon, 12 Sep 2016 21:01:52 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd79c71afb418ddf2ebfd2657e9a767d326e71642239fb80e514f916a4eadb1a`  
		Last Modified: Mon, 12 Sep 2016 21:01:55 GMT  
		Size: 11.9 MB (11874427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f129194801f525708d719c2e3964e4f4834639e75f5878b8987078e959eca897`  
		Last Modified: Mon, 12 Sep 2016 21:01:53 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `zookeeper:3.3`

```console
$ docker pull zookeeper@sha256:1afac122f673ddc07a6c2bef5669511ac8d02450baa9c7f97fc8066903baeef8
```

-	Platforms:
	-	linux; amd64

### `zookeeper:3.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54934661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f979561d0ed4abc73a94e49b1c2fa75d094fe7666a0021c20435fce326995bce`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 12 Sep 2016 21:01:15 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Mon, 12 Sep 2016 21:01:18 GMT
RUN apk add --no-cache     bash     su-exec
# Mon, 12 Sep 2016 21:01:18 GMT
ENV ZOO_USER=zookeeper
# Mon, 12 Sep 2016 21:01:18 GMT
ENV ZOO_CONF_DIR=/conf
# Mon, 12 Sep 2016 21:01:19 GMT
ENV ZOO_DATA_DIR=/data
# Mon, 12 Sep 2016 21:01:19 GMT
ENV ZOO_DATA_LOG_DIR=/datalog
# Mon, 12 Sep 2016 21:01:20 GMT
RUN set -x     && adduser -D "$ZOO_USER"     && mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"     && chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Mon, 12 Sep 2016 21:01:20 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Mon, 12 Sep 2016 21:01:21 GMT
ARG DISTRO_NAME=zookeeper-3.3.6
# Mon, 12 Sep 2016 21:01:34 GMT
# ARGS: DISTRO_NAME=zookeeper-3.3.6 GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Mon, 12 Sep 2016 21:01:34 GMT
WORKDIR /zookeeper-3.3.6
# Mon, 12 Sep 2016 21:01:34 GMT
VOLUME [/data /datalog]
# Mon, 12 Sep 2016 21:01:34 GMT
ENV ZOO_PORT=2181
# Mon, 12 Sep 2016 21:01:35 GMT
EXPOSE 2181/tcp
# Mon, 12 Sep 2016 21:01:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.3.6/bin
# Mon, 12 Sep 2016 21:01:35 GMT
ENV ZOOCFGDIR=/conf
# Mon, 12 Sep 2016 21:01:36 GMT
COPY file:ff4944992015e2ab099e02d1cfcb3af5bbfb0170bdd16e6c6377495e4d957747 in / 
# Mon, 12 Sep 2016 21:01:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 12 Sep 2016 21:01:36 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72391ae24f6b2f51646b2027820046edc3e06c6aad27882cb5158e4782a88b5`  
		Last Modified: Mon, 12 Sep 2016 21:01:53 GMT  
		Size: 1.1 MB (1100334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40ab409b6b344613b0fc0d21a3f3cad4f66da65bb5d92525a08ad16f8e69a3ca`  
		Last Modified: Mon, 12 Sep 2016 21:01:52 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd79c71afb418ddf2ebfd2657e9a767d326e71642239fb80e514f916a4eadb1a`  
		Last Modified: Mon, 12 Sep 2016 21:01:55 GMT  
		Size: 11.9 MB (11874427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f129194801f525708d719c2e3964e4f4834639e75f5878b8987078e959eca897`  
		Last Modified: Mon, 12 Sep 2016 21:01:53 GMT  
		Size: 486.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `zookeeper:3.4.9`

```console
$ docker pull zookeeper@sha256:12458234bb9f01336df718b7470cabaf5c357052cbcb91f8e80be07635994464
```

-	Platforms:
	-	linux; amd64

### `zookeeper:3.4.9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.9 MB (65850293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1696ace7ccbaa97832cb2f213222ceb4976a5b1aaf714c4507b6d622fdb2655`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 12 Sep 2016 21:01:15 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Mon, 12 Sep 2016 21:01:18 GMT
RUN apk add --no-cache     bash     su-exec
# Mon, 12 Sep 2016 21:01:18 GMT
ENV ZOO_USER=zookeeper
# Mon, 12 Sep 2016 21:01:18 GMT
ENV ZOO_CONF_DIR=/conf
# Mon, 12 Sep 2016 21:01:19 GMT
ENV ZOO_DATA_DIR=/data
# Mon, 12 Sep 2016 21:01:19 GMT
ENV ZOO_DATA_LOG_DIR=/datalog
# Mon, 12 Sep 2016 21:01:20 GMT
RUN set -x     && adduser -D "$ZOO_USER"     && mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"     && chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Mon, 12 Sep 2016 21:01:37 GMT
ARG GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
# Mon, 12 Sep 2016 21:01:37 GMT
ARG DISTRO_NAME=zookeeper-3.4.9
# Mon, 12 Sep 2016 21:01:44 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.9 GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Mon, 12 Sep 2016 21:01:44 GMT
WORKDIR /zookeeper-3.4.9
# Mon, 12 Sep 2016 21:01:44 GMT
VOLUME [/data /datalog]
# Mon, 12 Sep 2016 21:01:44 GMT
ENV ZOO_PORT=2181
# Mon, 12 Sep 2016 21:01:45 GMT
EXPOSE 2181/tcp
# Mon, 12 Sep 2016 21:01:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.9/bin
# Mon, 12 Sep 2016 21:01:45 GMT
ENV ZOOCFGDIR=/conf
# Mon, 12 Sep 2016 21:01:46 GMT
COPY file:ff4944992015e2ab099e02d1cfcb3af5bbfb0170bdd16e6c6377495e4d957747 in / 
# Mon, 12 Sep 2016 21:01:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 12 Sep 2016 21:01:46 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72391ae24f6b2f51646b2027820046edc3e06c6aad27882cb5158e4782a88b5`  
		Last Modified: Mon, 12 Sep 2016 21:01:53 GMT  
		Size: 1.1 MB (1100334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40ab409b6b344613b0fc0d21a3f3cad4f66da65bb5d92525a08ad16f8e69a3ca`  
		Last Modified: Mon, 12 Sep 2016 21:01:52 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4bb8183b85d438d06783a56ea4c920d5b962b071ae652819c3b64356a374bac`  
		Last Modified: Mon, 12 Sep 2016 21:02:18 GMT  
		Size: 22.8 MB (22790058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0600755f147013fb2e23c7f60ab8256a1d9783436d7cd7b732e6fa0c36eb9406`  
		Last Modified: Mon, 12 Sep 2016 21:02:14 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `zookeeper:3.4`

**does not exist** (yet?)

## `zookeeper:latest`

```console
$ docker pull zookeeper@sha256:12458234bb9f01336df718b7470cabaf5c357052cbcb91f8e80be07635994464
```

-	Platforms:
	-	linux; amd64

### `zookeeper:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.9 MB (65850293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1696ace7ccbaa97832cb2f213222ceb4976a5b1aaf714c4507b6d622fdb2655`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 30 Aug 2016 19:56:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:56:05 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:56:10 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 12 Sep 2016 21:01:15 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Mon, 12 Sep 2016 21:01:18 GMT
RUN apk add --no-cache     bash     su-exec
# Mon, 12 Sep 2016 21:01:18 GMT
ENV ZOO_USER=zookeeper
# Mon, 12 Sep 2016 21:01:18 GMT
ENV ZOO_CONF_DIR=/conf
# Mon, 12 Sep 2016 21:01:19 GMT
ENV ZOO_DATA_DIR=/data
# Mon, 12 Sep 2016 21:01:19 GMT
ENV ZOO_DATA_LOG_DIR=/datalog
# Mon, 12 Sep 2016 21:01:20 GMT
RUN set -x     && adduser -D "$ZOO_USER"     && mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"     && chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Mon, 12 Sep 2016 21:01:37 GMT
ARG GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
# Mon, 12 Sep 2016 21:01:37 GMT
ARG DISTRO_NAME=zookeeper-3.4.9
# Mon, 12 Sep 2016 21:01:44 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.9 GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Mon, 12 Sep 2016 21:01:44 GMT
WORKDIR /zookeeper-3.4.9
# Mon, 12 Sep 2016 21:01:44 GMT
VOLUME [/data /datalog]
# Mon, 12 Sep 2016 21:01:44 GMT
ENV ZOO_PORT=2181
# Mon, 12 Sep 2016 21:01:45 GMT
EXPOSE 2181/tcp
# Mon, 12 Sep 2016 21:01:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.9/bin
# Mon, 12 Sep 2016 21:01:45 GMT
ENV ZOOCFGDIR=/conf
# Mon, 12 Sep 2016 21:01:46 GMT
COPY file:ff4944992015e2ab099e02d1cfcb3af5bbfb0170bdd16e6c6377495e4d957747 in / 
# Mon, 12 Sep 2016 21:01:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 12 Sep 2016 21:01:46 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc427bd93e958b2f8b2cadc810c692edbba6856a8ff08434066b43be35ec6b68`  
		Last Modified: Tue, 30 Aug 2016 21:11:37 GMT  
		Size: 39.6 MB (39647584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72391ae24f6b2f51646b2027820046edc3e06c6aad27882cb5158e4782a88b5`  
		Last Modified: Mon, 12 Sep 2016 21:01:53 GMT  
		Size: 1.1 MB (1100334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40ab409b6b344613b0fc0d21a3f3cad4f66da65bb5d92525a08ad16f8e69a3ca`  
		Last Modified: Mon, 12 Sep 2016 21:01:52 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4bb8183b85d438d06783a56ea4c920d5b962b071ae652819c3b64356a374bac`  
		Last Modified: Mon, 12 Sep 2016 21:02:18 GMT  
		Size: 22.8 MB (22790058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0600755f147013fb2e23c7f60ab8256a1d9783436d7cd7b732e6fa0c36eb9406`  
		Last Modified: Mon, 12 Sep 2016 21:02:14 GMT  
		Size: 487.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
