## `zookeeper:latest`

```console
$ docker pull zookeeper@sha256:3897c0a5b12375a63d91720bf8425531c580f081bdfde8b4a7b8b77e04359830
```

-	Platforms:
	-	linux; amd64

### `zookeeper:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.9 MB (65852786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f4eeb190c6497dc6e01cc9a74d9dc814428faf9411cd1cc8d2e46dd4f9391e1`
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
# Tue, 18 Oct 2016 19:29:20 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2
# Tue, 18 Oct 2016 19:29:21 GMT
RUN set -x     && adduser -D "$ZOO_USER"     && mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"     && chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Tue, 18 Oct 2016 19:29:40 GMT
ARG GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
# Tue, 18 Oct 2016 19:29:40 GMT
ARG DISTRO_NAME=zookeeper-3.4.9
# Tue, 18 Oct 2016 19:29:46 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.9 GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Tue, 18 Oct 2016 19:29:49 GMT
WORKDIR /zookeeper-3.4.9
# Tue, 18 Oct 2016 19:29:50 GMT
VOLUME [/data /datalog]
# Tue, 18 Oct 2016 19:29:50 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Tue, 18 Oct 2016 19:29:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.9/bin ZOOCFGDIR=/conf
# Tue, 18 Oct 2016 19:29:51 GMT
COPY file:a44a253687b69c8f12fac800e2f52c3cc758e785c8004013379af200b5f27bea in / 
# Tue, 18 Oct 2016 19:29:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Oct 2016 19:29:51 GMT
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
	-	`sha256:9afdcad670a9fefc8da6824fd5067172521c9d99b52884c655eadd3878a1f12f`  
		Last Modified: Tue, 18 Oct 2016 19:30:01 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9546be1495d5c9d3abc30bc77896efd3b10ab013aee0582ef586437cd678b247`  
		Last Modified: Tue, 18 Oct 2016 19:30:34 GMT  
		Size: 22.8 MB (22790036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7174d4acf75821b3387f0b678f72d9882ebb87102011b5e529f9120e4a567c9`  
		Last Modified: Tue, 18 Oct 2016 19:30:29 GMT  
		Size: 514.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
