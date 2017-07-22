<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `storm`

-	[`storm:0.9.7`](#storm097)
-	[`storm:0.9`](#storm09)
-	[`storm:0.10.2`](#storm0102)
-	[`storm:0.10`](#storm010)
-	[`storm:1.0.3`](#storm103)
-	[`storm:1.0`](#storm10)
-	[`storm:1.1.0`](#storm110)
-	[`storm:1.1`](#storm11)
-	[`storm:latest`](#stormlatest)

## `storm:0.9.7`

```console
$ docker pull storm@sha256:52a29e4e38d5b2d189f3873e78b86e2592a3eee6db0f32c0f834149476f0930d
```

-	Platforms:
	-	linux; amd64

### `storm:0.9.7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.9 MB (88926749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d79bea024b16ef5410fe542794af1dcff8850cdd522b98df8d7946d561e8b85`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 28 Jun 2017 23:29:50 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Wed, 28 Jun 2017 23:29:55 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 28 Jun 2017 23:30:18 GMT
ENV STORM_USER=storm
# Wed, 28 Jun 2017 23:30:19 GMT
ENV STORM_CONF_DIR=/conf
# Wed, 28 Jun 2017 23:30:19 GMT
ENV STORM_DATA_DIR=/data
# Wed, 28 Jun 2017 23:30:20 GMT
ENV STORM_LOG_DIR=/logs
# Wed, 28 Jun 2017 23:30:46 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Wed, 28 Jun 2017 23:30:47 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 28 Jun 2017 23:33:00 GMT
ARG DISTRO_NAME=apache-storm-0.9.7
# Wed, 28 Jun 2017 23:33:08 GMT
# ARGS: DISTRO_NAME=apache-storm-0.9.7 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Wed, 28 Jun 2017 23:33:28 GMT
WORKDIR /apache-storm-0.9.7
# Wed, 28 Jun 2017 23:33:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-0.9.7/bin
# Wed, 28 Jun 2017 23:33:31 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Wed, 28 Jun 2017 23:33:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aff6598ef2097856b690e3a757fb2426171a4400ea55b2ecef86c880ff37010`  
		Last Modified: Sat, 22 Jul 2017 03:30:37 GMT  
		Size: 11.5 MB (11486822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcaf0dc4f3f1343055ebd0b019510d7db0c09124b4948d2fc3a42962f0ac4427`  
		Last Modified: Sat, 22 Jul 2017 03:30:32 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9917192e4aafaad0c2e420e29c7cae2668a68739e41f42eff3e4dd9f7fb08934`  
		Last Modified: Sat, 22 Jul 2017 03:30:34 GMT  
		Size: 21.2 MB (21166295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac6959a05d2066c49ac59599dfeafbcfa6497e1d54f4349d792179c390242ce7`  
		Last Modified: Sat, 22 Jul 2017 03:30:32 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:0.9`

```console
$ docker pull storm@sha256:52a29e4e38d5b2d189f3873e78b86e2592a3eee6db0f32c0f834149476f0930d
```

-	Platforms:
	-	linux; amd64

### `storm:0.9` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.9 MB (88926749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d79bea024b16ef5410fe542794af1dcff8850cdd522b98df8d7946d561e8b85`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 28 Jun 2017 23:29:50 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Wed, 28 Jun 2017 23:29:55 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 28 Jun 2017 23:30:18 GMT
ENV STORM_USER=storm
# Wed, 28 Jun 2017 23:30:19 GMT
ENV STORM_CONF_DIR=/conf
# Wed, 28 Jun 2017 23:30:19 GMT
ENV STORM_DATA_DIR=/data
# Wed, 28 Jun 2017 23:30:20 GMT
ENV STORM_LOG_DIR=/logs
# Wed, 28 Jun 2017 23:30:46 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Wed, 28 Jun 2017 23:30:47 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 28 Jun 2017 23:33:00 GMT
ARG DISTRO_NAME=apache-storm-0.9.7
# Wed, 28 Jun 2017 23:33:08 GMT
# ARGS: DISTRO_NAME=apache-storm-0.9.7 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Wed, 28 Jun 2017 23:33:28 GMT
WORKDIR /apache-storm-0.9.7
# Wed, 28 Jun 2017 23:33:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-0.9.7/bin
# Wed, 28 Jun 2017 23:33:31 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Wed, 28 Jun 2017 23:33:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aff6598ef2097856b690e3a757fb2426171a4400ea55b2ecef86c880ff37010`  
		Last Modified: Sat, 22 Jul 2017 03:30:37 GMT  
		Size: 11.5 MB (11486822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcaf0dc4f3f1343055ebd0b019510d7db0c09124b4948d2fc3a42962f0ac4427`  
		Last Modified: Sat, 22 Jul 2017 03:30:32 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9917192e4aafaad0c2e420e29c7cae2668a68739e41f42eff3e4dd9f7fb08934`  
		Last Modified: Sat, 22 Jul 2017 03:30:34 GMT  
		Size: 21.2 MB (21166295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac6959a05d2066c49ac59599dfeafbcfa6497e1d54f4349d792179c390242ce7`  
		Last Modified: Sat, 22 Jul 2017 03:30:32 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:0.10.2`

```console
$ docker pull storm@sha256:d1b64e9ab699d00a5f8b41ce00ed5e39e45773e188dc7a663e1c73c0f2b61dbc
```

-	Platforms:
	-	linux; amd64

### `storm:0.10.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.4 MB (145439364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5a9afb97ac4a34e8f6d325f70a11062f62f8db87d53fde93ae798ea7d1bc791`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 28 Jun 2017 23:29:50 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Wed, 28 Jun 2017 23:29:55 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 28 Jun 2017 23:30:18 GMT
ENV STORM_USER=storm
# Wed, 28 Jun 2017 23:30:19 GMT
ENV STORM_CONF_DIR=/conf
# Wed, 28 Jun 2017 23:30:19 GMT
ENV STORM_DATA_DIR=/data
# Wed, 28 Jun 2017 23:30:20 GMT
ENV STORM_LOG_DIR=/logs
# Wed, 28 Jun 2017 23:30:46 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Wed, 28 Jun 2017 23:30:47 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 28 Jun 2017 23:30:48 GMT
ARG DISTRO_NAME=apache-storm-0.10.2
# Wed, 28 Jun 2017 23:31:23 GMT
# ARGS: DISTRO_NAME=apache-storm-0.10.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Wed, 28 Jun 2017 23:31:42 GMT
WORKDIR /apache-storm-0.10.2
# Wed, 28 Jun 2017 23:31:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-0.10.2/bin
# Wed, 28 Jun 2017 23:31:44 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Wed, 28 Jun 2017 23:32:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aff6598ef2097856b690e3a757fb2426171a4400ea55b2ecef86c880ff37010`  
		Last Modified: Sat, 22 Jul 2017 03:30:37 GMT  
		Size: 11.5 MB (11486822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcaf0dc4f3f1343055ebd0b019510d7db0c09124b4948d2fc3a42962f0ac4427`  
		Last Modified: Sat, 22 Jul 2017 03:30:32 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e054698938d7249fd01b31267e588a08f4707943b8de97249c2ffd30c61a4704`  
		Last Modified: Sat, 22 Jul 2017 03:30:59 GMT  
		Size: 77.7 MB (77678910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f58d238b1ecd5ea343bac4b60b43393265e2da5330faece4b2457d253efa9e`  
		Last Modified: Sat, 22 Jul 2017 03:30:51 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:0.10`

```console
$ docker pull storm@sha256:d1b64e9ab699d00a5f8b41ce00ed5e39e45773e188dc7a663e1c73c0f2b61dbc
```

-	Platforms:
	-	linux; amd64

### `storm:0.10` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.4 MB (145439364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5a9afb97ac4a34e8f6d325f70a11062f62f8db87d53fde93ae798ea7d1bc791`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 28 Jun 2017 23:29:50 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Wed, 28 Jun 2017 23:29:55 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 28 Jun 2017 23:30:18 GMT
ENV STORM_USER=storm
# Wed, 28 Jun 2017 23:30:19 GMT
ENV STORM_CONF_DIR=/conf
# Wed, 28 Jun 2017 23:30:19 GMT
ENV STORM_DATA_DIR=/data
# Wed, 28 Jun 2017 23:30:20 GMT
ENV STORM_LOG_DIR=/logs
# Wed, 28 Jun 2017 23:30:46 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Wed, 28 Jun 2017 23:30:47 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 28 Jun 2017 23:30:48 GMT
ARG DISTRO_NAME=apache-storm-0.10.2
# Wed, 28 Jun 2017 23:31:23 GMT
# ARGS: DISTRO_NAME=apache-storm-0.10.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Wed, 28 Jun 2017 23:31:42 GMT
WORKDIR /apache-storm-0.10.2
# Wed, 28 Jun 2017 23:31:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-0.10.2/bin
# Wed, 28 Jun 2017 23:31:44 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Wed, 28 Jun 2017 23:32:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aff6598ef2097856b690e3a757fb2426171a4400ea55b2ecef86c880ff37010`  
		Last Modified: Sat, 22 Jul 2017 03:30:37 GMT  
		Size: 11.5 MB (11486822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcaf0dc4f3f1343055ebd0b019510d7db0c09124b4948d2fc3a42962f0ac4427`  
		Last Modified: Sat, 22 Jul 2017 03:30:32 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e054698938d7249fd01b31267e588a08f4707943b8de97249c2ffd30c61a4704`  
		Last Modified: Sat, 22 Jul 2017 03:30:59 GMT  
		Size: 77.7 MB (77678910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f58d238b1ecd5ea343bac4b60b43393265e2da5330faece4b2457d253efa9e`  
		Last Modified: Sat, 22 Jul 2017 03:30:51 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:1.0.3`

```console
$ docker pull storm@sha256:d61e44ece083144291eb5e83612a5f0856349048027031d1739a76a17e007c1d
```

-	Platforms:
	-	linux; amd64

### `storm:1.0.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.7 MB (258665529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8434b3d65079fba035665830cce8805f90d4894f2361f9625041977fb8bdb565`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 22 Jul 2017 03:15:42 GMT
RUN apk add --no-cache     bash     python     su-exec
# Sat, 22 Jul 2017 03:15:43 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Sat, 22 Jul 2017 03:15:44 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Sat, 22 Jul 2017 03:15:44 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Sat, 22 Jul 2017 03:15:44 GMT
ARG DISTRO_NAME=apache-storm-1.0.3
# Sat, 22 Jul 2017 03:23:31 GMT
# ARGS: DISTRO_NAME=apache-storm-1.0.3 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Sat, 22 Jul 2017 03:23:31 GMT
WORKDIR /apache-storm-1.0.3
# Sat, 22 Jul 2017 03:23:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.0.3/bin
# Sat, 22 Jul 2017 03:23:32 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Sat, 22 Jul 2017 03:23:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6775e48ef8809cec5121474ae85cf872ce56a8067366e5a288749185d8ac3149`  
		Last Modified: Sat, 22 Jul 2017 03:31:15 GMT  
		Size: 11.5 MB (11486809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b43644ffe0d072ddd02df195ee8c26c8b67554afaf10073a9a004d98acb367a`  
		Last Modified: Sat, 22 Jul 2017 03:31:12 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48c71601c14d7a32f41a283299bee4da8d9ae90984d44581c65289264114382`  
		Last Modified: Sat, 22 Jul 2017 03:31:27 GMT  
		Size: 190.9 MB (190905087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:442466ec037b06e712c3a3dc7a073d9a99b0282ea4843e3fc174717a36813de0`  
		Last Modified: Sat, 22 Jul 2017 03:31:12 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:1.0`

```console
$ docker pull storm@sha256:d61e44ece083144291eb5e83612a5f0856349048027031d1739a76a17e007c1d
```

-	Platforms:
	-	linux; amd64

### `storm:1.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.7 MB (258665529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8434b3d65079fba035665830cce8805f90d4894f2361f9625041977fb8bdb565`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 22 Jul 2017 03:15:42 GMT
RUN apk add --no-cache     bash     python     su-exec
# Sat, 22 Jul 2017 03:15:43 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Sat, 22 Jul 2017 03:15:44 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Sat, 22 Jul 2017 03:15:44 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Sat, 22 Jul 2017 03:15:44 GMT
ARG DISTRO_NAME=apache-storm-1.0.3
# Sat, 22 Jul 2017 03:23:31 GMT
# ARGS: DISTRO_NAME=apache-storm-1.0.3 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Sat, 22 Jul 2017 03:23:31 GMT
WORKDIR /apache-storm-1.0.3
# Sat, 22 Jul 2017 03:23:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.0.3/bin
# Sat, 22 Jul 2017 03:23:32 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Sat, 22 Jul 2017 03:23:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6775e48ef8809cec5121474ae85cf872ce56a8067366e5a288749185d8ac3149`  
		Last Modified: Sat, 22 Jul 2017 03:31:15 GMT  
		Size: 11.5 MB (11486809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b43644ffe0d072ddd02df195ee8c26c8b67554afaf10073a9a004d98acb367a`  
		Last Modified: Sat, 22 Jul 2017 03:31:12 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48c71601c14d7a32f41a283299bee4da8d9ae90984d44581c65289264114382`  
		Last Modified: Sat, 22 Jul 2017 03:31:27 GMT  
		Size: 190.9 MB (190905087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:442466ec037b06e712c3a3dc7a073d9a99b0282ea4843e3fc174717a36813de0`  
		Last Modified: Sat, 22 Jul 2017 03:31:12 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:1.1.0`

```console
$ docker pull storm@sha256:2a99032793936a00efe0d22bb45847755854555d2121338ee40298ea9dca4925
```

-	Platforms:
	-	linux; amd64

### `storm:1.1.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.2 MB (151205421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e96c5d4e6bd600b76eae52e9c084db0a7c759007216752e9f6854cead0b6113e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 22 Jul 2017 03:15:42 GMT
RUN apk add --no-cache     bash     python     su-exec
# Sat, 22 Jul 2017 03:15:43 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Sat, 22 Jul 2017 03:15:44 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Sat, 22 Jul 2017 03:15:44 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Sat, 22 Jul 2017 03:23:34 GMT
ARG DISTRO_NAME=apache-storm-1.1.0
# Sat, 22 Jul 2017 03:30:25 GMT
# ARGS: DISTRO_NAME=apache-storm-1.1.0 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Sat, 22 Jul 2017 03:30:25 GMT
WORKDIR /apache-storm-1.1.0
# Sat, 22 Jul 2017 03:30:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.1.0/bin
# Sat, 22 Jul 2017 03:30:25 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Sat, 22 Jul 2017 03:30:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6775e48ef8809cec5121474ae85cf872ce56a8067366e5a288749185d8ac3149`  
		Last Modified: Sat, 22 Jul 2017 03:31:15 GMT  
		Size: 11.5 MB (11486809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b43644ffe0d072ddd02df195ee8c26c8b67554afaf10073a9a004d98acb367a`  
		Last Modified: Sat, 22 Jul 2017 03:31:12 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab5a24e64f78af0ff3c7e2472a627925a705b26d1a6562a3cddb1e84ff08bcc2`  
		Last Modified: Sat, 22 Jul 2017 03:31:51 GMT  
		Size: 83.4 MB (83444978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c65a1ac83d4416fe265c3adaaf234e27112d22a002eaa5b82496fb32d6164d`  
		Last Modified: Sat, 22 Jul 2017 03:31:41 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:1.1`

```console
$ docker pull storm@sha256:2a99032793936a00efe0d22bb45847755854555d2121338ee40298ea9dca4925
```

-	Platforms:
	-	linux; amd64

### `storm:1.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.2 MB (151205421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e96c5d4e6bd600b76eae52e9c084db0a7c759007216752e9f6854cead0b6113e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 22 Jul 2017 03:15:42 GMT
RUN apk add --no-cache     bash     python     su-exec
# Sat, 22 Jul 2017 03:15:43 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Sat, 22 Jul 2017 03:15:44 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Sat, 22 Jul 2017 03:15:44 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Sat, 22 Jul 2017 03:23:34 GMT
ARG DISTRO_NAME=apache-storm-1.1.0
# Sat, 22 Jul 2017 03:30:25 GMT
# ARGS: DISTRO_NAME=apache-storm-1.1.0 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Sat, 22 Jul 2017 03:30:25 GMT
WORKDIR /apache-storm-1.1.0
# Sat, 22 Jul 2017 03:30:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.1.0/bin
# Sat, 22 Jul 2017 03:30:25 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Sat, 22 Jul 2017 03:30:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6775e48ef8809cec5121474ae85cf872ce56a8067366e5a288749185d8ac3149`  
		Last Modified: Sat, 22 Jul 2017 03:31:15 GMT  
		Size: 11.5 MB (11486809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b43644ffe0d072ddd02df195ee8c26c8b67554afaf10073a9a004d98acb367a`  
		Last Modified: Sat, 22 Jul 2017 03:31:12 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab5a24e64f78af0ff3c7e2472a627925a705b26d1a6562a3cddb1e84ff08bcc2`  
		Last Modified: Sat, 22 Jul 2017 03:31:51 GMT  
		Size: 83.4 MB (83444978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c65a1ac83d4416fe265c3adaaf234e27112d22a002eaa5b82496fb32d6164d`  
		Last Modified: Sat, 22 Jul 2017 03:31:41 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:latest`

```console
$ docker pull storm@sha256:2a99032793936a00efe0d22bb45847755854555d2121338ee40298ea9dca4925
```

-	Platforms:
	-	linux; amd64

### `storm:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.2 MB (151205421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e96c5d4e6bd600b76eae52e9c084db0a7c759007216752e9f6854cead0b6113e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 22 Jul 2017 03:15:42 GMT
RUN apk add --no-cache     bash     python     su-exec
# Sat, 22 Jul 2017 03:15:43 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Sat, 22 Jul 2017 03:15:44 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Sat, 22 Jul 2017 03:15:44 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Sat, 22 Jul 2017 03:23:34 GMT
ARG DISTRO_NAME=apache-storm-1.1.0
# Sat, 22 Jul 2017 03:30:25 GMT
# ARGS: DISTRO_NAME=apache-storm-1.1.0 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Sat, 22 Jul 2017 03:30:25 GMT
WORKDIR /apache-storm-1.1.0
# Sat, 22 Jul 2017 03:30:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.1.0/bin
# Sat, 22 Jul 2017 03:30:25 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Sat, 22 Jul 2017 03:30:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6775e48ef8809cec5121474ae85cf872ce56a8067366e5a288749185d8ac3149`  
		Last Modified: Sat, 22 Jul 2017 03:31:15 GMT  
		Size: 11.5 MB (11486809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b43644ffe0d072ddd02df195ee8c26c8b67554afaf10073a9a004d98acb367a`  
		Last Modified: Sat, 22 Jul 2017 03:31:12 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab5a24e64f78af0ff3c7e2472a627925a705b26d1a6562a3cddb1e84ff08bcc2`  
		Last Modified: Sat, 22 Jul 2017 03:31:51 GMT  
		Size: 83.4 MB (83444978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c65a1ac83d4416fe265c3adaaf234e27112d22a002eaa5b82496fb32d6164d`  
		Last Modified: Sat, 22 Jul 2017 03:31:41 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
