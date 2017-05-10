<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `neo4j`

-	[`neo4j:3.2.0`](#neo4j320)
-	[`neo4j:3.2`](#neo4j32)
-	[`neo4j:latest`](#neo4jlatest)
-	[`neo4j:3.2.0-enterprise`](#neo4j320-enterprise)
-	[`neo4j:3.2-enterprise`](#neo4j32-enterprise)
-	[`neo4j:enterprise`](#neo4jenterprise)
-	[`neo4j:3.1.4`](#neo4j314)
-	[`neo4j:3.1`](#neo4j31)
-	[`neo4j:3.1.4-enterprise`](#neo4j314-enterprise)
-	[`neo4j:3.1-enterprise`](#neo4j31-enterprise)
-	[`neo4j:3.1.3`](#neo4j313)
-	[`neo4j:3.1.3-enterprise`](#neo4j313-enterprise)
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

## `neo4j:3.2.0`

```console
$ docker pull neo4j@sha256:534cb83c239248e90ec6407e3e8d778e6bf8da02f61517727ec75593602b7987
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.2.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 MB (135241024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b76a21fe109ec596dc8d236965085ab42ec196285a15e1b37a6e93ec2887a0d5`
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
# Wed, 10 May 2017 18:20:07 GMT
ENV NEO4J_SHA256=77c0c142343ea834852d237828f1ddd8cb2d4b7be9131a00b4ec4e3c48d6f6d0 NEO4J_TARBALL=neo4j-community-3.2.0-unix.tar.gz
# Wed, 10 May 2017 18:20:07 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.2.0-unix.tar.gz
# Wed, 10 May 2017 18:20:08 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:20:24 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.2.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && ln -s /data /var/lib/neo4j/data     && apk del curl
# Wed, 10 May 2017 18:20:25 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:20:26 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:20:27 GMT
COPY file:fba67e67223207747005113b487869d57aad62ea3f78e719056b57b78b157bfc in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:20:28 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 10 May 2017 18:20:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:20:30 GMT
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
	-	`sha256:7ce4a8c0532713dfeb3afddd160fc856613732e655eae6bfa78549b84da7ec22`  
		Last Modified: Wed, 10 May 2017 19:00:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ac01ebb627e622df3c5fd1c1b5149c567d9a36645821e8d01bff13638a49dc`  
		Last Modified: Wed, 10 May 2017 19:00:31 GMT  
		Size: 78.1 MB (78065851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac95ae77ca476c810cab132bdc12782248f88b3460ea9fc98f32d9881f2c6290`  
		Last Modified: Wed, 10 May 2017 19:00:24 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.2`

```console
$ docker pull neo4j@sha256:534cb83c239248e90ec6407e3e8d778e6bf8da02f61517727ec75593602b7987
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 MB (135241024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b76a21fe109ec596dc8d236965085ab42ec196285a15e1b37a6e93ec2887a0d5`
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
# Wed, 10 May 2017 18:20:07 GMT
ENV NEO4J_SHA256=77c0c142343ea834852d237828f1ddd8cb2d4b7be9131a00b4ec4e3c48d6f6d0 NEO4J_TARBALL=neo4j-community-3.2.0-unix.tar.gz
# Wed, 10 May 2017 18:20:07 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.2.0-unix.tar.gz
# Wed, 10 May 2017 18:20:08 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:20:24 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.2.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && ln -s /data /var/lib/neo4j/data     && apk del curl
# Wed, 10 May 2017 18:20:25 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:20:26 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:20:27 GMT
COPY file:fba67e67223207747005113b487869d57aad62ea3f78e719056b57b78b157bfc in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:20:28 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 10 May 2017 18:20:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:20:30 GMT
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
	-	`sha256:7ce4a8c0532713dfeb3afddd160fc856613732e655eae6bfa78549b84da7ec22`  
		Last Modified: Wed, 10 May 2017 19:00:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ac01ebb627e622df3c5fd1c1b5149c567d9a36645821e8d01bff13638a49dc`  
		Last Modified: Wed, 10 May 2017 19:00:31 GMT  
		Size: 78.1 MB (78065851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac95ae77ca476c810cab132bdc12782248f88b3460ea9fc98f32d9881f2c6290`  
		Last Modified: Wed, 10 May 2017 19:00:24 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:latest`

```console
$ docker pull neo4j@sha256:534cb83c239248e90ec6407e3e8d778e6bf8da02f61517727ec75593602b7987
```

-	Platforms:
	-	linux; amd64

### `neo4j:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 MB (135241024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b76a21fe109ec596dc8d236965085ab42ec196285a15e1b37a6e93ec2887a0d5`
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
# Wed, 10 May 2017 18:20:07 GMT
ENV NEO4J_SHA256=77c0c142343ea834852d237828f1ddd8cb2d4b7be9131a00b4ec4e3c48d6f6d0 NEO4J_TARBALL=neo4j-community-3.2.0-unix.tar.gz
# Wed, 10 May 2017 18:20:07 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.2.0-unix.tar.gz
# Wed, 10 May 2017 18:20:08 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:20:24 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.2.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && ln -s /data /var/lib/neo4j/data     && apk del curl
# Wed, 10 May 2017 18:20:25 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:20:26 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:20:27 GMT
COPY file:fba67e67223207747005113b487869d57aad62ea3f78e719056b57b78b157bfc in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:20:28 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 10 May 2017 18:20:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:20:30 GMT
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
	-	`sha256:7ce4a8c0532713dfeb3afddd160fc856613732e655eae6bfa78549b84da7ec22`  
		Last Modified: Wed, 10 May 2017 19:00:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ac01ebb627e622df3c5fd1c1b5149c567d9a36645821e8d01bff13638a49dc`  
		Last Modified: Wed, 10 May 2017 19:00:31 GMT  
		Size: 78.1 MB (78065851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac95ae77ca476c810cab132bdc12782248f88b3460ea9fc98f32d9881f2c6290`  
		Last Modified: Wed, 10 May 2017 19:00:24 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.2.0-enterprise`

```console
$ docker pull neo4j@sha256:1dc7ff496b49c95b89e5c41729429d62204134903961891216a57fe0754970c6
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.2.0-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.9 MB (146948054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ef5c5b37b2e326944b0a7177c869913fa24811b2c5a73b5c93f8a18cc27333`
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
# Wed, 10 May 2017 18:20:49 GMT
ENV NEO4J_SHA256=7452b1705c64d314b3e43a8fd04eebcd6dda668245792c5ee48bf4be072ac4cc NEO4J_TARBALL=neo4j-enterprise-3.2.0-unix.tar.gz
# Wed, 10 May 2017 18:20:50 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.2.0-unix.tar.gz
# Wed, 10 May 2017 18:20:51 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:21:08 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.2.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && ln -s /data /var/lib/neo4j/data     && apk del curl
# Wed, 10 May 2017 18:21:09 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:21:09 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:21:11 GMT
COPY file:fba67e67223207747005113b487869d57aad62ea3f78e719056b57b78b157bfc in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:21:12 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 10 May 2017 18:21:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:21:13 GMT
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
	-	`sha256:9e63864b454ddba7401a7ffd8068b563cc64b41a2a4a880cb4d023e27d170fb8`  
		Last Modified: Wed, 10 May 2017 19:02:14 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e5bebda3b2ea50163d7cb41283d27a24cc55181b42a624a0bdb5b7a6b0cf7e`  
		Last Modified: Wed, 10 May 2017 19:02:23 GMT  
		Size: 89.8 MB (89772883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f589ae73984120e0cd476ae8022784c6c78c54dce4c9dec090153058a0490a93`  
		Last Modified: Wed, 10 May 2017 19:02:15 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.2-enterprise`

```console
$ docker pull neo4j@sha256:1dc7ff496b49c95b89e5c41729429d62204134903961891216a57fe0754970c6
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.2-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.9 MB (146948054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ef5c5b37b2e326944b0a7177c869913fa24811b2c5a73b5c93f8a18cc27333`
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
# Wed, 10 May 2017 18:20:49 GMT
ENV NEO4J_SHA256=7452b1705c64d314b3e43a8fd04eebcd6dda668245792c5ee48bf4be072ac4cc NEO4J_TARBALL=neo4j-enterprise-3.2.0-unix.tar.gz
# Wed, 10 May 2017 18:20:50 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.2.0-unix.tar.gz
# Wed, 10 May 2017 18:20:51 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:21:08 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.2.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && ln -s /data /var/lib/neo4j/data     && apk del curl
# Wed, 10 May 2017 18:21:09 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:21:09 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:21:11 GMT
COPY file:fba67e67223207747005113b487869d57aad62ea3f78e719056b57b78b157bfc in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:21:12 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 10 May 2017 18:21:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:21:13 GMT
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
	-	`sha256:9e63864b454ddba7401a7ffd8068b563cc64b41a2a4a880cb4d023e27d170fb8`  
		Last Modified: Wed, 10 May 2017 19:02:14 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e5bebda3b2ea50163d7cb41283d27a24cc55181b42a624a0bdb5b7a6b0cf7e`  
		Last Modified: Wed, 10 May 2017 19:02:23 GMT  
		Size: 89.8 MB (89772883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f589ae73984120e0cd476ae8022784c6c78c54dce4c9dec090153058a0490a93`  
		Last Modified: Wed, 10 May 2017 19:02:15 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:enterprise`

```console
$ docker pull neo4j@sha256:1dc7ff496b49c95b89e5c41729429d62204134903961891216a57fe0754970c6
```

-	Platforms:
	-	linux; amd64

### `neo4j:enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.9 MB (146948054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17ef5c5b37b2e326944b0a7177c869913fa24811b2c5a73b5c93f8a18cc27333`
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
# Wed, 10 May 2017 18:20:49 GMT
ENV NEO4J_SHA256=7452b1705c64d314b3e43a8fd04eebcd6dda668245792c5ee48bf4be072ac4cc NEO4J_TARBALL=neo4j-enterprise-3.2.0-unix.tar.gz
# Wed, 10 May 2017 18:20:50 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.2.0-unix.tar.gz
# Wed, 10 May 2017 18:20:51 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:21:08 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.2.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && ln -s /data /var/lib/neo4j/data     && apk del curl
# Wed, 10 May 2017 18:21:09 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:21:09 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:21:11 GMT
COPY file:fba67e67223207747005113b487869d57aad62ea3f78e719056b57b78b157bfc in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:21:12 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 10 May 2017 18:21:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:21:13 GMT
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
	-	`sha256:9e63864b454ddba7401a7ffd8068b563cc64b41a2a4a880cb4d023e27d170fb8`  
		Last Modified: Wed, 10 May 2017 19:02:14 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e5bebda3b2ea50163d7cb41283d27a24cc55181b42a624a0bdb5b7a6b0cf7e`  
		Last Modified: Wed, 10 May 2017 19:02:23 GMT  
		Size: 89.8 MB (89772883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f589ae73984120e0cd476ae8022784c6c78c54dce4c9dec090153058a0490a93`  
		Last Modified: Wed, 10 May 2017 19:02:15 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.1.4`

```console
$ docker pull neo4j@sha256:d7efee27862882a1302f416c7023b6311e46e54fd1c2eab289b3243356e4dde2
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.1.4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134866136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:521579dec36756e2871ebef74dd082b547289911dd944c1bbea7dbcd670cb062`
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
# Tue, 09 May 2017 23:00:03 GMT
ENV NEO4J_SHA256=ec127f8369ee49d67dc77bac986fdde3b471c6211193b2d9e8ceff62d708d85e NEO4J_TARBALL=neo4j-community-3.1.4-unix.tar.gz
# Tue, 09 May 2017 23:00:04 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.4-unix.tar.gz
# Tue, 09 May 2017 23:00:05 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 09 May 2017 23:00:19 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.4-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 09 May 2017 23:00:29 GMT
WORKDIR /var/lib/neo4j
# Tue, 09 May 2017 23:00:32 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.4-unix.tar.gz
RUN mv data /data     && ln -s /data
# Tue, 09 May 2017 23:00:33 GMT
VOLUME [/data]
# Tue, 09 May 2017 23:00:34 GMT
COPY file:fba67e67223207747005113b487869d57aad62ea3f78e719056b57b78b157bfc in /docker-entrypoint.sh 
# Tue, 09 May 2017 23:00:36 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 09 May 2017 23:00:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 May 2017 23:00:37 GMT
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
	-	`sha256:d34feb44a32f4ef72127901a297e438f8e77f6c759a8465de5d8aa4058ceaf0c`  
		Last Modified: Tue, 09 May 2017 23:02:04 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b8880b29662e141d8b4e4668bcf059ee48ec938b315811f9b8abbc55a4f644`  
		Last Modified: Tue, 09 May 2017 23:02:10 GMT  
		Size: 77.7 MB (77690752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7122f2ca4daad802403cf99abf8de5ad6d9ffd7d0183029cb2d0ecccdce92f9b`  
		Last Modified: Tue, 09 May 2017 23:02:05 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:090956777510f5dbfa41527202a95acdd304508df64b4aa009da01e3bad46667`  
		Last Modified: Tue, 09 May 2017 23:02:05 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.1`

```console
$ docker pull neo4j@sha256:d7efee27862882a1302f416c7023b6311e46e54fd1c2eab289b3243356e4dde2
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134866136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:521579dec36756e2871ebef74dd082b547289911dd944c1bbea7dbcd670cb062`
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
# Tue, 09 May 2017 23:00:03 GMT
ENV NEO4J_SHA256=ec127f8369ee49d67dc77bac986fdde3b471c6211193b2d9e8ceff62d708d85e NEO4J_TARBALL=neo4j-community-3.1.4-unix.tar.gz
# Tue, 09 May 2017 23:00:04 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.4-unix.tar.gz
# Tue, 09 May 2017 23:00:05 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 09 May 2017 23:00:19 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.4-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 09 May 2017 23:00:29 GMT
WORKDIR /var/lib/neo4j
# Tue, 09 May 2017 23:00:32 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.4-unix.tar.gz
RUN mv data /data     && ln -s /data
# Tue, 09 May 2017 23:00:33 GMT
VOLUME [/data]
# Tue, 09 May 2017 23:00:34 GMT
COPY file:fba67e67223207747005113b487869d57aad62ea3f78e719056b57b78b157bfc in /docker-entrypoint.sh 
# Tue, 09 May 2017 23:00:36 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 09 May 2017 23:00:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 May 2017 23:00:37 GMT
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
	-	`sha256:d34feb44a32f4ef72127901a297e438f8e77f6c759a8465de5d8aa4058ceaf0c`  
		Last Modified: Tue, 09 May 2017 23:02:04 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b8880b29662e141d8b4e4668bcf059ee48ec938b315811f9b8abbc55a4f644`  
		Last Modified: Tue, 09 May 2017 23:02:10 GMT  
		Size: 77.7 MB (77690752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7122f2ca4daad802403cf99abf8de5ad6d9ffd7d0183029cb2d0ecccdce92f9b`  
		Last Modified: Tue, 09 May 2017 23:02:05 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:090956777510f5dbfa41527202a95acdd304508df64b4aa009da01e3bad46667`  
		Last Modified: Tue, 09 May 2017 23:02:05 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.1.4-enterprise`

```console
$ docker pull neo4j@sha256:ab218419284029b48e6e3a8be9245c225c06724a4c1f37f82f7b1266ec010d59
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.1.4-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.4 MB (145390630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a0a5430c79a3dddc5b0f4f8525916383f147593fbb72fcf52616e3b5cf99f2b`
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
# Tue, 09 May 2017 23:00:58 GMT
ENV NEO4J_SHA256=2f583f7af4d1e5114a1fe241ada1faea379c9444270eb4d8cdd9c0f24c996489 NEO4J_TARBALL=neo4j-enterprise-3.1.4-unix.tar.gz
# Tue, 09 May 2017 23:00:59 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.4-unix.tar.gz
# Tue, 09 May 2017 23:01:00 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 09 May 2017 23:01:16 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.4-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 09 May 2017 23:01:25 GMT
WORKDIR /var/lib/neo4j
# Tue, 09 May 2017 23:01:28 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.4-unix.tar.gz
RUN mv data /data     && ln -s /data
# Tue, 09 May 2017 23:01:29 GMT
VOLUME [/data]
# Tue, 09 May 2017 23:01:30 GMT
COPY file:fba67e67223207747005113b487869d57aad62ea3f78e719056b57b78b157bfc in /docker-entrypoint.sh 
# Tue, 09 May 2017 23:01:31 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 09 May 2017 23:01:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 May 2017 23:01:33 GMT
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
	-	`sha256:71b5301b64febf67b25370c3e3c098dd7c4a455cb30c545aaf78c78e06628d04`  
		Last Modified: Tue, 09 May 2017 23:04:00 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a308e26d32588757a4b6ae4e9a435abaf8bf0f663b90244225e0b92bfdeb5173`  
		Last Modified: Tue, 09 May 2017 23:04:08 GMT  
		Size: 88.2 MB (88215245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44bd699bf0d74db4c8d1d4c3e008950ecd15710375ab6555fcd4df982c0a02d9`  
		Last Modified: Tue, 09 May 2017 23:04:00 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb68f3113f4b35835bec1c8c8a61bc1c36209231937e601e700792302369e5cb`  
		Last Modified: Tue, 09 May 2017 23:04:00 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.1-enterprise`

```console
$ docker pull neo4j@sha256:ab218419284029b48e6e3a8be9245c225c06724a4c1f37f82f7b1266ec010d59
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.1-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.4 MB (145390630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a0a5430c79a3dddc5b0f4f8525916383f147593fbb72fcf52616e3b5cf99f2b`
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
# Tue, 09 May 2017 23:00:58 GMT
ENV NEO4J_SHA256=2f583f7af4d1e5114a1fe241ada1faea379c9444270eb4d8cdd9c0f24c996489 NEO4J_TARBALL=neo4j-enterprise-3.1.4-unix.tar.gz
# Tue, 09 May 2017 23:00:59 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.4-unix.tar.gz
# Tue, 09 May 2017 23:01:00 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 09 May 2017 23:01:16 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.4-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 09 May 2017 23:01:25 GMT
WORKDIR /var/lib/neo4j
# Tue, 09 May 2017 23:01:28 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.4-unix.tar.gz
RUN mv data /data     && ln -s /data
# Tue, 09 May 2017 23:01:29 GMT
VOLUME [/data]
# Tue, 09 May 2017 23:01:30 GMT
COPY file:fba67e67223207747005113b487869d57aad62ea3f78e719056b57b78b157bfc in /docker-entrypoint.sh 
# Tue, 09 May 2017 23:01:31 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 09 May 2017 23:01:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 May 2017 23:01:33 GMT
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
	-	`sha256:71b5301b64febf67b25370c3e3c098dd7c4a455cb30c545aaf78c78e06628d04`  
		Last Modified: Tue, 09 May 2017 23:04:00 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a308e26d32588757a4b6ae4e9a435abaf8bf0f663b90244225e0b92bfdeb5173`  
		Last Modified: Tue, 09 May 2017 23:04:08 GMT  
		Size: 88.2 MB (88215245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44bd699bf0d74db4c8d1d4c3e008950ecd15710375ab6555fcd4df982c0a02d9`  
		Last Modified: Tue, 09 May 2017 23:04:00 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb68f3113f4b35835bec1c8c8a61bc1c36209231937e601e700792302369e5cb`  
		Last Modified: Tue, 09 May 2017 23:04:00 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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
$ docker pull neo4j@sha256:4738d80a2cda869ca2f6b2832297f89ecf5f4da137b5b9fec6ff329ad0c4fe09
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.9` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.4 MB (188384887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2ed742513e0628faa4cf578e293e6637801b5c57bc7e18f44dd88dfd7ae708e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:21:34 GMT
ENV NEO4J_SHA256=0d4ab95746871388bd55e418d148ff9de1440dfb4588ce228e3ac84360c46def
# Wed, 10 May 2017 18:21:35 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.9-unix.tar.gz
# Wed, 10 May 2017 18:21:36 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.9-unix.tar.gz
# Wed, 10 May 2017 18:21:37 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:21:53 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.9-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:21:54 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:21:55 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.9-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:21:56 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:21:57 GMT
COPY file:0944a2cbfb3872ef080e1d4d523c9d1bc7e6051f44ee5f024ab6840af5914b11 in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:21:58 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 10 May 2017 18:21:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:22:00 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2b356d6460555d513198555facf3a8e0d6de31393073646d5c7c082d90cd0d`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3140c06cad967c24605cc6cbecec3aeeb5c7c93e9827fe50f0e768901d93c919`  
		Last Modified: Wed, 10 May 2017 19:11:40 GMT  
		Size: 61.6 MB (61609262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ec5c965fa4114de9c642d612fa49bba31357e448f490dc43af7e7102486d77`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b961004fb19988ea16b948bab11554cbd2c4e2d687c553c9c7b00eda560cd5fd`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 1.4 KB (1405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0`

```console
$ docker pull neo4j@sha256:4738d80a2cda869ca2f6b2832297f89ecf5f4da137b5b9fec6ff329ad0c4fe09
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.4 MB (188384887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2ed742513e0628faa4cf578e293e6637801b5c57bc7e18f44dd88dfd7ae708e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:21:34 GMT
ENV NEO4J_SHA256=0d4ab95746871388bd55e418d148ff9de1440dfb4588ce228e3ac84360c46def
# Wed, 10 May 2017 18:21:35 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.9-unix.tar.gz
# Wed, 10 May 2017 18:21:36 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.9-unix.tar.gz
# Wed, 10 May 2017 18:21:37 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:21:53 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.9-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:21:54 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:21:55 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.9-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:21:56 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:21:57 GMT
COPY file:0944a2cbfb3872ef080e1d4d523c9d1bc7e6051f44ee5f024ab6840af5914b11 in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:21:58 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 10 May 2017 18:21:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:22:00 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2b356d6460555d513198555facf3a8e0d6de31393073646d5c7c082d90cd0d`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3140c06cad967c24605cc6cbecec3aeeb5c7c93e9827fe50f0e768901d93c919`  
		Last Modified: Wed, 10 May 2017 19:11:40 GMT  
		Size: 61.6 MB (61609262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ec5c965fa4114de9c642d612fa49bba31357e448f490dc43af7e7102486d77`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b961004fb19988ea16b948bab11554cbd2c4e2d687c553c9c7b00eda560cd5fd`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 1.4 KB (1405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.9-enterprise`

```console
$ docker pull neo4j@sha256:12995a91a6f6d55b18f7582f692d088135aac609ba7addcef6ba1fdd7384cb59
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.9-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.8 MB (190758991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1224170c115fec1515f9e12c9b29618c600543eae807b122552d27ab3339c624`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:22:19 GMT
ENV NEO4J_SHA256=b91cc0f164d52b4fd5919f119eb6060d75ad7c596bc365a1a059bc0423a11f18
# Wed, 10 May 2017 18:22:20 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.9-unix.tar.gz
# Wed, 10 May 2017 18:22:21 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.9-unix.tar.gz
# Wed, 10 May 2017 18:22:22 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:22:35 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.9-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:22:36 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:22:37 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.9-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:22:38 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:22:40 GMT
COPY file:0944a2cbfb3872ef080e1d4d523c9d1bc7e6051f44ee5f024ab6840af5914b11 in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:22:41 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 10 May 2017 18:22:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:22:43 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd274b8e34c56cb695680715ef57f7e56b31d97fab1933335f4d31996e0ac0d4`  
		Last Modified: Wed, 10 May 2017 19:12:48 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c2e788613e7252fae8fba4505457b4d1427718fe8870a638e6ad5678612a45`  
		Last Modified: Wed, 10 May 2017 19:13:02 GMT  
		Size: 64.0 MB (63983367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ca185eafe37923eaa3980157fd407531d71b4d289a0abb68d84b166c85eef7`  
		Last Modified: Wed, 10 May 2017 19:12:47 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87bc985df3be2603f884c45df21ff800a8d0725057425ea884a851e3d58b3397`  
		Last Modified: Wed, 10 May 2017 19:12:47 GMT  
		Size: 1.4 KB (1405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0-enterprise`

```console
$ docker pull neo4j@sha256:12995a91a6f6d55b18f7582f692d088135aac609ba7addcef6ba1fdd7384cb59
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.8 MB (190758991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1224170c115fec1515f9e12c9b29618c600543eae807b122552d27ab3339c624`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:22:19 GMT
ENV NEO4J_SHA256=b91cc0f164d52b4fd5919f119eb6060d75ad7c596bc365a1a059bc0423a11f18
# Wed, 10 May 2017 18:22:20 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.9-unix.tar.gz
# Wed, 10 May 2017 18:22:21 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.9-unix.tar.gz
# Wed, 10 May 2017 18:22:22 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:22:35 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.9-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:22:36 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:22:37 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.9-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:22:38 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:22:40 GMT
COPY file:0944a2cbfb3872ef080e1d4d523c9d1bc7e6051f44ee5f024ab6840af5914b11 in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:22:41 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 10 May 2017 18:22:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:22:43 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd274b8e34c56cb695680715ef57f7e56b31d97fab1933335f4d31996e0ac0d4`  
		Last Modified: Wed, 10 May 2017 19:12:48 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c2e788613e7252fae8fba4505457b4d1427718fe8870a638e6ad5678612a45`  
		Last Modified: Wed, 10 May 2017 19:13:02 GMT  
		Size: 64.0 MB (63983367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ca185eafe37923eaa3980157fd407531d71b4d289a0abb68d84b166c85eef7`  
		Last Modified: Wed, 10 May 2017 19:12:47 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87bc985df3be2603f884c45df21ff800a8d0725057425ea884a851e3d58b3397`  
		Last Modified: Wed, 10 May 2017 19:12:47 GMT  
		Size: 1.4 KB (1405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.8`

```console
$ docker pull neo4j@sha256:861c28183d683cacb98a9cb9dace93b9aa1647e6155d5bc2fcd165ef00f894ef
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.8` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.3 MB (188303000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8170756eb0f1dfd03757d138b77182a9f2d7263a847a09d7745619a4475552e1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:23:02 GMT
ENV NEO4J_SHA256=015c33dc791f9be2f2ef8ed1d1014f9f3f31140d192df676a5d6f584f5c7f6aa
# Wed, 10 May 2017 18:23:03 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.8-unix.tar.gz
# Wed, 10 May 2017 18:23:04 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.8-unix.tar.gz
# Wed, 10 May 2017 18:23:05 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:23:18 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.8-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:23:19 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:23:21 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.8-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:23:22 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:23:23 GMT
COPY file:0944a2cbfb3872ef080e1d4d523c9d1bc7e6051f44ee5f024ab6840af5914b11 in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:23:24 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 10 May 2017 18:23:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:23:26 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15f088d9b878f2c58d3ebc4956d0cdccf5c0f3ec6ee2f220cb4493f3ab6bb40`  
		Last Modified: Wed, 10 May 2017 19:14:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375d7be178dbe9e2c83e6abe88f6ffea2bfd1ba02e7f1bc6a27ae24b38f360dc`  
		Last Modified: Wed, 10 May 2017 19:14:39 GMT  
		Size: 61.5 MB (61527374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9cfd193d2ee4c2b2a71c7dfb642a843ecff3a10496801e2bb9a4973bff34cc`  
		Last Modified: Wed, 10 May 2017 19:14:22 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfcd163ea1a43989c7bb81ff882a10d30c7bd463970da750aa4631b5d8b8fbf`  
		Last Modified: Wed, 10 May 2017 19:14:22 GMT  
		Size: 1.4 KB (1404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.8-enterprise`

```console
$ docker pull neo4j@sha256:afcac2ed6a58d51a4ca1f90426a0c74ec92e8e0498a9baf7edde72477724ae20
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.8-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.7 MB (190674953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0de0c70735fc43d6954b88cbfdeea5933ea2990dda45c584be6b48a7e39964b3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:23:45 GMT
ENV NEO4J_SHA256=65e1feac021f45640e390a08c91e9b3bbfed60a7e9cc15c5a44df5af07c46768
# Wed, 10 May 2017 18:23:46 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.8-unix.tar.gz
# Wed, 10 May 2017 18:23:47 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.8-unix.tar.gz
# Wed, 10 May 2017 18:23:48 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:24:01 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.8-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:24:02 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:24:03 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.8-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:24:04 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:24:06 GMT
COPY file:0944a2cbfb3872ef080e1d4d523c9d1bc7e6051f44ee5f024ab6840af5914b11 in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:24:07 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 10 May 2017 18:24:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:24:09 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a10139c1c9fef91008bc2e6555dd75300deb99c9c76fac42e732babe2d631590`  
		Last Modified: Wed, 10 May 2017 19:15:19 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30eb8bb08e08657732d2172b854809a50bc62114f3d3e236f96424f0a7258c39`  
		Last Modified: Wed, 10 May 2017 19:15:34 GMT  
		Size: 63.9 MB (63899329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f05b5a42093653507b6e7012137c09decc5b9f239591395462ea90c5397bff`  
		Last Modified: Wed, 10 May 2017 19:15:19 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af9a9b4eda7a9925be2a0865feee3dd67bbbaccff35c347722ca4f2d6f1bbb8c`  
		Last Modified: Wed, 10 May 2017 19:15:21 GMT  
		Size: 1.4 KB (1405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.7`

```console
$ docker pull neo4j@sha256:24fd1793ec15c9d249065639ec74c1f7af9fc1a8a4fd996f457f67e267c92b86
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.3 MB (188271261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cd563088f6a22ed129f0299cc77ad1356675892ca32c1668a4a56218c84c3be`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:24:28 GMT
ENV NEO4J_SHA256=69f7b410934d0a83120f892c1f341905b3a9346656b5d085eca1da612b8e7ae6
# Wed, 10 May 2017 18:24:29 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.7-unix.tar.gz
# Wed, 10 May 2017 18:24:29 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.7-unix.tar.gz
# Wed, 10 May 2017 18:24:30 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:24:44 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.7-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:24:45 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:24:46 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.7-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:24:47 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:24:49 GMT
COPY file:0944a2cbfb3872ef080e1d4d523c9d1bc7e6051f44ee5f024ab6840af5914b11 in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:24:50 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 10 May 2017 18:24:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:24:52 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286b2f01aa23384bffe7e820546fc870702a87cfb27bbb4f0dd4ae2c3dd6a813`  
		Last Modified: Wed, 10 May 2017 19:16:01 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12efb9b7c6de5fa3036703ba6f5c3d5d109dd1bbb717abd49dfba415cbee1c2`  
		Last Modified: Wed, 10 May 2017 19:16:06 GMT  
		Size: 61.5 MB (61495635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb5e4a15877a41e637347c8ef0ecc24caeafffcbedf175c03ca37c6b320264e`  
		Last Modified: Wed, 10 May 2017 19:16:00 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4181f2dcd385fc8a82201150b212e626588f0caf3957ca70388d0308fe8e3c0e`  
		Last Modified: Wed, 10 May 2017 19:16:00 GMT  
		Size: 1.4 KB (1405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.7-enterprise`

```console
$ docker pull neo4j@sha256:b95d58d69ffe65668a3f83a4fdbd2e0c6d59660214250ef02c8f2260309a788d
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.7-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.6 MB (190642932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bc3dc3d36e4993bfda6dd5f5f4a47d220f916809a1843b92f8a8beb0d7262f5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:25:12 GMT
ENV NEO4J_SHA256=92edf396616be8a1cdb41dd05c300865959f97944f4fe7f50539401a49c095d5
# Wed, 10 May 2017 18:25:13 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.7-unix.tar.gz
# Wed, 10 May 2017 18:25:13 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.7-unix.tar.gz
# Wed, 10 May 2017 18:25:14 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:25:28 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.7-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:25:29 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:25:31 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.7-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:25:32 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:25:33 GMT
COPY file:0944a2cbfb3872ef080e1d4d523c9d1bc7e6051f44ee5f024ab6840af5914b11 in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:25:34 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 10 May 2017 18:25:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:25:36 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1410f9ed286728bd962b2204b9f2035279932dbd95a23d648c2c9e119355131`  
		Last Modified: Wed, 10 May 2017 19:16:34 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0063e1a205c196e3c89ba6ca4daf8854f08bc793ee3172efa3f6353ceffceaf0`  
		Last Modified: Wed, 10 May 2017 19:16:41 GMT  
		Size: 63.9 MB (63867305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24cf818621bdf1765bd11212db5b8fc2a52db88e458a061e99ffc95f6c01a46`  
		Last Modified: Wed, 10 May 2017 19:16:34 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b8cebbedc89e2710568f6502feced98b23a732fac8d738a4a826b7d301905bc`  
		Last Modified: Wed, 10 May 2017 19:16:34 GMT  
		Size: 1.4 KB (1405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.6`

```console
$ docker pull neo4j@sha256:078c6beb8803499c06aae7bd0a2744fe4d0e3de3d710f4150f2b72d0f2611b37
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.6` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.3 MB (188329258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02ac86c1ba099ca9e883a203f4a782d92ce9fae8ca677e2710355e36624e5981`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:25:55 GMT
ENV NEO4J_SHA256=efeab41183e9e5fa94a2d396c65ea93a24e9f105cb3b5f0d0a8e42fb709f4660
# Wed, 10 May 2017 18:25:56 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.6-unix.tar.gz
# Wed, 10 May 2017 18:25:57 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.6-unix.tar.gz
# Wed, 10 May 2017 18:25:58 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:26:11 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.6-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:26:12 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:26:13 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.6-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:26:14 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:26:15 GMT
COPY file:404881b1bacde49595b51ced5b6c716a0338b4c47cd45357cd3d7850f1c255b2 in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:26:16 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 10 May 2017 18:26:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:26:18 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7a078c4625f02744041c5eda9bcac4a3e3ea7b387c2f37790ff4a0dfd6e4b0`  
		Last Modified: Wed, 10 May 2017 19:17:08 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cc5565c3cc832f150cf157462fe136648ec612493c450720f562318547e019`  
		Last Modified: Wed, 10 May 2017 19:17:13 GMT  
		Size: 61.6 MB (61553663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb04bc8c0827de8699236a1680a15e0ccd13b8d040d5f4486920514e4ca99fa`  
		Last Modified: Wed, 10 May 2017 19:17:07 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac29844806fd4ae5f7d941a062b6b7f5a1e22d512eb4f159442ed903cd58f9fc`  
		Last Modified: Wed, 10 May 2017 19:17:07 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.6-enterprise`

```console
$ docker pull neo4j@sha256:84e2f3797b588a9655a3f40e70e16f8be0f1e471a57f17b4eb031de4a29e8901
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.6-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.7 MB (190693799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f27d4bec85579903fb41a09db8cb6e8e00f02303843674ee47a02e76126b9f0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:26:56 GMT
ENV NEO4J_SHA256=f58450760a92b0913c5418e26278a6a65bf6c5ba01f9b12a033f56e80f0c3d23
# Wed, 10 May 2017 18:26:57 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.6-unix.tar.gz
# Wed, 10 May 2017 18:26:58 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.6-unix.tar.gz
# Wed, 10 May 2017 18:27:00 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:27:15 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.6-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:27:15 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:27:17 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.6-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:27:18 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:27:19 GMT
COPY file:404881b1bacde49595b51ced5b6c716a0338b4c47cd45357cd3d7850f1c255b2 in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:27:20 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 10 May 2017 18:27:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:27:22 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe212226cf641464fec5777b056cd9cea0cc7895acd803c1049d81496bb64862`  
		Last Modified: Wed, 10 May 2017 19:17:39 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81fd49c55a83a1d6406907ace379922106c9079f126db3fd86cca31f4139ee4f`  
		Last Modified: Wed, 10 May 2017 19:17:45 GMT  
		Size: 63.9 MB (63918201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c856c93919f7e2a6e235939608a4fe1eb30dcb079baca3ea46e1887c9278a5`  
		Last Modified: Wed, 10 May 2017 19:17:40 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a049580c7fde535a919ed0d4075fc2b26e4a84963d2189f6ddcb38f9c8d7c55`  
		Last Modified: Wed, 10 May 2017 19:17:40 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.5`

```console
$ docker pull neo4j@sha256:8071576f2d79c200307acb374d5a3ad23be05d4d69b89e9300bf3793a93b1fbd
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.3 MB (188325590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9265a2f592e163a5f3babba5a51d5b6cdf5b6f32a21199c8a09e091ebeed069f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:27:42 GMT
ENV NEO4J_SHA256=65f6995f9d2e87b61cb8d9c7623e9861bced555a8c05f3476aa73240a77437d8
# Wed, 10 May 2017 18:27:42 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.5-unix.tar.gz
# Wed, 10 May 2017 18:27:43 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.5-unix.tar.gz
# Wed, 10 May 2017 18:27:44 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:27:57 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.5-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:27:58 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:27:59 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.5-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:28:00 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:28:02 GMT
COPY file:404881b1bacde49595b51ced5b6c716a0338b4c47cd45357cd3d7850f1c255b2 in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:28:03 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 10 May 2017 18:28:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:28:04 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:140c7a55c4587eda0e886e91a4b35e968d3cd7b3fb18c7047e8cec7fbab04678`  
		Last Modified: Wed, 10 May 2017 19:18:14 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95dc4ea8a9726ec18ceec96025782d47510df17a1e62e05902928690e20ef860`  
		Last Modified: Wed, 10 May 2017 19:18:19 GMT  
		Size: 61.5 MB (61549996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b69685680bce70035af332d77bb5dbcc1ec116fb6eab14a10b9219f98c3e741`  
		Last Modified: Wed, 10 May 2017 19:18:11 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b8017dbb815f3f68f5941be67de87082b6a65900ff1cecd34ecfd621ae0a56`  
		Last Modified: Wed, 10 May 2017 19:18:11 GMT  
		Size: 1.4 KB (1374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.5-enterprise`

```console
$ docker pull neo4j@sha256:99c8ba409d0ff66c1a05c69ad8700eee6dfe3d5f94f0ba5b744e855b8b3769bf
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.5-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.7 MB (190690299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29d26ebd88f0162a9849a8f331cda055031bd384f8fac7c9749ca7dcf669ecb6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:28:24 GMT
ENV NEO4J_SHA256=069cd8b1eab4e4b20e4abb50a6f1e7c985a21ad349d3fe3413943b96f1724e06
# Wed, 10 May 2017 18:28:25 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.5-unix.tar.gz
# Wed, 10 May 2017 18:28:25 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.5-unix.tar.gz
# Wed, 10 May 2017 18:28:26 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:28:50 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.5-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:28:51 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:28:53 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.5-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:28:54 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:28:55 GMT
COPY file:404881b1bacde49595b51ced5b6c716a0338b4c47cd45357cd3d7850f1c255b2 in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:28:56 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 10 May 2017 18:28:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:28:58 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff806082f2dc2cdb4ccb4118b645eb5bf22e888671d1363aae4203ab7e518a4f`  
		Last Modified: Wed, 10 May 2017 19:18:46 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67df8b8113466c572305e1e3f207230974ae90897207c7e45476dc4fc0874cfb`  
		Last Modified: Wed, 10 May 2017 19:18:51 GMT  
		Size: 63.9 MB (63914701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a80906dd1a19f3ec403d9afcce650ac18d49c6cf4d6dbdabc0e4e2d64233946c`  
		Last Modified: Wed, 10 May 2017 19:18:46 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eae4f478bb39f9d56c8752895c9e632a39c2ccb1d87849856370919c8a83918`  
		Last Modified: Wed, 10 May 2017 19:18:46 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.4`

```console
$ docker pull neo4j@sha256:78a89b6e57b2dd9458aadea85f2ed32b359838fbf5905f12dbc471252cd0a5bd
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.3 MB (188250171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bafc2ced0cf9a15a18eff33adf19be9023b4a3d7992d3b96d3047d6cb92b671b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:29:18 GMT
ENV NEO4J_SHA256=e1da51163eb18380623788eabea34dfe23ee21c99deca4e7922094b0d242e805
# Wed, 10 May 2017 18:29:19 GMT
ENV NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.4-unix.tar.gz
# Wed, 10 May 2017 18:29:34 GMT
RUN curl --fail --silent --show-error --location --output neo4j.tar.gz $NEO4J_URI     && echo "$NEO4J_SHA256 neo4j.tar.gz" | sha256sum --check --quiet -     && tar --extract --file neo4j.tar.gz --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm neo4j.tar.gz
# Wed, 10 May 2017 18:29:35 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:29:36 GMT
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:29:37 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:29:39 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:29:40 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 10 May 2017 18:29:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:29:42 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e3b710b2e9a9480c32f5c69b3588a2351487a9fddbfc024d8f37f1ae1d2171`  
		Last Modified: Wed, 10 May 2017 19:19:23 GMT  
		Size: 61.5 MB (61474764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cbc2d5a7aec42b2f4eca808d6eb73d94efa997598cd7df6ea8e17d31e7c12c`  
		Last Modified: Wed, 10 May 2017 19:19:17 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bef8633601e14d6c6fb4ea525a0bed1dd047fd9806f79810f5579b6964233e91`  
		Last Modified: Wed, 10 May 2017 19:19:18 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.4-enterprise`

```console
$ docker pull neo4j@sha256:4c6cbff740101ee86750245862b585ee62785a9d4a27c308d0811f6031d4e4b3
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.4-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.6 MB (190594754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc52da3d0621dfbbdb983bb85d0759d4be0930eae72c7160ab54fa6f8a3cc466`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:30:18 GMT
ENV NEO4J_SHA256=7cc47dcffdd040beec230cb6633bf03ace326218fa70f6d90612de057a6d61e2
# Wed, 10 May 2017 18:30:19 GMT
ENV NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.4-unix.tar.gz
# Wed, 10 May 2017 18:30:44 GMT
RUN curl --fail --silent --show-error --location --output neo4j.tar.gz $NEO4J_URI     && echo "$NEO4J_SHA256 neo4j.tar.gz" | sha256sum --check --quiet -     && tar --extract --file neo4j.tar.gz --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm neo4j.tar.gz
# Wed, 10 May 2017 18:30:45 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:30:48 GMT
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:30:49 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:30:51 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:30:52 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 10 May 2017 18:30:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:30:54 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ac4daadada81e1fe62e05af54b8b0f0e7adb6565ac8b024ddbf932b073deb6`  
		Last Modified: Wed, 10 May 2017 19:19:54 GMT  
		Size: 63.8 MB (63819343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c469278165b64a27af3149919e575acdaab18a9ccd3dc2caff7a620cd70300`  
		Last Modified: Wed, 10 May 2017 19:19:49 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df4cc372f46e6762b89bb7567ff168312f9c4eb883357682793e8b4a2a7f675`  
		Last Modified: Wed, 10 May 2017 19:19:49 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.3`

```console
$ docker pull neo4j@sha256:8a3204171ccdefcf4b6d716ee1b946529c60c8697e8f400bc1f5deb8ad318fdd
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.3` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188211749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b14a650e1d16bec75b5478c9100a685e98cc99727bd5619b9dba4dc2934f8fb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:31:20 GMT
ENV NEO4J_SHA256=20cd65c84a6e5345f17bb03c145190f74e58ec2754c2e515a64b317e34dae2ce
# Wed, 10 May 2017 18:31:21 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.3-unix.tar.gz
# Wed, 10 May 2017 18:31:22 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.3-unix.tar.gz
# Wed, 10 May 2017 18:31:24 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:31:40 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.3-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:31:41 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:31:43 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.3-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:31:45 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:31:47 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:31:48 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 10 May 2017 18:31:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:31:50 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9deba154386494ab23056a0fccfb08aff9355e9f5030b29001bf69f6e2d5ce49`  
		Last Modified: Wed, 10 May 2017 19:20:20 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c15eb248a442210965780e68a7d9792a49ab2acb4b014a0bce13ca3eafc9a4`  
		Last Modified: Wed, 10 May 2017 19:20:26 GMT  
		Size: 61.4 MB (61436209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32bdc4c08b83953ddb9d74472fe6473aeacb0dda938e970f57e67ad9eea5070f`  
		Last Modified: Wed, 10 May 2017 19:20:21 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cec6dc447871d3db12ec3326692bec7a5b77c3543066ab54f3e528908af65d6`  
		Last Modified: Wed, 10 May 2017 19:20:20 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.3-enterprise`

```console
$ docker pull neo4j@sha256:dba7288816329c7d914ee17a935623c1a9afde0d0f9bfcd932edd959f381bcd8
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.3-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.5 MB (190545817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6149964fd751a80d49044f3061ad324a8081b7d548950a1ab22fa47276be21bc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:32:17 GMT
ENV NEO4J_SHA256=f73ed4faf94087bded5ee34bc2614f09bbedc3b6e25439058526ce5506eb127e
# Wed, 10 May 2017 18:32:18 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.3-unix.tar.gz
# Wed, 10 May 2017 18:32:19 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.3-unix.tar.gz
# Wed, 10 May 2017 18:32:20 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:32:38 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.3-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:32:38 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:32:40 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.3-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:32:41 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:32:43 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:32:44 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 10 May 2017 18:32:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:32:46 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef5a61dbfaefb3fb8881435141de671d2ff59b260d40abb81febfae97a876a1`  
		Last Modified: Wed, 10 May 2017 19:20:54 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093a3ce5167a5a9653d127252adf6dac338b9fa08469c481cf1890f872ac69a9`  
		Last Modified: Wed, 10 May 2017 19:21:00 GMT  
		Size: 63.8 MB (63770276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9e95c466b4cbd8ab889ddbe9a5eaa704007b24e039ac86cbe05d62bdc2f29d9`  
		Last Modified: Wed, 10 May 2017 19:20:54 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc2f6a4056e7535fa7e4cf4b845bdc0495db17cf2336bef66b53fb28ec4d714`  
		Last Modified: Wed, 10 May 2017 19:20:54 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.2`

```console
$ docker pull neo4j@sha256:c5a2c067dfdb91b602c36c8867fa698e313b13a8c4f1876bc4fa69a4e039ee8a
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.8 MB (188843884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:148c4111722503481c604967904317b63b0dba57d1c71fbfc2b1b449cd611863`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:33:07 GMT
ENV NEO4J_SHA256=3daac469e0ad0f74eb8532ada8019b418e6ebd88da9bac52a4ee3393e18086aa
# Wed, 10 May 2017 18:33:08 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.2-unix.tar.gz
# Wed, 10 May 2017 18:33:09 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.2-unix.tar.gz
# Wed, 10 May 2017 18:33:10 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:33:25 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.2-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:33:40 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:33:42 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.2-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:33:43 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:33:45 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:33:46 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 10 May 2017 18:33:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:33:47 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b1ed00dc6f4f62b052e9211aefd125a20410fd665b89c752abb75868cefa2f`  
		Last Modified: Wed, 10 May 2017 19:21:27 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f273a35992b6d4a28d61163046bad21b4ce910ae731951ff9d106f5cc30cb3d1`  
		Last Modified: Wed, 10 May 2017 19:21:32 GMT  
		Size: 62.1 MB (62068346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d1ed95813448b06901ebcb489bc7581f2281f47aa70e74d3bf76095c54d2053`  
		Last Modified: Wed, 10 May 2017 19:21:26 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:702aaa42971d1f5d3d1a5120bf2549c056b93f6b8ef428d0e0f27eed2f1aa2e5`  
		Last Modified: Wed, 10 May 2017 19:21:26 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.2-enterprise`

```console
$ docker pull neo4j@sha256:1bfb9f2951f14d6750a54dd3aaa1764aab07b06827b68e7153b03e6f656fdff2
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.2-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.2 MB (191180686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eb22035c8d5a01ba93d904f307ff7ec02d03bb67387fb2a96a301729d7aa21d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:34:08 GMT
ENV NEO4J_SHA256=7e3cb1cb29c51ac267e57ec3d12c425bd31a4c92a2ecba70bb78360670b4b972
# Wed, 10 May 2017 18:34:09 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.2-unix.tar.gz
# Wed, 10 May 2017 18:34:10 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.2-unix.tar.gz
# Wed, 10 May 2017 18:34:11 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:34:23 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.2-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:34:24 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:34:25 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.2-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:34:27 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:34:28 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:34:29 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 10 May 2017 18:34:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:34:31 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad57eac842a5ab74cdd73b489972d2583f2eb14283568b49b87fee149c2e2985`  
		Last Modified: Wed, 10 May 2017 19:22:11 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3739011a22ecba6633637f151be9544a9201c7908cb295cbfa7cb2c2969737fb`  
		Last Modified: Wed, 10 May 2017 19:22:16 GMT  
		Size: 64.4 MB (64405146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b290c206ecdecfc833903307bb84bccae2af99b882e0b67ba6fdb7926663432`  
		Last Modified: Wed, 10 May 2017 19:22:11 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6271769beb1b6b678f3346e6e32193d06e43f0ec9d3385fc684952b2cb0f6857`  
		Last Modified: Wed, 10 May 2017 19:22:11 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.1`

```console
$ docker pull neo4j@sha256:0f02fee1e7117c1d515b9500f987e0535c413af1b48d0939cbe82e6d8e6e3d34
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.3 MB (189335596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5484d7c9e679a95e60c6fa5cb69677b8ed5ec69af1414c9c19d7a2f563052fd4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:34:58 GMT
ENV NEO4J_SHA256=ae9d966559c83a9f1c61e1ef4d67aafeb9185e568b6dec0cd6b50e4297a15895
# Wed, 10 May 2017 18:34:59 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.1-unix.tar.gz
# Wed, 10 May 2017 18:35:00 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.1-unix.tar.gz
# Wed, 10 May 2017 18:35:01 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:35:21 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.1-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:35:22 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:35:24 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.1-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:35:25 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:35:27 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:35:28 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 10 May 2017 18:35:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:35:31 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a45bc21a43438a02ef2206f3a529f0b9a400bdac5b49a75f7f60230a00f44af`  
		Last Modified: Wed, 10 May 2017 19:22:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba340abd30d4e273680c749af1c2f14253eb8d56d9b6234dcf592d15d8e9742`  
		Last Modified: Wed, 10 May 2017 19:22:48 GMT  
		Size: 62.6 MB (62560057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef35d973aa2257c0b32befe914587c98338c9ab93bc6cf8d7e498a27626215b`  
		Last Modified: Wed, 10 May 2017 19:22:42 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a53f96f25fcf0bd97d66463610cea9fa348aa7d1d4197a9f277af295883dd9`  
		Last Modified: Wed, 10 May 2017 19:22:42 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.1-enterprise`

```console
$ docker pull neo4j@sha256:d75b729622e60986d669206547eaa8c9ca2be0c46f819fc9808bc498a9c0e68d
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.1-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.6 MB (191550300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f452fb3d46e3f8e1d6b8617df6b5ab96f9f6d87264e58c52f911a4f97d4557e4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:35:57 GMT
ENV NEO4J_SHA256=d88c107d10bc4d4919bbac775aa128b4c312a420abfd06897471b5fa96864b11
# Wed, 10 May 2017 18:35:58 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.1-unix.tar.gz
# Wed, 10 May 2017 18:35:59 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.1-unix.tar.gz
# Wed, 10 May 2017 18:36:01 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:36:33 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.1-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:36:35 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:36:36 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.1-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:36:38 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:36:39 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:36:41 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 10 May 2017 18:36:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:36:43 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80be5589bb37d4f7e5086c2037c2f0754a1520d683c91c3532027dc8c77139eb`  
		Last Modified: Wed, 10 May 2017 19:23:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b4b27e5df5121399c4cb96745d943f9cf954eebc1c9c9a862dd7df9d9a3a05`  
		Last Modified: Wed, 10 May 2017 19:23:21 GMT  
		Size: 64.8 MB (64774761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f951ee70ea48d13dc7d1110b9afce0c6b85349817ee564fc3c212aadc48ec319`  
		Last Modified: Wed, 10 May 2017 19:23:14 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1f16dd6bbf2f0d642851a21e2c139054019e3e83307925702ea4c3339769d5`  
		Last Modified: Wed, 10 May 2017 19:23:14 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.0`

```console
$ docker pull neo4j@sha256:d39b077341695299235e96002921d120aceb35cbaa19eebf184373671f2d86be
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.3 MB (189332987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a585dca74ef3e3f7de0491025c8f4d57c80ac06e3f5bc7962a19f420d2326771`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:37:10 GMT
ENV NEO4J_SHA256=1f1aeb3c748d5b05c263b7dab8b195df788507f59228e80534ed8e506a80c517
# Wed, 10 May 2017 18:37:11 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.0-unix.tar.gz
# Wed, 10 May 2017 18:37:12 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.0-unix.tar.gz
# Wed, 10 May 2017 18:37:14 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:37:29 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:37:30 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:37:32 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.0-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:37:33 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:37:34 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:37:35 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 10 May 2017 18:37:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:37:37 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9376a88eabaafe29d4088dbb069c9559b0453d1ee225f7a157acc9ba95dae8a`  
		Last Modified: Wed, 10 May 2017 19:23:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432608385deba7e2329690f43a8fc131be2a4bd82bea10a2f95bf7c602be0f6e`  
		Last Modified: Wed, 10 May 2017 19:23:57 GMT  
		Size: 62.6 MB (62557448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38550b43687ee57179a1455e8cf0026cba33f29f96e91768b78021feea1554f6`  
		Last Modified: Wed, 10 May 2017 19:23:47 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c50bca39bb202a7fe177226a420440377106d8499ea9bceca81eb2097eba0521`  
		Last Modified: Wed, 10 May 2017 19:23:47 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.0-enterprise`

```console
$ docker pull neo4j@sha256:d037605782b54f0f4913fbb1ec0f62385b367e0e730ad95902135c8d3df17ae4
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.0-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.5 MB (191547877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51234452417b7b0489335b8afe6b3bc82f785db6d47324e9af1a33f16bbd002d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:37:59 GMT
ENV NEO4J_SHA256=376409e1849f2f13d5ea6ddc672b535646ffb9a24527520b661e044190bf617a
# Wed, 10 May 2017 18:38:00 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.0-unix.tar.gz
# Wed, 10 May 2017 18:38:01 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.0-unix.tar.gz
# Wed, 10 May 2017 18:38:02 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:38:15 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:38:16 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:38:37 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.0-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:38:39 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:38:40 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:38:41 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 10 May 2017 18:38:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:38:43 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4955fc06f07f27cc5e1bab4fe1dcf56c3c208a3cb85f52a2d89bfeab6dc99a16`  
		Last Modified: Wed, 10 May 2017 19:24:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ab0929d930a480b01ad80d24d18bb964dc29649fa9ca7a6fc3116627beaf7a`  
		Last Modified: Wed, 10 May 2017 19:24:29 GMT  
		Size: 64.8 MB (64772336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d799e192af86e2781bce732b2002a6cb8db9401cd8c779102de567665b3d4160`  
		Last Modified: Wed, 10 May 2017 19:24:23 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f478946cd25400431555a0e9281ecb2334b1e101a0fe7394d40b32f78089f05`  
		Last Modified: Wed, 10 May 2017 19:24:25 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.10`

```console
$ docker pull neo4j@sha256:fa2c748db84067de16c4b8e80521254433348139ff1a56aa392763f76de4b2c6
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.10` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.2 MB (194187359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02f87624397ac4421e22686b8d2e167965de8e07c454c87d2706bf7ead70b22a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:39:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 18:39:19 GMT
ENV NEO4J_SHA256=b910ca32c454dd3aa2870d2d9f83973c9597ab67b7f72355091ca2d924d646ab
# Wed, 10 May 2017 18:39:20 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.10-unix.tar.gz
# Wed, 10 May 2017 18:39:21 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.10-unix.tar.gz
# Wed, 10 May 2017 18:39:22 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:39:37 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.10-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:39:38 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:39:41 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.10-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:39:42 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:39:44 GMT
COPY file:77655caa958663cf4b6b261cb705cbea286374905edc612985f978867904bd01 in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:39:45 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 10 May 2017 18:39:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:39:48 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2a29d5eece367183975013d8bfb75f672d8acded3cd762cc25d114eba5e1e4`  
		Last Modified: Wed, 10 May 2017 19:24:59 GMT  
		Size: 8.6 MB (8647804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8284f47ca3a722dad4350768a1a9b525fd62d840d867fa0f6bc25b8e789fcd`  
		Last Modified: Wed, 10 May 2017 19:24:56 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64476d1db631e87f730530da6727f8573e3970b4b817ce4f813a7f81f365108`  
		Last Modified: Wed, 10 May 2017 19:25:03 GMT  
		Size: 58.8 MB (58763493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79bfb1098ca453c7dedb305f1393f1c0392e9b0a1bfa616a4b06fea0d0772a4e`  
		Last Modified: Wed, 10 May 2017 19:24:56 GMT  
		Size: 712.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe16e3ffe97754ffc64b83dd38893770813f67a7723de471f5afe6ab80320e21`  
		Last Modified: Wed, 10 May 2017 19:24:56 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3`

```console
$ docker pull neo4j@sha256:fa2c748db84067de16c4b8e80521254433348139ff1a56aa392763f76de4b2c6
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.2 MB (194187359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02f87624397ac4421e22686b8d2e167965de8e07c454c87d2706bf7ead70b22a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:39:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 18:39:19 GMT
ENV NEO4J_SHA256=b910ca32c454dd3aa2870d2d9f83973c9597ab67b7f72355091ca2d924d646ab
# Wed, 10 May 2017 18:39:20 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.10-unix.tar.gz
# Wed, 10 May 2017 18:39:21 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.10-unix.tar.gz
# Wed, 10 May 2017 18:39:22 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:39:37 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.10-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:39:38 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:39:41 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.10-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:39:42 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:39:44 GMT
COPY file:77655caa958663cf4b6b261cb705cbea286374905edc612985f978867904bd01 in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:39:45 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 10 May 2017 18:39:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:39:48 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2a29d5eece367183975013d8bfb75f672d8acded3cd762cc25d114eba5e1e4`  
		Last Modified: Wed, 10 May 2017 19:24:59 GMT  
		Size: 8.6 MB (8647804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8284f47ca3a722dad4350768a1a9b525fd62d840d867fa0f6bc25b8e789fcd`  
		Last Modified: Wed, 10 May 2017 19:24:56 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64476d1db631e87f730530da6727f8573e3970b4b817ce4f813a7f81f365108`  
		Last Modified: Wed, 10 May 2017 19:25:03 GMT  
		Size: 58.8 MB (58763493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79bfb1098ca453c7dedb305f1393f1c0392e9b0a1bfa616a4b06fea0d0772a4e`  
		Last Modified: Wed, 10 May 2017 19:24:56 GMT  
		Size: 712.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe16e3ffe97754ffc64b83dd38893770813f67a7723de471f5afe6ab80320e21`  
		Last Modified: Wed, 10 May 2017 19:24:56 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.10-enterprise`

```console
$ docker pull neo4j@sha256:34fbd13e50a4a6cc7008671764342513f3c518ba94a262c831a9f32e68a2a2ed
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.10-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196733704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:540e6364ce69c0528495dc49ac1b3954be3588d32b3ee5f01db9d8b7d965527b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:39:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 18:40:14 GMT
ENV NEO4J_SHA256=dfbd3c253e7d338bff00b615973f0186f100970a2d22f24b5eaa3575ceb8f643
# Wed, 10 May 2017 18:40:16 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.10-unix.tar.gz
# Wed, 10 May 2017 18:40:16 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.10-unix.tar.gz
# Wed, 10 May 2017 18:40:18 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:40:38 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.10-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:40:39 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:40:42 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.10-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:40:43 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:40:45 GMT
COPY file:77655caa958663cf4b6b261cb705cbea286374905edc612985f978867904bd01 in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:40:46 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 10 May 2017 18:40:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:40:49 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2a29d5eece367183975013d8bfb75f672d8acded3cd762cc25d114eba5e1e4`  
		Last Modified: Wed, 10 May 2017 19:24:59 GMT  
		Size: 8.6 MB (8647804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9689e506c56b9fa0eb81e2d138d03f0236678f53948b556ff49510d8e19ef113`  
		Last Modified: Wed, 10 May 2017 19:25:51 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fca91a444509006df0f3e6b47482fbc9570e30f3d418fe1bbef8fe233b63dbb`  
		Last Modified: Wed, 10 May 2017 19:25:57 GMT  
		Size: 61.3 MB (61309836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f10e4a1698eb5e1a3ab88fdfe57a5c5da9212a892b36e37b33a0d5024f60849`  
		Last Modified: Wed, 10 May 2017 19:25:51 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8c18518228923b915b945573f76cbe3220472baa10135aff1570f001254868`  
		Last Modified: Wed, 10 May 2017 19:25:52 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3-enterprise`

```console
$ docker pull neo4j@sha256:34fbd13e50a4a6cc7008671764342513f3c518ba94a262c831a9f32e68a2a2ed
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196733704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:540e6364ce69c0528495dc49ac1b3954be3588d32b3ee5f01db9d8b7d965527b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:39:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 18:40:14 GMT
ENV NEO4J_SHA256=dfbd3c253e7d338bff00b615973f0186f100970a2d22f24b5eaa3575ceb8f643
# Wed, 10 May 2017 18:40:16 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.10-unix.tar.gz
# Wed, 10 May 2017 18:40:16 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.10-unix.tar.gz
# Wed, 10 May 2017 18:40:18 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:40:38 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.10-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:40:39 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:40:42 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.10-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:40:43 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:40:45 GMT
COPY file:77655caa958663cf4b6b261cb705cbea286374905edc612985f978867904bd01 in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:40:46 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 10 May 2017 18:40:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:40:49 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2a29d5eece367183975013d8bfb75f672d8acded3cd762cc25d114eba5e1e4`  
		Last Modified: Wed, 10 May 2017 19:24:59 GMT  
		Size: 8.6 MB (8647804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9689e506c56b9fa0eb81e2d138d03f0236678f53948b556ff49510d8e19ef113`  
		Last Modified: Wed, 10 May 2017 19:25:51 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fca91a444509006df0f3e6b47482fbc9570e30f3d418fe1bbef8fe233b63dbb`  
		Last Modified: Wed, 10 May 2017 19:25:57 GMT  
		Size: 61.3 MB (61309836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f10e4a1698eb5e1a3ab88fdfe57a5c5da9212a892b36e37b33a0d5024f60849`  
		Last Modified: Wed, 10 May 2017 19:25:51 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8c18518228923b915b945573f76cbe3220472baa10135aff1570f001254868`  
		Last Modified: Wed, 10 May 2017 19:25:52 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.9`

```console
$ docker pull neo4j@sha256:576de7319f68eef9438e7d2099faa13b0521fcc115030e092097c75950761bd2
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.9` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.2 MB (194174691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9950402f1702287cb8dd52a1bec4fffd5a40a10a29f79ca3e4ac0fbc74f73915`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:39:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 18:41:16 GMT
ENV NEO4J_SHA256=044ed403776403f5c6a9b093d592b9b12d8964f605fb9e94f43408dca59202c3
# Wed, 10 May 2017 18:41:17 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.9-unix.tar.gz
# Wed, 10 May 2017 18:41:18 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.9-unix.tar.gz
# Wed, 10 May 2017 18:41:19 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:41:34 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.9-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:41:35 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:41:37 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.9-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:41:39 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:41:40 GMT
COPY file:77655caa958663cf4b6b261cb705cbea286374905edc612985f978867904bd01 in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:41:41 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 10 May 2017 18:41:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:41:44 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2a29d5eece367183975013d8bfb75f672d8acded3cd762cc25d114eba5e1e4`  
		Last Modified: Wed, 10 May 2017 19:24:59 GMT  
		Size: 8.6 MB (8647804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f20455a90a2b992495f0af37a7af6901969ca876420b9eca0117b31ecee87189`  
		Last Modified: Wed, 10 May 2017 19:26:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d27eae6b26a1a0fd251f8c664679ab47b36b00a35ae77c3dea7aaa074d15bb`  
		Last Modified: Wed, 10 May 2017 19:26:51 GMT  
		Size: 58.8 MB (58750825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:485f41ef3c47448703c37f9f982300d27343cd7ef62c76ab48da47f9dab93176`  
		Last Modified: Wed, 10 May 2017 19:26:45 GMT  
		Size: 712.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:158fea39e83281d4ce343098cbcb727f2ee6b84221e8f3d0fb7a4474d6ac624b`  
		Last Modified: Wed, 10 May 2017 19:26:46 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.9-enterprise`

```console
$ docker pull neo4j@sha256:f10bb71a013e4e5fedad625aad857f4971900d75ea3f3f4a4e7f680bec688bae
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.9-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196721654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1b15f59d56f91e35834c6cfc47145327b8e761c3947a1e7c34f69acbb5ee694`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:39:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 18:42:12 GMT
ENV NEO4J_SHA256=d99aa0d2e1ec8386721981441aa98d3d551d4c40dc1b51f0705519e5cd9ab14b
# Wed, 10 May 2017 18:42:13 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.9-unix.tar.gz
# Wed, 10 May 2017 18:42:14 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.9-unix.tar.gz
# Wed, 10 May 2017 18:42:16 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:42:32 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.9-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:42:33 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:42:34 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.9-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:42:35 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:42:37 GMT
COPY file:77655caa958663cf4b6b261cb705cbea286374905edc612985f978867904bd01 in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:42:38 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 10 May 2017 18:42:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:42:40 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2a29d5eece367183975013d8bfb75f672d8acded3cd762cc25d114eba5e1e4`  
		Last Modified: Wed, 10 May 2017 19:24:59 GMT  
		Size: 8.6 MB (8647804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30809f4fea71689945413601e0a35fc547fc4cedd8d18158a88f780e1e4ef979`  
		Last Modified: Wed, 10 May 2017 19:27:18 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5ef102899e82158e3d810ae428013f29f2b42fa31d3d70164369e0daeed5fc`  
		Last Modified: Wed, 10 May 2017 19:27:25 GMT  
		Size: 61.3 MB (61297788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:675b44e58a6d817215783bc16b4645eb1043ee776d14019331fb66feac936c91`  
		Last Modified: Wed, 10 May 2017 19:27:17 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdeb1ac87f28d8238d002ebfdb924de61e6691510d24f26c4e0281091027f831`  
		Last Modified: Wed, 10 May 2017 19:27:17 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.8`

```console
$ docker pull neo4j@sha256:be7c8d458d9827f9ffb965ff667d0a059de9d901a11e5e04d592b4e477dcef54
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.8` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.2 MB (194169262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e9087aa92832ce78652d1559e9afefad7aaf23228fb27e3a820f9dc6a170d2c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:39:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 18:43:02 GMT
ENV NEO4J_SHA256=a4e7f99b1820a750973e678af913fbdb3069188ef12ec69dd67aa49bd072a85f
# Wed, 10 May 2017 18:43:03 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.8-unix.tar.gz
# Wed, 10 May 2017 18:43:04 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.8-unix.tar.gz
# Wed, 10 May 2017 18:43:05 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:43:19 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.8-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:43:38 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:43:41 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.8-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:43:42 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:43:44 GMT
COPY file:77655caa958663cf4b6b261cb705cbea286374905edc612985f978867904bd01 in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:43:45 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 10 May 2017 18:43:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:43:46 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2a29d5eece367183975013d8bfb75f672d8acded3cd762cc25d114eba5e1e4`  
		Last Modified: Wed, 10 May 2017 19:24:59 GMT  
		Size: 8.6 MB (8647804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:426df98cae2969e03d1f4f76d1faa9da868532dbb9bb1eee4e2929fe1541cc7f`  
		Last Modified: Wed, 10 May 2017 19:27:54 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0910f6373b77dc1ea5ff243666ed1997313ce0ddb99116f8922e82bcdebf6805`  
		Last Modified: Wed, 10 May 2017 19:28:00 GMT  
		Size: 58.7 MB (58745394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeaf118c8ba1d92ecbc9767207478f8d7762267a9fa6078c7d7157367c25d62a`  
		Last Modified: Wed, 10 May 2017 19:27:54 GMT  
		Size: 714.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac686c4006bed956bcdeee1b1c76a494f13286d73b5c95f92ec410dc5e9e68bb`  
		Last Modified: Wed, 10 May 2017 19:27:54 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.8-enterprise`

```console
$ docker pull neo4j@sha256:40cb13bc8b8fb601c45ca9cbb43e5dca3fc16cdfa25afed7e54cb60795426fd9
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.8-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196715529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79559155f6cda49da75c155b0a91a2c49098246d421ab36d5b92d079e6436f08`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:39:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 18:44:07 GMT
ENV NEO4J_SHA256=2229b014399217b735d9844e4d02e62d5dbfe15c67dc07adc780fc523e6d010e
# Wed, 10 May 2017 18:44:08 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.8-unix.tar.gz
# Wed, 10 May 2017 18:44:09 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.8-unix.tar.gz
# Wed, 10 May 2017 18:44:10 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:44:25 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.8-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:44:26 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:44:27 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.8-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:44:29 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:44:30 GMT
COPY file:77655caa958663cf4b6b261cb705cbea286374905edc612985f978867904bd01 in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:44:32 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 10 May 2017 18:44:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:44:34 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2a29d5eece367183975013d8bfb75f672d8acded3cd762cc25d114eba5e1e4`  
		Last Modified: Wed, 10 May 2017 19:24:59 GMT  
		Size: 8.6 MB (8647804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af97e3c7f091b450ae06fcaac021cda469dda8cf1686c40af8cc8cf3c17ebc2`  
		Last Modified: Wed, 10 May 2017 19:28:26 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea5a884a400a480593e9f6f57bfcd9e29c2ca738e5825f2b962255c38f63810`  
		Last Modified: Wed, 10 May 2017 19:28:32 GMT  
		Size: 61.3 MB (61291663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295b59ec7407e0091514cff803f357a5f17a92e86e7935e844122541942c419a`  
		Last Modified: Wed, 10 May 2017 19:28:26 GMT  
		Size: 712.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242fcad3243314f4b190b8f0cca6b0c2a9874a23bab85acb9275b11f6c569781`  
		Last Modified: Wed, 10 May 2017 19:28:26 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.7`

```console
$ docker pull neo4j@sha256:d4a2e3015d554fd64f317d0676d383154ad9a123e005a5932b638bfb30c2de0d
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.2 MB (194169217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f561ab76d292741a88b738655f6c3afc72a61a408428c439b7b2d3e6561bca7c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:39:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 18:45:00 GMT
ENV NEO4J_SHA256=660f69e2dce24b69c6abe25fd33b549c8e232b965bef4ca94acb9f63cc15e46e
# Wed, 10 May 2017 18:45:01 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.7-unix.tar.gz
# Wed, 10 May 2017 18:45:02 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.7-unix.tar.gz
# Wed, 10 May 2017 18:45:04 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:45:19 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.7-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:45:20 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:45:23 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.7-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:45:24 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:45:26 GMT
COPY file:cb4000bfe72fb1762262e9e56a951af2b641306dea07b6f13b6623ef1f84fc92 in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:45:27 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 10 May 2017 18:45:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:45:30 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2a29d5eece367183975013d8bfb75f672d8acded3cd762cc25d114eba5e1e4`  
		Last Modified: Wed, 10 May 2017 19:24:59 GMT  
		Size: 8.6 MB (8647804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5c09ca3f307349088327554aff60054c2bc0a89ba7a5eb8b4c3ef97c6452e9`  
		Last Modified: Wed, 10 May 2017 19:28:59 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5427cf94ea4d0005e430ffb28fb39dcfe987f3cc041c51dacc263c9b1d8e981b`  
		Last Modified: Wed, 10 May 2017 19:29:04 GMT  
		Size: 58.7 MB (58745365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dd69c6cfd637b72a4de61a8606d3782e9a5b284626882cd961d52b537d57e1`  
		Last Modified: Wed, 10 May 2017 19:28:58 GMT  
		Size: 714.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b575be476da0aa74dad08f87d54cba04bcf6ee774ab7d5ba3ab8d3568d43f1`  
		Last Modified: Wed, 10 May 2017 19:28:58 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.7-enterprise`

```console
$ docker pull neo4j@sha256:d8d85bcf1d38121004c7adfa921d018c869ad7927a5cc9d9bf8aa503958da3f3
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.7-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196714527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51a44be7d0fa0072dead9c60e5066aa000c4f2d98681c61632df2e7ca282daec`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:39:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 18:45:57 GMT
ENV NEO4J_SHA256=64b2607f173db5e11671eb39087d06bca6d959e6a77f33a5c0ec3a4efd2b9d2b
# Wed, 10 May 2017 18:45:58 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.7-unix.tar.gz
# Wed, 10 May 2017 18:45:59 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.7-unix.tar.gz
# Wed, 10 May 2017 18:46:00 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:46:20 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.7-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:46:21 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:46:23 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.7-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:46:24 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:46:26 GMT
COPY file:cb4000bfe72fb1762262e9e56a951af2b641306dea07b6f13b6623ef1f84fc92 in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:46:27 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 10 May 2017 18:46:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:46:30 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2a29d5eece367183975013d8bfb75f672d8acded3cd762cc25d114eba5e1e4`  
		Last Modified: Wed, 10 May 2017 19:24:59 GMT  
		Size: 8.6 MB (8647804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6b42928f63bf931dcc94454a09eeec324eed4741be584fd5de1c208320a693`  
		Last Modified: Wed, 10 May 2017 19:29:30 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a46625cf70142834056c31f6a79b27f38c536ccfea71c73c88f7e17fdc53e2d`  
		Last Modified: Wed, 10 May 2017 19:29:36 GMT  
		Size: 61.3 MB (61290680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5254677df87f356a8534abf0f54a80f0e1d9f86ba1382716ee32d00317e3a1`  
		Last Modified: Wed, 10 May 2017 19:29:31 GMT  
		Size: 710.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83a04e6081ae6ccea11b866794a720c7103cd5dbfe61478aabd6ceff375b443`  
		Last Modified: Wed, 10 May 2017 19:29:31 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.6`

```console
$ docker pull neo4j@sha256:50218ab59242be99f62da4346b9fb014589b22fd379ac59a0dce593a9dcbe6f9
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.6` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.2 MB (194166849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:695f3c13b5e8d365d9855b1b328c6f0951f87f435b25fd9bab15e6e5044011d9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:39:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 18:46:57 GMT
ENV NEO4J_SHA256=738263c6785095f56b9051904ff2d1b30a13f680a748f483a450da63b04a5667
# Wed, 10 May 2017 18:46:58 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.6-unix.tar.gz
# Wed, 10 May 2017 18:46:59 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.6-unix.tar.gz
# Wed, 10 May 2017 18:47:00 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:47:36 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.6-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:47:37 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:47:39 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.6-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:47:41 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:47:42 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:47:44 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 10 May 2017 18:47:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:47:46 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2a29d5eece367183975013d8bfb75f672d8acded3cd762cc25d114eba5e1e4`  
		Last Modified: Wed, 10 May 2017 19:24:59 GMT  
		Size: 8.6 MB (8647804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c8d45a3ae52137070d44ddd9c5a1d8d49c206d15ded8f62ccd97223023f997`  
		Last Modified: Wed, 10 May 2017 19:30:06 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e10e6bab3cc978b74a594e89af27a147a12a355ed0088af3345cbbc984de480a`  
		Last Modified: Wed, 10 May 2017 19:30:12 GMT  
		Size: 58.7 MB (58743042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb6b6fce922ed650b6e8dc56c8f7b93da35d957a56a3ad73a1db71e845ca9c5`  
		Last Modified: Wed, 10 May 2017 19:30:06 GMT  
		Size: 711.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13f1f2bd955c442aad088510a48ca8e8a09953f37733296c928ee11f131b927f`  
		Last Modified: Wed, 10 May 2017 19:30:08 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.6-enterprise`

```console
$ docker pull neo4j@sha256:390d6fa19533ffc3889cf13cee3679030637fe7e7867a3d4570daad554f399a4
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.6-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196709343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fa2c0104eb56bfab811a319084fc56cfb5baf60e34ee87ab7ee5b937dfcdd49`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:39:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 18:48:10 GMT
ENV NEO4J_SHA256=07591aa24b3925f2cfea616ce9a28d954ebea6c205e77dda82b322238d1dbc3f
# Wed, 10 May 2017 18:48:10 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.6-unix.tar.gz
# Wed, 10 May 2017 18:48:11 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.6-unix.tar.gz
# Wed, 10 May 2017 18:48:12 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:48:26 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.6-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:48:27 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:48:30 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.6-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:48:49 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:48:51 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:48:52 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 10 May 2017 18:48:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:48:55 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2a29d5eece367183975013d8bfb75f672d8acded3cd762cc25d114eba5e1e4`  
		Last Modified: Wed, 10 May 2017 19:24:59 GMT  
		Size: 8.6 MB (8647804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09edcb1e8db349e300932c9ae67db1a2dc400675673defb132f40d05960e0ff7`  
		Last Modified: Wed, 10 May 2017 19:30:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d4402241b1b41fce8a1a088bf846d12d3cceba1c02e60b8113936f27872ab8`  
		Last Modified: Wed, 10 May 2017 19:30:45 GMT  
		Size: 61.3 MB (61285537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c57245aa2455519647169340b1d63dab3c6efe0bbaa7e61d5a284e84c551022`  
		Last Modified: Wed, 10 May 2017 19:30:39 GMT  
		Size: 710.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3d9f184c433f9e96520597404959feee160ef0ba761c2ee4580b568758be2d`  
		Last Modified: Wed, 10 May 2017 19:30:40 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.5`

```console
$ docker pull neo4j@sha256:e9d47e04643023ac05b404760ce54906dcc17ae41c316082ee7ee7c175faad25
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.1 MB (194133069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3049bc046e344a15230cda4047b8a0a30220acfcb53e18944819f2113086ea30`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:39:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 18:49:15 GMT
ENV NEO4J_SHA256=969159bddc0526681795f039e4250d728c8b60c5e421450259caacfc488c18cf
# Wed, 10 May 2017 18:49:16 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.5-unix.tar.gz
# Wed, 10 May 2017 18:49:17 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.5-unix.tar.gz
# Wed, 10 May 2017 18:49:18 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:49:30 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.5-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:49:31 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:49:32 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.5-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:49:33 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:49:35 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:49:35 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 10 May 2017 18:49:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:49:37 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2a29d5eece367183975013d8bfb75f672d8acded3cd762cc25d114eba5e1e4`  
		Last Modified: Wed, 10 May 2017 19:24:59 GMT  
		Size: 8.6 MB (8647804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16fba2e623843b4b5729e57f604713cc800566855b7ecec14897e8a2c311acff`  
		Last Modified: Wed, 10 May 2017 19:31:14 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8ace1bec2d62203ea35f44bbd8331175a639fdab7fe5035d49610ce23b1a0d`  
		Last Modified: Wed, 10 May 2017 19:31:18 GMT  
		Size: 58.7 MB (58709260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb4759b4ae8b185a9d8c04880ca96b949484e27e4c1aeeb5b96a755501ef8c8`  
		Last Modified: Wed, 10 May 2017 19:31:12 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b711b4fabffed9a6ae2b755a42f14a754c1eec831f272ac1f8e6f50c1dd211cd`  
		Last Modified: Wed, 10 May 2017 19:31:12 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.5-enterprise`

```console
$ docker pull neo4j@sha256:54b94256d6f3940f63d162bdfe35eb71dde73fb53ffafeff79f1a3e3e04382d3
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.5-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196663567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:186d47998fda2246ef29e9a450b97a9800640073e46293bc7c49cd454a60ad5f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:39:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 18:50:05 GMT
ENV NEO4J_SHA256=e12b962b01f5e3d1ab72f52aa311cfb270557ebca13874efb049b15b0cbfa471
# Wed, 10 May 2017 18:50:06 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.5-unix.tar.gz
# Wed, 10 May 2017 18:50:07 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.5-unix.tar.gz
# Wed, 10 May 2017 18:50:09 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:50:23 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.5-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:50:25 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:50:27 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.5-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:50:28 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:50:30 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:50:31 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 10 May 2017 18:50:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:50:34 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2a29d5eece367183975013d8bfb75f672d8acded3cd762cc25d114eba5e1e4`  
		Last Modified: Wed, 10 May 2017 19:24:59 GMT  
		Size: 8.6 MB (8647804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f5c23d738d2f49f41a7e97281b0c4cb1a01dc39cb1531156f2f3949faab8d8`  
		Last Modified: Wed, 10 May 2017 19:31:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92cbbcf4f2251e789db37a1900aa7e1ee73b7329e60d5b4eb36cc57b2537619`  
		Last Modified: Wed, 10 May 2017 19:31:57 GMT  
		Size: 61.2 MB (61239755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f861f4f8604b45b4199a5ca70360534116a325879e5c774124fbfbff315e5b4d`  
		Last Modified: Wed, 10 May 2017 19:31:50 GMT  
		Size: 714.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c484eb6d2e93845958045b1335f7da2220454555ac06ca5cdbbf85f9076f1c`  
		Last Modified: Wed, 10 May 2017 19:31:50 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.4`

```console
$ docker pull neo4j@sha256:e25cdd889b3ad8a995b165f42dbebbfad899fd17a029585cfaf86d6c06deea6c
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.1 MB (194105260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c88f4a5ee7ad584497bac757ee5061b32d540622db70a1e26ee077043cc004a6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:39:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 18:51:01 GMT
ENV NEO4J_SHA256=4a4b12e9d97771d9c293ee7786ef08ff7ad0f14a5db0f7fc01e8675e476f644b
# Wed, 10 May 2017 18:51:02 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.4-unix.tar.gz
# Wed, 10 May 2017 18:51:03 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.4-unix.tar.gz
# Wed, 10 May 2017 18:51:05 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:51:22 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.4-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:51:23 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:51:25 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.4-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:51:26 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:51:28 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:51:29 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 10 May 2017 18:51:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:51:31 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2a29d5eece367183975013d8bfb75f672d8acded3cd762cc25d114eba5e1e4`  
		Last Modified: Wed, 10 May 2017 19:24:59 GMT  
		Size: 8.6 MB (8647804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bb0705156e411dcaa70b3ada9ebaa0f138351d49b68737df4b0d22daf82f41d`  
		Last Modified: Wed, 10 May 2017 19:32:28 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bb29af019fb0a414502f83245e4e0c268718825f77f17baf2ed13093c67978`  
		Last Modified: Wed, 10 May 2017 19:32:36 GMT  
		Size: 58.7 MB (58681449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70359ac443eaaab58f2185a73310cbfb170ba49d2e69e478df68e2bd0cb7c953`  
		Last Modified: Wed, 10 May 2017 19:32:27 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00f3be4319e4add0f09ea6c374b344a5d1ac7120181be29b2193d9c0162fbae4`  
		Last Modified: Wed, 10 May 2017 19:32:27 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.4-enterprise`

```console
$ docker pull neo4j@sha256:549824d308bc6491c05e4ede6617f9cbae4cbe76a07fce3006bba6919322eb44
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.4-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.6 MB (196635679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:958fd82d22a9c5e28e8ca47e00566036b949cbfdce7f5522e5f5f359634bb169`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:39:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 18:51:59 GMT
ENV NEO4J_SHA256=640095b153eff5e9f81120d73a110e7d69b2868fc922cd9f54318d203b26f3c1
# Wed, 10 May 2017 18:52:00 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.4-unix.tar.gz
# Wed, 10 May 2017 18:52:01 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.4-unix.tar.gz
# Wed, 10 May 2017 18:52:02 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:52:21 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.4-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:52:22 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:52:24 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.4-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:52:25 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:52:27 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:52:28 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 10 May 2017 18:52:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:52:30 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2a29d5eece367183975013d8bfb75f672d8acded3cd762cc25d114eba5e1e4`  
		Last Modified: Wed, 10 May 2017 19:24:59 GMT  
		Size: 8.6 MB (8647804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563ef3541c57852338959d98729ea76265f42ce02b866cb5de2b30ff1b6e7cdd`  
		Last Modified: Wed, 10 May 2017 19:33:05 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d7e2c09e850ad4662b5c9f374661b7deb3786fe4bf61f171d232e593e0c4ec`  
		Last Modified: Wed, 10 May 2017 19:33:10 GMT  
		Size: 61.2 MB (61211870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c169b21d54527e67ee01801f831bdd96883dd24c545df3abb4d61e1b73bb9db6`  
		Last Modified: Wed, 10 May 2017 19:33:08 GMT  
		Size: 712.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bccbf51634491db244268a3dcf14ccba7eeea67cbadeafa585728274f65b3ee`  
		Last Modified: Wed, 10 May 2017 19:33:05 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.3`

```console
$ docker pull neo4j@sha256:3eb2eaec281e97884edbf0041da3bf3d52b5df46310985f4c8197cccdcb4641b
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.3` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.6 MB (194647564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1d27caa38706140f1ca9813c3d6e050e5fcbb6635999c8cd8ba9504e6e577a8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:39:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 18:52:58 GMT
ENV NEO4J_SHA256=01559c55055516a42ee2dd100137b6b55d63f02959a3c6c6db7a152e045828d9
# Wed, 10 May 2017 18:52:59 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.3-unix.tar.gz
# Wed, 10 May 2017 18:53:00 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.3-unix.tar.gz
# Wed, 10 May 2017 18:53:01 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:53:14 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.3-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:53:15 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:53:17 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.3-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:53:19 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:53:20 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:53:21 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 10 May 2017 18:53:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:53:23 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2a29d5eece367183975013d8bfb75f672d8acded3cd762cc25d114eba5e1e4`  
		Last Modified: Wed, 10 May 2017 19:24:59 GMT  
		Size: 8.6 MB (8647804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43b69fc7e9ebd81c1c8d07a71f9b2f1bfbfd39d2d529c0e90a8ea2b96a7b5ba`  
		Last Modified: Wed, 10 May 2017 19:33:38 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e99e2d36bac8d675248da365f838f98e6b9024662e53608f7e521af6254393d`  
		Last Modified: Wed, 10 May 2017 19:33:44 GMT  
		Size: 59.2 MB (59223756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a282a93ff33b119bf6a15de4e43496f69820ff8f71b541a526692538f6eb2e2`  
		Last Modified: Wed, 10 May 2017 19:33:38 GMT  
		Size: 712.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4096443d0ac1b01292413bcfc1fbe43c4ecf0495dccf7f7f7c3fb475701d8fdf`  
		Last Modified: Wed, 10 May 2017 19:33:38 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.3-enterprise`

```console
$ docker pull neo4j@sha256:f80522873fcc147a4fc7bb789f9c2857a618196c80222c1e9f6d20a46be5a2b9
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.3-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.1 MB (197057601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60026fbcd5c2d20b83073fa6c42f661789699901b37feee84380ff9746912442`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:39:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 18:53:45 GMT
ENV NEO4J_SHA256=864b7ebef3a12844c809e75016aa951c60ac90fb0d075a595108824859ce7875
# Wed, 10 May 2017 18:53:46 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.3-unix.tar.gz
# Wed, 10 May 2017 18:53:47 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.3-unix.tar.gz
# Wed, 10 May 2017 18:53:48 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:54:00 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.3-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:54:15 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:54:18 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.3-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:54:19 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:54:20 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:54:21 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 10 May 2017 18:54:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:54:23 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2a29d5eece367183975013d8bfb75f672d8acded3cd762cc25d114eba5e1e4`  
		Last Modified: Wed, 10 May 2017 19:24:59 GMT  
		Size: 8.6 MB (8647804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc74533f86e418f6f2e10294cf83287e9344654ac52c67d931b4bd6fa3ffc780`  
		Last Modified: Wed, 10 May 2017 19:34:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3209bcfb4f6c99b7fb310274f9a92fe58251653411bfaf6cc7a497f07ded1c89`  
		Last Modified: Wed, 10 May 2017 19:34:37 GMT  
		Size: 61.6 MB (61633790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88fd1c518c431e2a2e114648b47f93360b3f32ff29e21554577abc30c983074`  
		Last Modified: Wed, 10 May 2017 19:34:28 GMT  
		Size: 715.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f8137f608c48840e2551bbd14cdb2e430f26292e291037be2e37e38990ceda5`  
		Last Modified: Wed, 10 May 2017 19:34:28 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.2`

```console
$ docker pull neo4j@sha256:2f02f02d4a55c9bf46e9db83a7b9c5d3493357b4a9f09ed65698cc797d7d9fc3
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.5 MB (194531255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:533389a5b43262a224a25a8211c607c9b41a5943dc8b79799a1a6d025e81f538`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:39:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 18:54:43 GMT
ENV NEO4J_SHA256=37e24d95c914c54d5cbbe99473d4beef89da78adb2db04eb87258a489225932a
# Wed, 10 May 2017 18:54:44 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.2-unix.tar.gz
# Wed, 10 May 2017 18:54:45 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.2-unix.tar.gz
# Wed, 10 May 2017 18:54:46 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:54:58 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.2-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:54:59 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:55:01 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.2-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:55:02 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:55:03 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:55:04 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 10 May 2017 18:55:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:55:06 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2a29d5eece367183975013d8bfb75f672d8acded3cd762cc25d114eba5e1e4`  
		Last Modified: Wed, 10 May 2017 19:24:59 GMT  
		Size: 8.6 MB (8647804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5131d16a1dbc4504246df6d54f823af3d1e03269d96747c9f63455fdbedbd1cd`  
		Last Modified: Wed, 10 May 2017 19:35:08 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee286201bd2a5603c2d3a62e3129415d00049d14ed7af432c7ddcd3f1e72453`  
		Last Modified: Wed, 10 May 2017 19:35:15 GMT  
		Size: 59.1 MB (59107449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a124b2b88a3d5f5b8007a8c433cc1c038a676108bd329f336623c0eb5d1064`  
		Last Modified: Wed, 10 May 2017 19:35:08 GMT  
		Size: 712.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb84ac8442f1524cdd9f893533e7a40d470b65fa2087c796cdc3439cbd5f4678`  
		Last Modified: Wed, 10 May 2017 19:35:08 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.2-enterprise`

```console
$ docker pull neo4j@sha256:525045fe1479498eb8fcac42971df4e9826cac2e4264c2fd4d322d1805355556
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.2-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.0 MB (196977341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b947663f3e53280320d482c97e3bffe6e1f8296b7c5bd0c9c0dbedccec170bf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:39:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 18:55:34 GMT
ENV NEO4J_SHA256=ea80cfca918dd70ea5d10a125f5c3a5be02e45dd497b67dfa2d22770a891acea
# Wed, 10 May 2017 18:55:35 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.2-unix.tar.gz
# Wed, 10 May 2017 18:55:36 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.2-unix.tar.gz
# Wed, 10 May 2017 18:55:37 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:55:54 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.2-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:55:55 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:55:57 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.2-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:55:58 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:56:00 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:56:01 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 10 May 2017 18:56:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:56:04 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2a29d5eece367183975013d8bfb75f672d8acded3cd762cc25d114eba5e1e4`  
		Last Modified: Wed, 10 May 2017 19:24:59 GMT  
		Size: 8.6 MB (8647804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378fb32c94c1fb8ab992579a6c2db0cab97ad7a47605f86980f999ea36907b89`  
		Last Modified: Wed, 10 May 2017 19:35:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ebf8165be0155d30febcab845b63f3642108667164c0bf5f473df27406c585`  
		Last Modified: Wed, 10 May 2017 19:35:49 GMT  
		Size: 61.6 MB (61553533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d2505fc7b83180829e440b415cba84ea3ef5cd2c02f4bec59ce80409aba79e`  
		Last Modified: Wed, 10 May 2017 19:35:43 GMT  
		Size: 712.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b491bfeb3a3efdb4cd6653701130a1ae2463fed816b9b2e9444ffbdedea8887f`  
		Last Modified: Wed, 10 May 2017 19:35:43 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.1`

```console
$ docker pull neo4j@sha256:a814553c2a218d18f8142f7acdc45f1e4d266bc0e575ab7b09add33499ec1e11
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.5 MB (194451052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b05b10706232eb199fc798d5c068957380bb31ce1598347a1d870a9ca12abcba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 13:58:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:00:33 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 10 May 2017 14:00:34 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:00:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:00:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:00:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 14:00:39 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Wed, 10 May 2017 14:00:40 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 10 May 2017 14:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 10 May 2017 14:01:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 10 May 2017 18:39:18 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 18:56:33 GMT
ENV NEO4J_SHA256=7b2f30d73af107eacd9a3a619475ef448a08eecb2cdb42ab1f8a38d091c70ecb
# Wed, 10 May 2017 18:56:34 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.1-unix.tar.gz
# Wed, 10 May 2017 18:56:35 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.1-unix.tar.gz
# Wed, 10 May 2017 18:56:36 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 10 May 2017 18:56:49 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.1-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Wed, 10 May 2017 18:56:50 GMT
WORKDIR /var/lib/neo4j
# Wed, 10 May 2017 18:56:52 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.1-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Wed, 10 May 2017 18:56:53 GMT
VOLUME [/data]
# Wed, 10 May 2017 18:56:55 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Wed, 10 May 2017 18:56:56 GMT
EXPOSE 7473/tcp 7474/tcp
# Wed, 10 May 2017 18:56:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 May 2017 18:56:58 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f131c9b3ecc46370de3d879531c0d395bf7a005541e2e5ff9d0b395831f636ab`  
		Last Modified: Wed, 10 May 2017 19:11:34 GMT  
		Size: 573.5 KB (573498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59cc3b26f35153c7d96b177d80011b54480e422381db8a0a096926b1410b1db`  
		Last Modified: Wed, 10 May 2017 19:11:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df868a05183f496ed77e27b9a6726ce7ed8a329c91c4a61b01fb45c3c55844`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83282147e192f521e70235d34201c283a68b1e0ff214c82a61204d788744f402`  
		Last Modified: Wed, 10 May 2017 19:11:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0405f12cbd052ae5a5e693d766ab5a7c5c718affc1405634c444301fae40c16f`  
		Last Modified: Wed, 10 May 2017 19:11:43 GMT  
		Size: 54.1 MB (54058692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba1eb08712ba75bea5d03bfeaa72edfbf9af3f6e7b58c2d0d3ec754276fafb3`  
		Last Modified: Wed, 10 May 2017 19:11:31 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2a29d5eece367183975013d8bfb75f672d8acded3cd762cc25d114eba5e1e4`  
		Last Modified: Wed, 10 May 2017 19:24:59 GMT  
		Size: 8.6 MB (8647804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d4cdf0d7cc385840d1b97042ee7ddd7725778fd2854861985557864e5011a3`  
		Last Modified: Wed, 10 May 2017 19:36:17 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c9b0971b501163407318fbb85d704c647dc834f745d0c050cf8e68edf430d4`  
		Last Modified: Wed, 10 May 2017 19:36:22 GMT  
		Size: 59.0 MB (59027245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2990252e4a69a2da801653434d99da6bebbc10e7e6420c43c624d3f75dafc707`  
		Last Modified: Wed, 10 May 2017 19:36:17 GMT  
		Size: 712.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39825c03b27809782ca65678b009699a578de9e4973de016fb1953c955d9361`  
		Last Modified: Wed, 10 May 2017 19:36:17 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.1-enterprise`

```console
$ docker pull neo4j@sha256:1af23bfe628e65f7001ca592397b6620735976a21506f27b7785c6b65ce2d54c
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.1-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196855688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dd7af4a647d2f0b19b1c15e31d253e4c7406da6676afa7413e92c932dff653d`
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
# Fri, 05 May 2017 22:29:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 05 May 2017 22:29:10 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 05 May 2017 22:29:11 GMT
ENV JAVA_VERSION=8u121
# Fri, 05 May 2017 22:29:11 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Fri, 05 May 2017 22:29:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 05 May 2017 22:29:34 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 May 2017 22:29:37 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 08 May 2017 23:10:12 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:12:16 GMT
ENV NEO4J_SHA256=93f0950b0c3a5a604f80183814b7cda2988a652e9278159c47d036daa96e3d29
# Mon, 08 May 2017 23:12:16 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.1-unix.tar.gz
# Mon, 08 May 2017 23:12:17 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.1-unix.tar.gz
# Mon, 08 May 2017 23:12:18 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Mon, 08 May 2017 23:12:30 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.1-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Mon, 08 May 2017 23:12:31 GMT
WORKDIR /var/lib/neo4j
# Mon, 08 May 2017 23:12:33 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.1-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Mon, 08 May 2017 23:12:34 GMT
VOLUME [/data]
# Mon, 08 May 2017 23:12:35 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Mon, 08 May 2017 23:12:36 GMT
EXPOSE 7473/tcp 7474/tcp
# Mon, 08 May 2017 23:12:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 08 May 2017 23:12:37 GMT
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
	-	`sha256:b6b666d261d3b8c87670e9a57b9261a07977433af08d4d48d7fe37a5a7126350`  
		Last Modified: Fri, 05 May 2017 22:58:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98430ee944b3da76725b45f66548b40b10ad2b28dbf47a8b7a9a6a444020e8ab`  
		Last Modified: Fri, 05 May 2017 22:58:37 GMT  
		Size: 54.1 MB (54059101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0670b9fca61293fb13c831445d8604fa03674cdc0eea487af1db9df0cfadc859`  
		Last Modified: Fri, 05 May 2017 22:58:24 GMT  
		Size: 289.7 KB (289674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c486381938dd8ab51664081105a3067e47a61f05895e269582161e33589c97`  
		Last Modified: Mon, 08 May 2017 23:56:46 GMT  
		Size: 8.6 MB (8648148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5229115dd058c7abf6d1ca29439d8c228e427f4820f4a98f71d1732ee26a6f00`  
		Last Modified: Tue, 09 May 2017 00:02:17 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa806f54aa3856c580d8382fd79963b5fd698a74ecf3b5383c9dae1369ab6f6`  
		Last Modified: Tue, 09 May 2017 00:02:23 GMT  
		Size: 61.5 MB (61465832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ca4b1892749fea185d52556e32eed05fb2134e0754e2b5a50e532299ec33c0`  
		Last Modified: Tue, 09 May 2017 00:02:17 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f94fe22352ce4d71dcd0744a363a731f4651d0ae674afee0cfc4613d11b4bb8`  
		Last Modified: Tue, 09 May 2017 00:02:17 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.0`

```console
$ docker pull neo4j@sha256:b4913adb41eda1b1d5cc5d803c6d033dc5f28b485327d065531815d234543756
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.0 MB (194003740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88ae7e5fb6af8968f859137b3f80213046d22a457f1c2efaf9632b259f630a0c`
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
# Fri, 05 May 2017 22:29:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 05 May 2017 22:29:10 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 05 May 2017 22:29:11 GMT
ENV JAVA_VERSION=8u121
# Fri, 05 May 2017 22:29:11 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Fri, 05 May 2017 22:29:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 05 May 2017 22:29:34 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 May 2017 22:29:37 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 08 May 2017 23:10:12 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:10:13 GMT
ENV NEO4J_SHA256=88fee93884700dae6a1f870dd84b3da9d094db33d57db1c88904954ef2cb4830
# Mon, 08 May 2017 23:10:14 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.0-unix.tar.gz
# Mon, 08 May 2017 23:10:15 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.0-unix.tar.gz
# Mon, 08 May 2017 23:10:16 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Mon, 08 May 2017 23:10:29 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Mon, 08 May 2017 23:10:30 GMT
WORKDIR /var/lib/neo4j
# Mon, 08 May 2017 23:10:31 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.0-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Mon, 08 May 2017 23:10:32 GMT
VOLUME [/data]
# Mon, 08 May 2017 23:10:33 GMT
COPY file:cb4000bfe72fb1762262e9e56a951af2b641306dea07b6f13b6623ef1f84fc92 in /docker-entrypoint.sh 
# Mon, 08 May 2017 23:10:34 GMT
EXPOSE 7473/tcp 7474/tcp
# Mon, 08 May 2017 23:10:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 08 May 2017 23:10:36 GMT
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
	-	`sha256:b6b666d261d3b8c87670e9a57b9261a07977433af08d4d48d7fe37a5a7126350`  
		Last Modified: Fri, 05 May 2017 22:58:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98430ee944b3da76725b45f66548b40b10ad2b28dbf47a8b7a9a6a444020e8ab`  
		Last Modified: Fri, 05 May 2017 22:58:37 GMT  
		Size: 54.1 MB (54059101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0670b9fca61293fb13c831445d8604fa03674cdc0eea487af1db9df0cfadc859`  
		Last Modified: Fri, 05 May 2017 22:58:24 GMT  
		Size: 289.7 KB (289674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c486381938dd8ab51664081105a3067e47a61f05895e269582161e33589c97`  
		Last Modified: Mon, 08 May 2017 23:56:46 GMT  
		Size: 8.6 MB (8648148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3f758e4a1dc310205e337876a65e7739b105b7d2f579fba0a21bb8b7d0d745b`  
		Last Modified: Mon, 08 May 2017 23:56:36 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fa6c4a0d914606cf241484d2cdac0d77786efa7fd02351e1c8a4b0e04c3cd91`  
		Last Modified: Mon, 08 May 2017 23:57:32 GMT  
		Size: 58.6 MB (58613843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3444413fd022c81c583845f4ddeb9ad2a81b67df2779736ab87d69f27f2640e7`  
		Last Modified: Mon, 08 May 2017 23:56:36 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b2e1b56bf52989d258bd89e010d5bebee09e22a81897ff882e5a3927960cfd0`  
		Last Modified: Mon, 08 May 2017 23:56:37 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.0-enterprise`

```console
$ docker pull neo4j@sha256:a4ab6e36847bb06c1398ff22a76f436d3c6b919fe97a7e5add94ba17f3097772
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.0-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.5 MB (196460393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce8b53606a98aaa89f59a093d7c5e778830e6b4391fa8f5755c9a04a5e484e15`
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
# Fri, 05 May 2017 22:29:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 05 May 2017 22:29:10 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 05 May 2017 22:29:11 GMT
ENV JAVA_VERSION=8u121
# Fri, 05 May 2017 22:29:11 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Fri, 05 May 2017 22:29:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 05 May 2017 22:29:34 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 May 2017 22:29:37 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 08 May 2017 23:10:12 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:10:55 GMT
ENV NEO4J_SHA256=0d3f370f8141d8bc37065f843af190c405cba098d1bb82065ffc0cb5b99950b7
# Mon, 08 May 2017 23:10:55 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.0-unix.tar.gz
# Mon, 08 May 2017 23:10:56 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.0-unix.tar.gz
# Mon, 08 May 2017 23:10:57 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Mon, 08 May 2017 23:11:10 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Mon, 08 May 2017 23:11:10 GMT
WORKDIR /var/lib/neo4j
# Mon, 08 May 2017 23:11:12 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.0-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Mon, 08 May 2017 23:11:13 GMT
VOLUME [/data]
# Mon, 08 May 2017 23:11:14 GMT
COPY file:cb4000bfe72fb1762262e9e56a951af2b641306dea07b6f13b6623ef1f84fc92 in /docker-entrypoint.sh 
# Mon, 08 May 2017 23:11:15 GMT
EXPOSE 7473/tcp 7474/tcp
# Mon, 08 May 2017 23:11:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 08 May 2017 23:11:17 GMT
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
	-	`sha256:b6b666d261d3b8c87670e9a57b9261a07977433af08d4d48d7fe37a5a7126350`  
		Last Modified: Fri, 05 May 2017 22:58:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98430ee944b3da76725b45f66548b40b10ad2b28dbf47a8b7a9a6a444020e8ab`  
		Last Modified: Fri, 05 May 2017 22:58:37 GMT  
		Size: 54.1 MB (54059101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0670b9fca61293fb13c831445d8604fa03674cdc0eea487af1db9df0cfadc859`  
		Last Modified: Fri, 05 May 2017 22:58:24 GMT  
		Size: 289.7 KB (289674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c486381938dd8ab51664081105a3067e47a61f05895e269582161e33589c97`  
		Last Modified: Mon, 08 May 2017 23:56:46 GMT  
		Size: 8.6 MB (8648148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e520d53d1c3816f89e069f683d1a346cd4c69a966abbce0f36a1cd3616293642`  
		Last Modified: Mon, 08 May 2017 23:58:00 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8650cef1c60e944d14faecedf8855016deadb9197ebb0d971d8dd263811fabf`  
		Last Modified: Mon, 08 May 2017 23:59:03 GMT  
		Size: 61.1 MB (61070497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dbbf19bef567b8f2451fc8417032f1f891f90eb894f8eda54414619b641cd3`  
		Last Modified: Mon, 08 May 2017 23:58:00 GMT  
		Size: 712.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4c0e475251bca243e5cbaf2d87c9f1bc564854ebc0755cafd7700b59ba87a3`  
		Last Modified: Mon, 08 May 2017 23:58:00 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
