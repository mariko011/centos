## `zookeeper:latest`

```console
$ docker pull zookeeper@sha256:00f29ce495ee4e0a17324d35c122fef200094daa8c696af0fbf6c809dae188f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `zookeeper:latest` - linux; amd64

```console
$ docker pull zookeeper@sha256:0b4671190cf965d62826029f59b01435b51877187e6eef24a02f29d0d7f213a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 MB (94494465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82f0456cc2be4b667cc5699aff053926c21d00f22790375f737ec8b865975265`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:10:23 GMT
ENV LANG=C.UTF-8
# Fri, 01 Dec 2017 22:10:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 01 Dec 2017 22:11:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 01 Dec 2017 22:11:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 01 Dec 2017 22:11:39 GMT
ENV JAVA_VERSION=8u131
# Fri, 01 Dec 2017 22:11:40 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Fri, 01 Dec 2017 22:11:46 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 01 Dec 2017 23:23:16 GMT
RUN apk add --no-cache     bash     su-exec
# Fri, 01 Dec 2017 23:23:16 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Fri, 01 Dec 2017 23:23:17 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 01 Dec 2017 23:23:17 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Fri, 01 Dec 2017 23:24:20 GMT
ARG DISTRO_NAME=zookeeper-3.4.11
# Fri, 01 Dec 2017 23:24:29 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.11 GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 01 Dec 2017 23:24:33 GMT
WORKDIR /zookeeper-3.4.11
# Fri, 01 Dec 2017 23:24:33 GMT
VOLUME [/data /datalog]
# Fri, 01 Dec 2017 23:24:33 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 01 Dec 2017 23:24:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.11/bin ZOOCFGDIR=/conf
# Fri, 01 Dec 2017 23:24:34 GMT
COPY file:5cb6c695778a88d60b35a329e20ff9cb9e46290c62beb27a175e94e807db9a1a in / 
# Fri, 01 Dec 2017 23:24:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 01 Dec 2017 23:24:34 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b3e089ad5bb56a471216d30899b22b6cc9887cb8a4f49e5ada714fd21a8c8e`  
		Last Modified: Fri, 01 Dec 2017 22:12:17 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5d0518dcc562a8559548d9d491d56cd22e51ebfdb1e1a772648b3252a3af65`  
		Last Modified: Fri, 01 Dec 2017 22:14:45 GMT  
		Size: 54.3 MB (54286409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629e3a81306cd1cc442344aee3e974b8e6b51f92b6b074a135bf14b7d6d49391`  
		Last Modified: Fri, 01 Dec 2017 23:25:54 GMT  
		Size: 1.1 MB (1143607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7e389d11f252c3fb0c8d9106ae5efba06d94add5db3b31ff4be0018db75000`  
		Last Modified: Fri, 01 Dec 2017 23:25:52 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d20afe11bce4fd98ffeefda7b71c34ae23fb3c2cd3fd6aae12645c3c849216ca`  
		Last Modified: Fri, 01 Dec 2017 23:26:17 GMT  
		Size: 37.1 MB (37070863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f22c8cf1f2e080114f756eba8a8328e7d61477b1e21de20367efc426b273b7`  
		Last Modified: Fri, 01 Dec 2017 23:26:14 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:latest` - linux; arm variant v6

```console
$ docker pull zookeeper@sha256:5c73e112869ee96ad3a44b7d9e592f3e39c15d6c05b19a3ac21bb8b8f6be2d79
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.0 MB (92033486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19bfc9cf4690082dfb8b51eb9abe3163bc67454c3d47f924f9fd9882fab765ee`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:30:25 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 05:30:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 05:31:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 26 Oct 2017 05:31:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 05:31:26 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 05:31:26 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 05:31:33 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 03 Nov 2017 15:13:26 GMT
RUN apk add --no-cache     bash     su-exec
# Thu, 09 Nov 2017 19:32:23 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Thu, 09 Nov 2017 19:32:24 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Thu, 09 Nov 2017 19:32:24 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Mon, 13 Nov 2017 19:32:25 GMT
ARG DISTRO_NAME=zookeeper-3.4.11
# Mon, 13 Nov 2017 19:32:39 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.11 GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Mon, 13 Nov 2017 19:32:39 GMT
WORKDIR /zookeeper-3.4.11
# Mon, 13 Nov 2017 19:32:39 GMT
VOLUME [/data /datalog]
# Mon, 13 Nov 2017 19:32:40 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Mon, 13 Nov 2017 19:32:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.11/bin ZOOCFGDIR=/conf
# Mon, 13 Nov 2017 19:32:40 GMT
COPY file:5cb6c695778a88d60b35a329e20ff9cb9e46290c62beb27a175e94e807db9a1a in / 
# Mon, 13 Nov 2017 19:32:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 13 Nov 2017 19:32:40 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40582f0dca4419edfce4da23d0e09feee9846320b70797bd9268a2e515e04853`  
		Last Modified: Thu, 26 Oct 2017 05:31:40 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebae518063fe753d3716080b625ab457b0771a79ba95989618376a7e709940d5`  
		Last Modified: Thu, 26 Oct 2017 05:32:58 GMT  
		Size: 51.9 MB (51889415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f831b7bf8592c99e04238c972373cb2349244b7c65f2a41a24cd560c89ff1c`  
		Last Modified: Fri, 03 Nov 2017 15:14:21 GMT  
		Size: 1.1 MB (1105760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:441aa1459b9d015b1e0351396d61be8e10a09206e1e10051f799502d53ca7155`  
		Last Modified: Thu, 09 Nov 2017 19:33:05 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c802cb9d419d0b3a7d64fe0533d139ec1e9c932b56a1c8807f3566ad45241b`  
		Last Modified: Mon, 13 Nov 2017 19:32:59 GMT  
		Size: 37.1 MB (37069997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93cd42bb5376f31fe87464f6699d250795d6ae69e306f1ef39f446d467675ddb`  
		Last Modified: Mon, 13 Nov 2017 19:32:52 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:latest` - linux; arm64 variant v8

```console
$ docker pull zookeeper@sha256:5b770fe7dd754614fa61959b5f259b9ab8fcbb0a32cb79f11309515308b6a057
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.1 MB (93086683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77f549c022f72d93b9203d03de154008e51a2164519623492b7d36cf7ab18a0d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 10:01:33 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 10:01:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 10:03:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 26 Oct 2017 10:03:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 10:03:50 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 10:03:50 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 10:04:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 03 Nov 2017 15:15:37 GMT
RUN apk add --no-cache     bash     su-exec
# Thu, 09 Nov 2017 17:56:46 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Thu, 09 Nov 2017 17:56:48 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Thu, 09 Nov 2017 17:56:48 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Mon, 13 Nov 2017 17:56:52 GMT
ARG DISTRO_NAME=zookeeper-3.4.11
# Mon, 13 Nov 2017 17:57:45 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.11 GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Mon, 13 Nov 2017 17:57:46 GMT
WORKDIR /zookeeper-3.4.11
# Mon, 13 Nov 2017 17:57:46 GMT
VOLUME [/data /datalog]
# Mon, 13 Nov 2017 17:57:47 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Mon, 13 Nov 2017 17:57:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.11/bin ZOOCFGDIR=/conf
# Mon, 13 Nov 2017 17:57:49 GMT
COPY file:5cb6c695778a88d60b35a329e20ff9cb9e46290c62beb27a175e94e807db9a1a in / 
# Mon, 13 Nov 2017 17:57:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 13 Nov 2017 17:57:50 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d0cecd57b48d9b31c0a30711e97897c59667bf85356783b80cab06edc90dba8`  
		Last Modified: Thu, 26 Oct 2017 10:04:48 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8896e0e47d6c73baf3f79e6a8240cfe8ffa837c430e01ff007fdc54bbddb5f2c`  
		Last Modified: Thu, 26 Oct 2017 10:11:01 GMT  
		Size: 53.0 MB (53007449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43ab5c434c35992ca701e9bcc1ee707c646cc6c66a05627675cbb1ee758b554`  
		Last Modified: Fri, 03 Nov 2017 15:18:03 GMT  
		Size: 1.1 MB (1092222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4785dc024841e1e3339f6de31e315419c3aeb5efb5a94ba997b549ad5f332bea`  
		Last Modified: Thu, 09 Nov 2017 17:59:09 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed8dd39c74c753a9f131044f40883e26a03b1423866b228cd1c8fc4be681299`  
		Last Modified: Mon, 13 Nov 2017 17:58:37 GMT  
		Size: 37.1 MB (37070002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce750c757ba92d17725b6ba051ae810f2ec0ad334180816e0b0f122b3b9398d0`  
		Last Modified: Mon, 13 Nov 2017 17:58:15 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:latest` - linux; 386

```console
$ docker pull zookeeper@sha256:ba5c651bfc6da7e2a567254f368a5a9bbcb4abfe15ac3a4d07d333249d8e26f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.2 MB (95231026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cb1c8c8387333e72f749554c0d589061e18cb099fff51dbeb070b0e41f3176d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 09:54:11 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 09:54:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 09:55:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 26 Oct 2017 09:55:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 09:55:56 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 09:55:56 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 09:56:02 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 03 Nov 2017 14:56:07 GMT
RUN apk add --no-cache     bash     su-exec
# Thu, 09 Nov 2017 13:45:24 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Thu, 09 Nov 2017 13:45:25 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Thu, 09 Nov 2017 13:45:25 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Tue, 14 Nov 2017 13:49:11 GMT
ARG DISTRO_NAME=zookeeper-3.4.11
# Tue, 14 Nov 2017 13:49:21 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.11 GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Tue, 14 Nov 2017 13:49:21 GMT
WORKDIR /zookeeper-3.4.11
# Tue, 14 Nov 2017 13:49:21 GMT
VOLUME [/data /datalog]
# Tue, 14 Nov 2017 13:49:22 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Tue, 14 Nov 2017 13:49:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.11/bin ZOOCFGDIR=/conf
# Tue, 14 Nov 2017 13:49:22 GMT
COPY file:5cb6c695778a88d60b35a329e20ff9cb9e46290c62beb27a175e94e807db9a1a in / 
# Tue, 14 Nov 2017 13:49:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 Nov 2017 13:49:22 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79582b2efa7c03e06d03b856e3a563a60f80b8299ace0abe38cd367a7b85d85`  
		Last Modified: Thu, 26 Oct 2017 10:00:26 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b157e5bb045604845fea01d8e60c8ff9a3de14f406cd7be2b6b4e4f68a48598a`  
		Last Modified: Thu, 26 Oct 2017 10:07:43 GMT  
		Size: 54.9 MB (54922489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5522fd2e9a4e3d9b47c9a7d8a8ce9189aa43b08c1fe08584a6580583871850b`  
		Last Modified: Fri, 03 Nov 2017 15:13:28 GMT  
		Size: 1.2 MB (1190567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b84143408e0af68e7f6708d23bfe691b5b486c47c9d8e138626b8ded25f48dec`  
		Last Modified: Thu, 09 Nov 2017 13:46:38 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ec87dd0b39c842a6193349a420edf56b92f4152ec962c69e3009ac1fc5ecc1`  
		Last Modified: Tue, 14 Nov 2017 13:49:37 GMT  
		Size: 37.1 MB (37070112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c588fc04d13314d1e87f1e70af7e6797e6849a4116e33d6934250eba10891b`  
		Last Modified: Tue, 14 Nov 2017 13:49:34 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:latest` - linux; ppc64le

```console
$ docker pull zookeeper@sha256:46037c953bc42b3c69bf41ce9c478a814ef16ab38c3e2b7c74fda7292f30e2e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.8 MB (93784883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8e80f1f4c5ec2052102c3b4e6820d57879308b6e878e75ef95964b4367a4473`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 10:48:04 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 10:48:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 10:51:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 26 Oct 2017 10:51:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 10:51:18 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 10:51:19 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 10:51:29 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 03 Nov 2017 14:47:15 GMT
RUN apk add --no-cache     bash     su-exec
# Thu, 16 Nov 2017 03:03:10 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Thu, 16 Nov 2017 03:03:14 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Thu, 16 Nov 2017 03:03:15 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Thu, 16 Nov 2017 03:03:47 GMT
ARG DISTRO_NAME=zookeeper-3.4.11
# Thu, 16 Nov 2017 03:04:00 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.11 GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 16 Nov 2017 03:04:01 GMT
WORKDIR /zookeeper-3.4.11
# Thu, 16 Nov 2017 03:04:03 GMT
VOLUME [/data /datalog]
# Thu, 16 Nov 2017 03:04:05 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Thu, 16 Nov 2017 03:04:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.11/bin ZOOCFGDIR=/conf
# Thu, 16 Nov 2017 03:04:13 GMT
COPY file:5cb6c695778a88d60b35a329e20ff9cb9e46290c62beb27a175e94e807db9a1a in / 
# Thu, 16 Nov 2017 03:04:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 16 Nov 2017 03:04:18 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a3fc48b3cd38c8d1f053eaca17b2b0ef79aaeb2586d71eff1cac74f33a8ab1c`  
		Last Modified: Thu, 26 Oct 2017 10:52:03 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb215b7b47969339ffefe3eff54b39e1c63f89da7cd28f8fccc140f26922a2a7`  
		Last Modified: Thu, 26 Oct 2017 10:54:01 GMT  
		Size: 53.6 MB (53568484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa756762bbf3d0ae9da0104fb3b70459d6ca4b5c76406ddaa8d18915fa96df56`  
		Last Modified: Fri, 03 Nov 2017 15:13:37 GMT  
		Size: 1.1 MB (1134676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:939d1ec34695b45d2b92cdacad08ebec179b86313bbecc580880df705936aa96`  
		Last Modified: Thu, 16 Nov 2017 03:04:30 GMT  
		Size: 1.4 KB (1367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c962aaae7674d79fb257a812c6fd1c24122ded0548df43769f66a06f5820927d`  
		Last Modified: Thu, 16 Nov 2017 03:04:54 GMT  
		Size: 37.1 MB (37070816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf4f0e3ffbdb33f0bdfa61ca0dd5a55e01b1ab0885beb19961c273a4cbe60b9`  
		Last Modified: Thu, 16 Nov 2017 03:04:47 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:latest` - linux; s390x

```console
$ docker pull zookeeper@sha256:818d882c9bdac027f50d8c8bd265037d08c5219aaea04244caa8143ed2d23040
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.5 MB (93475739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2912d133576b3b1c66f8a757193b8c99baf17cb9d9b67148aa43f798d70816a8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 16:54:06 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 16:54:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 16:55:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 26 Oct 2017 16:55:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 16:55:48 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 16:55:48 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 16:55:53 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 03 Nov 2017 14:43:54 GMT
RUN apk add --no-cache     bash     su-exec
# Thu, 09 Nov 2017 09:10:27 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Thu, 09 Nov 2017 09:10:28 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Thu, 09 Nov 2017 09:10:28 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Tue, 14 Nov 2017 09:10:35 GMT
ARG DISTRO_NAME=zookeeper-3.4.11
# Tue, 14 Nov 2017 09:11:06 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.11 GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Tue, 14 Nov 2017 09:11:06 GMT
WORKDIR /zookeeper-3.4.11
# Tue, 14 Nov 2017 09:11:06 GMT
VOLUME [/data /datalog]
# Tue, 14 Nov 2017 09:11:06 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Tue, 14 Nov 2017 09:11:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.11/bin ZOOCFGDIR=/conf
# Tue, 14 Nov 2017 09:11:07 GMT
COPY file:5cb6c695778a88d60b35a329e20ff9cb9e46290c62beb27a175e94e807db9a1a in / 
# Tue, 14 Nov 2017 09:11:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 Nov 2017 09:11:07 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b16db6a3dbf8986a149c7450969f18d66990974e5826930cb148d70dfdf01a1`  
		Last Modified: Thu, 26 Oct 2017 16:56:22 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b038a50126a2efb0007fb8c02ff444a6449bb3c507ade4730d70bddd905131e`  
		Last Modified: Thu, 26 Oct 2017 16:57:47 GMT  
		Size: 53.1 MB (53141446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9467d28e3b5f4f1d36225dac5b4658aa3402f944d5ab044670025fbbe90fb5c9`  
		Last Modified: Fri, 03 Nov 2017 15:13:23 GMT  
		Size: 1.2 MB (1195399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c2b39e1a9cc724ff497ee13acbfc7fab23bb10f995af52ab5938540b0605863`  
		Last Modified: Thu, 09 Nov 2017 09:11:38 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5eca3406b1089126952bec645fe4238bac6deb8c54ef898e2e3081b3345cddc`  
		Last Modified: Tue, 14 Nov 2017 09:11:25 GMT  
		Size: 37.1 MB (37071176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327ad71d4f1d3efa35064784425c6d7f1bbd6b62d6cebe6a1d25660882a0b84f`  
		Last Modified: Tue, 14 Nov 2017 09:11:22 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
