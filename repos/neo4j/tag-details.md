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
$ docker pull neo4j@sha256:622cdf34cd74cb6f1ed935bba31ea95a4d120dd202280a74b387740913f13775
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.9` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.1 MB (186068635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2088f936eaced1655e9ab23b798e43e48e55fa318ba9e1fda1215d47279642c3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:37:02 GMT
ENV NEO4J_SHA256=0d4ab95746871388bd55e418d148ff9de1440dfb4588ce228e3ac84360c46def
# Wed, 22 Mar 2017 21:37:02 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.9-unix.tar.gz
# Wed, 22 Mar 2017 21:37:02 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.9-unix.tar.gz
# Wed, 22 Mar 2017 21:37:03 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:37:15 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.9-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:37:15 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:37:16 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.9-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:37:17 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:37:17 GMT
COPY file:0944a2cbfb3872ef080e1d4d523c9d1bc7e6051f44ee5f024ab6840af5914b11 in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:37:18 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 22 Mar 2017 21:37:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:37:19 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc37bc4433864467eb0c2bbb5dd1fd3c2879a69999a82b04ceb41019ceda2791`  
		Last Modified: Fri, 24 Mar 2017 03:07:45 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd816db72a14facf29fa145a141d7de959b5d23faa99109edac4d2c8d37dea9`  
		Last Modified: Fri, 24 Mar 2017 03:07:52 GMT  
		Size: 61.6 MB (61575281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd8953392141fb1fac1b930e1292fe80e3a7e919032a903cb4607306a80e679`  
		Last Modified: Fri, 24 Mar 2017 03:07:45 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a3d68ca9b3d8967143652303553edd72050b47d244336c7f1e51863b6d5d6b`  
		Last Modified: Fri, 24 Mar 2017 03:07:46 GMT  
		Size: 1.4 KB (1407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0`

```console
$ docker pull neo4j@sha256:622cdf34cd74cb6f1ed935bba31ea95a4d120dd202280a74b387740913f13775
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.1 MB (186068635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2088f936eaced1655e9ab23b798e43e48e55fa318ba9e1fda1215d47279642c3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:37:02 GMT
ENV NEO4J_SHA256=0d4ab95746871388bd55e418d148ff9de1440dfb4588ce228e3ac84360c46def
# Wed, 22 Mar 2017 21:37:02 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.9-unix.tar.gz
# Wed, 22 Mar 2017 21:37:02 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.9-unix.tar.gz
# Wed, 22 Mar 2017 21:37:03 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:37:15 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.9-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:37:15 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:37:16 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.9-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:37:17 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:37:17 GMT
COPY file:0944a2cbfb3872ef080e1d4d523c9d1bc7e6051f44ee5f024ab6840af5914b11 in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:37:18 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 22 Mar 2017 21:37:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:37:19 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc37bc4433864467eb0c2bbb5dd1fd3c2879a69999a82b04ceb41019ceda2791`  
		Last Modified: Fri, 24 Mar 2017 03:07:45 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd816db72a14facf29fa145a141d7de959b5d23faa99109edac4d2c8d37dea9`  
		Last Modified: Fri, 24 Mar 2017 03:07:52 GMT  
		Size: 61.6 MB (61575281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd8953392141fb1fac1b930e1292fe80e3a7e919032a903cb4607306a80e679`  
		Last Modified: Fri, 24 Mar 2017 03:07:45 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a3d68ca9b3d8967143652303553edd72050b47d244336c7f1e51863b6d5d6b`  
		Last Modified: Fri, 24 Mar 2017 03:07:46 GMT  
		Size: 1.4 KB (1407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.9-enterprise`

```console
$ docker pull neo4j@sha256:afcc38a12f7568501ec7b160f61205742c413d41aa32f3a2ec1ab100f23b8bf2
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.9-enterprise` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.4 MB (188440784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c84c95f4135da666f775f0883a62877136cb22e9669377ce8ac2103585c7eec`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:37:20 GMT
ENV NEO4J_SHA256=b91cc0f164d52b4fd5919f119eb6060d75ad7c596bc365a1a059bc0423a11f18
# Wed, 22 Mar 2017 21:37:20 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.9-unix.tar.gz
# Wed, 22 Mar 2017 21:37:20 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.9-unix.tar.gz
# Wed, 22 Mar 2017 21:37:21 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:37:32 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.9-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:37:33 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:37:34 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.9-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:37:34 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:37:35 GMT
COPY file:0944a2cbfb3872ef080e1d4d523c9d1bc7e6051f44ee5f024ab6840af5914b11 in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:37:35 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 22 Mar 2017 21:37:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:37:36 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b2e0afa9188dd08f4a00fc4d698868a36b42b902c089e1b157b6f035dad66f`  
		Last Modified: Fri, 24 Mar 2017 03:08:38 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de93f857e5aa860cc0fdf04fb520199616e64b8ffb1ce2bc1a958f56076c7bc`  
		Last Modified: Fri, 24 Mar 2017 03:08:46 GMT  
		Size: 63.9 MB (63947427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ad9ff43bb9ee6bc4a9b32461ba941712cb1d6706b31a335b1c92a19e34ece7`  
		Last Modified: Fri, 24 Mar 2017 03:08:38 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f6ea9dfa43e6022e98933ba261738c78f483aaec7b79524c3b65ac399c605b5`  
		Last Modified: Fri, 24 Mar 2017 03:08:39 GMT  
		Size: 1.4 KB (1408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0-enterprise`

```console
$ docker pull neo4j@sha256:afcc38a12f7568501ec7b160f61205742c413d41aa32f3a2ec1ab100f23b8bf2
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0-enterprise` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.4 MB (188440784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c84c95f4135da666f775f0883a62877136cb22e9669377ce8ac2103585c7eec`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:37:20 GMT
ENV NEO4J_SHA256=b91cc0f164d52b4fd5919f119eb6060d75ad7c596bc365a1a059bc0423a11f18
# Wed, 22 Mar 2017 21:37:20 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.9-unix.tar.gz
# Wed, 22 Mar 2017 21:37:20 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.9-unix.tar.gz
# Wed, 22 Mar 2017 21:37:21 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:37:32 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.9-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:37:33 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:37:34 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.9-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:37:34 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:37:35 GMT
COPY file:0944a2cbfb3872ef080e1d4d523c9d1bc7e6051f44ee5f024ab6840af5914b11 in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:37:35 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 22 Mar 2017 21:37:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:37:36 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b2e0afa9188dd08f4a00fc4d698868a36b42b902c089e1b157b6f035dad66f`  
		Last Modified: Fri, 24 Mar 2017 03:08:38 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de93f857e5aa860cc0fdf04fb520199616e64b8ffb1ce2bc1a958f56076c7bc`  
		Last Modified: Fri, 24 Mar 2017 03:08:46 GMT  
		Size: 63.9 MB (63947427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ad9ff43bb9ee6bc4a9b32461ba941712cb1d6706b31a335b1c92a19e34ece7`  
		Last Modified: Fri, 24 Mar 2017 03:08:38 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f6ea9dfa43e6022e98933ba261738c78f483aaec7b79524c3b65ac399c605b5`  
		Last Modified: Fri, 24 Mar 2017 03:08:39 GMT  
		Size: 1.4 KB (1408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.8`

```console
$ docker pull neo4j@sha256:9d57046552b43ddb2ea0981daefee14ab47c549423672790c245237c84e4df2d
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.0 MB (185987461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f8df04f6b4733c18c376c701b49589550bc9836fa4482a750e1015583215f6c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:42:37 GMT
ENV NEO4J_SHA256=015c33dc791f9be2f2ef8ed1d1014f9f3f31140d192df676a5d6f584f5c7f6aa
# Wed, 22 Mar 2017 21:42:38 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.8-unix.tar.gz
# Wed, 22 Mar 2017 21:42:38 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.8-unix.tar.gz
# Wed, 22 Mar 2017 21:42:38 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:42:53 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.8-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:42:54 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:42:54 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.8-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:42:55 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:42:56 GMT
COPY file:0944a2cbfb3872ef080e1d4d523c9d1bc7e6051f44ee5f024ab6840af5914b11 in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:42:56 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 22 Mar 2017 21:42:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:42:57 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc2a28a65d99e79966b32334d153487bc2d3d5d9b8292e8bc8d7cf6e0b8d6e0`  
		Last Modified: Fri, 24 Mar 2017 03:06:42 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee3cfa10f10bf200082c131c8390dd208dfe6a5866b9f1ffe3b52e799bb1e94`  
		Last Modified: Fri, 24 Mar 2017 03:06:48 GMT  
		Size: 61.5 MB (61494104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d296706c6fd475fd36e8a61a0a93bff5e6cdef23ad8a0a2f4d9980b71a668916`  
		Last Modified: Fri, 24 Mar 2017 03:06:42 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d4c4674155a63e053f9fe4efaa14ceaeaf5ebf63588813e4160c0a7060c8cdb`  
		Last Modified: Fri, 24 Mar 2017 03:06:42 GMT  
		Size: 1.4 KB (1408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.8-enterprise`

```console
$ docker pull neo4j@sha256:e3f6e53faaa9a12ffa31e15b1e701d3210f5543562b2dea7e6b5abf0144d6be9
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.8-enterprise` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.4 MB (188356288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20deaa275da524e8cd536f3bf698fd86b5cc705f5e01336ce7dabd2a7a248a25`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:42:58 GMT
ENV NEO4J_SHA256=65e1feac021f45640e390a08c91e9b3bbfed60a7e9cc15c5a44df5af07c46768
# Wed, 22 Mar 2017 21:42:58 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.8-unix.tar.gz
# Wed, 22 Mar 2017 21:42:58 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.8-unix.tar.gz
# Wed, 22 Mar 2017 21:42:59 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:43:10 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.8-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:43:11 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:43:12 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.8-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:43:12 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:43:13 GMT
COPY file:0944a2cbfb3872ef080e1d4d523c9d1bc7e6051f44ee5f024ab6840af5914b11 in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:43:14 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 22 Mar 2017 21:43:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:43:14 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a955a31dc671953f2a630a447787483c3b180c0da9b878018c8f24d6245c9a`  
		Last Modified: Fri, 24 Mar 2017 03:07:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:162d428d278080da3d5d41942d44f999c170f8770de38add4af83ab50de0b0a3`  
		Last Modified: Fri, 24 Mar 2017 03:07:20 GMT  
		Size: 63.9 MB (63862933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ea53ff6acf47ce39de5898dcf43180fc33de171a8b1e0168a668a32ca72053`  
		Last Modified: Fri, 24 Mar 2017 03:07:12 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a8b8ab6d2ba11ff0dd7561b5539da4184515780f9fb9f94bf399445332f7d3`  
		Last Modified: Fri, 24 Mar 2017 03:07:13 GMT  
		Size: 1.4 KB (1408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.7`

```console
$ docker pull neo4j@sha256:c4b4a80205c9a0cb87417c4d699cd4a18cb212f82fcc48d5b579b0c39f147456
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.0 MB (185956357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fabf03e5427c40593e926508b5d488943ec5dc42c90ca2e056f2cdacfa7f0958`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:42:01 GMT
ENV NEO4J_SHA256=69f7b410934d0a83120f892c1f341905b3a9346656b5d085eca1da612b8e7ae6
# Wed, 22 Mar 2017 21:42:02 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.7-unix.tar.gz
# Wed, 22 Mar 2017 21:42:02 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.7-unix.tar.gz
# Wed, 22 Mar 2017 21:42:03 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:42:14 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.7-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:42:15 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:42:16 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.7-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:42:16 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:42:17 GMT
COPY file:0944a2cbfb3872ef080e1d4d523c9d1bc7e6051f44ee5f024ab6840af5914b11 in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:42:17 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 22 Mar 2017 21:42:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:42:18 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c79aedfaf4bf16e546b421858242c36c2c82b7a85ac99a5de7dcb054826759c`  
		Last Modified: Fri, 24 Mar 2017 03:05:34 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487c3940ada3aab3d95d09cbc749fa2ba04abde51871626ac1cf09bf055ffb6e`  
		Last Modified: Fri, 24 Mar 2017 03:05:40 GMT  
		Size: 61.5 MB (61462999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c52f443c758b32fd7ac7ae94886bd1f75cb6660cac9dbb638ab60a8e1e6e7c`  
		Last Modified: Fri, 24 Mar 2017 03:05:34 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13673785385e534afeb9d5869958fc0d0c51260ae8206a5f30b98d1609b5d710`  
		Last Modified: Fri, 24 Mar 2017 03:05:34 GMT  
		Size: 1.4 KB (1409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.7-enterprise`

```console
$ docker pull neo4j@sha256:fec92ef6b4a1f32a0e26f7a4ca127bf9ef2e428d5fcd8ac735ff49ee88db4feb
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.7-enterprise` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.3 MB (188325302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db4cf9feba8d5dedefc5c3929a8bb2ddaa6ef55bd4eda7930f2e3f75ebf9feaf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:42:19 GMT
ENV NEO4J_SHA256=92edf396616be8a1cdb41dd05c300865959f97944f4fe7f50539401a49c095d5
# Wed, 22 Mar 2017 21:42:19 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.7-unix.tar.gz
# Wed, 22 Mar 2017 21:42:20 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.7-unix.tar.gz
# Wed, 22 Mar 2017 21:42:20 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:42:33 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.7-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:42:33 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:42:34 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.7-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:42:34 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:42:35 GMT
COPY file:0944a2cbfb3872ef080e1d4d523c9d1bc7e6051f44ee5f024ab6840af5914b11 in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:42:36 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 22 Mar 2017 21:42:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:42:36 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3840d2e445176d05a05db1df3e5c836a70157415ce64d1a9a01f141fcd44dc8a`  
		Last Modified: Fri, 24 Mar 2017 03:06:07 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85cadda49bf5f4a38b22d0b0da09ee14fd529a46507b6b2628d0a794dbb22cda`  
		Last Modified: Fri, 24 Mar 2017 03:06:16 GMT  
		Size: 63.8 MB (63831946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f5eabdcc5002e4915b42e0c04b65673ca3496d766f77430bdb4cacccea2e00`  
		Last Modified: Fri, 24 Mar 2017 03:06:05 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b3dbfe4406269b312272cdd886fa566a562640e3641e44f66666421356f1f2`  
		Last Modified: Fri, 24 Mar 2017 03:06:06 GMT  
		Size: 1.4 KB (1409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.6`

```console
$ docker pull neo4j@sha256:f65865bd574578e08a08a7be8baee57d572936bac9628411d684af894c3a1a85
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.0 MB (186011479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d5439c2989fd6f2d9d485b38f006bf580b3f15f4b1ac610caeb0a7515b24005`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:41:22 GMT
ENV NEO4J_SHA256=efeab41183e9e5fa94a2d396c65ea93a24e9f105cb3b5f0d0a8e42fb709f4660
# Wed, 22 Mar 2017 21:41:23 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.6-unix.tar.gz
# Wed, 22 Mar 2017 21:41:23 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.6-unix.tar.gz
# Wed, 22 Mar 2017 21:41:24 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:41:38 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.6-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:41:39 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:41:40 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.6-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:41:40 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:41:41 GMT
COPY file:404881b1bacde49595b51ced5b6c716a0338b4c47cd45357cd3d7850f1c255b2 in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:41:41 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 22 Mar 2017 21:41:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:41:42 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae74fe6630e9299985e3fb789ceb2e09bc8b1b3e8ae53337738e4f410a56d14`  
		Last Modified: Fri, 24 Mar 2017 03:04:31 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2dac8e69447ec92dede92ec6522c03c37ac8676f0f091f86b166eb435ce0ae2`  
		Last Modified: Fri, 24 Mar 2017 03:04:38 GMT  
		Size: 61.5 MB (61518149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cd06e5831a2c8959a3bfbbba2afe5436c264242be0afe0d97d182e8b322aef2`  
		Last Modified: Fri, 24 Mar 2017 03:04:31 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b359a9ba2393d566f4e08cae00aba2303241b74fe93ac2c37ee42ea33587d4e`  
		Last Modified: Fri, 24 Mar 2017 03:04:31 GMT  
		Size: 1.4 KB (1380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.6-enterprise`

```console
$ docker pull neo4j@sha256:2b5d22ea3ce2741760651ec776ec88876753584cd5825e80f20c8b7ccffb91c2
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.6-enterprise` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.4 MB (188375315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdf838556b39dac2575d311a128299c95661a96c884f2edeb9c8edf188ca49f3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:41:43 GMT
ENV NEO4J_SHA256=f58450760a92b0913c5418e26278a6a65bf6c5ba01f9b12a033f56e80f0c3d23
# Wed, 22 Mar 2017 21:41:43 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.6-unix.tar.gz
# Wed, 22 Mar 2017 21:41:44 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.6-unix.tar.gz
# Wed, 22 Mar 2017 21:41:44 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:41:57 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.6-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:41:57 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:41:58 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.6-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:41:59 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:41:59 GMT
COPY file:404881b1bacde49595b51ced5b6c716a0338b4c47cd45357cd3d7850f1c255b2 in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:42:00 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 22 Mar 2017 21:42:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:42:01 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa17a6957f74fee772814d9101072dcc5f5440f3d84fae7f0b66b5d07cdedfb`  
		Last Modified: Fri, 24 Mar 2017 03:05:03 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9636fb55aced44657cafa4a950cb2f33881858732b503d3fe90592cd3575e73b`  
		Last Modified: Fri, 24 Mar 2017 03:05:09 GMT  
		Size: 63.9 MB (63881985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b3d3bf1474c272ee7fd5df59b2da16e8d07a8f69ce01dd98df6c06afcb15a04`  
		Last Modified: Fri, 24 Mar 2017 03:05:03 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a14071d9f5180f232f66cb686c5bc5a5494e731c56da33ec33b66f1b930a534d`  
		Last Modified: Fri, 24 Mar 2017 03:05:03 GMT  
		Size: 1.4 KB (1380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.5`

```console
$ docker pull neo4j@sha256:4271278f9ad5eacdb521bb7ea275b85fdb40887999466b985b8aa20943932b68
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.0 MB (186008567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:301c8ca4b5ed5cd58913196461d797b983005665b65e8b41324eee1e9221a04f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:40:48 GMT
ENV NEO4J_SHA256=65f6995f9d2e87b61cb8d9c7623e9861bced555a8c05f3476aa73240a77437d8
# Wed, 22 Mar 2017 21:40:48 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.5-unix.tar.gz
# Wed, 22 Mar 2017 21:40:49 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.5-unix.tar.gz
# Wed, 22 Mar 2017 21:40:49 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:40:59 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.5-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:41:00 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:41:01 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.5-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:41:01 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:41:02 GMT
COPY file:404881b1bacde49595b51ced5b6c716a0338b4c47cd45357cd3d7850f1c255b2 in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:41:02 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 22 Mar 2017 21:41:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:41:03 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd2bcfaa0a00378858002af0974f45d726b1947519b24f0823d91532bab6dcd`  
		Last Modified: Fri, 24 Mar 2017 03:03:29 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d8b86c745267da5e12d2990d47695d6ef003dbceeeefb9cfe46c92ad7cba692`  
		Last Modified: Fri, 24 Mar 2017 03:03:36 GMT  
		Size: 61.5 MB (61515235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ce41a1d7f8bd499baa551c0e226619efba85464729589d25251b95c396df08`  
		Last Modified: Fri, 24 Mar 2017 03:03:29 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981eb16c9c54f2827b012e571261cf8521380dc39470f6e67a685a81b6d92243`  
		Last Modified: Fri, 24 Mar 2017 03:03:29 GMT  
		Size: 1.4 KB (1380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.5-enterprise`

```console
$ docker pull neo4j@sha256:6b3a71c5f57e0dd0a1d1935299a214d678c6f78d09e0dd2413e9be03d432e339
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.5-enterprise` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.4 MB (188371876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d0c742eb113b6b9be2c4fc6b053779d42a573437ccea11f3ff496f4d66e8091`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:41:04 GMT
ENV NEO4J_SHA256=069cd8b1eab4e4b20e4abb50a6f1e7c985a21ad349d3fe3413943b96f1724e06
# Wed, 22 Mar 2017 21:41:04 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.5-unix.tar.gz
# Wed, 22 Mar 2017 21:41:05 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.5-unix.tar.gz
# Wed, 22 Mar 2017 21:41:05 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:41:18 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.5-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:41:18 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:41:19 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.5-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:41:20 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:41:20 GMT
COPY file:404881b1bacde49595b51ced5b6c716a0338b4c47cd45357cd3d7850f1c255b2 in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:41:21 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 22 Mar 2017 21:41:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:41:22 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2e50cf6efa866dfb1926d0004745e9fec29e70370a13cc052e35cbad3632cf`  
		Last Modified: Fri, 24 Mar 2017 03:04:00 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390814277eef404f39c343a69f5058924e72504053e364676071ce57eef54945`  
		Last Modified: Fri, 24 Mar 2017 03:04:06 GMT  
		Size: 63.9 MB (63878546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b061e593db2fb26d73a7ad36bf6c6244432ad5f70bf7d374d36184ebd5af08`  
		Last Modified: Fri, 24 Mar 2017 03:04:00 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111c085da167150fc8ee990bb10461cd65825fbd9b71a43223b45295892c39bf`  
		Last Modified: Fri, 24 Mar 2017 03:03:59 GMT  
		Size: 1.4 KB (1380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.4`

```console
$ docker pull neo4j@sha256:be66fdc91781daacbd0ef0b76449448aae4008f5b518b2c07b500d55ead4d54e
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.9 MB (185932961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:345b6aab659455aea868516159d1d6e1b59136e0ff874fa20f63e90ed443fe51`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:40:09 GMT
ENV NEO4J_SHA256=e1da51163eb18380623788eabea34dfe23ee21c99deca4e7922094b0d242e805
# Wed, 22 Mar 2017 21:40:09 GMT
ENV NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.4-unix.tar.gz
# Wed, 22 Mar 2017 21:40:21 GMT
RUN curl --fail --silent --show-error --location --output neo4j.tar.gz $NEO4J_URI     && echo "$NEO4J_SHA256 neo4j.tar.gz" | sha256sum --check --quiet -     && tar --extract --file neo4j.tar.gz --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm neo4j.tar.gz
# Wed, 22 Mar 2017 21:40:21 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:40:22 GMT
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:40:22 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:40:23 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:40:24 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 22 Mar 2017 21:40:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:40:25 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0018b87358a324980b4d5cdb918c21190b8a9cdc2342538b4e7b4351f6668c48`  
		Last Modified: Fri, 24 Mar 2017 03:02:31 GMT  
		Size: 61.4 MB (61439822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f580a39cee55253576463eb9958c00d30d13d5816b8be57f9ffbed89bb271c42`  
		Last Modified: Fri, 24 Mar 2017 03:02:26 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15bae0586d1cfb4c1951acb7bbd081b0b1deef8b36374e94dced0abab5f72fa1`  
		Last Modified: Fri, 24 Mar 2017 03:02:26 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.4-enterprise`

```console
$ docker pull neo4j@sha256:9b12ab9b5e85d58d163f819da668aa75233354588f75b8dd1ad6e174a8150675
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.4-enterprise` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.3 MB (188276821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4346b369d05cc0cbeb721b55ef2fca85dadccad89dc508d3e54bc46180bb2e46`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:40:25 GMT
ENV NEO4J_SHA256=7cc47dcffdd040beec230cb6633bf03ace326218fa70f6d90612de057a6d61e2
# Wed, 22 Mar 2017 21:40:26 GMT
ENV NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.4-unix.tar.gz
# Wed, 22 Mar 2017 21:40:44 GMT
RUN curl --fail --silent --show-error --location --output neo4j.tar.gz $NEO4J_URI     && echo "$NEO4J_SHA256 neo4j.tar.gz" | sha256sum --check --quiet -     && tar --extract --file neo4j.tar.gz --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm neo4j.tar.gz
# Wed, 22 Mar 2017 21:40:44 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:40:45 GMT
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:40:45 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:40:46 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:40:47 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 22 Mar 2017 21:40:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:40:47 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b37220d3e01ddb743595ea29f2eab56463e5a7146f5904fef1351603a90404`  
		Last Modified: Fri, 24 Mar 2017 03:03:04 GMT  
		Size: 63.8 MB (63783680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080b919b55f5e3313c74a4f51b89e5dc0e4f766f1362ade934869517eacc3aef`  
		Last Modified: Fri, 24 Mar 2017 03:02:57 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:950e3539bc802e4e9f6f9f26feeb2d8d8b897466232af65cb294b16ac6bafe02`  
		Last Modified: Fri, 24 Mar 2017 03:02:57 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.3`

```console
$ docker pull neo4j@sha256:bfd9e4e0cdfb481c6694b2cac92c0fc125b888249081cfdca4a756444a2a5028
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.9 MB (185894117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73f8672a4fe559ed0aeb1f5b90b01f12398522abceca832977adbe4bdd223516`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:39:27 GMT
ENV NEO4J_SHA256=20cd65c84a6e5345f17bb03c145190f74e58ec2754c2e515a64b317e34dae2ce
# Wed, 22 Mar 2017 21:39:28 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.3-unix.tar.gz
# Wed, 22 Mar 2017 21:39:28 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.3-unix.tar.gz
# Wed, 22 Mar 2017 21:39:29 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:39:39 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.3-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:39:39 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:39:40 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.3-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:39:40 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:39:41 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:39:42 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 22 Mar 2017 21:39:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:39:43 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672af11570e7dfff850be1b4d20864d1328b41d9d499ec84887d85eba1080f4f`  
		Last Modified: Fri, 24 Mar 2017 03:01:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:400db71d709fbadcec402dd6c41f6e748ff58ba87f0a6c226e594d83c59c008b`  
		Last Modified: Fri, 24 Mar 2017 03:01:29 GMT  
		Size: 61.4 MB (61400850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0114ae3a20d2e2b2e06a07ddd4d3c4764ebf07f18d9f867cc22ef3207d2d796f`  
		Last Modified: Fri, 24 Mar 2017 03:01:22 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55f33cbea46995d2e7e383c3bc4c0f7768341ecfc45967a5c1accf18f8a8d65`  
		Last Modified: Fri, 24 Mar 2017 03:01:22 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.3-enterprise`

```console
$ docker pull neo4j@sha256:579a5d818cdfd2b88326da7d75f3294b119b33f0cdc2bf789f06ebfbf17424e1
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.3-enterprise` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188227175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef1c8f917ef92a5467774ba84f4d907a752d674b810bec618350bdfb53c1cb19`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:39:43 GMT
ENV NEO4J_SHA256=f73ed4faf94087bded5ee34bc2614f09bbedc3b6e25439058526ce5506eb127e
# Wed, 22 Mar 2017 21:39:44 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.3-unix.tar.gz
# Wed, 22 Mar 2017 21:39:44 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.3-unix.tar.gz
# Wed, 22 Mar 2017 21:39:45 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:40:04 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.3-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:40:04 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:40:05 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.3-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:40:06 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:40:06 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:40:07 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 22 Mar 2017 21:40:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:40:08 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b3b5db0668d66cbf86061cff47d8f9408ee625f2a7986dbb31a4049ace95f9a`  
		Last Modified: Fri, 24 Mar 2017 03:01:54 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66aee69096e1396c38b98ca195cca844becf8fbf413287065407f31fd42e60fb`  
		Last Modified: Fri, 24 Mar 2017 03:02:01 GMT  
		Size: 63.7 MB (63733909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc324e68cd2fffb492c9f2b4f7f13acaa070ad47b1e809e710a78854d37d266`  
		Last Modified: Fri, 24 Mar 2017 03:01:54 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b22bba6bfdae1f22ef6967328df38816d86b3eeec3f7f53123422477dcc95237`  
		Last Modified: Fri, 24 Mar 2017 03:01:54 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.2`

```console
$ docker pull neo4j@sha256:8d4d29a940dc31de8bea8ea776d47f41e882348f0639d964d95837bfef81258f
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.5 MB (186527466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99cdba25bda272e666935fd12bdda5c93237a6f7f9bab4645d4b5a90320998bf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:38:48 GMT
ENV NEO4J_SHA256=3daac469e0ad0f74eb8532ada8019b418e6ebd88da9bac52a4ee3393e18086aa
# Wed, 22 Mar 2017 21:38:48 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.2-unix.tar.gz
# Wed, 22 Mar 2017 21:38:48 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.2-unix.tar.gz
# Wed, 22 Mar 2017 21:38:49 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:39:01 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.2-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:39:01 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:39:02 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.2-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:39:03 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:39:03 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:39:04 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 22 Mar 2017 21:39:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:39:05 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d47f40328ad607c0180e0da2825e58cc282a88979dcbc69c3792a3930f11228`  
		Last Modified: Fri, 24 Mar 2017 03:00:19 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4459a853393f850cedbcde6b386a050706cbcee29a361092eb9f52baf0d1720b`  
		Last Modified: Fri, 24 Mar 2017 03:00:27 GMT  
		Size: 62.0 MB (62034195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a5fdb711fdc2b53d6115da255ae56d84efde6d559f39007cf104d45614cb99`  
		Last Modified: Fri, 24 Mar 2017 03:00:19 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d46973bd26ecd71a39af65c281b416f84f3d7669be52078cb79d5a9872b023`  
		Last Modified: Fri, 24 Mar 2017 03:00:19 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.2-enterprise`

```console
$ docker pull neo4j@sha256:6cff59d05342b6804d6533fb3b4427dc6a6de81288f3e53496d88c9e5cab454e
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.2-enterprise` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.9 MB (188864242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19701d9850e038d7262e1d3fc420eeeb1ef39b50b84c000f5cf842fe023e540c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:39:05 GMT
ENV NEO4J_SHA256=7e3cb1cb29c51ac267e57ec3d12c425bd31a4c92a2ecba70bb78360670b4b972
# Wed, 22 Mar 2017 21:39:06 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.2-unix.tar.gz
# Wed, 22 Mar 2017 21:39:06 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.2-unix.tar.gz
# Wed, 22 Mar 2017 21:39:07 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:39:23 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.2-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:39:23 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:39:24 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.2-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:39:25 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:39:25 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:39:26 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 22 Mar 2017 21:39:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:39:27 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed787adfb9f5fd5cb50bf838851250c2ab438ac30c8d5035647f8d27fe1e37e`  
		Last Modified: Fri, 24 Mar 2017 03:00:52 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8759680e3540899c7147bc113cae60828c51b2cbdbf31ac2c4c396ca8312bbb6`  
		Last Modified: Fri, 24 Mar 2017 03:00:59 GMT  
		Size: 64.4 MB (64370975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc650dedc9a5709f5aed28803336081d72d6e1ed26468d6b09bfd4ab5795c40e`  
		Last Modified: Fri, 24 Mar 2017 03:00:52 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ba7cbf96c47c9ed07575e382f764f2fc42a385a9830d74f648bb2b84fc713f`  
		Last Modified: Fri, 24 Mar 2017 03:00:52 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.1`

```console
$ docker pull neo4j@sha256:e69830ceff80324f7849a75bfb25e2e147fb2c37f9b525f1b014fba33094c900
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.0 MB (187017319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4faa169bef45c5287eed82fdb5a86d555676ca02834ea08550cc555fdd14d38a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:38:12 GMT
ENV NEO4J_SHA256=ae9d966559c83a9f1c61e1ef4d67aafeb9185e568b6dec0cd6b50e4297a15895
# Wed, 22 Mar 2017 21:38:12 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.1-unix.tar.gz
# Wed, 22 Mar 2017 21:38:13 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.1-unix.tar.gz
# Wed, 22 Mar 2017 21:38:13 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:38:25 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.1-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:38:25 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:38:26 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.1-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:38:26 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:38:27 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:38:28 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 22 Mar 2017 21:38:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:38:29 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760f1dd97663725968d9140f724e0d5bdde0ac81632ebab944191ddbf37aa91e`  
		Last Modified: Fri, 24 Mar 2017 02:59:16 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd45a03f2772fad000ea0c933c39b8ff5a101a3b03c704878998a342543a91d1`  
		Last Modified: Fri, 24 Mar 2017 02:59:22 GMT  
		Size: 62.5 MB (62524050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1e72a7247b20e29a3d0470f02b24f051cb4256e8c7239f57e29d66646a4d49`  
		Last Modified: Fri, 24 Mar 2017 02:59:16 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0aaa1a18929c6f22ddbf0db48f4456cfa2dec43713de2478dab3bd15545430`  
		Last Modified: Fri, 24 Mar 2017 02:59:16 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.1-enterprise`

```console
$ docker pull neo4j@sha256:912807d07f84f1d4526e3bf1716e83934fb3836b14ab155be354f8659b4dcff0
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.1-enterprise` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.2 MB (189231602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ba97ed46239676ea6e966977ab6161ee833b83e36feaf064c5fb59d45a7ece5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:38:29 GMT
ENV NEO4J_SHA256=d88c107d10bc4d4919bbac775aa128b4c312a420abfd06897471b5fa96864b11
# Wed, 22 Mar 2017 21:38:30 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.1-unix.tar.gz
# Wed, 22 Mar 2017 21:38:30 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.1-unix.tar.gz
# Wed, 22 Mar 2017 21:38:31 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:38:43 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.1-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:38:43 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:38:44 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.1-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:38:45 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:38:45 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:38:46 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 22 Mar 2017 21:38:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:38:47 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75fcc8238a9390799e8af5e8ed5f2537a753c30803300f5892e9a25361f1e01f`  
		Last Modified: Fri, 24 Mar 2017 02:59:47 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76416ee4bb36a3b80f12fc95d2951f955e123cc5a258521d8e840a51a9e766f`  
		Last Modified: Fri, 24 Mar 2017 02:59:55 GMT  
		Size: 64.7 MB (64738332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e384915e419502e69ec385c1a57fd2f9795fbd223d99c618424c73fc8b060afe`  
		Last Modified: Fri, 24 Mar 2017 02:59:47 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61bc5441e4115ebb543ffc7c9043f9d9b4c691eca0d4149e32d8163e027ff1c`  
		Last Modified: Fri, 24 Mar 2017 02:59:47 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.0`

```console
$ docker pull neo4j@sha256:45a100bded51b6bbdd54a5fbd275afb1d373b80cb3dcd412fd756e451e62e8f9
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.0 MB (187014359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:874d793d7449fd556b8fe1e8b644aaa582124b5e58c957b853bba88e4135b100`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:37:37 GMT
ENV NEO4J_SHA256=1f1aeb3c748d5b05c263b7dab8b195df788507f59228e80534ed8e506a80c517
# Wed, 22 Mar 2017 21:37:37 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.0-unix.tar.gz
# Wed, 22 Mar 2017 21:37:38 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.0-unix.tar.gz
# Wed, 22 Mar 2017 21:37:38 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:37:50 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:37:50 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:37:51 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.0-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:37:51 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:37:52 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:37:53 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 22 Mar 2017 21:37:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:37:54 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ecc86f4400460f9fde1a8b16365ec644c8d41bb0d682f844f8e0148998eecab`  
		Last Modified: Fri, 24 Mar 2017 02:58:09 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8023f54029c78a4e9284d1ee624ffad85bccd4ed08610bd9902f0fe160bd0bcc`  
		Last Modified: Fri, 24 Mar 2017 02:58:15 GMT  
		Size: 62.5 MB (62521088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d470668793fb3fc9996bf52aad349b31df154d0aa61adc05bdde90aef10ab132`  
		Last Modified: Fri, 24 Mar 2017 02:58:09 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ebcde418fcb89322b71b2d5e2cd60aa133b57fecfa316e898caadf24715b3f`  
		Last Modified: Fri, 24 Mar 2017 02:58:09 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.0-enterprise`

```console
$ docker pull neo4j@sha256:7033c8a20898d1cfa06f871940276e7bace312720070f84b9e7d079a0b5dac61
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.0-enterprise` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.2 MB (189229802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc648914d2e45eaa32b5d8bf266ccc8d3ad39184e9fa257984a4d939c0ebb38b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:37:54 GMT
ENV NEO4J_SHA256=376409e1849f2f13d5ea6ddc672b535646ffb9a24527520b661e044190bf617a
# Wed, 22 Mar 2017 21:37:55 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.0-unix.tar.gz
# Wed, 22 Mar 2017 21:37:55 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.0-unix.tar.gz
# Wed, 22 Mar 2017 21:37:56 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:38:07 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:38:08 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:38:09 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.0-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:38:09 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:38:10 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:38:11 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 22 Mar 2017 21:38:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:38:11 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9eb77adc1eff2889588bf45e5de849a2326fa4a30fc471de2da093f26a33a69`  
		Last Modified: Fri, 24 Mar 2017 02:58:40 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f962b616afd10423b1fcdc06cd1c9e91a15b2a569f46a3d2cf4eaee7d5998c09`  
		Last Modified: Fri, 24 Mar 2017 02:58:48 GMT  
		Size: 64.7 MB (64736533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833b0e11d57fd459439df770e6b01eb3bdfd7ed165eca9d152cf995565c9e1b0`  
		Last Modified: Fri, 24 Mar 2017 02:58:40 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a350f134e09200df49546149ad581bc3553c10216a7fba3f8e4fb479143c3ce`  
		Last Modified: Fri, 24 Mar 2017 02:58:40 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.10`

**does not exist** (yet?)

## `neo4j:2.3`

```console
$ docker pull neo4j@sha256:f9eeb67ed7102c5803d44c42f77a95d5cb377a8587876352453372978da7983d
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.9 MB (191856906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c1a24e42c59ee4dcc3a263d40e57080cc70425fd29976d0a4fdf1eadf59c096`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:29:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 21:29:19 GMT
ENV NEO4J_SHA256=044ed403776403f5c6a9b093d592b9b12d8964f605fb9e94f43408dca59202c3
# Wed, 22 Mar 2017 21:29:19 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.9-unix.tar.gz
# Wed, 22 Mar 2017 21:29:20 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.9-unix.tar.gz
# Wed, 22 Mar 2017 21:29:21 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:29:42 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.9-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:29:42 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:29:43 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.9-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:29:44 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:29:45 GMT
COPY file:77655caa958663cf4b6b261cb705cbea286374905edc612985f978867904bd01 in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:29:46 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 22 Mar 2017 21:29:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:29:47 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece33284023fc78d6f99da62ee65324c3b860547e8f50df8137fce9596e97b5c`  
		Last Modified: Fri, 24 Mar 2017 02:47:05 GMT  
		Size: 8.6 MB (8634266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa8cb8bb9b6ad0cac23281bd31af1f43d901d9e3f0c247356e94216bdd501f0`  
		Last Modified: Fri, 24 Mar 2017 02:56:27 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3e13dbed650bfe07236aadc1e164718b043603b2369efc6a7a8021e4976049`  
		Last Modified: Fri, 24 Mar 2017 02:56:33 GMT  
		Size: 58.7 MB (58728857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74cfd9844b0eea55af6dc0338d375a98c45a28b9afc1388fbd1773ff51a58a57`  
		Last Modified: Fri, 24 Mar 2017 02:56:27 GMT  
		Size: 710.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3369b67dc2fafea4c337a4591e7cb42ab9feb6b13724d0b2baf5aea9964016cb`  
		Last Modified: Fri, 24 Mar 2017 02:56:26 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.10-enterprise`

**does not exist** (yet?)

## `neo4j:2.3-enterprise`

```console
$ docker pull neo4j@sha256:13fbce84afea3c3dcff7c106f7094eb0c27a3b023c20d24e34b0950ec1201c86
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3-enterprise` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.4 MB (194402304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d53dc4adcae9ca37c02c32eea191b224f36ea8c46b41a139135edf02fc6f4684`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:29:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 21:29:49 GMT
ENV NEO4J_SHA256=d99aa0d2e1ec8386721981441aa98d3d551d4c40dc1b51f0705519e5cd9ab14b
# Wed, 22 Mar 2017 21:29:49 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.9-unix.tar.gz
# Wed, 22 Mar 2017 21:29:50 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.9-unix.tar.gz
# Wed, 22 Mar 2017 21:29:50 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:30:03 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.9-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:30:03 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:30:05 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.9-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:30:05 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:30:06 GMT
COPY file:77655caa958663cf4b6b261cb705cbea286374905edc612985f978867904bd01 in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:30:07 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 22 Mar 2017 21:30:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:30:08 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece33284023fc78d6f99da62ee65324c3b860547e8f50df8137fce9596e97b5c`  
		Last Modified: Fri, 24 Mar 2017 02:47:05 GMT  
		Size: 8.6 MB (8634266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd3e84a85bc06ea0e641b92b2e3f6da5f56dfc10ebfe1b5817d679506898ba4a`  
		Last Modified: Fri, 24 Mar 2017 02:57:19 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd0c516999c7e687b3f7279645dfa109828fa0c31b1b9f4b3b9c941fdd7cece`  
		Last Modified: Fri, 24 Mar 2017 02:57:24 GMT  
		Size: 61.3 MB (61274261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc60e090703c8e9835a7b3c189194a53b867c152993911413bf84fb2a26c25ac`  
		Last Modified: Fri, 24 Mar 2017 02:57:18 GMT  
		Size: 709.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825236041680e574ce0532df80b62f0695aa5f3e2f6e8bbc3f092c3481d65835`  
		Last Modified: Fri, 24 Mar 2017 02:57:18 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.9`

```console
$ docker pull neo4j@sha256:f9eeb67ed7102c5803d44c42f77a95d5cb377a8587876352453372978da7983d
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.9` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.9 MB (191856906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c1a24e42c59ee4dcc3a263d40e57080cc70425fd29976d0a4fdf1eadf59c096`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:29:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 21:29:19 GMT
ENV NEO4J_SHA256=044ed403776403f5c6a9b093d592b9b12d8964f605fb9e94f43408dca59202c3
# Wed, 22 Mar 2017 21:29:19 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.9-unix.tar.gz
# Wed, 22 Mar 2017 21:29:20 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.9-unix.tar.gz
# Wed, 22 Mar 2017 21:29:21 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:29:42 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.9-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:29:42 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:29:43 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.9-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:29:44 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:29:45 GMT
COPY file:77655caa958663cf4b6b261cb705cbea286374905edc612985f978867904bd01 in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:29:46 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 22 Mar 2017 21:29:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:29:47 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece33284023fc78d6f99da62ee65324c3b860547e8f50df8137fce9596e97b5c`  
		Last Modified: Fri, 24 Mar 2017 02:47:05 GMT  
		Size: 8.6 MB (8634266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa8cb8bb9b6ad0cac23281bd31af1f43d901d9e3f0c247356e94216bdd501f0`  
		Last Modified: Fri, 24 Mar 2017 02:56:27 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3e13dbed650bfe07236aadc1e164718b043603b2369efc6a7a8021e4976049`  
		Last Modified: Fri, 24 Mar 2017 02:56:33 GMT  
		Size: 58.7 MB (58728857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74cfd9844b0eea55af6dc0338d375a98c45a28b9afc1388fbd1773ff51a58a57`  
		Last Modified: Fri, 24 Mar 2017 02:56:27 GMT  
		Size: 710.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3369b67dc2fafea4c337a4591e7cb42ab9feb6b13724d0b2baf5aea9964016cb`  
		Last Modified: Fri, 24 Mar 2017 02:56:26 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.9-enterprise`

```console
$ docker pull neo4j@sha256:13fbce84afea3c3dcff7c106f7094eb0c27a3b023c20d24e34b0950ec1201c86
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.9-enterprise` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.4 MB (194402304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d53dc4adcae9ca37c02c32eea191b224f36ea8c46b41a139135edf02fc6f4684`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:29:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 21:29:49 GMT
ENV NEO4J_SHA256=d99aa0d2e1ec8386721981441aa98d3d551d4c40dc1b51f0705519e5cd9ab14b
# Wed, 22 Mar 2017 21:29:49 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.9-unix.tar.gz
# Wed, 22 Mar 2017 21:29:50 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.9-unix.tar.gz
# Wed, 22 Mar 2017 21:29:50 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:30:03 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.9-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:30:03 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:30:05 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.9-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:30:05 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:30:06 GMT
COPY file:77655caa958663cf4b6b261cb705cbea286374905edc612985f978867904bd01 in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:30:07 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 22 Mar 2017 21:30:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:30:08 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece33284023fc78d6f99da62ee65324c3b860547e8f50df8137fce9596e97b5c`  
		Last Modified: Fri, 24 Mar 2017 02:47:05 GMT  
		Size: 8.6 MB (8634266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd3e84a85bc06ea0e641b92b2e3f6da5f56dfc10ebfe1b5817d679506898ba4a`  
		Last Modified: Fri, 24 Mar 2017 02:57:19 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd0c516999c7e687b3f7279645dfa109828fa0c31b1b9f4b3b9c941fdd7cece`  
		Last Modified: Fri, 24 Mar 2017 02:57:24 GMT  
		Size: 61.3 MB (61274261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc60e090703c8e9835a7b3c189194a53b867c152993911413bf84fb2a26c25ac`  
		Last Modified: Fri, 24 Mar 2017 02:57:18 GMT  
		Size: 709.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825236041680e574ce0532df80b62f0695aa5f3e2f6e8bbc3f092c3481d65835`  
		Last Modified: Fri, 24 Mar 2017 02:57:18 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.8`

```console
$ docker pull neo4j@sha256:b977e18f37e131a44e1635f8a09f39f4ee69863341c8d9feeda7db722915e42f
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.9 MB (191851671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec8d5a4c13736c8d833c510716a7a995cfb6d9e0f42d479334e8bf55ee812f83`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:29:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 21:36:26 GMT
ENV NEO4J_SHA256=a4e7f99b1820a750973e678af913fbdb3069188ef12ec69dd67aa49bd072a85f
# Wed, 22 Mar 2017 21:36:26 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.8-unix.tar.gz
# Wed, 22 Mar 2017 21:36:27 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.8-unix.tar.gz
# Wed, 22 Mar 2017 21:36:27 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:36:39 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.8-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:36:39 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:36:40 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.8-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:36:41 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:36:41 GMT
COPY file:77655caa958663cf4b6b261cb705cbea286374905edc612985f978867904bd01 in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:36:42 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 22 Mar 2017 21:36:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:36:43 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece33284023fc78d6f99da62ee65324c3b860547e8f50df8137fce9596e97b5c`  
		Last Modified: Fri, 24 Mar 2017 02:47:05 GMT  
		Size: 8.6 MB (8634266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2c133f69f82e8606646f5644d58887b6f6651e00413590cc626e283e5869747`  
		Last Modified: Fri, 24 Mar 2017 02:55:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d30f4f53484e505edb30a40bf87bc8fba7ceb8daaec28083601ade7da74611`  
		Last Modified: Fri, 24 Mar 2017 02:55:30 GMT  
		Size: 58.7 MB (58723619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:025e30e65bdff281a41a2cd07e6eb0113bc6cbac4cdbbaf65f15164a6a5757c4`  
		Last Modified: Fri, 24 Mar 2017 02:55:23 GMT  
		Size: 714.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:673741ec14834772a51511a3a3e7f82296bcc23a99bcae64d93ad10e5ea1d75d`  
		Last Modified: Fri, 24 Mar 2017 02:55:24 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.8-enterprise`

```console
$ docker pull neo4j@sha256:5f45b0e49e7a49beb6f66d49fc2ac1a8ff157d58f18985c0e9e85daa455e92be
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.8-enterprise` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.4 MB (194397710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96fd886b34a86cf1281c350c3543ce60c8adae750a8f8ff8e4b06b41255f21c6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:29:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 21:36:43 GMT
ENV NEO4J_SHA256=2229b014399217b735d9844e4d02e62d5dbfe15c67dc07adc780fc523e6d010e
# Wed, 22 Mar 2017 21:36:44 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.8-unix.tar.gz
# Wed, 22 Mar 2017 21:36:44 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.8-unix.tar.gz
# Wed, 22 Mar 2017 21:36:45 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:36:57 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.8-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:36:57 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:36:58 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.8-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:36:59 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:37:00 GMT
COPY file:77655caa958663cf4b6b261cb705cbea286374905edc612985f978867904bd01 in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:37:00 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 22 Mar 2017 21:37:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:37:01 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece33284023fc78d6f99da62ee65324c3b860547e8f50df8137fce9596e97b5c`  
		Last Modified: Fri, 24 Mar 2017 02:47:05 GMT  
		Size: 8.6 MB (8634266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21010df3524f7d1c170dbbf7e2a6410e98aeb076c0b63a235874826fb751886e`  
		Last Modified: Fri, 24 Mar 2017 02:55:55 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94dda20deb3e9f9b9d2ba708cc45f67c69789b658904650088002946bc73b8a3`  
		Last Modified: Fri, 24 Mar 2017 02:56:01 GMT  
		Size: 61.3 MB (61269659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c06eca5f2422c010f85b5362d99cecb73d37c5a55585f1607a1c3f3ff974a3`  
		Last Modified: Fri, 24 Mar 2017 02:55:56 GMT  
		Size: 714.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae809295c9e1e6ca3b60da4b2bd19ee0d52b25572ca86386ef8f8393e0b18798`  
		Last Modified: Fri, 24 Mar 2017 02:55:56 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.7`

```console
$ docker pull neo4j@sha256:6b54f05f7f4c1e666373abb9556772dc56a31da2cc187d99c53fca78dcd1fdbf
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.9 MB (191851619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3b2ed8ed1dfba9594fe6d0532488d44cae32b994a14ec82e89cfde4c6c7a6a2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:29:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 21:35:51 GMT
ENV NEO4J_SHA256=660f69e2dce24b69c6abe25fd33b549c8e232b965bef4ca94acb9f63cc15e46e
# Wed, 22 Mar 2017 21:35:52 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.7-unix.tar.gz
# Wed, 22 Mar 2017 21:35:52 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.7-unix.tar.gz
# Wed, 22 Mar 2017 21:35:53 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:36:04 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.7-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:36:05 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:36:06 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.7-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:36:06 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:36:07 GMT
COPY file:cb4000bfe72fb1762262e9e56a951af2b641306dea07b6f13b6623ef1f84fc92 in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:36:07 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 22 Mar 2017 21:36:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:36:08 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece33284023fc78d6f99da62ee65324c3b860547e8f50df8137fce9596e97b5c`  
		Last Modified: Fri, 24 Mar 2017 02:47:05 GMT  
		Size: 8.6 MB (8634266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb3573cf2ef5822762ca3d7e0321332f409fdefde6b72cf0aa0ca718ddfe2aa`  
		Last Modified: Fri, 24 Mar 2017 02:54:21 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f49efe121ad7cc11ac8c20a675ceaa9dbde083b2aa7bed97b1bdde637d1b353`  
		Last Modified: Fri, 24 Mar 2017 02:54:27 GMT  
		Size: 58.7 MB (58723586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e287037858a7b5d42e75ec1b385c956ff7b838270907b6398c8e1dc26fb8cb7`  
		Last Modified: Fri, 24 Mar 2017 02:54:21 GMT  
		Size: 714.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a4aff16b8eee44b1fa5ea955e915002fd8426118654f6a1948abd3fb9068e1`  
		Last Modified: Fri, 24 Mar 2017 02:54:21 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.7-enterprise`

```console
$ docker pull neo4j@sha256:697f0cf788542935208ec13cbc1f66022801debf5150fa100524d0083be8c3d4
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.7-enterprise` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.4 MB (194396929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ca6885fea2a49306f4fa74a039e72722872db1a01fed2d4d9a1e88765483a9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:29:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 21:36:09 GMT
ENV NEO4J_SHA256=64b2607f173db5e11671eb39087d06bca6d959e6a77f33a5c0ec3a4efd2b9d2b
# Wed, 22 Mar 2017 21:36:09 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.7-unix.tar.gz
# Wed, 22 Mar 2017 21:36:10 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.7-unix.tar.gz
# Wed, 22 Mar 2017 21:36:10 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:36:21 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.7-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:36:22 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:36:23 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.7-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:36:23 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:36:24 GMT
COPY file:cb4000bfe72fb1762262e9e56a951af2b641306dea07b6f13b6623ef1f84fc92 in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:36:24 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 22 Mar 2017 21:36:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:36:25 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece33284023fc78d6f99da62ee65324c3b860547e8f50df8137fce9596e97b5c`  
		Last Modified: Fri, 24 Mar 2017 02:47:05 GMT  
		Size: 8.6 MB (8634266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94e330f60d3838382bf1841f262910eff888efb28c5a593cb2eeccdceaba242d`  
		Last Modified: Fri, 24 Mar 2017 02:54:51 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed31e68b45ef29b4664ae0226b7d33f2a7c5bd41379352efc59180c6681cb99`  
		Last Modified: Fri, 24 Mar 2017 02:54:58 GMT  
		Size: 61.3 MB (61268895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b51c573d69c2d0251f84d1055bedf9ad17a01721564dd51c060d311cdb338b7`  
		Last Modified: Fri, 24 Mar 2017 02:54:51 GMT  
		Size: 714.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c4e01e38c39a8b71af538fa338520e215e600cf6c10e988ca157c628400fae`  
		Last Modified: Fri, 24 Mar 2017 02:54:51 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.6`

```console
$ docker pull neo4j@sha256:d47aff5e8897e20f3946569a81c4a5a11e9edcf53fc4c674f8efe510f11c17ba
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.8 MB (191849201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:302ac026b0cceec855b162a485a69d9ca4b6825927bddb69a46fdbb86b65049e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:29:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 21:35:16 GMT
ENV NEO4J_SHA256=738263c6785095f56b9051904ff2d1b30a13f680a748f483a450da63b04a5667
# Wed, 22 Mar 2017 21:35:16 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.6-unix.tar.gz
# Wed, 22 Mar 2017 21:35:17 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.6-unix.tar.gz
# Wed, 22 Mar 2017 21:35:17 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:35:29 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.6-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:35:29 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:35:30 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.6-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:35:30 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:35:31 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:35:31 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 22 Mar 2017 21:35:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:35:32 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece33284023fc78d6f99da62ee65324c3b860547e8f50df8137fce9596e97b5c`  
		Last Modified: Fri, 24 Mar 2017 02:47:05 GMT  
		Size: 8.6 MB (8634266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83acbbc86a09321ba35cdbb17da63ca130b746be6af3f0e2702e6325660655af`  
		Last Modified: Fri, 24 Mar 2017 02:53:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca67635ff62d88644d6083acd63d59d61cc3febbcdd6728628d2e979a0f6671`  
		Last Modified: Fri, 24 Mar 2017 02:53:26 GMT  
		Size: 58.7 MB (58721211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d73212fabc36836fd29d6bb826cc062e1390ad9b00bacb1268b38740ce8515`  
		Last Modified: Fri, 24 Mar 2017 02:53:18 GMT  
		Size: 712.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81e23b93d02258c4db4b8c7819c865e12fcf7ac16281805f4c87891e3bbc477`  
		Last Modified: Fri, 24 Mar 2017 02:53:18 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.6-enterprise`

```console
$ docker pull neo4j@sha256:2bc5895714a673a015dad43416e2f80fde0e2d4991723bd7d788d4dd3f466acb
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.6-enterprise` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.4 MB (194390428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9204a37e8f7cdf5a100aed8e639d37af3449fdfc97c1640384d718fd46940f6a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:29:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 21:35:33 GMT
ENV NEO4J_SHA256=07591aa24b3925f2cfea616ce9a28d954ebea6c205e77dda82b322238d1dbc3f
# Wed, 22 Mar 2017 21:35:33 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.6-unix.tar.gz
# Wed, 22 Mar 2017 21:35:34 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.6-unix.tar.gz
# Wed, 22 Mar 2017 21:35:34 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:35:47 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.6-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:35:47 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:35:48 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.6-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:35:49 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:35:49 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:35:50 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 22 Mar 2017 21:35:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:35:51 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece33284023fc78d6f99da62ee65324c3b860547e8f50df8137fce9596e97b5c`  
		Last Modified: Fri, 24 Mar 2017 02:47:05 GMT  
		Size: 8.6 MB (8634266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569f10ab0951b65ff58b449838230e2277933f736802293e8f613a067639a394`  
		Last Modified: Fri, 24 Mar 2017 02:53:50 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4553bb8a017753f3daab4287aff7c98e5f2b2114e8798590a329d68ec02258c9`  
		Last Modified: Fri, 24 Mar 2017 02:53:56 GMT  
		Size: 61.3 MB (61262431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b93bc466651fcc3c42f2856e70e373912637454cfdf021095161bf2c0c8641f3`  
		Last Modified: Fri, 24 Mar 2017 02:53:50 GMT  
		Size: 714.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f25900872a7051a55e85ce2eaa45da447c5f60b5e50edcd52437f99688f302`  
		Last Modified: Fri, 24 Mar 2017 02:53:50 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.5`

```console
$ docker pull neo4j@sha256:763908d4576d2bbed75a658b997ac01373b56b086ab59ada7cedefcf4a5ef86f
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.8 MB (191811827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:035c89449449e191285a15d0967e8a4c8c9f57ca1a3529bb2cb86e0187f36a39`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:29:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 21:34:31 GMT
ENV NEO4J_SHA256=969159bddc0526681795f039e4250d728c8b60c5e421450259caacfc488c18cf
# Wed, 22 Mar 2017 21:34:31 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.5-unix.tar.gz
# Wed, 22 Mar 2017 21:34:32 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.5-unix.tar.gz
# Wed, 22 Mar 2017 21:34:32 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:34:47 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.5-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:34:48 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:34:49 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.5-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:34:50 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:34:51 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:34:51 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 22 Mar 2017 21:34:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:34:53 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece33284023fc78d6f99da62ee65324c3b860547e8f50df8137fce9596e97b5c`  
		Last Modified: Fri, 24 Mar 2017 02:47:05 GMT  
		Size: 8.6 MB (8634266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7fa2117706faf139291ea61763c43d8041a208d0d4d6dc225f915ab65b373c1`  
		Last Modified: Fri, 24 Mar 2017 02:52:15 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a75c4b63937fb6a98c8cc0b95dc1959efc90fa92c3b3ecf7437d2dd4b55831`  
		Last Modified: Fri, 24 Mar 2017 02:52:21 GMT  
		Size: 58.7 MB (58683834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f534bc4870aa5c60d189b9ef29c53430fa0a5bb121c883db8268c35964c454`  
		Last Modified: Fri, 24 Mar 2017 02:52:15 GMT  
		Size: 712.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d290ea80858c05022f86d9d6f4f5dbd3e16ad5bd414ba77474265a8868edd17`  
		Last Modified: Fri, 24 Mar 2017 02:52:15 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.5-enterprise`

```console
$ docker pull neo4j@sha256:e9df870fde39818f5725a4254d43d58a7c93d0f8a246ab24a4c53a303fa26f5c
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.5-enterprise` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.3 MB (194343351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4fabfdc150cb813dcde19bc585f15e2e59bb2fb63e42bcb5581d617fdd52e75`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:29:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 21:34:54 GMT
ENV NEO4J_SHA256=e12b962b01f5e3d1ab72f52aa311cfb270557ebca13874efb049b15b0cbfa471
# Wed, 22 Mar 2017 21:34:54 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.5-unix.tar.gz
# Wed, 22 Mar 2017 21:34:55 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.5-unix.tar.gz
# Wed, 22 Mar 2017 21:34:55 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:35:11 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.5-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:35:11 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:35:12 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.5-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:35:13 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:35:14 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:35:14 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 22 Mar 2017 21:35:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:35:15 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece33284023fc78d6f99da62ee65324c3b860547e8f50df8137fce9596e97b5c`  
		Last Modified: Fri, 24 Mar 2017 02:47:05 GMT  
		Size: 8.6 MB (8634266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891bc03a229a2fa25bf1f56bd2b41c006155425c350b87163029fc5c8661f8b3`  
		Last Modified: Fri, 24 Mar 2017 02:52:47 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7f5e9b8d5aabf5a9f47cd83e56e85d6bd445d736f9e92f151714c72746645ff`  
		Last Modified: Fri, 24 Mar 2017 02:52:53 GMT  
		Size: 61.2 MB (61215364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41dbbd0a0f13f5c3841bd11a07018475a94da695de79b7e1f766c6b8ff55b09a`  
		Last Modified: Fri, 24 Mar 2017 02:52:47 GMT  
		Size: 714.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d024de6650727edc8612a853eebf939bf65cec08584ff121aa548881fc43ed9d`  
		Last Modified: Fri, 24 Mar 2017 02:52:48 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.4`

```console
$ docker pull neo4j@sha256:9c6d5ff52433db1d101c031f604ee917dd46afe84460a9adc4f8dff52beaf9a3
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.8 MB (191788535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6444f45867fa6ec58743aadca929b164f351854886f69a2e033ddc4c033debd1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:29:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 21:33:48 GMT
ENV NEO4J_SHA256=4a4b12e9d97771d9c293ee7786ef08ff7ad0f14a5db0f7fc01e8675e476f644b
# Wed, 22 Mar 2017 21:33:48 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.4-unix.tar.gz
# Wed, 22 Mar 2017 21:33:49 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.4-unix.tar.gz
# Wed, 22 Mar 2017 21:33:49 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:34:03 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.4-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:34:03 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:34:05 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.4-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:34:05 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:34:06 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:34:07 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 22 Mar 2017 21:34:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:34:08 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece33284023fc78d6f99da62ee65324c3b860547e8f50df8137fce9596e97b5c`  
		Last Modified: Fri, 24 Mar 2017 02:47:05 GMT  
		Size: 8.6 MB (8634266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea10a8426e457382603b0409c91817b7bd408d696a4e7642e675b05362c59344`  
		Last Modified: Fri, 24 Mar 2017 02:51:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b67197d533e6cc9fea9b36d5ea08cd3f2cf1a9e5331fefd96f09e6e3ce91dd1`  
		Last Modified: Fri, 24 Mar 2017 02:51:20 GMT  
		Size: 58.7 MB (58660542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7890626cbc9412b373f02133fe13b1dff821903c02b008e750d2369ef27623`  
		Last Modified: Fri, 24 Mar 2017 02:51:14 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fde13a819f8c00b15b720d5a269dc02d03a4780c6a8ac2ab52c9d8ffbf0b153`  
		Last Modified: Fri, 24 Mar 2017 02:51:15 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.4-enterprise`

```console
$ docker pull neo4j@sha256:cf33245a722ebf8785361f6cc5747d8367a39643c2e607f40c30f9c7f8711109
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.4-enterprise` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.3 MB (194317425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d6055be3c148982bfb7c6e002b08c0d63f5037e0b2b6a171782d885f087b83a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:29:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 21:34:09 GMT
ENV NEO4J_SHA256=640095b153eff5e9f81120d73a110e7d69b2868fc922cd9f54318d203b26f3c1
# Wed, 22 Mar 2017 21:34:10 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.4-unix.tar.gz
# Wed, 22 Mar 2017 21:34:10 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.4-unix.tar.gz
# Wed, 22 Mar 2017 21:34:11 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:34:24 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.4-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:34:25 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:34:26 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.4-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:34:27 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:34:27 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:34:28 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 22 Mar 2017 21:34:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:34:30 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece33284023fc78d6f99da62ee65324c3b860547e8f50df8137fce9596e97b5c`  
		Last Modified: Fri, 24 Mar 2017 02:47:05 GMT  
		Size: 8.6 MB (8634266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668cb19b3e0573f082290ffefaae7e0048f9adc42601e1b60dac9b49e7c56f6d`  
		Last Modified: Fri, 24 Mar 2017 02:51:44 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc664ae40143cc3802d5fc1942306d64cf840b6313b2605be0a05cf134d5898f`  
		Last Modified: Fri, 24 Mar 2017 02:51:50 GMT  
		Size: 61.2 MB (61189430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8de1d684d581f5b0967e088a5f34d5256dbe8359705b841e0e77d0126bea3ecb`  
		Last Modified: Fri, 24 Mar 2017 02:51:44 GMT  
		Size: 714.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e0e7e4e57ea828f8cc64008db6b1cd89d9582ddc0aa6e1b34265267822088b`  
		Last Modified: Fri, 24 Mar 2017 02:51:44 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.3`

```console
$ docker pull neo4j@sha256:7aba99fdb41e1a74cfa5ad293516567134dc6ce5eef5833c64d2f73378e2e312
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.3 MB (192328823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5811e6d3740b3ea20a829bab21e668254e5b4ceec1f1787724276d045e7c86b7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:29:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 21:32:53 GMT
ENV NEO4J_SHA256=01559c55055516a42ee2dd100137b6b55d63f02959a3c6c6db7a152e045828d9
# Wed, 22 Mar 2017 21:32:53 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.3-unix.tar.gz
# Wed, 22 Mar 2017 21:32:54 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.3-unix.tar.gz
# Wed, 22 Mar 2017 21:32:55 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:33:08 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.3-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:33:09 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:33:10 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.3-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:33:11 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:33:12 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:33:13 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 22 Mar 2017 21:33:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:33:14 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece33284023fc78d6f99da62ee65324c3b860547e8f50df8137fce9596e97b5c`  
		Last Modified: Fri, 24 Mar 2017 02:47:05 GMT  
		Size: 8.6 MB (8634266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f099fa19b847d397dfef4721178dc3353adf6c624de5927069a29860a78fb2`  
		Last Modified: Fri, 24 Mar 2017 02:50:10 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eaf1ec47e23934eb557a2261a735aa4623a6fd9cc55703700aeddfe438a676e`  
		Last Modified: Fri, 24 Mar 2017 02:50:16 GMT  
		Size: 59.2 MB (59200829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ee2ce397d297346bbda06cbd080553f46974aba4c0e2e33dfb36ca332f9f47`  
		Last Modified: Fri, 24 Mar 2017 02:50:10 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc1b0ed043b7f09e52fa1b1d71ff74d8ac4ddfdd91bff33757261c1eb13d146`  
		Last Modified: Fri, 24 Mar 2017 02:50:10 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.3-enterprise`

```console
$ docker pull neo4j@sha256:e21697d9cc2ec6b7fc9c63c6d4d92487c4584f64ecdf16eb941a2f3e6015002c
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.3-enterprise` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.7 MB (194738413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4249389b1f58bd358b1c9b38547f177954643ea5c52f6f9cbc8ab4505dc4cc3c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:29:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 21:33:15 GMT
ENV NEO4J_SHA256=864b7ebef3a12844c809e75016aa951c60ac90fb0d075a595108824859ce7875
# Wed, 22 Mar 2017 21:33:15 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.3-unix.tar.gz
# Wed, 22 Mar 2017 21:33:16 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.3-unix.tar.gz
# Wed, 22 Mar 2017 21:33:17 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:33:41 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.3-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:33:42 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:33:43 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.3-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:33:43 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:33:44 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:33:45 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 22 Mar 2017 21:33:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:33:46 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece33284023fc78d6f99da62ee65324c3b860547e8f50df8137fce9596e97b5c`  
		Last Modified: Fri, 24 Mar 2017 02:47:05 GMT  
		Size: 8.6 MB (8634266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c816811b4d119dd35cd9961a12a5711dec4afde13e565fbbc852a33a4e84eb0`  
		Last Modified: Fri, 24 Mar 2017 02:50:40 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa1b3670bd67d42a8d15077879147fbf4d4d7ef2182e518f11d0d33362b2be0`  
		Last Modified: Fri, 24 Mar 2017 02:50:49 GMT  
		Size: 61.6 MB (61610424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03351ec4fc9a02e972d3bb48c4304ad964b9a0567942b9b994e8eb5fd23defb8`  
		Last Modified: Fri, 24 Mar 2017 02:50:41 GMT  
		Size: 708.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346a7df65897f714e6f8357b58d30e56daecec13dfd070d855e89d726c8082eb`  
		Last Modified: Fri, 24 Mar 2017 02:50:41 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.2`

```console
$ docker pull neo4j@sha256:ceab155cfd2f5cdd3dbf624e311889352e59d18333ac9b07e6acc22aeef40e9c
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.2 MB (192211087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbec556c02803a44ede2740416f49afedad5c2b021bfb8b34638760fe12182a2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:29:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 21:32:03 GMT
ENV NEO4J_SHA256=37e24d95c914c54d5cbbe99473d4beef89da78adb2db04eb87258a489225932a
# Wed, 22 Mar 2017 21:32:03 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.2-unix.tar.gz
# Wed, 22 Mar 2017 21:32:04 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.2-unix.tar.gz
# Wed, 22 Mar 2017 21:32:04 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:32:25 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.2-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:32:26 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:32:27 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.2-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:32:28 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:32:29 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:32:30 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 22 Mar 2017 21:32:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:32:31 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece33284023fc78d6f99da62ee65324c3b860547e8f50df8137fce9596e97b5c`  
		Last Modified: Fri, 24 Mar 2017 02:47:05 GMT  
		Size: 8.6 MB (8634266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982717f705834a238fef71845b3070022fefa0da9b3a89d7aa6dbe34bb02815d`  
		Last Modified: Fri, 24 Mar 2017 02:49:09 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216e47e3ee4825aa2bc4529bd6ea57906cb5c8caf5fd0376251962713c43c8d2`  
		Last Modified: Fri, 24 Mar 2017 02:49:14 GMT  
		Size: 59.1 MB (59083094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e6a6c05331b9a1b749c402b6df5352e1e8336af57ce829ddbdfa9978f93905`  
		Last Modified: Fri, 24 Mar 2017 02:49:09 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ceff46013bb23ba7933adc96785c6fca7d3ed462b18da8d7f57504580b0f3cc`  
		Last Modified: Fri, 24 Mar 2017 02:49:09 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.2-enterprise`

```console
$ docker pull neo4j@sha256:0dc2acd93a9cc6e8751f05bec69530e06fd4948bca1adf20e53dd8d5d8d38efb
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.2-enterprise` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.7 MB (194658592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84cd7596a43e917a4ed1e70fafc6bc70dccb38458b09ac1262d076db10828af2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:29:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 21:32:32 GMT
ENV NEO4J_SHA256=ea80cfca918dd70ea5d10a125f5c3a5be02e45dd497b67dfa2d22770a891acea
# Wed, 22 Mar 2017 21:32:32 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.2-unix.tar.gz
# Wed, 22 Mar 2017 21:32:33 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.2-unix.tar.gz
# Wed, 22 Mar 2017 21:32:34 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:32:46 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.2-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:32:47 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:32:48 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.2-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:32:49 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:32:50 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:32:51 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 22 Mar 2017 21:32:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:32:52 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece33284023fc78d6f99da62ee65324c3b860547e8f50df8137fce9596e97b5c`  
		Last Modified: Fri, 24 Mar 2017 02:47:05 GMT  
		Size: 8.6 MB (8634266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320dd3aa66056e4f975fb231248d07871a9307c43bf5014a53c5eb97d8f58022`  
		Last Modified: Fri, 24 Mar 2017 02:49:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdb3b71e1a13641755eecae06a7beb4b633f52953463791662b4c77fdb78d02`  
		Last Modified: Fri, 24 Mar 2017 02:49:45 GMT  
		Size: 61.5 MB (61530595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe86cbfc2e770af8070fd119e0933fc00af419d47611e134ece8a4d4a9cce773`  
		Last Modified: Fri, 24 Mar 2017 02:49:40 GMT  
		Size: 714.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2677a45b27fa4377e7bd24867ce9e8f5a3d86b4d6cfb4959d0e963e0b7c04687`  
		Last Modified: Fri, 24 Mar 2017 02:49:39 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.1`

```console
$ docker pull neo4j@sha256:ab8e7f3b177d118f3167ce7b6f1d753ea446a9124cbeb1b6a9ff807f8b6022fe
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.1 MB (192134921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4851d18616a5b3ae7bb9f46d20a31d16f8318c94e3b826103dd8d0f78917298e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:29:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 21:31:06 GMT
ENV NEO4J_SHA256=7b2f30d73af107eacd9a3a619475ef448a08eecb2cdb42ab1f8a38d091c70ecb
# Wed, 22 Mar 2017 21:31:06 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.1-unix.tar.gz
# Wed, 22 Mar 2017 21:31:07 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.1-unix.tar.gz
# Wed, 22 Mar 2017 21:31:08 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:31:24 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.1-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:31:24 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:31:26 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.1-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:31:26 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:31:27 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:31:28 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 22 Mar 2017 21:31:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:31:29 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece33284023fc78d6f99da62ee65324c3b860547e8f50df8137fce9596e97b5c`  
		Last Modified: Fri, 24 Mar 2017 02:47:05 GMT  
		Size: 8.6 MB (8634266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06dacdc5e8939818db301dcb72a0459d8cf45f5de77ff29835a9ba4dbeefa14`  
		Last Modified: Fri, 24 Mar 2017 02:48:04 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5a8c44cf2aa4c56e2e8d74adfd3bc5530ca678683fbf511c88edaa3f711369`  
		Last Modified: Fri, 24 Mar 2017 02:48:10 GMT  
		Size: 59.0 MB (59006928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ffe057fc5c7fe13079c7613c043192e7ce64e7b5be42ca7d2878942b488fc98`  
		Last Modified: Fri, 24 Mar 2017 02:48:04 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:921c1809808965019a8051cae3e8c509ba4125007c31bb335a8051c521198c1e`  
		Last Modified: Fri, 24 Mar 2017 02:48:04 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.1-enterprise`

```console
$ docker pull neo4j@sha256:27998a1261ad368e7ad48893fcc52c21f0682dbb8c791ac3112714bc8ca934fc
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.1-enterprise` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.6 MB (194570472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:044f22f9978aa41fcb4529ecfcb7ac587353d186df10d9e5326b0797c5df7e1b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:29:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 21:31:30 GMT
ENV NEO4J_SHA256=93f0950b0c3a5a604f80183814b7cda2988a652e9278159c47d036daa96e3d29
# Wed, 22 Mar 2017 21:31:31 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.1-unix.tar.gz
# Wed, 22 Mar 2017 21:31:31 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.1-unix.tar.gz
# Wed, 22 Mar 2017 21:31:32 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:31:56 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.1-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:31:57 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:31:58 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.1-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:31:59 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:32:00 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:32:00 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 22 Mar 2017 21:32:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:32:02 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece33284023fc78d6f99da62ee65324c3b860547e8f50df8137fce9596e97b5c`  
		Last Modified: Fri, 24 Mar 2017 02:47:05 GMT  
		Size: 8.6 MB (8634266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:267a648eca8a5904a864812ff519bd009f48916c2af783e27b114ed37e909b40`  
		Last Modified: Fri, 24 Mar 2017 02:48:34 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:180ea733e5151fc51c7f9d1fc78affeccd7cbf79a3f29881885430939624359a`  
		Last Modified: Fri, 24 Mar 2017 02:48:43 GMT  
		Size: 61.4 MB (61442479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a8df12d44a6577d23e1e441cd11a37008f01b456e7ed85cecb596d2b356524`  
		Last Modified: Fri, 24 Mar 2017 02:48:34 GMT  
		Size: 712.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b33fa9aaaab93ae595dd388f46405b2621334d30c911324d9231723749dab01`  
		Last Modified: Fri, 24 Mar 2017 02:48:34 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.0`

```console
$ docker pull neo4j@sha256:e7202d94e142c48f4153158cd7edb1f28a75f50b2e2fa2da986bc1105c81d868
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.7 MB (191717251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8abe26efaee1400b8fa35a8c49818b611bee5d3440ab1954229d1ec4dd226f4c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:29:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 21:30:09 GMT
ENV NEO4J_SHA256=88fee93884700dae6a1f870dd84b3da9d094db33d57db1c88904954ef2cb4830
# Wed, 22 Mar 2017 21:30:10 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.0-unix.tar.gz
# Wed, 22 Mar 2017 21:30:10 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.0-unix.tar.gz
# Wed, 22 Mar 2017 21:30:11 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:30:38 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:30:38 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:30:40 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.0-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:30:40 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:30:41 GMT
COPY file:cb4000bfe72fb1762262e9e56a951af2b641306dea07b6f13b6623ef1f84fc92 in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:30:42 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 22 Mar 2017 21:30:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:30:43 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece33284023fc78d6f99da62ee65324c3b860547e8f50df8137fce9596e97b5c`  
		Last Modified: Fri, 24 Mar 2017 02:47:05 GMT  
		Size: 8.6 MB (8634266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd42e7ffa5aaf0c829236ec521d0c3f6cd9adf123481eb2a6e2cf4a998ea220`  
		Last Modified: Fri, 24 Mar 2017 02:47:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4069ad8159991ee02a75b9df2971b94310681c5c78152ed88598c54769d3559b`  
		Last Modified: Fri, 24 Mar 2017 02:47:07 GMT  
		Size: 58.6 MB (58589223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be91e05230abb37c7a310b3c2b82987909ec4974350798f840b26ce1d6212fed`  
		Last Modified: Fri, 24 Mar 2017 02:47:01 GMT  
		Size: 710.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4be4cd0fdf930790620abe8ac342de6bcab5b2fa0612b14cf2baba63b3250f`  
		Last Modified: Fri, 24 Mar 2017 02:47:01 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.0-enterprise`

```console
$ docker pull neo4j@sha256:f4de6f61b6cbd0a8c70dd4a475f615603b2eb5ce63070de8cc8e7b2f4daee77e
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.0-enterprise` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.2 MB (194175577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b1c8ee67758d4065e19bfd97a76306697ea6ff9d0bac017dbe6dd03cfd66b1b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 22 Mar 2017 21:29:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 21:30:44 GMT
ENV NEO4J_SHA256=0d3f370f8141d8bc37065f843af190c405cba098d1bb82065ffc0cb5b99950b7
# Wed, 22 Mar 2017 21:30:45 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.0-unix.tar.gz
# Wed, 22 Mar 2017 21:30:45 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.0-unix.tar.gz
# Wed, 22 Mar 2017 21:30:46 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 22 Mar 2017 21:31:00 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 22 Mar 2017 21:31:00 GMT
WORKDIR /var/lib/neo4j
# Wed, 22 Mar 2017 21:31:01 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.0-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 22 Mar 2017 21:31:02 GMT
VOLUME [/data]
# Wed, 22 Mar 2017 21:31:03 GMT
COPY file:cb4000bfe72fb1762262e9e56a951af2b641306dea07b6f13b6623ef1f84fc92 in /docker-entrypoint.sh 
# Wed, 22 Mar 2017 21:31:04 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 22 Mar 2017 21:31:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 22 Mar 2017 21:31:05 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece33284023fc78d6f99da62ee65324c3b860547e8f50df8137fce9596e97b5c`  
		Last Modified: Fri, 24 Mar 2017 02:47:05 GMT  
		Size: 8.6 MB (8634266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8335af3e3dddc126347eadf387a6c1384f602652104b7a7b09741d2cdd02be0a`  
		Last Modified: Fri, 24 Mar 2017 02:47:32 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9dd9c82d3f6dba90e2682815207ba83d03fb88a2a37e6f4fa217ba326c3ca2`  
		Last Modified: Fri, 24 Mar 2017 02:47:39 GMT  
		Size: 61.0 MB (61047543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48ab16eec4029b48acc72f494058ed9a41ac9f02ae47365517a72d6005c1bba`  
		Last Modified: Fri, 24 Mar 2017 02:47:33 GMT  
		Size: 715.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adc16553ca91073fc3e3434f8cad1d7b4cc08f82739d4e82ec610fc0c04febcc`  
		Last Modified: Fri, 24 Mar 2017 02:47:33 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
