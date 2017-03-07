<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `storm`

-	[`storm:0.9.7`](#storm097)
-	[`storm:0.9`](#storm09)
-	[`storm:0.10.2`](#storm0102)
-	[`storm:0.10`](#storm010)
-	[`storm:1.0.3`](#storm103)
-	[`storm:1.0`](#storm10)
-	[`storm:latest`](#stormlatest)

## `storm:0.9.7`

```console
$ docker pull storm@sha256:84680a0f95ceb13d5c5d0e9cae7ddf8aa8448c0e52bbf025718feef4c5f5eb13
```

-	Platforms:
	-	linux; amd64

### `storm:0.9.7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.2 MB (88204257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1c4947d179cd1242b9333126175203280f97cf6c2d426c5bee7b7734180d169`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

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
# Tue, 07 Mar 2017 20:37:13 GMT
RUN apk add --no-cache     bash     python     su-exec
# Tue, 07 Mar 2017 20:37:13 GMT
ENV STORM_USER=storm
# Tue, 07 Mar 2017 20:37:14 GMT
ENV STORM_CONF_DIR=/conf
# Tue, 07 Mar 2017 20:37:14 GMT
ENV STORM_DATA_DIR=/data
# Tue, 07 Mar 2017 20:37:15 GMT
ENV STORM_LOG_DIR=/logs
# Tue, 07 Mar 2017 20:37:16 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Tue, 07 Mar 2017 20:37:17 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Tue, 07 Mar 2017 20:37:29 GMT
ARG DISTRO_NAME=apache-storm-0.9.7
# Tue, 07 Mar 2017 20:37:35 GMT
# ARGS: DISTRO_NAME=apache-storm-0.9.7 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Tue, 07 Mar 2017 20:37:36 GMT
WORKDIR /apache-storm-0.9.7
# Tue, 07 Mar 2017 20:37:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-0.9.7/bin
# Tue, 07 Mar 2017 20:37:37 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Tue, 07 Mar 2017 20:37:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
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
	-	`sha256:7e0d1a2d5a704e2fcc9faeecb11a283ff970bcd59cbb3e19a40b8aa6c3e22529`  
		Last Modified: Tue, 07 Mar 2017 20:38:25 GMT  
		Size: 11.3 MB (11330866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2441f44d538396be8c7b9a8e557d7af38d4e3a6ad1fa6be11600c732ff070e8`  
		Last Modified: Tue, 07 Mar 2017 20:38:20 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad88f7c729861cc45fa8a7c5ff6ad72dfb0a60aae32b85321541c3694cc289a0`  
		Last Modified: Tue, 07 Mar 2017 20:39:10 GMT  
		Size: 21.2 MB (21155101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:208eb1f3a867b877ad35975ab6ad4afcc3334feb6773443b64127ab56270bf6a`  
		Last Modified: Tue, 07 Mar 2017 20:39:08 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:0.9`

```console
$ docker pull storm@sha256:84680a0f95ceb13d5c5d0e9cae7ddf8aa8448c0e52bbf025718feef4c5f5eb13
```

-	Platforms:
	-	linux; amd64

### `storm:0.9` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.2 MB (88204257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1c4947d179cd1242b9333126175203280f97cf6c2d426c5bee7b7734180d169`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

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
# Tue, 07 Mar 2017 20:37:13 GMT
RUN apk add --no-cache     bash     python     su-exec
# Tue, 07 Mar 2017 20:37:13 GMT
ENV STORM_USER=storm
# Tue, 07 Mar 2017 20:37:14 GMT
ENV STORM_CONF_DIR=/conf
# Tue, 07 Mar 2017 20:37:14 GMT
ENV STORM_DATA_DIR=/data
# Tue, 07 Mar 2017 20:37:15 GMT
ENV STORM_LOG_DIR=/logs
# Tue, 07 Mar 2017 20:37:16 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Tue, 07 Mar 2017 20:37:17 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Tue, 07 Mar 2017 20:37:29 GMT
ARG DISTRO_NAME=apache-storm-0.9.7
# Tue, 07 Mar 2017 20:37:35 GMT
# ARGS: DISTRO_NAME=apache-storm-0.9.7 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Tue, 07 Mar 2017 20:37:36 GMT
WORKDIR /apache-storm-0.9.7
# Tue, 07 Mar 2017 20:37:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-0.9.7/bin
# Tue, 07 Mar 2017 20:37:37 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Tue, 07 Mar 2017 20:37:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
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
	-	`sha256:7e0d1a2d5a704e2fcc9faeecb11a283ff970bcd59cbb3e19a40b8aa6c3e22529`  
		Last Modified: Tue, 07 Mar 2017 20:38:25 GMT  
		Size: 11.3 MB (11330866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2441f44d538396be8c7b9a8e557d7af38d4e3a6ad1fa6be11600c732ff070e8`  
		Last Modified: Tue, 07 Mar 2017 20:38:20 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad88f7c729861cc45fa8a7c5ff6ad72dfb0a60aae32b85321541c3694cc289a0`  
		Last Modified: Tue, 07 Mar 2017 20:39:10 GMT  
		Size: 21.2 MB (21155101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:208eb1f3a867b877ad35975ab6ad4afcc3334feb6773443b64127ab56270bf6a`  
		Last Modified: Tue, 07 Mar 2017 20:39:08 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:0.10.2`

```console
$ docker pull storm@sha256:ddd481907a4457d0355367b2a09fca512f4cff0d2964af0cdcc470322458de9c
```

-	Platforms:
	-	linux; amd64

### `storm:0.10.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144706358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f76167efda6fa78e43c27da6d52d08920ba3cd6ee80bcb7e879e34b05c80f778`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

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
# Tue, 07 Mar 2017 20:37:13 GMT
RUN apk add --no-cache     bash     python     su-exec
# Tue, 07 Mar 2017 20:37:13 GMT
ENV STORM_USER=storm
# Tue, 07 Mar 2017 20:37:14 GMT
ENV STORM_CONF_DIR=/conf
# Tue, 07 Mar 2017 20:37:14 GMT
ENV STORM_DATA_DIR=/data
# Tue, 07 Mar 2017 20:37:15 GMT
ENV STORM_LOG_DIR=/logs
# Tue, 07 Mar 2017 20:37:16 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Tue, 07 Mar 2017 20:37:17 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Tue, 07 Mar 2017 20:37:18 GMT
ARG DISTRO_NAME=apache-storm-0.10.2
# Tue, 07 Mar 2017 20:37:26 GMT
# ARGS: DISTRO_NAME=apache-storm-0.10.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Tue, 07 Mar 2017 20:37:26 GMT
WORKDIR /apache-storm-0.10.2
# Tue, 07 Mar 2017 20:37:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-0.10.2/bin
# Tue, 07 Mar 2017 20:37:28 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Tue, 07 Mar 2017 20:37:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
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
	-	`sha256:7e0d1a2d5a704e2fcc9faeecb11a283ff970bcd59cbb3e19a40b8aa6c3e22529`  
		Last Modified: Tue, 07 Mar 2017 20:38:25 GMT  
		Size: 11.3 MB (11330866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2441f44d538396be8c7b9a8e557d7af38d4e3a6ad1fa6be11600c732ff070e8`  
		Last Modified: Tue, 07 Mar 2017 20:38:20 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdaed08aa1fe7abb02b3faf50779d4fa247fdf6d97f13cb7d19c7a7d39e7a60a`  
		Last Modified: Tue, 07 Mar 2017 20:38:28 GMT  
		Size: 77.7 MB (77657202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4d9efdf652113db88ecfae574e40ea637ab610d79f48527c7288ac5c319a0e`  
		Last Modified: Tue, 07 Mar 2017 20:38:20 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:0.10`

```console
$ docker pull storm@sha256:ddd481907a4457d0355367b2a09fca512f4cff0d2964af0cdcc470322458de9c
```

-	Platforms:
	-	linux; amd64

### `storm:0.10` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144706358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f76167efda6fa78e43c27da6d52d08920ba3cd6ee80bcb7e879e34b05c80f778`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

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
# Tue, 07 Mar 2017 20:37:13 GMT
RUN apk add --no-cache     bash     python     su-exec
# Tue, 07 Mar 2017 20:37:13 GMT
ENV STORM_USER=storm
# Tue, 07 Mar 2017 20:37:14 GMT
ENV STORM_CONF_DIR=/conf
# Tue, 07 Mar 2017 20:37:14 GMT
ENV STORM_DATA_DIR=/data
# Tue, 07 Mar 2017 20:37:15 GMT
ENV STORM_LOG_DIR=/logs
# Tue, 07 Mar 2017 20:37:16 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Tue, 07 Mar 2017 20:37:17 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Tue, 07 Mar 2017 20:37:18 GMT
ARG DISTRO_NAME=apache-storm-0.10.2
# Tue, 07 Mar 2017 20:37:26 GMT
# ARGS: DISTRO_NAME=apache-storm-0.10.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Tue, 07 Mar 2017 20:37:26 GMT
WORKDIR /apache-storm-0.10.2
# Tue, 07 Mar 2017 20:37:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-0.10.2/bin
# Tue, 07 Mar 2017 20:37:28 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Tue, 07 Mar 2017 20:37:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
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
	-	`sha256:7e0d1a2d5a704e2fcc9faeecb11a283ff970bcd59cbb3e19a40b8aa6c3e22529`  
		Last Modified: Tue, 07 Mar 2017 20:38:25 GMT  
		Size: 11.3 MB (11330866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2441f44d538396be8c7b9a8e557d7af38d4e3a6ad1fa6be11600c732ff070e8`  
		Last Modified: Tue, 07 Mar 2017 20:38:20 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdaed08aa1fe7abb02b3faf50779d4fa247fdf6d97f13cb7d19c7a7d39e7a60a`  
		Last Modified: Tue, 07 Mar 2017 20:38:28 GMT  
		Size: 77.7 MB (77657202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4d9efdf652113db88ecfae574e40ea637ab610d79f48527c7288ac5c319a0e`  
		Last Modified: Tue, 07 Mar 2017 20:38:20 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:1.0.3`

```console
$ docker pull storm@sha256:c705b7d8167d3defec52dd638d9702c89f5f29a940bd1d7146321ad940484b04
```

-	Platforms:
	-	linux; amd64

### `storm:1.0.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.9 MB (257875918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a555b5da93384e1b08892c3e4418ff05b24958f268b446cee8ecef1a02775c1a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

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
# Tue, 07 Mar 2017 20:37:42 GMT
RUN apk add --no-cache     bash     python     su-exec
# Tue, 07 Mar 2017 20:37:42 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Tue, 07 Mar 2017 20:37:43 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Tue, 07 Mar 2017 20:37:44 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Tue, 07 Mar 2017 20:37:45 GMT
ARG DISTRO_NAME=apache-storm-1.0.3
# Tue, 07 Mar 2017 20:37:57 GMT
# ARGS: DISTRO_NAME=apache-storm-1.0.3 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Tue, 07 Mar 2017 20:37:57 GMT
WORKDIR /apache-storm-1.0.3
# Tue, 07 Mar 2017 20:37:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.0.3/bin
# Tue, 07 Mar 2017 20:37:59 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Tue, 07 Mar 2017 20:37:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
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
	-	`sha256:575a8a748cf6675b5397cffbd7aa3139f5df83a1bfdceb8a7a0bb5db3748641e`  
		Last Modified: Tue, 07 Mar 2017 20:39:54 GMT  
		Size: 11.3 MB (11330874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a5fb648ca7a1cc3cd8cf54674e9ff9cb22bdaede7f6ac3d140e4c8beaea4e2`  
		Last Modified: Tue, 07 Mar 2017 20:39:50 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b148bec147a330e25474da02a290e14292faed63ccf43648d11189b08829b3c`  
		Last Modified: Tue, 07 Mar 2017 20:40:05 GMT  
		Size: 190.8 MB (190826752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af136ae2fdb95922f133b9785e6156dc1bb61672686df4cf8d3fe7514754ff3`  
		Last Modified: Tue, 07 Mar 2017 20:39:51 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:1.0`

```console
$ docker pull storm@sha256:c705b7d8167d3defec52dd638d9702c89f5f29a940bd1d7146321ad940484b04
```

-	Platforms:
	-	linux; amd64

### `storm:1.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.9 MB (257875918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a555b5da93384e1b08892c3e4418ff05b24958f268b446cee8ecef1a02775c1a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

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
# Tue, 07 Mar 2017 20:37:42 GMT
RUN apk add --no-cache     bash     python     su-exec
# Tue, 07 Mar 2017 20:37:42 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Tue, 07 Mar 2017 20:37:43 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Tue, 07 Mar 2017 20:37:44 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Tue, 07 Mar 2017 20:37:45 GMT
ARG DISTRO_NAME=apache-storm-1.0.3
# Tue, 07 Mar 2017 20:37:57 GMT
# ARGS: DISTRO_NAME=apache-storm-1.0.3 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Tue, 07 Mar 2017 20:37:57 GMT
WORKDIR /apache-storm-1.0.3
# Tue, 07 Mar 2017 20:37:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.0.3/bin
# Tue, 07 Mar 2017 20:37:59 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Tue, 07 Mar 2017 20:37:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
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
	-	`sha256:575a8a748cf6675b5397cffbd7aa3139f5df83a1bfdceb8a7a0bb5db3748641e`  
		Last Modified: Tue, 07 Mar 2017 20:39:54 GMT  
		Size: 11.3 MB (11330874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a5fb648ca7a1cc3cd8cf54674e9ff9cb22bdaede7f6ac3d140e4c8beaea4e2`  
		Last Modified: Tue, 07 Mar 2017 20:39:50 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b148bec147a330e25474da02a290e14292faed63ccf43648d11189b08829b3c`  
		Last Modified: Tue, 07 Mar 2017 20:40:05 GMT  
		Size: 190.8 MB (190826752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af136ae2fdb95922f133b9785e6156dc1bb61672686df4cf8d3fe7514754ff3`  
		Last Modified: Tue, 07 Mar 2017 20:39:51 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:latest`

```console
$ docker pull storm@sha256:c705b7d8167d3defec52dd638d9702c89f5f29a940bd1d7146321ad940484b04
```

-	Platforms:
	-	linux; amd64

### `storm:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.9 MB (257875918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a555b5da93384e1b08892c3e4418ff05b24958f268b446cee8ecef1a02775c1a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

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
# Tue, 07 Mar 2017 20:37:42 GMT
RUN apk add --no-cache     bash     python     su-exec
# Tue, 07 Mar 2017 20:37:42 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Tue, 07 Mar 2017 20:37:43 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Tue, 07 Mar 2017 20:37:44 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Tue, 07 Mar 2017 20:37:45 GMT
ARG DISTRO_NAME=apache-storm-1.0.3
# Tue, 07 Mar 2017 20:37:57 GMT
# ARGS: DISTRO_NAME=apache-storm-1.0.3 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Tue, 07 Mar 2017 20:37:57 GMT
WORKDIR /apache-storm-1.0.3
# Tue, 07 Mar 2017 20:37:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.0.3/bin
# Tue, 07 Mar 2017 20:37:59 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Tue, 07 Mar 2017 20:37:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
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
	-	`sha256:575a8a748cf6675b5397cffbd7aa3139f5df83a1bfdceb8a7a0bb5db3748641e`  
		Last Modified: Tue, 07 Mar 2017 20:39:54 GMT  
		Size: 11.3 MB (11330874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a5fb648ca7a1cc3cd8cf54674e9ff9cb22bdaede7f6ac3d140e4c8beaea4e2`  
		Last Modified: Tue, 07 Mar 2017 20:39:50 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b148bec147a330e25474da02a290e14292faed63ccf43648d11189b08829b3c`  
		Last Modified: Tue, 07 Mar 2017 20:40:05 GMT  
		Size: 190.8 MB (190826752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af136ae2fdb95922f133b9785e6156dc1bb61672686df4cf8d3fe7514754ff3`  
		Last Modified: Tue, 07 Mar 2017 20:39:51 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
