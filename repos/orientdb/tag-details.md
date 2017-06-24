<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `orientdb`

-	[`orientdb:2.0.18`](#orientdb2018)
-	[`orientdb:2.1.25`](#orientdb2125)
-	[`orientdb:2.2.22`](#orientdb2222)
-	[`orientdb:latest`](#orientdblatest)
-	[`orientdb:2.2.22-spatial`](#orientdb2222-spatial)
-	[`orientdb:3.0.0m1`](#orientdb300m1)
-	[`orientdb:3.0.0m1-spatial`](#orientdb300m1-spatial)

## `orientdb:2.0.18`

```console
$ docker pull orientdb@sha256:af4a6ffd0d847e2814bcd03d0998d02f8525abad10058cd7cf25da5a328b6871
```

-	Platforms:
	-	linux; amd64

### `orientdb:2.0.18` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.9 MB (281942698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6de736b3f5beb77c0bc78b0d663dce26f31d177de9e8b7fe46a315a129c20133`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 01:52:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:41:22 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:41:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:41:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:41:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:41:26 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 23 Jun 2017 02:41:27 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:41:28 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:41:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:42:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:42:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 02:45:49 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Fri, 23 Jun 2017 02:45:49 GMT
ENV ORIENTDB_VERSION=2.0.18
# Fri, 23 Jun 2017 02:45:50 GMT
ENV ORIENTDB_DOWNLOAD_MD5=9e7b7e7b6d95795b188adb4e5898a1b8
# Fri, 23 Jun 2017 02:45:51 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=f562794536bbf8ae2145f96153e58b1e5d9211b3
# Fri, 23 Jun 2017 02:45:56 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 23 Jun 2017 02:45:57 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 02:45:58 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 23 Jun 2017 02:45:59 GMT
WORKDIR /orientdb
# Fri, 23 Jun 2017 02:46:01 GMT
EXPOSE 2424/tcp
# Fri, 23 Jun 2017 02:46:02 GMT
EXPOSE 2480/tcp
# Fri, 23 Jun 2017 02:46:03 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd20aef2091895544e1f428c076d83267e49462e9c8ce7b19516940fa360f818`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 594.4 KB (594399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45121f36b267f144e4eb0fcf5eb9d7f9cdfa042a932e7f21644e2180afa1ec2`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ab37d060419095173bd9b57d4e21d2c1b353f23e11241371508d59d43639c8`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c611b2838da4d4cfad18b4e414d5c40d1bc9c1c54c1b4733a2245a1e71c379`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3c1f5610321e9bff27d7b8f01668ffce08f7519c724137c76aaebf911b9879`  
		Last Modified: Fri, 23 Jun 2017 14:09:26 GMT  
		Size: 119.4 MB (119365066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463554ba15a0ea914e9827ef50734bcdba3dd7fbf525b26b67f8528032bf2c4a`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 289.7 KB (289653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1526d9816cf808742b5ea824b1b7f8c92a4cedeeed72780e208031f1a2b297`  
		Last Modified: Sat, 24 Jun 2017 17:34:43 GMT  
		Size: 46.6 MB (46586544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.1.25`

```console
$ docker pull orientdb@sha256:ee9917ee7f480146e6062c636447ced8c388c19ca559eb237d1098e052089899
```

-	Platforms:
	-	linux; amd64

### `orientdb:2.1.25` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.4 MB (103395936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf2bc696599fd3ed87a79bca25de87323efea16683b83ee3b27e69b12c1a584d`
-	Default Command: `["server.sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:35:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Mon, 19 Jun 2017 22:35:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:35:29 GMT
ENV JAVA_VERSION=8u131
# Mon, 19 Jun 2017 22:35:29 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Mon, 19 Jun 2017 22:36:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 19 Jun 2017 22:38:21 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Mon, 19 Jun 2017 22:38:22 GMT
ENV ORIENTDB_VERSION=2.1.25
# Mon, 19 Jun 2017 22:38:23 GMT
ENV ORIENTDB_DOWNLOAD_MD5=054da3fb7c56e7822b2af116966576ce
# Mon, 19 Jun 2017 22:38:24 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=b7b08242b40117ac8eb9a201f8704bde839dfcb8
# Mon, 19 Jun 2017 22:38:50 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Mon, 19 Jun 2017 22:39:17 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Mon, 19 Jun 2017 22:39:17 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:39:42 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Mon, 19 Jun 2017 22:39:43 GMT
WORKDIR /orientdb
# Mon, 19 Jun 2017 22:39:44 GMT
EXPOSE 2424/tcp
# Mon, 19 Jun 2017 22:40:08 GMT
EXPOSE 2480/tcp
# Mon, 19 Jun 2017 22:40:09 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d6fbc2ab6eafc4e238b99bdbd470d39d99dffe9d70123777c74469211364bb`  
		Last Modified: Tue, 20 Jun 2017 21:04:41 GMT  
		Size: 70.1 MB (70050234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f46dc0d14788cbbc5094bb1b8226e5fa7ab744ee67132402b647967408c1d48`  
		Last Modified: Sat, 24 Jun 2017 17:35:17 GMT  
		Size: 267.3 KB (267342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6e0be2ab82b0ad1c29177fc3786b466dd162995cd5fe5a9baf8ec948d6160ed`  
		Last Modified: Sat, 24 Jun 2017 17:35:20 GMT  
		Size: 31.1 MB (31087966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.22`

```console
$ docker pull orientdb@sha256:2b8199000ebb2ca1ab2909580e9128116b658b36c8369897f4be1ef65d443246
```

-	Platforms:
	-	linux; amd64

### `orientdb:2.2.22` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.5 MB (115460623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:534132d8f5d4584589a0ede8cdc3880463d70dfd38b27035313c0a2d0b0f32dd`
-	Default Command: `["server.sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:35:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Mon, 19 Jun 2017 22:35:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:35:29 GMT
ENV JAVA_VERSION=8u131
# Mon, 19 Jun 2017 22:35:29 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Mon, 19 Jun 2017 22:36:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 19 Jun 2017 22:38:21 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Mon, 19 Jun 2017 22:41:19 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Mon, 19 Jun 2017 22:41:44 GMT
ENV ORIENTDB_VERSION=2.2.22
# Mon, 19 Jun 2017 22:41:45 GMT
ENV ORIENTDB_DOWNLOAD_MD5=e882a61a79d93a40fa1a38f8e8845a0f
# Mon, 19 Jun 2017 22:41:46 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=c9ef48dc96a01daf9a2841b9340d31b9567f7691
# Mon, 19 Jun 2017 22:41:47 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.22/orientdb-community-2.2.22.tar.gz
# Mon, 19 Jun 2017 22:41:52 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Mon, 19 Jun 2017 22:41:57 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Mon, 19 Jun 2017 22:41:59 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:42:01 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Mon, 19 Jun 2017 22:42:03 GMT
WORKDIR /orientdb
# Mon, 19 Jun 2017 22:42:04 GMT
EXPOSE 2424/tcp
# Mon, 19 Jun 2017 22:42:05 GMT
EXPOSE 2480/tcp
# Mon, 19 Jun 2017 22:42:06 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d6fbc2ab6eafc4e238b99bdbd470d39d99dffe9d70123777c74469211364bb`  
		Last Modified: Tue, 20 Jun 2017 21:04:41 GMT  
		Size: 70.1 MB (70050234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87917c268a1f489468c4f5e93d6d5838d09913da373e448326ae847ebc84c2e6`  
		Last Modified: Sat, 24 Jun 2017 17:35:52 GMT  
		Size: 646.6 KB (646643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5e590d98fb6c4fb7f652abc01b12d4af5935df1f31cf0a56009acc08399982`  
		Last Modified: Sat, 24 Jun 2017 17:35:56 GMT  
		Size: 42.8 MB (42773352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:latest`

```console
$ docker pull orientdb@sha256:2b8199000ebb2ca1ab2909580e9128116b658b36c8369897f4be1ef65d443246
```

-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.5 MB (115460623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:534132d8f5d4584589a0ede8cdc3880463d70dfd38b27035313c0a2d0b0f32dd`
-	Default Command: `["server.sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:35:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Mon, 19 Jun 2017 22:35:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:35:29 GMT
ENV JAVA_VERSION=8u131
# Mon, 19 Jun 2017 22:35:29 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Mon, 19 Jun 2017 22:36:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 19 Jun 2017 22:38:21 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Mon, 19 Jun 2017 22:41:19 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Mon, 19 Jun 2017 22:41:44 GMT
ENV ORIENTDB_VERSION=2.2.22
# Mon, 19 Jun 2017 22:41:45 GMT
ENV ORIENTDB_DOWNLOAD_MD5=e882a61a79d93a40fa1a38f8e8845a0f
# Mon, 19 Jun 2017 22:41:46 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=c9ef48dc96a01daf9a2841b9340d31b9567f7691
# Mon, 19 Jun 2017 22:41:47 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.22/orientdb-community-2.2.22.tar.gz
# Mon, 19 Jun 2017 22:41:52 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Mon, 19 Jun 2017 22:41:57 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Mon, 19 Jun 2017 22:41:59 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:42:01 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Mon, 19 Jun 2017 22:42:03 GMT
WORKDIR /orientdb
# Mon, 19 Jun 2017 22:42:04 GMT
EXPOSE 2424/tcp
# Mon, 19 Jun 2017 22:42:05 GMT
EXPOSE 2480/tcp
# Mon, 19 Jun 2017 22:42:06 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d6fbc2ab6eafc4e238b99bdbd470d39d99dffe9d70123777c74469211364bb`  
		Last Modified: Tue, 20 Jun 2017 21:04:41 GMT  
		Size: 70.1 MB (70050234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87917c268a1f489468c4f5e93d6d5838d09913da373e448326ae847ebc84c2e6`  
		Last Modified: Sat, 24 Jun 2017 17:35:52 GMT  
		Size: 646.6 KB (646643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5e590d98fb6c4fb7f652abc01b12d4af5935df1f31cf0a56009acc08399982`  
		Last Modified: Sat, 24 Jun 2017 17:35:56 GMT  
		Size: 42.8 MB (42773352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.22-spatial`

```console
$ docker pull orientdb@sha256:241dd76ec6b3f6baa5218d28b3681842c9008325b6f4bf8ca011feeda2286a86
```

-	Platforms:
	-	linux; amd64

### `orientdb:2.2.22-spatial` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.7 MB (116662896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d42274f3eb376d7384bc2226be2030bd4c38f7963088ec0138b52630458bd12`
-	Default Command: `["server.sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:35:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Mon, 19 Jun 2017 22:35:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:35:29 GMT
ENV JAVA_VERSION=8u131
# Mon, 19 Jun 2017 22:35:29 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Mon, 19 Jun 2017 22:36:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 19 Jun 2017 22:38:21 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Mon, 19 Jun 2017 22:41:19 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Mon, 19 Jun 2017 22:41:44 GMT
ENV ORIENTDB_VERSION=2.2.22
# Mon, 19 Jun 2017 22:41:45 GMT
ENV ORIENTDB_DOWNLOAD_MD5=e882a61a79d93a40fa1a38f8e8845a0f
# Mon, 19 Jun 2017 22:41:46 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=c9ef48dc96a01daf9a2841b9340d31b9567f7691
# Mon, 19 Jun 2017 22:41:47 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.22/orientdb-community-2.2.22.tar.gz
# Mon, 19 Jun 2017 22:41:52 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Mon, 19 Jun 2017 22:41:57 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Mon, 19 Jun 2017 22:41:59 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:42:01 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Mon, 19 Jun 2017 22:42:03 GMT
WORKDIR /orientdb
# Mon, 19 Jun 2017 22:42:04 GMT
EXPOSE 2424/tcp
# Mon, 19 Jun 2017 22:42:05 GMT
EXPOSE 2480/tcp
# Mon, 19 Jun 2017 22:42:06 GMT
CMD ["server.sh"]
# Mon, 19 Jun 2017 22:42:33 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_MD5=ff846d1b89893ef66912a8b58dd148a5
# Mon, 19 Jun 2017 22:42:34 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_SHA1=123c8f6e00f08767f7938c8244aa97f14db9f35d
# Mon, 19 Jun 2017 22:42:36 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-spatial/2.2.22/orientdb-spatial-2.2.22-dist.jar
# Mon, 19 Jun 2017 22:42:39 GMT
RUN wget $ORIENTDB_DOWNLOAD_SPATIAL_URL     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_MD5 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | md5sum -c -     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_SHA1 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | sha1sum -c -     && mv orientdb-spatial-*-dist.jar /orientdb/lib/
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d6fbc2ab6eafc4e238b99bdbd470d39d99dffe9d70123777c74469211364bb`  
		Last Modified: Tue, 20 Jun 2017 21:04:41 GMT  
		Size: 70.1 MB (70050234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87917c268a1f489468c4f5e93d6d5838d09913da373e448326ae847ebc84c2e6`  
		Last Modified: Sat, 24 Jun 2017 17:35:52 GMT  
		Size: 646.6 KB (646643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5e590d98fb6c4fb7f652abc01b12d4af5935df1f31cf0a56009acc08399982`  
		Last Modified: Sat, 24 Jun 2017 17:35:56 GMT  
		Size: 42.8 MB (42773352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14f8fd0c49c311a29903c740ec5e2b2737218e5d6abc4a85285eee40cd28af69`  
		Last Modified: Sat, 24 Jun 2017 17:36:54 GMT  
		Size: 1.2 MB (1202273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.0m1`

```console
$ docker pull orientdb@sha256:7d3d61ed96bcd50f536198a8f3207df83c702a1c55aa487d794174c07b279afc
```

-	Platforms:
	-	linux; amd64

### `orientdb:3.0.0m1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.9 MB (122881197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5088b8345ae784d424649285c77c1c3cb0c48026fb7b2b0ffdb9f17ac0496c2`
-	Default Command: `["server.sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:35:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Mon, 19 Jun 2017 22:35:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:35:29 GMT
ENV JAVA_VERSION=8u131
# Mon, 19 Jun 2017 22:35:29 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Mon, 19 Jun 2017 22:36:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 19 Jun 2017 22:38:21 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Mon, 19 Jun 2017 22:41:19 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Mon, 19 Jun 2017 22:43:06 GMT
ENV ORIENTDB_VERSION=3.0.0m1
# Mon, 19 Jun 2017 22:43:07 GMT
ENV ORIENTDB_DOWNLOAD_MD5=e667351657f17fe4fb6d2f3b5a1bc9ad
# Mon, 19 Jun 2017 22:43:09 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=f621e0887a274b5f1277937f9925615a0e68edb1
# Mon, 19 Jun 2017 22:43:10 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community-tp3/3.0.0m1/orientdb-community-tp3-3.0.0m1.tar.gz
# Mon, 19 Jun 2017 22:43:38 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Mon, 19 Jun 2017 22:43:45 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-tp3-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-tp3-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-tp3-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-tp3-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Mon, 19 Jun 2017 22:43:46 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:43:47 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Mon, 19 Jun 2017 22:43:50 GMT
WORKDIR /orientdb
# Mon, 19 Jun 2017 22:43:51 GMT
EXPOSE 2424/tcp
# Mon, 19 Jun 2017 22:43:53 GMT
EXPOSE 2480/tcp
# Mon, 19 Jun 2017 22:43:55 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d6fbc2ab6eafc4e238b99bdbd470d39d99dffe9d70123777c74469211364bb`  
		Last Modified: Tue, 20 Jun 2017 21:04:41 GMT  
		Size: 70.1 MB (70050234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b24aa707ac5c6297a557dafbbe4b9d6180218df0841c00b8d684a72473d779`  
		Last Modified: Sat, 24 Jun 2017 17:37:26 GMT  
		Size: 646.6 KB (646644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8e716b837690b2b117fcf982d54b92c21f6814bb51ee6f0a11a7072bbae88a`  
		Last Modified: Sat, 24 Jun 2017 17:37:31 GMT  
		Size: 50.2 MB (50193925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.0m1-spatial`

```console
$ docker pull orientdb@sha256:eadbb7c76abf00eb5d337ed70886db0511f844c5602bc5798e3011c501025248
```

-	Platforms:
	-	linux; amd64

### `orientdb:3.0.0m1-spatial` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125623316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5feda926a768d530a524f240a688b69f6b539f7986a04ba50bfb81c139a36816`
-	Default Command: `["server.sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:35:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Mon, 19 Jun 2017 22:35:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:35:29 GMT
ENV JAVA_VERSION=8u131
# Mon, 19 Jun 2017 22:35:29 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Mon, 19 Jun 2017 22:36:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 19 Jun 2017 22:38:21 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Mon, 19 Jun 2017 22:41:19 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Mon, 19 Jun 2017 22:43:06 GMT
ENV ORIENTDB_VERSION=3.0.0m1
# Mon, 19 Jun 2017 22:44:22 GMT
ENV ORIENTDB_DOWNLOAD_MD5=ced149e809b02301b926f73ea4cf9c50
# Mon, 19 Jun 2017 22:44:46 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=d7f61d1435380e31338a96d87cfa59fdb5f0c579
# Mon, 19 Jun 2017 22:44:48 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community-spatial/3.0.0m1/orientdb-community-spatial-3.0.0m1.tar.gz
# Mon, 19 Jun 2017 22:44:54 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Mon, 19 Jun 2017 22:45:01 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Mon, 19 Jun 2017 22:45:23 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:45:24 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Mon, 19 Jun 2017 22:45:26 GMT
WORKDIR /orientdb
# Mon, 19 Jun 2017 22:45:27 GMT
EXPOSE 2424/tcp
# Mon, 19 Jun 2017 22:45:29 GMT
EXPOSE 2480/tcp
# Mon, 19 Jun 2017 22:45:30 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d6fbc2ab6eafc4e238b99bdbd470d39d99dffe9d70123777c74469211364bb`  
		Last Modified: Tue, 20 Jun 2017 21:04:41 GMT  
		Size: 70.1 MB (70050234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9caa985d548d06a3c8f6be90651581961361560efea13a7b40ae894f4309a97b`  
		Last Modified: Sat, 24 Jun 2017 17:38:03 GMT  
		Size: 646.6 KB (646648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf557f95ecbe742039dbd03905089859877e011b9ddee9567e6ae2ed597ad7e`  
		Last Modified: Sat, 24 Jun 2017 17:38:08 GMT  
		Size: 52.9 MB (52936040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
