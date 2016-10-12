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
$ docker pull storm@sha256:2824191c8d954f7810d112bcc59d7db9b3b88e4def242ba7a926ad53c25b68f3
```

-	Platforms:
	-	linux; amd64

### `storm:0.9.7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.9 MB (74914596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ba671be46fa641ae0077565af2042e2d965bcf41e69259a15a6ccdcb7414dcb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 23 Sep 2016 17:07:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:07:02 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:07:05 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:48:25 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Wed, 12 Oct 2016 17:58:33 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 12 Oct 2016 17:58:33 GMT
ENV STORM_USER=storm
# Wed, 12 Oct 2016 17:58:33 GMT
ENV STORM_CONF_DIR=/conf
# Wed, 12 Oct 2016 17:58:34 GMT
ENV STORM_DATA_DIR=/data
# Wed, 12 Oct 2016 17:58:34 GMT
ENV STORM_LOG_DIR=/logs
# Wed, 12 Oct 2016 17:58:35 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Wed, 12 Oct 2016 17:58:35 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 12 Oct 2016 17:58:35 GMT
ARG DISTRO_NAME=apache-storm-0.9.7
# Wed, 12 Oct 2016 17:58:42 GMT
# ARGS: DISTRO_NAME=apache-storm-0.9.7 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Wed, 12 Oct 2016 17:58:42 GMT
WORKDIR /apache-storm-0.9.7
# Wed, 12 Oct 2016 17:58:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-0.9.7/bin
# Wed, 12 Oct 2016 17:58:43 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Wed, 12 Oct 2016 17:58:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69001e8f079b82a7067ea481b58cb7076d7e3154a5e2da4b8eb4fc9670ebab2d`  
		Last Modified: Fri, 23 Sep 2016 17:07:21 GMT  
		Size: 39.6 MB (39647465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8825c5a14fc076a66fb9a3a6fd329e1848dea591938127ae6de44c7a0e0dd122`  
		Last Modified: Wed, 12 Oct 2016 17:59:20 GMT  
		Size: 11.8 MB (11801344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03ecec17a3e2821a285fdd45c01ab665f1d725fbf06cfa65e7fce09bf3b5427`  
		Last Modified: Wed, 12 Oct 2016 17:59:15 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fce9b1a0fc42744c36e9529ccdaf75265e4e1305545e19c28a55974bd5f24fb`  
		Last Modified: Wed, 12 Oct 2016 17:59:17 GMT  
		Size: 21.2 MB (21150910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed243eec7fb10ad87540c0265b9ce72bc6ff352b2322cb922d7c9b208c5793dc`  
		Last Modified: Wed, 12 Oct 2016 17:59:14 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:0.9`

```console
$ docker pull storm@sha256:2824191c8d954f7810d112bcc59d7db9b3b88e4def242ba7a926ad53c25b68f3
```

-	Platforms:
	-	linux; amd64

### `storm:0.9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.9 MB (74914596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ba671be46fa641ae0077565af2042e2d965bcf41e69259a15a6ccdcb7414dcb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 23 Sep 2016 17:07:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:07:02 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:07:05 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:48:25 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Wed, 12 Oct 2016 17:58:33 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 12 Oct 2016 17:58:33 GMT
ENV STORM_USER=storm
# Wed, 12 Oct 2016 17:58:33 GMT
ENV STORM_CONF_DIR=/conf
# Wed, 12 Oct 2016 17:58:34 GMT
ENV STORM_DATA_DIR=/data
# Wed, 12 Oct 2016 17:58:34 GMT
ENV STORM_LOG_DIR=/logs
# Wed, 12 Oct 2016 17:58:35 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Wed, 12 Oct 2016 17:58:35 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 12 Oct 2016 17:58:35 GMT
ARG DISTRO_NAME=apache-storm-0.9.7
# Wed, 12 Oct 2016 17:58:42 GMT
# ARGS: DISTRO_NAME=apache-storm-0.9.7 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Wed, 12 Oct 2016 17:58:42 GMT
WORKDIR /apache-storm-0.9.7
# Wed, 12 Oct 2016 17:58:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-0.9.7/bin
# Wed, 12 Oct 2016 17:58:43 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Wed, 12 Oct 2016 17:58:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69001e8f079b82a7067ea481b58cb7076d7e3154a5e2da4b8eb4fc9670ebab2d`  
		Last Modified: Fri, 23 Sep 2016 17:07:21 GMT  
		Size: 39.6 MB (39647465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8825c5a14fc076a66fb9a3a6fd329e1848dea591938127ae6de44c7a0e0dd122`  
		Last Modified: Wed, 12 Oct 2016 17:59:20 GMT  
		Size: 11.8 MB (11801344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03ecec17a3e2821a285fdd45c01ab665f1d725fbf06cfa65e7fce09bf3b5427`  
		Last Modified: Wed, 12 Oct 2016 17:59:15 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fce9b1a0fc42744c36e9529ccdaf75265e4e1305545e19c28a55974bd5f24fb`  
		Last Modified: Wed, 12 Oct 2016 17:59:17 GMT  
		Size: 21.2 MB (21150910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed243eec7fb10ad87540c0265b9ce72bc6ff352b2322cb922d7c9b208c5793dc`  
		Last Modified: Wed, 12 Oct 2016 17:59:14 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:0.10.2`

```console
$ docker pull storm@sha256:51bfa48459c296e6252d455ca0e3d90167501269e6eaa673bce19695ba237971
```

-	Platforms:
	-	linux; amd64

### `storm:0.10.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131416916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab4032c422154c0fbf8b5f4b7bdeae8ac7a6162e275f290323c1ea4cc1ef678`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 23 Sep 2016 17:07:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:07:02 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:07:05 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:48:25 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Wed, 12 Oct 2016 17:58:33 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 12 Oct 2016 17:58:33 GMT
ENV STORM_USER=storm
# Wed, 12 Oct 2016 17:58:33 GMT
ENV STORM_CONF_DIR=/conf
# Wed, 12 Oct 2016 17:58:34 GMT
ENV STORM_DATA_DIR=/data
# Wed, 12 Oct 2016 17:58:34 GMT
ENV STORM_LOG_DIR=/logs
# Wed, 12 Oct 2016 17:58:35 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Wed, 12 Oct 2016 17:58:35 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 12 Oct 2016 17:58:44 GMT
ARG DISTRO_NAME=apache-storm-0.10.2
# Wed, 12 Oct 2016 17:58:52 GMT
# ARGS: DISTRO_NAME=apache-storm-0.10.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Wed, 12 Oct 2016 17:58:52 GMT
WORKDIR /apache-storm-0.10.2
# Wed, 12 Oct 2016 17:58:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-0.10.2/bin
# Wed, 12 Oct 2016 17:58:53 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Wed, 12 Oct 2016 17:58:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69001e8f079b82a7067ea481b58cb7076d7e3154a5e2da4b8eb4fc9670ebab2d`  
		Last Modified: Fri, 23 Sep 2016 17:07:21 GMT  
		Size: 39.6 MB (39647465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8825c5a14fc076a66fb9a3a6fd329e1848dea591938127ae6de44c7a0e0dd122`  
		Last Modified: Wed, 12 Oct 2016 17:59:20 GMT  
		Size: 11.8 MB (11801344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03ecec17a3e2821a285fdd45c01ab665f1d725fbf06cfa65e7fce09bf3b5427`  
		Last Modified: Wed, 12 Oct 2016 17:59:15 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7a090dcc676d1225f16681f6f4952c8ede858c2a85d4c3cf07d905800a63c6`  
		Last Modified: Wed, 12 Oct 2016 17:59:52 GMT  
		Size: 77.7 MB (77653229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4157c60dc516cba93cdf75568f799820a4e6a6cc668764fc82a2a9d2df6e71`  
		Last Modified: Wed, 12 Oct 2016 17:59:45 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:0.10`

```console
$ docker pull storm@sha256:51bfa48459c296e6252d455ca0e3d90167501269e6eaa673bce19695ba237971
```

-	Platforms:
	-	linux; amd64

### `storm:0.10` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131416916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab4032c422154c0fbf8b5f4b7bdeae8ac7a6162e275f290323c1ea4cc1ef678`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 23 Sep 2016 17:07:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:07:02 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:07:05 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:48:25 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Wed, 12 Oct 2016 17:58:33 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 12 Oct 2016 17:58:33 GMT
ENV STORM_USER=storm
# Wed, 12 Oct 2016 17:58:33 GMT
ENV STORM_CONF_DIR=/conf
# Wed, 12 Oct 2016 17:58:34 GMT
ENV STORM_DATA_DIR=/data
# Wed, 12 Oct 2016 17:58:34 GMT
ENV STORM_LOG_DIR=/logs
# Wed, 12 Oct 2016 17:58:35 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Wed, 12 Oct 2016 17:58:35 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 12 Oct 2016 17:58:44 GMT
ARG DISTRO_NAME=apache-storm-0.10.2
# Wed, 12 Oct 2016 17:58:52 GMT
# ARGS: DISTRO_NAME=apache-storm-0.10.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Wed, 12 Oct 2016 17:58:52 GMT
WORKDIR /apache-storm-0.10.2
# Wed, 12 Oct 2016 17:58:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-0.10.2/bin
# Wed, 12 Oct 2016 17:58:53 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Wed, 12 Oct 2016 17:58:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69001e8f079b82a7067ea481b58cb7076d7e3154a5e2da4b8eb4fc9670ebab2d`  
		Last Modified: Fri, 23 Sep 2016 17:07:21 GMT  
		Size: 39.6 MB (39647465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8825c5a14fc076a66fb9a3a6fd329e1848dea591938127ae6de44c7a0e0dd122`  
		Last Modified: Wed, 12 Oct 2016 17:59:20 GMT  
		Size: 11.8 MB (11801344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03ecec17a3e2821a285fdd45c01ab665f1d725fbf06cfa65e7fce09bf3b5427`  
		Last Modified: Wed, 12 Oct 2016 17:59:15 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7a090dcc676d1225f16681f6f4952c8ede858c2a85d4c3cf07d905800a63c6`  
		Last Modified: Wed, 12 Oct 2016 17:59:52 GMT  
		Size: 77.7 MB (77653229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4157c60dc516cba93cdf75568f799820a4e6a6cc668764fc82a2a9d2df6e71`  
		Last Modified: Wed, 12 Oct 2016 17:59:45 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:1.0.2`

```console
$ docker pull storm@sha256:2c53e3bd514f88351f2a1349e124ed94ca3cb103f1d3c6c3c8b50ac2fb197677
```

-	Platforms:
	-	linux; amd64

### `storm:1.0.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.1 MB (233066535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:924417b379523aa8ade5e50cc4ce82a3e8d9e4a6187b95f2e808b36772202e98`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 23 Sep 2016 17:07:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:07:02 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:07:05 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:48:25 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Wed, 12 Oct 2016 17:58:33 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 12 Oct 2016 17:58:33 GMT
ENV STORM_USER=storm
# Wed, 12 Oct 2016 17:58:33 GMT
ENV STORM_CONF_DIR=/conf
# Wed, 12 Oct 2016 17:58:34 GMT
ENV STORM_DATA_DIR=/data
# Wed, 12 Oct 2016 17:58:34 GMT
ENV STORM_LOG_DIR=/logs
# Wed, 12 Oct 2016 17:58:35 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Wed, 12 Oct 2016 17:58:35 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 12 Oct 2016 17:58:54 GMT
ARG DISTRO_NAME=apache-storm-1.0.2
# Wed, 12 Oct 2016 17:59:05 GMT
# ARGS: DISTRO_NAME=apache-storm-1.0.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Wed, 12 Oct 2016 17:59:05 GMT
WORKDIR /apache-storm-1.0.2
# Wed, 12 Oct 2016 17:59:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.0.2/bin
# Wed, 12 Oct 2016 17:59:06 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Wed, 12 Oct 2016 17:59:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69001e8f079b82a7067ea481b58cb7076d7e3154a5e2da4b8eb4fc9670ebab2d`  
		Last Modified: Fri, 23 Sep 2016 17:07:21 GMT  
		Size: 39.6 MB (39647465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8825c5a14fc076a66fb9a3a6fd329e1848dea591938127ae6de44c7a0e0dd122`  
		Last Modified: Wed, 12 Oct 2016 17:59:20 GMT  
		Size: 11.8 MB (11801344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03ecec17a3e2821a285fdd45c01ab665f1d725fbf06cfa65e7fce09bf3b5427`  
		Last Modified: Wed, 12 Oct 2016 17:59:15 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d04a4d6f213768a0eaa4a6eb3d2f353fb59be7e61ee06759372e6452fc7e18`  
		Last Modified: Wed, 12 Oct 2016 18:00:37 GMT  
		Size: 179.3 MB (179302848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc4647c948d7852588aa1523c63200afd77ec8462ce053713353340f2082934e`  
		Last Modified: Wed, 12 Oct 2016 18:00:19 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:1.0`

```console
$ docker pull storm@sha256:2c53e3bd514f88351f2a1349e124ed94ca3cb103f1d3c6c3c8b50ac2fb197677
```

-	Platforms:
	-	linux; amd64

### `storm:1.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.1 MB (233066535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:924417b379523aa8ade5e50cc4ce82a3e8d9e4a6187b95f2e808b36772202e98`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 23 Sep 2016 17:07:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:07:02 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:07:05 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:48:25 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Wed, 12 Oct 2016 17:58:33 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 12 Oct 2016 17:58:33 GMT
ENV STORM_USER=storm
# Wed, 12 Oct 2016 17:58:33 GMT
ENV STORM_CONF_DIR=/conf
# Wed, 12 Oct 2016 17:58:34 GMT
ENV STORM_DATA_DIR=/data
# Wed, 12 Oct 2016 17:58:34 GMT
ENV STORM_LOG_DIR=/logs
# Wed, 12 Oct 2016 17:58:35 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Wed, 12 Oct 2016 17:58:35 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 12 Oct 2016 17:58:54 GMT
ARG DISTRO_NAME=apache-storm-1.0.2
# Wed, 12 Oct 2016 17:59:05 GMT
# ARGS: DISTRO_NAME=apache-storm-1.0.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Wed, 12 Oct 2016 17:59:05 GMT
WORKDIR /apache-storm-1.0.2
# Wed, 12 Oct 2016 17:59:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.0.2/bin
# Wed, 12 Oct 2016 17:59:06 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Wed, 12 Oct 2016 17:59:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69001e8f079b82a7067ea481b58cb7076d7e3154a5e2da4b8eb4fc9670ebab2d`  
		Last Modified: Fri, 23 Sep 2016 17:07:21 GMT  
		Size: 39.6 MB (39647465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8825c5a14fc076a66fb9a3a6fd329e1848dea591938127ae6de44c7a0e0dd122`  
		Last Modified: Wed, 12 Oct 2016 17:59:20 GMT  
		Size: 11.8 MB (11801344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03ecec17a3e2821a285fdd45c01ab665f1d725fbf06cfa65e7fce09bf3b5427`  
		Last Modified: Wed, 12 Oct 2016 17:59:15 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d04a4d6f213768a0eaa4a6eb3d2f353fb59be7e61ee06759372e6452fc7e18`  
		Last Modified: Wed, 12 Oct 2016 18:00:37 GMT  
		Size: 179.3 MB (179302848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc4647c948d7852588aa1523c63200afd77ec8462ce053713353340f2082934e`  
		Last Modified: Wed, 12 Oct 2016 18:00:19 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:latest`

```console
$ docker pull storm@sha256:2c53e3bd514f88351f2a1349e124ed94ca3cb103f1d3c6c3c8b50ac2fb197677
```

-	Platforms:
	-	linux; amd64

### `storm:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.1 MB (233066535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:924417b379523aa8ade5e50cc4ce82a3e8d9e4a6187b95f2e808b36772202e98`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 23 Sep 2016 17:07:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:07:01 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:07:02 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:07:05 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:48:25 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Wed, 12 Oct 2016 17:58:33 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 12 Oct 2016 17:58:33 GMT
ENV STORM_USER=storm
# Wed, 12 Oct 2016 17:58:33 GMT
ENV STORM_CONF_DIR=/conf
# Wed, 12 Oct 2016 17:58:34 GMT
ENV STORM_DATA_DIR=/data
# Wed, 12 Oct 2016 17:58:34 GMT
ENV STORM_LOG_DIR=/logs
# Wed, 12 Oct 2016 17:58:35 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Wed, 12 Oct 2016 17:58:35 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 12 Oct 2016 17:58:54 GMT
ARG DISTRO_NAME=apache-storm-1.0.2
# Wed, 12 Oct 2016 17:59:05 GMT
# ARGS: DISTRO_NAME=apache-storm-1.0.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Wed, 12 Oct 2016 17:59:05 GMT
WORKDIR /apache-storm-1.0.2
# Wed, 12 Oct 2016 17:59:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.0.2/bin
# Wed, 12 Oct 2016 17:59:06 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Wed, 12 Oct 2016 17:59:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69001e8f079b82a7067ea481b58cb7076d7e3154a5e2da4b8eb4fc9670ebab2d`  
		Last Modified: Fri, 23 Sep 2016 17:07:21 GMT  
		Size: 39.6 MB (39647465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8825c5a14fc076a66fb9a3a6fd329e1848dea591938127ae6de44c7a0e0dd122`  
		Last Modified: Wed, 12 Oct 2016 17:59:20 GMT  
		Size: 11.8 MB (11801344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03ecec17a3e2821a285fdd45c01ab665f1d725fbf06cfa65e7fce09bf3b5427`  
		Last Modified: Wed, 12 Oct 2016 17:59:15 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d04a4d6f213768a0eaa4a6eb3d2f353fb59be7e61ee06759372e6452fc7e18`  
		Last Modified: Wed, 12 Oct 2016 18:00:37 GMT  
		Size: 179.3 MB (179302848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc4647c948d7852588aa1523c63200afd77ec8462ce053713353340f2082934e`  
		Last Modified: Wed, 12 Oct 2016 18:00:19 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
