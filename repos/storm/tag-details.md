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
$ docker pull storm@sha256:1b36147049097b41c22ee30f501398f13713511ce224d00f66a617090ce8c889
```

-	Platforms:
	-	linux; amd64

### `storm:0.9.7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.9 MB (88861319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa9480905dd2dcc8be1f2f437e6a3d491fcd322dbb77092bfd086a28424673fe`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

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
# Wed, 10 May 2017 23:16:49 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Wed, 10 May 2017 23:16:52 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 10 May 2017 23:16:53 GMT
ENV STORM_USER=storm
# Wed, 10 May 2017 23:16:54 GMT
ENV STORM_CONF_DIR=/conf
# Wed, 10 May 2017 23:16:55 GMT
ENV STORM_DATA_DIR=/data
# Wed, 10 May 2017 23:16:55 GMT
ENV STORM_LOG_DIR=/logs
# Wed, 10 May 2017 23:16:57 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Wed, 10 May 2017 23:16:58 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 10 May 2017 23:17:32 GMT
ARG DISTRO_NAME=apache-storm-0.9.7
# Wed, 10 May 2017 23:17:38 GMT
# ARGS: DISTRO_NAME=apache-storm-0.9.7 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Wed, 10 May 2017 23:17:38 GMT
WORKDIR /apache-storm-0.9.7
# Wed, 10 May 2017 23:17:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-0.9.7/bin
# Wed, 10 May 2017 23:17:40 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Wed, 10 May 2017 23:17:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
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
	-	`sha256:b4fdaf5d25e5c616fd9622798561a8766416414607f839be07b23f67f4c849c2`  
		Last Modified: Sat, 13 May 2017 19:00:52 GMT  
		Size: 11.5 MB (11484904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86143b0c891907ed857ac567aca589306438523805c9168245c435223307b3b`  
		Last Modified: Sat, 13 May 2017 19:00:47 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e1a80e5ba69bf00cd1c9e46e98b70a63e325cf7436c6efd304dae2f8b0b331`  
		Last Modified: Sat, 13 May 2017 19:01:44 GMT  
		Size: 21.2 MB (21165566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2147ea30ac51433013eb5e035fb99d10c8e8d15e9b4717068ed248e824eb829`  
		Last Modified: Sat, 13 May 2017 19:01:42 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:0.9`

```console
$ docker pull storm@sha256:1b36147049097b41c22ee30f501398f13713511ce224d00f66a617090ce8c889
```

-	Platforms:
	-	linux; amd64

### `storm:0.9` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.9 MB (88861319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa9480905dd2dcc8be1f2f437e6a3d491fcd322dbb77092bfd086a28424673fe`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

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
# Wed, 10 May 2017 23:16:49 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Wed, 10 May 2017 23:16:52 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 10 May 2017 23:16:53 GMT
ENV STORM_USER=storm
# Wed, 10 May 2017 23:16:54 GMT
ENV STORM_CONF_DIR=/conf
# Wed, 10 May 2017 23:16:55 GMT
ENV STORM_DATA_DIR=/data
# Wed, 10 May 2017 23:16:55 GMT
ENV STORM_LOG_DIR=/logs
# Wed, 10 May 2017 23:16:57 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Wed, 10 May 2017 23:16:58 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 10 May 2017 23:17:32 GMT
ARG DISTRO_NAME=apache-storm-0.9.7
# Wed, 10 May 2017 23:17:38 GMT
# ARGS: DISTRO_NAME=apache-storm-0.9.7 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Wed, 10 May 2017 23:17:38 GMT
WORKDIR /apache-storm-0.9.7
# Wed, 10 May 2017 23:17:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-0.9.7/bin
# Wed, 10 May 2017 23:17:40 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Wed, 10 May 2017 23:17:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
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
	-	`sha256:b4fdaf5d25e5c616fd9622798561a8766416414607f839be07b23f67f4c849c2`  
		Last Modified: Sat, 13 May 2017 19:00:52 GMT  
		Size: 11.5 MB (11484904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86143b0c891907ed857ac567aca589306438523805c9168245c435223307b3b`  
		Last Modified: Sat, 13 May 2017 19:00:47 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e1a80e5ba69bf00cd1c9e46e98b70a63e325cf7436c6efd304dae2f8b0b331`  
		Last Modified: Sat, 13 May 2017 19:01:44 GMT  
		Size: 21.2 MB (21165566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2147ea30ac51433013eb5e035fb99d10c8e8d15e9b4717068ed248e824eb829`  
		Last Modified: Sat, 13 May 2017 19:01:42 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:0.10.2`

```console
$ docker pull storm@sha256:4396c454be00cfd199b2b9f80e246bdf1fa38f22c6c02185551d45d98f02ac79
```

-	Platforms:
	-	linux; amd64

### `storm:0.10.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.4 MB (145373958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f726b548df8b163e0bd7ff65b56bf2bcd98892a1123dcd6bd35ca80207a7c7ef`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

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
# Wed, 10 May 2017 23:16:49 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Wed, 10 May 2017 23:16:52 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 10 May 2017 23:16:53 GMT
ENV STORM_USER=storm
# Wed, 10 May 2017 23:16:54 GMT
ENV STORM_CONF_DIR=/conf
# Wed, 10 May 2017 23:16:55 GMT
ENV STORM_DATA_DIR=/data
# Wed, 10 May 2017 23:16:55 GMT
ENV STORM_LOG_DIR=/logs
# Wed, 10 May 2017 23:16:57 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Wed, 10 May 2017 23:16:58 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 10 May 2017 23:16:58 GMT
ARG DISTRO_NAME=apache-storm-0.10.2
# Wed, 10 May 2017 23:17:08 GMT
# ARGS: DISTRO_NAME=apache-storm-0.10.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Wed, 10 May 2017 23:17:09 GMT
WORKDIR /apache-storm-0.10.2
# Wed, 10 May 2017 23:17:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-0.10.2/bin
# Wed, 10 May 2017 23:17:11 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Wed, 10 May 2017 23:17:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
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
	-	`sha256:b4fdaf5d25e5c616fd9622798561a8766416414607f839be07b23f67f4c849c2`  
		Last Modified: Sat, 13 May 2017 19:00:52 GMT  
		Size: 11.5 MB (11484904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86143b0c891907ed857ac567aca589306438523805c9168245c435223307b3b`  
		Last Modified: Sat, 13 May 2017 19:00:47 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8bae265c688f09d89a8d018c6f64a317c291127d1de59b8e0cf7de280af0f74`  
		Last Modified: Sat, 13 May 2017 19:00:54 GMT  
		Size: 77.7 MB (77678204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa5ce449f4d06dc78baf4d958f34b15d6248243cb96998a0122f321b9529bbf`  
		Last Modified: Sat, 13 May 2017 19:00:47 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:0.10`

```console
$ docker pull storm@sha256:4396c454be00cfd199b2b9f80e246bdf1fa38f22c6c02185551d45d98f02ac79
```

-	Platforms:
	-	linux; amd64

### `storm:0.10` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.4 MB (145373958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f726b548df8b163e0bd7ff65b56bf2bcd98892a1123dcd6bd35ca80207a7c7ef`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

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
# Wed, 10 May 2017 23:16:49 GMT
MAINTAINER Elisey Zanko <elisey.zanko@gmail.com>
# Wed, 10 May 2017 23:16:52 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 10 May 2017 23:16:53 GMT
ENV STORM_USER=storm
# Wed, 10 May 2017 23:16:54 GMT
ENV STORM_CONF_DIR=/conf
# Wed, 10 May 2017 23:16:55 GMT
ENV STORM_DATA_DIR=/data
# Wed, 10 May 2017 23:16:55 GMT
ENV STORM_LOG_DIR=/logs
# Wed, 10 May 2017 23:16:57 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Wed, 10 May 2017 23:16:58 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 10 May 2017 23:16:58 GMT
ARG DISTRO_NAME=apache-storm-0.10.2
# Wed, 10 May 2017 23:17:08 GMT
# ARGS: DISTRO_NAME=apache-storm-0.10.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Wed, 10 May 2017 23:17:09 GMT
WORKDIR /apache-storm-0.10.2
# Wed, 10 May 2017 23:17:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-0.10.2/bin
# Wed, 10 May 2017 23:17:11 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Wed, 10 May 2017 23:17:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
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
	-	`sha256:b4fdaf5d25e5c616fd9622798561a8766416414607f839be07b23f67f4c849c2`  
		Last Modified: Sat, 13 May 2017 19:00:52 GMT  
		Size: 11.5 MB (11484904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86143b0c891907ed857ac567aca589306438523805c9168245c435223307b3b`  
		Last Modified: Sat, 13 May 2017 19:00:47 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8bae265c688f09d89a8d018c6f64a317c291127d1de59b8e0cf7de280af0f74`  
		Last Modified: Sat, 13 May 2017 19:00:54 GMT  
		Size: 77.7 MB (77678204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa5ce449f4d06dc78baf4d958f34b15d6248243cb96998a0122f321b9529bbf`  
		Last Modified: Sat, 13 May 2017 19:00:47 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:1.0.3`

```console
$ docker pull storm@sha256:451152224c548b36cf46b193d88c2f878699da36116930870bf9f1b39803c08d
```

-	Platforms:
	-	linux; amd64

### `storm:1.0.3` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.6 MB (258600134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2a9487cb6e8b3888dd790bdf9f15e06aee7c18b901a96728d433dbbf17501fc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

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
# Wed, 10 May 2017 23:18:04 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 10 May 2017 23:18:04 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Wed, 10 May 2017 23:18:06 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Wed, 10 May 2017 23:18:07 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 10 May 2017 23:18:08 GMT
ARG DISTRO_NAME=apache-storm-1.0.3
# Wed, 10 May 2017 23:18:20 GMT
# ARGS: DISTRO_NAME=apache-storm-1.0.3 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Wed, 10 May 2017 23:18:20 GMT
WORKDIR /apache-storm-1.0.3
# Wed, 10 May 2017 23:18:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.0.3/bin
# Wed, 10 May 2017 23:18:22 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Wed, 10 May 2017 23:18:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
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
	-	`sha256:b1906871bc6094976bbeff8ce628114f10fb95c22b61f83609617cbb5eecaced`  
		Last Modified: Sat, 13 May 2017 19:02:37 GMT  
		Size: 11.5 MB (11484880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9befa1e3e1623821e47831a04d86946f3ffe7d00fe0d2064ae7755c0977deaf0`  
		Last Modified: Sat, 13 May 2017 19:02:33 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861446b8225dd9900348147d9ada1d7734ae15b8f6ff4cb4111e5c2c22869fd6`  
		Last Modified: Sat, 13 May 2017 19:02:51 GMT  
		Size: 190.9 MB (190904405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77b979f1f89b57db72802e90a0869aa1cc9cae9a05ee3448c8baab3dd9ca62c`  
		Last Modified: Sat, 13 May 2017 19:02:33 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:1.0`

```console
$ docker pull storm@sha256:451152224c548b36cf46b193d88c2f878699da36116930870bf9f1b39803c08d
```

-	Platforms:
	-	linux; amd64

### `storm:1.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.6 MB (258600134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2a9487cb6e8b3888dd790bdf9f15e06aee7c18b901a96728d433dbbf17501fc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

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
# Wed, 10 May 2017 23:18:04 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 10 May 2017 23:18:04 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Wed, 10 May 2017 23:18:06 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Wed, 10 May 2017 23:18:07 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 10 May 2017 23:18:08 GMT
ARG DISTRO_NAME=apache-storm-1.0.3
# Wed, 10 May 2017 23:18:20 GMT
# ARGS: DISTRO_NAME=apache-storm-1.0.3 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Wed, 10 May 2017 23:18:20 GMT
WORKDIR /apache-storm-1.0.3
# Wed, 10 May 2017 23:18:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.0.3/bin
# Wed, 10 May 2017 23:18:22 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Wed, 10 May 2017 23:18:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
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
	-	`sha256:b1906871bc6094976bbeff8ce628114f10fb95c22b61f83609617cbb5eecaced`  
		Last Modified: Sat, 13 May 2017 19:02:37 GMT  
		Size: 11.5 MB (11484880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9befa1e3e1623821e47831a04d86946f3ffe7d00fe0d2064ae7755c0977deaf0`  
		Last Modified: Sat, 13 May 2017 19:02:33 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861446b8225dd9900348147d9ada1d7734ae15b8f6ff4cb4111e5c2c22869fd6`  
		Last Modified: Sat, 13 May 2017 19:02:51 GMT  
		Size: 190.9 MB (190904405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77b979f1f89b57db72802e90a0869aa1cc9cae9a05ee3448c8baab3dd9ca62c`  
		Last Modified: Sat, 13 May 2017 19:02:33 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:1.1.0`

```console
$ docker pull storm@sha256:f4dbd5160e24be5d41a638a07adf169f1ec391b8a0091a3c2abd4f1f2c08540c
```

-	Platforms:
	-	linux; amd64

### `storm:1.1.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.1 MB (151140059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa41c9ca588f8c3f400374f5b8594cbe104b1e61cf7ac5d6072e3539323ba77e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

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
# Wed, 10 May 2017 23:18:04 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 10 May 2017 23:18:04 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Wed, 10 May 2017 23:18:06 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Wed, 10 May 2017 23:18:07 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 10 May 2017 23:18:43 GMT
ARG DISTRO_NAME=apache-storm-1.1.0
# Wed, 10 May 2017 23:18:51 GMT
# ARGS: DISTRO_NAME=apache-storm-1.1.0 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Wed, 10 May 2017 23:18:52 GMT
WORKDIR /apache-storm-1.1.0
# Wed, 10 May 2017 23:18:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.1.0/bin
# Wed, 10 May 2017 23:18:54 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Wed, 10 May 2017 23:18:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
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
	-	`sha256:b1906871bc6094976bbeff8ce628114f10fb95c22b61f83609617cbb5eecaced`  
		Last Modified: Sat, 13 May 2017 19:02:37 GMT  
		Size: 11.5 MB (11484880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9befa1e3e1623821e47831a04d86946f3ffe7d00fe0d2064ae7755c0977deaf0`  
		Last Modified: Sat, 13 May 2017 19:02:33 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9b3050afeda26905aa2890f285ee1f147a0d07e32d9646d4fb79242b2898a8`  
		Last Modified: Sat, 13 May 2017 19:03:48 GMT  
		Size: 83.4 MB (83444330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a2840956b894db2282f5c01b0df96ffdc622cd23f58a2a4d999761492553078`  
		Last Modified: Sat, 13 May 2017 19:03:40 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:1.1`

```console
$ docker pull storm@sha256:f4dbd5160e24be5d41a638a07adf169f1ec391b8a0091a3c2abd4f1f2c08540c
```

-	Platforms:
	-	linux; amd64

### `storm:1.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.1 MB (151140059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa41c9ca588f8c3f400374f5b8594cbe104b1e61cf7ac5d6072e3539323ba77e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

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
# Wed, 10 May 2017 23:18:04 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 10 May 2017 23:18:04 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Wed, 10 May 2017 23:18:06 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Wed, 10 May 2017 23:18:07 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 10 May 2017 23:18:43 GMT
ARG DISTRO_NAME=apache-storm-1.1.0
# Wed, 10 May 2017 23:18:51 GMT
# ARGS: DISTRO_NAME=apache-storm-1.1.0 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Wed, 10 May 2017 23:18:52 GMT
WORKDIR /apache-storm-1.1.0
# Wed, 10 May 2017 23:18:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.1.0/bin
# Wed, 10 May 2017 23:18:54 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Wed, 10 May 2017 23:18:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
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
	-	`sha256:b1906871bc6094976bbeff8ce628114f10fb95c22b61f83609617cbb5eecaced`  
		Last Modified: Sat, 13 May 2017 19:02:37 GMT  
		Size: 11.5 MB (11484880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9befa1e3e1623821e47831a04d86946f3ffe7d00fe0d2064ae7755c0977deaf0`  
		Last Modified: Sat, 13 May 2017 19:02:33 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9b3050afeda26905aa2890f285ee1f147a0d07e32d9646d4fb79242b2898a8`  
		Last Modified: Sat, 13 May 2017 19:03:48 GMT  
		Size: 83.4 MB (83444330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a2840956b894db2282f5c01b0df96ffdc622cd23f58a2a4d999761492553078`  
		Last Modified: Sat, 13 May 2017 19:03:40 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:latest`

```console
$ docker pull storm@sha256:f4dbd5160e24be5d41a638a07adf169f1ec391b8a0091a3c2abd4f1f2c08540c
```

-	Platforms:
	-	linux; amd64

### `storm:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.1 MB (151140059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa41c9ca588f8c3f400374f5b8594cbe104b1e61cf7ac5d6072e3539323ba77e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

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
# Wed, 10 May 2017 23:18:04 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 10 May 2017 23:18:04 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Wed, 10 May 2017 23:18:06 GMT
RUN set -x     && adduser -D "$STORM_USER"     && mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"     && chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"
# Wed, 10 May 2017 23:18:07 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 10 May 2017 23:18:43 GMT
ARG DISTRO_NAME=apache-storm-1.1.0
# Wed, 10 May 2017 23:18:51 GMT
# ARGS: DISTRO_NAME=apache-storm-1.1.0 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -x     && apk add --no-cache --virtual .build-deps         gnupg     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz"     && wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY"     && gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz"     && tar -xzf "$DISTRO_NAME.tar.gz"     && chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME"     && rm -r "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc"     && apk del .build-deps
# Wed, 10 May 2017 23:18:52 GMT
WORKDIR /apache-storm-1.1.0
# Wed, 10 May 2017 23:18:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.1.0/bin
# Wed, 10 May 2017 23:18:54 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Wed, 10 May 2017 23:18:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
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
	-	`sha256:b1906871bc6094976bbeff8ce628114f10fb95c22b61f83609617cbb5eecaced`  
		Last Modified: Sat, 13 May 2017 19:02:37 GMT  
		Size: 11.5 MB (11484880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9befa1e3e1623821e47831a04d86946f3ffe7d00fe0d2064ae7755c0977deaf0`  
		Last Modified: Sat, 13 May 2017 19:02:33 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9b3050afeda26905aa2890f285ee1f147a0d07e32d9646d4fb79242b2898a8`  
		Last Modified: Sat, 13 May 2017 19:03:48 GMT  
		Size: 83.4 MB (83444330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a2840956b894db2282f5c01b0df96ffdc622cd23f58a2a4d999761492553078`  
		Last Modified: Sat, 13 May 2017 19:03:40 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
