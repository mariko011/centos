## `zookeeper:latest`

```console
$ docker pull zookeeper@sha256:5a36d0a998af93e342c213d487ee36d4924aed62229aaf78eaf352a128f61f17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `zookeeper:latest` - linux; amd64

```console
$ docker pull zookeeper@sha256:a168b627c115176ce5c8cd1f5f69c3bc94152a7d38af0254e9635a79b4bd25ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.9 MB (92875744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:996317e527e442223b4f7aebbcacf4e6c3c62e28271e6e53b1967f6bef156aa3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:25:21 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 01:25:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 01:29:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 26 Oct 2017 01:29:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 01:29:10 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 01:29:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 03:42:34 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Thu, 26 Oct 2017 03:42:38 GMT
RUN apk add --no-cache     bash     su-exec
# Thu, 26 Oct 2017 03:42:38 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Thu, 26 Oct 2017 03:42:39 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Thu, 26 Oct 2017 03:43:02 GMT
ARG GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
# Thu, 26 Oct 2017 03:43:02 GMT
ARG DISTRO_NAME=zookeeper-3.4.10
# Thu, 26 Oct 2017 03:43:11 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.10 GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 26 Oct 2017 03:43:12 GMT
WORKDIR /zookeeper-3.4.10
# Thu, 26 Oct 2017 03:43:12 GMT
VOLUME [/data /datalog]
# Thu, 26 Oct 2017 03:43:12 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Thu, 26 Oct 2017 03:43:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.10/bin ZOOCFGDIR=/conf
# Thu, 26 Oct 2017 03:43:13 GMT
COPY file:dab1f2991c403145ae0277be86810aa6ab4838363663db6dfbedba997dfd4bcf in / 
# Thu, 26 Oct 2017 03:43:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 26 Oct 2017 03:43:13 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2296e775ba08de9d41d94164ff4d14bea2c4ad0074b0e395bc6ee35ff0534a5f`  
		Last Modified: Thu, 26 Oct 2017 01:29:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2ba284c7daceb9db58462ea8d603854b36c4718cbf19d9959c72ae5393664e`  
		Last Modified: Thu, 26 Oct 2017 01:32:49 GMT  
		Size: 54.3 MB (54286181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ddbb72d28c80d87c7eb84a8da3bb522b19707fafd931d0aaf9f604c15d65c0b`  
		Last Modified: Thu, 26 Oct 2017 03:43:59 GMT  
		Size: 1.1 MB (1143554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abbf314e12223dfd363f7f750759988aab5a41cb9ab2790fea669b50b09c2ba9`  
		Last Modified: Thu, 26 Oct 2017 03:43:58 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a7203e2c6ec84a7b771364d7c1160222cb80e3f6897b85e92c160014d2047f`  
		Last Modified: Thu, 26 Oct 2017 03:44:30 GMT  
		Size: 35.5 MB (35452499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0be6f59e22410aafb99378564eadda4be26c0f12d825b8c22bef4fb16f92fa4c`  
		Last Modified: Thu, 26 Oct 2017 03:44:26 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
