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
$ docker pull neo4j@sha256:7811705b7e01d8bc962a269d7fb0c377f86ce4181781f2288e6282942630dfa3
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.2.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.8 MB (135772238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316e09f95e877dffbde939ae848529d79f7cce1e641724005259982e65c53e17`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:19:09 GMT
RUN apk add --no-cache --quiet     bash     curl
# Thu, 11 May 2017 05:27:13 GMT
ENV NEO4J_SHA256=77c0c142343ea834852d237828f1ddd8cb2d4b7be9131a00b4ec4e3c48d6f6d0 NEO4J_TARBALL=neo4j-community-3.2.0-unix.tar.gz
# Thu, 11 May 2017 05:27:14 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.2.0-unix.tar.gz
# Thu, 11 May 2017 05:27:15 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Thu, 11 May 2017 05:27:30 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.2.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && ln -s /data /var/lib/neo4j/data     && apk del curl
# Thu, 11 May 2017 05:27:31 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 May 2017 05:27:32 GMT
VOLUME [/data]
# Thu, 11 May 2017 05:27:34 GMT
COPY file:fba67e67223207747005113b487869d57aad62ea3f78e719056b57b78b157bfc in /docker-entrypoint.sh 
# Thu, 11 May 2017 05:27:35 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Thu, 11 May 2017 05:27:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 05:27:37 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc0a49d967e2311e352dcb1fe605f65825913a5c28a438c3941582ef9d4ac90`  
		Last Modified: Sat, 13 May 2017 17:38:41 GMT  
		Size: 1.5 MB (1495337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296cd676f3bf0dfb9e4a36b50675e72645cc7c0bd3f405a90aef4e678ab94bf`  
		Last Modified: Sat, 13 May 2017 17:45:15 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde9cbb079436ea7851c3d90b2eb3ba9cdf9952a2a721622479f301db6b9e68c`  
		Last Modified: Sat, 13 May 2017 17:45:22 GMT  
		Size: 78.1 MB (78065887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b033938a451cba50171bc31dc309280769beecaaf9ad4612247fa03365b5c993`  
		Last Modified: Sat, 13 May 2017 17:45:15 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.2`

```console
$ docker pull neo4j@sha256:7811705b7e01d8bc962a269d7fb0c377f86ce4181781f2288e6282942630dfa3
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.8 MB (135772238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316e09f95e877dffbde939ae848529d79f7cce1e641724005259982e65c53e17`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:19:09 GMT
RUN apk add --no-cache --quiet     bash     curl
# Thu, 11 May 2017 05:27:13 GMT
ENV NEO4J_SHA256=77c0c142343ea834852d237828f1ddd8cb2d4b7be9131a00b4ec4e3c48d6f6d0 NEO4J_TARBALL=neo4j-community-3.2.0-unix.tar.gz
# Thu, 11 May 2017 05:27:14 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.2.0-unix.tar.gz
# Thu, 11 May 2017 05:27:15 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Thu, 11 May 2017 05:27:30 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.2.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && ln -s /data /var/lib/neo4j/data     && apk del curl
# Thu, 11 May 2017 05:27:31 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 May 2017 05:27:32 GMT
VOLUME [/data]
# Thu, 11 May 2017 05:27:34 GMT
COPY file:fba67e67223207747005113b487869d57aad62ea3f78e719056b57b78b157bfc in /docker-entrypoint.sh 
# Thu, 11 May 2017 05:27:35 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Thu, 11 May 2017 05:27:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 05:27:37 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc0a49d967e2311e352dcb1fe605f65825913a5c28a438c3941582ef9d4ac90`  
		Last Modified: Sat, 13 May 2017 17:38:41 GMT  
		Size: 1.5 MB (1495337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296cd676f3bf0dfb9e4a36b50675e72645cc7c0bd3f405a90aef4e678ab94bf`  
		Last Modified: Sat, 13 May 2017 17:45:15 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde9cbb079436ea7851c3d90b2eb3ba9cdf9952a2a721622479f301db6b9e68c`  
		Last Modified: Sat, 13 May 2017 17:45:22 GMT  
		Size: 78.1 MB (78065887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b033938a451cba50171bc31dc309280769beecaaf9ad4612247fa03365b5c993`  
		Last Modified: Sat, 13 May 2017 17:45:15 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:latest`

```console
$ docker pull neo4j@sha256:7811705b7e01d8bc962a269d7fb0c377f86ce4181781f2288e6282942630dfa3
```

-	Platforms:
	-	linux; amd64

### `neo4j:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.8 MB (135772238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316e09f95e877dffbde939ae848529d79f7cce1e641724005259982e65c53e17`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:19:09 GMT
RUN apk add --no-cache --quiet     bash     curl
# Thu, 11 May 2017 05:27:13 GMT
ENV NEO4J_SHA256=77c0c142343ea834852d237828f1ddd8cb2d4b7be9131a00b4ec4e3c48d6f6d0 NEO4J_TARBALL=neo4j-community-3.2.0-unix.tar.gz
# Thu, 11 May 2017 05:27:14 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.2.0-unix.tar.gz
# Thu, 11 May 2017 05:27:15 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Thu, 11 May 2017 05:27:30 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.2.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && ln -s /data /var/lib/neo4j/data     && apk del curl
# Thu, 11 May 2017 05:27:31 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 May 2017 05:27:32 GMT
VOLUME [/data]
# Thu, 11 May 2017 05:27:34 GMT
COPY file:fba67e67223207747005113b487869d57aad62ea3f78e719056b57b78b157bfc in /docker-entrypoint.sh 
# Thu, 11 May 2017 05:27:35 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Thu, 11 May 2017 05:27:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 05:27:37 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc0a49d967e2311e352dcb1fe605f65825913a5c28a438c3941582ef9d4ac90`  
		Last Modified: Sat, 13 May 2017 17:38:41 GMT  
		Size: 1.5 MB (1495337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296cd676f3bf0dfb9e4a36b50675e72645cc7c0bd3f405a90aef4e678ab94bf`  
		Last Modified: Sat, 13 May 2017 17:45:15 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde9cbb079436ea7851c3d90b2eb3ba9cdf9952a2a721622479f301db6b9e68c`  
		Last Modified: Sat, 13 May 2017 17:45:22 GMT  
		Size: 78.1 MB (78065887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b033938a451cba50171bc31dc309280769beecaaf9ad4612247fa03365b5c993`  
		Last Modified: Sat, 13 May 2017 17:45:15 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.2.0-enterprise`

```console
$ docker pull neo4j@sha256:f92e81768e2afeb92ad8c1d996e6e4448f8e7f0a40cc467cd3041e0fae1514fc
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.2.0-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.5 MB (147479258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb7115afc0e10bff08fcf238d42d6e0d2af9abe581582d3fb3cb244e0510ccad`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:19:09 GMT
RUN apk add --no-cache --quiet     bash     curl
# Thu, 11 May 2017 05:27:57 GMT
ENV NEO4J_SHA256=7452b1705c64d314b3e43a8fd04eebcd6dda668245792c5ee48bf4be072ac4cc NEO4J_TARBALL=neo4j-enterprise-3.2.0-unix.tar.gz
# Thu, 11 May 2017 05:27:58 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.2.0-unix.tar.gz
# Thu, 11 May 2017 05:27:59 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Thu, 11 May 2017 05:28:14 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.2.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && ln -s /data /var/lib/neo4j/data     && apk del curl
# Thu, 11 May 2017 05:28:15 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 May 2017 05:28:16 GMT
VOLUME [/data]
# Thu, 11 May 2017 05:28:17 GMT
COPY file:fba67e67223207747005113b487869d57aad62ea3f78e719056b57b78b157bfc in /docker-entrypoint.sh 
# Thu, 11 May 2017 05:28:19 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Thu, 11 May 2017 05:28:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 05:28:21 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc0a49d967e2311e352dcb1fe605f65825913a5c28a438c3941582ef9d4ac90`  
		Last Modified: Sat, 13 May 2017 17:38:41 GMT  
		Size: 1.5 MB (1495337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8580328d08ed610ec97ae7e811c745e64fc25743e790bbb34e21bbdeb865a774`  
		Last Modified: Sat, 13 May 2017 17:46:33 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac754f1a1e824b7df84d830ba44fa43d592bcf0507c92f27462b7bcd57f12a7`  
		Last Modified: Sat, 13 May 2017 17:46:40 GMT  
		Size: 89.8 MB (89772906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c5389bc0374a680c4893005bf18dc434362c3db4be375f702d3b42fadecfcc`  
		Last Modified: Sat, 13 May 2017 17:46:33 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.2-enterprise`

```console
$ docker pull neo4j@sha256:f92e81768e2afeb92ad8c1d996e6e4448f8e7f0a40cc467cd3041e0fae1514fc
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.2-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.5 MB (147479258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb7115afc0e10bff08fcf238d42d6e0d2af9abe581582d3fb3cb244e0510ccad`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:19:09 GMT
RUN apk add --no-cache --quiet     bash     curl
# Thu, 11 May 2017 05:27:57 GMT
ENV NEO4J_SHA256=7452b1705c64d314b3e43a8fd04eebcd6dda668245792c5ee48bf4be072ac4cc NEO4J_TARBALL=neo4j-enterprise-3.2.0-unix.tar.gz
# Thu, 11 May 2017 05:27:58 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.2.0-unix.tar.gz
# Thu, 11 May 2017 05:27:59 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Thu, 11 May 2017 05:28:14 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.2.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && ln -s /data /var/lib/neo4j/data     && apk del curl
# Thu, 11 May 2017 05:28:15 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 May 2017 05:28:16 GMT
VOLUME [/data]
# Thu, 11 May 2017 05:28:17 GMT
COPY file:fba67e67223207747005113b487869d57aad62ea3f78e719056b57b78b157bfc in /docker-entrypoint.sh 
# Thu, 11 May 2017 05:28:19 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Thu, 11 May 2017 05:28:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 05:28:21 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc0a49d967e2311e352dcb1fe605f65825913a5c28a438c3941582ef9d4ac90`  
		Last Modified: Sat, 13 May 2017 17:38:41 GMT  
		Size: 1.5 MB (1495337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8580328d08ed610ec97ae7e811c745e64fc25743e790bbb34e21bbdeb865a774`  
		Last Modified: Sat, 13 May 2017 17:46:33 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac754f1a1e824b7df84d830ba44fa43d592bcf0507c92f27462b7bcd57f12a7`  
		Last Modified: Sat, 13 May 2017 17:46:40 GMT  
		Size: 89.8 MB (89772906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c5389bc0374a680c4893005bf18dc434362c3db4be375f702d3b42fadecfcc`  
		Last Modified: Sat, 13 May 2017 17:46:33 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:enterprise`

```console
$ docker pull neo4j@sha256:f92e81768e2afeb92ad8c1d996e6e4448f8e7f0a40cc467cd3041e0fae1514fc
```

-	Platforms:
	-	linux; amd64

### `neo4j:enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.5 MB (147479258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb7115afc0e10bff08fcf238d42d6e0d2af9abe581582d3fb3cb244e0510ccad`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:19:09 GMT
RUN apk add --no-cache --quiet     bash     curl
# Thu, 11 May 2017 05:27:57 GMT
ENV NEO4J_SHA256=7452b1705c64d314b3e43a8fd04eebcd6dda668245792c5ee48bf4be072ac4cc NEO4J_TARBALL=neo4j-enterprise-3.2.0-unix.tar.gz
# Thu, 11 May 2017 05:27:58 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.2.0-unix.tar.gz
# Thu, 11 May 2017 05:27:59 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Thu, 11 May 2017 05:28:14 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.2.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && ln -s /data /var/lib/neo4j/data     && apk del curl
# Thu, 11 May 2017 05:28:15 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 May 2017 05:28:16 GMT
VOLUME [/data]
# Thu, 11 May 2017 05:28:17 GMT
COPY file:fba67e67223207747005113b487869d57aad62ea3f78e719056b57b78b157bfc in /docker-entrypoint.sh 
# Thu, 11 May 2017 05:28:19 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Thu, 11 May 2017 05:28:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 05:28:21 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc0a49d967e2311e352dcb1fe605f65825913a5c28a438c3941582ef9d4ac90`  
		Last Modified: Sat, 13 May 2017 17:38:41 GMT  
		Size: 1.5 MB (1495337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8580328d08ed610ec97ae7e811c745e64fc25743e790bbb34e21bbdeb865a774`  
		Last Modified: Sat, 13 May 2017 17:46:33 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac754f1a1e824b7df84d830ba44fa43d592bcf0507c92f27462b7bcd57f12a7`  
		Last Modified: Sat, 13 May 2017 17:46:40 GMT  
		Size: 89.8 MB (89772906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c5389bc0374a680c4893005bf18dc434362c3db4be375f702d3b42fadecfcc`  
		Last Modified: Sat, 13 May 2017 17:46:33 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.1.4`

```console
$ docker pull neo4j@sha256:40152a68fa7027b6873b010724401ae2d9d165c6597b437e73f2672dbb2cdd39
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.1.4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.4 MB (135397314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:585b446a97a26c8fc35b59b3d6bedc81b4c977a3c27cf61a12097dcd148bbf50`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:19:09 GMT
RUN apk add --no-cache --quiet     bash     curl
# Thu, 11 May 2017 05:19:10 GMT
ENV NEO4J_SHA256=ec127f8369ee49d67dc77bac986fdde3b471c6211193b2d9e8ceff62d708d85e NEO4J_TARBALL=neo4j-community-3.1.4-unix.tar.gz
# Thu, 11 May 2017 05:19:10 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.4-unix.tar.gz
# Thu, 11 May 2017 05:19:12 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Thu, 11 May 2017 05:19:25 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.4-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Thu, 11 May 2017 05:19:27 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 May 2017 05:19:28 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.4-unix.tar.gz
RUN mv data /data     && ln -s /data
# Thu, 11 May 2017 05:19:29 GMT
VOLUME [/data]
# Thu, 11 May 2017 05:19:31 GMT
COPY file:fba67e67223207747005113b487869d57aad62ea3f78e719056b57b78b157bfc in /docker-entrypoint.sh 
# Thu, 11 May 2017 05:19:32 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Thu, 11 May 2017 05:19:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 05:19:34 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc0a49d967e2311e352dcb1fe605f65825913a5c28a438c3941582ef9d4ac90`  
		Last Modified: Sat, 13 May 2017 17:38:41 GMT  
		Size: 1.5 MB (1495337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e50f8a62b0af1a2ac95baed4955052eaa06cd76760b1ba0c5eda68a04b12ee`  
		Last Modified: Sat, 13 May 2017 17:43:22 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c606d52837ac3e965f40ced8f40efa449ca9c859f618094977a6973ec4d6fd23`  
		Last Modified: Sat, 13 May 2017 17:43:29 GMT  
		Size: 77.7 MB (77690748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f384724f2f17fa1041093f43c985dcff05fb1019c06833062089fd31d228d189`  
		Last Modified: Sat, 13 May 2017 17:43:23 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df128aa6d7911b96d997d0e1d87691fcdf3a6ae7829c92e4dc1e9c9a749c22c`  
		Last Modified: Sat, 13 May 2017 17:43:24 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.1`

```console
$ docker pull neo4j@sha256:40152a68fa7027b6873b010724401ae2d9d165c6597b437e73f2672dbb2cdd39
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.4 MB (135397314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:585b446a97a26c8fc35b59b3d6bedc81b4c977a3c27cf61a12097dcd148bbf50`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:19:09 GMT
RUN apk add --no-cache --quiet     bash     curl
# Thu, 11 May 2017 05:19:10 GMT
ENV NEO4J_SHA256=ec127f8369ee49d67dc77bac986fdde3b471c6211193b2d9e8ceff62d708d85e NEO4J_TARBALL=neo4j-community-3.1.4-unix.tar.gz
# Thu, 11 May 2017 05:19:10 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.4-unix.tar.gz
# Thu, 11 May 2017 05:19:12 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Thu, 11 May 2017 05:19:25 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.4-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Thu, 11 May 2017 05:19:27 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 May 2017 05:19:28 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.4-unix.tar.gz
RUN mv data /data     && ln -s /data
# Thu, 11 May 2017 05:19:29 GMT
VOLUME [/data]
# Thu, 11 May 2017 05:19:31 GMT
COPY file:fba67e67223207747005113b487869d57aad62ea3f78e719056b57b78b157bfc in /docker-entrypoint.sh 
# Thu, 11 May 2017 05:19:32 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Thu, 11 May 2017 05:19:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 05:19:34 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc0a49d967e2311e352dcb1fe605f65825913a5c28a438c3941582ef9d4ac90`  
		Last Modified: Sat, 13 May 2017 17:38:41 GMT  
		Size: 1.5 MB (1495337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e50f8a62b0af1a2ac95baed4955052eaa06cd76760b1ba0c5eda68a04b12ee`  
		Last Modified: Sat, 13 May 2017 17:43:22 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c606d52837ac3e965f40ced8f40efa449ca9c859f618094977a6973ec4d6fd23`  
		Last Modified: Sat, 13 May 2017 17:43:29 GMT  
		Size: 77.7 MB (77690748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f384724f2f17fa1041093f43c985dcff05fb1019c06833062089fd31d228d189`  
		Last Modified: Sat, 13 May 2017 17:43:23 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df128aa6d7911b96d997d0e1d87691fcdf3a6ae7829c92e4dc1e9c9a749c22c`  
		Last Modified: Sat, 13 May 2017 17:43:24 GMT  
		Size: 1.7 KB (1737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.1.4-enterprise`

```console
$ docker pull neo4j@sha256:dda4bdf111d6efa4dc7ca00425e977252f3a266e6ef3479deb6540e7f651a385
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.1.4-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.9 MB (145921806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ab6e5e0b3815c1fffe89270116d6f2aeb94bd2c7928637557f78f259c79ccf5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:19:09 GMT
RUN apk add --no-cache --quiet     bash     curl
# Thu, 11 May 2017 05:19:54 GMT
ENV NEO4J_SHA256=2f583f7af4d1e5114a1fe241ada1faea379c9444270eb4d8cdd9c0f24c996489 NEO4J_TARBALL=neo4j-enterprise-3.1.4-unix.tar.gz
# Thu, 11 May 2017 05:19:55 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.4-unix.tar.gz
# Thu, 11 May 2017 05:19:57 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Thu, 11 May 2017 05:20:12 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.4-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Thu, 11 May 2017 05:20:13 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 May 2017 05:20:15 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.4-unix.tar.gz
RUN mv data /data     && ln -s /data
# Thu, 11 May 2017 05:20:16 GMT
VOLUME [/data]
# Thu, 11 May 2017 05:20:18 GMT
COPY file:fba67e67223207747005113b487869d57aad62ea3f78e719056b57b78b157bfc in /docker-entrypoint.sh 
# Thu, 11 May 2017 05:20:19 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Thu, 11 May 2017 05:20:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 05:20:21 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc0a49d967e2311e352dcb1fe605f65825913a5c28a438c3941582ef9d4ac90`  
		Last Modified: Sat, 13 May 2017 17:38:41 GMT  
		Size: 1.5 MB (1495337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a606b74f3de31da5e89747790b766d1fa314bc61b1c2ea1a4f75c02d5d51549d`  
		Last Modified: Sat, 13 May 2017 17:44:19 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d675c490c229d3303f593c2f533df04e892a8e03f716747f252c3d083aa484`  
		Last Modified: Sat, 13 May 2017 17:44:25 GMT  
		Size: 88.2 MB (88215241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9769269d36b203c5c330d2055bdb5e2e88f6f479bd305b9eb2d49b33c2f2b96a`  
		Last Modified: Sat, 13 May 2017 17:44:19 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecbc42dd93f297da24ac3de62e9d7cab7d5a1107cc51ede2b07d7183620d04a0`  
		Last Modified: Sat, 13 May 2017 17:44:19 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.1-enterprise`

```console
$ docker pull neo4j@sha256:dda4bdf111d6efa4dc7ca00425e977252f3a266e6ef3479deb6540e7f651a385
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.1-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.9 MB (145921806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ab6e5e0b3815c1fffe89270116d6f2aeb94bd2c7928637557f78f259c79ccf5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:19:09 GMT
RUN apk add --no-cache --quiet     bash     curl
# Thu, 11 May 2017 05:19:54 GMT
ENV NEO4J_SHA256=2f583f7af4d1e5114a1fe241ada1faea379c9444270eb4d8cdd9c0f24c996489 NEO4J_TARBALL=neo4j-enterprise-3.1.4-unix.tar.gz
# Thu, 11 May 2017 05:19:55 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.4-unix.tar.gz
# Thu, 11 May 2017 05:19:57 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Thu, 11 May 2017 05:20:12 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.4-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Thu, 11 May 2017 05:20:13 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 May 2017 05:20:15 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.4-unix.tar.gz
RUN mv data /data     && ln -s /data
# Thu, 11 May 2017 05:20:16 GMT
VOLUME [/data]
# Thu, 11 May 2017 05:20:18 GMT
COPY file:fba67e67223207747005113b487869d57aad62ea3f78e719056b57b78b157bfc in /docker-entrypoint.sh 
# Thu, 11 May 2017 05:20:19 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Thu, 11 May 2017 05:20:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 05:20:21 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc0a49d967e2311e352dcb1fe605f65825913a5c28a438c3941582ef9d4ac90`  
		Last Modified: Sat, 13 May 2017 17:38:41 GMT  
		Size: 1.5 MB (1495337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a606b74f3de31da5e89747790b766d1fa314bc61b1c2ea1a4f75c02d5d51549d`  
		Last Modified: Sat, 13 May 2017 17:44:19 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d675c490c229d3303f593c2f533df04e892a8e03f716747f252c3d083aa484`  
		Last Modified: Sat, 13 May 2017 17:44:25 GMT  
		Size: 88.2 MB (88215241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9769269d36b203c5c330d2055bdb5e2e88f6f479bd305b9eb2d49b33c2f2b96a`  
		Last Modified: Sat, 13 May 2017 17:44:19 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecbc42dd93f297da24ac3de62e9d7cab7d5a1107cc51ede2b07d7183620d04a0`  
		Last Modified: Sat, 13 May 2017 17:44:19 GMT  
		Size: 1.7 KB (1738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.1.3`

```console
$ docker pull neo4j@sha256:29a8ea37098d4a9a35497ef09f642b9b6cb0fe3850dfbc5da47641ab7f512bb8
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.1.3` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.3 MB (135305635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b043bbc1f2028f631e3ebb6551f2728e86db0317f5ba9aa25be1cb07c00f5c8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:19:09 GMT
RUN apk add --no-cache --quiet     bash     curl
# Thu, 11 May 2017 05:25:39 GMT
ENV NEO4J_SHA256=f0d79b4a98672dc527b708113644b8961ba824668c354e61dc4d2a16d8484880
# Thu, 11 May 2017 05:25:40 GMT
ENV NEO4J_TARBALL=neo4j-community-3.1.3-unix.tar.gz
# Thu, 11 May 2017 05:25:41 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.3-unix.tar.gz
# Thu, 11 May 2017 05:25:42 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Thu, 11 May 2017 05:25:56 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.3-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Thu, 11 May 2017 05:25:58 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 May 2017 05:26:00 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.3-unix.tar.gz
RUN mv data /data     && ln -s /data
# Thu, 11 May 2017 05:26:01 GMT
VOLUME [/data]
# Thu, 11 May 2017 05:26:03 GMT
COPY file:b3816abc443e12ac0a577d8d6b05fc265deff8e8a9af15343137e84d969c2d1c in /docker-entrypoint.sh 
# Thu, 11 May 2017 05:26:04 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Thu, 11 May 2017 05:26:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 05:26:06 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc0a49d967e2311e352dcb1fe605f65825913a5c28a438c3941582ef9d4ac90`  
		Last Modified: Sat, 13 May 2017 17:38:41 GMT  
		Size: 1.5 MB (1495337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d84e04b1d5b255cc45bf0106548f8274b70d2c3d07d575502bb0e57e8474181`  
		Last Modified: Sat, 13 May 2017 17:42:15 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4095933a6b95a4688dd0b6c70bb7216d3819c13a325656cb19e916dc547e03`  
		Last Modified: Sat, 13 May 2017 17:42:22 GMT  
		Size: 77.6 MB (77599529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f907df16fce2e7ba1291a69b74626580f38e070e89cce05022004c590fa701c3`  
		Last Modified: Sat, 13 May 2017 17:42:15 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa0d0143dd114af7fa3ffa4f8496814dc15aeef0db840483ce90be5d2d79a93`  
		Last Modified: Sat, 13 May 2017 17:42:15 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.1.3-enterprise`

```console
$ docker pull neo4j@sha256:6ab7eab5b23a78d48a00873f5bc37ddd73a5591d45fb82849aed9bd533729fb3
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.1.3-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.8 MB (145828948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a49f98fb85f0099a8d57084cc16190338adfb1cb825d97f22e9d3021f07ae276`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:19:09 GMT
RUN apk add --no-cache --quiet     bash     curl
# Thu, 11 May 2017 05:26:27 GMT
ENV NEO4J_SHA256=b784a61228bdc31cbc843009e4d36d3e2aee7662f8b40bd608b8759de26b77d5
# Thu, 11 May 2017 05:26:27 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.1.3-unix.tar.gz
# Thu, 11 May 2017 05:26:28 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.3-unix.tar.gz
# Thu, 11 May 2017 05:26:30 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Thu, 11 May 2017 05:26:44 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.3-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Thu, 11 May 2017 05:26:45 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 May 2017 05:26:47 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.3-unix.tar.gz
RUN mv data /data     && ln -s /data
# Thu, 11 May 2017 05:26:48 GMT
VOLUME [/data]
# Thu, 11 May 2017 05:26:50 GMT
COPY file:b3816abc443e12ac0a577d8d6b05fc265deff8e8a9af15343137e84d969c2d1c in /docker-entrypoint.sh 
# Thu, 11 May 2017 05:26:51 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Thu, 11 May 2017 05:26:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 05:26:53 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc0a49d967e2311e352dcb1fe605f65825913a5c28a438c3941582ef9d4ac90`  
		Last Modified: Sat, 13 May 2017 17:38:41 GMT  
		Size: 1.5 MB (1495337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9839286d119f1210b7347b50e2e5efdffdac38b7743b36bccb6309da69b6c853`  
		Last Modified: Sat, 13 May 2017 17:42:50 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22cffa4492f8ac36b348c3f555609d26264c2508803d0587ba74ff269590d281`  
		Last Modified: Sat, 13 May 2017 17:42:56 GMT  
		Size: 88.1 MB (88122839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e930c471dfff4d4b857d761cedadd600c0aea73c776260c2c30cb9779223ca9c`  
		Last Modified: Sat, 13 May 2017 17:42:49 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f609f7a5de9a2ffab65797fc5a999471a4237b447ead3b273682dbe50e15b652`  
		Last Modified: Sat, 13 May 2017 17:42:49 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.1.2`

```console
$ docker pull neo4j@sha256:402e3651c0e0ad1566113bddbb2db5b1550da7fa2890501c7db73eb97de41b08
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.1.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.3 MB (135301522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce85226ac692f23c8bacddca215b752b768ed6060a56720a11003554f2b05cc8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:19:09 GMT
RUN apk add --no-cache --quiet     bash     curl
# Thu, 11 May 2017 05:24:03 GMT
ENV NEO4J_SHA256=80e8729ae7d93696f80133c2815d2631040714122efa2af0a01e735953d56b4f
# Thu, 11 May 2017 05:24:04 GMT
ENV NEO4J_TARBALL=neo4j-community-3.1.2-unix.tar.gz
# Thu, 11 May 2017 05:24:05 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.2-unix.tar.gz
# Thu, 11 May 2017 05:24:06 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Thu, 11 May 2017 05:24:20 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.2-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Thu, 11 May 2017 05:24:21 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 May 2017 05:24:23 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.2-unix.tar.gz
RUN mv data /data     && ln -s /data
# Thu, 11 May 2017 05:24:24 GMT
VOLUME [/data]
# Thu, 11 May 2017 05:24:26 GMT
COPY file:7027e5c072ff2b8592309c993e7afcb2e7195c81e840c6b7d3d5b2d98c80b481 in /docker-entrypoint.sh 
# Thu, 11 May 2017 05:24:27 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Thu, 11 May 2017 05:24:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 05:24:29 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc0a49d967e2311e352dcb1fe605f65825913a5c28a438c3941582ef9d4ac90`  
		Last Modified: Sat, 13 May 2017 17:38:41 GMT  
		Size: 1.5 MB (1495337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8fa3912610cbe3592359ccb1fedcd5bc7219bf13d156f0459a0f846590923a5`  
		Last Modified: Sat, 13 May 2017 17:41:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f606a6ba0b6e059c3f5fcc09b337df4bd18cdf0f0808ec569c797801b5c550`  
		Last Modified: Sat, 13 May 2017 17:41:09 GMT  
		Size: 77.6 MB (77595487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65e596d1e487fe2667b40600ecdfdbb254815f481025477baed1344f53faab0`  
		Last Modified: Sat, 13 May 2017 17:41:02 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:264950f92a316b1e28d66c97b1f6f06a3ad29b1897825b9310ae03dfc954d69c`  
		Last Modified: Sat, 13 May 2017 17:41:03 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.1.2-enterprise`

```console
$ docker pull neo4j@sha256:49c425906dabcc614c90aa7bafd239b528a308114348fb91250cddf40bd76c0f
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.1.2-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.8 MB (145818360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:485c1bb7935591b3a1909358d2e4bfac77b42bd9ac76624e5165494ff4e4e7ff`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:19:09 GMT
RUN apk add --no-cache --quiet     bash     curl
# Thu, 11 May 2017 05:24:49 GMT
ENV NEO4J_SHA256=4963c9c2169b1005a3a193a39289f544766ad67902fbefdb25c497d75e5e2be1
# Thu, 11 May 2017 05:24:50 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.1.2-unix.tar.gz
# Thu, 11 May 2017 05:24:51 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.2-unix.tar.gz
# Thu, 11 May 2017 05:24:52 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Thu, 11 May 2017 05:25:09 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.2-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Thu, 11 May 2017 05:25:10 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 May 2017 05:25:12 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.2-unix.tar.gz
RUN mv data /data     && ln -s /data
# Thu, 11 May 2017 05:25:13 GMT
VOLUME [/data]
# Thu, 11 May 2017 05:25:15 GMT
COPY file:7027e5c072ff2b8592309c993e7afcb2e7195c81e840c6b7d3d5b2d98c80b481 in /docker-entrypoint.sh 
# Thu, 11 May 2017 05:25:16 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Thu, 11 May 2017 05:25:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 05:25:18 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc0a49d967e2311e352dcb1fe605f65825913a5c28a438c3941582ef9d4ac90`  
		Last Modified: Sat, 13 May 2017 17:38:41 GMT  
		Size: 1.5 MB (1495337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb28272ff7ab2ee62d1758d389168eaacf4488a3bad0df4666c32d844a6eed52`  
		Last Modified: Sat, 13 May 2017 17:41:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625e86b6aa26669ea7532fed20e6b055d5e92048c6e89c3dd076e859ec610d1e`  
		Last Modified: Sat, 13 May 2017 17:41:48 GMT  
		Size: 88.1 MB (88112325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d72ac7e66479895984d030a687c56c126d292211f633d8ba50042278727ad55`  
		Last Modified: Sat, 13 May 2017 17:41:39 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0df9bd13b188f1108eb95e5c8b70268bace395d1432338afe2de30466d18b5c`  
		Last Modified: Sat, 13 May 2017 17:41:39 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.1.1`

```console
$ docker pull neo4j@sha256:a2b08491022ed19c6d80292742c29434c7e0d8e4eb3ebdcea9f367ef56b54cb4
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.1.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 MB (135151336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32555ff7746a1b06b8f721d7a703a9052c7974cbb895eb947c96bdf9cf712632`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:19:09 GMT
RUN apk add --no-cache --quiet     bash     curl
# Thu, 11 May 2017 05:22:29 GMT
ENV NEO4J_SHA256=7d66389ad683f66664f11a79314ce4d434ab70ade9c02601ee74e59cd729e2cb
# Thu, 11 May 2017 05:22:30 GMT
ENV NEO4J_TARBALL=neo4j-community-3.1.1-unix.tar.gz
# Thu, 11 May 2017 05:22:30 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.1-unix.tar.gz
# Thu, 11 May 2017 05:22:32 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Thu, 11 May 2017 05:22:45 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.1-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Thu, 11 May 2017 05:22:46 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 May 2017 05:22:48 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.1-unix.tar.gz
RUN mv data /data     && ln -s /data
# Thu, 11 May 2017 05:22:49 GMT
VOLUME [/data]
# Thu, 11 May 2017 05:22:51 GMT
COPY file:77937095ede0ebf8d922e2d061f12dc5de64a045c38a47b59579caac7c90f6f6 in /docker-entrypoint.sh 
# Thu, 11 May 2017 05:22:52 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Thu, 11 May 2017 05:22:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 05:22:54 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc0a49d967e2311e352dcb1fe605f65825913a5c28a438c3941582ef9d4ac90`  
		Last Modified: Sat, 13 May 2017 17:38:41 GMT  
		Size: 1.5 MB (1495337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3cd493a342d115aa489c6e85d3f2a3a33d8b3aab8189e3b023b4b12afc70ec`  
		Last Modified: Sat, 13 May 2017 17:39:50 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d8b2a9631164541dccaf329e789be655e218bd9f25f6e02ab1deb72b9cc14f`  
		Last Modified: Sat, 13 May 2017 17:39:57 GMT  
		Size: 77.4 MB (77445303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da25223fd8e21027bef9b5311574700540d421f85a84e9239310f56b1955a1db`  
		Last Modified: Sat, 13 May 2017 17:39:50 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8475413035f0aeeca47ba73eb8e6644b1b128d6c915213dcbfea798264f994ab`  
		Last Modified: Sat, 13 May 2017 17:39:50 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.1.1-enterprise`

```console
$ docker pull neo4j@sha256:df3409bbfcdd4c89a2bf16fc5e1e9c58ee1823756bbadbf07451fac3fc13e63b
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.1.1-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145637827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20cb7b75104b0765a6f9c572450218e37fe618d2363c584c200b9966c0f8247d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:19:09 GMT
RUN apk add --no-cache --quiet     bash     curl
# Thu, 11 May 2017 05:23:14 GMT
ENV NEO4J_SHA256=20a8cda35d90c518319fdbb7aa8ecb11e306777bf8b8ff7df623cdb473b593a7
# Thu, 11 May 2017 05:23:15 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.1.1-unix.tar.gz
# Thu, 11 May 2017 05:23:16 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.1-unix.tar.gz
# Thu, 11 May 2017 05:23:17 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Thu, 11 May 2017 05:23:33 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.1-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Thu, 11 May 2017 05:23:34 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 May 2017 05:23:36 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.1-unix.tar.gz
RUN mv data /data     && ln -s /data
# Thu, 11 May 2017 05:23:38 GMT
VOLUME [/data]
# Thu, 11 May 2017 05:23:39 GMT
COPY file:77937095ede0ebf8d922e2d061f12dc5de64a045c38a47b59579caac7c90f6f6 in /docker-entrypoint.sh 
# Thu, 11 May 2017 05:23:40 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Thu, 11 May 2017 05:23:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 05:23:43 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc0a49d967e2311e352dcb1fe605f65825913a5c28a438c3941582ef9d4ac90`  
		Last Modified: Sat, 13 May 2017 17:38:41 GMT  
		Size: 1.5 MB (1495337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8059e0a8ecda3f2e9af16a1c08df22321c34dfc0cba72b88a7a8e56bae22aaa7`  
		Last Modified: Sat, 13 May 2017 17:40:25 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a936f7b479f912c8e1bdbe4c0b229c0568d29737a92fa65b39536cca37405c1`  
		Last Modified: Sat, 13 May 2017 17:40:36 GMT  
		Size: 87.9 MB (87931800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c012a46345e3f1282902aa527359748d0ab98f2de2362a6e90942f1676625631`  
		Last Modified: Sat, 13 May 2017 17:40:25 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5913de831bac32886c5352aedb6980a9272f14d9eec1cdc3d0f44243deb120a2`  
		Last Modified: Sat, 13 May 2017 17:40:25 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.1.0`

```console
$ docker pull neo4j@sha256:f663699213f9f46ae3ae6b778541a59ca5b1b0e9d67019f324055addb85369c9
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.1.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.1 MB (135113801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fd3a905bfc2cc8b08bd3c495bf08c0d2c211f9b9914e5f6260ea4dc1a81c7a2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:19:09 GMT
RUN apk add --no-cache --quiet     bash     curl
# Thu, 11 May 2017 05:20:42 GMT
ENV NEO4J_SHA256=47317a5a60f72de3d1b4fae4693b5f15514838ff3650bf8f2a965d3ba117dfc2
# Thu, 11 May 2017 05:20:43 GMT
ENV NEO4J_TARBALL=neo4j-community-3.1.0-unix.tar.gz
# Thu, 11 May 2017 05:20:44 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.0-unix.tar.gz
# Thu, 11 May 2017 05:20:45 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Thu, 11 May 2017 05:21:11 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Thu, 11 May 2017 05:21:12 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 May 2017 05:21:14 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.1.0-unix.tar.gz
RUN mv data /data     && ln -s /data
# Thu, 11 May 2017 05:21:15 GMT
VOLUME [/data]
# Thu, 11 May 2017 05:21:17 GMT
COPY file:77937095ede0ebf8d922e2d061f12dc5de64a045c38a47b59579caac7c90f6f6 in /docker-entrypoint.sh 
# Thu, 11 May 2017 05:21:18 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Thu, 11 May 2017 05:21:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 05:21:20 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc0a49d967e2311e352dcb1fe605f65825913a5c28a438c3941582ef9d4ac90`  
		Last Modified: Sat, 13 May 2017 17:38:41 GMT  
		Size: 1.5 MB (1495337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4705b7a71d2f5f8525543c3e3cc6e1864104995e6a66f7192b1adaadd23bb7db`  
		Last Modified: Sat, 13 May 2017 17:38:39 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b06b3ac5663b858502c8225bd5e176cf12705cb257f6889a4b83c26f6077fc`  
		Last Modified: Sat, 13 May 2017 17:38:49 GMT  
		Size: 77.4 MB (77407772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7306a02108e5a6ccc248048830f7e928b44a67ec3848a0c765c24b3e6a3efbdc`  
		Last Modified: Sat, 13 May 2017 17:38:39 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a14047b98d9327b421ce8a24fabd8a0655622bc74357a98432a2f545b218dd`  
		Last Modified: Sat, 13 May 2017 17:38:39 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.1.0-enterprise`

```console
$ docker pull neo4j@sha256:d297842a464900aba118701503ec91a67e07a791d11d4b9e9949a704459ee59b
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.1.0-enterprise` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145580653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcb93d6344a1ad9db1e037eb2e85c990f079dffccfee40524a7a0f21b5997abc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 May 2017 22:40:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:40:22 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:40:23 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 11 May 2017 05:19:09 GMT
RUN apk add --no-cache --quiet     bash     curl
# Thu, 11 May 2017 05:21:41 GMT
ENV NEO4J_SHA256=1f289296c23004ace4d37e14f2af433d203dfb028977534429e766bc308d584a
# Thu, 11 May 2017 05:21:42 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.1.0-unix.tar.gz
# Thu, 11 May 2017 05:21:43 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.0-unix.tar.gz
# Thu, 11 May 2017 05:21:44 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Thu, 11 May 2017 05:22:00 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Thu, 11 May 2017 05:22:01 GMT
WORKDIR /var/lib/neo4j
# Thu, 11 May 2017 05:22:02 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.1.0-unix.tar.gz
RUN mv data /data     && ln -s /data
# Thu, 11 May 2017 05:22:04 GMT
VOLUME [/data]
# Thu, 11 May 2017 05:22:05 GMT
COPY file:77937095ede0ebf8d922e2d061f12dc5de64a045c38a47b59579caac7c90f6f6 in /docker-entrypoint.sh 
# Thu, 11 May 2017 05:22:06 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Thu, 11 May 2017 05:22:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 05:22:09 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2361cda3c2da7cd65965703a6e97c9869536495a962105e26c948dd9a806e80d`  
		Last Modified: Fri, 12 May 2017 15:21:50 GMT  
		Size: 54.2 MB (54241012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc0a49d967e2311e352dcb1fe605f65825913a5c28a438c3941582ef9d4ac90`  
		Last Modified: Sat, 13 May 2017 17:38:41 GMT  
		Size: 1.5 MB (1495337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39922d164e62163f021e199638008ef1ec8a3301214a77f51496c3f3cfe5212a`  
		Last Modified: Sat, 13 May 2017 17:39:17 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe1eb6ee894095f364f95d26f4d4cd2c5a8164f6118f1839a1da0edeb537d7a`  
		Last Modified: Sat, 13 May 2017 17:39:24 GMT  
		Size: 87.9 MB (87874620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518eb00bdf6bd3a6dc88a691aaf6b206adfa58c9c27ee113a31395c3f8be74ea`  
		Last Modified: Sat, 13 May 2017 17:39:17 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99cb2aedc5ea9d010e667dbe1c5c3aab5cb9e9ce7908835d27f1ea779043796b`  
		Last Modified: Sat, 13 May 2017 17:39:17 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.9`

```console
$ docker pull neo4j@sha256:c4a79b02f86327720a9af38fc3c5dd14d824bf579053c5f15edf16dd8949f40c
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.9` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.4 MB (188404998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6e7f5f49039dc0ec7f62e0672bd45261aa492d0804b7b05f7d82fbd5a8d8e31`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:34:37 GMT
ENV NEO4J_SHA256=0d4ab95746871388bd55e418d148ff9de1440dfb4588ce228e3ac84360c46def
# Tue, 16 May 2017 23:34:37 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.9-unix.tar.gz
# Tue, 16 May 2017 23:34:38 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.9-unix.tar.gz
# Tue, 16 May 2017 23:34:39 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:34:51 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.9-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:34:52 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:34:53 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.9-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:34:54 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:34:56 GMT
COPY file:0944a2cbfb3872ef080e1d4d523c9d1bc7e6051f44ee5f024ab6840af5914b11 in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:34:56 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 16 May 2017 23:34:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:34:58 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd89992134813ddc979ffa080ecb33189f3f948a2e2b6d33c60f185002ce096`  
		Last Modified: Wed, 17 May 2017 00:00:51 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8f3046af37aae0dfe8a56e2944aea2e1137715330cc2151afc53caefd35b84`  
		Last Modified: Wed, 17 May 2017 00:00:55 GMT  
		Size: 61.6 MB (61609247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b467b41323c4fe1e9f3149c2d4a1ed917a25d0f97536bab04187f6f0fe54e71`  
		Last Modified: Wed, 17 May 2017 00:00:49 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661618f76e15ebd7765fba48d30eee417b3030061c37e5fddc10945d58b78240`  
		Last Modified: Wed, 17 May 2017 00:00:49 GMT  
		Size: 1.4 KB (1405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0`

```console
$ docker pull neo4j@sha256:c4a79b02f86327720a9af38fc3c5dd14d824bf579053c5f15edf16dd8949f40c
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.4 MB (188404998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6e7f5f49039dc0ec7f62e0672bd45261aa492d0804b7b05f7d82fbd5a8d8e31`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:34:37 GMT
ENV NEO4J_SHA256=0d4ab95746871388bd55e418d148ff9de1440dfb4588ce228e3ac84360c46def
# Tue, 16 May 2017 23:34:37 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.9-unix.tar.gz
# Tue, 16 May 2017 23:34:38 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.9-unix.tar.gz
# Tue, 16 May 2017 23:34:39 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:34:51 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.9-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:34:52 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:34:53 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.9-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:34:54 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:34:56 GMT
COPY file:0944a2cbfb3872ef080e1d4d523c9d1bc7e6051f44ee5f024ab6840af5914b11 in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:34:56 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 16 May 2017 23:34:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:34:58 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd89992134813ddc979ffa080ecb33189f3f948a2e2b6d33c60f185002ce096`  
		Last Modified: Wed, 17 May 2017 00:00:51 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8f3046af37aae0dfe8a56e2944aea2e1137715330cc2151afc53caefd35b84`  
		Last Modified: Wed, 17 May 2017 00:00:55 GMT  
		Size: 61.6 MB (61609247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b467b41323c4fe1e9f3149c2d4a1ed917a25d0f97536bab04187f6f0fe54e71`  
		Last Modified: Wed, 17 May 2017 00:00:49 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661618f76e15ebd7765fba48d30eee417b3030061c37e5fddc10945d58b78240`  
		Last Modified: Wed, 17 May 2017 00:00:49 GMT  
		Size: 1.4 KB (1405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.9-enterprise`

```console
$ docker pull neo4j@sha256:8810a2f2f76d6d25d7f3ebe4ad79a4e6589fa62021b3568078113c05b59e5670
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.9-enterprise` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.8 MB (190779103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c717baf5dda4da802248c1532e1e954d09126d51de5f59bebf6aea97034ad2e3`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:35:20 GMT
ENV NEO4J_SHA256=b91cc0f164d52b4fd5919f119eb6060d75ad7c596bc365a1a059bc0423a11f18
# Tue, 16 May 2017 23:35:20 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.9-unix.tar.gz
# Tue, 16 May 2017 23:35:21 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.9-unix.tar.gz
# Tue, 16 May 2017 23:35:22 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:35:34 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.9-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:35:35 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:35:37 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.9-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:35:38 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:35:39 GMT
COPY file:0944a2cbfb3872ef080e1d4d523c9d1bc7e6051f44ee5f024ab6840af5914b11 in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:35:40 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 16 May 2017 23:35:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:35:42 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4dca1da84656f1efb69dab6df70607fd548d9a967e9b1935f3b516f2e89c4d9`  
		Last Modified: Wed, 17 May 2017 00:01:58 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca8af17704451e0f971b85a13e94565ab2e72aacda12f7a62814a04675cd882`  
		Last Modified: Wed, 17 May 2017 00:02:04 GMT  
		Size: 64.0 MB (63983353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0cd9e0d67249106d53dfd81d91b4bc633e363653bfec1c29d968016a0712ef3`  
		Last Modified: Wed, 17 May 2017 00:01:58 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42bc06471bb986b23dfd579e75cae55f4ef6992c18a5c5188a9b19ace48b093e`  
		Last Modified: Wed, 17 May 2017 00:01:58 GMT  
		Size: 1.4 KB (1405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0-enterprise`

```console
$ docker pull neo4j@sha256:8810a2f2f76d6d25d7f3ebe4ad79a4e6589fa62021b3568078113c05b59e5670
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0-enterprise` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.8 MB (190779103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c717baf5dda4da802248c1532e1e954d09126d51de5f59bebf6aea97034ad2e3`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:35:20 GMT
ENV NEO4J_SHA256=b91cc0f164d52b4fd5919f119eb6060d75ad7c596bc365a1a059bc0423a11f18
# Tue, 16 May 2017 23:35:20 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.9-unix.tar.gz
# Tue, 16 May 2017 23:35:21 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.9-unix.tar.gz
# Tue, 16 May 2017 23:35:22 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:35:34 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.9-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:35:35 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:35:37 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.9-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:35:38 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:35:39 GMT
COPY file:0944a2cbfb3872ef080e1d4d523c9d1bc7e6051f44ee5f024ab6840af5914b11 in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:35:40 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 16 May 2017 23:35:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:35:42 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4dca1da84656f1efb69dab6df70607fd548d9a967e9b1935f3b516f2e89c4d9`  
		Last Modified: Wed, 17 May 2017 00:01:58 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca8af17704451e0f971b85a13e94565ab2e72aacda12f7a62814a04675cd882`  
		Last Modified: Wed, 17 May 2017 00:02:04 GMT  
		Size: 64.0 MB (63983353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0cd9e0d67249106d53dfd81d91b4bc633e363653bfec1c29d968016a0712ef3`  
		Last Modified: Wed, 17 May 2017 00:01:58 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42bc06471bb986b23dfd579e75cae55f4ef6992c18a5c5188a9b19ace48b093e`  
		Last Modified: Wed, 17 May 2017 00:01:58 GMT  
		Size: 1.4 KB (1405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.8`

```console
$ docker pull neo4j@sha256:be926ebbe68d92e9743d789e23cbd490d7eff3049dcb9b0e7e76135efca21a9e
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.8` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.3 MB (188323112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd643282a7c4771822e9f28a4f79900bbcccf5ba910d99f616d795063784e60a`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:33:09 GMT
ENV NEO4J_SHA256=015c33dc791f9be2f2ef8ed1d1014f9f3f31140d192df676a5d6f584f5c7f6aa
# Tue, 16 May 2017 23:33:10 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.8-unix.tar.gz
# Tue, 16 May 2017 23:33:10 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.8-unix.tar.gz
# Tue, 16 May 2017 23:33:12 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:33:24 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.8-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:33:25 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:33:26 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.8-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:33:27 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:33:28 GMT
COPY file:0944a2cbfb3872ef080e1d4d523c9d1bc7e6051f44ee5f024ab6840af5914b11 in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:33:29 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 16 May 2017 23:33:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:33:31 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b29e3892e8dc3446dfbf7ec706cb6e88ab3046c8230fe74ef40cede983616a7`  
		Last Modified: Tue, 16 May 2017 23:59:40 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab2b33cc9275d2be689af1220d89a7be205f8d773d142485e832079114ca613`  
		Last Modified: Tue, 16 May 2017 23:59:47 GMT  
		Size: 61.5 MB (61527361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c301cc925a4ac53e31f44ef739262e75c4b1e54bda92a228bec7abaa201cac`  
		Last Modified: Tue, 16 May 2017 23:59:40 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6d476e9a9b7a24a411b148abb3b4543ec5fd2d5b33ba41ebcc885fc9c14205`  
		Last Modified: Tue, 16 May 2017 23:59:41 GMT  
		Size: 1.4 KB (1405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.8-enterprise`

```console
$ docker pull neo4j@sha256:c03069d5aa43ca116987eb20636b85ff790fbc4cd8d2d50cb0397e9ddad8c35c
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.8-enterprise` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.7 MB (190695082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cfbdf26e58f10fdc1077865c378c058db8c7c375eb56717b3e900b8af6a7289`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:33:52 GMT
ENV NEO4J_SHA256=65e1feac021f45640e390a08c91e9b3bbfed60a7e9cc15c5a44df5af07c46768
# Tue, 16 May 2017 23:33:52 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.8-unix.tar.gz
# Tue, 16 May 2017 23:33:53 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.8-unix.tar.gz
# Tue, 16 May 2017 23:33:54 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:34:08 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.8-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:34:09 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:34:11 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.8-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:34:11 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:34:13 GMT
COPY file:0944a2cbfb3872ef080e1d4d523c9d1bc7e6051f44ee5f024ab6840af5914b11 in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:34:14 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 16 May 2017 23:34:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:34:15 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e551bae0ffc53fd7cfa7292cae511fcf17cd5f97193ce390e5b77536d2a69a24`  
		Last Modified: Wed, 17 May 2017 00:00:15 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82196f8c3f85ac06a85f2f6518f0ebb23e0db640624c40d02731b0949423d797`  
		Last Modified: Wed, 17 May 2017 00:00:20 GMT  
		Size: 63.9 MB (63899331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f63202693fe3a5006d014cf1bc8ef781f445463743f7240b23dafa7012f6cf9e`  
		Last Modified: Wed, 17 May 2017 00:00:15 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b387eaa471cfdb3a8869a4c221aade7fd0614bd976835d4b9d4e5857c562f4b`  
		Last Modified: Wed, 17 May 2017 00:00:14 GMT  
		Size: 1.4 KB (1405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.7`

```console
$ docker pull neo4j@sha256:db9744529519ef69a2950cb6fdeb455929085acda1967661e61f8b6fbffb46a7
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.3 MB (188291359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61fd2f229890c7479ccc24d5ab0a35e6cdf7d14784b2919ab8aa3b6c9cb15d46`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:31:44 GMT
ENV NEO4J_SHA256=69f7b410934d0a83120f892c1f341905b3a9346656b5d085eca1da612b8e7ae6
# Tue, 16 May 2017 23:31:44 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.7-unix.tar.gz
# Tue, 16 May 2017 23:31:45 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.7-unix.tar.gz
# Tue, 16 May 2017 23:31:46 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:31:59 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.7-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:32:00 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:32:01 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.7-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:32:02 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:32:03 GMT
COPY file:0944a2cbfb3872ef080e1d4d523c9d1bc7e6051f44ee5f024ab6840af5914b11 in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:32:04 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 16 May 2017 23:32:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:32:06 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f2221af19c9a5eb5eb2e458b2db7b93074b470500f1c59afa60dd0df4df647`  
		Last Modified: Tue, 16 May 2017 23:58:22 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af0cfbb45d4ca984e181f2fd4c508c486b7a4a3b38763eb13a1691e5cdbc8778`  
		Last Modified: Tue, 16 May 2017 23:58:29 GMT  
		Size: 61.5 MB (61495609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31c8ffa97e0f077b98589f818e69f768e241b1f565ac4d4374e8ea1e9edb1aa5`  
		Last Modified: Tue, 16 May 2017 23:58:21 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812fc17e1b6db16038f254a4d53db599d26fda2021b5327d07b4c1ad25bf165b`  
		Last Modified: Tue, 16 May 2017 23:58:21 GMT  
		Size: 1.4 KB (1404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.7-enterprise`

```console
$ docker pull neo4j@sha256:965b2e0a3829673e33ad7af46e6b9b50408577a7985b7fc2e010c92865859f53
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.7-enterprise` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.7 MB (190663081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf5fa6bb67c34cc21eb4112b214d5d2fd0b7d7a24838d203a7793644ccab2527`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:32:27 GMT
ENV NEO4J_SHA256=92edf396616be8a1cdb41dd05c300865959f97944f4fe7f50539401a49c095d5
# Tue, 16 May 2017 23:32:28 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.7-unix.tar.gz
# Tue, 16 May 2017 23:32:29 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.7-unix.tar.gz
# Tue, 16 May 2017 23:32:30 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:32:41 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.7-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:32:42 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:32:43 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.7-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:32:44 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:32:46 GMT
COPY file:0944a2cbfb3872ef080e1d4d523c9d1bc7e6051f44ee5f024ab6840af5914b11 in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:32:46 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 16 May 2017 23:32:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:32:48 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6254571589f5fe994fc6d4d1b21e95cdb13371b4d900aa4aee323d42f66b3ba`  
		Last Modified: Tue, 16 May 2017 23:59:14 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69394282643e966c577a6ddb21841876d297c9967dd63ebc178dc27052f0c92`  
		Last Modified: Tue, 16 May 2017 23:59:05 GMT  
		Size: 63.9 MB (63867330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a2b23c61e54849396864c2dbb83886e223cf0afbe3792902bd234ff5bc64a6`  
		Last Modified: Tue, 16 May 2017 23:58:57 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b9e380c2abcecb5f2505257100566bf71cad43b5d7ec2d8e796787234e3dc5`  
		Last Modified: Tue, 16 May 2017 23:58:57 GMT  
		Size: 1.4 KB (1405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.6`

```console
$ docker pull neo4j@sha256:2e224bb2f54adc4826c73450df490ad458c9f93a41e4d73e69317b47247833e0
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.3 MB (188349389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5012852ebab62f0046dd40fba546056f76c885d2474d8917082e8c9591fa4c3`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:30:16 GMT
ENV NEO4J_SHA256=efeab41183e9e5fa94a2d396c65ea93a24e9f105cb3b5f0d0a8e42fb709f4660
# Tue, 16 May 2017 23:30:17 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.6-unix.tar.gz
# Tue, 16 May 2017 23:30:17 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.6-unix.tar.gz
# Tue, 16 May 2017 23:30:18 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:30:31 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.6-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:30:32 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:30:33 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.6-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:30:34 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:30:36 GMT
COPY file:404881b1bacde49595b51ced5b6c716a0338b4c47cd45357cd3d7850f1c255b2 in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:30:36 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 16 May 2017 23:30:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:30:38 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:822087eddb5ac848b0278c6100ef40110a6944b8ab60e3557594575e75263c3d`  
		Last Modified: Tue, 16 May 2017 23:57:11 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccdd43deb400602fcb85da63ff0c07654c606b465fd6a10a011a1c432545983b`  
		Last Modified: Tue, 16 May 2017 23:57:18 GMT  
		Size: 61.6 MB (61553666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944f97b7aea02a7c49f40007a12273cb99eb17860a7ffe447581df89cc135bd0`  
		Last Modified: Tue, 16 May 2017 23:57:11 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e008174b0c1ca81f85cfe26a9d31da5e03f04cd265d7d388092513f49757378e`  
		Last Modified: Tue, 16 May 2017 23:57:11 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.6-enterprise`

```console
$ docker pull neo4j@sha256:193b6686b0bd7d7121760f8ac5070de069b5d0c2bc316049e250f51bf883776c
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.6-enterprise` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.7 MB (190713879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9370c27857f0d77639967543defc17866c46db8500a8018a6e2fe9ba08680ff4`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:30:59 GMT
ENV NEO4J_SHA256=f58450760a92b0913c5418e26278a6a65bf6c5ba01f9b12a033f56e80f0c3d23
# Tue, 16 May 2017 23:31:00 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.6-unix.tar.gz
# Tue, 16 May 2017 23:31:01 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.6-unix.tar.gz
# Tue, 16 May 2017 23:31:02 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:31:16 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.6-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:31:16 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:31:18 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.6-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:31:19 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:31:20 GMT
COPY file:404881b1bacde49595b51ced5b6c716a0338b4c47cd45357cd3d7850f1c255b2 in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:31:21 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 16 May 2017 23:31:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:31:23 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67dc5dac7efc4495d07f528065b674c9e843f8977e552f9eec0c6ec999fd9fe`  
		Last Modified: Tue, 16 May 2017 23:57:48 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb1ae2d07fcd29c204b1bc544b27e556a7e40d5aaa8a620cd5736eace741515`  
		Last Modified: Tue, 16 May 2017 23:57:55 GMT  
		Size: 63.9 MB (63918161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b840478d4a293030c2447e2e962c8ae111c461028ed8d3f424f715b38bc222`  
		Last Modified: Tue, 16 May 2017 23:57:48 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c05a102f5aba3633bdf1d38f578d67d986cbe9436eb3e30ad0e3ffbd0eb4b32`  
		Last Modified: Tue, 16 May 2017 23:57:49 GMT  
		Size: 1.4 KB (1374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.5`

```console
$ docker pull neo4j@sha256:a5b789710805fe9b1dfc6bc941e54cce44da2a6a017c3b38d927cca49641e67d
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.3 MB (188345699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ecbd84a2bfabc36988496da170af496e9c05b2fffa59a41e8afa55b3ad53d41`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:28:51 GMT
ENV NEO4J_SHA256=65f6995f9d2e87b61cb8d9c7623e9861bced555a8c05f3476aa73240a77437d8
# Tue, 16 May 2017 23:28:51 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.5-unix.tar.gz
# Tue, 16 May 2017 23:28:52 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.5-unix.tar.gz
# Tue, 16 May 2017 23:28:53 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:29:05 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.5-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:29:06 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:29:08 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.5-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:29:09 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:29:10 GMT
COPY file:404881b1bacde49595b51ced5b6c716a0338b4c47cd45357cd3d7850f1c255b2 in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:29:11 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 16 May 2017 23:29:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:29:12 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85510a97d41141b119d7f0d603c90e7200dfbc1ec7818eb9861c08970a1981a8`  
		Last Modified: Tue, 16 May 2017 23:56:00 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561dc840dfc321f3457fd35bd452ac743704ce0a8f6ccf21d9865f3c1dd87e7f`  
		Last Modified: Tue, 16 May 2017 23:56:07 GMT  
		Size: 61.5 MB (61549979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f74ab9d0e72de625fdc19fe44b85ec44f88bd87b555d7e35855f0ed5ca66c24a`  
		Last Modified: Tue, 16 May 2017 23:56:01 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d42d2cb76e56dfdc05adff28a484821d57ff8bdd2fcfdc64ec6775076dd88a4`  
		Last Modified: Tue, 16 May 2017 23:56:00 GMT  
		Size: 1.4 KB (1374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.5-enterprise`

```console
$ docker pull neo4j@sha256:c709165ea865aa1b69af6ade7f578ac2420c04c8d824729db20914d1b788b880
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.5-enterprise` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.7 MB (190710418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deb9f48bdbf29a642a17efcdcf999b4ff9e3b595ae11df29bc393c5492086159`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:29:34 GMT
ENV NEO4J_SHA256=069cd8b1eab4e4b20e4abb50a6f1e7c985a21ad349d3fe3413943b96f1724e06
# Tue, 16 May 2017 23:29:34 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.5-unix.tar.gz
# Tue, 16 May 2017 23:29:35 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.5-unix.tar.gz
# Tue, 16 May 2017 23:29:36 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:29:48 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.5-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:29:49 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:29:50 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.5-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:29:51 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:29:52 GMT
COPY file:404881b1bacde49595b51ced5b6c716a0338b4c47cd45357cd3d7850f1c255b2 in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:29:53 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 16 May 2017 23:29:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:29:55 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb92d53eb7b0cd0bf54a9b23b4489fcd0c2d8f7dc4cb5ce7b87b2fc965de7724`  
		Last Modified: Tue, 16 May 2017 23:56:35 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0a91055587b781161bf4c3cb68d0fead044601dd8499a364511c27b6cb07df`  
		Last Modified: Tue, 16 May 2017 23:56:44 GMT  
		Size: 63.9 MB (63914695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cffefd75c83961d9394372bcc490f1291b0cb104fac4b493641dcd19e2a4414c`  
		Last Modified: Tue, 16 May 2017 23:56:35 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3469ea57f7767010eeff6d39e5c9dd885e6f531cc7f90317298079e8ff6b35c4`  
		Last Modified: Tue, 16 May 2017 23:56:36 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.4`

```console
$ docker pull neo4j@sha256:f74b6787c60f0b4e5f6bd83ed0b11db5b87c2e19c63a19f79a914916ba7b62c1
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.3 MB (188270295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c5bd1b549bc9a735070260ddb7f32e91eb8efd2bf2bebb9c59852b24f34ad64`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:27:16 GMT
ENV NEO4J_SHA256=e1da51163eb18380623788eabea34dfe23ee21c99deca4e7922094b0d242e805
# Tue, 16 May 2017 23:27:17 GMT
ENV NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.4-unix.tar.gz
# Tue, 16 May 2017 23:27:39 GMT
RUN curl --fail --silent --show-error --location --output neo4j.tar.gz $NEO4J_URI     && echo "$NEO4J_SHA256 neo4j.tar.gz" | sha256sum --check --quiet -     && tar --extract --file neo4j.tar.gz --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm neo4j.tar.gz
# Tue, 16 May 2017 23:27:40 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:27:42 GMT
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:27:43 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:27:44 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:27:45 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 16 May 2017 23:27:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:27:47 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c3d8227ef31f27c0513cdb915390ad09fd86891d0cb4dfdff0345b7ce5543e`  
		Last Modified: Tue, 16 May 2017 23:54:56 GMT  
		Size: 61.5 MB (61474759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a847b10aca6263694014aa16940e1559bc0b3f476349c64a3ab8050684452135`  
		Last Modified: Tue, 16 May 2017 23:54:49 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58eab2ca81fe3b5832550a0d3f703e98150e2320c7a0b77f3582d50813964ba6`  
		Last Modified: Tue, 16 May 2017 23:54:49 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.4-enterprise`

```console
$ docker pull neo4j@sha256:678afaca996b09be27bd5fb8ed01cce4cd8da4c2f1958abc9e7821f6db39d938
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.4-enterprise` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.6 MB (190614875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfdef044eba6d58cdfb65e46870b8e28bf272345f4e4da4880d2b7b02223ccf9`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:28:08 GMT
ENV NEO4J_SHA256=7cc47dcffdd040beec230cb6633bf03ace326218fa70f6d90612de057a6d61e2
# Tue, 16 May 2017 23:28:09 GMT
ENV NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.4-unix.tar.gz
# Tue, 16 May 2017 23:28:22 GMT
RUN curl --fail --silent --show-error --location --output neo4j.tar.gz $NEO4J_URI     && echo "$NEO4J_SHA256 neo4j.tar.gz" | sha256sum --check --quiet -     && tar --extract --file neo4j.tar.gz --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm neo4j.tar.gz
# Tue, 16 May 2017 23:28:23 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:28:24 GMT
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:28:25 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:28:27 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:28:28 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 16 May 2017 23:28:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:28:29 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1788d557b9d4f7e58af8acb3a3c4a96fcec98d095d0c8f4b8d565bd0a4cdc05e`  
		Last Modified: Tue, 16 May 2017 23:55:30 GMT  
		Size: 63.8 MB (63819338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28355b0824abd782be840b147dc9418a0b562cddb107d917ffb7a81f1daeb171`  
		Last Modified: Tue, 16 May 2017 23:55:22 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124c8e275ff50bf129a241814ba702c153d8fc63cf551437519d427cd8d55192`  
		Last Modified: Tue, 16 May 2017 23:55:23 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.3`

```console
$ docker pull neo4j@sha256:6afb943cdf3e09a220ef01ff8cc7a32173da797d4de1602eb54fb50c3b2f01f9
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188231885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8393273ee6e766ee11d89a1b7ed2ff35eee9aecd9bcc58e4647ba7cc8a1de740`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:25:49 GMT
ENV NEO4J_SHA256=20cd65c84a6e5345f17bb03c145190f74e58ec2754c2e515a64b317e34dae2ce
# Tue, 16 May 2017 23:25:49 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.3-unix.tar.gz
# Tue, 16 May 2017 23:25:50 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.3-unix.tar.gz
# Tue, 16 May 2017 23:25:51 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:26:03 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.3-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:26:04 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:26:05 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.3-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:26:06 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:26:08 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:26:09 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 16 May 2017 23:26:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:26:10 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5588005aec18e5aee2b78c394d6853050fff92126fc809b8b43f8d1c7c72f72`  
		Last Modified: Tue, 16 May 2017 23:53:33 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6636cc2be91543b4bc202f99483617da0e41903341b812170caa42663ef148ad`  
		Last Modified: Tue, 16 May 2017 23:53:41 GMT  
		Size: 61.4 MB (61436221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ad7f04dd4ae9d3c0df360ba4de863a9d12c542c767e3a23747d22fdea05682c`  
		Last Modified: Tue, 16 May 2017 23:53:33 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760a8e050cc7a73b66e642754ca56e0a7366650fa105104cc7f2f3e4bb5fd505`  
		Last Modified: Tue, 16 May 2017 23:53:33 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.3-enterprise`

```console
$ docker pull neo4j@sha256:69de0776ecd823ca30e4e2bec4c974beff626b230f2f8c6c9f68af2aad283bba
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.3-enterprise` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.6 MB (190565959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28db89847faa3b38f55b852df1584ba8c9ead6eef8036175a06147a3a109b54c`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:26:31 GMT
ENV NEO4J_SHA256=f73ed4faf94087bded5ee34bc2614f09bbedc3b6e25439058526ce5506eb127e
# Tue, 16 May 2017 23:26:32 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.3-unix.tar.gz
# Tue, 16 May 2017 23:26:33 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.3-unix.tar.gz
# Tue, 16 May 2017 23:26:34 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:26:47 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.3-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:26:48 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:26:49 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.3-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:26:50 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:26:52 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:26:53 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 16 May 2017 23:26:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:26:55 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a706d85113633fc1377b77d317cce8368f45b20d9fda6fab000ba4994e1b728`  
		Last Modified: Tue, 16 May 2017 23:54:11 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cc948c043864b4efad0c81d710fe70fb98b82abf2e38943a6cf03872a5bdd95`  
		Last Modified: Tue, 16 May 2017 23:54:19 GMT  
		Size: 63.8 MB (63770294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e275494d5a6f61e7d4aefac67dcd7b54d679009b52898a21505e4976ec53ea47`  
		Last Modified: Tue, 16 May 2017 23:54:11 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c43c2cb3bb3ec95732f2c8621096d863d4781ff6940c23c004fb096089746a`  
		Last Modified: Tue, 16 May 2017 23:54:11 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.2`

```console
$ docker pull neo4j@sha256:39589efc6c541d4e7da87e6107531c87aad7226c371f7b2322cfdc847405e74d
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.9 MB (188864003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dca0517b925b962320cfb1189682a22bc573bb15a5d1e4e5699db601f4def01e`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:24:20 GMT
ENV NEO4J_SHA256=3daac469e0ad0f74eb8532ada8019b418e6ebd88da9bac52a4ee3393e18086aa
# Tue, 16 May 2017 23:24:20 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.2-unix.tar.gz
# Tue, 16 May 2017 23:24:21 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.2-unix.tar.gz
# Tue, 16 May 2017 23:24:22 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:24:35 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.2-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:24:35 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:24:37 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.2-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:24:38 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:24:39 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:24:40 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 16 May 2017 23:24:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:24:42 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a478f704d23c5544c4e2d5084c663d02e5bf0c218ee4fea22068ecb9a80bd7b`  
		Last Modified: Tue, 16 May 2017 23:52:13 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ad38687e70d5ac454e5a58017cba1cb56e1ee8beac2fb32887c8ca2bbfcff1`  
		Last Modified: Tue, 16 May 2017 23:52:20 GMT  
		Size: 62.1 MB (62068341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c2a8cbfc2c26a87df28c32d15e3b309db48c3655f2e0692c3b1ce696040fd5`  
		Last Modified: Tue, 16 May 2017 23:52:13 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607836e24dcfbb6de5199cab7c642d64a8dd8b46d4cb66f8f4fb7f25020c263`  
		Last Modified: Tue, 16 May 2017 23:52:13 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.2-enterprise`

```console
$ docker pull neo4j@sha256:f2213747b4acd1b2587f59a184925748113232653639a0a762eb60ba1b2da222
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.2-enterprise` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.2 MB (191200784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbb5208c51ff6e26bb0f3c241f230b80134cc302f302904403283720e80c0764`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:25:03 GMT
ENV NEO4J_SHA256=7e3cb1cb29c51ac267e57ec3d12c425bd31a4c92a2ecba70bb78360670b4b972
# Tue, 16 May 2017 23:25:04 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.2-unix.tar.gz
# Tue, 16 May 2017 23:25:04 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.2-unix.tar.gz
# Tue, 16 May 2017 23:25:06 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:25:19 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.2-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:25:20 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:25:21 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.2-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:25:22 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:25:24 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:25:25 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 16 May 2017 23:25:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:25:26 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:204d50eef5eec7ad279912e9f242d6cf05194f3a0e2b1f59ad63e892d11551f7`  
		Last Modified: Tue, 16 May 2017 23:52:48 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cac10168e62194cd8097b9c617469d6f965af536f894a18b1c9fc29a0a8fc5f`  
		Last Modified: Tue, 16 May 2017 23:53:04 GMT  
		Size: 64.4 MB (64405119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb833e5f6b7f7117a09e174eab122bb94411ccd8d7222e1e77785ec4697143d`  
		Last Modified: Tue, 16 May 2017 23:52:48 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfcb416bca89e9f2042e7420457acaa07c329f886b535440f0c46d987df8df0c`  
		Last Modified: Tue, 16 May 2017 23:52:48 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.1`

```console
$ docker pull neo4j@sha256:13af561343f6d8a3ac830e59181f108f3bc92cfeafee84897069ad3b2dad01d2
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.4 MB (189355666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a4f51af9f718c1efb0a1de7007b5cd4e117e4a0d616d7461c7aee7057c3b6a6`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:22:38 GMT
ENV NEO4J_SHA256=ae9d966559c83a9f1c61e1ef4d67aafeb9185e568b6dec0cd6b50e4297a15895
# Tue, 16 May 2017 23:22:39 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.1-unix.tar.gz
# Tue, 16 May 2017 23:22:40 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.1-unix.tar.gz
# Tue, 16 May 2017 23:22:41 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:23:07 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.1-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:23:08 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:23:09 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.1-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:23:10 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:23:11 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:23:12 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 16 May 2017 23:23:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:23:14 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:521af44c11226bcff27332579a086650bea847f15d03cb79bb1ad732e951e963`  
		Last Modified: Tue, 16 May 2017 23:51:01 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3868c71f83ee9435612729cf674f2a394dd3d1d4d05e0525062c3ea0b029d5ca`  
		Last Modified: Tue, 16 May 2017 23:51:09 GMT  
		Size: 62.6 MB (62560002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d5fbfe217b5dd61d1d8faf39738d0a68a908e3eaf0e1f442957add95c92577a`  
		Last Modified: Tue, 16 May 2017 23:51:02 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a9da9163d4c93344a50e570c0c2854e7b261c7a1b68a77c054fe1dcfcf3729`  
		Last Modified: Tue, 16 May 2017 23:51:01 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.1-enterprise`

```console
$ docker pull neo4j@sha256:bfac3fe4f6df4c9f219f6dc0c3bf78789f38cd85e48e4fda4ae48e6a5d884580
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.1-enterprise` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.6 MB (191570511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ee6a137e0e7022856d55ac6e77ac542f2b4cbc79708644e1427fca5110eb9a9`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:23:35 GMT
ENV NEO4J_SHA256=d88c107d10bc4d4919bbac775aa128b4c312a420abfd06897471b5fa96864b11
# Tue, 16 May 2017 23:23:36 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.1-unix.tar.gz
# Tue, 16 May 2017 23:23:37 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.1-unix.tar.gz
# Tue, 16 May 2017 23:23:38 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:23:51 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.1-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:23:52 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:23:53 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.1-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:23:54 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:23:55 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:23:56 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 16 May 2017 23:23:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:23:58 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c60bf5221d3604065b052f5a1fc6ba4295df75a314da0393499609e3a071ab`  
		Last Modified: Tue, 16 May 2017 23:51:36 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35137be8d1037cbbf03cd52f99742976138328f1d48dd36a1ce73ba5c7e19810`  
		Last Modified: Tue, 16 May 2017 23:51:44 GMT  
		Size: 64.8 MB (64774846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03ff79e5ccfa2fa8b6ce29dc901243e7769ec753d043c4675e441a563477e7a7`  
		Last Modified: Tue, 16 May 2017 23:51:37 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6cd226b067e7b78840fffc95f334a17c8e61c71de6e45d6ffdbfa99743525d6`  
		Last Modified: Tue, 16 May 2017 23:51:37 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.0`

```console
$ docker pull neo4j@sha256:8b834f8d6f8abc81ecf98dbf6298cef68cb3aafdfd8d44ef2dea0913faee71d0
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.4 MB (189353095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:535df2913d8303a071fdb59340514b9eef932929bedc16a393c5c6965a77abb3`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:21:11 GMT
ENV NEO4J_SHA256=1f1aeb3c748d5b05c263b7dab8b195df788507f59228e80534ed8e506a80c517
# Tue, 16 May 2017 23:21:12 GMT
ENV NEO4J_TARBALL=neo4j-community-3.0.0-unix.tar.gz
# Tue, 16 May 2017 23:21:13 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.0-unix.tar.gz
# Tue, 16 May 2017 23:21:14 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:21:26 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:21:27 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:21:29 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.0.0-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:21:30 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:21:31 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:21:32 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 16 May 2017 23:21:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:21:34 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e085ee1f4f582665c0a5ef5c1f0498ae2438aabc29eb0cf0d0e1a780236f19`  
		Last Modified: Tue, 16 May 2017 23:49:52 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be110605e4e6c5c432c8ee028bf60b14c8b9f31a76f430acb935b08798e953cf`  
		Last Modified: Tue, 16 May 2017 23:50:00 GMT  
		Size: 62.6 MB (62557429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98afcc2e8ac38ac6197ecbfd13dbb6a08f3b299ca26cff925b4472b0f4465e9f`  
		Last Modified: Tue, 16 May 2017 23:49:52 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41443952d784e3aeb658f0890e20b68af38a17077ef466434e2e952a33062d3f`  
		Last Modified: Tue, 16 May 2017 23:49:52 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:3.0.0-enterprise`

```console
$ docker pull neo4j@sha256:b42a6bbd44746053ca00bc8b9dbfbd3a1a383bc44a5233ee2c8dfef20e19ca02
```

-	Platforms:
	-	linux; amd64

### `neo4j:3.0.0-enterprise` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.6 MB (191568003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:374b6448f0eeac34913c58a5945cfcd5c54ab97a447351407ad767dc5c1d28a2`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:21:55 GMT
ENV NEO4J_SHA256=376409e1849f2f13d5ea6ddc672b535646ffb9a24527520b661e044190bf617a
# Tue, 16 May 2017 23:21:56 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-3.0.0-unix.tar.gz
# Tue, 16 May 2017 23:21:56 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.0-unix.tar.gz
# Tue, 16 May 2017 23:21:58 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:22:10 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:22:11 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:22:12 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.0.0-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:22:13 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:22:14 GMT
COPY file:30c4b27b65084bb7a5d68a5f0cb5f22556ac3d3055a21211c7e1cc5b050f77f4 in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:22:15 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 16 May 2017 23:22:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:22:17 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5836a6f0d431b91e931841fe29932ff3860c50ca685a91860be8dd4ad0f7fcbf`  
		Last Modified: Tue, 16 May 2017 23:50:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc3af4740fc84afbea929c722b9416baa1de356862422b950ace6a8775337d5`  
		Last Modified: Tue, 16 May 2017 23:50:34 GMT  
		Size: 64.8 MB (64772338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b09c4a3803832bbdfb2b95bb911efd18977d00c94ab3abbe9020161945dcabe`  
		Last Modified: Tue, 16 May 2017 23:50:27 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a4bd5c81e2d6929acafb62013f85b85237091276171a4972b34cd6432924d9`  
		Last Modified: Tue, 16 May 2017 23:50:28 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.10`

```console
$ docker pull neo4j@sha256:647a93c572605258006a49d8fbdb8a760a1e01beb06c4abfc7af8af8dcd02a4f
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.10` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.2 MB (194207478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baa259c05f89313f18136a81d0731f528a8a0497b3fc8b8234889d6c3ec78ab4`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:04:26 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 23:07:32 GMT
ENV NEO4J_SHA256=b910ca32c454dd3aa2870d2d9f83973c9597ab67b7f72355091ca2d924d646ab
# Tue, 16 May 2017 23:07:33 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.10-unix.tar.gz
# Tue, 16 May 2017 23:07:33 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.10-unix.tar.gz
# Tue, 16 May 2017 23:07:34 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:07:47 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.10-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:07:48 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:07:49 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.10-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:07:50 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:07:51 GMT
COPY file:77655caa958663cf4b6b261cb705cbea286374905edc612985f978867904bd01 in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:07:52 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 16 May 2017 23:07:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:07:54 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98de852c8e90dfa4dfe1c37315bf023ef7591602bf773d64d34f9435192bb483`  
		Last Modified: Tue, 16 May 2017 23:36:16 GMT  
		Size: 8.6 MB (8647763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6229fc1addb606752aaf34a74b44a38b8d620b7bd4b8b03da59d3fb60a94828`  
		Last Modified: Tue, 16 May 2017 23:38:32 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f3cada44026f965a0af64bd43842e1516550b81ad28eb12f92f5e1cc3c1a79d`  
		Last Modified: Tue, 16 May 2017 23:38:37 GMT  
		Size: 58.8 MB (58763526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d0709935569d4145604ab19a93be1e91339b361b2ba1f83fae50a81fb56b0f`  
		Last Modified: Tue, 16 May 2017 23:38:32 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78425b45adccbfbfb9372136a8e1d751b297760751cf3cc30ad7ce68b86226d2`  
		Last Modified: Tue, 16 May 2017 23:38:32 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3`

```console
$ docker pull neo4j@sha256:647a93c572605258006a49d8fbdb8a760a1e01beb06c4abfc7af8af8dcd02a4f
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.2 MB (194207478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baa259c05f89313f18136a81d0731f528a8a0497b3fc8b8234889d6c3ec78ab4`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:04:26 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 23:07:32 GMT
ENV NEO4J_SHA256=b910ca32c454dd3aa2870d2d9f83973c9597ab67b7f72355091ca2d924d646ab
# Tue, 16 May 2017 23:07:33 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.10-unix.tar.gz
# Tue, 16 May 2017 23:07:33 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.10-unix.tar.gz
# Tue, 16 May 2017 23:07:34 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:07:47 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.10-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:07:48 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:07:49 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.10-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:07:50 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:07:51 GMT
COPY file:77655caa958663cf4b6b261cb705cbea286374905edc612985f978867904bd01 in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:07:52 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 16 May 2017 23:07:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:07:54 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98de852c8e90dfa4dfe1c37315bf023ef7591602bf773d64d34f9435192bb483`  
		Last Modified: Tue, 16 May 2017 23:36:16 GMT  
		Size: 8.6 MB (8647763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6229fc1addb606752aaf34a74b44a38b8d620b7bd4b8b03da59d3fb60a94828`  
		Last Modified: Tue, 16 May 2017 23:38:32 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f3cada44026f965a0af64bd43842e1516550b81ad28eb12f92f5e1cc3c1a79d`  
		Last Modified: Tue, 16 May 2017 23:38:37 GMT  
		Size: 58.8 MB (58763526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d0709935569d4145604ab19a93be1e91339b361b2ba1f83fae50a81fb56b0f`  
		Last Modified: Tue, 16 May 2017 23:38:32 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78425b45adccbfbfb9372136a8e1d751b297760751cf3cc30ad7ce68b86226d2`  
		Last Modified: Tue, 16 May 2017 23:38:32 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.10-enterprise`

```console
$ docker pull neo4j@sha256:006e013370d6ebd833928ff3c24a55522f716c9664e039274d9e18e5ca4c0d4e
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.10-enterprise` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.8 MB (196753904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a5d4ab917c2fa086a0981864241be4404619a47b33854b9e2193552cbdc0220`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:04:26 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 23:08:16 GMT
ENV NEO4J_SHA256=dfbd3c253e7d338bff00b615973f0186f100970a2d22f24b5eaa3575ceb8f643
# Tue, 16 May 2017 23:08:16 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.10-unix.tar.gz
# Tue, 16 May 2017 23:08:17 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.10-unix.tar.gz
# Tue, 16 May 2017 23:08:18 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:08:32 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.10-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:08:33 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:08:34 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.10-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:08:35 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:08:37 GMT
COPY file:77655caa958663cf4b6b261cb705cbea286374905edc612985f978867904bd01 in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:08:38 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 16 May 2017 23:08:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:08:40 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98de852c8e90dfa4dfe1c37315bf023ef7591602bf773d64d34f9435192bb483`  
		Last Modified: Tue, 16 May 2017 23:36:16 GMT  
		Size: 8.6 MB (8647763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:245a8b8df811430471c994cd1ec5367b63e68cf118af065f84a5c077e946cc10`  
		Last Modified: Tue, 16 May 2017 23:39:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ef889ddd4f641b95c6a49034e2f85b9801f6d063c190e5e07b81e7cbfe17c2`  
		Last Modified: Tue, 16 May 2017 23:39:33 GMT  
		Size: 61.3 MB (61309951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acbbc846e90c8ac063c06588c7427f40e9d1a064b2e6e96275044b6f81817767`  
		Last Modified: Tue, 16 May 2017 23:39:28 GMT  
		Size: 712.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0fbd6b422b5cb3e6002c02f384e26d02f3d17ed453fe7ddf44db604915edc1b`  
		Last Modified: Tue, 16 May 2017 23:39:27 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3-enterprise`

```console
$ docker pull neo4j@sha256:006e013370d6ebd833928ff3c24a55522f716c9664e039274d9e18e5ca4c0d4e
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3-enterprise` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.8 MB (196753904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a5d4ab917c2fa086a0981864241be4404619a47b33854b9e2193552cbdc0220`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:04:26 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 23:08:16 GMT
ENV NEO4J_SHA256=dfbd3c253e7d338bff00b615973f0186f100970a2d22f24b5eaa3575ceb8f643
# Tue, 16 May 2017 23:08:16 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.10-unix.tar.gz
# Tue, 16 May 2017 23:08:17 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.10-unix.tar.gz
# Tue, 16 May 2017 23:08:18 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:08:32 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.10-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:08:33 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:08:34 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.10-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:08:35 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:08:37 GMT
COPY file:77655caa958663cf4b6b261cb705cbea286374905edc612985f978867904bd01 in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:08:38 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 16 May 2017 23:08:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:08:40 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98de852c8e90dfa4dfe1c37315bf023ef7591602bf773d64d34f9435192bb483`  
		Last Modified: Tue, 16 May 2017 23:36:16 GMT  
		Size: 8.6 MB (8647763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:245a8b8df811430471c994cd1ec5367b63e68cf118af065f84a5c077e946cc10`  
		Last Modified: Tue, 16 May 2017 23:39:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ef889ddd4f641b95c6a49034e2f85b9801f6d063c190e5e07b81e7cbfe17c2`  
		Last Modified: Tue, 16 May 2017 23:39:33 GMT  
		Size: 61.3 MB (61309951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acbbc846e90c8ac063c06588c7427f40e9d1a064b2e6e96275044b6f81817767`  
		Last Modified: Tue, 16 May 2017 23:39:28 GMT  
		Size: 712.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0fbd6b422b5cb3e6002c02f384e26d02f3d17ed453fe7ddf44db604915edc1b`  
		Last Modified: Tue, 16 May 2017 23:39:27 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.9`

```console
$ docker pull neo4j@sha256:e5d86dd3505ed1b412d0d16248d06534424052d2da9fb546ca010189feba766e
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.9` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.2 MB (194194763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20d2716c3f7ba6eac3bd63488e2289a5275e26afba6d7434ddd8fb4bbd4a40df`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:04:26 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 23:19:43 GMT
ENV NEO4J_SHA256=044ed403776403f5c6a9b093d592b9b12d8964f605fb9e94f43408dca59202c3
# Tue, 16 May 2017 23:19:43 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.9-unix.tar.gz
# Tue, 16 May 2017 23:19:44 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.9-unix.tar.gz
# Tue, 16 May 2017 23:19:45 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:19:57 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.9-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:19:58 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:20:00 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.9-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:20:00 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:20:02 GMT
COPY file:77655caa958663cf4b6b261cb705cbea286374905edc612985f978867904bd01 in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:20:03 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 16 May 2017 23:20:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:20:05 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98de852c8e90dfa4dfe1c37315bf023ef7591602bf773d64d34f9435192bb483`  
		Last Modified: Tue, 16 May 2017 23:36:16 GMT  
		Size: 8.6 MB (8647763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb391009c3bac77cae8d6daf06548f51f2ddffd1fb84c67808bd288a7ff6284`  
		Last Modified: Tue, 16 May 2017 23:48:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f541588ad7068fed2366a7ca5ef86f9263228fd96fac891976625d9628cbf569`  
		Last Modified: Tue, 16 May 2017 23:48:48 GMT  
		Size: 58.8 MB (58750810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f7c103011bac3e968d25e337aaae3f4380d1efcd6373317e6acb1054958633`  
		Last Modified: Tue, 16 May 2017 23:48:40 GMT  
		Size: 714.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a68682655ccb1ff759ebb0cc6d7ce3b69be49073689162b0bcb4966757d7ae7`  
		Last Modified: Tue, 16 May 2017 23:48:40 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.9-enterprise`

```console
$ docker pull neo4j@sha256:e11408d54797e4f64b9375675b28aba92a225e7acd2333056dc58a8638596cc5
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.9-enterprise` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196741743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:647547ee3db0025c61d340829cd1a3fba47fa91c9376399f4c6f755f517c98ec`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:04:26 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 23:20:26 GMT
ENV NEO4J_SHA256=d99aa0d2e1ec8386721981441aa98d3d551d4c40dc1b51f0705519e5cd9ab14b
# Tue, 16 May 2017 23:20:27 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.9-unix.tar.gz
# Tue, 16 May 2017 23:20:27 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.9-unix.tar.gz
# Tue, 16 May 2017 23:20:28 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:20:43 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.9-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:20:44 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:20:45 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.9-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:20:46 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:20:47 GMT
COPY file:77655caa958663cf4b6b261cb705cbea286374905edc612985f978867904bd01 in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:20:48 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 16 May 2017 23:20:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:20:50 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98de852c8e90dfa4dfe1c37315bf023ef7591602bf773d64d34f9435192bb483`  
		Last Modified: Tue, 16 May 2017 23:36:16 GMT  
		Size: 8.6 MB (8647763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa6ebbaeeebd76c268afd199958c8c294d077a1202d730b107dcfe276a41ca4`  
		Last Modified: Tue, 16 May 2017 23:49:16 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06057811da1a83e66425de4ae78a62d162ee3a8fa9ea552cf9126003dea69a70`  
		Last Modified: Tue, 16 May 2017 23:49:23 GMT  
		Size: 61.3 MB (61297792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bba9655a861638810d09deb8f8e5249d9426d94057ae638781621f1b6760436`  
		Last Modified: Tue, 16 May 2017 23:49:17 GMT  
		Size: 711.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac73ed29ba42c3a5b1241db83c80132329d679a0afc0470c21289d44c49dcb9`  
		Last Modified: Tue, 16 May 2017 23:49:16 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.8`

```console
$ docker pull neo4j@sha256:1a2e0484da6b6ac3b0073f60e02859a840f8d51e62ea4f36574fe0e83d49aeb9
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.8` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.2 MB (194189351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b5d8cf25393c07ee817a3fdb74206e7d5e8d52d63d228db2048f6f6b3a8222a`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:04:26 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 23:18:12 GMT
ENV NEO4J_SHA256=a4e7f99b1820a750973e678af913fbdb3069188ef12ec69dd67aa49bd072a85f
# Tue, 16 May 2017 23:18:13 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.8-unix.tar.gz
# Tue, 16 May 2017 23:18:13 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.8-unix.tar.gz
# Tue, 16 May 2017 23:18:14 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:18:34 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.8-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:18:35 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:18:36 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.8-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:18:37 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:18:38 GMT
COPY file:77655caa958663cf4b6b261cb705cbea286374905edc612985f978867904bd01 in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:18:39 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 16 May 2017 23:18:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:18:41 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98de852c8e90dfa4dfe1c37315bf023ef7591602bf773d64d34f9435192bb483`  
		Last Modified: Tue, 16 May 2017 23:36:16 GMT  
		Size: 8.6 MB (8647763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8089d61c3f204431f774ba81f5472f6d4e4eeb723b437b035fed08736fcd51fe`  
		Last Modified: Tue, 16 May 2017 23:47:29 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce5111ebff2fc5cd5b899d778231325089ff94b02bf7ebe5136ca7cb53d2c010`  
		Last Modified: Tue, 16 May 2017 23:47:35 GMT  
		Size: 58.7 MB (58745402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d58d05c8230fcddab450c79c83afb2ad06fc658e201ac80aeacc5f3b2fc8b65e`  
		Last Modified: Tue, 16 May 2017 23:47:28 GMT  
		Size: 711.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71a9dacb321d72d4e69319b2aa25371b983bafe0623a4e3efdf09762edeafc23`  
		Last Modified: Tue, 16 May 2017 23:47:28 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.8-enterprise`

```console
$ docker pull neo4j@sha256:651516bb808aa38a57a52946f27b4fc759102139f6c6fbbb79b7465a1295247b
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.8-enterprise` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196735560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c1e25975258f6acfecf9af83317b72def695ece3a0878a6cf828d772de16b84`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:04:26 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 23:19:03 GMT
ENV NEO4J_SHA256=2229b014399217b735d9844e4d02e62d5dbfe15c67dc07adc780fc523e6d010e
# Tue, 16 May 2017 23:19:03 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.8-unix.tar.gz
# Tue, 16 May 2017 23:19:04 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.8-unix.tar.gz
# Tue, 16 May 2017 23:19:05 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:19:14 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.8-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:19:14 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:19:16 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.8-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:19:17 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:19:18 GMT
COPY file:77655caa958663cf4b6b261cb705cbea286374905edc612985f978867904bd01 in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:19:19 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 16 May 2017 23:19:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:19:21 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98de852c8e90dfa4dfe1c37315bf023ef7591602bf773d64d34f9435192bb483`  
		Last Modified: Tue, 16 May 2017 23:36:16 GMT  
		Size: 8.6 MB (8647763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e61f4d9634f8b43b70a7448185bfcff24b9d5cc97a48b781e1e2e5c010c9e5e`  
		Last Modified: Tue, 16 May 2017 23:48:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ab768cd8838ae854212654dafc4cfddebb209613c4f696c6078f932058e6ea`  
		Last Modified: Tue, 16 May 2017 23:48:11 GMT  
		Size: 61.3 MB (61291610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:182ba3a873e04c0092b8ed5b7bf022a66ea6fa01ee774d46e2372e2835fe05a3`  
		Last Modified: Tue, 16 May 2017 23:48:03 GMT  
		Size: 710.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9ada176c9fb00675809d1f8a7e007c768983c8c74b0f993ad952733a56e8e0`  
		Last Modified: Tue, 16 May 2017 23:48:03 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.7`

```console
$ docker pull neo4j@sha256:cf5cf4e035d6b94ef3a563d11c1cefeb08f374853b0e0e466b14abd97ef4132f
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.2 MB (194189317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a36080723ff14d16e0337ec71b7ca427861e938bf011c243b39df0e136d6bc0`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:04:26 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 23:16:43 GMT
ENV NEO4J_SHA256=660f69e2dce24b69c6abe25fd33b549c8e232b965bef4ca94acb9f63cc15e46e
# Tue, 16 May 2017 23:16:44 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.7-unix.tar.gz
# Tue, 16 May 2017 23:16:45 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.7-unix.tar.gz
# Tue, 16 May 2017 23:16:46 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:16:59 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.7-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:17:00 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:17:01 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.7-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:17:02 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:17:04 GMT
COPY file:cb4000bfe72fb1762262e9e56a951af2b641306dea07b6f13b6623ef1f84fc92 in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:17:05 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 16 May 2017 23:17:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:17:07 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98de852c8e90dfa4dfe1c37315bf023ef7591602bf773d64d34f9435192bb483`  
		Last Modified: Tue, 16 May 2017 23:36:16 GMT  
		Size: 8.6 MB (8647763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:970f11af1bf9c1d6ec3283d3e08a0d0e4331633537a6dbf911a1238471035db1`  
		Last Modified: Tue, 16 May 2017 23:46:20 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:809d167067d37f7352c4d762acad6fc2112d850b1adaa3532b0b2cab72872cff`  
		Last Modified: Tue, 16 May 2017 23:46:27 GMT  
		Size: 58.7 MB (58745382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3af896e93a07ac5cf003216a01165903619eb6e9e0113bea2c075f5c31870817`  
		Last Modified: Tue, 16 May 2017 23:46:21 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:056185e103b7a1d08f72adf3a06a0103d8af5d02dd059616c0488ab0c1e5fa32`  
		Last Modified: Tue, 16 May 2017 23:46:20 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.7-enterprise`

```console
$ docker pull neo4j@sha256:897e2ddd5a24dc70201dca8b241259992b93d59eeca1844d98d746a28dfa1967
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.7-enterprise` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196734615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4ca5901fb71093913906be443b0443991028afbc8b9b4daaba314f964bbb0c9`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:04:26 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 23:17:28 GMT
ENV NEO4J_SHA256=64b2607f173db5e11671eb39087d06bca6d959e6a77f33a5c0ec3a4efd2b9d2b
# Tue, 16 May 2017 23:17:29 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.7-unix.tar.gz
# Tue, 16 May 2017 23:17:30 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.7-unix.tar.gz
# Tue, 16 May 2017 23:17:31 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:17:43 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.7-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:17:44 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:17:45 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.7-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:17:46 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:17:48 GMT
COPY file:cb4000bfe72fb1762262e9e56a951af2b641306dea07b6f13b6623ef1f84fc92 in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:17:49 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 16 May 2017 23:17:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:17:51 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98de852c8e90dfa4dfe1c37315bf023ef7591602bf773d64d34f9435192bb483`  
		Last Modified: Tue, 16 May 2017 23:36:16 GMT  
		Size: 8.6 MB (8647763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629bc1ce9a7d2a7d62fb242d4c72c569ee02961acdcacbcd56e0798064195c97`  
		Last Modified: Tue, 16 May 2017 23:46:54 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccbf5a1bbee314f46a9dd7d470fe3d2f791240eadffecc7bb04c562fd19eb097`  
		Last Modified: Tue, 16 May 2017 23:47:01 GMT  
		Size: 61.3 MB (61290679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c22c89508882de2cb89cc4b89c006d1177974cd32975a1dfcbcf8f4eacc52db5`  
		Last Modified: Tue, 16 May 2017 23:46:54 GMT  
		Size: 712.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09186254ae7ef9d2d22c0dacae49486b596727cc9fa47d06f7bede497a5b4659`  
		Last Modified: Tue, 16 May 2017 23:46:55 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.6`

```console
$ docker pull neo4j@sha256:33b2eec4f003fdaf992fe191a6ce3af42f5a57f93e19a283807baef3aa5b5c81
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.2 MB (194186912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f5867031c9c8a53db49281e2683e90ff56602cd7af470dffdc9dde213b3530c`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:04:26 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 23:15:04 GMT
ENV NEO4J_SHA256=738263c6785095f56b9051904ff2d1b30a13f680a748f483a450da63b04a5667
# Tue, 16 May 2017 23:15:05 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.6-unix.tar.gz
# Tue, 16 May 2017 23:15:06 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.6-unix.tar.gz
# Tue, 16 May 2017 23:15:07 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:15:19 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.6-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:15:20 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:15:21 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.6-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:15:22 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:15:23 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:15:25 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 16 May 2017 23:15:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:15:26 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98de852c8e90dfa4dfe1c37315bf023ef7591602bf773d64d34f9435192bb483`  
		Last Modified: Tue, 16 May 2017 23:36:16 GMT  
		Size: 8.6 MB (8647763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9290accfc22b2fb0e842e0799cda4c18d472662ba8cba93d7c97bc98179e0efe`  
		Last Modified: Tue, 16 May 2017 23:45:09 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:369565a0016fe6ecabb224e369fc3179c04c9554383affd9880f2f3f8944e059`  
		Last Modified: Tue, 16 May 2017 23:45:16 GMT  
		Size: 58.7 MB (58743019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2fa199fa051c5ebd27024cbfa01a7b3e981d54bf83c15a1046ade907c087441`  
		Last Modified: Tue, 16 May 2017 23:45:09 GMT  
		Size: 712.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1055a8b40ece5de84257db221ddc65a74d0c03f65416c30f08bb9c9954217e16`  
		Last Modified: Tue, 16 May 2017 23:45:10 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.6-enterprise`

```console
$ docker pull neo4j@sha256:d0d096b163428ad2a6ee9d732dffa1ddb5d74f73d40a5dd6238406617458d1e4
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.6-enterprise` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196729433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd3e54602f4f5b2f382a4b4171b557948a8ff817c53dc44a204855dec4ee6e9e`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:04:26 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 23:15:47 GMT
ENV NEO4J_SHA256=07591aa24b3925f2cfea616ce9a28d954ebea6c205e77dda82b322238d1dbc3f
# Tue, 16 May 2017 23:15:48 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.6-unix.tar.gz
# Tue, 16 May 2017 23:15:49 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.6-unix.tar.gz
# Tue, 16 May 2017 23:15:50 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:16:14 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.6-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:16:15 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:16:17 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.6-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:16:18 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:16:19 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:16:20 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 16 May 2017 23:16:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:16:22 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98de852c8e90dfa4dfe1c37315bf023ef7591602bf773d64d34f9435192bb483`  
		Last Modified: Tue, 16 May 2017 23:36:16 GMT  
		Size: 8.6 MB (8647763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8941d6b0fe00af9cc09d20299f527a2ca13eb14bad3b8ef5730cfdafe5cb06`  
		Last Modified: Tue, 16 May 2017 23:45:44 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81614a020b0efbd3d52c5deb136936887276baed6486a7f9399d20a78a6cfa06`  
		Last Modified: Tue, 16 May 2017 23:45:51 GMT  
		Size: 61.3 MB (61285540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05eee7073dbc23ba4f27d889593a6aed75274ecbf665ba0e9cd681b6fb4565e5`  
		Last Modified: Tue, 16 May 2017 23:45:45 GMT  
		Size: 712.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf2f03f0596fc2116b734c26e1c20b8ef0b4f997966b3b1748669e95c070b6e1`  
		Last Modified: Tue, 16 May 2017 23:45:45 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.5`

```console
$ docker pull neo4j@sha256:f9f1cbc57b64eea3d83872ef65c907387117604a0edb766e9c2ab3160c5ff227
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.2 MB (194153129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59dd4448fb8068cd272654dc139be81bd2f168ce82275385eb777a0f21ae4539`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:04:26 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 23:13:35 GMT
ENV NEO4J_SHA256=969159bddc0526681795f039e4250d728c8b60c5e421450259caacfc488c18cf
# Tue, 16 May 2017 23:13:36 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.5-unix.tar.gz
# Tue, 16 May 2017 23:13:37 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.5-unix.tar.gz
# Tue, 16 May 2017 23:13:38 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:13:51 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.5-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:13:52 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:13:53 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.5-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:13:54 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:13:55 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:13:56 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 16 May 2017 23:13:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:13:59 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98de852c8e90dfa4dfe1c37315bf023ef7591602bf773d64d34f9435192bb483`  
		Last Modified: Tue, 16 May 2017 23:36:16 GMT  
		Size: 8.6 MB (8647763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a9115ad954b07edd1fd6771db8f77dac5e1e7920477aaf7bdc6ea5d4ba98e8`  
		Last Modified: Tue, 16 May 2017 23:44:00 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce8564ab2d95598f39ef964437de95bd0d27e6a64f2e011a89cf2c60ad5fadbd`  
		Last Modified: Tue, 16 May 2017 23:44:06 GMT  
		Size: 58.7 MB (58709233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f24b7b4f973c307837af91dd4c1e54fe0d80ce0e8bfc3f260f84abd4645cb92`  
		Last Modified: Tue, 16 May 2017 23:44:00 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de1d3aef926c03c308fad8686a86ba2453a945f47cf257cbb91c544a7faa32e`  
		Last Modified: Tue, 16 May 2017 23:44:00 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.5-enterprise`

```console
$ docker pull neo4j@sha256:4b5ea8432c77d143d0a6222010c95ea863bf5c3a6d349d3846dcaa3ca2085dba
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.5-enterprise` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196683667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9457f6968fa6a91fca96e0caf1b4f2ae7f2a5e6372e5220349578fec22c44daa`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:04:26 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 23:14:20 GMT
ENV NEO4J_SHA256=e12b962b01f5e3d1ab72f52aa311cfb270557ebca13874efb049b15b0cbfa471
# Tue, 16 May 2017 23:14:21 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.5-unix.tar.gz
# Tue, 16 May 2017 23:14:22 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.5-unix.tar.gz
# Tue, 16 May 2017 23:14:23 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:14:35 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.5-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:14:36 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:14:38 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.5-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:14:39 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:14:40 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:14:41 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 16 May 2017 23:14:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:14:43 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98de852c8e90dfa4dfe1c37315bf023ef7591602bf773d64d34f9435192bb483`  
		Last Modified: Tue, 16 May 2017 23:36:16 GMT  
		Size: 8.6 MB (8647763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e14b4c5c2904dbe5d6308d578339489ef6a354a614789966e50515160d9824`  
		Last Modified: Tue, 16 May 2017 23:44:33 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd5eed9e47f8fde4c344b860bac439c2b3045b7600c1f8377049efcbbea1f38`  
		Last Modified: Tue, 16 May 2017 23:44:40 GMT  
		Size: 61.2 MB (61239772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b97618cb123d66ee36c6281269ebe0cb28716c2f60ac69b8ac77ed0369310bc`  
		Last Modified: Tue, 16 May 2017 23:44:34 GMT  
		Size: 714.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3434aac3230d54e62e47e0eb7a1706d2a62e089476956fccbdc04a0e72c43420`  
		Last Modified: Tue, 16 May 2017 23:44:33 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.4`

```console
$ docker pull neo4j@sha256:abc2b442da5fada5db50e71c06bcee6893fb6f80604877696b087229854c2fa6
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.1 MB (194125342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf3402750aac6e1cd9bfecbea0be78c3e96dc97744a416a02dcc3f79e9a17a81`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:04:26 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 23:11:58 GMT
ENV NEO4J_SHA256=4a4b12e9d97771d9c293ee7786ef08ff7ad0f14a5db0f7fc01e8675e476f644b
# Tue, 16 May 2017 23:11:59 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.4-unix.tar.gz
# Tue, 16 May 2017 23:11:59 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.4-unix.tar.gz
# Tue, 16 May 2017 23:12:01 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:12:22 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.4-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:12:23 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:12:24 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.4-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:12:25 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:12:27 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:12:28 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 16 May 2017 23:12:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:12:30 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98de852c8e90dfa4dfe1c37315bf023ef7591602bf773d64d34f9435192bb483`  
		Last Modified: Tue, 16 May 2017 23:36:16 GMT  
		Size: 8.6 MB (8647763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8de7fb2a626a27e5686f3e4cd2d79679c08ca80b5c904f9a49eb5acf73b0125c`  
		Last Modified: Tue, 16 May 2017 23:42:47 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f0ac768cd7e281691ef94e079fbde366880bb11c3e11a44326d0307eb7dd064`  
		Last Modified: Tue, 16 May 2017 23:42:55 GMT  
		Size: 58.7 MB (58681449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09a453937279f7e0c3895fba8ce3b145b611370b8f1f7320f125bea885754aa8`  
		Last Modified: Tue, 16 May 2017 23:42:47 GMT  
		Size: 712.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:592aa3c49f40a116ae7770d755e9ef05725ac7ad1e5974cda7ba379babaa0e8c`  
		Last Modified: Tue, 16 May 2017 23:42:47 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.4-enterprise`

```console
$ docker pull neo4j@sha256:6d391253f3b37fbb862e47d1bfbda517efa9671a48b5f4736e58b11637ff99d1
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.4-enterprise` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196655739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3da04abb438206c35bdee0158e1885dccd06c9ef778b9cfeb31c7fad50bf1953`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:04:26 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 23:12:51 GMT
ENV NEO4J_SHA256=640095b153eff5e9f81120d73a110e7d69b2868fc922cd9f54318d203b26f3c1
# Tue, 16 May 2017 23:12:52 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.4-unix.tar.gz
# Tue, 16 May 2017 23:12:52 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.4-unix.tar.gz
# Tue, 16 May 2017 23:12:53 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:13:07 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.4-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:13:08 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:13:09 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.4-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:13:10 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:13:12 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:13:13 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 16 May 2017 23:13:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:13:14 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98de852c8e90dfa4dfe1c37315bf023ef7591602bf773d64d34f9435192bb483`  
		Last Modified: Tue, 16 May 2017 23:36:16 GMT  
		Size: 8.6 MB (8647763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8de89bf0e90c624fd5c2767179e8712eb04714cbb44ff637d6842992ecda204`  
		Last Modified: Tue, 16 May 2017 23:43:25 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:392df1148a281db2d934e1a0781df2bc22ab81d9284b690ea02ce6b95001221e`  
		Last Modified: Tue, 16 May 2017 23:43:31 GMT  
		Size: 61.2 MB (61211845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3d4ca13a243e7454b6b0d978b602372a201d2950f3fb64d19d6cbcadb0a16a4`  
		Last Modified: Tue, 16 May 2017 23:43:25 GMT  
		Size: 712.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe18cda2da0401067ecb9dd1e6ca9b0dcfff028e77adbc4ef48eb7e87c4e66f`  
		Last Modified: Tue, 16 May 2017 23:43:25 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.3`

```console
$ docker pull neo4j@sha256:3f02c9f938fbf62d25a75d10ad16efcc9d78c580e4aa0636276fef7bf116f60a
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.7 MB (194667632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd33bb9fa283a26490448e2a5d9986b1da754a11a7d7e5fb61d951b2ed7bf72a`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:04:26 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 23:10:30 GMT
ENV NEO4J_SHA256=01559c55055516a42ee2dd100137b6b55d63f02959a3c6c6db7a152e045828d9
# Tue, 16 May 2017 23:10:31 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.3-unix.tar.gz
# Tue, 16 May 2017 23:10:32 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.3-unix.tar.gz
# Tue, 16 May 2017 23:10:33 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:10:45 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.3-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:10:46 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:10:47 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.3-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:10:48 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:10:50 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:10:51 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 16 May 2017 23:10:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:10:53 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98de852c8e90dfa4dfe1c37315bf023ef7591602bf773d64d34f9435192bb483`  
		Last Modified: Tue, 16 May 2017 23:36:16 GMT  
		Size: 8.6 MB (8647763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5538b4155f24952da891f14fbc2d69849b9bd664eb96b5d820f800e7b6fd4f58`  
		Last Modified: Tue, 16 May 2017 23:41:36 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20d17c8536750ae59b149348c19295c087aba4ba785a06c0f5dcf7c1680a2fa`  
		Last Modified: Tue, 16 May 2017 23:41:42 GMT  
		Size: 59.2 MB (59223735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a82fba73399ea7d067d27d3b6ec81d5ba606b4171a15bed7dfa081d9f4528467`  
		Last Modified: Tue, 16 May 2017 23:41:36 GMT  
		Size: 715.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:441310e80dfef8b883fdf73b3ff5fe881b30349fa3ed4a485b0d1f3a4b3261a3`  
		Last Modified: Tue, 16 May 2017 23:41:36 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.3-enterprise`

```console
$ docker pull neo4j@sha256:3b3652cb06dbd837108782a668694b250edddd5ad4d43f379bdffede9375ca9b
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.3-enterprise` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.1 MB (197077631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c85801af17642786dd4bc02c7617a3d9da352b515634568b8d78d46ae99d471a`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:04:26 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 23:11:14 GMT
ENV NEO4J_SHA256=864b7ebef3a12844c809e75016aa951c60ac90fb0d075a595108824859ce7875
# Tue, 16 May 2017 23:11:15 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.3-unix.tar.gz
# Tue, 16 May 2017 23:11:15 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.3-unix.tar.gz
# Tue, 16 May 2017 23:11:16 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:11:29 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.3-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:11:30 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:11:31 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.3-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:11:32 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:11:34 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:11:35 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 16 May 2017 23:11:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:11:37 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98de852c8e90dfa4dfe1c37315bf023ef7591602bf773d64d34f9435192bb483`  
		Last Modified: Tue, 16 May 2017 23:36:16 GMT  
		Size: 8.6 MB (8647763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58e7280bcc44a7466fee07e036b8e2eda9af93f21dd575affdad259f38d7384`  
		Last Modified: Tue, 16 May 2017 23:42:11 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:824836553c74522e27037f882be94615f175d4044bc6c90bdfef6258d76b4d3e`  
		Last Modified: Tue, 16 May 2017 23:42:20 GMT  
		Size: 61.6 MB (61633737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abaf766fabe2b7797eeed58f07c7d20ff66abaaecb8aa84abe13cfddb89a798f`  
		Last Modified: Tue, 16 May 2017 23:42:11 GMT  
		Size: 712.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d83cfe228848fae612bde74fd8f0ed56ebb8bbb66a0a230002f4f0a3cbc22e6`  
		Last Modified: Tue, 16 May 2017 23:42:12 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.2`

```console
$ docker pull neo4j@sha256:aae6d5bb6679caa9fce35553a83b8097ab3092dfdc0d1d772db0cdc26532088a
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.6 MB (194551333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05438d5b175ce8dda46f90b051e59b9be691f047f0e54ee58658844491b70ed6`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:04:26 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 23:09:02 GMT
ENV NEO4J_SHA256=37e24d95c914c54d5cbbe99473d4beef89da78adb2db04eb87258a489225932a
# Tue, 16 May 2017 23:09:03 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.2-unix.tar.gz
# Tue, 16 May 2017 23:09:03 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.2-unix.tar.gz
# Tue, 16 May 2017 23:09:04 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:09:15 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.2-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:09:16 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:09:18 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.2-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:09:19 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:09:20 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:09:21 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 16 May 2017 23:09:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:09:23 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98de852c8e90dfa4dfe1c37315bf023ef7591602bf773d64d34f9435192bb483`  
		Last Modified: Tue, 16 May 2017 23:36:16 GMT  
		Size: 8.6 MB (8647763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f50e4722595cbe17d08adcc73cd50a34003ecccdcfc74ab1673b3f1ba038518`  
		Last Modified: Tue, 16 May 2017 23:40:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f6e03c4c5f5b8553e38bbe9f091e32d9a30a2b147d5009d0ffa1024ed8d1a5`  
		Last Modified: Tue, 16 May 2017 23:40:30 GMT  
		Size: 59.1 MB (59107439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b57c76648cd39bb96ded46dc33647b48b23ae018060c1fcb0ad9f829bf66056`  
		Last Modified: Tue, 16 May 2017 23:40:23 GMT  
		Size: 711.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cf864332b44574b5a763c95749896d59789321fc2fb6efe627f560c833f4e2`  
		Last Modified: Tue, 16 May 2017 23:40:23 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.2-enterprise`

```console
$ docker pull neo4j@sha256:6054d695ae4cdeddc51fb93c55889c87cbc2753a4a017949597a76fb1c79c7c8
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.2-enterprise` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.0 MB (196997443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68c9101cea0e1700f54cac84d831c0a3b838db5bf5fc15994df258041d96dc3c`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:04:26 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 23:09:44 GMT
ENV NEO4J_SHA256=ea80cfca918dd70ea5d10a125f5c3a5be02e45dd497b67dfa2d22770a891acea
# Tue, 16 May 2017 23:09:45 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.2-unix.tar.gz
# Tue, 16 May 2017 23:09:46 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.2-unix.tar.gz
# Tue, 16 May 2017 23:09:47 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:10:02 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.2-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:10:02 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:10:04 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.2-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:10:05 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:10:06 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:10:07 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 16 May 2017 23:10:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:10:09 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98de852c8e90dfa4dfe1c37315bf023ef7591602bf773d64d34f9435192bb483`  
		Last Modified: Tue, 16 May 2017 23:36:16 GMT  
		Size: 8.6 MB (8647763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5c9d9c211e28ebbe72f1720490eab4d4213329e793c56f06686d8c0a7fe4c9`  
		Last Modified: Tue, 16 May 2017 23:40:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79389a51654177cadc05bcad55544a2cb6ab773f09e829f93ad589c1496186c3`  
		Last Modified: Tue, 16 May 2017 23:41:08 GMT  
		Size: 61.6 MB (61553549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e05960b6a7e010b7c4e7c9e9faa03c33bd5d84b89bdfe7296152b492b19a6d59`  
		Last Modified: Tue, 16 May 2017 23:40:59 GMT  
		Size: 712.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ee374b059965bf50db3f4646c8acb2bd9d0b470cfd2f59ca2f3f192430efd3`  
		Last Modified: Tue, 16 May 2017 23:40:59 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.1`

```console
$ docker pull neo4j@sha256:b9e3f60185411aff7c003093ec6c4867527f09eda75af75f8564baa2a99d7144
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.5 MB (194471147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9884c3c411fd2d8896caee0c55c9e9a9f34adc09ce910a7e4d5ec3eb803d945d`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:04:26 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 23:05:55 GMT
ENV NEO4J_SHA256=7b2f30d73af107eacd9a3a619475ef448a08eecb2cdb42ab1f8a38d091c70ecb
# Tue, 16 May 2017 23:05:56 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.1-unix.tar.gz
# Tue, 16 May 2017 23:05:57 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.1-unix.tar.gz
# Tue, 16 May 2017 23:05:58 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:06:20 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.1-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:06:21 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:06:23 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.1-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:06:24 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:06:25 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:06:26 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 16 May 2017 23:06:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:06:28 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98de852c8e90dfa4dfe1c37315bf023ef7591602bf773d64d34f9435192bb483`  
		Last Modified: Tue, 16 May 2017 23:36:16 GMT  
		Size: 8.6 MB (8647763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c47bf160f73885d892e9d149a209888b57928f250d33e7f716291240bfc5a309`  
		Last Modified: Tue, 16 May 2017 23:37:23 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6e1183a51f6ced69f66801394ec9f79780ccfdd3d4676da238af8ba5275afd3`  
		Last Modified: Tue, 16 May 2017 23:37:29 GMT  
		Size: 59.0 MB (59027254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd3e8eac7a9b15141ac84983dd575f1e1845d4caf0f5a8a47827be87a0d5e17`  
		Last Modified: Tue, 16 May 2017 23:37:23 GMT  
		Size: 712.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb207e660f0bde6c417cc036c253be5b243f8c070c7fd556b465b9e1a28c8ce0`  
		Last Modified: Tue, 16 May 2017 23:37:22 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.1-enterprise`

```console
$ docker pull neo4j@sha256:4343005c12a2c60fd5cc2c9918b4b6fad217bef9b12c89c5eb196951e9af9e78
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.1-enterprise` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196909742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b3b92b1780a46d892b5d9b22692276831a1c99fba65fe4794e7f5ad2b1e704d`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:04:26 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 23:06:49 GMT
ENV NEO4J_SHA256=93f0950b0c3a5a604f80183814b7cda2988a652e9278159c47d036daa96e3d29
# Tue, 16 May 2017 23:06:50 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.1-unix.tar.gz
# Tue, 16 May 2017 23:06:51 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.1-unix.tar.gz
# Tue, 16 May 2017 23:06:52 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:07:04 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.1-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:07:05 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:07:06 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.1-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:07:07 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:07:08 GMT
COPY file:1cbde912429223690d48be2e95a48b785a8c4463fcce7694554d7462d6d4eaae in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:07:09 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 16 May 2017 23:07:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:07:11 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98de852c8e90dfa4dfe1c37315bf023ef7591602bf773d64d34f9435192bb483`  
		Last Modified: Tue, 16 May 2017 23:36:16 GMT  
		Size: 8.6 MB (8647763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3defea7b6e075eb24f8ee95ac992a9e0341928f862224d9f9606ffa840ec55`  
		Last Modified: Tue, 16 May 2017 23:37:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a46061cf473e43b7e305d3f203a39a525397c2a0fafccea400af4d3dbf272bbb`  
		Last Modified: Tue, 16 May 2017 23:38:04 GMT  
		Size: 61.5 MB (61465849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79a5282bc905b62ac21420a292315b34e3e293916fa8490dde291d4cd4a5d78`  
		Last Modified: Tue, 16 May 2017 23:37:57 GMT  
		Size: 713.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e6e9b8bf7b160d3cb5647f8b81a84fceb71123a2ca0836e0a18e29bdf00edf`  
		Last Modified: Tue, 16 May 2017 23:37:57 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.0`

```console
$ docker pull neo4j@sha256:34302da4c9f27b2dae32650cc39e872529d22a5443d49192f52113dfc0938fae
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.1 MB (194057781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29ba6aaf9bd5ddac29ec313a0e53acde3d91f244f50d36f8a656f91ab68f99da`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:04:26 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 23:04:26 GMT
ENV NEO4J_SHA256=88fee93884700dae6a1f870dd84b3da9d094db33d57db1c88904954ef2cb4830
# Tue, 16 May 2017 23:04:27 GMT
ENV NEO4J_TARBALL=neo4j-community-2.3.0-unix.tar.gz
# Tue, 16 May 2017 23:04:28 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.0-unix.tar.gz
# Tue, 16 May 2017 23:04:29 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:04:42 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:04:43 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:04:45 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-2.3.0-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:04:46 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:04:47 GMT
COPY file:cb4000bfe72fb1762262e9e56a951af2b641306dea07b6f13b6623ef1f84fc92 in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:04:48 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 16 May 2017 23:04:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:04:50 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98de852c8e90dfa4dfe1c37315bf023ef7591602bf773d64d34f9435192bb483`  
		Last Modified: Tue, 16 May 2017 23:36:16 GMT  
		Size: 8.6 MB (8647763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366972e96a3a56df6252525d22051cfab72c37e184317be660f4a70a64a8bf6a`  
		Last Modified: Tue, 16 May 2017 23:36:12 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecc67f7538706565c9f4e3e0173e2fc3a8fff59cebdf014aa24767c3df822b67`  
		Last Modified: Tue, 16 May 2017 23:36:20 GMT  
		Size: 58.6 MB (58613847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45406f3105cfbe1831c7bf77d2f33507ea9c968f98a060926320692958b8d42`  
		Last Modified: Tue, 16 May 2017 23:36:12 GMT  
		Size: 711.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7add5edaf6ae205c636b148705c3c585423cd7010a69018e1cde71d1624a956`  
		Last Modified: Tue, 16 May 2017 23:36:12 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neo4j:2.3.0-enterprise`

```console
$ docker pull neo4j@sha256:75f8781c556993ccf260d1c8849c950dd9f446bcf86f1d6fe8eec040334984a4
```

-	Platforms:
	-	linux; amd64

### `neo4j:2.3.0-enterprise` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.5 MB (196514466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18f4d908f1ae4e6f0074921929fdd8144bb566fc48a27d0529af35fbc99e90ca`
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
# Tue, 16 May 2017 17:26:16 GMT
ENV JAVA_VERSION=8u131
# Tue, 16 May 2017 17:26:17 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Tue, 16 May 2017 17:26:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 16 May 2017 17:27:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 May 2017 17:27:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 May 2017 23:04:26 GMT
RUN apt-get update --quiet --quiet     && apt-get install --quiet --quiet --no-install-recommends lsof     && rm -rf /var/lib/apt/lists/*
# Tue, 16 May 2017 23:05:12 GMT
ENV NEO4J_SHA256=0d3f370f8141d8bc37065f843af190c405cba098d1bb82065ffc0cb5b99950b7
# Tue, 16 May 2017 23:05:13 GMT
ENV NEO4J_TARBALL=neo4j-enterprise-2.3.0-unix.tar.gz
# Tue, 16 May 2017 23:05:13 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.0-unix.tar.gz
# Tue, 16 May 2017 23:05:15 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 16 May 2017 23:05:27 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.0-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256} ${NEO4J_TARBALL}" | sha256sum --check --quiet -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}
# Tue, 16 May 2017 23:05:27 GMT
WORKDIR /var/lib/neo4j
# Tue, 16 May 2017 23:05:29 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-2.3.0-unix.tar.gz
RUN mv data /data     && ln --symbolic /data
# Tue, 16 May 2017 23:05:30 GMT
VOLUME [/data]
# Tue, 16 May 2017 23:05:31 GMT
COPY file:cb4000bfe72fb1762262e9e56a951af2b641306dea07b6f13b6623ef1f84fc92 in /docker-entrypoint.sh 
# Tue, 16 May 2017 23:05:32 GMT
EXPOSE 7473/tcp 7474/tcp
# Tue, 16 May 2017 23:05:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 May 2017 23:05:34 GMT
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
	-	`sha256:b9595cab938221c05df7f0367bd0b7b5fde6c8e94d9e9b7e33eb989f958e0fd0`  
		Last Modified: Tue, 16 May 2017 17:44:01 GMT  
		Size: 54.1 MB (54078818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2d57cc0364dc0abc08114590f69bdde5bd72d829564816904d7ae9474374c3`  
		Last Modified: Tue, 16 May 2017 17:43:53 GMT  
		Size: 289.7 KB (289652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98de852c8e90dfa4dfe1c37315bf023ef7591602bf773d64d34f9435192bb483`  
		Last Modified: Tue, 16 May 2017 23:36:16 GMT  
		Size: 8.6 MB (8647763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1e9c4083a528546b9102c8ab04d61b7b1b1b3135752f6581142c87011ec420`  
		Last Modified: Tue, 16 May 2017 23:36:48 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:101669ff59cbb80d0694b72637a403469004ffd63fa41e45c25a66e28a3bd25d`  
		Last Modified: Tue, 16 May 2017 23:36:55 GMT  
		Size: 61.1 MB (61070527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad96634cc43e29572fa024c5b837b0c0a4c664a01e5b418dd5829e7e87af26e7`  
		Last Modified: Tue, 16 May 2017 23:36:49 GMT  
		Size: 715.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ff3a1c56f9de04c2a098dc4830de3d5cbcec92885dd0778134a598fd2dc23db`  
		Last Modified: Tue, 16 May 2017 23:36:48 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
