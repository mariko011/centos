## `zookeeper:latest`

```console
$ docker pull zookeeper@sha256:b7d3eb27c1841230bcfed59696f881597a97a5746fa5ae79d7f1eda7d2d9fcce
```

-	Platforms:
	-	linux; amd64

### `zookeeper:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79612229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b83d9104a4c4ccf76433756ecdf4df4355c52f14a2ad109e2aae15444b63339`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 07 Mar 2017 01:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 20:37:09 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Tue, 07 Mar 2017 21:10:56 GMT
RUN apk add --no-cache     bash     su-exec
# Tue, 07 Mar 2017 21:10:57 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2
# Tue, 07 Mar 2017 21:10:58 GMT
RUN set -x     && adduser -D "$ZOO_USER"     && mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"     && chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Tue, 07 Mar 2017 21:11:11 GMT
ARG GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
# Tue, 07 Mar 2017 21:11:12 GMT
ARG DISTRO_NAME=zookeeper-3.4.9
# Tue, 07 Mar 2017 21:11:19 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.9 GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Tue, 07 Mar 2017 21:11:19 GMT
WORKDIR /zookeeper-3.4.9
# Tue, 07 Mar 2017 21:11:20 GMT
VOLUME [/data /datalog]
# Tue, 07 Mar 2017 21:11:21 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Tue, 07 Mar 2017 21:11:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.9/bin ZOOCFGDIR=/conf
# Tue, 07 Mar 2017 21:11:22 GMT
COPY file:a44a253687b69c8f12fac800e2f52c3cc758e785c8004013379af200b5f27bea in / 
# Tue, 07 Mar 2017 21:11:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 07 Mar 2017 21:11:23 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e619d348278f1e8660192734bff496a6c3e05aab6bef025e843e7413a7c9e3`  
		Last Modified: Tue, 07 Mar 2017 01:15:49 GMT  
		Size: 53.8 MB (53811092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51637865a92aabae5ee4bbd706160fd078425092e26534c30eb9d712fa79f850`  
		Last Modified: Tue, 07 Mar 2017 21:11:45 GMT  
		Size: 1.1 MB (1095212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82113df3695a27e6c4c7f551c7b446eeb215c9270e7ab43b00524ce0bdc67f86`  
		Last Modified: Tue, 07 Mar 2017 21:11:44 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c110056cd4f6cca00198221d3141ed7a08c29ba475d3080fe19ed9cfeece5a3`  
		Last Modified: Tue, 07 Mar 2017 21:12:29 GMT  
		Size: 22.8 MB (22798616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee14847b1fad97876ef9791d5e20cd5ee153856379318d0b4f9f2e18bc2a6724`  
		Last Modified: Tue, 07 Mar 2017 21:12:26 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
