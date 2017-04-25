<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `neo4j`

-	[`neo4j:3.1.3`](#neo4j313)
-	[`neo4j:3.1`](#neo4j31)
-	[`neo4j:latest`](#neo4jlatest)
-	[`neo4j:3.1.3-enterprise`](#neo4j313-enterprise)
-	[`neo4j:3.1-enterprise`](#neo4j31-enterprise)
-	[`neo4j:enterprise`](#neo4jenterprise)
-	[`neo4j:3.1.2`](#neo4j312)
-	[`neo4j:3.1.2-enterprise`](#neo4j312-enterprise)
-	[`neo4j:3.1.1`](#neo4j311)
-	[`neo4j:3.1.1-enterprise`](#neo4j311-enterprise)
-	[`neo4j:3.1.0`](#neo4j310)
-	[`neo4j:3.1.0-enterprise`](#neo4j310-enterprise)
-	[`neo4j:3.0.9`](#neo4j309)
-	[`neo4j:3.0`](#neo4j30)
-	[`neo4j:3.0.9-enterprise`](#neo4j309-enterprise)
-	[`neo4j:3.0-enterprise`](#neo4j30-enterprise)
-	[`neo4j:3.0.8`](#neo4j308)
-	[`neo4j:3.0.8-enterprise`](#neo4j308-enterprise)
-	[`neo4j:3.0.7`](#neo4j307)
-	[`neo4j:3.0.7-enterprise`](#neo4j307-enterprise)
-	[`neo4j:3.0.6`](#neo4j306)
-	[`neo4j:3.0.6-enterprise`](#neo4j306-enterprise)
-	[`neo4j:3.0.5`](#neo4j305)
-	[`neo4j:3.0.5-enterprise`](#neo4j305-enterprise)
-	[`neo4j:3.0.4`](#neo4j304)
-	[`neo4j:3.0.4-enterprise`](#neo4j304-enterprise)
-	[`neo4j:3.0.3`](#neo4j303)
-	[`neo4j:3.0.3-enterprise`](#neo4j303-enterprise)
-	[`neo4j:3.0.2`](#neo4j302)
-	[`neo4j:3.0.2-enterprise`](#neo4j302-enterprise)
-	[`neo4j:3.0.1`](#neo4j301)
-	[`neo4j:3.0.1-enterprise`](#neo4j301-enterprise)
-	[`neo4j:3.0.0`](#neo4j300)
-	[`neo4j:3.0.0-enterprise`](#neo4j300-enterprise)
-	[`neo4j:2.3.10`](#neo4j2310)
-	[`neo4j:2.3`](#neo4j23)
-	[`neo4j:2.3.10-enterprise`](#neo4j2310-enterprise)
-	[`neo4j:2.3-enterprise`](#neo4j23-enterprise)
-	[`neo4j:2.3.9`](#neo4j239)
-	[`neo4j:2.3.9-enterprise`](#neo4j239-enterprise)
-	[`neo4j:2.3.8`](#neo4j238)
-	[`neo4j:2.3.8-enterprise`](#neo4j238-enterprise)
-	[`neo4j:2.3.7`](#neo4j237)
-	[`neo4j:2.3.7-enterprise`](#neo4j237-enterprise)
-	[`neo4j:2.3.6`](#neo4j236)
-	[`neo4j:2.3.6-enterprise`](#neo4j236-enterprise)
-	[`neo4j:2.3.5`](#neo4j235)
-	[`neo4j:2.3.5-enterprise`](#neo4j235-enterprise)
-	[`neo4j:2.3.4`](#neo4j234)
-	[`neo4j:2.3.4-enterprise`](#neo4j234-enterprise)
-	[`neo4j:2.3.3`](#neo4j233)
-	[`neo4j:2.3.3-enterprise`](#neo4j233-enterprise)
-	[`neo4j:2.3.2`](#neo4j232)
-	[`neo4j:2.3.2-enterprise`](#neo4j232-enterprise)
-	[`neo4j:2.3.1`](#neo4j231)
-	[`neo4j:2.3.1-enterprise`](#neo4j231-enterprise)
-	[`neo4j:2.3.0`](#neo4j230)
-	[`neo4j:2.3.0-enterprise`](#neo4j230-enterprise)

## `neo4j:3.1.3`

```console
$ docker pull neo4j@sha256:1e3d20fff2c966c0b6e8c32a02bf0bfcea2031805223fe0f81c65415320b0b82
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.1.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.7 MB (134729906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e98f0cfead8d92805d122e5d9eb396bc29d8e6b43943d4068b63b4e0e954174`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 07 Mar 2017 19:21:09 GMT
RUN apk add --no-cache --quiet     bash     curl
# Wed, 29 Mar 2017 17:23:22 GMT
ENV NEO4J_SHA256=f0d79b4a98672dc527b708113644b8961ba824668c354e61dc4d2a16d8484880
# Wed, 29 Mar 2017 17:23:23 GMT
ENV NEO4J_TARBALL=neo4j-community-3.1.3-unix.tar.gz
# Wed, 29 Mar 2017 17:23:23 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.3-unix.tar.gz
# Wed, 29 Mar 2017 17:23:24 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 29 Mar 2017 17:23:41 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.3-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 29 Mar 2017 17:23:41 GMT
WORKDIR /var/lib/neo4j
# Wed, 29 Mar 2017 17:23:42 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.3-unix.tar.gz
RUN mv data /data     && ln -s /data
# Wed, 29 Mar 2017 17:23:43 GMT
VOLUME [/data]
# Wed, 29 Mar 2017 17:23:43 GMT
COPY file:b3816abc443e12ac0a577d8d6b05fc265deff8e8a9af15343137e84d969c2d1c in /docker-entrypoint.sh 
# Wed, 29 Mar 2017 17:23:44 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 29 Mar 2017 17:23:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Mar 2017 17:23:45 GMT
CMD ["neo4j"]
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
	-	`sha256:2b3f029f8f8cb0efd4ae3304e88746be778dae8aa98bfaf9340afcc0d6aad033`  
		Last Modified: Tue, 07 Mar 2017 19:36:19 GMT  
		Size: 1.5 MB (1456711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a15020d399ee091e11040d35d77f4ac8cac45abe8b34c0c4bf593e11099f587`  
		Last Modified: Wed, 29 Mar 2017 17:24:39 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:156e41276f3a052ffb0ceac9d3da05a1b62f70c80efed78c2840edc85246f404`  
		Last Modified: Wed, 29 Mar 2017 17:24:46 GMT  
		Size: 77.6 MB (77554971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27349eb6f9a17ae0bc22bc61616d136e6a028c47a7df15dec78e1ca0742b8180`  
		Last Modified: Wed, 29 Mar 2017 17:24:38 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8e534a31286d539ae610617ccbb3f51ed82cd29ba82f7ba1e91d7fcc3195183`  
		Last Modified: Wed, 29 Mar 2017 17:24:38 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.1`

```console
$ docker pull neo4j@sha256:1e3d20fff2c966c0b6e8c32a02bf0bfcea2031805223fe0f81c65415320b0b82
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.7 MB (134729906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e98f0cfead8d92805d122e5d9eb396bc29d8e6b43943d4068b63b4e0e954174`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 07 Mar 2017 19:21:09 GMT
RUN apk add --no-cache --quiet     bash     curl
# Wed, 29 Mar 2017 17:23:22 GMT
ENV NEO4J_SHA256=f0d79b4a98672dc527b708113644b8961ba824668c354e61dc4d2a16d8484880
# Wed, 29 Mar 2017 17:23:23 GMT
ENV NEO4J_TARBALL=neo4j-community-3.1.3-unix.tar.gz
# Wed, 29 Mar 2017 17:23:23 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.3-unix.tar.gz
# Wed, 29 Mar 2017 17:23:24 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 29 Mar 2017 17:23:41 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.3-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 29 Mar 2017 17:23:41 GMT
WORKDIR /var/lib/neo4j
# Wed, 29 Mar 2017 17:23:42 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.3-unix.tar.gz
RUN mv data /data     && ln -s /data
# Wed, 29 Mar 2017 17:23:43 GMT
VOLUME [/data]
# Wed, 29 Mar 2017 17:23:43 GMT
COPY file:b3816abc443e12ac0a577d8d6b05fc265deff8e8a9af15343137e84d969c2d1c in /docker-entrypoint.sh 
# Wed, 29 Mar 2017 17:23:44 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 29 Mar 2017 17:23:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Mar 2017 17:23:45 GMT
CMD ["neo4j"]
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
	-	`sha256:2b3f029f8f8cb0efd4ae3304e88746be778dae8aa98bfaf9340afcc0d6aad033`  
		Last Modified: Tue, 07 Mar 2017 19:36:19 GMT  
		Size: 1.5 MB (1456711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a15020d399ee091e11040d35d77f4ac8cac45abe8b34c0c4bf593e11099f587`  
		Last Modified: Wed, 29 Mar 2017 17:24:39 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:156e41276f3a052ffb0ceac9d3da05a1b62f70c80efed78c2840edc85246f404`  
		Last Modified: Wed, 29 Mar 2017 17:24:46 GMT  
		Size: 77.6 MB (77554971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27349eb6f9a17ae0bc22bc61616d136e6a028c47a7df15dec78e1ca0742b8180`  
		Last Modified: Wed, 29 Mar 2017 17:24:38 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8e534a31286d539ae610617ccbb3f51ed82cd29ba82f7ba1e91d7fcc3195183`  
		Last Modified: Wed, 29 Mar 2017 17:24:38 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:latest`

```console
$ docker pull neo4j@sha256:1e3d20fff2c966c0b6e8c32a02bf0bfcea2031805223fe0f81c65415320b0b82
```

-	Platforms:
	-	linux; amd64

### `neo4j:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.7 MB (134729906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e98f0cfead8d92805d122e5d9eb396bc29d8e6b43943d4068b63b4e0e954174`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 07 Mar 2017 19:21:09 GMT
RUN apk add --no-cache --quiet     bash     curl
# Wed, 29 Mar 2017 17:23:22 GMT
ENV NEO4J_SHA256=f0d79b4a98672dc527b708113644b8961ba824668c354e61dc4d2a16d8484880
# Wed, 29 Mar 2017 17:23:23 GMT
ENV NEO4J_TARBALL=neo4j-community-3.1.3-unix.tar.gz
# Wed, 29 Mar 2017 17:23:23 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.3-unix.tar.gz
# Wed, 29 Mar 2017 17:23:24 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 29 Mar 2017 17:23:41 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.3-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 29 Mar 2017 17:23:41 GMT
WORKDIR /var/lib/neo4j
# Wed, 29 Mar 2017 17:23:42 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.3-unix.tar.gz
RUN mv data /data     && ln -s /data
# Wed, 29 Mar 2017 17:23:43 GMT
VOLUME [/data]
# Wed, 29 Mar 2017 17:23:43 GMT
COPY file:b3816abc443e12ac0a577d8d6b05fc265deff8e8a9af15343137e84d969c2d1c in /docker-entrypoint.sh 
# Wed, 29 Mar 2017 17:23:44 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 29 Mar 2017 17:23:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Mar 2017 17:23:45 GMT
CMD ["neo4j"]
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
	-	`sha256:2b3f029f8f8cb0efd4ae3304e88746be778dae8aa98bfaf9340afcc0d6aad033`  
		Last Modified: Tue, 07 Mar 2017 19:36:19 GMT  
		Size: 1.5 MB (1456711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a15020d399ee091e11040d35d77f4ac8cac45abe8b34c0c4bf593e11099f587`  
		Last Modified: Wed, 29 Mar 2017 17:24:39 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:156e41276f3a052ffb0ceac9d3da05a1b62f70c80efed78c2840edc85246f404`  
		Last Modified: Wed, 29 Mar 2017 17:24:46 GMT  
		Size: 77.6 MB (77554971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27349eb6f9a17ae0bc22bc61616d136e6a028c47a7df15dec78e1ca0742b8180`  
		Last Modified: Wed, 29 Mar 2017 17:24:38 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8e534a31286d539ae610617ccbb3f51ed82cd29ba82f7ba1e91d7fcc3195183`  
		Last Modified: Wed, 29 Mar 2017 17:24:38 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.1.3-enterprise`

```console
$ docker pull neo4j@sha256:92e35e23cc10146ff0d65a3e499e7707c0fbda11fdec55e5ddddf6bcf9a6baf6
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.1.3-enterprise` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.2 MB (145247257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff8bb1f124f8989f778a1b053412133d821f2480a68bd65ad7968cef061ac0e0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 07 Mar 2017 19:21:09 GMT
RUN apk add --no-cache --quiet     bash     curl
# Wed, 29 Mar 2017 17:23:46 GMT
ENV NEO4J_SHA256=b784a61228bdc31cbc843009e4d36d3e2aee7662f8b40bd608b8759de26b77d5
# Wed, 29 Mar 2017 17:23:46 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.1.3-unix.tar.gz
# Wed, 29 Mar 2017 17:23:46 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.3-unix.tar.gz
# Wed, 29 Mar 2017 17:23:47 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 29 Mar 2017 17:24:06 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.3-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 29 Mar 2017 17:24:06 GMT
WORKDIR /var/lib/neo4j
# Wed, 29 Mar 2017 17:24:08 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.3-unix.tar.gz
RUN mv data /data     && ln -s /data
# Wed, 29 Mar 2017 17:24:08 GMT
VOLUME [/data]
# Wed, 29 Mar 2017 17:24:09 GMT
COPY file:b3816abc443e12ac0a577d8d6b05fc265deff8e8a9af15343137e84d969c2d1c in /docker-entrypoint.sh 
# Wed, 29 Mar 2017 17:24:09 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 29 Mar 2017 17:24:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Mar 2017 17:24:10 GMT
CMD ["neo4j"]
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
	-	`sha256:2b3f029f8f8cb0efd4ae3304e88746be778dae8aa98bfaf9340afcc0d6aad033`  
		Last Modified: Tue, 07 Mar 2017 19:36:19 GMT  
		Size: 1.5 MB (1456711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd82f9057d904217b7e4feb62263ba340f069821cc8cb3dd58b9e9889cc3b601`  
		Last Modified: Wed, 29 Mar 2017 17:25:50 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a7d6314c370a0783be7d83d91bf44b44e70af75a1c240becb97fc1911cb82b`  
		Last Modified: Wed, 29 Mar 2017 17:26:02 GMT  
		Size: 88.1 MB (88072322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5aab06ae30a1e2eca2fa792e64afebcfcf6aa1a424654d6d879e91a7d1c270`  
		Last Modified: Wed, 29 Mar 2017 17:25:51 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22dc1ef4827ecbe83e12262ce198a843ef8807d1d2fa2a0161ec5f44619ca508`  
		Last Modified: Wed, 29 Mar 2017 17:25:51 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.1-enterprise`

```console
$ docker pull neo4j@sha256:92e35e23cc10146ff0d65a3e499e7707c0fbda11fdec55e5ddddf6bcf9a6baf6
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.1-enterprise` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.2 MB (145247257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff8bb1f124f8989f778a1b053412133d821f2480a68bd65ad7968cef061ac0e0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 07 Mar 2017 19:21:09 GMT
RUN apk add --no-cache --quiet     bash     curl
# Wed, 29 Mar 2017 17:23:46 GMT
ENV NEO4J_SHA256=b784a61228bdc31cbc843009e4d36d3e2aee7662f8b40bd608b8759de26b77d5
# Wed, 29 Mar 2017 17:23:46 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.1.3-unix.tar.gz
# Wed, 29 Mar 2017 17:23:46 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.3-unix.tar.gz
# Wed, 29 Mar 2017 17:23:47 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 29 Mar 2017 17:24:06 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.3-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 29 Mar 2017 17:24:06 GMT
WORKDIR /var/lib/neo4j
# Wed, 29 Mar 2017 17:24:08 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.3-unix.tar.gz
RUN mv data /data     && ln -s /data
# Wed, 29 Mar 2017 17:24:08 GMT
VOLUME [/data]
# Wed, 29 Mar 2017 17:24:09 GMT
COPY file:b3816abc443e12ac0a577d8d6b05fc265deff8e8a9af15343137e84d969c2d1c in /docker-entrypoint.sh 
# Wed, 29 Mar 2017 17:24:09 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 29 Mar 2017 17:24:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Mar 2017 17:24:10 GMT
CMD ["neo4j"]
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
	-	`sha256:2b3f029f8f8cb0efd4ae3304e88746be778dae8aa98bfaf9340afcc0d6aad033`  
		Last Modified: Tue, 07 Mar 2017 19:36:19 GMT  
		Size: 1.5 MB (1456711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd82f9057d904217b7e4feb62263ba340f069821cc8cb3dd58b9e9889cc3b601`  
		Last Modified: Wed, 29 Mar 2017 17:25:50 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a7d6314c370a0783be7d83d91bf44b44e70af75a1c240becb97fc1911cb82b`  
		Last Modified: Wed, 29 Mar 2017 17:26:02 GMT  
		Size: 88.1 MB (88072322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5aab06ae30a1e2eca2fa792e64afebcfcf6aa1a424654d6d879e91a7d1c270`  
		Last Modified: Wed, 29 Mar 2017 17:25:51 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22dc1ef4827ecbe83e12262ce198a843ef8807d1d2fa2a0161ec5f44619ca508`  
		Last Modified: Wed, 29 Mar 2017 17:25:51 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:enterprise`

```console
$ docker pull neo4j@sha256:92e35e23cc10146ff0d65a3e499e7707c0fbda11fdec55e5ddddf6bcf9a6baf6
```

-	Platforms:
	-	linux; amd64

### `neo4j:enterprise` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.2 MB (145247257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff8bb1f124f8989f778a1b053412133d821f2480a68bd65ad7968cef061ac0e0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 07 Mar 2017 19:21:09 GMT
RUN apk add --no-cache --quiet     bash     curl
# Wed, 29 Mar 2017 17:23:46 GMT
ENV NEO4J_SHA256=b784a61228bdc31cbc843009e4d36d3e2aee7662f8b40bd608b8759de26b77d5
# Wed, 29 Mar 2017 17:23:46 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.1.3-unix.tar.gz
# Wed, 29 Mar 2017 17:23:46 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.3-unix.tar.gz
# Wed, 29 Mar 2017 17:23:47 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 29 Mar 2017 17:24:06 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.3-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 29 Mar 2017 17:24:06 GMT
WORKDIR /var/lib/neo4j
# Wed, 29 Mar 2017 17:24:08 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.3-unix.tar.gz
RUN mv data /data     && ln -s /data
# Wed, 29 Mar 2017 17:24:08 GMT
VOLUME [/data]
# Wed, 29 Mar 2017 17:24:09 GMT
COPY file:b3816abc443e12ac0a577d8d6b05fc265deff8e8a9af15343137e84d969c2d1c in /docker-entrypoint.sh 
# Wed, 29 Mar 2017 17:24:09 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 29 Mar 2017 17:24:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Mar 2017 17:24:10 GMT
CMD ["neo4j"]
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
	-	`sha256:2b3f029f8f8cb0efd4ae3304e88746be778dae8aa98bfaf9340afcc0d6aad033`  
		Last Modified: Tue, 07 Mar 2017 19:36:19 GMT  
		Size: 1.5 MB (1456711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd82f9057d904217b7e4feb62263ba340f069821cc8cb3dd58b9e9889cc3b601`  
		Last Modified: Wed, 29 Mar 2017 17:25:50 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a7d6314c370a0783be7d83d91bf44b44e70af75a1c240becb97fc1911cb82b`  
		Last Modified: Wed, 29 Mar 2017 17:26:02 GMT  
		Size: 88.1 MB (88072322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5aab06ae30a1e2eca2fa792e64afebcfcf6aa1a424654d6d879e91a7d1c270`  
		Last Modified: Wed, 29 Mar 2017 17:25:51 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22dc1ef4827ecbe83e12262ce198a843ef8807d1d2fa2a0161ec5f44619ca508`  
		Last Modified: Wed, 29 Mar 2017 17:25:51 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.1.2`

```console
$ docker pull neo4j@sha256:ce7c869a731dfae38732f6a4453938c11e2231da6c5128e521958df240c3bfee
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.1.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.7 MB (134727010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5ffed21b20d7ec9cbbbe84d27ee69d3fe02a6a23f6922ca6e96b7c9ff79230c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 07 Mar 2017 19:21:09 GMT
RUN apk add --no-cache --quiet     bash     curl
# Fri, 10 Mar 2017 21:25:19 GMT
ENV NEO4J_SHA256=80e8729ae7d93696f80133c2815d2631040714122efa2af0a01e735953d56b4f
# Fri, 10 Mar 2017 21:25:19 GMT
ENV NEO4J_TARBALL=neo4j-community-3.1.2-unix.tar.gz
# Fri, 10 Mar 2017 21:25:20 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.2-unix.tar.gz
# Fri, 10 Mar 2017 21:25:20 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Fri, 10 Mar 2017 21:25:35 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.2-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Fri, 10 Mar 2017 21:25:36 GMT
WORKDIR /var/lib/neo4j
# Fri, 10 Mar 2017 21:25:37 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.2-unix.tar.gz
RUN mv data /data     && ln -s /data
# Fri, 10 Mar 2017 21:25:37 GMT
VOLUME [/data]
# Thu, 16 Mar 2017 16:34:20 GMT
COPY file:7027e5c072ff2b8592309c993e7afcb2e7195c81e840c6b7d3d5b2d98c80b481 in /docker-entrypoint.sh 
# Thu, 16 Mar 2017 16:34:21 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Thu, 16 Mar 2017 16:34:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 16 Mar 2017 16:34:22 GMT
CMD ["neo4j"]
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
	-	`sha256:2b3f029f8f8cb0efd4ae3304e88746be778dae8aa98bfaf9340afcc0d6aad033`  
		Last Modified: Tue, 07 Mar 2017 19:36:19 GMT  
		Size: 1.5 MB (1456711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1be074b03cff21306fcdcafa3e11b6c15275b963fcbb21d68ec63d45647f82`  
		Last Modified: Fri, 10 Mar 2017 21:26:27 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39fa195870709eaa6b63e9e0d90bb55cfaccbd8a257ed06868863d63a2e7502`  
		Last Modified: Fri, 10 Mar 2017 21:26:33 GMT  
		Size: 77.6 MB (77552150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1a02f2fbbda0df25fa7b18f8df42605d2135ebce82a552f5d9f728b9cd7899`  
		Last Modified: Fri, 10 Mar 2017 21:26:27 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aa7fae5d37074b31de66001b7be00ae3e9b7c34e61b1d2ac09808b690ff3dc7`  
		Last Modified: Thu, 16 Mar 2017 16:35:27 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.1.2-enterprise`

```console
$ docker pull neo4j@sha256:73a1d375bdf845826952d48618fef1afcdb6c4c1c06ffe22aceb6696becdb37d
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.1.2-enterprise` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.2 MB (145237013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66cea51061c872ca66ca5f31ca1701e5ecaa9997d502a06bb80100d9aad171c7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 07 Mar 2017 19:21:09 GMT
RUN apk add --no-cache --quiet     bash     curl
# Fri, 10 Mar 2017 21:25:40 GMT
ENV NEO4J_SHA256=4963c9c2169b1005a3a193a39289f544766ad67902fbefdb25c497d75e5e2be1
# Fri, 10 Mar 2017 21:25:40 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.1.2-unix.tar.gz
# Fri, 10 Mar 2017 21:25:41 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.2-unix.tar.gz
# Fri, 10 Mar 2017 21:25:41 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Fri, 10 Mar 2017 21:25:56 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.2-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Fri, 10 Mar 2017 21:25:57 GMT
WORKDIR /var/lib/neo4j
# Fri, 10 Mar 2017 21:25:58 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.2-unix.tar.gz
RUN mv data /data     && ln -s /data
# Fri, 10 Mar 2017 21:25:58 GMT
VOLUME [/data]
# Thu, 16 Mar 2017 16:34:23 GMT
COPY file:7027e5c072ff2b8592309c993e7afcb2e7195c81e840c6b7d3d5b2d98c80b481 in /docker-entrypoint.sh 
# Thu, 16 Mar 2017 16:34:24 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Thu, 16 Mar 2017 16:34:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 16 Mar 2017 16:34:25 GMT
CMD ["neo4j"]
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
	-	`sha256:2b3f029f8f8cb0efd4ae3304e88746be778dae8aa98bfaf9340afcc0d6aad033`  
		Last Modified: Tue, 07 Mar 2017 19:36:19 GMT  
		Size: 1.5 MB (1456711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf5eb749c8eb7b9a08b246b380b9dd8cf42ad2775be480e8fc822b0571cd2f0`  
		Last Modified: Fri, 10 Mar 2017 21:27:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a74e44e86ebf8bbdd7cfdecd4ebce288ddfb86b9ef46ccea0816730d6034b1`  
		Last Modified: Fri, 10 Mar 2017 21:27:42 GMT  
		Size: 88.1 MB (88062157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f165408c37892593ef1ebffbc46f60d3c74b2729b046a3fa042a6d4ed81f4d7b`  
		Last Modified: Fri, 10 Mar 2017 21:27:34 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4cb634190e7890d89611633afae0622169a79ee46d6f1e92b5daa6ac4e61a47`  
		Last Modified: Thu, 16 Mar 2017 16:36:26 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.1.1`

```console
$ docker pull neo4j@sha256:17fb4acc728916dbee7075a5633b9e73b07072cf2a6358d8492e2f8707f7dee5
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.1.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.6 MB (134575948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e17e2eea5d1358b0cce88e41b2f29e52c25f16e9bd194b4c74a3a0077d84f0a0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 07 Mar 2017 19:21:09 GMT
RUN apk add --no-cache --quiet     bash     curl
# Tue, 07 Mar 2017 19:22:07 GMT
ENV NEO4J_SHA256=7d66389ad683f66664f11a79314ce4d434ab70ade9c02601ee74e59cd729e2cb
# Tue, 07 Mar 2017 19:22:08 GMT
ENV NEO4J_TARBALL=neo4j-community-3.1.1-unix.tar.gz
# Tue, 07 Mar 2017 19:22:09 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.1-unix.tar.gz
# Tue, 07 Mar 2017 19:22:10 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 07 Mar 2017 19:22:23 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.1-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 07 Mar 2017 19:22:23 GMT
WORKDIR /var/lib/neo4j
# Tue, 07 Mar 2017 19:22:24 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.1-unix.tar.gz
RUN mv data /data     && ln -s /data
# Tue, 07 Mar 2017 19:22:25 GMT
VOLUME [/data]
# Tue, 07 Mar 2017 19:22:26 GMT
COPY file:77937095ede0ebf8d922e2d061f12dc5de64a045c38a47b59579caac7c90f6f6 in /docker-entrypoint.sh 
# Tue, 07 Mar 2017 19:22:27 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 07 Mar 2017 19:22:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 07 Mar 2017 19:22:29 GMT
CMD ["neo4j"]
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
	-	`sha256:2b3f029f8f8cb0efd4ae3304e88746be778dae8aa98bfaf9340afcc0d6aad033`  
		Last Modified: Tue, 07 Mar 2017 19:36:19 GMT  
		Size: 1.5 MB (1456711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ce473b0bbd7053dc9066eced5a127af843f9a1ebf264d95c74dd93b452d4ea`  
		Last Modified: Tue, 07 Mar 2017 19:37:19 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19fc26e289149c4c506959607a3b26ff039abd3cb21fe4e4bc553e63259a06bc`  
		Last Modified: Tue, 07 Mar 2017 19:37:26 GMT  
		Size: 77.4 MB (77401094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b3430403fd3d2dd72d44033faa82c74fca9f4eab843043faf6606fc432484d`  
		Last Modified: Tue, 07 Mar 2017 19:37:20 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e08e893796e42a810fe0671dc54bff510760f1251fa2eadb3121e1cd3b9db0`  
		Last Modified: Tue, 07 Mar 2017 19:37:19 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.1.1-enterprise`

```console
$ docker pull neo4j@sha256:6e23afaa8dff7b6e82ef854345e46e26eb48bbe9a1c6aed44d3c9cbaa33bee85
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.1.1-enterprise` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.1 MB (145058060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c6f5c8d3aba4bd7afd0a54d5e7bbfe75c2f015fc19623a43e30dcc0ec4dc1f8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 07 Mar 2017 19:21:09 GMT
RUN apk add --no-cache --quiet     bash     curl
# Tue, 07 Mar 2017 19:22:30 GMT
ENV NEO4J_SHA256=20a8cda35d90c518319fdbb7aa8ecb11e306777bf8b8ff7df623cdb473b593a7
# Tue, 07 Mar 2017 19:22:30 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.1.1-unix.tar.gz
# Tue, 07 Mar 2017 19:22:31 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.1-unix.tar.gz
# Tue, 07 Mar 2017 19:22:32 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 07 Mar 2017 19:22:44 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.1-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 07 Mar 2017 19:22:45 GMT
WORKDIR /var/lib/neo4j
# Tue, 07 Mar 2017 19:22:46 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.1-unix.tar.gz
RUN mv data /data     && ln -s /data
# Tue, 07 Mar 2017 19:22:47 GMT
VOLUME [/data]
# Tue, 07 Mar 2017 19:22:48 GMT
COPY file:77937095ede0ebf8d922e2d061f12dc5de64a045c38a47b59579caac7c90f6f6 in /docker-entrypoint.sh 
# Tue, 07 Mar 2017 19:22:49 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 07 Mar 2017 19:22:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 07 Mar 2017 19:22:50 GMT
CMD ["neo4j"]
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
	-	`sha256:2b3f029f8f8cb0efd4ae3304e88746be778dae8aa98bfaf9340afcc0d6aad033`  
		Last Modified: Tue, 07 Mar 2017 19:36:19 GMT  
		Size: 1.5 MB (1456711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c7a15b5896d1a3293c9584755ee3d0f0d2320d0c417aeac3e1f13d0b075245`  
		Last Modified: Tue, 07 Mar 2017 19:38:26 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fca27937302416623a5cdc7092488a5a8b7cee35025e457ee2bc71ae62ac5748`  
		Last Modified: Tue, 07 Mar 2017 19:38:35 GMT  
		Size: 87.9 MB (87883213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37482c92e7af90a90889b93669f4ba6299103395f9c504b5d74ba2f53439bff`  
		Last Modified: Tue, 07 Mar 2017 19:38:26 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8a2311ce773332087b69fdf8983245a283477a34d668ca55aeae3c688c0d06`  
		Last Modified: Tue, 07 Mar 2017 19:38:25 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.1.0`

```console
$ docker pull neo4j@sha256:2b9fe622f0a74bff1d00b0725e092436d46e3d908c8530fb04e020ca9e95d945
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.1.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.5 MB (134539705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d58077dd6301b76f6751e443da183be673d95816cd1c12d728a4285bb543640`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 07 Mar 2017 19:21:09 GMT
RUN apk add --no-cache --quiet     bash     curl
# Tue, 07 Mar 2017 19:21:10 GMT
ENV NEO4J_SHA256=47317a5a60f72de3d1b4fae4693b5f15514838ff3650bf8f2a965d3ba117dfc2
# Tue, 07 Mar 2017 19:21:11 GMT
ENV NEO4J_TARBALL=neo4j-community-3.1.0-unix.tar.gz
# Tue, 07 Mar 2017 19:21:11 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.0-unix.tar.gz
# Tue, 07 Mar 2017 19:21:12 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 07 Mar 2017 19:21:37 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 07 Mar 2017 19:21:38 GMT
WORKDIR /var/lib/neo4j
# Tue, 07 Mar 2017 19:21:39 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.0-unix.tar.gz
RUN mv data /data     && ln -s /data
# Tue, 07 Mar 2017 19:21:40 GMT
VOLUME [/data]
# Tue, 07 Mar 2017 19:21:41 GMT
COPY file:77937095ede0ebf8d922e2d061f12dc5de64a045c38a47b59579caac7c90f6f6 in /docker-entrypoint.sh 
# Tue, 07 Mar 2017 19:21:41 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 07 Mar 2017 19:21:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 07 Mar 2017 19:21:43 GMT
CMD ["neo4j"]
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
	-	`sha256:2b3f029f8f8cb0efd4ae3304e88746be778dae8aa98bfaf9340afcc0d6aad033`  
		Last Modified: Tue, 07 Mar 2017 19:36:19 GMT  
		Size: 1.5 MB (1456711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4bc0e04bbf8274e11dc7efb005972b64b8dc4a6db277416befa940e217f06a`  
		Last Modified: Tue, 07 Mar 2017 19:36:18 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2a91fc9327f551d3d4d99cb1cd2e672ebac64f2bf2f1465ce7c996b6554656`  
		Last Modified: Tue, 07 Mar 2017 19:36:25 GMT  
		Size: 77.4 MB (77364849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e854fe73c466e90e6639af3e4bbda6e6fa09dd39e5c0111a97fe7e4e6421fd82`  
		Last Modified: Tue, 07 Mar 2017 19:36:18 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de1f8722059a6596d982ad106ef3dbd248bb2f9e0ed7318c7916b0e7d984983`  
		Last Modified: Tue, 07 Mar 2017 19:36:18 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.1.0-enterprise`

```console
$ docker pull neo4j@sha256:8139af3b80d98405b91209f36f45b96c505e637da338abe84e460eda338bddf2
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.1.0-enterprise` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (144999140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1254c8812bc98e4f833be6a45e1c1a1b82a0739ea4e5f692b3762383f0fc6d2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

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
# Tue, 07 Mar 2017 19:21:09 GMT
RUN apk add --no-cache --quiet     bash     curl
# Tue, 07 Mar 2017 19:21:44 GMT
ENV NEO4J_SHA256=1f289296c23004ace4d37e14f2af433d203dfb028977534429e766bc308d584a
# Tue, 07 Mar 2017 19:21:45 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.1.0-unix.tar.gz
# Tue, 07 Mar 2017 19:21:45 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.0-unix.tar.gz
# Tue, 07 Mar 2017 19:21:46 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 07 Mar 2017 19:22:00 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 07 Mar 2017 19:22:01 GMT
WORKDIR /var/lib/neo4j
# Tue, 07 Mar 2017 19:22:02 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.0-unix.tar.gz
RUN mv data /data     && ln -s /data
# Tue, 07 Mar 2017 19:22:03 GMT
VOLUME [/data]
# Tue, 07 Mar 2017 19:22:04 GMT
COPY file:77937095ede0ebf8d922e2d061f12dc5de64a045c38a47b59579caac7c90f6f6 in /docker-entrypoint.sh 
# Tue, 07 Mar 2017 19:22:05 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 07 Mar 2017 19:22:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 07 Mar 2017 19:22:07 GMT
CMD ["neo4j"]
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
	-	`sha256:2b3f029f8f8cb0efd4ae3304e88746be778dae8aa98bfaf9340afcc0d6aad033`  
		Last Modified: Tue, 07 Mar 2017 19:36:19 GMT  
		Size: 1.5 MB (1456711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f8b09e8c684650c81246bccdc50a0105dd062bb7e35ae02182ee2cfe7526eb`  
		Last Modified: Tue, 07 Mar 2017 19:36:48 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29165f1a1c79cb2bba3634498bae84a33c8ea863cfbfb7ad3d8a14cee5c9ceff`  
		Last Modified: Tue, 07 Mar 2017 19:36:56 GMT  
		Size: 87.8 MB (87824286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ea68a1cc4ee8db457083f3785f79d44d6e87f1032815d92620e009cba5e4c2`  
		Last Modified: Tue, 07 Mar 2017 19:36:49 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6188a6b534da81a2d3f54c49a8bad2667248ef73b94f6a83f422e9b41c20bdc`  
		Last Modified: Tue, 07 Mar 2017 19:36:48 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.9`

```console
$ docker pull neo4j@sha256:1a600117c833b20c22dc89990f0d3927d56b951ec8f9e562f10e934b03c01d94
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.9` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.4 MB (188350110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25fac6479a3d7775e30952b2dc08b397218f4b70d0b73e358b84ac2f34be31dc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 11:08:29 GMT
ENV NEO4J_SHA256=0d4ab95746871388bd55e418d148ff9de1440dfb4588ce228e3ac84360c46def
# Tue, 25 Apr 2017 11:08:30 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.9-unix.tar.gz
# Tue, 25 Apr 2017 11:08:30 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.9-unix.tar.gz
# Tue, 25 Apr 2017 11:08:31 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 11:08:56 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.9-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 11:08:57 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 11:08:58 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.9-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 11:08:59 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 11:09:00 GMT
COPY file:0944a2cbfb3872ef080e1d4d523c9d1bc7e6051f44ee5f024ab6840af5914b11 in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 11:09:01 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 25 Apr 2017 11:09:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 11:09:02 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7856559e0650b24e4013660516938fb48a133dcebc3b68a3606cdc3c16516a56`  
		Last Modified: Tue, 25 Apr 2017 15:40:59 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2daa5baf8dff0251384d1d912d62e2dbe7083b2f6f361f41706f21dfe07e799`  
		Last Modified: Tue, 25 Apr 2017 15:41:05 GMT  
		Size: 61.6 MB (61609243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:465ba88698cd7708ada274f5f4808b8d3238f51f980749c4af76f221f0c32be0`  
		Last Modified: Tue, 25 Apr 2017 15:40:59 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e281afb936fcc843c440f79069db80df0ff550b1b7b58f970acc905e4cf0f9c0`  
		Last Modified: Tue, 25 Apr 2017 15:41:01 GMT  
		Size: 1.4 KB (1405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0`

```console
$ docker pull neo4j@sha256:1a600117c833b20c22dc89990f0d3927d56b951ec8f9e562f10e934b03c01d94
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.4 MB (188350110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25fac6479a3d7775e30952b2dc08b397218f4b70d0b73e358b84ac2f34be31dc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 11:08:29 GMT
ENV NEO4J_SHA256=0d4ab95746871388bd55e418d148ff9de1440dfb4588ce228e3ac84360c46def
# Tue, 25 Apr 2017 11:08:30 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.9-unix.tar.gz
# Tue, 25 Apr 2017 11:08:30 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.9-unix.tar.gz
# Tue, 25 Apr 2017 11:08:31 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 11:08:56 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.9-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 11:08:57 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 11:08:58 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.9-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 11:08:59 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 11:09:00 GMT
COPY file:0944a2cbfb3872ef080e1d4d523c9d1bc7e6051f44ee5f024ab6840af5914b11 in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 11:09:01 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 25 Apr 2017 11:09:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 11:09:02 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7856559e0650b24e4013660516938fb48a133dcebc3b68a3606cdc3c16516a56`  
		Last Modified: Tue, 25 Apr 2017 15:40:59 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2daa5baf8dff0251384d1d912d62e2dbe7083b2f6f361f41706f21dfe07e799`  
		Last Modified: Tue, 25 Apr 2017 15:41:05 GMT  
		Size: 61.6 MB (61609243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:465ba88698cd7708ada274f5f4808b8d3238f51f980749c4af76f221f0c32be0`  
		Last Modified: Tue, 25 Apr 2017 15:40:59 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e281afb936fcc843c440f79069db80df0ff550b1b7b58f970acc905e4cf0f9c0`  
		Last Modified: Tue, 25 Apr 2017 15:41:01 GMT  
		Size: 1.4 KB (1405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.9-enterprise`

```console
$ docker pull neo4j@sha256:a59c48a6ea19def45025c3a70d139da42748be0f5b46e862ecb67498cdfc4884
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.9-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.7 MB (190724227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb9afb580ac809dfc3979acc84ac8be284bf60f1e2c41ccaa6104c283603c82b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 11:09:19 GMT
ENV NEO4J_SHA256=b91cc0f164d52b4fd5919f119eb6060d75ad7c596bc365a1a059bc0423a11f18
# Tue, 25 Apr 2017 11:09:20 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.9-unix.tar.gz
# Tue, 25 Apr 2017 11:09:20 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.9-unix.tar.gz
# Tue, 25 Apr 2017 11:09:21 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 11:09:34 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.9-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 11:09:34 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 11:09:36 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.9-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 11:09:36 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 11:09:38 GMT
COPY file:0944a2cbfb3872ef080e1d4d523c9d1bc7e6051f44ee5f024ab6840af5914b11 in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 11:09:38 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 25 Apr 2017 11:09:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 11:09:40 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c6716ac0a3026be1b937ad7f9676e925b4730038d123caca1fea3db23301e6`  
		Last Modified: Tue, 25 Apr 2017 15:41:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034d7397954b85765c321b7f40eba2e4c0c1a8762937272597c74ae9e1a70049`  
		Last Modified: Tue, 25 Apr 2017 15:41:53 GMT  
		Size: 64.0 MB (63983360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4373bdc411b8718507f350c64aef6656eb856da65ff86d5f39ac982bdaf8f24a`  
		Last Modified: Tue, 25 Apr 2017 15:41:48 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d0d8f23f22f4da2ce486378ed649b153c651732d7831ccd40c546454c1a63e`  
		Last Modified: Tue, 25 Apr 2017 15:41:48 GMT  
		Size: 1.4 KB (1404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0-enterprise`

```console
$ docker pull neo4j@sha256:a59c48a6ea19def45025c3a70d139da42748be0f5b46e862ecb67498cdfc4884
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.7 MB (190724227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb9afb580ac809dfc3979acc84ac8be284bf60f1e2c41ccaa6104c283603c82b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 11:09:19 GMT
ENV NEO4J_SHA256=b91cc0f164d52b4fd5919f119eb6060d75ad7c596bc365a1a059bc0423a11f18
# Tue, 25 Apr 2017 11:09:20 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.9-unix.tar.gz
# Tue, 25 Apr 2017 11:09:20 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.9-unix.tar.gz
# Tue, 25 Apr 2017 11:09:21 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 11:09:34 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.9-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 11:09:34 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 11:09:36 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.9-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 11:09:36 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 11:09:38 GMT
COPY file:0944a2cbfb3872ef080e1d4d523c9d1bc7e6051f44ee5f024ab6840af5914b11 in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 11:09:38 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 25 Apr 2017 11:09:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 11:09:40 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c6716ac0a3026be1b937ad7f9676e925b4730038d123caca1fea3db23301e6`  
		Last Modified: Tue, 25 Apr 2017 15:41:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034d7397954b85765c321b7f40eba2e4c0c1a8762937272597c74ae9e1a70049`  
		Last Modified: Tue, 25 Apr 2017 15:41:53 GMT  
		Size: 64.0 MB (63983360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4373bdc411b8718507f350c64aef6656eb856da65ff86d5f39ac982bdaf8f24a`  
		Last Modified: Tue, 25 Apr 2017 15:41:48 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d0d8f23f22f4da2ce486378ed649b153c651732d7831ccd40c546454c1a63e`  
		Last Modified: Tue, 25 Apr 2017 15:41:48 GMT  
		Size: 1.4 KB (1404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.8`

```console
$ docker pull neo4j@sha256:9ccd1b0d509be3b06806ae3c5c5c006e3e7a9569dbb7037201fcca61baf39917
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.8` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.3 MB (188268238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22779f639e5d175bf17847283e5b4f901219a51626d6ae26a48d32217f4b28ed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 11:20:21 GMT
ENV NEO4J_SHA256=015c33dc791f9be2f2ef8ed1d1014f9f3f31140d192df676a5d6f584f5c7f6aa
# Tue, 25 Apr 2017 11:20:22 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.8-unix.tar.gz
# Tue, 25 Apr 2017 11:20:22 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.8-unix.tar.gz
# Tue, 25 Apr 2017 11:20:23 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 11:20:39 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.8-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 11:20:39 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 11:20:41 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.8-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 11:20:41 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 11:20:42 GMT
COPY file:0944a2cbfb3872ef080e1d4d523c9d1bc7e6051f44ee5f024ab6840af5914b11 in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 11:20:43 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 25 Apr 2017 11:20:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 11:20:45 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5171139fe8c8a40e45eea13689ebb4cfd082cfc49fd11c660c9e87ba2e8bfa1f`  
		Last Modified: Tue, 25 Apr 2017 15:39:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed03d4158200b2936a82b1f493fe25877e125cca612fb1cd8e8b6d57faedc93d`  
		Last Modified: Tue, 25 Apr 2017 15:40:04 GMT  
		Size: 61.5 MB (61527371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28238199cfa00affb0b4788a5d54ff44cd6cd95ba8f53e9458f446b2bc5e918`  
		Last Modified: Tue, 25 Apr 2017 15:39:57 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9801c1a4d5fdb0fe2975c6c577f71d946b05a5037121dbdbbb21074f6aa6d53b`  
		Last Modified: Tue, 25 Apr 2017 15:39:57 GMT  
		Size: 1.4 KB (1405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.8-enterprise`

```console
$ docker pull neo4j@sha256:86283ebaa1102b3db0193ec540d5b9c9aac9cb93f885a065d7ab72abb1ece937
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.8-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.6 MB (190640198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50cf7269f17691f6a3563b0bd89b255bfa79dd6d897a59dac10636887342b739`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 11:21:02 GMT
ENV NEO4J_SHA256=65e1feac021f45640e390a08c91e9b3bbfed60a7e9cc15c5a44df5af07c46768
# Tue, 25 Apr 2017 11:21:02 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.8-unix.tar.gz
# Tue, 25 Apr 2017 11:21:03 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.8-unix.tar.gz
# Tue, 25 Apr 2017 11:21:04 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 11:21:17 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.8-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 11:21:18 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 11:21:19 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.8-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 11:21:20 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 11:21:21 GMT
COPY file:0944a2cbfb3872ef080e1d4d523c9d1bc7e6051f44ee5f024ab6840af5914b11 in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 11:21:22 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 25 Apr 2017 11:21:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 11:21:23 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c15ca3e63c0c2004c1d5bbfa5db868aeaab124eaec6aa81b0b6b07dea13cf56`  
		Last Modified: Tue, 25 Apr 2017 15:40:28 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2c1fc5eed74c4f61a8c466644887807b23cf4c9d9d96cb02157fcea835caab`  
		Last Modified: Tue, 25 Apr 2017 15:40:34 GMT  
		Size: 63.9 MB (63899333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c16df036d6236253008f46e2429a293c169444ac8f29e668563d1dbad109b3`  
		Last Modified: Tue, 25 Apr 2017 15:40:28 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd4f653a8779b05dbc5050144eed98641c8052f2d14e334827d35f9d012c3c5`  
		Last Modified: Tue, 25 Apr 2017 15:40:28 GMT  
		Size: 1.4 KB (1404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.7`

```console
$ docker pull neo4j@sha256:5df0a747d46b6cdc48591c6cbc5e15e45829b070d16c7f18088a79201dde421d
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188236510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8da2163db778deb26049adace833f3675dd605ee07d2c09b73e4ae67fcd880b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 11:19:04 GMT
ENV NEO4J_SHA256=69f7b410934d0a83120f892c1f341905b3a9346656b5d085eca1da612b8e7ae6
# Tue, 25 Apr 2017 11:19:05 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.7-unix.tar.gz
# Tue, 25 Apr 2017 11:19:05 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.7-unix.tar.gz
# Tue, 25 Apr 2017 11:19:06 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 11:19:19 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.7-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 11:19:20 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 11:19:21 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.7-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 11:19:22 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 11:19:23 GMT
COPY file:0944a2cbfb3872ef080e1d4d523c9d1bc7e6051f44ee5f024ab6840af5914b11 in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 11:19:24 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 25 Apr 2017 11:19:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 11:19:25 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b65c003590b56c1899fb3175c1822eb9ee527a1072caaebbb6bfdfb97b862c2`  
		Last Modified: Tue, 25 Apr 2017 15:38:51 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d241787b3f047c100a6ea27588dd5358db203bb2ed6f99795a113e8a342440`  
		Last Modified: Tue, 25 Apr 2017 15:38:57 GMT  
		Size: 61.5 MB (61495645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb030b94a8cf8ac5b12df0bb8c399844dc292ad963686ceccec05c221f896ab`  
		Last Modified: Tue, 25 Apr 2017 15:38:52 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a64812f5e85a9046b2e2c50768ab9a425a57743e536104f974bb6eb7ca47fed9`  
		Last Modified: Tue, 25 Apr 2017 15:38:51 GMT  
		Size: 1.4 KB (1404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.7-enterprise`

```console
$ docker pull neo4j@sha256:f01441e875b2f6a7791ad1b6f1dd599ddcd58ee375cb18c31475c1feff5f0736
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.7-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.6 MB (190608188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:632b6269e7316fec3697e72679c1b0c0b3afbf03cf80040c94a83716af7e1ef1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 11:19:43 GMT
ENV NEO4J_SHA256=92edf396616be8a1cdb41dd05c300865959f97944f4fe7f50539401a49c095d5
# Tue, 25 Apr 2017 11:19:43 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.7-unix.tar.gz
# Tue, 25 Apr 2017 11:19:44 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.7-unix.tar.gz
# Tue, 25 Apr 2017 11:19:45 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 11:19:58 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.7-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 11:19:58 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 11:20:00 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.7-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 11:20:00 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 11:20:01 GMT
COPY file:0944a2cbfb3872ef080e1d4d523c9d1bc7e6051f44ee5f024ab6840af5914b11 in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 11:20:02 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 25 Apr 2017 11:20:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 11:20:04 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0a31f78f3c4800035e4122374b14cfaadbdefde0e812cc35687e5507134cd1`  
		Last Modified: Tue, 25 Apr 2017 15:39:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b2a5a3a161a99588edea2407057754ce557bac378e54fc78b0d659bc7fcf50`  
		Last Modified: Tue, 25 Apr 2017 15:39:29 GMT  
		Size: 63.9 MB (63867321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461147c2f6f31fdbd9b6b219580204ec4d3b94a44ec90bedda7f8390434cee1f`  
		Last Modified: Tue, 25 Apr 2017 15:39:22 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20da981add02c270678cb1e1b6765faa064af4eb260dd2ce49d607db1c21309c`  
		Last Modified: Tue, 25 Apr 2017 15:39:23 GMT  
		Size: 1.4 KB (1404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.6`

```console
$ docker pull neo4j@sha256:75a8b9702db9b1ed4ab8940ab00205eca19d7b052fdb3dfbd588fa0fce26d921
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.6` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.3 MB (188294495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e3e5142f8ba0cfe283c1bb82fea4d02f7e9f1390b1f55ac9770a435fdbb5a3f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 11:17:48 GMT
ENV NEO4J_SHA256=efeab41183e9e5fa94a2d396c65ea93a24e9f105cb3b5f0d0a8e42fb709f4660
# Tue, 25 Apr 2017 11:17:49 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.6-unix.tar.gz
# Tue, 25 Apr 2017 11:17:49 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.6-unix.tar.gz
# Tue, 25 Apr 2017 11:17:50 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 11:18:02 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.6-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 11:18:03 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 11:18:05 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.6-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 11:18:05 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 11:18:06 GMT
COPY file:404881b1bacde49595b51ced5b6c716a0338b4c47cd45357cd3d7850f1c255b2 in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 11:18:07 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 25 Apr 2017 11:18:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 11:18:09 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ecda2ea1d7f294c8fc2385ca9fca8ec066680e9a64403d466c6519896514c8b`  
		Last Modified: Tue, 25 Apr 2017 15:37:51 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faab7d7a69725ed35346043ae3dcb3a678ef7280afbfc2e644c16e9db732fc0b`  
		Last Modified: Tue, 25 Apr 2017 15:37:57 GMT  
		Size: 61.6 MB (61553658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078e0eaa98a1807ea6c518b28924f368ff623563840838557c02de76af38708b`  
		Last Modified: Tue, 25 Apr 2017 15:37:51 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9403bac9e0f37ae0ad9505c7b030cbcc50a1c0b554207286ce2693dbd0a0ed4f`  
		Last Modified: Tue, 25 Apr 2017 15:37:51 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.6-enterprise`

```console
$ docker pull neo4j@sha256:bfa9bb6fc50c9e6116b2fae67195fbf62caed8745e8b486fceb071d14434d1b5
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.6-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.7 MB (190659009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0cc1068d901a2533d7478d8a6123b04e6e00308b1b353b9509e261da3da539e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 11:18:26 GMT
ENV NEO4J_SHA256=f58450760a92b0913c5418e26278a6a65bf6c5ba01f9b12a033f56e80f0c3d23
# Tue, 25 Apr 2017 11:18:26 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.6-unix.tar.gz
# Tue, 25 Apr 2017 11:18:27 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.6-unix.tar.gz
# Tue, 25 Apr 2017 11:18:28 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 11:18:41 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.6-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 11:18:41 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 11:18:43 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.6-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 11:18:43 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 11:18:44 GMT
COPY file:404881b1bacde49595b51ced5b6c716a0338b4c47cd45357cd3d7850f1c255b2 in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 11:18:45 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 25 Apr 2017 11:18:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 11:18:47 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72003b29d5e9e651baa86b2c43f660bf0e07592b1ee1b3e93370c75b07329223`  
		Last Modified: Tue, 25 Apr 2017 15:38:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5be028fcfb85de3b76137197d09c2c2a86b5616beabdbe38f2a9582377842a2c`  
		Last Modified: Tue, 25 Apr 2017 15:38:26 GMT  
		Size: 63.9 MB (63918171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f20919581c047801d5ca86c3eb2b33d7fd1f166f9e1121aade7ebc0eb1b4b094`  
		Last Modified: Tue, 25 Apr 2017 15:38:21 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c4ca91403ba4e3c447f71cee4fe849316dd29a1d6fd8dad9d5a12093af0ec66`  
		Last Modified: Tue, 25 Apr 2017 15:38:21 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.5`

```console
$ docker pull neo4j@sha256:4f680f0a9fca76ac4a96054d63c9dbfc09e47fb2995cbf5af914a3545a5016e8
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.3 MB (188290776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2e5dfbce7054c0ede2cddc265d8a41ded3230e33c6a33d76238b0bcc83f1339`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 11:16:33 GMT
ENV NEO4J_SHA256=65f6995f9d2e87b61cb8d9c7623e9861bced555a8c05f3476aa73240a77437d8
# Tue, 25 Apr 2017 11:16:33 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.5-unix.tar.gz
# Tue, 25 Apr 2017 11:16:34 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.5-unix.tar.gz
# Tue, 25 Apr 2017 11:16:35 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 11:16:47 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.5-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 11:16:47 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 11:16:49 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.5-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 11:16:49 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 11:16:50 GMT
COPY file:404881b1bacde49595b51ced5b6c716a0338b4c47cd45357cd3d7850f1c255b2 in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 11:16:51 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 25 Apr 2017 11:16:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 11:16:53 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b62182c140d31a255be2b6b0ca89ff83b2b935c98bac60de35a7e7125b1bc7`  
		Last Modified: Tue, 25 Apr 2017 15:36:53 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3e80ca0a0beda79eea5d97f9fb04120fe9ffa33b1684c025cbfad2bc7c7a98`  
		Last Modified: Tue, 25 Apr 2017 15:36:58 GMT  
		Size: 61.5 MB (61549938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dd4b565c87a1cf92e07767f38a80ac1e9fe614946a391680dcc283a82e67bbd`  
		Last Modified: Tue, 25 Apr 2017 15:36:53 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a19add63d3b3c5f029fc8c2159f09773d33ca77ac0a451269a30cef731802b48`  
		Last Modified: Tue, 25 Apr 2017 15:36:52 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.5-enterprise`

```console
$ docker pull neo4j@sha256:f2482bfb972c5f11098c3adb3df26b425289f8809f86f5028b6762695ea717f1
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.5-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.7 MB (190655545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bf4c9e364b180ebb6abd743c7434beb9b9f65454a7e7f17f9f10b9bf364e22d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 11:17:10 GMT
ENV NEO4J_SHA256=069cd8b1eab4e4b20e4abb50a6f1e7c985a21ad349d3fe3413943b96f1724e06
# Tue, 25 Apr 2017 11:17:10 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.5-unix.tar.gz
# Tue, 25 Apr 2017 11:17:11 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.5-unix.tar.gz
# Tue, 25 Apr 2017 11:17:12 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 11:17:25 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.5-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 11:17:25 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 11:17:27 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.5-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 11:17:28 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 11:17:29 GMT
COPY file:404881b1bacde49595b51ced5b6c716a0338b4c47cd45357cd3d7850f1c255b2 in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 11:17:29 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 25 Apr 2017 11:17:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 11:17:31 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe25a963716892e3a5df593e25ffcd87c355c690d105ce8518fbc5c047194aa`  
		Last Modified: Tue, 25 Apr 2017 15:37:23 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:188f23bead49209b733a3773b4031d85f2f1cd5dd674beb13598ca1fffcb5ed2`  
		Last Modified: Tue, 25 Apr 2017 15:37:27 GMT  
		Size: 63.9 MB (63914707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccfe7337eebc705677b22951775afed50839b42d1fe09cc731dbaa3f577aa3b6`  
		Last Modified: Tue, 25 Apr 2017 15:37:22 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d5fc1c82a37431e70c790541d451d75d938db1beb1592d2afbd1a17f520672d`  
		Last Modified: Tue, 25 Apr 2017 15:37:23 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.4`

```console
$ docker pull neo4j@sha256:383abb4c219fb4cb9660eef27574dc6c9e48d36c503c3349b040abd0eb3d6f27
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188215379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:747e586a081cef8c4c3ac109ac849bdf348e2bb69423f7c33e901fd29945fb56`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 11:15:20 GMT
ENV NEO4J_SHA256=e1da51163eb18380623788eabea34dfe23ee21c99deca4e7922094b0d242e805
# Tue, 25 Apr 2017 11:15:21 GMT
ENV NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.4-unix.tar.gz
# Tue, 25 Apr 2017 11:15:33 GMT
RUN curl --fail --silent --show-error --location --output neo4j.tar.gz $NEO4J_URI     && echo "$NEO4J_SHA256 neo4j.tar.gz" | sha256sum --check --quiet -     && tar --extract --file neo4j.tar.gz --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm neo4j.tar.gz
# Tue, 25 Apr 2017 11:15:33 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 11:15:35 GMT
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 11:15:36 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 11:15:37 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 11:15:37 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 25 Apr 2017 11:15:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 11:15:39 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e77265c25ed10cf881c9c02ce427b0e809547ad4ee68d47a6d870de73786694`  
		Last Modified: Tue, 25 Apr 2017 15:35:55 GMT  
		Size: 61.5 MB (61474730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57db08ac81c4ddc993fbf7c517a39fd9d8ff18bc7d44bf59afcef1d05fae690e`  
		Last Modified: Tue, 25 Apr 2017 15:35:49 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc801611e7fdaaa8d0b12119da0098bdf49526a5ba3e12db717bb581ffea5ca9`  
		Last Modified: Tue, 25 Apr 2017 15:35:50 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.4-enterprise`

```console
$ docker pull neo4j@sha256:df733a845572f32f88e23b1f702cab0fe287ea1344485adcbc3f02f1e47f8510
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.4-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.6 MB (190560027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3377d45f2d5207de3e0a394d393342d9d12575020df98fdedaef57d8df5d8b24`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 11:15:56 GMT
ENV NEO4J_SHA256=7cc47dcffdd040beec230cb6633bf03ace326218fa70f6d90612de057a6d61e2
# Tue, 25 Apr 2017 11:15:57 GMT
ENV NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.4-unix.tar.gz
# Tue, 25 Apr 2017 11:16:09 GMT
RUN curl --fail --silent --show-error --location --output neo4j.tar.gz $NEO4J_URI     && echo "$NEO4J_SHA256 neo4j.tar.gz" | sha256sum --check --quiet -     && tar --extract --file neo4j.tar.gz --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm neo4j.tar.gz
# Tue, 25 Apr 2017 11:16:10 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 11:16:11 GMT
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 11:16:12 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 11:16:13 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 11:16:14 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 25 Apr 2017 11:16:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 11:16:15 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3019172b3026cd0bb9802e738ba84f3175e54eefda0897ec9c7b023232e37380`  
		Last Modified: Tue, 25 Apr 2017 15:36:26 GMT  
		Size: 63.8 MB (63819377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81c5cd954563028d240dac2c7d02ba881bc54e484d2c847aaf5906b457d22f1`  
		Last Modified: Tue, 25 Apr 2017 15:36:19 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de6047fa5f91a046cbd647fc2a434e6c4459dea42c3fcd88c09867fa45f8802e`  
		Last Modified: Tue, 25 Apr 2017 15:36:20 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.3`

```console
$ docker pull neo4j@sha256:a2333d4ab230a53fbc9e76d604dbcf361830b832d1ee12cf2d18fd225ce9c49c
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.3` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188177004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aadbd807b1cc28a91765f87612a77f8527f46e7ec0449af96ae8a81287748a3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 11:13:51 GMT
ENV NEO4J_SHA256=20cd65c84a6e5345f17bb03c145190f74e58ec2754c2e515a64b317e34dae2ce
# Tue, 25 Apr 2017 11:13:51 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.3-unix.tar.gz
# Tue, 25 Apr 2017 11:13:52 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.3-unix.tar.gz
# Tue, 25 Apr 2017 11:13:53 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 11:14:18 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.3-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 11:14:19 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 11:14:20 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.3-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 11:14:21 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 11:14:22 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 11:14:23 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 25 Apr 2017 11:14:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 11:14:24 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d389d5b9cc7b5920c557d3384560eba6e9997894d5e5a50b8bb9e4156471abcc`  
		Last Modified: Tue, 25 Apr 2017 15:34:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43f4d5a3be4cabe47dc5a9a549722ae8e42ea1a67ef629239aee0259e450455`  
		Last Modified: Tue, 25 Apr 2017 15:34:49 GMT  
		Size: 61.4 MB (61436221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f8c1627336dfc32d4623e9f472f0accf827ff51b6e055f5686f619e2efc00da`  
		Last Modified: Tue, 25 Apr 2017 15:34:43 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492acf3c6b0110cb52fd0f0298447ee97bf3d746a9515c0341cdd67eefff31fe`  
		Last Modified: Tue, 25 Apr 2017 15:34:43 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.3-enterprise`

```console
$ docker pull neo4j@sha256:d8872e47fd85870ea0519636c8d8b3b62bd39d0470acb1c0d49856417b520a24
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.3-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.5 MB (190511086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e02840566f4678b67766a54a6d191152eea0eea935498f326b1f50c71cd1f8d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 11:14:42 GMT
ENV NEO4J_SHA256=f73ed4faf94087bded5ee34bc2614f09bbedc3b6e25439058526ce5506eb127e
# Tue, 25 Apr 2017 11:14:42 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.3-unix.tar.gz
# Tue, 25 Apr 2017 11:14:43 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.3-unix.tar.gz
# Tue, 25 Apr 2017 11:14:44 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 11:14:57 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.3-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 11:14:57 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 11:14:59 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.3-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 11:15:00 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 11:15:01 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 11:15:01 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 25 Apr 2017 11:15:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 11:15:03 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192773afada31901359fd462659810474aa28d0e5303357fce5c2b34a164706a`  
		Last Modified: Tue, 25 Apr 2017 15:35:15 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37447fa0e0a99d6d42231ab694a1207bff83e9bb02c7fbfc26d0de83eaea0d72`  
		Last Modified: Tue, 25 Apr 2017 15:35:20 GMT  
		Size: 63.8 MB (63770307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca67c63f5e470b8b6854355d974459ee19dd64fee4b74a81948ae0ba4536a85`  
		Last Modified: Tue, 25 Apr 2017 15:35:13 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51cece002b6eb31807405941b946ce24dedaacdf2b9b1006ef594bf618f65730`  
		Last Modified: Tue, 25 Apr 2017 15:35:14 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.2`

```console
$ docker pull neo4j@sha256:a444fed5eec46a1c986181d321cb63154d02020e28d11f107ac0a87b1dd78428
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.8 MB (188809082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:266e4f3863698b97f353da6d713db359ff7824b811354acf3575bc56af044c52`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 11:12:32 GMT
ENV NEO4J_SHA256=3daac469e0ad0f74eb8532ada8019b418e6ebd88da9bac52a4ee3393e18086aa
# Tue, 25 Apr 2017 11:12:33 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.2-unix.tar.gz
# Tue, 25 Apr 2017 11:12:34 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.2-unix.tar.gz
# Tue, 25 Apr 2017 11:12:35 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 11:12:48 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.2-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 11:12:49 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 11:12:50 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.2-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 11:12:51 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 11:12:52 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 11:12:53 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 25 Apr 2017 11:12:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 11:12:54 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c609e5fcd83651c65d05f71c20de63875222ab790f2dc48c2d688be11eb557`  
		Last Modified: Tue, 25 Apr 2017 15:33:45 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd0732e431c363e3b42249c84ebb6f0735cd33603c4938bfc8b258a01aa0730`  
		Last Modified: Tue, 25 Apr 2017 15:33:51 GMT  
		Size: 62.1 MB (62068303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94f1e6e17e06f9a2394441362da26c50c868fedaeaa59b28ec97a97ff229d68`  
		Last Modified: Tue, 25 Apr 2017 15:33:45 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76b547667cc306b7b4c61ddc7ac91393a9177d6af8310769e95bf9f1ce1cb68b`  
		Last Modified: Tue, 25 Apr 2017 15:33:45 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.2-enterprise`

```console
$ docker pull neo4j@sha256:09e867ca74af7b681462526026e96493815c664adf54295de98f875e97c7a333
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.2-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.1 MB (191145898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc7cdeb36d33eb5d5bd12216c774db826dc4546d516d1d3525229b7abba1a8aa`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 11:13:12 GMT
ENV NEO4J_SHA256=7e3cb1cb29c51ac267e57ec3d12c425bd31a4c92a2ecba70bb78360670b4b972
# Tue, 25 Apr 2017 11:13:12 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.2-unix.tar.gz
# Tue, 25 Apr 2017 11:13:13 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.2-unix.tar.gz
# Tue, 25 Apr 2017 11:13:14 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 11:13:28 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.2-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 11:13:28 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 11:13:30 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.2-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 11:13:30 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 11:13:31 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 11:13:32 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 25 Apr 2017 11:13:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 11:13:34 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a69c0567eb14f4e1961b03b512a22171e170b3f38d616dd872b045afbbe382`  
		Last Modified: Tue, 25 Apr 2017 15:34:14 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b7217d401e3f7ed9bd1ecd91c01f96cee5ac85cac76f9c2aa0025c9124ce91`  
		Last Modified: Tue, 25 Apr 2017 15:34:19 GMT  
		Size: 64.4 MB (64405118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ec2f7f4937e13f0ed6b9bec69096bef3d49e49e91bf6884f01de7c57c64aa9`  
		Last Modified: Tue, 25 Apr 2017 15:34:14 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11313a28ec321884b8dc6feb88b924e25e4273c5a49b6943f769bd763a5c0637`  
		Last Modified: Tue, 25 Apr 2017 15:34:14 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.1`

```console
$ docker pull neo4j@sha256:adb741646f5e9471b8310b35942f12bfb30ca2299189298fbd55af2ad7c6da3e
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.3 MB (189300772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27cc418fba7d6d6ba56b8d5ffbe3d85e6450ac803499b5a01e7772fabf310d0a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 11:11:15 GMT
ENV NEO4J_SHA256=ae9d966559c83a9f1c61e1ef4d67aafeb9185e568b6dec0cd6b50e4297a15895
# Tue, 25 Apr 2017 11:11:15 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.1-unix.tar.gz
# Tue, 25 Apr 2017 11:11:16 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.1-unix.tar.gz
# Tue, 25 Apr 2017 11:11:17 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 11:11:29 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.1-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 11:11:30 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 11:11:32 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.1-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 11:11:32 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 11:11:33 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 11:11:34 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 25 Apr 2017 11:11:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 11:11:36 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d7a30886586637aa450195ac6a73d9b20f2497cd0191e74eff68f15004cfe7a`  
		Last Modified: Tue, 25 Apr 2017 15:32:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0aec288b0950d38694c633a27f489d8407ed96262d035e91c2ce21f3f44e6c`  
		Last Modified: Tue, 25 Apr 2017 15:32:51 GMT  
		Size: 62.6 MB (62559992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c424747d7299383b77c823a993f7c5fbda3372f8596ea726f0c942e73b6248c`  
		Last Modified: Tue, 25 Apr 2017 15:32:46 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c57c7b29c8bbc8d0f8d4106d6ebedc785d1c6027480c41dc9475f89ac574650d`  
		Last Modified: Tue, 25 Apr 2017 15:32:45 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.1-enterprise`

```console
$ docker pull neo4j@sha256:ae638d27248b6c5c1a6a0d2cccad851590fc396540c9689996b477cd6ee84f15
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.1-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.5 MB (191515541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e02f6e2149c54b854dfcad35f8bd9ea854b0ff8b85aeb83ad101665a27a9bc32`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 11:11:53 GMT
ENV NEO4J_SHA256=d88c107d10bc4d4919bbac775aa128b4c312a420abfd06897471b5fa96864b11
# Tue, 25 Apr 2017 11:11:54 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.1-unix.tar.gz
# Tue, 25 Apr 2017 11:11:54 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.1-unix.tar.gz
# Tue, 25 Apr 2017 11:11:55 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 11:12:09 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.1-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 11:12:10 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 11:12:11 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.1-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 11:12:12 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 11:12:13 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 11:12:14 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 25 Apr 2017 11:12:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 11:12:15 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ac25acc0298b1868a8b3bbcf9fd956c98aa1592713f1b14ce1fe2eb8f5207d`  
		Last Modified: Tue, 25 Apr 2017 15:33:15 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c39fb43406164e9da5a38cd3134aa6f90e3da0513adc89b34e759ae5cdf036`  
		Last Modified: Tue, 25 Apr 2017 15:33:21 GMT  
		Size: 64.8 MB (64774762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0beffb179b7d30e47c2185a8302fcb57dbfb2b2f3f2f2fdc12e1b7a0dea2c9`  
		Last Modified: Tue, 25 Apr 2017 15:33:15 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b4a3b4d2fa4244b9a9b15f232e4043d98053fcea4d0eab50653d3fe6ce5f26`  
		Last Modified: Tue, 25 Apr 2017 15:33:15 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.0`

```console
$ docker pull neo4j@sha256:5c51995ad4a18d10301f9c976bfd7faa269ac785f2f5e635698b59a4753ea206
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.3 MB (189298221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:407b53033123c78130d8b1681b8d933d0fdcdc57e52f82c2ca5fb7d93b7b667d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 11:09:57 GMT
ENV NEO4J_SHA256=1f1aeb3c748d5b05c263b7dab8b195df788507f59228e80534ed8e506a80c517
# Tue, 25 Apr 2017 11:09:58 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.0-unix.tar.gz
# Tue, 25 Apr 2017 11:09:58 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.0-unix.tar.gz
# Tue, 25 Apr 2017 11:09:59 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 11:10:13 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 11:10:13 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 11:10:15 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.0-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 11:10:16 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 11:10:17 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 11:10:17 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 25 Apr 2017 11:10:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 11:10:19 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c56f4860ac8f53d8b43e03e6f939000c0dd6a4b14827f0edf365359de0e922`  
		Last Modified: Tue, 25 Apr 2017 15:31:45 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a57390fdb66a328646d8e22fb4c0fa825b5365908aa726bf14a4d5dfeca2328`  
		Last Modified: Tue, 25 Apr 2017 15:31:52 GMT  
		Size: 62.6 MB (62557442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb2e3cc2c87495083dc2e9c2f3641927009a7b24ea34151044e666c697947c1`  
		Last Modified: Tue, 25 Apr 2017 15:31:44 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5b156686399e08ee8389af024605a26f0f0ef79bb32548faaef57a78ac369a4`  
		Last Modified: Tue, 25 Apr 2017 15:31:45 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.0-enterprise`

```console
$ docker pull neo4j@sha256:d11bd887fb01b05496525d9019a2b79ff1ead08d03d85a4c05d1f30954b1d494
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.0-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.5 MB (191513118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:774d7518929b633c88fe19ccd0c582547f746fb3e11722690443349a04a7d47b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 11:10:36 GMT
ENV NEO4J_SHA256=376409e1849f2f13d5ea6ddc672b535646ffb9a24527520b661e044190bf617a
# Tue, 25 Apr 2017 11:10:37 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.0-unix.tar.gz
# Tue, 25 Apr 2017 11:10:37 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.0-unix.tar.gz
# Tue, 25 Apr 2017 11:10:38 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 11:10:51 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 11:10:52 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 11:10:53 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.0-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 11:10:54 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 11:10:55 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 11:10:56 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 25 Apr 2017 11:10:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 11:10:57 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aa8bf01c1efbeea5b499aecfe4dbef73e66cc45c33b33dfca28c256f4161ba7`  
		Last Modified: Tue, 25 Apr 2017 15:32:15 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1035bee642dd774d73d105f7c83171cd2c947c16e7d0a5eec9ec6843c05ac47`  
		Last Modified: Tue, 25 Apr 2017 15:32:20 GMT  
		Size: 64.8 MB (64772339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34103f0821cf7075e7977bc35f23210fae1dce069de527ff7c603637a284ee40`  
		Last Modified: Tue, 25 Apr 2017 15:32:15 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c976fb9be8fd50b1e3e048a46162dbed3c14e0160cc65602bb583bdf26205d04`  
		Last Modified: Tue, 25 Apr 2017 15:32:15 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.10`

```console
$ docker pull neo4j@sha256:76f34292c90b005116e6a153d78aa7c7123b32473490543d34140f99bf6ef7e4
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.10` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.2 MB (194152749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a1e34d0e86630d0f20370ff664ac5a6346e5a7e9a78f4f07e46c37a122081f0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:54:37 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 10:54:37 GMT
ENV NEO4J_SHA256=b910ca32c454dd3aa2870d2d9f83973c9597ab67b7f72355091ca2d924d646ab
# Tue, 25 Apr 2017 10:54:38 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.10-unix.tar.gz
# Tue, 25 Apr 2017 10:54:38 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.10-unix.tar.gz
# Tue, 25 Apr 2017 10:54:39 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 10:54:52 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.10-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 10:54:52 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 10:54:54 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.10-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 10:54:54 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 10:54:55 GMT
COPY file:77655caa958663cf4b6b261cb705cbea286374905edc612985f978867904bd01 in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 10:54:56 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 25 Apr 2017 10:54:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 10:54:57 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fe78f9390176d0c24bc5794e55e7d1148052899ca3c7ebc5db771c0b33b4ef`  
		Last Modified: Tue, 25 Apr 2017 15:19:55 GMT  
		Size: 8.6 MB (8647965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db20a6159455f9cc2f26b15b165ff088e81f82030df8cbc07d108f7c3ca10973`  
		Last Modified: Tue, 25 Apr 2017 15:21:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b7cc5d4737da7b68da6c2427567066e4b9900b49705e2e66d18b7f0b28e22e`  
		Last Modified: Tue, 25 Apr 2017 15:21:57 GMT  
		Size: 58.8 MB (58763481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33b1a0a42c017d68c24c6ed1ce54074c3ff33a68ad9628bba1bac253b69e6ad`  
		Last Modified: Tue, 25 Apr 2017 15:21:53 GMT  
		Size: 711.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20898e33159f19e32f42546ee41a22dbe970abd5cc765929860ac3785bc5e4c1`  
		Last Modified: Tue, 25 Apr 2017 15:21:53 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3`

```console
$ docker pull neo4j@sha256:76f34292c90b005116e6a153d78aa7c7123b32473490543d34140f99bf6ef7e4
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.2 MB (194152749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a1e34d0e86630d0f20370ff664ac5a6346e5a7e9a78f4f07e46c37a122081f0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:54:37 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 10:54:37 GMT
ENV NEO4J_SHA256=b910ca32c454dd3aa2870d2d9f83973c9597ab67b7f72355091ca2d924d646ab
# Tue, 25 Apr 2017 10:54:38 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.10-unix.tar.gz
# Tue, 25 Apr 2017 10:54:38 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.10-unix.tar.gz
# Tue, 25 Apr 2017 10:54:39 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 10:54:52 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.10-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 10:54:52 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 10:54:54 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.10-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 10:54:54 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 10:54:55 GMT
COPY file:77655caa958663cf4b6b261cb705cbea286374905edc612985f978867904bd01 in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 10:54:56 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 25 Apr 2017 10:54:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 10:54:57 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fe78f9390176d0c24bc5794e55e7d1148052899ca3c7ebc5db771c0b33b4ef`  
		Last Modified: Tue, 25 Apr 2017 15:19:55 GMT  
		Size: 8.6 MB (8647965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db20a6159455f9cc2f26b15b165ff088e81f82030df8cbc07d108f7c3ca10973`  
		Last Modified: Tue, 25 Apr 2017 15:21:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b7cc5d4737da7b68da6c2427567066e4b9900b49705e2e66d18b7f0b28e22e`  
		Last Modified: Tue, 25 Apr 2017 15:21:57 GMT  
		Size: 58.8 MB (58763481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33b1a0a42c017d68c24c6ed1ce54074c3ff33a68ad9628bba1bac253b69e6ad`  
		Last Modified: Tue, 25 Apr 2017 15:21:53 GMT  
		Size: 711.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20898e33159f19e32f42546ee41a22dbe970abd5cc765929860ac3785bc5e4c1`  
		Last Modified: Tue, 25 Apr 2017 15:21:53 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.10-enterprise`

```console
$ docker pull neo4j@sha256:a43d083149b0dc1bf3cb83d82e03bf3e8a91fab23af86a4ff528e9bfdf4eafa8
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.10-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196699094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01f5b73cd09f6051226094b2f10c0b78ef3a6b368f80a4b773272ae1ff7fdaef`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:54:37 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 10:55:15 GMT
ENV NEO4J_SHA256=dfbd3c253e7d338bff00b615973f0186f100970a2d22f24b5eaa3575ceb8f643
# Tue, 25 Apr 2017 10:55:16 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.10-unix.tar.gz
# Tue, 25 Apr 2017 10:55:16 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.10-unix.tar.gz
# Tue, 25 Apr 2017 10:55:17 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 10:55:30 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.10-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 10:55:31 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 10:55:32 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.10-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 10:55:33 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 10:55:34 GMT
COPY file:77655caa958663cf4b6b261cb705cbea286374905edc612985f978867904bd01 in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 10:55:34 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 25 Apr 2017 10:55:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 10:55:36 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fe78f9390176d0c24bc5794e55e7d1148052899ca3c7ebc5db771c0b33b4ef`  
		Last Modified: Tue, 25 Apr 2017 15:19:55 GMT  
		Size: 8.6 MB (8647965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7598eadabcd88d56eb433f00a75c176a3baa4df860c29e5d7e85a5620a7a752e`  
		Last Modified: Tue, 25 Apr 2017 15:22:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd8eb5948380e41fd71b10ed075209339378eb29e159bc70bfafedfc07407e8`  
		Last Modified: Tue, 25 Apr 2017 15:22:46 GMT  
		Size: 61.3 MB (61309827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1faa317440fdf215ee8d6d47ca9110d0a039d6bc821cf5cccae0d9f69505eeba`  
		Last Modified: Tue, 25 Apr 2017 15:22:41 GMT  
		Size: 710.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f791c758fc3abf461fde3e27f1c2762a466c36001dcaaff202ea66158bc443`  
		Last Modified: Tue, 25 Apr 2017 15:22:40 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3-enterprise`

```console
$ docker pull neo4j@sha256:a43d083149b0dc1bf3cb83d82e03bf3e8a91fab23af86a4ff528e9bfdf4eafa8
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196699094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01f5b73cd09f6051226094b2f10c0b78ef3a6b368f80a4b773272ae1ff7fdaef`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:54:37 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 10:55:15 GMT
ENV NEO4J_SHA256=dfbd3c253e7d338bff00b615973f0186f100970a2d22f24b5eaa3575ceb8f643
# Tue, 25 Apr 2017 10:55:16 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.10-unix.tar.gz
# Tue, 25 Apr 2017 10:55:16 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.10-unix.tar.gz
# Tue, 25 Apr 2017 10:55:17 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 10:55:30 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.10-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 10:55:31 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 10:55:32 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.10-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 10:55:33 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 10:55:34 GMT
COPY file:77655caa958663cf4b6b261cb705cbea286374905edc612985f978867904bd01 in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 10:55:34 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 25 Apr 2017 10:55:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 10:55:36 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fe78f9390176d0c24bc5794e55e7d1148052899ca3c7ebc5db771c0b33b4ef`  
		Last Modified: Tue, 25 Apr 2017 15:19:55 GMT  
		Size: 8.6 MB (8647965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7598eadabcd88d56eb433f00a75c176a3baa4df860c29e5d7e85a5620a7a752e`  
		Last Modified: Tue, 25 Apr 2017 15:22:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd8eb5948380e41fd71b10ed075209339378eb29e159bc70bfafedfc07407e8`  
		Last Modified: Tue, 25 Apr 2017 15:22:46 GMT  
		Size: 61.3 MB (61309827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1faa317440fdf215ee8d6d47ca9110d0a039d6bc821cf5cccae0d9f69505eeba`  
		Last Modified: Tue, 25 Apr 2017 15:22:41 GMT  
		Size: 710.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f791c758fc3abf461fde3e27f1c2762a466c36001dcaaff202ea66158bc443`  
		Last Modified: Tue, 25 Apr 2017 15:22:40 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.9`

```console
$ docker pull neo4j@sha256:774620312d51c37f713c6fdbb4e5dd238f422f4ea7360d85a60763f54d785925
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.9` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.1 MB (194140076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e4605b6088eab2215db7572b06bd253440ca6a4393495290ec66b445c703abd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:54:37 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 11:07:11 GMT
ENV NEO4J_SHA256=044ed403776403f5c6a9b093d592b9b12d8964f605fb9e94f43408dca59202c3
# Tue, 25 Apr 2017 11:07:11 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.9-unix.tar.gz
# Tue, 25 Apr 2017 11:07:12 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.9-unix.tar.gz
# Tue, 25 Apr 2017 11:07:13 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 11:07:25 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.9-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 11:07:25 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 11:07:27 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.9-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 11:07:27 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 11:07:28 GMT
COPY file:77655caa958663cf4b6b261cb705cbea286374905edc612985f978867904bd01 in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 11:07:29 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 25 Apr 2017 11:07:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 11:07:30 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fe78f9390176d0c24bc5794e55e7d1148052899ca3c7ebc5db771c0b33b4ef`  
		Last Modified: Tue, 25 Apr 2017 15:19:55 GMT  
		Size: 8.6 MB (8647965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9baaafe8421d53ace106d8c3eaca3bdf2139507b3a2aa0b2fb5949aa8506b47e`  
		Last Modified: Tue, 25 Apr 2017 15:30:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1d154f8a7e3d0a92d466c22862767c95989392d50740e159bf0a1afb357db1`  
		Last Modified: Tue, 25 Apr 2017 15:30:48 GMT  
		Size: 58.8 MB (58750807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29be67449acf3aa58897790dd424c9970010614bef9f4c63387ff0b8ad5b420a`  
		Last Modified: Tue, 25 Apr 2017 15:30:44 GMT  
		Size: 710.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c4e6885a40d3bce5dcd1f657c8052d4d9315f826d7254166dad31dbebfbf87`  
		Last Modified: Tue, 25 Apr 2017 15:30:44 GMT  
		Size: 1.3 KB (1343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.9-enterprise`

```console
$ docker pull neo4j@sha256:7fdba6dc5ac7d4fa046a23d826fb671fa3dd2e98b8a83221d00584a4d275eb7a
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.9-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196687058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:570637e028ee8eed42a84b7841f9d61d8de3dc2c813bd731b0b6245ed4d57d64`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:54:37 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 11:07:48 GMT
ENV NEO4J_SHA256=d99aa0d2e1ec8386721981441aa98d3d551d4c40dc1b51f0705519e5cd9ab14b
# Tue, 25 Apr 2017 11:07:48 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.9-unix.tar.gz
# Tue, 25 Apr 2017 11:07:49 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.9-unix.tar.gz
# Tue, 25 Apr 2017 11:07:50 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 11:08:06 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.9-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 11:08:07 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 11:08:08 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.9-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 11:08:09 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 11:08:10 GMT
COPY file:77655caa958663cf4b6b261cb705cbea286374905edc612985f978867904bd01 in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 11:08:10 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 25 Apr 2017 11:08:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 11:08:12 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fe78f9390176d0c24bc5794e55e7d1148052899ca3c7ebc5db771c0b33b4ef`  
		Last Modified: Tue, 25 Apr 2017 15:19:55 GMT  
		Size: 8.6 MB (8647965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53404abdcc15657fb448e6be7f4a6bab541af5f08024711aaf4771a403f3f31`  
		Last Modified: Tue, 25 Apr 2017 15:31:12 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abdf754952fbf89c185382599ad9fddfc08301c14984ec8c7488bca8769becb5`  
		Last Modified: Tue, 25 Apr 2017 15:31:19 GMT  
		Size: 61.3 MB (61297792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5f63c9e2a65b6446d64117a05badd93be7a06426de760d474b07a9d7a1a0bb`  
		Last Modified: Tue, 25 Apr 2017 15:31:12 GMT  
		Size: 710.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5e8c5f20e0be924836639e364c7b4d4f582772a61ff0c64cc722125539f528`  
		Last Modified: Tue, 25 Apr 2017 15:31:14 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.8`

```console
$ docker pull neo4j@sha256:3124f3a644112c5bc073f43570d5a0342cdc5a144ea438eda658ce77e9d6aefe
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.8` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.1 MB (194134681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a794a3f0f2a7075d90e5ba19067789fbabc293fbc3ed339a1cc57d5e027d6b5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:54:37 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 11:05:57 GMT
ENV NEO4J_SHA256=a4e7f99b1820a750973e678af913fbdb3069188ef12ec69dd67aa49bd072a85f
# Tue, 25 Apr 2017 11:05:58 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.8-unix.tar.gz
# Tue, 25 Apr 2017 11:05:58 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.8-unix.tar.gz
# Tue, 25 Apr 2017 11:05:59 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 11:06:11 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.8-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 11:06:11 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 11:06:13 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.8-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 11:06:13 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 11:06:14 GMT
COPY file:77655caa958663cf4b6b261cb705cbea286374905edc612985f978867904bd01 in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 11:06:15 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 25 Apr 2017 11:06:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 11:06:17 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fe78f9390176d0c24bc5794e55e7d1148052899ca3c7ebc5db771c0b33b4ef`  
		Last Modified: Tue, 25 Apr 2017 15:19:55 GMT  
		Size: 8.6 MB (8647965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a665f8710f2c704aecad257ee36d179cb51c4e683346b054ba52f5ace0db3e`  
		Last Modified: Tue, 25 Apr 2017 15:29:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20cd439406390af5397c18a1c47c5980089e11d129650083760aadfc8c96e4a`  
		Last Modified: Tue, 25 Apr 2017 15:29:38 GMT  
		Size: 58.7 MB (58745411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f78e7942942fdf85cfc7f7ca8c6154201ff9cdf93c9437c0cb21c70d097e036`  
		Last Modified: Tue, 25 Apr 2017 15:29:33 GMT  
		Size: 712.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d27dbfb7532be0ef29e28a5e683ffdf16ab41182522164f12121e6480aee2640`  
		Last Modified: Tue, 25 Apr 2017 15:29:34 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.8-enterprise`

```console
$ docker pull neo4j@sha256:be821b3a1dede23e0a1193a17d49194fbdb0a37958412c594cb6c32eb4601dba
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.8-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196680923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d6b58abdc54d0db82032b0b280a7e62ee4cfdbcca5e573e48a277ca94a1451d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:54:37 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 11:06:34 GMT
ENV NEO4J_SHA256=2229b014399217b735d9844e4d02e62d5dbfe15c67dc07adc780fc523e6d010e
# Tue, 25 Apr 2017 11:06:35 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.8-unix.tar.gz
# Tue, 25 Apr 2017 11:06:35 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.8-unix.tar.gz
# Tue, 25 Apr 2017 11:06:36 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 11:06:48 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.8-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 11:06:49 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 11:06:50 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.8-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 11:06:51 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 11:06:52 GMT
COPY file:77655caa958663cf4b6b261cb705cbea286374905edc612985f978867904bd01 in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 11:06:52 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 25 Apr 2017 11:06:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 11:06:54 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fe78f9390176d0c24bc5794e55e7d1148052899ca3c7ebc5db771c0b33b4ef`  
		Last Modified: Tue, 25 Apr 2017 15:19:55 GMT  
		Size: 8.6 MB (8647965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a05758273382b737223b83b06c28669169bd124333ac1c9a8b2dcfa72ca853`  
		Last Modified: Tue, 25 Apr 2017 15:30:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:051a1b4df52e1556db0e3411a8fb9eda8991ffc67e3d9e6b480bc1cf3d9dd27d`  
		Last Modified: Tue, 25 Apr 2017 15:30:19 GMT  
		Size: 61.3 MB (61291655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef0d6ecb65c07504180f5bf1cd6584c1220bbadff6df07118eea645149d594e`  
		Last Modified: Tue, 25 Apr 2017 15:30:15 GMT  
		Size: 710.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32c94e428b2f70da67492751f00814dc95c632196e78e659753fd83ec27e2e06`  
		Last Modified: Tue, 25 Apr 2017 15:30:14 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.7`

```console
$ docker pull neo4j@sha256:589f703689bc9873fea216452573a17b570f0b417eb57b8fa727ea94682417f1
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.1 MB (194134610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db7b79f0c6a21e2f6e383d5b6d6f2f283a0de87b5c987693d92bb5be88da6e06`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:54:37 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 11:04:42 GMT
ENV NEO4J_SHA256=660f69e2dce24b69c6abe25fd33b549c8e232b965bef4ca94acb9f63cc15e46e
# Tue, 25 Apr 2017 11:04:42 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.7-unix.tar.gz
# Tue, 25 Apr 2017 11:04:43 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.7-unix.tar.gz
# Tue, 25 Apr 2017 11:04:44 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 11:04:57 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.7-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 11:04:58 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 11:04:59 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.7-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 11:05:00 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 11:05:01 GMT
COPY file:cb4000bfe72fb1762262e9e56a951af2b641306dea07b6f13b6623ef1f84fc92 in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 11:05:01 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 25 Apr 2017 11:05:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 11:05:03 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fe78f9390176d0c24bc5794e55e7d1148052899ca3c7ebc5db771c0b33b4ef`  
		Last Modified: Tue, 25 Apr 2017 15:19:55 GMT  
		Size: 8.6 MB (8647965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60eb77372c308b90110c8368f58575b7aa21c983dfd18851f1197bed8b8b16b`  
		Last Modified: Tue, 25 Apr 2017 15:28:31 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa0839a8e06a14d8787d490578ce4942cee4069c0ffc7e1b6e075ca1670a75a6`  
		Last Modified: Tue, 25 Apr 2017 15:28:37 GMT  
		Size: 58.7 MB (58745358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2799e9a6cabb3b6c42777dd43c85718079045614b44181474afa965c18ebae`  
		Last Modified: Tue, 25 Apr 2017 15:28:31 GMT  
		Size: 711.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd2b3cbdddcd624286858420771d518b47c814d652c2ece670e6ec3eeaedb26`  
		Last Modified: Tue, 25 Apr 2017 15:28:31 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.7-enterprise`

```console
$ docker pull neo4j@sha256:80f6616950c43964db21ff1907e57ece8ab992e88398a313549cbc9b5058e826
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.7-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196679934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49d77f94ea48d6be6a8bec0fb055a97393703d675e460ef2637fe4b48960015f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:54:37 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 11:05:20 GMT
ENV NEO4J_SHA256=64b2607f173db5e11671eb39087d06bca6d959e6a77f33a5c0ec3a4efd2b9d2b
# Tue, 25 Apr 2017 11:05:21 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.7-unix.tar.gz
# Tue, 25 Apr 2017 11:05:21 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.7-unix.tar.gz
# Tue, 25 Apr 2017 11:05:22 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 11:05:34 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.7-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 11:05:34 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 11:05:36 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.7-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 11:05:37 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 11:05:38 GMT
COPY file:cb4000bfe72fb1762262e9e56a951af2b641306dea07b6f13b6623ef1f84fc92 in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 11:05:38 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 25 Apr 2017 11:05:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 11:05:40 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fe78f9390176d0c24bc5794e55e7d1148052899ca3c7ebc5db771c0b33b4ef`  
		Last Modified: Tue, 25 Apr 2017 15:19:55 GMT  
		Size: 8.6 MB (8647965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2615e3a3d4592869eadb34850f3d3b0f74b158e6f11b101e272a2352efc4f0`  
		Last Modified: Tue, 25 Apr 2017 15:29:03 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9392e095e5a685d3396ed3e864a0068a28119169203e467f2a3ad56cf8fb4d8`  
		Last Modified: Tue, 25 Apr 2017 15:29:09 GMT  
		Size: 61.3 MB (61290679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ca0aaed73dbab01642a7610b88c67408fd8e75af657d2edf3e0b0e9132e14b`  
		Last Modified: Tue, 25 Apr 2017 15:29:01 GMT  
		Size: 714.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67259eca098fa5bfabb5d87764bc949630f8915f2498451d2913f82449158f08`  
		Last Modified: Tue, 25 Apr 2017 15:29:01 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.6`

```console
$ docker pull neo4j@sha256:a0632d4ef4131eb7a4558dd9b49817ce812772c6b7fc743139b17c57e03f423f
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.6` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.1 MB (194132271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6db141866c34e75f6058a1dae8f2a5c84e15729504197f73fd25fa2f119576f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:54:37 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 11:03:25 GMT
ENV NEO4J_SHA256=738263c6785095f56b9051904ff2d1b30a13f680a748f483a450da63b04a5667
# Tue, 25 Apr 2017 11:03:25 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.6-unix.tar.gz
# Tue, 25 Apr 2017 11:03:26 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.6-unix.tar.gz
# Tue, 25 Apr 2017 11:03:27 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 11:03:41 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.6-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 11:03:41 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 11:03:43 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.6-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 11:03:43 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 11:03:44 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 11:03:45 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 25 Apr 2017 11:03:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 11:03:47 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fe78f9390176d0c24bc5794e55e7d1148052899ca3c7ebc5db771c0b33b4ef`  
		Last Modified: Tue, 25 Apr 2017 15:19:55 GMT  
		Size: 8.6 MB (8647965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff628f0cc04ff258a80b73e60bd1a449ea4dd2015d08108c56ac4c82d94c69e6`  
		Last Modified: Tue, 25 Apr 2017 15:27:32 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b0f8352c300338212c17e2750082f60219fcd7fd2dcd65d200231e1f627212b`  
		Last Modified: Tue, 25 Apr 2017 15:27:37 GMT  
		Size: 58.7 MB (58743059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77df23ea66c1f40ec0e0c24e4d03cb25a99da7c72c63dd985004356a45f37565`  
		Last Modified: Tue, 25 Apr 2017 15:27:32 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee0ee3e386164b78177b5aa0aafc59971880df67cd63565d0e63b676d96ccd7`  
		Last Modified: Tue, 25 Apr 2017 15:27:32 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.6-enterprise`

```console
$ docker pull neo4j@sha256:6e405b2febaa57b7c0ac47a4734e6976267667d9f955fa9a93e9b3d2c76f4b9f
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.6-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196674749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1ebc71fb3b218b416e0b6141f530c350a946067173a51ed3aa9e4c53c6058f6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:54:37 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 11:04:04 GMT
ENV NEO4J_SHA256=07591aa24b3925f2cfea616ce9a28d954ebea6c205e77dda82b322238d1dbc3f
# Tue, 25 Apr 2017 11:04:05 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.6-unix.tar.gz
# Tue, 25 Apr 2017 11:04:05 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.6-unix.tar.gz
# Tue, 25 Apr 2017 11:04:06 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 11:04:19 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.6-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 11:04:19 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 11:04:21 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.6-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 11:04:21 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 11:04:22 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 11:04:23 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 25 Apr 2017 11:04:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 11:04:25 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fe78f9390176d0c24bc5794e55e7d1148052899ca3c7ebc5db771c0b33b4ef`  
		Last Modified: Tue, 25 Apr 2017 15:19:55 GMT  
		Size: 8.6 MB (8647965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4196d6bf43bbffaeca29fa9405772ab14ed224d2b6a181f61dc002f36c2b1f94`  
		Last Modified: Tue, 25 Apr 2017 15:28:03 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814d614bb9a7dabbd364d77a2ed350b79b8dd04c78fff0d73fbc395a7a31eafe`  
		Last Modified: Tue, 25 Apr 2017 15:28:07 GMT  
		Size: 61.3 MB (61285538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e6a2e0718295a573c49277d0b918a4445097fc7b5c9ee86a4b7d2ba0922914c`  
		Last Modified: Tue, 25 Apr 2017 15:28:03 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:918d6060e51469fcdd3f533deaa79a3c01855a16376dab543c9903b6085669e4`  
		Last Modified: Tue, 25 Apr 2017 15:28:02 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.5`

```console
$ docker pull neo4j@sha256:f837fdd8a8b040d37042730ed1773fe83ca20472e0cb8cb9d2c134b9d133abd3
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.1 MB (194098485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8accbd747944b68024d7914fb004d6a55d1477ac5357aa19ac2b36fcef861a1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:54:37 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 11:02:08 GMT
ENV NEO4J_SHA256=969159bddc0526681795f039e4250d728c8b60c5e421450259caacfc488c18cf
# Tue, 25 Apr 2017 11:02:09 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.5-unix.tar.gz
# Tue, 25 Apr 2017 11:02:09 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.5-unix.tar.gz
# Tue, 25 Apr 2017 11:02:10 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 11:02:22 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.5-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 11:02:23 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 11:02:25 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.5-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 11:02:25 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 11:02:26 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 11:02:27 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 25 Apr 2017 11:02:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 11:02:29 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fe78f9390176d0c24bc5794e55e7d1148052899ca3c7ebc5db771c0b33b4ef`  
		Last Modified: Tue, 25 Apr 2017 15:19:55 GMT  
		Size: 8.6 MB (8647965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be0e42b5d11a4c3f3be7a7cd63e7d2303f1c7ffb65608d22a2298d56b78a1fc9`  
		Last Modified: Tue, 25 Apr 2017 15:26:31 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37bd99d43806a567d60058d5ccd945899c1f8b754aaf512a5a8bd2bbb26b3033`  
		Last Modified: Tue, 25 Apr 2017 15:26:36 GMT  
		Size: 58.7 MB (58709270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:804adbfc0bf2e424ba175a85df555e30fab2adada2cbc56fc513f05299991d00`  
		Last Modified: Tue, 25 Apr 2017 15:26:31 GMT  
		Size: 716.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7614fbaa5d6d0d3d8cb6cc31e43633a6c440d4907f5451e590253d06887475c1`  
		Last Modified: Tue, 25 Apr 2017 15:26:32 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.5-enterprise`

```console
$ docker pull neo4j@sha256:464dfcc2d8f77dbf14c112cc6c9c100780a8fe132c30143fcd81cc3f9913ae43
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.5-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.6 MB (196628980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5a7b32f97748a0a9d4f4b4d9824aba9775983f643b3b899ffd32c00f176ae9a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:54:37 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 11:02:46 GMT
ENV NEO4J_SHA256=e12b962b01f5e3d1ab72f52aa311cfb270557ebca13874efb049b15b0cbfa471
# Tue, 25 Apr 2017 11:02:47 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.5-unix.tar.gz
# Tue, 25 Apr 2017 11:02:47 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.5-unix.tar.gz
# Tue, 25 Apr 2017 11:02:48 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 11:03:01 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.5-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 11:03:02 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 11:03:04 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.5-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 11:03:04 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 11:03:05 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 11:03:06 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 25 Apr 2017 11:03:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 11:03:08 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fe78f9390176d0c24bc5794e55e7d1148052899ca3c7ebc5db771c0b33b4ef`  
		Last Modified: Tue, 25 Apr 2017 15:19:55 GMT  
		Size: 8.6 MB (8647965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43b45506d960ab3ef671d2660df9f8169bb5d354aca92e41c83d7a92c32b9cbe`  
		Last Modified: Tue, 25 Apr 2017 15:27:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c323730c76f81b359a20f1e360ec2dfce0dd7e54e61bee480ed6178a4b4e5692`  
		Last Modified: Tue, 25 Apr 2017 15:27:08 GMT  
		Size: 61.2 MB (61239767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfd0979ca40ccca989aeb926daf3fec0fe113e72218bea8b656833f55bea0f2`  
		Last Modified: Tue, 25 Apr 2017 15:27:02 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1585add2bc407719522d81a2c8b70b5e0a2cd4d30ad57317bd00433284f662d`  
		Last Modified: Tue, 25 Apr 2017 15:27:04 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.4`

```console
$ docker pull neo4j@sha256:fecdc709829e0bce98aab95f77dcaf1985c4eb955ad73378a2bfd2e301d32649
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.1 MB (194070719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2065a75f6b371fc2417b5dcbd4056a55f93dea99bb07241a2c5c1e7e54a22183`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:54:37 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 11:00:54 GMT
ENV NEO4J_SHA256=4a4b12e9d97771d9c293ee7786ef08ff7ad0f14a5db0f7fc01e8675e476f644b
# Tue, 25 Apr 2017 11:00:54 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.4-unix.tar.gz
# Tue, 25 Apr 2017 11:00:55 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.4-unix.tar.gz
# Tue, 25 Apr 2017 11:00:56 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 11:01:07 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.4-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 11:01:08 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 11:01:09 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.4-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 11:01:10 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 11:01:11 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 11:01:12 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 25 Apr 2017 11:01:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 11:01:13 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fe78f9390176d0c24bc5794e55e7d1148052899ca3c7ebc5db771c0b33b4ef`  
		Last Modified: Tue, 25 Apr 2017 15:19:55 GMT  
		Size: 8.6 MB (8647965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a548b6555bbf3c6d0f99967d19c39c6b09ae7e16aa4714d8918d5553c2fb6ed`  
		Last Modified: Tue, 25 Apr 2017 15:25:30 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1cd8f5b6c5baadb6db762279732b1d79e9356211a395438dc2791e7d396196d`  
		Last Modified: Tue, 25 Apr 2017 15:25:35 GMT  
		Size: 58.7 MB (58681509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e082dae4ac3172ec33098f6f7449fffd6c812c4381ffe68f1468c85ec2a0bf`  
		Last Modified: Tue, 25 Apr 2017 15:25:30 GMT  
		Size: 711.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ce78e01e566b14047f64544393c9e26113188ef90a28aada9b84daa5c6629e`  
		Last Modified: Tue, 25 Apr 2017 15:25:30 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.4-enterprise`

```console
$ docker pull neo4j@sha256:6437a6ff45104c65224aafcc3622983deab9032a71586676564173a4fb1c6d29
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.4-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.6 MB (196601058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb0132dd5f825ff29376b7b22ac5b2a57df0ea1b3c70dfe65606ec6fa6fa70c9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:54:37 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 11:01:31 GMT
ENV NEO4J_SHA256=640095b153eff5e9f81120d73a110e7d69b2868fc922cd9f54318d203b26f3c1
# Tue, 25 Apr 2017 11:01:31 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.4-unix.tar.gz
# Tue, 25 Apr 2017 11:01:32 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.4-unix.tar.gz
# Tue, 25 Apr 2017 11:01:33 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 11:01:45 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.4-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 11:01:46 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 11:01:47 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.4-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 11:01:48 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 11:01:49 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 11:01:49 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 25 Apr 2017 11:01:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 11:01:51 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fe78f9390176d0c24bc5794e55e7d1148052899ca3c7ebc5db771c0b33b4ef`  
		Last Modified: Tue, 25 Apr 2017 15:19:55 GMT  
		Size: 8.6 MB (8647965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c92feadd4ff4993350dfdb7f9d4dd7107b9221f41894873aff2ffe4efb4a76`  
		Last Modified: Tue, 25 Apr 2017 15:26:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c6fa646566f0310b394b588192ea8abde35a13cc9cfa64f3e18ecd0e4b04dc`  
		Last Modified: Tue, 25 Apr 2017 15:26:07 GMT  
		Size: 61.2 MB (61211851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9588bf625eecc36cd7f5f2377a4fa7d1e532a3940ab27d546703fc2b222083`  
		Last Modified: Tue, 25 Apr 2017 15:26:02 GMT  
		Size: 712.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:930dd47b77f16be8a498a78f8974a1e52d44f39c5af1000b7c4971692b4d3574`  
		Last Modified: Tue, 25 Apr 2017 15:26:02 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.3`

```console
$ docker pull neo4j@sha256:773760b28d00f806703ee41ea12a5990c801a4f6a758ded020e5ecfbe459e320
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.3` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.6 MB (194612936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b99168b7ce146b4327daee9b96aea74206d63e7566674369bb077876c2541fd9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:54:37 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 10:59:39 GMT
ENV NEO4J_SHA256=01559c55055516a42ee2dd100137b6b55d63f02959a3c6c6db7a152e045828d9
# Tue, 25 Apr 2017 10:59:40 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.3-unix.tar.gz
# Tue, 25 Apr 2017 10:59:40 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.3-unix.tar.gz
# Tue, 25 Apr 2017 10:59:41 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 10:59:52 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.3-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 10:59:53 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 10:59:54 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.3-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 10:59:55 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 10:59:56 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 10:59:57 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 25 Apr 2017 10:59:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 10:59:58 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fe78f9390176d0c24bc5794e55e7d1148052899ca3c7ebc5db771c0b33b4ef`  
		Last Modified: Tue, 25 Apr 2017 15:19:55 GMT  
		Size: 8.6 MB (8647965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4050b386289d8793e88ce094564170ec693d6d2d18d3386cd9a330b5608a65a7`  
		Last Modified: Tue, 25 Apr 2017 15:24:31 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221b26fe983cf193d3008d0551eccd43ff102869b73ac54cf4fc80c86c2ed762`  
		Last Modified: Tue, 25 Apr 2017 15:24:36 GMT  
		Size: 59.2 MB (59223724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:000d77e3db0c2605dd677bead43085e822625fc5b1a85466891eba7d785a0548`  
		Last Modified: Tue, 25 Apr 2017 15:24:31 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a431c3274bc715f5ffd314e23f195231802aa1cdc1af709cf12e76a70d3422`  
		Last Modified: Tue, 25 Apr 2017 15:24:32 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.3-enterprise`

```console
$ docker pull neo4j@sha256:e113098d0fc900b35a9dcbbdead651815b6a3abfade811d53174ccd338387634
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.3-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.0 MB (197022976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44ab95aa9f1ddaa2735a5e7ff60066b7de0cf458433525af89154f4d2d65bf22`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:54:37 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 11:00:16 GMT
ENV NEO4J_SHA256=864b7ebef3a12844c809e75016aa951c60ac90fb0d075a595108824859ce7875
# Tue, 25 Apr 2017 11:00:16 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.3-unix.tar.gz
# Tue, 25 Apr 2017 11:00:17 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.3-unix.tar.gz
# Tue, 25 Apr 2017 11:00:17 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 11:00:31 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.3-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 11:00:31 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 11:00:33 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.3-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 11:00:34 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 11:00:35 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 11:00:35 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 25 Apr 2017 11:00:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 11:00:37 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fe78f9390176d0c24bc5794e55e7d1148052899ca3c7ebc5db771c0b33b4ef`  
		Last Modified: Tue, 25 Apr 2017 15:19:55 GMT  
		Size: 8.6 MB (8647965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf707391600b7279ed73516903ed651a7d702d2c5fa44c2b2198cb62554aca36`  
		Last Modified: Tue, 25 Apr 2017 15:25:02 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1c38e8e504231c38a88db9c19021c615c7cc4df8d9f07a4dc27b6430004311`  
		Last Modified: Tue, 25 Apr 2017 15:25:07 GMT  
		Size: 61.6 MB (61633763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982082c5cdd078db96e7945727f434f297ee42117398218c1aecda823f1252d7`  
		Last Modified: Tue, 25 Apr 2017 15:25:01 GMT  
		Size: 715.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f09c99da109e6d99896189d503920ad45c86171d7c90738c80cda6141a7e1958`  
		Last Modified: Tue, 25 Apr 2017 15:25:01 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.2`

```console
$ docker pull neo4j@sha256:b4ff93e4f76628bfc0cbe040f2ccfec4a520cc7f858f769765a6f3a161070148
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.5 MB (194496668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d1cf183bfd17d91fe1c4168f980328ccab4394faff2502fac5217cb1587feec`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:54:37 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 10:58:24 GMT
ENV NEO4J_SHA256=37e24d95c914c54d5cbbe99473d4beef89da78adb2db04eb87258a489225932a
# Tue, 25 Apr 2017 10:58:25 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.2-unix.tar.gz
# Tue, 25 Apr 2017 10:58:26 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.2-unix.tar.gz
# Tue, 25 Apr 2017 10:58:26 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 10:58:39 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.2-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 10:58:39 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 10:58:41 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.2-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 10:58:41 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 10:58:42 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 10:58:43 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 25 Apr 2017 10:58:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 10:58:44 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fe78f9390176d0c24bc5794e55e7d1148052899ca3c7ebc5db771c0b33b4ef`  
		Last Modified: Tue, 25 Apr 2017 15:19:55 GMT  
		Size: 8.6 MB (8647965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33aab77d9f841f9d739a0427b2bfdfdf9db3c34f3575710204fe73ba495ca844`  
		Last Modified: Tue, 25 Apr 2017 15:23:33 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc0e338871dabe459011408c386134da8dc04d34fed348db4b42eddce8b8632e`  
		Last Modified: Tue, 25 Apr 2017 15:23:37 GMT  
		Size: 59.1 MB (59107453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf4977c4a786afddd11676032183f16ed7077625cac821832b638ccfbf8a06d`  
		Last Modified: Tue, 25 Apr 2017 15:23:32 GMT  
		Size: 716.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0cf5bc5b632420c45b85847b4342ea93848f2fbfaff0c115441e1495e2e12e`  
		Last Modified: Tue, 25 Apr 2017 15:23:32 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.2-enterprise`

```console
$ docker pull neo4j@sha256:1cfbc0b48860cdfa5bf1b6b12772f1db3c0d21cbac52c383c0763a454ecebad9
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.2-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196942766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2486171aef51db0d96d02641b0096fc34e935848aa37840deb82b385f1cfead`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:54:37 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 10:59:01 GMT
ENV NEO4J_SHA256=ea80cfca918dd70ea5d10a125f5c3a5be02e45dd497b67dfa2d22770a891acea
# Tue, 25 Apr 2017 10:59:02 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.2-unix.tar.gz
# Tue, 25 Apr 2017 10:59:03 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.2-unix.tar.gz
# Tue, 25 Apr 2017 10:59:03 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 10:59:16 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.2-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 10:59:16 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 10:59:18 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.2-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 10:59:18 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 10:59:19 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 10:59:20 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 25 Apr 2017 10:59:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 10:59:22 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fe78f9390176d0c24bc5794e55e7d1148052899ca3c7ebc5db771c0b33b4ef`  
		Last Modified: Tue, 25 Apr 2017 15:19:55 GMT  
		Size: 8.6 MB (8647965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a69e6185a63fc0287f67c9103ca0caeb1e6976089c884cc5946f5f6e08cc872`  
		Last Modified: Tue, 25 Apr 2017 15:24:01 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b96d9e8a2eab31c5620da98245829bf01c0232222a856e5c26a4b30a42ef81a5`  
		Last Modified: Tue, 25 Apr 2017 15:24:07 GMT  
		Size: 61.6 MB (61553553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2215c8bf2fbab38c123043a90c5b96b66bae702323905caab0e1c802b9da909`  
		Last Modified: Tue, 25 Apr 2017 15:24:01 GMT  
		Size: 715.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b98e3451075c6ae5fb7a9c604629f90b25fdd9833933ebe556b8cd510dfeb254`  
		Last Modified: Tue, 25 Apr 2017 15:24:01 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.1`

```console
$ docker pull neo4j@sha256:66b6fbd85f91a462fd2b1d78679a51b571bd2853c63b671b178da362df2dfd8d
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.4 MB (194416454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dc7f44c7abb03a5eacd6bf204fa855b63858aad35070c1370ec9d05ff4cbc9e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:54:37 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 10:57:08 GMT
ENV NEO4J_SHA256=7b2f30d73af107eacd9a3a619475ef448a08eecb2cdb42ab1f8a38d091c70ecb
# Tue, 25 Apr 2017 10:57:09 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.1-unix.tar.gz
# Tue, 25 Apr 2017 10:57:09 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.1-unix.tar.gz
# Tue, 25 Apr 2017 10:57:10 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 10:57:22 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.1-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 10:57:23 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 10:57:24 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.1-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 10:57:25 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 10:57:26 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 10:57:27 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 25 Apr 2017 10:57:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 10:57:29 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fe78f9390176d0c24bc5794e55e7d1148052899ca3c7ebc5db771c0b33b4ef`  
		Last Modified: Tue, 25 Apr 2017 15:19:55 GMT  
		Size: 8.6 MB (8647965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171ecda5dde88a5cf9048904e676608a374dc6fea54f99e36140056796332351`  
		Last Modified: Tue, 25 Apr 2017 15:20:52 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc92a2fba41b8391d21c9b86fd58bbc02e9378f5ab320c3057ec79cb58f39a2`  
		Last Modified: Tue, 25 Apr 2017 15:20:56 GMT  
		Size: 59.0 MB (59027243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38d6242f5e53eadcbfe8f4b2d246b2d31792a019ee5648f5450a1cf9a4991e6`  
		Last Modified: Tue, 25 Apr 2017 15:20:51 GMT  
		Size: 712.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92303444dda843af59525ccdb74cd0ba675e9dfcd0889896fa69b1d32cfdfd1`  
		Last Modified: Tue, 25 Apr 2017 15:20:51 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.1-enterprise`

```console
$ docker pull neo4j@sha256:a50c3bd7060677b886dc5f9d4ec3bf7e24c18f6218b700867d4d088654534be5
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.1-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196855050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9f3613d0502b6b56b1ccce7d958680731fbdba46d7ca65f9b4997d467fb3ab2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:54:37 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 10:57:46 GMT
ENV NEO4J_SHA256=93f0950b0c3a5a604f80183814b7cda2988a652e9278159c47d036daa96e3d29
# Tue, 25 Apr 2017 10:57:46 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.1-unix.tar.gz
# Tue, 25 Apr 2017 10:57:47 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.1-unix.tar.gz
# Tue, 25 Apr 2017 10:57:48 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 10:58:01 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.1-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 10:58:02 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 10:58:03 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.1-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 10:58:04 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 10:58:05 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 10:58:06 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 25 Apr 2017 10:58:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 10:58:07 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fe78f9390176d0c24bc5794e55e7d1148052899ca3c7ebc5db771c0b33b4ef`  
		Last Modified: Tue, 25 Apr 2017 15:19:55 GMT  
		Size: 8.6 MB (8647965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1725e121e1ebc522a403675b42b66e55312cd45fad6e8de2ca1d20d382913901`  
		Last Modified: Tue, 25 Apr 2017 15:21:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b322f008447e2b8a74c5353b1018583fe58e73cadb6ea0b40e154cb8b88bd5d2`  
		Last Modified: Tue, 25 Apr 2017 15:21:26 GMT  
		Size: 61.5 MB (61465839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e094ec3f664daa7b61da569e54204479123e9dcdbffe44b2ef2468b7f2733fc`  
		Last Modified: Tue, 25 Apr 2017 15:21:21 GMT  
		Size: 711.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912dae0e3d3f0fd70b75b25a081d1a27a75e502e0b8d0cc00cb7738996f940b1`  
		Last Modified: Tue, 25 Apr 2017 15:21:21 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.0`

```console
$ docker pull neo4j@sha256:e782610031204922e6cb6bfea0949b0599925840f60ebacc985bd77d68eacf8a
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.0 MB (194003099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ebf33dfc9b996b8f03ea58d421358193f3d5844e4d1466c3ab2881d4d4bf390`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:54:37 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 10:55:53 GMT
ENV NEO4J_SHA256=88fee93884700dae6a1f870dd84b3da9d094db33d57db1c88904954ef2cb4830
# Tue, 25 Apr 2017 10:55:54 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.0-unix.tar.gz
# Tue, 25 Apr 2017 10:55:54 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.0-unix.tar.gz
# Tue, 25 Apr 2017 10:55:55 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 10:56:07 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 10:56:08 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 10:56:09 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.0-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 10:56:10 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 10:56:11 GMT
COPY file:cb4000bfe72fb1762262e9e56a951af2b641306dea07b6f13b6623ef1f84fc92 in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 10:56:12 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 25 Apr 2017 10:56:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 10:56:13 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fe78f9390176d0c24bc5794e55e7d1148052899ca3c7ebc5db771c0b33b4ef`  
		Last Modified: Tue, 25 Apr 2017 15:19:55 GMT  
		Size: 8.6 MB (8647965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d815ca1084661e50b623fdbd40a1474d688bc33edc37bf1b7b0a4f60f23ebffb`  
		Last Modified: Tue, 25 Apr 2017 15:19:52 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f81969e2baf0c6e86ff53c2a415035e564830dcf085c6916437c6d2de057fb5`  
		Last Modified: Tue, 25 Apr 2017 15:19:57 GMT  
		Size: 58.6 MB (58613846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91fb1acd4c0672ebfaca87baceaca0428d951449f9d890efcac9e1b3528921c7`  
		Last Modified: Tue, 25 Apr 2017 15:19:53 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d164fa4c709db51e0b3d91b9e260af25afa163bf2b10bde89a29aa1e25468b8`  
		Last Modified: Tue, 25 Apr 2017 15:19:52 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.0-enterprise`

```console
$ docker pull neo4j@sha256:5c2bd12626f113e6d7ca368b437a90048dd34adcda5908505e6715849cc65108
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.0-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.5 MB (196459729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faa858a2c3069efc883b5baee874cde29dd99d135d9370ebe2150c686791d222`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:43:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:43:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:54:37 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 10:56:30 GMT
ENV NEO4J_SHA256=0d3f370f8141d8bc37065f843af190c405cba098d1bb82065ffc0cb5b99950b7
# Tue, 25 Apr 2017 10:56:31 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.0-unix.tar.gz
# Tue, 25 Apr 2017 10:56:31 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.0-unix.tar.gz
# Tue, 25 Apr 2017 10:56:32 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 25 Apr 2017 10:56:45 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 25 Apr 2017 10:56:46 GMT
WORKDIR /var/lib/neo4j
# Tue, 25 Apr 2017 10:56:47 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.0-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 25 Apr 2017 10:56:48 GMT
VOLUME [/data]
# Tue, 25 Apr 2017 10:56:49 GMT
COPY file:cb4000bfe72fb1762262e9e56a951af2b641306dea07b6f13b6623ef1f84fc92 in /docker-entrypoint.sh 
# Tue, 25 Apr 2017 10:56:50 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 25 Apr 2017 10:56:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Apr 2017 10:56:51 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919cc99a7dacf7e2dbd26a8c3fc0f9ca72ed5df8d4f5544973b6d52462a7de48`  
		Last Modified: Tue, 25 Apr 2017 00:56:15 GMT  
		Size: 54.1 MB (54058805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ffe6f1b4124e5fc29d2841a08f07f00ea3cf2db797aa6940f30aa4029ed34`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 289.6 KB (289640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fe78f9390176d0c24bc5794e55e7d1148052899ca3c7ebc5db771c0b33b4ef`  
		Last Modified: Tue, 25 Apr 2017 15:19:55 GMT  
		Size: 8.6 MB (8647965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62a76b91995716691820a55dbda407b9c5efe72f546c55ace7ed5bba815edb45`  
		Last Modified: Tue, 25 Apr 2017 15:20:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f2e50bcaa4dc0731fdbe1977b4b3dd8c04fb1c233fbefdd85bb9241e2de3dd`  
		Last Modified: Tue, 25 Apr 2017 15:20:27 GMT  
		Size: 61.1 MB (61070478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a1e7742f0d97fedd23e49ad9ace9e40d756efee75d2b5589e0ef9477841b5f9`  
		Last Modified: Tue, 25 Apr 2017 15:20:21 GMT  
		Size: 709.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac7e26d35f064351b7ef690eed0a130564dbe0ad61806035d79225264e38051`  
		Last Modified: Tue, 25 Apr 2017 15:20:21 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
