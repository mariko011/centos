<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `zookeeper`

-	[`zookeeper:3.3`](#zookeeper33)
-	[`zookeeper:3.3.6`](#zookeeper336)
-	[`zookeeper:3.4`](#zookeeper34)
-	[`zookeeper:3.4.10`](#zookeeper3410)
-	[`zookeeper:3.5`](#zookeeper35)
-	[`zookeeper:3.5.3-beta`](#zookeeper353-beta)
-	[`zookeeper:latest`](#zookeeperlatest)

## `zookeeper:3.3`

```console
$ docker pull zookeeper@sha256:a49af8ebdb5a2c739e9c5ece1aef0dbff66eb4e87a9af82649e86a44465b13cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `zookeeper:3.3` - linux; amd64

```console
$ docker pull zookeeper@sha256:6ffc1727ce750fd0fdeb5b68ec1fe848363b2c75fe3a2106b1a64481baa908b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.6 MB (69611700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a47c4ce0b89edcd63ca2d9ca3235e485536f4e6b486e9d4f6be2682a70126d9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 04 Nov 2017 05:50:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_VERSION=8u131
# Sat, 04 Nov 2017 05:50:53 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 04 Nov 2017 05:51:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 17:44:36 GMT
RUN apk add --no-cache     bash     su-exec
# Thu, 09 Nov 2017 03:40:19 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Thu, 09 Nov 2017 03:40:20 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Thu, 09 Nov 2017 03:40:20 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Thu, 09 Nov 2017 03:40:20 GMT
ARG DISTRO_NAME=zookeeper-3.3.6
# Thu, 09 Nov 2017 03:40:53 GMT
# ARGS: DISTRO_NAME=zookeeper-3.3.6 GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 09 Nov 2017 03:40:53 GMT
WORKDIR /zookeeper-3.3.6
# Thu, 09 Nov 2017 03:40:53 GMT
VOLUME [/data /datalog]
# Thu, 09 Nov 2017 03:40:53 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Thu, 09 Nov 2017 03:40:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.3.6/bin ZOOCFGDIR=/conf
# Thu, 09 Nov 2017 03:40:54 GMT
COPY file:5cb6c695778a88d60b35a329e20ff9cb9e46290c62beb27a175e94e807db9a1a in / 
# Thu, 09 Nov 2017 03:40:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 Nov 2017 03:40:54 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b27fd892ecb54137910751102dfb835b185276f359a85b2ba953ce4436a4773`  
		Last Modified: Sat, 04 Nov 2017 06:04:34 GMT  
		Size: 54.3 MB (54286387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696ccdcd9ed85e680ee250b8afcfeda756c616786100900237e05fa971a6684`  
		Last Modified: Sat, 04 Nov 2017 17:45:35 GMT  
		Size: 1.1 MB (1143577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a12f6b1c402361e01ac94a5029857585ba6ae745f7fc59ec8887e8f4ab84a9ca`  
		Last Modified: Thu, 09 Nov 2017 03:41:35 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab36ba0dddade06242b893cba42ed0d51088a134e1e2ac5c4f18143afd3bce7`  
		Last Modified: Thu, 09 Nov 2017 03:41:36 GMT  
		Size: 12.2 MB (12188223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3700252d908e3fbf6c2efd7b598815a85df77910f672259df20bbd89c32bcd`  
		Last Modified: Thu, 09 Nov 2017 03:41:35 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.3` - linux; arm variant v6

```console
$ docker pull zookeeper@sha256:d53c67d6dfb432b3a6d21be25bbd1c912782f514ac8bc41700f4da705501f5d6
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.2 MB (67151876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0fff5a8038cb2a5ac2d5316e8c9887f0878df68f6c339d125fedbb64a1b79c1`
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
# Fri, 03 Nov 2017 15:12:30 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Fri, 03 Nov 2017 15:12:36 GMT
RUN apk add --no-cache     bash     su-exec
# Fri, 03 Nov 2017 15:12:36 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Fri, 03 Nov 2017 15:12:37 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Nov 2017 15:12:37 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Fri, 03 Nov 2017 15:12:37 GMT
ARG DISTRO_NAME=zookeeper-3.3.6
# Fri, 03 Nov 2017 15:12:52 GMT
# ARGS: DISTRO_NAME=zookeeper-3.3.6 GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 03 Nov 2017 15:12:53 GMT
WORKDIR /zookeeper-3.3.6
# Fri, 03 Nov 2017 15:12:53 GMT
VOLUME [/data /datalog]
# Fri, 03 Nov 2017 15:12:53 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Nov 2017 15:12:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.3.6/bin ZOOCFGDIR=/conf
# Fri, 03 Nov 2017 15:12:54 GMT
COPY file:dab1f2991c403145ae0277be86810aa6ab4838363663db6dfbedba997dfd4bcf in / 
# Fri, 03 Nov 2017 15:12:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 15:12:54 GMT
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
	-	`sha256:75d9852f6a63df48294a7ca3894097f932f3055b54d7a22cd0f9364d1ff4e5eb`  
		Last Modified: Fri, 03 Nov 2017 15:13:53 GMT  
		Size: 1.1 MB (1105776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26119565cb519c52b0fd89f90484878c8476db234880db7dc8ba959b5d48c50`  
		Last Modified: Fri, 03 Nov 2017 15:13:52 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1bdca13b7cb261e21f75e8150f22044ff667bad6fbebb2684fcfa1274cf9a25`  
		Last Modified: Fri, 03 Nov 2017 15:13:55 GMT  
		Size: 12.2 MB (12188371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f237864aa8a984d190009b10fefdd0c182efd63d3be095511f54cca1e7596fe3`  
		Last Modified: Fri, 03 Nov 2017 15:13:52 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.3` - linux; arm64 variant v8

```console
$ docker pull zookeeper@sha256:98eef8537d50c4ae679e7c5480f74e190b2e066369fdadda046b353f76cb382d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.2 MB (68204741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f1d39a51f59d74cecba30f6bdbc79d3fb5978b31d7784de034327b3e7ace07a`
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
# Fri, 03 Nov 2017 15:13:02 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Fri, 03 Nov 2017 15:13:10 GMT
RUN apk add --no-cache     bash     su-exec
# Fri, 03 Nov 2017 15:13:10 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Fri, 03 Nov 2017 15:13:12 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Nov 2017 15:13:13 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Fri, 03 Nov 2017 15:13:13 GMT
ARG DISTRO_NAME=zookeeper-3.3.6
# Fri, 03 Nov 2017 15:13:31 GMT
# ARGS: DISTRO_NAME=zookeeper-3.3.6 GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 03 Nov 2017 15:13:32 GMT
WORKDIR /zookeeper-3.3.6
# Fri, 03 Nov 2017 15:13:33 GMT
VOLUME [/data /datalog]
# Fri, 03 Nov 2017 15:13:33 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Nov 2017 15:13:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.3.6/bin ZOOCFGDIR=/conf
# Fri, 03 Nov 2017 15:13:35 GMT
COPY file:dab1f2991c403145ae0277be86810aa6ab4838363663db6dfbedba997dfd4bcf in / 
# Fri, 03 Nov 2017 15:13:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 15:13:36 GMT
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
	-	`sha256:89f59397c7deaa19c431c40fc643d5c8fd9607297a245169d3fc775338b076df`  
		Last Modified: Fri, 03 Nov 2017 15:16:27 GMT  
		Size: 1.1 MB (1092219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a77f45de1c838a46b20e1574064a6c291238a234b6ba03fbb98d734fad85b32`  
		Last Modified: Fri, 03 Nov 2017 15:16:27 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6742cb21a913198400e5e3adb0355facd6c76264481a725d27a3a404f34d2650`  
		Last Modified: Fri, 03 Nov 2017 15:16:30 GMT  
		Size: 12.2 MB (12188069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1693b23231eac652b2a9a3f849a694c5bc3f629dbbeffe21a9647fab98df9f76`  
		Last Modified: Fri, 03 Nov 2017 15:13:59 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.3` - linux; 386

```console
$ docker pull zookeeper@sha256:bf2c75703f9e36bfdcff6f0f06fa9431f135950c170687423bd2f90098633b1c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.3 MB (70349291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3cc0d0d9e85e4aa35d63bbee134ad8b266d89f3fc14bc5e72716b48d6b0536e`
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
# Fri, 03 Nov 2017 14:54:38 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Fri, 03 Nov 2017 14:54:46 GMT
RUN apk add --no-cache     bash     su-exec
# Fri, 03 Nov 2017 14:54:46 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Fri, 03 Nov 2017 14:54:47 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Nov 2017 14:54:47 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Fri, 03 Nov 2017 14:54:47 GMT
ARG DISTRO_NAME=zookeeper-3.3.6
# Fri, 03 Nov 2017 14:55:04 GMT
# ARGS: DISTRO_NAME=zookeeper-3.3.6 GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 03 Nov 2017 14:55:04 GMT
WORKDIR /zookeeper-3.3.6
# Fri, 03 Nov 2017 14:55:04 GMT
VOLUME [/data /datalog]
# Fri, 03 Nov 2017 14:55:04 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Nov 2017 14:55:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.3.6/bin ZOOCFGDIR=/conf
# Fri, 03 Nov 2017 14:55:05 GMT
COPY file:dab1f2991c403145ae0277be86810aa6ab4838363663db6dfbedba997dfd4bcf in / 
# Fri, 03 Nov 2017 14:55:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 14:55:05 GMT
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
	-	`sha256:f102f49d2963fdc76980522eeca2e704d805735e443b77f4f81c3567bced9e1c`  
		Last Modified: Fri, 03 Nov 2017 15:12:39 GMT  
		Size: 1.2 MB (1190586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8ca4151b289fe12f771d6ce50a475b77cc9df4ddefca7ea324e5b77c0a8611`  
		Last Modified: Fri, 03 Nov 2017 15:12:38 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e69fb5ce6323824a6fa26a21cafad984d369596a6eaf7430606fed8612fc38`  
		Last Modified: Fri, 03 Nov 2017 15:12:40 GMT  
		Size: 12.2 MB (12188363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7622e618c27e5321d2c694c8f5151ae70d8f8bf4b3656dbce2443bc1dad984`  
		Last Modified: Fri, 03 Nov 2017 15:12:39 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.3` - linux; ppc64le

```console
$ docker pull zookeeper@sha256:c9ab05068e40ea0b233315883c2eab83f9c334d931682d216baa4caf3a1abb5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.9 MB (68902656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05531786a52c785f6d4ef8396a481ce298a5313f7fb3c0e62f257b1e83d8fcf9`
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
# Fri, 03 Nov 2017 14:45:19 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Fri, 03 Nov 2017 14:45:29 GMT
RUN apk add --no-cache     bash     su-exec
# Fri, 03 Nov 2017 14:45:31 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Fri, 03 Nov 2017 14:45:36 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Nov 2017 14:45:37 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Fri, 03 Nov 2017 14:45:39 GMT
ARG DISTRO_NAME=zookeeper-3.3.6
# Fri, 03 Nov 2017 15:02:07 GMT
# ARGS: DISTRO_NAME=zookeeper-3.3.6 GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 03 Nov 2017 15:02:09 GMT
WORKDIR /zookeeper-3.3.6
# Fri, 03 Nov 2017 15:02:11 GMT
VOLUME [/data /datalog]
# Fri, 03 Nov 2017 15:02:13 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Nov 2017 15:02:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.3.6/bin ZOOCFGDIR=/conf
# Fri, 03 Nov 2017 15:02:19 GMT
COPY file:dab1f2991c403145ae0277be86810aa6ab4838363663db6dfbedba997dfd4bcf in / 
# Fri, 03 Nov 2017 15:02:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 15:02:23 GMT
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
	-	`sha256:6a52bec11b1a38579a39bca842e5248847775b720809618a8769edeedab23190`  
		Last Modified: Fri, 03 Nov 2017 15:12:46 GMT  
		Size: 1.1 MB (1134616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b086a53d6866f0a5d12bb40136746eccab067966faa0d6d0060d8670d80e05`  
		Last Modified: Fri, 03 Nov 2017 15:12:45 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20eacb2c6e0e6d8ca1ed6dd17d8c8ee653b51a9ee1e97d11d7b972c2bf1b92b`  
		Last Modified: Fri, 03 Nov 2017 15:12:48 GMT  
		Size: 12.2 MB (12188649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba2c119caed2974139c58af7c51d90703736aa5ebaedaf7904437567d403161a`  
		Last Modified: Fri, 03 Nov 2017 15:12:45 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.3` - linux; s390x

```console
$ docker pull zookeeper@sha256:336930752332ec735cb6ed2dd37d5d08293abcf6b500cc39dc76649c1bbd6cbb
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.6 MB (68592840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b11fb6d7ab8fa5d51cbb66d9f0104f4d8ef0958f5613942fae560decec9afaa6`
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
# Fri, 03 Nov 2017 14:42:34 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Fri, 03 Nov 2017 14:42:37 GMT
RUN apk add --no-cache     bash     su-exec
# Fri, 03 Nov 2017 14:42:37 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Fri, 03 Nov 2017 14:42:38 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Nov 2017 14:42:38 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Fri, 03 Nov 2017 14:42:38 GMT
ARG DISTRO_NAME=zookeeper-3.3.6
# Fri, 03 Nov 2017 14:42:49 GMT
# ARGS: DISTRO_NAME=zookeeper-3.3.6 GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 03 Nov 2017 14:42:49 GMT
WORKDIR /zookeeper-3.3.6
# Fri, 03 Nov 2017 14:42:50 GMT
VOLUME [/data /datalog]
# Fri, 03 Nov 2017 14:42:50 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Nov 2017 14:42:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.3.6/bin ZOOCFGDIR=/conf
# Fri, 03 Nov 2017 14:42:50 GMT
COPY file:dab1f2991c403145ae0277be86810aa6ab4838363663db6dfbedba997dfd4bcf in / 
# Fri, 03 Nov 2017 14:42:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 14:42:51 GMT
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
	-	`sha256:853bc4cb3e6d0c3661d3b54f70d2c67132a2d2fa341124d440b9eeff2b59a5d6`  
		Last Modified: Fri, 03 Nov 2017 15:12:50 GMT  
		Size: 1.2 MB (1195375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7781d463342b5b5b77efd8f265932c999a7ae57187bb66c0709f8b49a72dd7fa`  
		Last Modified: Fri, 03 Nov 2017 15:12:50 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77476fc7c9bf0f17b3859bf5e48e65046060bdc67ed98e04af23875cd9a96121`  
		Last Modified: Fri, 03 Nov 2017 15:12:51 GMT  
		Size: 12.2 MB (12188306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b0f7f3872c4c2523ffc46818437c05b06f8712b155455f5dc3f0fedf325a31`  
		Last Modified: Fri, 03 Nov 2017 15:12:50 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `zookeeper:3.3.6`

```console
$ docker pull zookeeper@sha256:a49af8ebdb5a2c739e9c5ece1aef0dbff66eb4e87a9af82649e86a44465b13cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `zookeeper:3.3.6` - linux; amd64

```console
$ docker pull zookeeper@sha256:6ffc1727ce750fd0fdeb5b68ec1fe848363b2c75fe3a2106b1a64481baa908b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.6 MB (69611700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a47c4ce0b89edcd63ca2d9ca3235e485536f4e6b486e9d4f6be2682a70126d9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 04 Nov 2017 05:50:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_VERSION=8u131
# Sat, 04 Nov 2017 05:50:53 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 04 Nov 2017 05:51:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 17:44:36 GMT
RUN apk add --no-cache     bash     su-exec
# Thu, 09 Nov 2017 03:40:19 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Thu, 09 Nov 2017 03:40:20 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Thu, 09 Nov 2017 03:40:20 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Thu, 09 Nov 2017 03:40:20 GMT
ARG DISTRO_NAME=zookeeper-3.3.6
# Thu, 09 Nov 2017 03:40:53 GMT
# ARGS: DISTRO_NAME=zookeeper-3.3.6 GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 09 Nov 2017 03:40:53 GMT
WORKDIR /zookeeper-3.3.6
# Thu, 09 Nov 2017 03:40:53 GMT
VOLUME [/data /datalog]
# Thu, 09 Nov 2017 03:40:53 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Thu, 09 Nov 2017 03:40:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.3.6/bin ZOOCFGDIR=/conf
# Thu, 09 Nov 2017 03:40:54 GMT
COPY file:5cb6c695778a88d60b35a329e20ff9cb9e46290c62beb27a175e94e807db9a1a in / 
# Thu, 09 Nov 2017 03:40:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 Nov 2017 03:40:54 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b27fd892ecb54137910751102dfb835b185276f359a85b2ba953ce4436a4773`  
		Last Modified: Sat, 04 Nov 2017 06:04:34 GMT  
		Size: 54.3 MB (54286387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696ccdcd9ed85e680ee250b8afcfeda756c616786100900237e05fa971a6684`  
		Last Modified: Sat, 04 Nov 2017 17:45:35 GMT  
		Size: 1.1 MB (1143577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a12f6b1c402361e01ac94a5029857585ba6ae745f7fc59ec8887e8f4ab84a9ca`  
		Last Modified: Thu, 09 Nov 2017 03:41:35 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab36ba0dddade06242b893cba42ed0d51088a134e1e2ac5c4f18143afd3bce7`  
		Last Modified: Thu, 09 Nov 2017 03:41:36 GMT  
		Size: 12.2 MB (12188223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3700252d908e3fbf6c2efd7b598815a85df77910f672259df20bbd89c32bcd`  
		Last Modified: Thu, 09 Nov 2017 03:41:35 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.3.6` - linux; arm variant v6

```console
$ docker pull zookeeper@sha256:d53c67d6dfb432b3a6d21be25bbd1c912782f514ac8bc41700f4da705501f5d6
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.2 MB (67151876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0fff5a8038cb2a5ac2d5316e8c9887f0878df68f6c339d125fedbb64a1b79c1`
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
# Fri, 03 Nov 2017 15:12:30 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Fri, 03 Nov 2017 15:12:36 GMT
RUN apk add --no-cache     bash     su-exec
# Fri, 03 Nov 2017 15:12:36 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Fri, 03 Nov 2017 15:12:37 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Nov 2017 15:12:37 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Fri, 03 Nov 2017 15:12:37 GMT
ARG DISTRO_NAME=zookeeper-3.3.6
# Fri, 03 Nov 2017 15:12:52 GMT
# ARGS: DISTRO_NAME=zookeeper-3.3.6 GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 03 Nov 2017 15:12:53 GMT
WORKDIR /zookeeper-3.3.6
# Fri, 03 Nov 2017 15:12:53 GMT
VOLUME [/data /datalog]
# Fri, 03 Nov 2017 15:12:53 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Nov 2017 15:12:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.3.6/bin ZOOCFGDIR=/conf
# Fri, 03 Nov 2017 15:12:54 GMT
COPY file:dab1f2991c403145ae0277be86810aa6ab4838363663db6dfbedba997dfd4bcf in / 
# Fri, 03 Nov 2017 15:12:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 15:12:54 GMT
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
	-	`sha256:75d9852f6a63df48294a7ca3894097f932f3055b54d7a22cd0f9364d1ff4e5eb`  
		Last Modified: Fri, 03 Nov 2017 15:13:53 GMT  
		Size: 1.1 MB (1105776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26119565cb519c52b0fd89f90484878c8476db234880db7dc8ba959b5d48c50`  
		Last Modified: Fri, 03 Nov 2017 15:13:52 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1bdca13b7cb261e21f75e8150f22044ff667bad6fbebb2684fcfa1274cf9a25`  
		Last Modified: Fri, 03 Nov 2017 15:13:55 GMT  
		Size: 12.2 MB (12188371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f237864aa8a984d190009b10fefdd0c182efd63d3be095511f54cca1e7596fe3`  
		Last Modified: Fri, 03 Nov 2017 15:13:52 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.3.6` - linux; arm64 variant v8

```console
$ docker pull zookeeper@sha256:98eef8537d50c4ae679e7c5480f74e190b2e066369fdadda046b353f76cb382d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.2 MB (68204741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f1d39a51f59d74cecba30f6bdbc79d3fb5978b31d7784de034327b3e7ace07a`
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
# Fri, 03 Nov 2017 15:13:02 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Fri, 03 Nov 2017 15:13:10 GMT
RUN apk add --no-cache     bash     su-exec
# Fri, 03 Nov 2017 15:13:10 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Fri, 03 Nov 2017 15:13:12 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Nov 2017 15:13:13 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Fri, 03 Nov 2017 15:13:13 GMT
ARG DISTRO_NAME=zookeeper-3.3.6
# Fri, 03 Nov 2017 15:13:31 GMT
# ARGS: DISTRO_NAME=zookeeper-3.3.6 GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 03 Nov 2017 15:13:32 GMT
WORKDIR /zookeeper-3.3.6
# Fri, 03 Nov 2017 15:13:33 GMT
VOLUME [/data /datalog]
# Fri, 03 Nov 2017 15:13:33 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Nov 2017 15:13:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.3.6/bin ZOOCFGDIR=/conf
# Fri, 03 Nov 2017 15:13:35 GMT
COPY file:dab1f2991c403145ae0277be86810aa6ab4838363663db6dfbedba997dfd4bcf in / 
# Fri, 03 Nov 2017 15:13:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 15:13:36 GMT
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
	-	`sha256:89f59397c7deaa19c431c40fc643d5c8fd9607297a245169d3fc775338b076df`  
		Last Modified: Fri, 03 Nov 2017 15:16:27 GMT  
		Size: 1.1 MB (1092219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a77f45de1c838a46b20e1574064a6c291238a234b6ba03fbb98d734fad85b32`  
		Last Modified: Fri, 03 Nov 2017 15:16:27 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6742cb21a913198400e5e3adb0355facd6c76264481a725d27a3a404f34d2650`  
		Last Modified: Fri, 03 Nov 2017 15:16:30 GMT  
		Size: 12.2 MB (12188069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1693b23231eac652b2a9a3f849a694c5bc3f629dbbeffe21a9647fab98df9f76`  
		Last Modified: Fri, 03 Nov 2017 15:13:59 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.3.6` - linux; 386

```console
$ docker pull zookeeper@sha256:bf2c75703f9e36bfdcff6f0f06fa9431f135950c170687423bd2f90098633b1c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.3 MB (70349291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3cc0d0d9e85e4aa35d63bbee134ad8b266d89f3fc14bc5e72716b48d6b0536e`
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
# Fri, 03 Nov 2017 14:54:38 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Fri, 03 Nov 2017 14:54:46 GMT
RUN apk add --no-cache     bash     su-exec
# Fri, 03 Nov 2017 14:54:46 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Fri, 03 Nov 2017 14:54:47 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Nov 2017 14:54:47 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Fri, 03 Nov 2017 14:54:47 GMT
ARG DISTRO_NAME=zookeeper-3.3.6
# Fri, 03 Nov 2017 14:55:04 GMT
# ARGS: DISTRO_NAME=zookeeper-3.3.6 GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 03 Nov 2017 14:55:04 GMT
WORKDIR /zookeeper-3.3.6
# Fri, 03 Nov 2017 14:55:04 GMT
VOLUME [/data /datalog]
# Fri, 03 Nov 2017 14:55:04 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Nov 2017 14:55:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.3.6/bin ZOOCFGDIR=/conf
# Fri, 03 Nov 2017 14:55:05 GMT
COPY file:dab1f2991c403145ae0277be86810aa6ab4838363663db6dfbedba997dfd4bcf in / 
# Fri, 03 Nov 2017 14:55:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 14:55:05 GMT
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
	-	`sha256:f102f49d2963fdc76980522eeca2e704d805735e443b77f4f81c3567bced9e1c`  
		Last Modified: Fri, 03 Nov 2017 15:12:39 GMT  
		Size: 1.2 MB (1190586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8ca4151b289fe12f771d6ce50a475b77cc9df4ddefca7ea324e5b77c0a8611`  
		Last Modified: Fri, 03 Nov 2017 15:12:38 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e69fb5ce6323824a6fa26a21cafad984d369596a6eaf7430606fed8612fc38`  
		Last Modified: Fri, 03 Nov 2017 15:12:40 GMT  
		Size: 12.2 MB (12188363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7622e618c27e5321d2c694c8f5151ae70d8f8bf4b3656dbce2443bc1dad984`  
		Last Modified: Fri, 03 Nov 2017 15:12:39 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.3.6` - linux; ppc64le

```console
$ docker pull zookeeper@sha256:c9ab05068e40ea0b233315883c2eab83f9c334d931682d216baa4caf3a1abb5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.9 MB (68902656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05531786a52c785f6d4ef8396a481ce298a5313f7fb3c0e62f257b1e83d8fcf9`
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
# Fri, 03 Nov 2017 14:45:19 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Fri, 03 Nov 2017 14:45:29 GMT
RUN apk add --no-cache     bash     su-exec
# Fri, 03 Nov 2017 14:45:31 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Fri, 03 Nov 2017 14:45:36 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Nov 2017 14:45:37 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Fri, 03 Nov 2017 14:45:39 GMT
ARG DISTRO_NAME=zookeeper-3.3.6
# Fri, 03 Nov 2017 15:02:07 GMT
# ARGS: DISTRO_NAME=zookeeper-3.3.6 GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 03 Nov 2017 15:02:09 GMT
WORKDIR /zookeeper-3.3.6
# Fri, 03 Nov 2017 15:02:11 GMT
VOLUME [/data /datalog]
# Fri, 03 Nov 2017 15:02:13 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Nov 2017 15:02:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.3.6/bin ZOOCFGDIR=/conf
# Fri, 03 Nov 2017 15:02:19 GMT
COPY file:dab1f2991c403145ae0277be86810aa6ab4838363663db6dfbedba997dfd4bcf in / 
# Fri, 03 Nov 2017 15:02:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 15:02:23 GMT
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
	-	`sha256:6a52bec11b1a38579a39bca842e5248847775b720809618a8769edeedab23190`  
		Last Modified: Fri, 03 Nov 2017 15:12:46 GMT  
		Size: 1.1 MB (1134616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b086a53d6866f0a5d12bb40136746eccab067966faa0d6d0060d8670d80e05`  
		Last Modified: Fri, 03 Nov 2017 15:12:45 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20eacb2c6e0e6d8ca1ed6dd17d8c8ee653b51a9ee1e97d11d7b972c2bf1b92b`  
		Last Modified: Fri, 03 Nov 2017 15:12:48 GMT  
		Size: 12.2 MB (12188649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba2c119caed2974139c58af7c51d90703736aa5ebaedaf7904437567d403161a`  
		Last Modified: Fri, 03 Nov 2017 15:12:45 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.3.6` - linux; s390x

```console
$ docker pull zookeeper@sha256:336930752332ec735cb6ed2dd37d5d08293abcf6b500cc39dc76649c1bbd6cbb
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.6 MB (68592840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b11fb6d7ab8fa5d51cbb66d9f0104f4d8ef0958f5613942fae560decec9afaa6`
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
# Fri, 03 Nov 2017 14:42:34 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Fri, 03 Nov 2017 14:42:37 GMT
RUN apk add --no-cache     bash     su-exec
# Fri, 03 Nov 2017 14:42:37 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Fri, 03 Nov 2017 14:42:38 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Nov 2017 14:42:38 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Fri, 03 Nov 2017 14:42:38 GMT
ARG DISTRO_NAME=zookeeper-3.3.6
# Fri, 03 Nov 2017 14:42:49 GMT
# ARGS: DISTRO_NAME=zookeeper-3.3.6 GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 03 Nov 2017 14:42:49 GMT
WORKDIR /zookeeper-3.3.6
# Fri, 03 Nov 2017 14:42:50 GMT
VOLUME [/data /datalog]
# Fri, 03 Nov 2017 14:42:50 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Nov 2017 14:42:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.3.6/bin ZOOCFGDIR=/conf
# Fri, 03 Nov 2017 14:42:50 GMT
COPY file:dab1f2991c403145ae0277be86810aa6ab4838363663db6dfbedba997dfd4bcf in / 
# Fri, 03 Nov 2017 14:42:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 14:42:51 GMT
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
	-	`sha256:853bc4cb3e6d0c3661d3b54f70d2c67132a2d2fa341124d440b9eeff2b59a5d6`  
		Last Modified: Fri, 03 Nov 2017 15:12:50 GMT  
		Size: 1.2 MB (1195375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7781d463342b5b5b77efd8f265932c999a7ae57187bb66c0709f8b49a72dd7fa`  
		Last Modified: Fri, 03 Nov 2017 15:12:50 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77476fc7c9bf0f17b3859bf5e48e65046060bdc67ed98e04af23875cd9a96121`  
		Last Modified: Fri, 03 Nov 2017 15:12:51 GMT  
		Size: 12.2 MB (12188306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b0f7f3872c4c2523ffc46818437c05b06f8712b155455f5dc3f0fedf325a31`  
		Last Modified: Fri, 03 Nov 2017 15:12:50 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `zookeeper:3.4`

```console
$ docker pull zookeeper@sha256:51c60576ff84fa8a6c02894c0eda676b1cc4a719781e670a0144e4c66a9a7b69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `zookeeper:3.4` - linux; amd64

```console
$ docker pull zookeeper@sha256:d0688a6b496564326e50a2352bf711544f6d31130a0556d49d943e9c342a7e45
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.9 MB (92875921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9fe1374256f05c0c76f27ce3c51450f6b97cd4a2b9ad8ad4a30387954de28b0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 04 Nov 2017 05:50:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_VERSION=8u131
# Sat, 04 Nov 2017 05:50:53 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 04 Nov 2017 05:51:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 17:44:36 GMT
RUN apk add --no-cache     bash     su-exec
# Thu, 09 Nov 2017 03:40:19 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Thu, 09 Nov 2017 03:40:20 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Thu, 09 Nov 2017 03:41:00 GMT
ARG GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
# Thu, 09 Nov 2017 03:41:00 GMT
ARG DISTRO_NAME=zookeeper-3.4.10
# Thu, 09 Nov 2017 03:41:19 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.10 GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 09 Nov 2017 03:41:19 GMT
WORKDIR /zookeeper-3.4.10
# Thu, 09 Nov 2017 03:41:19 GMT
VOLUME [/data /datalog]
# Thu, 09 Nov 2017 03:41:19 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Thu, 09 Nov 2017 03:41:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.10/bin ZOOCFGDIR=/conf
# Thu, 09 Nov 2017 03:41:20 GMT
COPY file:5cb6c695778a88d60b35a329e20ff9cb9e46290c62beb27a175e94e807db9a1a in / 
# Thu, 09 Nov 2017 03:41:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 Nov 2017 03:41:20 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b27fd892ecb54137910751102dfb835b185276f359a85b2ba953ce4436a4773`  
		Last Modified: Sat, 04 Nov 2017 06:04:34 GMT  
		Size: 54.3 MB (54286387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696ccdcd9ed85e680ee250b8afcfeda756c616786100900237e05fa971a6684`  
		Last Modified: Sat, 04 Nov 2017 17:45:35 GMT  
		Size: 1.1 MB (1143577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a12f6b1c402361e01ac94a5029857585ba6ae745f7fc59ec8887e8f4ab84a9ca`  
		Last Modified: Thu, 09 Nov 2017 03:41:35 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e6981f84cd05fb7406f8ebc3e86e2f086775d1d32f8cd7766e9ebeab104930`  
		Last Modified: Thu, 09 Nov 2017 03:41:56 GMT  
		Size: 35.5 MB (35452443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb79785eedc37cc8cef5e7aad304bd59d747f0cb09d396a5a5dab5267afd1f24`  
		Last Modified: Thu, 09 Nov 2017 03:41:53 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.4` - linux; arm variant v6

```console
$ docker pull zookeeper@sha256:3ac67318d67b32457c89aefe0c935bf2e4d9e65fe5876bfeb97b91cce0a56a95
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.4 MB (90415574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dba0abfb8d44542314f94c6bbf3d7c48b3f173e6e0e019fd55234507c5c99ee2`
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
# Fri, 03 Nov 2017 15:12:30 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Fri, 03 Nov 2017 15:12:36 GMT
RUN apk add --no-cache     bash     su-exec
# Fri, 03 Nov 2017 15:12:36 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Fri, 03 Nov 2017 15:12:37 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Nov 2017 15:13:01 GMT
ARG GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
# Fri, 03 Nov 2017 15:13:01 GMT
ARG DISTRO_NAME=zookeeper-3.4.10
# Fri, 03 Nov 2017 15:13:15 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.10 GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 03 Nov 2017 15:13:15 GMT
WORKDIR /zookeeper-3.4.10
# Fri, 03 Nov 2017 15:13:16 GMT
VOLUME [/data /datalog]
# Fri, 03 Nov 2017 15:13:16 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Nov 2017 15:13:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.10/bin ZOOCFGDIR=/conf
# Fri, 03 Nov 2017 15:13:16 GMT
COPY file:dab1f2991c403145ae0277be86810aa6ab4838363663db6dfbedba997dfd4bcf in / 
# Fri, 03 Nov 2017 15:13:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 15:13:17 GMT
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
	-	`sha256:75d9852f6a63df48294a7ca3894097f932f3055b54d7a22cd0f9364d1ff4e5eb`  
		Last Modified: Fri, 03 Nov 2017 15:13:53 GMT  
		Size: 1.1 MB (1105776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26119565cb519c52b0fd89f90484878c8476db234880db7dc8ba959b5d48c50`  
		Last Modified: Fri, 03 Nov 2017 15:13:52 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2f7516e4d69d18e792d3d2771ba433504cdf6a7a65ae994f6d9c49f450cd18`  
		Last Modified: Fri, 03 Nov 2017 15:14:06 GMT  
		Size: 35.5 MB (35452074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1693b23231eac652b2a9a3f849a694c5bc3f629dbbeffe21a9647fab98df9f76`  
		Last Modified: Fri, 03 Nov 2017 15:13:59 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.4` - linux; arm64 variant v8

```console
$ docker pull zookeeper@sha256:017709f8110598c34aa6a501eb1012faddc62af19237c3b3132d63a14dcc07d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.5 MB (91468721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06ce10638e7925f23e893b4074c51a2afed3476cf398b0b6832e728cf453cf20`
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
# Fri, 03 Nov 2017 15:13:02 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Fri, 03 Nov 2017 15:13:10 GMT
RUN apk add --no-cache     bash     su-exec
# Fri, 03 Nov 2017 15:13:10 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Fri, 03 Nov 2017 15:13:12 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Nov 2017 15:13:52 GMT
ARG GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
# Fri, 03 Nov 2017 15:13:53 GMT
ARG DISTRO_NAME=zookeeper-3.4.10
# Fri, 03 Nov 2017 15:15:08 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.10 GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 03 Nov 2017 15:15:09 GMT
WORKDIR /zookeeper-3.4.10
# Fri, 03 Nov 2017 15:15:09 GMT
VOLUME [/data /datalog]
# Fri, 03 Nov 2017 15:15:10 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Nov 2017 15:15:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.10/bin ZOOCFGDIR=/conf
# Fri, 03 Nov 2017 15:15:12 GMT
COPY file:dab1f2991c403145ae0277be86810aa6ab4838363663db6dfbedba997dfd4bcf in / 
# Fri, 03 Nov 2017 15:15:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 15:15:13 GMT
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
	-	`sha256:89f59397c7deaa19c431c40fc643d5c8fd9607297a245169d3fc775338b076df`  
		Last Modified: Fri, 03 Nov 2017 15:16:27 GMT  
		Size: 1.1 MB (1092219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a77f45de1c838a46b20e1574064a6c291238a234b6ba03fbb98d734fad85b32`  
		Last Modified: Fri, 03 Nov 2017 15:16:27 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2e5fd4c466e1264eea6ff2846f1f0d813bf7ffc38d49edef002e6eef38544f`  
		Last Modified: Fri, 03 Nov 2017 15:17:15 GMT  
		Size: 35.5 MB (35452046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34f177ad1e349405ecb50913e6bcbd5af83b10174b90bfb660b12605ead0358`  
		Last Modified: Fri, 03 Nov 2017 15:17:04 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.4` - linux; 386

```console
$ docker pull zookeeper@sha256:d9dbee3d94ee986932720b20e3b42d4274bd71d76aacb7e0b6bc015cd7afa93a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.6 MB (93613084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:277485b01c98eda1ba1b19e52358ef4b7486aea78bea3f8d1779d082c0b12456`
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
# Fri, 03 Nov 2017 14:54:38 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Fri, 03 Nov 2017 14:54:46 GMT
RUN apk add --no-cache     bash     su-exec
# Fri, 03 Nov 2017 14:54:46 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Fri, 03 Nov 2017 14:54:47 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Nov 2017 14:55:31 GMT
ARG GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
# Fri, 03 Nov 2017 14:55:32 GMT
ARG DISTRO_NAME=zookeeper-3.4.10
# Fri, 03 Nov 2017 14:55:42 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.10 GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 03 Nov 2017 14:55:42 GMT
WORKDIR /zookeeper-3.4.10
# Fri, 03 Nov 2017 14:55:42 GMT
VOLUME [/data /datalog]
# Fri, 03 Nov 2017 14:55:42 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Nov 2017 14:55:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.10/bin ZOOCFGDIR=/conf
# Fri, 03 Nov 2017 14:55:43 GMT
COPY file:dab1f2991c403145ae0277be86810aa6ab4838363663db6dfbedba997dfd4bcf in / 
# Fri, 03 Nov 2017 14:55:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 14:55:43 GMT
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
	-	`sha256:f102f49d2963fdc76980522eeca2e704d805735e443b77f4f81c3567bced9e1c`  
		Last Modified: Fri, 03 Nov 2017 15:12:39 GMT  
		Size: 1.2 MB (1190586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8ca4151b289fe12f771d6ce50a475b77cc9df4ddefca7ea324e5b77c0a8611`  
		Last Modified: Fri, 03 Nov 2017 15:12:38 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39eb34bedf76e0b1dd1f1664b7096ddb9bbec2213d43d9210df2eaa4d6bcaac8`  
		Last Modified: Fri, 03 Nov 2017 15:13:02 GMT  
		Size: 35.5 MB (35452157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b8da38113166804c7591517d274668684afe287f6b9133ad4632fbf4f6fb57`  
		Last Modified: Fri, 03 Nov 2017 15:12:58 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.4` - linux; ppc64le

```console
$ docker pull zookeeper@sha256:e4fc888adb7cac47affafdb83772afb2f4c5b4a78a078e5ab269c8ef95fc2d0f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.2 MB (92166450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e177d8de137286dd21e3e647c8bf3103e3f8a56735db442545345e7fab9b1dd3`
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
# Fri, 03 Nov 2017 14:45:19 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Fri, 03 Nov 2017 14:45:29 GMT
RUN apk add --no-cache     bash     su-exec
# Fri, 03 Nov 2017 14:45:31 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Fri, 03 Nov 2017 14:45:36 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Nov 2017 14:46:48 GMT
ARG GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
# Fri, 03 Nov 2017 14:46:50 GMT
ARG DISTRO_NAME=zookeeper-3.4.10
# Fri, 03 Nov 2017 14:58:26 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.10 GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 03 Nov 2017 14:58:28 GMT
WORKDIR /zookeeper-3.4.10
# Fri, 03 Nov 2017 14:58:31 GMT
VOLUME [/data /datalog]
# Fri, 03 Nov 2017 14:58:33 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Nov 2017 14:58:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.10/bin ZOOCFGDIR=/conf
# Fri, 03 Nov 2017 14:58:38 GMT
COPY file:dab1f2991c403145ae0277be86810aa6ab4838363663db6dfbedba997dfd4bcf in / 
# Fri, 03 Nov 2017 14:58:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 14:58:42 GMT
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
	-	`sha256:6a52bec11b1a38579a39bca842e5248847775b720809618a8769edeedab23190`  
		Last Modified: Fri, 03 Nov 2017 15:12:46 GMT  
		Size: 1.1 MB (1134616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b086a53d6866f0a5d12bb40136746eccab067966faa0d6d0060d8670d80e05`  
		Last Modified: Fri, 03 Nov 2017 15:12:45 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb31b479bfee11af4d135b1c3d22a40f89fa32cba6a575da76a73ec3c2051e1f`  
		Last Modified: Fri, 03 Nov 2017 15:13:11 GMT  
		Size: 35.5 MB (35452444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d828eb13ad2f794926464f0c996feb7d6405c1a2b70d1caf7e8a155e9d92992`  
		Last Modified: Fri, 03 Nov 2017 15:13:06 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.4` - linux; s390x

```console
$ docker pull zookeeper@sha256:662a66981626db8848001e82a01e346db31d9f0cc2dadb7c03a05a93e1046232
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.9 MB (91857041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c2fbcc9a0a4950cfe5e126fca7fee1ad14cf85a302a4dec6647895dd4151353`
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
# Fri, 03 Nov 2017 14:42:34 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Fri, 03 Nov 2017 14:42:37 GMT
RUN apk add --no-cache     bash     su-exec
# Fri, 03 Nov 2017 14:42:37 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Fri, 03 Nov 2017 14:42:38 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Nov 2017 14:43:06 GMT
ARG GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
# Fri, 03 Nov 2017 14:43:06 GMT
ARG DISTRO_NAME=zookeeper-3.4.10
# Fri, 03 Nov 2017 14:43:38 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.10 GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 03 Nov 2017 14:43:39 GMT
WORKDIR /zookeeper-3.4.10
# Fri, 03 Nov 2017 14:43:39 GMT
VOLUME [/data /datalog]
# Fri, 03 Nov 2017 14:43:39 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Nov 2017 14:43:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.10/bin ZOOCFGDIR=/conf
# Fri, 03 Nov 2017 14:43:39 GMT
COPY file:dab1f2991c403145ae0277be86810aa6ab4838363663db6dfbedba997dfd4bcf in / 
# Fri, 03 Nov 2017 14:43:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 14:43:40 GMT
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
	-	`sha256:853bc4cb3e6d0c3661d3b54f70d2c67132a2d2fa341124d440b9eeff2b59a5d6`  
		Last Modified: Fri, 03 Nov 2017 15:12:50 GMT  
		Size: 1.2 MB (1195375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7781d463342b5b5b77efd8f265932c999a7ae57187bb66c0709f8b49a72dd7fa`  
		Last Modified: Fri, 03 Nov 2017 15:12:50 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5d077993a3c645bbaad075f606f5dfa2187620419319ce1354478712ac25373`  
		Last Modified: Fri, 03 Nov 2017 15:13:06 GMT  
		Size: 35.5 MB (35452504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:419b18201d4ccc075d8a3f186b907d568a914dc0ef76ce1ecdece04ea8f27257`  
		Last Modified: Fri, 03 Nov 2017 15:13:02 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `zookeeper:3.4.10`

```console
$ docker pull zookeeper@sha256:51c60576ff84fa8a6c02894c0eda676b1cc4a719781e670a0144e4c66a9a7b69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `zookeeper:3.4.10` - linux; amd64

```console
$ docker pull zookeeper@sha256:d0688a6b496564326e50a2352bf711544f6d31130a0556d49d943e9c342a7e45
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.9 MB (92875921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9fe1374256f05c0c76f27ce3c51450f6b97cd4a2b9ad8ad4a30387954de28b0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 04 Nov 2017 05:50:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_VERSION=8u131
# Sat, 04 Nov 2017 05:50:53 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 04 Nov 2017 05:51:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 17:44:36 GMT
RUN apk add --no-cache     bash     su-exec
# Thu, 09 Nov 2017 03:40:19 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Thu, 09 Nov 2017 03:40:20 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Thu, 09 Nov 2017 03:41:00 GMT
ARG GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
# Thu, 09 Nov 2017 03:41:00 GMT
ARG DISTRO_NAME=zookeeper-3.4.10
# Thu, 09 Nov 2017 03:41:19 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.10 GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 09 Nov 2017 03:41:19 GMT
WORKDIR /zookeeper-3.4.10
# Thu, 09 Nov 2017 03:41:19 GMT
VOLUME [/data /datalog]
# Thu, 09 Nov 2017 03:41:19 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Thu, 09 Nov 2017 03:41:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.10/bin ZOOCFGDIR=/conf
# Thu, 09 Nov 2017 03:41:20 GMT
COPY file:5cb6c695778a88d60b35a329e20ff9cb9e46290c62beb27a175e94e807db9a1a in / 
# Thu, 09 Nov 2017 03:41:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 Nov 2017 03:41:20 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b27fd892ecb54137910751102dfb835b185276f359a85b2ba953ce4436a4773`  
		Last Modified: Sat, 04 Nov 2017 06:04:34 GMT  
		Size: 54.3 MB (54286387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696ccdcd9ed85e680ee250b8afcfeda756c616786100900237e05fa971a6684`  
		Last Modified: Sat, 04 Nov 2017 17:45:35 GMT  
		Size: 1.1 MB (1143577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a12f6b1c402361e01ac94a5029857585ba6ae745f7fc59ec8887e8f4ab84a9ca`  
		Last Modified: Thu, 09 Nov 2017 03:41:35 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e6981f84cd05fb7406f8ebc3e86e2f086775d1d32f8cd7766e9ebeab104930`  
		Last Modified: Thu, 09 Nov 2017 03:41:56 GMT  
		Size: 35.5 MB (35452443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb79785eedc37cc8cef5e7aad304bd59d747f0cb09d396a5a5dab5267afd1f24`  
		Last Modified: Thu, 09 Nov 2017 03:41:53 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.4.10` - linux; arm variant v6

```console
$ docker pull zookeeper@sha256:3ac67318d67b32457c89aefe0c935bf2e4d9e65fe5876bfeb97b91cce0a56a95
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.4 MB (90415574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dba0abfb8d44542314f94c6bbf3d7c48b3f173e6e0e019fd55234507c5c99ee2`
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
# Fri, 03 Nov 2017 15:12:30 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Fri, 03 Nov 2017 15:12:36 GMT
RUN apk add --no-cache     bash     su-exec
# Fri, 03 Nov 2017 15:12:36 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Fri, 03 Nov 2017 15:12:37 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Nov 2017 15:13:01 GMT
ARG GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
# Fri, 03 Nov 2017 15:13:01 GMT
ARG DISTRO_NAME=zookeeper-3.4.10
# Fri, 03 Nov 2017 15:13:15 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.10 GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 03 Nov 2017 15:13:15 GMT
WORKDIR /zookeeper-3.4.10
# Fri, 03 Nov 2017 15:13:16 GMT
VOLUME [/data /datalog]
# Fri, 03 Nov 2017 15:13:16 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Nov 2017 15:13:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.10/bin ZOOCFGDIR=/conf
# Fri, 03 Nov 2017 15:13:16 GMT
COPY file:dab1f2991c403145ae0277be86810aa6ab4838363663db6dfbedba997dfd4bcf in / 
# Fri, 03 Nov 2017 15:13:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 15:13:17 GMT
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
	-	`sha256:75d9852f6a63df48294a7ca3894097f932f3055b54d7a22cd0f9364d1ff4e5eb`  
		Last Modified: Fri, 03 Nov 2017 15:13:53 GMT  
		Size: 1.1 MB (1105776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26119565cb519c52b0fd89f90484878c8476db234880db7dc8ba959b5d48c50`  
		Last Modified: Fri, 03 Nov 2017 15:13:52 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2f7516e4d69d18e792d3d2771ba433504cdf6a7a65ae994f6d9c49f450cd18`  
		Last Modified: Fri, 03 Nov 2017 15:14:06 GMT  
		Size: 35.5 MB (35452074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1693b23231eac652b2a9a3f849a694c5bc3f629dbbeffe21a9647fab98df9f76`  
		Last Modified: Fri, 03 Nov 2017 15:13:59 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.4.10` - linux; arm64 variant v8

```console
$ docker pull zookeeper@sha256:017709f8110598c34aa6a501eb1012faddc62af19237c3b3132d63a14dcc07d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.5 MB (91468721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06ce10638e7925f23e893b4074c51a2afed3476cf398b0b6832e728cf453cf20`
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
# Fri, 03 Nov 2017 15:13:02 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Fri, 03 Nov 2017 15:13:10 GMT
RUN apk add --no-cache     bash     su-exec
# Fri, 03 Nov 2017 15:13:10 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Fri, 03 Nov 2017 15:13:12 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Nov 2017 15:13:52 GMT
ARG GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
# Fri, 03 Nov 2017 15:13:53 GMT
ARG DISTRO_NAME=zookeeper-3.4.10
# Fri, 03 Nov 2017 15:15:08 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.10 GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 03 Nov 2017 15:15:09 GMT
WORKDIR /zookeeper-3.4.10
# Fri, 03 Nov 2017 15:15:09 GMT
VOLUME [/data /datalog]
# Fri, 03 Nov 2017 15:15:10 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Nov 2017 15:15:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.10/bin ZOOCFGDIR=/conf
# Fri, 03 Nov 2017 15:15:12 GMT
COPY file:dab1f2991c403145ae0277be86810aa6ab4838363663db6dfbedba997dfd4bcf in / 
# Fri, 03 Nov 2017 15:15:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 15:15:13 GMT
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
	-	`sha256:89f59397c7deaa19c431c40fc643d5c8fd9607297a245169d3fc775338b076df`  
		Last Modified: Fri, 03 Nov 2017 15:16:27 GMT  
		Size: 1.1 MB (1092219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a77f45de1c838a46b20e1574064a6c291238a234b6ba03fbb98d734fad85b32`  
		Last Modified: Fri, 03 Nov 2017 15:16:27 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2e5fd4c466e1264eea6ff2846f1f0d813bf7ffc38d49edef002e6eef38544f`  
		Last Modified: Fri, 03 Nov 2017 15:17:15 GMT  
		Size: 35.5 MB (35452046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34f177ad1e349405ecb50913e6bcbd5af83b10174b90bfb660b12605ead0358`  
		Last Modified: Fri, 03 Nov 2017 15:17:04 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.4.10` - linux; 386

```console
$ docker pull zookeeper@sha256:d9dbee3d94ee986932720b20e3b42d4274bd71d76aacb7e0b6bc015cd7afa93a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.6 MB (93613084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:277485b01c98eda1ba1b19e52358ef4b7486aea78bea3f8d1779d082c0b12456`
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
# Fri, 03 Nov 2017 14:54:38 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Fri, 03 Nov 2017 14:54:46 GMT
RUN apk add --no-cache     bash     su-exec
# Fri, 03 Nov 2017 14:54:46 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Fri, 03 Nov 2017 14:54:47 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Nov 2017 14:55:31 GMT
ARG GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
# Fri, 03 Nov 2017 14:55:32 GMT
ARG DISTRO_NAME=zookeeper-3.4.10
# Fri, 03 Nov 2017 14:55:42 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.10 GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 03 Nov 2017 14:55:42 GMT
WORKDIR /zookeeper-3.4.10
# Fri, 03 Nov 2017 14:55:42 GMT
VOLUME [/data /datalog]
# Fri, 03 Nov 2017 14:55:42 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Nov 2017 14:55:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.10/bin ZOOCFGDIR=/conf
# Fri, 03 Nov 2017 14:55:43 GMT
COPY file:dab1f2991c403145ae0277be86810aa6ab4838363663db6dfbedba997dfd4bcf in / 
# Fri, 03 Nov 2017 14:55:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 14:55:43 GMT
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
	-	`sha256:f102f49d2963fdc76980522eeca2e704d805735e443b77f4f81c3567bced9e1c`  
		Last Modified: Fri, 03 Nov 2017 15:12:39 GMT  
		Size: 1.2 MB (1190586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8ca4151b289fe12f771d6ce50a475b77cc9df4ddefca7ea324e5b77c0a8611`  
		Last Modified: Fri, 03 Nov 2017 15:12:38 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39eb34bedf76e0b1dd1f1664b7096ddb9bbec2213d43d9210df2eaa4d6bcaac8`  
		Last Modified: Fri, 03 Nov 2017 15:13:02 GMT  
		Size: 35.5 MB (35452157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b8da38113166804c7591517d274668684afe287f6b9133ad4632fbf4f6fb57`  
		Last Modified: Fri, 03 Nov 2017 15:12:58 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.4.10` - linux; ppc64le

```console
$ docker pull zookeeper@sha256:e4fc888adb7cac47affafdb83772afb2f4c5b4a78a078e5ab269c8ef95fc2d0f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.2 MB (92166450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e177d8de137286dd21e3e647c8bf3103e3f8a56735db442545345e7fab9b1dd3`
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
# Fri, 03 Nov 2017 14:45:19 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Fri, 03 Nov 2017 14:45:29 GMT
RUN apk add --no-cache     bash     su-exec
# Fri, 03 Nov 2017 14:45:31 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Fri, 03 Nov 2017 14:45:36 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Nov 2017 14:46:48 GMT
ARG GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
# Fri, 03 Nov 2017 14:46:50 GMT
ARG DISTRO_NAME=zookeeper-3.4.10
# Fri, 03 Nov 2017 14:58:26 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.10 GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 03 Nov 2017 14:58:28 GMT
WORKDIR /zookeeper-3.4.10
# Fri, 03 Nov 2017 14:58:31 GMT
VOLUME [/data /datalog]
# Fri, 03 Nov 2017 14:58:33 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Nov 2017 14:58:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.10/bin ZOOCFGDIR=/conf
# Fri, 03 Nov 2017 14:58:38 GMT
COPY file:dab1f2991c403145ae0277be86810aa6ab4838363663db6dfbedba997dfd4bcf in / 
# Fri, 03 Nov 2017 14:58:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 14:58:42 GMT
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
	-	`sha256:6a52bec11b1a38579a39bca842e5248847775b720809618a8769edeedab23190`  
		Last Modified: Fri, 03 Nov 2017 15:12:46 GMT  
		Size: 1.1 MB (1134616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b086a53d6866f0a5d12bb40136746eccab067966faa0d6d0060d8670d80e05`  
		Last Modified: Fri, 03 Nov 2017 15:12:45 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb31b479bfee11af4d135b1c3d22a40f89fa32cba6a575da76a73ec3c2051e1f`  
		Last Modified: Fri, 03 Nov 2017 15:13:11 GMT  
		Size: 35.5 MB (35452444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d828eb13ad2f794926464f0c996feb7d6405c1a2b70d1caf7e8a155e9d92992`  
		Last Modified: Fri, 03 Nov 2017 15:13:06 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.4.10` - linux; s390x

```console
$ docker pull zookeeper@sha256:662a66981626db8848001e82a01e346db31d9f0cc2dadb7c03a05a93e1046232
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.9 MB (91857041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c2fbcc9a0a4950cfe5e126fca7fee1ad14cf85a302a4dec6647895dd4151353`
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
# Fri, 03 Nov 2017 14:42:34 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Fri, 03 Nov 2017 14:42:37 GMT
RUN apk add --no-cache     bash     su-exec
# Fri, 03 Nov 2017 14:42:37 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Fri, 03 Nov 2017 14:42:38 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Nov 2017 14:43:06 GMT
ARG GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
# Fri, 03 Nov 2017 14:43:06 GMT
ARG DISTRO_NAME=zookeeper-3.4.10
# Fri, 03 Nov 2017 14:43:38 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.10 GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 03 Nov 2017 14:43:39 GMT
WORKDIR /zookeeper-3.4.10
# Fri, 03 Nov 2017 14:43:39 GMT
VOLUME [/data /datalog]
# Fri, 03 Nov 2017 14:43:39 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Nov 2017 14:43:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.10/bin ZOOCFGDIR=/conf
# Fri, 03 Nov 2017 14:43:39 GMT
COPY file:dab1f2991c403145ae0277be86810aa6ab4838363663db6dfbedba997dfd4bcf in / 
# Fri, 03 Nov 2017 14:43:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 14:43:40 GMT
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
	-	`sha256:853bc4cb3e6d0c3661d3b54f70d2c67132a2d2fa341124d440b9eeff2b59a5d6`  
		Last Modified: Fri, 03 Nov 2017 15:12:50 GMT  
		Size: 1.2 MB (1195375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7781d463342b5b5b77efd8f265932c999a7ae57187bb66c0709f8b49a72dd7fa`  
		Last Modified: Fri, 03 Nov 2017 15:12:50 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5d077993a3c645bbaad075f606f5dfa2187620419319ce1354478712ac25373`  
		Last Modified: Fri, 03 Nov 2017 15:13:06 GMT  
		Size: 35.5 MB (35452504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:419b18201d4ccc075d8a3f186b907d568a914dc0ef76ce1ecdece04ea8f27257`  
		Last Modified: Fri, 03 Nov 2017 15:13:02 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `zookeeper:3.5`

```console
$ docker pull zookeeper@sha256:6e4be8198b91267e6c1204a053e7b4eaac55624e2e036ba805ccd5676b63e5d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `zookeeper:3.5` - linux; amd64

```console
$ docker pull zookeeper@sha256:33b2f0c3579c56e9f1b46c0c1ee0a5ea37c6b9800e5bc485aa8de53f1f686c01
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.6 MB (76645382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74d3a6d71e9b3162a0df86e9ba3b0f0ca3e746de2b2c74af921a06ce1293e173`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 04 Nov 2017 05:50:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_VERSION=8u131
# Sat, 04 Nov 2017 05:50:53 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 04 Nov 2017 05:51:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 17:44:36 GMT
RUN apk add --no-cache     bash     su-exec
# Sat, 04 Nov 2017 17:44:36 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=false
# Sat, 04 Nov 2017 17:44:36 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Sat, 04 Nov 2017 17:44:37 GMT
ARG GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
# Sat, 04 Nov 2017 17:44:37 GMT
ARG DISTRO_NAME=zookeeper-3.5.3-beta
# Sat, 04 Nov 2017 17:44:46 GMT
# ARGS: DISTRO_NAME=zookeeper-3.5.3-beta GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps;     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Sat, 04 Nov 2017 17:44:46 GMT
WORKDIR /zookeeper-3.5.3-beta
# Sat, 04 Nov 2017 17:44:46 GMT
VOLUME [/data /datalog]
# Sat, 04 Nov 2017 17:44:46 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Sat, 04 Nov 2017 17:44:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.5.3-beta/bin ZOOCFGDIR=/conf
# Thu, 09 Nov 2017 03:41:26 GMT
COPY file:8105f8f2a164c7987801076b7424e552fc764b95360a326b77f94ca9d0ccc2f9 in / 
# Thu, 09 Nov 2017 03:41:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 Nov 2017 03:41:26 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b27fd892ecb54137910751102dfb835b185276f359a85b2ba953ce4436a4773`  
		Last Modified: Sat, 04 Nov 2017 06:04:34 GMT  
		Size: 54.3 MB (54286387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696ccdcd9ed85e680ee250b8afcfeda756c616786100900237e05fa971a6684`  
		Last Modified: Sat, 04 Nov 2017 17:45:35 GMT  
		Size: 1.1 MB (1143577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85164d4d021cdb3892734dfde63ab2811df3ef719fff83049bd3f3384caec3f`  
		Last Modified: Sat, 04 Nov 2017 17:45:34 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d03cbab496a57b06385d9c43e93e096424a5493a887a830749ac76c96f2a7c`  
		Last Modified: Sat, 04 Nov 2017 17:45:36 GMT  
		Size: 19.2 MB (19221839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfd3d259ffbb4caf93ccb9ccd4e8cf73f7df89f5bfb030be0431c2ff986338c`  
		Last Modified: Thu, 09 Nov 2017 03:42:20 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.5` - linux; arm variant v6

```console
$ docker pull zookeeper@sha256:15bcb3be07b15ef1dbc39c3b83dbce7ef0612fea56f818c0e712eabd5530560c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74185171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5edd9f68b7f532d713dcd99bb57f9c1928a8c8a354ce1423291c74632572229f`
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
# Fri, 03 Nov 2017 15:13:27 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=false
# Fri, 03 Nov 2017 15:13:27 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Nov 2017 15:13:28 GMT
ARG GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
# Fri, 03 Nov 2017 15:13:28 GMT
ARG DISTRO_NAME=zookeeper-3.5.3-beta
# Fri, 03 Nov 2017 15:13:41 GMT
# ARGS: DISTRO_NAME=zookeeper-3.5.3-beta GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps;     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Fri, 03 Nov 2017 15:13:41 GMT
WORKDIR /zookeeper-3.5.3-beta
# Fri, 03 Nov 2017 15:13:41 GMT
VOLUME [/data /datalog]
# Fri, 03 Nov 2017 15:13:41 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Nov 2017 15:13:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.5.3-beta/bin ZOOCFGDIR=/conf
# Fri, 03 Nov 2017 15:13:42 GMT
COPY file:b4dcfdc133d1f6c0a1e3ec09a9ebff2ade68a98211ba40543ec3b0d85524b77c in / 
# Fri, 03 Nov 2017 15:13:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 15:13:42 GMT
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
	-	`sha256:9b68fd4853c6b040594cbaac6e38c9ffa5cadcedd6831149a6de3c38295e1684`  
		Last Modified: Fri, 03 Nov 2017 15:14:21 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ff09f16965c7f9d7ba0fad96255c6b44106e72b30767f9e1d05979b9a3ae617`  
		Last Modified: Fri, 03 Nov 2017 15:14:21 GMT  
		Size: 19.2 MB (19221624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d8287bf54b4d28af4bb26ba2625fbfccb4c49a89d4d53165c1133c4073582a`  
		Last Modified: Fri, 03 Nov 2017 15:14:21 GMT  
		Size: 603.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.5` - linux; arm64 variant v8

```console
$ docker pull zookeeper@sha256:0910e3b248c48fba7923123f304b6d5c7d08067a46827ca0c07af3d64cca0022
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.2 MB (75238337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5632712766a4e765c8c78c0cd508c63682eec424d8559951e126c8d99a6a887b`
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
# Fri, 03 Nov 2017 15:15:38 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=false
# Fri, 03 Nov 2017 15:15:40 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Nov 2017 15:15:40 GMT
ARG GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
# Fri, 03 Nov 2017 15:15:41 GMT
ARG DISTRO_NAME=zookeeper-3.5.3-beta
# Fri, 03 Nov 2017 15:15:59 GMT
# ARGS: DISTRO_NAME=zookeeper-3.5.3-beta GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps;     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Fri, 03 Nov 2017 15:15:59 GMT
WORKDIR /zookeeper-3.5.3-beta
# Fri, 03 Nov 2017 15:16:00 GMT
VOLUME [/data /datalog]
# Fri, 03 Nov 2017 15:16:01 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Nov 2017 15:16:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.5.3-beta/bin ZOOCFGDIR=/conf
# Fri, 03 Nov 2017 15:16:03 GMT
COPY file:b4dcfdc133d1f6c0a1e3ec09a9ebff2ade68a98211ba40543ec3b0d85524b77c in / 
# Fri, 03 Nov 2017 15:16:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 15:16:04 GMT
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
	-	`sha256:d1aa95e15b0278115b55464c0f218eabe4e0ab07f8e15800f49036bb59d5f676`  
		Last Modified: Fri, 03 Nov 2017 15:18:01 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:301cbc5c300e89f2e5931361f3213f2e4e2ab99ddfe025c307569437383e6411`  
		Last Modified: Fri, 03 Nov 2017 15:18:07 GMT  
		Size: 19.2 MB (19221600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9aa0c95ce6b2ddc22cc53b29bc804ec49d4a19f402c8cebe15200691a5845c`  
		Last Modified: Fri, 03 Nov 2017 15:18:02 GMT  
		Size: 603.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.5` - linux; 386

```console
$ docker pull zookeeper@sha256:0fc0e2a60f0718f99d64f805a811eb93db7fedf8349b9a914a9ab77bad34954d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.4 MB (77382690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:531c317133eaf77a8c29d85967d8efe3389b2cd1fb36dc9546530222701b1564`
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
# Fri, 03 Nov 2017 14:56:07 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=false
# Fri, 03 Nov 2017 14:56:08 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Nov 2017 14:56:08 GMT
ARG GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
# Fri, 03 Nov 2017 14:56:08 GMT
ARG DISTRO_NAME=zookeeper-3.5.3-beta
# Fri, 03 Nov 2017 14:56:18 GMT
# ARGS: DISTRO_NAME=zookeeper-3.5.3-beta GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps;     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Fri, 03 Nov 2017 14:56:18 GMT
WORKDIR /zookeeper-3.5.3-beta
# Fri, 03 Nov 2017 14:56:18 GMT
VOLUME [/data /datalog]
# Fri, 03 Nov 2017 14:56:18 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Nov 2017 14:56:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.5.3-beta/bin ZOOCFGDIR=/conf
# Fri, 03 Nov 2017 14:56:19 GMT
COPY file:b4dcfdc133d1f6c0a1e3ec09a9ebff2ade68a98211ba40543ec3b0d85524b77c in / 
# Fri, 03 Nov 2017 14:56:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 14:56:19 GMT
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
	-	`sha256:127663fc2018b3c98be46a591e064d44b5aa245500d5206f51c159dd0e2d6684`  
		Last Modified: Fri, 03 Nov 2017 15:13:28 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837746a5698616f3bc28955c88bf4a7abf4fb8508976f7f1b31828bed43e0c9e`  
		Last Modified: Fri, 03 Nov 2017 15:13:30 GMT  
		Size: 19.2 MB (19221721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801f5042de38cde78a2270347e6c7d6d6b601a3633b2ee72d3f3d1e7e357293a`  
		Last Modified: Fri, 03 Nov 2017 15:13:28 GMT  
		Size: 603.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.5` - linux; ppc64le

```console
$ docker pull zookeeper@sha256:d82ce3f8f1a05d9b801e3926a6a0803294d355c1ae1d5f94ae11b4c677d4070c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.9 MB (75935951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7a0a9a0a17e816a226789d58c34e4e408a13189395f234acf95aaa8c16c5bac`
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
# Fri, 03 Nov 2017 14:47:17 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=false
# Fri, 03 Nov 2017 14:47:22 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Nov 2017 14:47:23 GMT
ARG GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
# Fri, 03 Nov 2017 14:47:25 GMT
ARG DISTRO_NAME=zookeeper-3.5.3-beta
# Fri, 03 Nov 2017 14:59:55 GMT
# ARGS: DISTRO_NAME=zookeeper-3.5.3-beta GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps;     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Fri, 03 Nov 2017 14:59:57 GMT
WORKDIR /zookeeper-3.5.3-beta
# Fri, 03 Nov 2017 15:00:00 GMT
VOLUME [/data /datalog]
# Fri, 03 Nov 2017 15:00:02 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Nov 2017 15:00:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.5.3-beta/bin ZOOCFGDIR=/conf
# Fri, 03 Nov 2017 15:00:07 GMT
COPY file:b4dcfdc133d1f6c0a1e3ec09a9ebff2ade68a98211ba40543ec3b0d85524b77c in / 
# Fri, 03 Nov 2017 15:00:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 15:00:18 GMT
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
	-	`sha256:eb898a0b3bd086f344b0d81c759eab742e8e7284e973ddcc02195e1b52d603e4`  
		Last Modified: Fri, 03 Nov 2017 15:13:39 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9954caefee9d8e07c5d0c8341a110569798da5f8e1b6b8a2951eab995425696e`  
		Last Modified: Fri, 03 Nov 2017 15:13:40 GMT  
		Size: 19.2 MB (19221824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a150e320e624ada307eb00fa3b9aa7874d12c44740d3a5e57a82df028d64d3`  
		Last Modified: Fri, 03 Nov 2017 15:13:36 GMT  
		Size: 603.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.5` - linux; s390x

```console
$ docker pull zookeeper@sha256:3a34f258090e29e414e4524bd16059ef7d5b6e4bb9eff2f742c702eb2a5d09d0
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.6 MB (75626841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1b1f93f866f33ecf83729046157e08bd18ea47ef3ebe8723c1c9ccaf242e319`
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
# Fri, 03 Nov 2017 14:43:54 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=false
# Fri, 03 Nov 2017 14:43:55 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Nov 2017 14:43:55 GMT
ARG GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
# Fri, 03 Nov 2017 14:43:55 GMT
ARG DISTRO_NAME=zookeeper-3.5.3-beta
# Fri, 03 Nov 2017 14:44:28 GMT
# ARGS: DISTRO_NAME=zookeeper-3.5.3-beta GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps;     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Fri, 03 Nov 2017 14:44:28 GMT
WORKDIR /zookeeper-3.5.3-beta
# Fri, 03 Nov 2017 14:44:28 GMT
VOLUME [/data /datalog]
# Fri, 03 Nov 2017 14:44:28 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Nov 2017 14:44:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.5.3-beta/bin ZOOCFGDIR=/conf
# Fri, 03 Nov 2017 14:44:29 GMT
COPY file:b4dcfdc133d1f6c0a1e3ec09a9ebff2ade68a98211ba40543ec3b0d85524b77c in / 
# Fri, 03 Nov 2017 14:44:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 14:44:29 GMT
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
	-	`sha256:4f068b6c3cb814aacafd87bba3fb069f6efe80adb0fff3570c1e3754ad2b0f70`  
		Last Modified: Fri, 03 Nov 2017 15:13:22 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdbb4b86491ec46746e853fb85ba6bdc171c7e85ec21d96c1bd1ac6cf21114e4`  
		Last Modified: Fri, 03 Nov 2017 15:13:25 GMT  
		Size: 19.2 MB (19222221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9148b67842cf076617f0368250e12ad6872a6834ba77870fa1a903deeeba67e`  
		Last Modified: Fri, 03 Nov 2017 15:13:24 GMT  
		Size: 603.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `zookeeper:3.5.3-beta`

```console
$ docker pull zookeeper@sha256:6e4be8198b91267e6c1204a053e7b4eaac55624e2e036ba805ccd5676b63e5d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `zookeeper:3.5.3-beta` - linux; amd64

```console
$ docker pull zookeeper@sha256:33b2f0c3579c56e9f1b46c0c1ee0a5ea37c6b9800e5bc485aa8de53f1f686c01
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.6 MB (76645382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74d3a6d71e9b3162a0df86e9ba3b0f0ca3e746de2b2c74af921a06ce1293e173`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 04 Nov 2017 05:50:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_VERSION=8u131
# Sat, 04 Nov 2017 05:50:53 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 04 Nov 2017 05:51:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 17:44:36 GMT
RUN apk add --no-cache     bash     su-exec
# Sat, 04 Nov 2017 17:44:36 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=false
# Sat, 04 Nov 2017 17:44:36 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Sat, 04 Nov 2017 17:44:37 GMT
ARG GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
# Sat, 04 Nov 2017 17:44:37 GMT
ARG DISTRO_NAME=zookeeper-3.5.3-beta
# Sat, 04 Nov 2017 17:44:46 GMT
# ARGS: DISTRO_NAME=zookeeper-3.5.3-beta GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps;     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Sat, 04 Nov 2017 17:44:46 GMT
WORKDIR /zookeeper-3.5.3-beta
# Sat, 04 Nov 2017 17:44:46 GMT
VOLUME [/data /datalog]
# Sat, 04 Nov 2017 17:44:46 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Sat, 04 Nov 2017 17:44:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.5.3-beta/bin ZOOCFGDIR=/conf
# Thu, 09 Nov 2017 03:41:26 GMT
COPY file:8105f8f2a164c7987801076b7424e552fc764b95360a326b77f94ca9d0ccc2f9 in / 
# Thu, 09 Nov 2017 03:41:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 Nov 2017 03:41:26 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b27fd892ecb54137910751102dfb835b185276f359a85b2ba953ce4436a4773`  
		Last Modified: Sat, 04 Nov 2017 06:04:34 GMT  
		Size: 54.3 MB (54286387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696ccdcd9ed85e680ee250b8afcfeda756c616786100900237e05fa971a6684`  
		Last Modified: Sat, 04 Nov 2017 17:45:35 GMT  
		Size: 1.1 MB (1143577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c85164d4d021cdb3892734dfde63ab2811df3ef719fff83049bd3f3384caec3f`  
		Last Modified: Sat, 04 Nov 2017 17:45:34 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d03cbab496a57b06385d9c43e93e096424a5493a887a830749ac76c96f2a7c`  
		Last Modified: Sat, 04 Nov 2017 17:45:36 GMT  
		Size: 19.2 MB (19221839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfd3d259ffbb4caf93ccb9ccd4e8cf73f7df89f5bfb030be0431c2ff986338c`  
		Last Modified: Thu, 09 Nov 2017 03:42:20 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.5.3-beta` - linux; arm variant v6

```console
$ docker pull zookeeper@sha256:15bcb3be07b15ef1dbc39c3b83dbce7ef0612fea56f818c0e712eabd5530560c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.2 MB (74185171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5edd9f68b7f532d713dcd99bb57f9c1928a8c8a354ce1423291c74632572229f`
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
# Fri, 03 Nov 2017 15:13:27 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=false
# Fri, 03 Nov 2017 15:13:27 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Nov 2017 15:13:28 GMT
ARG GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
# Fri, 03 Nov 2017 15:13:28 GMT
ARG DISTRO_NAME=zookeeper-3.5.3-beta
# Fri, 03 Nov 2017 15:13:41 GMT
# ARGS: DISTRO_NAME=zookeeper-3.5.3-beta GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps;     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Fri, 03 Nov 2017 15:13:41 GMT
WORKDIR /zookeeper-3.5.3-beta
# Fri, 03 Nov 2017 15:13:41 GMT
VOLUME [/data /datalog]
# Fri, 03 Nov 2017 15:13:41 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Nov 2017 15:13:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.5.3-beta/bin ZOOCFGDIR=/conf
# Fri, 03 Nov 2017 15:13:42 GMT
COPY file:b4dcfdc133d1f6c0a1e3ec09a9ebff2ade68a98211ba40543ec3b0d85524b77c in / 
# Fri, 03 Nov 2017 15:13:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 15:13:42 GMT
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
	-	`sha256:9b68fd4853c6b040594cbaac6e38c9ffa5cadcedd6831149a6de3c38295e1684`  
		Last Modified: Fri, 03 Nov 2017 15:14:21 GMT  
		Size: 1.4 KB (1371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ff09f16965c7f9d7ba0fad96255c6b44106e72b30767f9e1d05979b9a3ae617`  
		Last Modified: Fri, 03 Nov 2017 15:14:21 GMT  
		Size: 19.2 MB (19221624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d8287bf54b4d28af4bb26ba2625fbfccb4c49a89d4d53165c1133c4073582a`  
		Last Modified: Fri, 03 Nov 2017 15:14:21 GMT  
		Size: 603.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.5.3-beta` - linux; arm64 variant v8

```console
$ docker pull zookeeper@sha256:0910e3b248c48fba7923123f304b6d5c7d08067a46827ca0c07af3d64cca0022
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.2 MB (75238337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5632712766a4e765c8c78c0cd508c63682eec424d8559951e126c8d99a6a887b`
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
# Fri, 03 Nov 2017 15:15:38 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=false
# Fri, 03 Nov 2017 15:15:40 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Nov 2017 15:15:40 GMT
ARG GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
# Fri, 03 Nov 2017 15:15:41 GMT
ARG DISTRO_NAME=zookeeper-3.5.3-beta
# Fri, 03 Nov 2017 15:15:59 GMT
# ARGS: DISTRO_NAME=zookeeper-3.5.3-beta GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps;     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Fri, 03 Nov 2017 15:15:59 GMT
WORKDIR /zookeeper-3.5.3-beta
# Fri, 03 Nov 2017 15:16:00 GMT
VOLUME [/data /datalog]
# Fri, 03 Nov 2017 15:16:01 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Nov 2017 15:16:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.5.3-beta/bin ZOOCFGDIR=/conf
# Fri, 03 Nov 2017 15:16:03 GMT
COPY file:b4dcfdc133d1f6c0a1e3ec09a9ebff2ade68a98211ba40543ec3b0d85524b77c in / 
# Fri, 03 Nov 2017 15:16:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 15:16:04 GMT
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
	-	`sha256:d1aa95e15b0278115b55464c0f218eabe4e0ab07f8e15800f49036bb59d5f676`  
		Last Modified: Fri, 03 Nov 2017 15:18:01 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:301cbc5c300e89f2e5931361f3213f2e4e2ab99ddfe025c307569437383e6411`  
		Last Modified: Fri, 03 Nov 2017 15:18:07 GMT  
		Size: 19.2 MB (19221600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9aa0c95ce6b2ddc22cc53b29bc804ec49d4a19f402c8cebe15200691a5845c`  
		Last Modified: Fri, 03 Nov 2017 15:18:02 GMT  
		Size: 603.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.5.3-beta` - linux; 386

```console
$ docker pull zookeeper@sha256:0fc0e2a60f0718f99d64f805a811eb93db7fedf8349b9a914a9ab77bad34954d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.4 MB (77382690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:531c317133eaf77a8c29d85967d8efe3389b2cd1fb36dc9546530222701b1564`
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
# Fri, 03 Nov 2017 14:56:07 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=false
# Fri, 03 Nov 2017 14:56:08 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Nov 2017 14:56:08 GMT
ARG GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
# Fri, 03 Nov 2017 14:56:08 GMT
ARG DISTRO_NAME=zookeeper-3.5.3-beta
# Fri, 03 Nov 2017 14:56:18 GMT
# ARGS: DISTRO_NAME=zookeeper-3.5.3-beta GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps;     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Fri, 03 Nov 2017 14:56:18 GMT
WORKDIR /zookeeper-3.5.3-beta
# Fri, 03 Nov 2017 14:56:18 GMT
VOLUME [/data /datalog]
# Fri, 03 Nov 2017 14:56:18 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Nov 2017 14:56:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.5.3-beta/bin ZOOCFGDIR=/conf
# Fri, 03 Nov 2017 14:56:19 GMT
COPY file:b4dcfdc133d1f6c0a1e3ec09a9ebff2ade68a98211ba40543ec3b0d85524b77c in / 
# Fri, 03 Nov 2017 14:56:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 14:56:19 GMT
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
	-	`sha256:127663fc2018b3c98be46a591e064d44b5aa245500d5206f51c159dd0e2d6684`  
		Last Modified: Fri, 03 Nov 2017 15:13:28 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837746a5698616f3bc28955c88bf4a7abf4fb8508976f7f1b31828bed43e0c9e`  
		Last Modified: Fri, 03 Nov 2017 15:13:30 GMT  
		Size: 19.2 MB (19221721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801f5042de38cde78a2270347e6c7d6d6b601a3633b2ee72d3f3d1e7e357293a`  
		Last Modified: Fri, 03 Nov 2017 15:13:28 GMT  
		Size: 603.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.5.3-beta` - linux; ppc64le

```console
$ docker pull zookeeper@sha256:d82ce3f8f1a05d9b801e3926a6a0803294d355c1ae1d5f94ae11b4c677d4070c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.9 MB (75935951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7a0a9a0a17e816a226789d58c34e4e408a13189395f234acf95aaa8c16c5bac`
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
# Fri, 03 Nov 2017 14:47:17 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=false
# Fri, 03 Nov 2017 14:47:22 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Nov 2017 14:47:23 GMT
ARG GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
# Fri, 03 Nov 2017 14:47:25 GMT
ARG DISTRO_NAME=zookeeper-3.5.3-beta
# Fri, 03 Nov 2017 14:59:55 GMT
# ARGS: DISTRO_NAME=zookeeper-3.5.3-beta GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps;     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Fri, 03 Nov 2017 14:59:57 GMT
WORKDIR /zookeeper-3.5.3-beta
# Fri, 03 Nov 2017 15:00:00 GMT
VOLUME [/data /datalog]
# Fri, 03 Nov 2017 15:00:02 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Nov 2017 15:00:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.5.3-beta/bin ZOOCFGDIR=/conf
# Fri, 03 Nov 2017 15:00:07 GMT
COPY file:b4dcfdc133d1f6c0a1e3ec09a9ebff2ade68a98211ba40543ec3b0d85524b77c in / 
# Fri, 03 Nov 2017 15:00:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 15:00:18 GMT
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
	-	`sha256:eb898a0b3bd086f344b0d81c759eab742e8e7284e973ddcc02195e1b52d603e4`  
		Last Modified: Fri, 03 Nov 2017 15:13:39 GMT  
		Size: 1.4 KB (1370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9954caefee9d8e07c5d0c8341a110569798da5f8e1b6b8a2951eab995425696e`  
		Last Modified: Fri, 03 Nov 2017 15:13:40 GMT  
		Size: 19.2 MB (19221824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a150e320e624ada307eb00fa3b9aa7874d12c44740d3a5e57a82df028d64d3`  
		Last Modified: Fri, 03 Nov 2017 15:13:36 GMT  
		Size: 603.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.5.3-beta` - linux; s390x

```console
$ docker pull zookeeper@sha256:3a34f258090e29e414e4524bd16059ef7d5b6e4bb9eff2f742c702eb2a5d09d0
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.6 MB (75626841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1b1f93f866f33ecf83729046157e08bd18ea47ef3ebe8723c1c9ccaf242e319`
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
# Fri, 03 Nov 2017 14:43:54 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=false
# Fri, 03 Nov 2017 14:43:55 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Nov 2017 14:43:55 GMT
ARG GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
# Fri, 03 Nov 2017 14:43:55 GMT
ARG DISTRO_NAME=zookeeper-3.5.3-beta
# Fri, 03 Nov 2017 14:44:28 GMT
# ARGS: DISTRO_NAME=zookeeper-3.5.3-beta GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps;     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Fri, 03 Nov 2017 14:44:28 GMT
WORKDIR /zookeeper-3.5.3-beta
# Fri, 03 Nov 2017 14:44:28 GMT
VOLUME [/data /datalog]
# Fri, 03 Nov 2017 14:44:28 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Nov 2017 14:44:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.5.3-beta/bin ZOOCFGDIR=/conf
# Fri, 03 Nov 2017 14:44:29 GMT
COPY file:b4dcfdc133d1f6c0a1e3ec09a9ebff2ade68a98211ba40543ec3b0d85524b77c in / 
# Fri, 03 Nov 2017 14:44:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 14:44:29 GMT
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
	-	`sha256:4f068b6c3cb814aacafd87bba3fb069f6efe80adb0fff3570c1e3754ad2b0f70`  
		Last Modified: Fri, 03 Nov 2017 15:13:22 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdbb4b86491ec46746e853fb85ba6bdc171c7e85ec21d96c1bd1ac6cf21114e4`  
		Last Modified: Fri, 03 Nov 2017 15:13:25 GMT  
		Size: 19.2 MB (19222221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9148b67842cf076617f0368250e12ad6872a6834ba77870fa1a903deeeba67e`  
		Last Modified: Fri, 03 Nov 2017 15:13:24 GMT  
		Size: 603.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `zookeeper:latest`

```console
$ docker pull zookeeper@sha256:51c60576ff84fa8a6c02894c0eda676b1cc4a719781e670a0144e4c66a9a7b69
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
$ docker pull zookeeper@sha256:d0688a6b496564326e50a2352bf711544f6d31130a0556d49d943e9c342a7e45
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.9 MB (92875921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9fe1374256f05c0c76f27ce3c51450f6b97cd4a2b9ad8ad4a30387954de28b0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 04 Nov 2017 05:50:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_VERSION=8u131
# Sat, 04 Nov 2017 05:50:53 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 04 Nov 2017 05:51:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 17:44:36 GMT
RUN apk add --no-cache     bash     su-exec
# Thu, 09 Nov 2017 03:40:19 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Thu, 09 Nov 2017 03:40:20 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Thu, 09 Nov 2017 03:41:00 GMT
ARG GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
# Thu, 09 Nov 2017 03:41:00 GMT
ARG DISTRO_NAME=zookeeper-3.4.10
# Thu, 09 Nov 2017 03:41:19 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.10 GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 09 Nov 2017 03:41:19 GMT
WORKDIR /zookeeper-3.4.10
# Thu, 09 Nov 2017 03:41:19 GMT
VOLUME [/data /datalog]
# Thu, 09 Nov 2017 03:41:19 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Thu, 09 Nov 2017 03:41:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.10/bin ZOOCFGDIR=/conf
# Thu, 09 Nov 2017 03:41:20 GMT
COPY file:5cb6c695778a88d60b35a329e20ff9cb9e46290c62beb27a175e94e807db9a1a in / 
# Thu, 09 Nov 2017 03:41:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 Nov 2017 03:41:20 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b27fd892ecb54137910751102dfb835b185276f359a85b2ba953ce4436a4773`  
		Last Modified: Sat, 04 Nov 2017 06:04:34 GMT  
		Size: 54.3 MB (54286387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696ccdcd9ed85e680ee250b8afcfeda756c616786100900237e05fa971a6684`  
		Last Modified: Sat, 04 Nov 2017 17:45:35 GMT  
		Size: 1.1 MB (1143577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a12f6b1c402361e01ac94a5029857585ba6ae745f7fc59ec8887e8f4ab84a9ca`  
		Last Modified: Thu, 09 Nov 2017 03:41:35 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e6981f84cd05fb7406f8ebc3e86e2f086775d1d32f8cd7766e9ebeab104930`  
		Last Modified: Thu, 09 Nov 2017 03:41:56 GMT  
		Size: 35.5 MB (35452443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb79785eedc37cc8cef5e7aad304bd59d747f0cb09d396a5a5dab5267afd1f24`  
		Last Modified: Thu, 09 Nov 2017 03:41:53 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:latest` - linux; arm variant v6

```console
$ docker pull zookeeper@sha256:3ac67318d67b32457c89aefe0c935bf2e4d9e65fe5876bfeb97b91cce0a56a95
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.4 MB (90415574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dba0abfb8d44542314f94c6bbf3d7c48b3f173e6e0e019fd55234507c5c99ee2`
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
# Fri, 03 Nov 2017 15:12:30 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Fri, 03 Nov 2017 15:12:36 GMT
RUN apk add --no-cache     bash     su-exec
# Fri, 03 Nov 2017 15:12:36 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Fri, 03 Nov 2017 15:12:37 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Nov 2017 15:13:01 GMT
ARG GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
# Fri, 03 Nov 2017 15:13:01 GMT
ARG DISTRO_NAME=zookeeper-3.4.10
# Fri, 03 Nov 2017 15:13:15 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.10 GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 03 Nov 2017 15:13:15 GMT
WORKDIR /zookeeper-3.4.10
# Fri, 03 Nov 2017 15:13:16 GMT
VOLUME [/data /datalog]
# Fri, 03 Nov 2017 15:13:16 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Nov 2017 15:13:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.10/bin ZOOCFGDIR=/conf
# Fri, 03 Nov 2017 15:13:16 GMT
COPY file:dab1f2991c403145ae0277be86810aa6ab4838363663db6dfbedba997dfd4bcf in / 
# Fri, 03 Nov 2017 15:13:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 15:13:17 GMT
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
	-	`sha256:75d9852f6a63df48294a7ca3894097f932f3055b54d7a22cd0f9364d1ff4e5eb`  
		Last Modified: Fri, 03 Nov 2017 15:13:53 GMT  
		Size: 1.1 MB (1105776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26119565cb519c52b0fd89f90484878c8476db234880db7dc8ba959b5d48c50`  
		Last Modified: Fri, 03 Nov 2017 15:13:52 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2f7516e4d69d18e792d3d2771ba433504cdf6a7a65ae994f6d9c49f450cd18`  
		Last Modified: Fri, 03 Nov 2017 15:14:06 GMT  
		Size: 35.5 MB (35452074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1693b23231eac652b2a9a3f849a694c5bc3f629dbbeffe21a9647fab98df9f76`  
		Last Modified: Fri, 03 Nov 2017 15:13:59 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:latest` - linux; arm64 variant v8

```console
$ docker pull zookeeper@sha256:017709f8110598c34aa6a501eb1012faddc62af19237c3b3132d63a14dcc07d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.5 MB (91468721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06ce10638e7925f23e893b4074c51a2afed3476cf398b0b6832e728cf453cf20`
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
# Fri, 03 Nov 2017 15:13:02 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Fri, 03 Nov 2017 15:13:10 GMT
RUN apk add --no-cache     bash     su-exec
# Fri, 03 Nov 2017 15:13:10 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Fri, 03 Nov 2017 15:13:12 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Nov 2017 15:13:52 GMT
ARG GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
# Fri, 03 Nov 2017 15:13:53 GMT
ARG DISTRO_NAME=zookeeper-3.4.10
# Fri, 03 Nov 2017 15:15:08 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.10 GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 03 Nov 2017 15:15:09 GMT
WORKDIR /zookeeper-3.4.10
# Fri, 03 Nov 2017 15:15:09 GMT
VOLUME [/data /datalog]
# Fri, 03 Nov 2017 15:15:10 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Nov 2017 15:15:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.10/bin ZOOCFGDIR=/conf
# Fri, 03 Nov 2017 15:15:12 GMT
COPY file:dab1f2991c403145ae0277be86810aa6ab4838363663db6dfbedba997dfd4bcf in / 
# Fri, 03 Nov 2017 15:15:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 15:15:13 GMT
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
	-	`sha256:89f59397c7deaa19c431c40fc643d5c8fd9607297a245169d3fc775338b076df`  
		Last Modified: Fri, 03 Nov 2017 15:16:27 GMT  
		Size: 1.1 MB (1092219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a77f45de1c838a46b20e1574064a6c291238a234b6ba03fbb98d734fad85b32`  
		Last Modified: Fri, 03 Nov 2017 15:16:27 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2e5fd4c466e1264eea6ff2846f1f0d813bf7ffc38d49edef002e6eef38544f`  
		Last Modified: Fri, 03 Nov 2017 15:17:15 GMT  
		Size: 35.5 MB (35452046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34f177ad1e349405ecb50913e6bcbd5af83b10174b90bfb660b12605ead0358`  
		Last Modified: Fri, 03 Nov 2017 15:17:04 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:latest` - linux; 386

```console
$ docker pull zookeeper@sha256:d9dbee3d94ee986932720b20e3b42d4274bd71d76aacb7e0b6bc015cd7afa93a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.6 MB (93613084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:277485b01c98eda1ba1b19e52358ef4b7486aea78bea3f8d1779d082c0b12456`
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
# Fri, 03 Nov 2017 14:54:38 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Fri, 03 Nov 2017 14:54:46 GMT
RUN apk add --no-cache     bash     su-exec
# Fri, 03 Nov 2017 14:54:46 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Fri, 03 Nov 2017 14:54:47 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Nov 2017 14:55:31 GMT
ARG GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
# Fri, 03 Nov 2017 14:55:32 GMT
ARG DISTRO_NAME=zookeeper-3.4.10
# Fri, 03 Nov 2017 14:55:42 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.10 GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 03 Nov 2017 14:55:42 GMT
WORKDIR /zookeeper-3.4.10
# Fri, 03 Nov 2017 14:55:42 GMT
VOLUME [/data /datalog]
# Fri, 03 Nov 2017 14:55:42 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Nov 2017 14:55:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.10/bin ZOOCFGDIR=/conf
# Fri, 03 Nov 2017 14:55:43 GMT
COPY file:dab1f2991c403145ae0277be86810aa6ab4838363663db6dfbedba997dfd4bcf in / 
# Fri, 03 Nov 2017 14:55:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 14:55:43 GMT
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
	-	`sha256:f102f49d2963fdc76980522eeca2e704d805735e443b77f4f81c3567bced9e1c`  
		Last Modified: Fri, 03 Nov 2017 15:12:39 GMT  
		Size: 1.2 MB (1190586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8ca4151b289fe12f771d6ce50a475b77cc9df4ddefca7ea324e5b77c0a8611`  
		Last Modified: Fri, 03 Nov 2017 15:12:38 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39eb34bedf76e0b1dd1f1664b7096ddb9bbec2213d43d9210df2eaa4d6bcaac8`  
		Last Modified: Fri, 03 Nov 2017 15:13:02 GMT  
		Size: 35.5 MB (35452157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b8da38113166804c7591517d274668684afe287f6b9133ad4632fbf4f6fb57`  
		Last Modified: Fri, 03 Nov 2017 15:12:58 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:latest` - linux; ppc64le

```console
$ docker pull zookeeper@sha256:e4fc888adb7cac47affafdb83772afb2f4c5b4a78a078e5ab269c8ef95fc2d0f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.2 MB (92166450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e177d8de137286dd21e3e647c8bf3103e3f8a56735db442545345e7fab9b1dd3`
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
# Fri, 03 Nov 2017 14:45:19 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Fri, 03 Nov 2017 14:45:29 GMT
RUN apk add --no-cache     bash     su-exec
# Fri, 03 Nov 2017 14:45:31 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Fri, 03 Nov 2017 14:45:36 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Nov 2017 14:46:48 GMT
ARG GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
# Fri, 03 Nov 2017 14:46:50 GMT
ARG DISTRO_NAME=zookeeper-3.4.10
# Fri, 03 Nov 2017 14:58:26 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.10 GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 03 Nov 2017 14:58:28 GMT
WORKDIR /zookeeper-3.4.10
# Fri, 03 Nov 2017 14:58:31 GMT
VOLUME [/data /datalog]
# Fri, 03 Nov 2017 14:58:33 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Nov 2017 14:58:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.10/bin ZOOCFGDIR=/conf
# Fri, 03 Nov 2017 14:58:38 GMT
COPY file:dab1f2991c403145ae0277be86810aa6ab4838363663db6dfbedba997dfd4bcf in / 
# Fri, 03 Nov 2017 14:58:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 14:58:42 GMT
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
	-	`sha256:6a52bec11b1a38579a39bca842e5248847775b720809618a8769edeedab23190`  
		Last Modified: Fri, 03 Nov 2017 15:12:46 GMT  
		Size: 1.1 MB (1134616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b086a53d6866f0a5d12bb40136746eccab067966faa0d6d0060d8670d80e05`  
		Last Modified: Fri, 03 Nov 2017 15:12:45 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb31b479bfee11af4d135b1c3d22a40f89fa32cba6a575da76a73ec3c2051e1f`  
		Last Modified: Fri, 03 Nov 2017 15:13:11 GMT  
		Size: 35.5 MB (35452444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d828eb13ad2f794926464f0c996feb7d6405c1a2b70d1caf7e8a155e9d92992`  
		Last Modified: Fri, 03 Nov 2017 15:13:06 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:latest` - linux; s390x

```console
$ docker pull zookeeper@sha256:662a66981626db8848001e82a01e346db31d9f0cc2dadb7c03a05a93e1046232
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.9 MB (91857041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c2fbcc9a0a4950cfe5e126fca7fee1ad14cf85a302a4dec6647895dd4151353`
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
# Fri, 03 Nov 2017 14:42:34 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Fri, 03 Nov 2017 14:42:37 GMT
RUN apk add --no-cache     bash     su-exec
# Fri, 03 Nov 2017 14:42:37 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_MAX_CLIENT_CNXNS=60
# Fri, 03 Nov 2017 14:42:38 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR"
# Fri, 03 Nov 2017 14:43:06 GMT
ARG GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
# Fri, 03 Nov 2017 14:43:06 GMT
ARG DISTRO_NAME=zookeeper-3.4.10
# Fri, 03 Nov 2017 14:43:38 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.10 GPG_KEY=C823E3E5B12AF29C67F81976F5CECB3CB5E9BD2D
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 03 Nov 2017 14:43:39 GMT
WORKDIR /zookeeper-3.4.10
# Fri, 03 Nov 2017 14:43:39 GMT
VOLUME [/data /datalog]
# Fri, 03 Nov 2017 14:43:39 GMT
EXPOSE 2181/tcp 2888/tcp 3888/tcp
# Fri, 03 Nov 2017 14:43:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.10/bin ZOOCFGDIR=/conf
# Fri, 03 Nov 2017 14:43:39 GMT
COPY file:dab1f2991c403145ae0277be86810aa6ab4838363663db6dfbedba997dfd4bcf in / 
# Fri, 03 Nov 2017 14:43:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 14:43:40 GMT
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
	-	`sha256:853bc4cb3e6d0c3661d3b54f70d2c67132a2d2fa341124d440b9eeff2b59a5d6`  
		Last Modified: Fri, 03 Nov 2017 15:12:50 GMT  
		Size: 1.2 MB (1195375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7781d463342b5b5b77efd8f265932c999a7ae57187bb66c0709f8b49a72dd7fa`  
		Last Modified: Fri, 03 Nov 2017 15:12:50 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5d077993a3c645bbaad075f606f5dfa2187620419319ce1354478712ac25373`  
		Last Modified: Fri, 03 Nov 2017 15:13:06 GMT  
		Size: 35.5 MB (35452504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:419b18201d4ccc075d8a3f186b907d568a914dc0ef76ce1ecdece04ea8f27257`  
		Last Modified: Fri, 03 Nov 2017 15:13:02 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
