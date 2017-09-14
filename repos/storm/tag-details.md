<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `storm`

-	[`storm:0.10`](#storm010)
-	[`storm:0.10.2`](#storm0102)
-	[`storm:0.9`](#storm09)
-	[`storm:0.9.7`](#storm097)
-	[`storm:1.0`](#storm10)
-	[`storm:1.0.3`](#storm103)
-	[`storm:1.1`](#storm11)
-	[`storm:1.1.1`](#storm111)
-	[`storm:latest`](#stormlatest)

## `storm:0.10`

```console
$ docker pull storm@sha256:86ee5fdaf9d53928377ead5592500e7d286b2be4c8d4cb13951e862e94cefa7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `storm:0.10` - linux; amd64

```console
$ docker pull storm@sha256:f40e090c0127347007d071493855236e82c4f441d0474d4fbda4460809ccf18d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.4 MB (145440970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21a82e6c446da1d551ecb338b28d373450279c6ce7c9a7869fd71b60b7335680`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 14 Sep 2017 04:25:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:25:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 07:21:35 GMT
RUN apk add --no-cache     bash     python     su-exec
# Thu, 14 Sep 2017 07:21:36 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Thu, 14 Sep 2017 07:21:36 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Thu, 14 Sep 2017 07:21:36 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Thu, 14 Sep 2017 07:22:14 GMT
ARG DISTRO_NAME=apache-storm-0.10.2
# Thu, 14 Sep 2017 07:22:24 GMT
# ARGS: DISTRO_NAME=apache-storm-0.10.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Thu, 14 Sep 2017 07:22:24 GMT
WORKDIR /apache-storm-0.10.2
# Thu, 14 Sep 2017 07:22:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-0.10.2/bin
# Thu, 14 Sep 2017 07:22:25 GMT
COPY file:20ef541d526b161df0063c283f532d732417cae74017ab6f877c2e5c751f6139 in / 
# Thu, 14 Sep 2017 07:22:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9431a0557160e1ec384a6cfe37d1225528bd236e486010ffc0b75ce7fe1c1465`  
		Last Modified: Thu, 14 Sep 2017 05:01:46 GMT  
		Size: 54.3 MB (54282902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55cb599456d973177fdc3d7050c7ec35b40ce332a091fc128c303b6931336caa`  
		Last Modified: Thu, 14 Sep 2017 07:25:07 GMT  
		Size: 11.5 MB (11486399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c398a3eff6c98113bdfaff53473d5c8bac7e59e318e83abf4b24379028b6cd`  
		Last Modified: Thu, 14 Sep 2017 07:25:01 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb0b9d3b1b6d5e81c8f3f8e20b258f8425b3f7fc8b8649f5f3bc6e8a234b805`  
		Last Modified: Thu, 14 Sep 2017 07:25:31 GMT  
		Size: 77.7 MB (77679328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:101ec1079ba9a7bfac46c89476dcf764138830ea56ac87adc923a4c0b6bdd37f`  
		Last Modified: Thu, 14 Sep 2017 07:25:22 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:0.10.2`

```console
$ docker pull storm@sha256:86ee5fdaf9d53928377ead5592500e7d286b2be4c8d4cb13951e862e94cefa7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `storm:0.10.2` - linux; amd64

```console
$ docker pull storm@sha256:f40e090c0127347007d071493855236e82c4f441d0474d4fbda4460809ccf18d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.4 MB (145440970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21a82e6c446da1d551ecb338b28d373450279c6ce7c9a7869fd71b60b7335680`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 14 Sep 2017 04:25:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:25:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 07:21:35 GMT
RUN apk add --no-cache     bash     python     su-exec
# Thu, 14 Sep 2017 07:21:36 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Thu, 14 Sep 2017 07:21:36 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Thu, 14 Sep 2017 07:21:36 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Thu, 14 Sep 2017 07:22:14 GMT
ARG DISTRO_NAME=apache-storm-0.10.2
# Thu, 14 Sep 2017 07:22:24 GMT
# ARGS: DISTRO_NAME=apache-storm-0.10.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Thu, 14 Sep 2017 07:22:24 GMT
WORKDIR /apache-storm-0.10.2
# Thu, 14 Sep 2017 07:22:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-0.10.2/bin
# Thu, 14 Sep 2017 07:22:25 GMT
COPY file:20ef541d526b161df0063c283f532d732417cae74017ab6f877c2e5c751f6139 in / 
# Thu, 14 Sep 2017 07:22:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9431a0557160e1ec384a6cfe37d1225528bd236e486010ffc0b75ce7fe1c1465`  
		Last Modified: Thu, 14 Sep 2017 05:01:46 GMT  
		Size: 54.3 MB (54282902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55cb599456d973177fdc3d7050c7ec35b40ce332a091fc128c303b6931336caa`  
		Last Modified: Thu, 14 Sep 2017 07:25:07 GMT  
		Size: 11.5 MB (11486399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c398a3eff6c98113bdfaff53473d5c8bac7e59e318e83abf4b24379028b6cd`  
		Last Modified: Thu, 14 Sep 2017 07:25:01 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb0b9d3b1b6d5e81c8f3f8e20b258f8425b3f7fc8b8649f5f3bc6e8a234b805`  
		Last Modified: Thu, 14 Sep 2017 07:25:31 GMT  
		Size: 77.7 MB (77679328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:101ec1079ba9a7bfac46c89476dcf764138830ea56ac87adc923a4c0b6bdd37f`  
		Last Modified: Thu, 14 Sep 2017 07:25:22 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:0.9`

```console
$ docker pull storm@sha256:04044fd4d789ddbbe4559695a3978f44c74adb507170140ae3ffb415807c2535
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `storm:0.9` - linux; amd64

```console
$ docker pull storm@sha256:2a440b63e126c31725d89ee88c4705c92d52f497396d67e1c150cdec9fa9adba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.9 MB (88928514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1690fdf9c819775ce16027f7eaaea0d8a90cde808f1aa9a826dc7876a2fa3af7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 14 Sep 2017 04:25:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:25:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 07:21:35 GMT
RUN apk add --no-cache     bash     python     su-exec
# Thu, 14 Sep 2017 07:21:36 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Thu, 14 Sep 2017 07:21:36 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Thu, 14 Sep 2017 07:21:36 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Thu, 14 Sep 2017 07:21:37 GMT
ARG DISTRO_NAME=apache-storm-0.9.7
# Thu, 14 Sep 2017 07:21:43 GMT
# ARGS: DISTRO_NAME=apache-storm-0.9.7 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Thu, 14 Sep 2017 07:22:11 GMT
WORKDIR /apache-storm-0.9.7
# Thu, 14 Sep 2017 07:22:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-0.9.7/bin
# Thu, 14 Sep 2017 07:22:11 GMT
COPY file:20ef541d526b161df0063c283f532d732417cae74017ab6f877c2e5c751f6139 in / 
# Thu, 14 Sep 2017 07:22:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9431a0557160e1ec384a6cfe37d1225528bd236e486010ffc0b75ce7fe1c1465`  
		Last Modified: Thu, 14 Sep 2017 05:01:46 GMT  
		Size: 54.3 MB (54282902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55cb599456d973177fdc3d7050c7ec35b40ce332a091fc128c303b6931336caa`  
		Last Modified: Thu, 14 Sep 2017 07:25:07 GMT  
		Size: 11.5 MB (11486399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c398a3eff6c98113bdfaff53473d5c8bac7e59e318e83abf4b24379028b6cd`  
		Last Modified: Thu, 14 Sep 2017 07:25:01 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bb511e3a7d540bdec8e9be4ca4bcc9447a2bab9340a180b973c13a9c4c1906`  
		Last Modified: Thu, 14 Sep 2017 07:25:04 GMT  
		Size: 21.2 MB (21166871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249dd120612e1211fc2cee662f58657ac6b3fe82e96985899841152eb6071adc`  
		Last Modified: Thu, 14 Sep 2017 07:25:01 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:0.9.7`

```console
$ docker pull storm@sha256:04044fd4d789ddbbe4559695a3978f44c74adb507170140ae3ffb415807c2535
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `storm:0.9.7` - linux; amd64

```console
$ docker pull storm@sha256:2a440b63e126c31725d89ee88c4705c92d52f497396d67e1c150cdec9fa9adba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.9 MB (88928514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1690fdf9c819775ce16027f7eaaea0d8a90cde808f1aa9a826dc7876a2fa3af7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 14 Sep 2017 04:25:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:25:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 07:21:35 GMT
RUN apk add --no-cache     bash     python     su-exec
# Thu, 14 Sep 2017 07:21:36 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Thu, 14 Sep 2017 07:21:36 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Thu, 14 Sep 2017 07:21:36 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Thu, 14 Sep 2017 07:21:37 GMT
ARG DISTRO_NAME=apache-storm-0.9.7
# Thu, 14 Sep 2017 07:21:43 GMT
# ARGS: DISTRO_NAME=apache-storm-0.9.7 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Thu, 14 Sep 2017 07:22:11 GMT
WORKDIR /apache-storm-0.9.7
# Thu, 14 Sep 2017 07:22:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-0.9.7/bin
# Thu, 14 Sep 2017 07:22:11 GMT
COPY file:20ef541d526b161df0063c283f532d732417cae74017ab6f877c2e5c751f6139 in / 
# Thu, 14 Sep 2017 07:22:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9431a0557160e1ec384a6cfe37d1225528bd236e486010ffc0b75ce7fe1c1465`  
		Last Modified: Thu, 14 Sep 2017 05:01:46 GMT  
		Size: 54.3 MB (54282902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55cb599456d973177fdc3d7050c7ec35b40ce332a091fc128c303b6931336caa`  
		Last Modified: Thu, 14 Sep 2017 07:25:07 GMT  
		Size: 11.5 MB (11486399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c398a3eff6c98113bdfaff53473d5c8bac7e59e318e83abf4b24379028b6cd`  
		Last Modified: Thu, 14 Sep 2017 07:25:01 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bb511e3a7d540bdec8e9be4ca4bcc9447a2bab9340a180b973c13a9c4c1906`  
		Last Modified: Thu, 14 Sep 2017 07:25:04 GMT  
		Size: 21.2 MB (21166871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249dd120612e1211fc2cee662f58657ac6b3fe82e96985899841152eb6071adc`  
		Last Modified: Thu, 14 Sep 2017 07:25:01 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:1.0`

```console
$ docker pull storm@sha256:ca886724b61e8e0666778bb3263de231e0a27a6f426a7c368855dec77d9278d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `storm:1.0` - linux; amd64

```console
$ docker pull storm@sha256:28e3006c787c8af7f139766747743e3fe7aa16195ef2fd371fb36c10cd20627b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.7 MB (258668131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcf83558fa0edb560d89ec3228c370a4d9a8202709ca371eaee54ce1e26d263f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 14 Sep 2017 04:25:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:25:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 07:21:35 GMT
RUN apk add --no-cache     bash     python     su-exec
# Thu, 14 Sep 2017 07:21:36 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Thu, 14 Sep 2017 07:21:36 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Thu, 14 Sep 2017 07:21:36 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Thu, 14 Sep 2017 07:22:29 GMT
ARG DISTRO_NAME=apache-storm-1.0.3
# Thu, 14 Sep 2017 07:22:42 GMT
# ARGS: DISTRO_NAME=apache-storm-1.0.3 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Thu, 14 Sep 2017 07:22:43 GMT
WORKDIR /apache-storm-1.0.3
# Thu, 14 Sep 2017 07:22:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.0.3/bin
# Thu, 14 Sep 2017 07:22:43 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Thu, 14 Sep 2017 07:22:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9431a0557160e1ec384a6cfe37d1225528bd236e486010ffc0b75ce7fe1c1465`  
		Last Modified: Thu, 14 Sep 2017 05:01:46 GMT  
		Size: 54.3 MB (54282902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55cb599456d973177fdc3d7050c7ec35b40ce332a091fc128c303b6931336caa`  
		Last Modified: Thu, 14 Sep 2017 07:25:07 GMT  
		Size: 11.5 MB (11486399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c398a3eff6c98113bdfaff53473d5c8bac7e59e318e83abf4b24379028b6cd`  
		Last Modified: Thu, 14 Sep 2017 07:25:01 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53307740f8d4a77d013fd533aa2f5fcaf73840154df38610cb6e878fb8d16f5`  
		Last Modified: Thu, 14 Sep 2017 07:26:05 GMT  
		Size: 190.9 MB (190906488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d27cb31302152ac6ddd1bb96904ea4a65d9a31236c6c49ec2269d6861742c9e`  
		Last Modified: Thu, 14 Sep 2017 07:25:47 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:1.0.3`

```console
$ docker pull storm@sha256:ca886724b61e8e0666778bb3263de231e0a27a6f426a7c368855dec77d9278d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `storm:1.0.3` - linux; amd64

```console
$ docker pull storm@sha256:28e3006c787c8af7f139766747743e3fe7aa16195ef2fd371fb36c10cd20627b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.7 MB (258668131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcf83558fa0edb560d89ec3228c370a4d9a8202709ca371eaee54ce1e26d263f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 14 Sep 2017 04:25:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:25:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 07:21:35 GMT
RUN apk add --no-cache     bash     python     su-exec
# Thu, 14 Sep 2017 07:21:36 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Thu, 14 Sep 2017 07:21:36 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Thu, 14 Sep 2017 07:21:36 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Thu, 14 Sep 2017 07:22:29 GMT
ARG DISTRO_NAME=apache-storm-1.0.3
# Thu, 14 Sep 2017 07:22:42 GMT
# ARGS: DISTRO_NAME=apache-storm-1.0.3 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Thu, 14 Sep 2017 07:22:43 GMT
WORKDIR /apache-storm-1.0.3
# Thu, 14 Sep 2017 07:22:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.0.3/bin
# Thu, 14 Sep 2017 07:22:43 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Thu, 14 Sep 2017 07:22:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9431a0557160e1ec384a6cfe37d1225528bd236e486010ffc0b75ce7fe1c1465`  
		Last Modified: Thu, 14 Sep 2017 05:01:46 GMT  
		Size: 54.3 MB (54282902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55cb599456d973177fdc3d7050c7ec35b40ce332a091fc128c303b6931336caa`  
		Last Modified: Thu, 14 Sep 2017 07:25:07 GMT  
		Size: 11.5 MB (11486399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c398a3eff6c98113bdfaff53473d5c8bac7e59e318e83abf4b24379028b6cd`  
		Last Modified: Thu, 14 Sep 2017 07:25:01 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53307740f8d4a77d013fd533aa2f5fcaf73840154df38610cb6e878fb8d16f5`  
		Last Modified: Thu, 14 Sep 2017 07:26:05 GMT  
		Size: 190.9 MB (190906488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d27cb31302152ac6ddd1bb96904ea4a65d9a31236c6c49ec2269d6861742c9e`  
		Last Modified: Thu, 14 Sep 2017 07:25:47 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:1.1`

```console
$ docker pull storm@sha256:2dd3adf3d326352bd478906847417194ae887e0cecf339f7c0268bb6e9e83a43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `storm:1.1` - linux; amd64

```console
$ docker pull storm@sha256:ae631691b2a92474890141d629deb9e672ba0fe823e12f176d5bf5331b7e805c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.4 MB (150444314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa4f6a234b4532f65bbae021ce948ff4bf129660be5cef59acf2353f3d66d649`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 14 Sep 2017 04:25:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:25:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 07:21:35 GMT
RUN apk add --no-cache     bash     python     su-exec
# Thu, 14 Sep 2017 07:21:36 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Thu, 14 Sep 2017 07:21:36 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Thu, 14 Sep 2017 07:21:36 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Thu, 14 Sep 2017 07:23:47 GMT
ARG DISTRO_NAME=apache-storm-1.1.1
# Thu, 14 Sep 2017 07:24:50 GMT
# ARGS: DISTRO_NAME=apache-storm-1.1.1 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Thu, 14 Sep 2017 07:24:50 GMT
WORKDIR /apache-storm-1.1.1
# Thu, 14 Sep 2017 07:24:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.1.1/bin
# Thu, 14 Sep 2017 07:24:51 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Thu, 14 Sep 2017 07:24:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9431a0557160e1ec384a6cfe37d1225528bd236e486010ffc0b75ce7fe1c1465`  
		Last Modified: Thu, 14 Sep 2017 05:01:46 GMT  
		Size: 54.3 MB (54282902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55cb599456d973177fdc3d7050c7ec35b40ce332a091fc128c303b6931336caa`  
		Last Modified: Thu, 14 Sep 2017 07:25:07 GMT  
		Size: 11.5 MB (11486399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c398a3eff6c98113bdfaff53473d5c8bac7e59e318e83abf4b24379028b6cd`  
		Last Modified: Thu, 14 Sep 2017 07:25:01 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b8134fcc4b7d380835d525a49f982f107ea9c33773e45bc00c2cacf21058d2`  
		Last Modified: Thu, 14 Sep 2017 07:27:02 GMT  
		Size: 82.7 MB (82682671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4670702ab436f1d61ce584ba91e54dc5fea1ae3982ed0437bf446a1326b1f5ff`  
		Last Modified: Thu, 14 Sep 2017 07:26:56 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:1.1.1`

```console
$ docker pull storm@sha256:2dd3adf3d326352bd478906847417194ae887e0cecf339f7c0268bb6e9e83a43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `storm:1.1.1` - linux; amd64

```console
$ docker pull storm@sha256:ae631691b2a92474890141d629deb9e672ba0fe823e12f176d5bf5331b7e805c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.4 MB (150444314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa4f6a234b4532f65bbae021ce948ff4bf129660be5cef59acf2353f3d66d649`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 14 Sep 2017 04:25:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:25:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 07:21:35 GMT
RUN apk add --no-cache     bash     python     su-exec
# Thu, 14 Sep 2017 07:21:36 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Thu, 14 Sep 2017 07:21:36 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Thu, 14 Sep 2017 07:21:36 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Thu, 14 Sep 2017 07:23:47 GMT
ARG DISTRO_NAME=apache-storm-1.1.1
# Thu, 14 Sep 2017 07:24:50 GMT
# ARGS: DISTRO_NAME=apache-storm-1.1.1 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Thu, 14 Sep 2017 07:24:50 GMT
WORKDIR /apache-storm-1.1.1
# Thu, 14 Sep 2017 07:24:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.1.1/bin
# Thu, 14 Sep 2017 07:24:51 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Thu, 14 Sep 2017 07:24:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9431a0557160e1ec384a6cfe37d1225528bd236e486010ffc0b75ce7fe1c1465`  
		Last Modified: Thu, 14 Sep 2017 05:01:46 GMT  
		Size: 54.3 MB (54282902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55cb599456d973177fdc3d7050c7ec35b40ce332a091fc128c303b6931336caa`  
		Last Modified: Thu, 14 Sep 2017 07:25:07 GMT  
		Size: 11.5 MB (11486399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c398a3eff6c98113bdfaff53473d5c8bac7e59e318e83abf4b24379028b6cd`  
		Last Modified: Thu, 14 Sep 2017 07:25:01 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b8134fcc4b7d380835d525a49f982f107ea9c33773e45bc00c2cacf21058d2`  
		Last Modified: Thu, 14 Sep 2017 07:27:02 GMT  
		Size: 82.7 MB (82682671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4670702ab436f1d61ce584ba91e54dc5fea1ae3982ed0437bf446a1326b1f5ff`  
		Last Modified: Thu, 14 Sep 2017 07:26:56 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:latest`

```console
$ docker pull storm@sha256:2dd3adf3d326352bd478906847417194ae887e0cecf339f7c0268bb6e9e83a43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `storm:latest` - linux; amd64

```console
$ docker pull storm@sha256:ae631691b2a92474890141d629deb9e672ba0fe823e12f176d5bf5331b7e805c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.4 MB (150444314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa4f6a234b4532f65bbae021ce948ff4bf129660be5cef59acf2353f3d66d649`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 14 Sep 2017 04:25:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:25:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 07:21:35 GMT
RUN apk add --no-cache     bash     python     su-exec
# Thu, 14 Sep 2017 07:21:36 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Thu, 14 Sep 2017 07:21:36 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Thu, 14 Sep 2017 07:21:36 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Thu, 14 Sep 2017 07:23:47 GMT
ARG DISTRO_NAME=apache-storm-1.1.1
# Thu, 14 Sep 2017 07:24:50 GMT
# ARGS: DISTRO_NAME=apache-storm-1.1.1 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Thu, 14 Sep 2017 07:24:50 GMT
WORKDIR /apache-storm-1.1.1
# Thu, 14 Sep 2017 07:24:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.1.1/bin
# Thu, 14 Sep 2017 07:24:51 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Thu, 14 Sep 2017 07:24:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9431a0557160e1ec384a6cfe37d1225528bd236e486010ffc0b75ce7fe1c1465`  
		Last Modified: Thu, 14 Sep 2017 05:01:46 GMT  
		Size: 54.3 MB (54282902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55cb599456d973177fdc3d7050c7ec35b40ce332a091fc128c303b6931336caa`  
		Last Modified: Thu, 14 Sep 2017 07:25:07 GMT  
		Size: 11.5 MB (11486399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c398a3eff6c98113bdfaff53473d5c8bac7e59e318e83abf4b24379028b6cd`  
		Last Modified: Thu, 14 Sep 2017 07:25:01 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b8134fcc4b7d380835d525a49f982f107ea9c33773e45bc00c2cacf21058d2`  
		Last Modified: Thu, 14 Sep 2017 07:27:02 GMT  
		Size: 82.7 MB (82682671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4670702ab436f1d61ce584ba91e54dc5fea1ae3982ed0437bf446a1326b1f5ff`  
		Last Modified: Thu, 14 Sep 2017 07:26:56 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
