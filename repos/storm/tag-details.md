<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `storm`

-	[`storm:0.9.7`](#storm097)
-	[`storm:0.9`](#storm09)
-	[`storm:0.10.2`](#storm0102)
-	[`storm:0.10`](#storm010)
-	[`storm:1.0.2`](#storm102)
-	[`storm:1.0`](#storm10)
-	[`storm:latest`](#stormlatest)

## `storm:0.9.7`

```console
$ docker pull storm@sha256:296c59892eae23bfaf81ba9fe9b4ec95245b08fc5b290574461d2bf3cbe26acd
```

-	Platforms:
	-	linux; amd64

### `storm:0.9.7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.9 MB (74916168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0f153e21138c96d750fa23af0f4ff13282e30132489404ab90dd85b115663cd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 18 Oct 2016 20:40:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_VERSION=8u92
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 18 Oct 2016 20:40:41 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 19 Oct 2016 00:23:33 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Wed, 19 Oct 2016 00:23:37 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 19 Oct 2016 00:23:37 GMT
ENV STORM_USER=storm
# Wed, 19 Oct 2016 00:23:37 GMT
ENV STORM_CONF_DIR=/conf
# Wed, 19 Oct 2016 00:23:38 GMT
ENV STORM_DATA_DIR=/data
# Wed, 19 Oct 2016 00:23:38 GMT
ENV STORM_LOG_DIR=/logs
# Wed, 19 Oct 2016 00:23:39 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Wed, 19 Oct 2016 00:23:39 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 19 Oct 2016 00:24:36 GMT
ARG DISTRO_NAME=apache-storm-0.9.7
# Wed, 19 Oct 2016 00:24:41 GMT
# ARGS: DISTRO_NAME=apache-storm-0.9.7 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Wed, 19 Oct 2016 00:24:41 GMT
WORKDIR /apache-storm-0.9.7
# Wed, 19 Oct 2016 00:24:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-0.9.7/bin
# Wed, 19 Oct 2016 00:24:42 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Wed, 19 Oct 2016 00:24:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8876cfd96b2fd6c8a3d85d8ed9a02cfce486c97320fd18e3ce681486569ea72`  
		Last Modified: Tue, 18 Oct 2016 20:53:40 GMT  
		Size: 39.6 MB (39648817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334fe389990ba658c9e0e400fd775eda52a4a1ddebec8271fb38797248050009`  
		Last Modified: Wed, 19 Oct 2016 00:24:03 GMT  
		Size: 11.8 MB (11801405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ae77cd584cadc94e1ad2c2202e75ca9c0a582dad64f7ba7c9e6f942df0ba78`  
		Last Modified: Wed, 19 Oct 2016 00:23:59 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4870a44a8285c7077771639a3f84fb5f40cb5cba4870786c9950affd9fb2026b`  
		Last Modified: Wed, 19 Oct 2016 00:24:54 GMT  
		Size: 21.2 MB (21151038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a205516d92112d49a5bc6ae8a5a0bf3f24861f245e263df6c98712a912a7da`  
		Last Modified: Wed, 19 Oct 2016 00:24:51 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:0.9`

```console
$ docker pull storm@sha256:296c59892eae23bfaf81ba9fe9b4ec95245b08fc5b290574461d2bf3cbe26acd
```

-	Platforms:
	-	linux; amd64

### `storm:0.9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.9 MB (74916168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0f153e21138c96d750fa23af0f4ff13282e30132489404ab90dd85b115663cd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 18 Oct 2016 20:40:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_VERSION=8u92
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 18 Oct 2016 20:40:41 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 19 Oct 2016 00:23:33 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Wed, 19 Oct 2016 00:23:37 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 19 Oct 2016 00:23:37 GMT
ENV STORM_USER=storm
# Wed, 19 Oct 2016 00:23:37 GMT
ENV STORM_CONF_DIR=/conf
# Wed, 19 Oct 2016 00:23:38 GMT
ENV STORM_DATA_DIR=/data
# Wed, 19 Oct 2016 00:23:38 GMT
ENV STORM_LOG_DIR=/logs
# Wed, 19 Oct 2016 00:23:39 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Wed, 19 Oct 2016 00:23:39 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 19 Oct 2016 00:24:36 GMT
ARG DISTRO_NAME=apache-storm-0.9.7
# Wed, 19 Oct 2016 00:24:41 GMT
# ARGS: DISTRO_NAME=apache-storm-0.9.7 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Wed, 19 Oct 2016 00:24:41 GMT
WORKDIR /apache-storm-0.9.7
# Wed, 19 Oct 2016 00:24:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-0.9.7/bin
# Wed, 19 Oct 2016 00:24:42 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Wed, 19 Oct 2016 00:24:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8876cfd96b2fd6c8a3d85d8ed9a02cfce486c97320fd18e3ce681486569ea72`  
		Last Modified: Tue, 18 Oct 2016 20:53:40 GMT  
		Size: 39.6 MB (39648817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334fe389990ba658c9e0e400fd775eda52a4a1ddebec8271fb38797248050009`  
		Last Modified: Wed, 19 Oct 2016 00:24:03 GMT  
		Size: 11.8 MB (11801405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ae77cd584cadc94e1ad2c2202e75ca9c0a582dad64f7ba7c9e6f942df0ba78`  
		Last Modified: Wed, 19 Oct 2016 00:23:59 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4870a44a8285c7077771639a3f84fb5f40cb5cba4870786c9950affd9fb2026b`  
		Last Modified: Wed, 19 Oct 2016 00:24:54 GMT  
		Size: 21.2 MB (21151038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a205516d92112d49a5bc6ae8a5a0bf3f24861f245e263df6c98712a912a7da`  
		Last Modified: Wed, 19 Oct 2016 00:24:51 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:0.10.2`

```console
$ docker pull storm@sha256:8b12f9fbc51f72d3f459e9411927e5063b5fed2d3ef07611e3ead0f34440a3cf
```

-	Platforms:
	-	linux; amd64

### `storm:0.10.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131418479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d15a76fa7b37896efe369ef24bde49a1e8ada5572345391ddf6e74c28bf6de23`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 18 Oct 2016 20:40:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_VERSION=8u92
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 18 Oct 2016 20:40:41 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 19 Oct 2016 00:23:33 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Wed, 19 Oct 2016 00:23:37 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 19 Oct 2016 00:23:37 GMT
ENV STORM_USER=storm
# Wed, 19 Oct 2016 00:23:37 GMT
ENV STORM_CONF_DIR=/conf
# Wed, 19 Oct 2016 00:23:38 GMT
ENV STORM_DATA_DIR=/data
# Wed, 19 Oct 2016 00:23:38 GMT
ENV STORM_LOG_DIR=/logs
# Wed, 19 Oct 2016 00:23:39 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Wed, 19 Oct 2016 00:23:39 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 19 Oct 2016 00:23:40 GMT
ARG DISTRO_NAME=apache-storm-0.10.2
# Wed, 19 Oct 2016 00:23:48 GMT
# ARGS: DISTRO_NAME=apache-storm-0.10.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Wed, 19 Oct 2016 00:23:49 GMT
WORKDIR /apache-storm-0.10.2
# Wed, 19 Oct 2016 00:23:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-0.10.2/bin
# Wed, 19 Oct 2016 00:23:50 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Wed, 19 Oct 2016 00:23:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8876cfd96b2fd6c8a3d85d8ed9a02cfce486c97320fd18e3ce681486569ea72`  
		Last Modified: Tue, 18 Oct 2016 20:53:40 GMT  
		Size: 39.6 MB (39648817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334fe389990ba658c9e0e400fd775eda52a4a1ddebec8271fb38797248050009`  
		Last Modified: Wed, 19 Oct 2016 00:24:03 GMT  
		Size: 11.8 MB (11801405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ae77cd584cadc94e1ad2c2202e75ca9c0a582dad64f7ba7c9e6f942df0ba78`  
		Last Modified: Wed, 19 Oct 2016 00:23:59 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:699dba0f5f33a4687a11c4518cd2147d742c87e2372b4e2fd031c2cf8999a7a1`  
		Last Modified: Wed, 19 Oct 2016 00:24:16 GMT  
		Size: 77.7 MB (77653348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4bd2b51e3c9286d51cc288b82c0be3131be71c537dd988eeaf04c5d57b6541`  
		Last Modified: Wed, 19 Oct 2016 00:23:59 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:0.10`

```console
$ docker pull storm@sha256:8b12f9fbc51f72d3f459e9411927e5063b5fed2d3ef07611e3ead0f34440a3cf
```

-	Platforms:
	-	linux; amd64

### `storm:0.10` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131418479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d15a76fa7b37896efe369ef24bde49a1e8ada5572345391ddf6e74c28bf6de23`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 18 Oct 2016 20:40:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_VERSION=8u92
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 18 Oct 2016 20:40:41 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 19 Oct 2016 00:23:33 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Wed, 19 Oct 2016 00:23:37 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 19 Oct 2016 00:23:37 GMT
ENV STORM_USER=storm
# Wed, 19 Oct 2016 00:23:37 GMT
ENV STORM_CONF_DIR=/conf
# Wed, 19 Oct 2016 00:23:38 GMT
ENV STORM_DATA_DIR=/data
# Wed, 19 Oct 2016 00:23:38 GMT
ENV STORM_LOG_DIR=/logs
# Wed, 19 Oct 2016 00:23:39 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Wed, 19 Oct 2016 00:23:39 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 19 Oct 2016 00:23:40 GMT
ARG DISTRO_NAME=apache-storm-0.10.2
# Wed, 19 Oct 2016 00:23:48 GMT
# ARGS: DISTRO_NAME=apache-storm-0.10.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Wed, 19 Oct 2016 00:23:49 GMT
WORKDIR /apache-storm-0.10.2
# Wed, 19 Oct 2016 00:23:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-0.10.2/bin
# Wed, 19 Oct 2016 00:23:50 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Wed, 19 Oct 2016 00:23:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8876cfd96b2fd6c8a3d85d8ed9a02cfce486c97320fd18e3ce681486569ea72`  
		Last Modified: Tue, 18 Oct 2016 20:53:40 GMT  
		Size: 39.6 MB (39648817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334fe389990ba658c9e0e400fd775eda52a4a1ddebec8271fb38797248050009`  
		Last Modified: Wed, 19 Oct 2016 00:24:03 GMT  
		Size: 11.8 MB (11801405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ae77cd584cadc94e1ad2c2202e75ca9c0a582dad64f7ba7c9e6f942df0ba78`  
		Last Modified: Wed, 19 Oct 2016 00:23:59 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:699dba0f5f33a4687a11c4518cd2147d742c87e2372b4e2fd031c2cf8999a7a1`  
		Last Modified: Wed, 19 Oct 2016 00:24:16 GMT  
		Size: 77.7 MB (77653348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4bd2b51e3c9286d51cc288b82c0be3131be71c537dd988eeaf04c5d57b6541`  
		Last Modified: Wed, 19 Oct 2016 00:23:59 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:1.0.2`

```console
$ docker pull storm@sha256:07327a1f081fd26de32f0b5c63c45b6f7c9a52f846db446fb987f93edd18c01e
```

-	Platforms:
	-	linux; amd64

### `storm:1.0.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.1 MB (233068155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58acdad75fe2527dd116d078e658fcf3dccc948b292eb65f03611df231dabc95`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 18 Oct 2016 20:40:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_VERSION=8u92
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 18 Oct 2016 20:40:41 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 19 Oct 2016 00:23:33 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Wed, 19 Oct 2016 00:23:37 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 19 Oct 2016 00:23:37 GMT
ENV STORM_USER=storm
# Wed, 19 Oct 2016 00:23:37 GMT
ENV STORM_CONF_DIR=/conf
# Wed, 19 Oct 2016 00:23:38 GMT
ENV STORM_DATA_DIR=/data
# Wed, 19 Oct 2016 00:23:38 GMT
ENV STORM_LOG_DIR=/logs
# Wed, 19 Oct 2016 00:23:39 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Wed, 19 Oct 2016 00:23:39 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 19 Oct 2016 00:25:13 GMT
ARG DISTRO_NAME=apache-storm-1.0.2
# Wed, 19 Oct 2016 00:25:26 GMT
# ARGS: DISTRO_NAME=apache-storm-1.0.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Wed, 19 Oct 2016 00:25:26 GMT
WORKDIR /apache-storm-1.0.2
# Wed, 19 Oct 2016 00:25:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.0.2/bin
# Wed, 19 Oct 2016 00:25:27 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Wed, 19 Oct 2016 00:25:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8876cfd96b2fd6c8a3d85d8ed9a02cfce486c97320fd18e3ce681486569ea72`  
		Last Modified: Tue, 18 Oct 2016 20:53:40 GMT  
		Size: 39.6 MB (39648817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334fe389990ba658c9e0e400fd775eda52a4a1ddebec8271fb38797248050009`  
		Last Modified: Wed, 19 Oct 2016 00:24:03 GMT  
		Size: 11.8 MB (11801405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ae77cd584cadc94e1ad2c2202e75ca9c0a582dad64f7ba7c9e6f942df0ba78`  
		Last Modified: Wed, 19 Oct 2016 00:23:59 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611d665cf108da1b437a97f687a7d44ea9c0aea67d81fc35d6811014e5ff1b16`  
		Last Modified: Wed, 19 Oct 2016 00:25:50 GMT  
		Size: 179.3 MB (179303024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6e655f63a2dfa50dbadaebeaa51b65343bba54e79c5e3cb8bb831a99284e33`  
		Last Modified: Wed, 19 Oct 2016 00:25:36 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:1.0`

```console
$ docker pull storm@sha256:07327a1f081fd26de32f0b5c63c45b6f7c9a52f846db446fb987f93edd18c01e
```

-	Platforms:
	-	linux; amd64

### `storm:1.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.1 MB (233068155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58acdad75fe2527dd116d078e658fcf3dccc948b292eb65f03611df231dabc95`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 18 Oct 2016 20:40:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_VERSION=8u92
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 18 Oct 2016 20:40:41 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 19 Oct 2016 00:23:33 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Wed, 19 Oct 2016 00:23:37 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 19 Oct 2016 00:23:37 GMT
ENV STORM_USER=storm
# Wed, 19 Oct 2016 00:23:37 GMT
ENV STORM_CONF_DIR=/conf
# Wed, 19 Oct 2016 00:23:38 GMT
ENV STORM_DATA_DIR=/data
# Wed, 19 Oct 2016 00:23:38 GMT
ENV STORM_LOG_DIR=/logs
# Wed, 19 Oct 2016 00:23:39 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Wed, 19 Oct 2016 00:23:39 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 19 Oct 2016 00:25:13 GMT
ARG DISTRO_NAME=apache-storm-1.0.2
# Wed, 19 Oct 2016 00:25:26 GMT
# ARGS: DISTRO_NAME=apache-storm-1.0.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Wed, 19 Oct 2016 00:25:26 GMT
WORKDIR /apache-storm-1.0.2
# Wed, 19 Oct 2016 00:25:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.0.2/bin
# Wed, 19 Oct 2016 00:25:27 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Wed, 19 Oct 2016 00:25:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8876cfd96b2fd6c8a3d85d8ed9a02cfce486c97320fd18e3ce681486569ea72`  
		Last Modified: Tue, 18 Oct 2016 20:53:40 GMT  
		Size: 39.6 MB (39648817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334fe389990ba658c9e0e400fd775eda52a4a1ddebec8271fb38797248050009`  
		Last Modified: Wed, 19 Oct 2016 00:24:03 GMT  
		Size: 11.8 MB (11801405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ae77cd584cadc94e1ad2c2202e75ca9c0a582dad64f7ba7c9e6f942df0ba78`  
		Last Modified: Wed, 19 Oct 2016 00:23:59 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611d665cf108da1b437a97f687a7d44ea9c0aea67d81fc35d6811014e5ff1b16`  
		Last Modified: Wed, 19 Oct 2016 00:25:50 GMT  
		Size: 179.3 MB (179303024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6e655f63a2dfa50dbadaebeaa51b65343bba54e79c5e3cb8bb831a99284e33`  
		Last Modified: Wed, 19 Oct 2016 00:25:36 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:latest`

```console
$ docker pull storm@sha256:07327a1f081fd26de32f0b5c63c45b6f7c9a52f846db446fb987f93edd18c01e
```

-	Platforms:
	-	linux; amd64

### `storm:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.1 MB (233068155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58acdad75fe2527dd116d078e658fcf3dccc948b292eb65f03611df231dabc95`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 18 Oct 2016 20:40:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_VERSION=8u92
# Tue, 18 Oct 2016 20:40:35 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 18 Oct 2016 20:40:41 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 19 Oct 2016 00:23:33 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Wed, 19 Oct 2016 00:23:37 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 19 Oct 2016 00:23:37 GMT
ENV STORM_USER=storm
# Wed, 19 Oct 2016 00:23:37 GMT
ENV STORM_CONF_DIR=/conf
# Wed, 19 Oct 2016 00:23:38 GMT
ENV STORM_DATA_DIR=/data
# Wed, 19 Oct 2016 00:23:38 GMT
ENV STORM_LOG_DIR=/logs
# Wed, 19 Oct 2016 00:23:39 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Wed, 19 Oct 2016 00:23:39 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 19 Oct 2016 00:25:13 GMT
ARG DISTRO_NAME=apache-storm-1.0.2
# Wed, 19 Oct 2016 00:25:26 GMT
# ARGS: DISTRO_NAME=apache-storm-1.0.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Wed, 19 Oct 2016 00:25:26 GMT
WORKDIR /apache-storm-1.0.2
# Wed, 19 Oct 2016 00:25:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.0.2/bin
# Wed, 19 Oct 2016 00:25:27 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Wed, 19 Oct 2016 00:25:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8876cfd96b2fd6c8a3d85d8ed9a02cfce486c97320fd18e3ce681486569ea72`  
		Last Modified: Tue, 18 Oct 2016 20:53:40 GMT  
		Size: 39.6 MB (39648817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334fe389990ba658c9e0e400fd775eda52a4a1ddebec8271fb38797248050009`  
		Last Modified: Wed, 19 Oct 2016 00:24:03 GMT  
		Size: 11.8 MB (11801405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ae77cd584cadc94e1ad2c2202e75ca9c0a582dad64f7ba7c9e6f942df0ba78`  
		Last Modified: Wed, 19 Oct 2016 00:23:59 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611d665cf108da1b437a97f687a7d44ea9c0aea67d81fc35d6811014e5ff1b16`  
		Last Modified: Wed, 19 Oct 2016 00:25:50 GMT  
		Size: 179.3 MB (179303024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6e655f63a2dfa50dbadaebeaa51b65343bba54e79c5e3cb8bb831a99284e33`  
		Last Modified: Wed, 19 Oct 2016 00:25:36 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
