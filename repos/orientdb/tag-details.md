<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `orientdb`

-	[`orientdb:2.0.18`](#orientdb2018)
-	[`orientdb:2.1.23`](#orientdb2123)
-	[`orientdb:2.2.10`](#orientdb2210)
-	[`orientdb:latest`](#orientdblatest)

## `orientdb:2.0.18`

```console
$ docker pull orientdb@sha256:aa60bd6d484391b1538f7b0dcfdfe355dc3272f3335fcdb9f227208ea62641ac
```

-	Platforms:
	-	linux; amd64

### `orientdb:2.0.18` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.9 MB (289886699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13ef344058a5cf3b4ec2db2cf5b6e6c256325b8706f27fb0b352f0f0ac33a129`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:52:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:12:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:15:01 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Wed, 31 Aug 2016 17:15:01 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 17:15:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Wed, 31 Aug 2016 17:15:02 GMT
ENV JAVA_VERSION=8u102
# Wed, 31 Aug 2016 17:15:03 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 31 Aug 2016 17:15:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 31 Aug 2016 17:16:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 17:16:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Aug 2016 21:35:16 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 31 Aug 2016 21:35:16 GMT
ENV ORIENTDB_VERSION=2.0.18
# Wed, 31 Aug 2016 21:35:17 GMT
ENV ORIENTDB_DOWNLOAD_MD5=9e7b7e7b6d95795b188adb4e5898a1b8
# Wed, 31 Aug 2016 21:35:17 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=f562794536bbf8ae2145f96153e58b1e5d9211b3
# Wed, 31 Aug 2016 21:35:20 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 31 Aug 2016 21:35:20 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 21:35:20 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 31 Aug 2016 21:35:21 GMT
WORKDIR /orientdb
# Wed, 31 Aug 2016 21:35:21 GMT
EXPOSE 2424/tcp
# Wed, 31 Aug 2016 21:35:22 GMT
EXPOSE 2480/tcp
# Wed, 31 Aug 2016 21:35:22 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fe39c4d348c7fc411d46929c1dac390e3d7107efc9f8f69641b50e14459f7`  
		Last Modified: Tue, 30 Aug 2016 21:59:08 GMT  
		Size: 18.5 MB (18527264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3b77eefc06095198ecb7e758833493eab01708fae7f408b0631e6463c31a48`  
		Last Modified: Tue, 30 Aug 2016 21:59:22 GMT  
		Size: 42.5 MB (42495629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b357fc28db91a380d7af3e914aecbd0f395b8a84892ace50c54abb56460fe87`  
		Last Modified: Wed, 31 Aug 2016 17:21:39 GMT  
		Size: 593.3 KB (593342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a614fcb4b1be6e9b94f188ac859803e5214d24c2af86c6437bd74817e75613d`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcd29499236d6a936fbacb8d65340eeb7177b930148fb1c401d5fa71ab88c82`  
		Last Modified: Wed, 31 Aug 2016 17:26:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df99ed2f401ca635670635998c2b540cc748e390ffd8b47a2092815e6cb56b6`  
		Last Modified: Wed, 31 Aug 2016 17:26:53 GMT  
		Size: 130.1 MB (130073666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b6cf75aef4eade93918ef73b6c2896c664f50fdb8e6f5e4c586c05a3d4c864`  
		Last Modified: Wed, 31 Aug 2016 17:26:13 GMT  
		Size: 284.2 KB (284227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8010a18ff0c83937e445a30182bf499ee7cb22824f1e4f087eb2a0f8d326ca57`  
		Last Modified: Wed, 31 Aug 2016 21:35:34 GMT  
		Size: 46.5 MB (46544845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.1.23`

```console
$ docker pull orientdb@sha256:58ffd7210d829445ff17bca4155b275c9133f6f5873c0a3b00ee1a4c9cc7ec73
```

-	Platforms:
	-	linux; amd64

### `orientdb:2.1.23` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82948869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b77dcf81a8e61238f2b20fc92d06898ca17ce4e86f9157d0e736012b1eff7e4`
-	Default Command: `["server.sh"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:20:18 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 00:20:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 00:24:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 20 Sep 2016 00:24:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 00:24:55 GMT
ENV JAVA_VERSION=8u92
# Tue, 20 Sep 2016 00:24:55 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 20 Sep 2016 00:25:02 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 00:40:02 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 20 Sep 2016 00:40:02 GMT
ENV ORIENTDB_VERSION=2.1.23
# Tue, 20 Sep 2016 00:40:02 GMT
ENV ORIENTDB_DOWNLOAD_MD5=fb4eb924f411116b79f0c8653bbee126
# Tue, 20 Sep 2016 00:40:03 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=bc1123445b7dfc52f3f54cb05bb8b805de696c76
# Tue, 20 Sep 2016 00:40:04 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Tue, 20 Sep 2016 00:40:09 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 20 Sep 2016 00:40:10 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 00:40:10 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 20 Sep 2016 00:40:10 GMT
WORKDIR /orientdb
# Tue, 20 Sep 2016 00:40:11 GMT
EXPOSE 2424/tcp
# Tue, 20 Sep 2016 00:40:11 GMT
EXPOSE 2480/tcp
# Tue, 20 Sep 2016 00:40:11 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187ddf52152d8d92e51722e536dd02ec43d2f66b476ea87b4151c382fc922fea`  
		Last Modified: Tue, 20 Sep 2016 00:20:42 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf67fd54f62e201ba82c703badd08312a6e2eca50d5b9f17b8c3cc7c574d426`  
		Last Modified: Tue, 20 Sep 2016 00:25:28 GMT  
		Size: 49.3 MB (49325081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29144bf9fef672887482eb051429ed0bcfa123052241a2fcefe5c3e286d0b7be`  
		Last Modified: Tue, 20 Sep 2016 00:40:20 GMT  
		Size: 261.8 KB (261817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:402c367773884274773e427bed12c6e5d102468e1797ff765669de662fc2f18e`  
		Last Modified: Tue, 20 Sep 2016 00:40:24 GMT  
		Size: 31.1 MB (31050690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.10`

```console
$ docker pull orientdb@sha256:370ccc2f0678389df86b6d535fcfd72e09903e973c06d57defc665c49ae0975c
```

-	Platforms:
	-	linux; amd64

### `orientdb:2.2.10` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86854359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80e9381d5fddbfcce8f3439031dea32ccedc2d5f4f8cb25c4866bc7c4071b1ea`
-	Default Command: `["server.sh"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 30 Aug 2016 19:55:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:55:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 30 Aug 2016 20:25:04 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 30 Aug 2016 20:25:11 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Thu, 15 Sep 2016 19:27:48 GMT
ENV ORIENTDB_VERSION=2.2.10
# Thu, 15 Sep 2016 19:27:49 GMT
ENV ORIENTDB_DOWNLOAD_MD5=a4d189ba1485fd974de1f9964f09825e
# Thu, 15 Sep 2016 19:27:49 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=14397248e00d93e4c0f2de1c788ccf4c60d6456c
# Thu, 15 Sep 2016 19:27:49 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.10/orientdb-community-2.2.10.tar.gz
# Thu, 15 Sep 2016 19:27:51 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Thu, 15 Sep 2016 19:27:53 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 15 Sep 2016 19:27:54 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 15 Sep 2016 19:27:54 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 15 Sep 2016 19:27:55 GMT
WORKDIR /orientdb
# Thu, 15 Sep 2016 19:27:55 GMT
EXPOSE 2424/tcp
# Thu, 15 Sep 2016 19:27:55 GMT
EXPOSE 2480/tcp
# Thu, 15 Sep 2016 19:27:56 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f0d61cd0d229546b1e33b0c92036ad3f35b42dd2c9a945aeaf67f84684ce26`  
		Last Modified: Tue, 30 Aug 2016 21:56:07 GMT  
		Size: 49.3 MB (49325330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ae58f72bb926e89b7d354495875271c0ca247b0da1fe41e09a34f949772f98`  
		Last Modified: Thu, 15 Sep 2016 19:28:17 GMT  
		Size: 261.8 KB (261821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49762c604cb5d96b1e0952a0c399454b84b3f4e02c82ec7c669eff6a5c488d8`  
		Last Modified: Thu, 15 Sep 2016 19:28:21 GMT  
		Size: 35.0 MB (34956690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:latest`

```console
$ docker pull orientdb@sha256:23a3d1fd4be0ef999540de28a3ebc28e7adfc48fa300d774dc1bd144f433f0cf
```

-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86854841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c039a2237d161f95719d3100007c6b825d9f334d8c61bceb6acde78183ff84a`
-	Default Command: `["server.sh"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:20:18 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 00:20:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 00:24:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 20 Sep 2016 00:24:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 00:24:55 GMT
ENV JAVA_VERSION=8u92
# Tue, 20 Sep 2016 00:24:55 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 20 Sep 2016 00:25:02 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 00:40:02 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 20 Sep 2016 00:40:33 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Tue, 20 Sep 2016 00:40:33 GMT
ENV ORIENTDB_VERSION=2.2.10
# Tue, 20 Sep 2016 00:40:34 GMT
ENV ORIENTDB_DOWNLOAD_MD5=a4d189ba1485fd974de1f9964f09825e
# Tue, 20 Sep 2016 00:40:34 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=14397248e00d93e4c0f2de1c788ccf4c60d6456c
# Tue, 20 Sep 2016 00:40:34 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.10/orientdb-community-2.2.10.tar.gz
# Tue, 20 Sep 2016 00:40:35 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Tue, 20 Sep 2016 00:40:38 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 20 Sep 2016 00:40:39 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 00:40:39 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 20 Sep 2016 00:40:40 GMT
WORKDIR /orientdb
# Tue, 20 Sep 2016 00:40:40 GMT
EXPOSE 2424/tcp
# Tue, 20 Sep 2016 00:40:40 GMT
EXPOSE 2480/tcp
# Tue, 20 Sep 2016 00:40:41 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187ddf52152d8d92e51722e536dd02ec43d2f66b476ea87b4151c382fc922fea`  
		Last Modified: Tue, 20 Sep 2016 00:20:42 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf67fd54f62e201ba82c703badd08312a6e2eca50d5b9f17b8c3cc7c574d426`  
		Last Modified: Tue, 20 Sep 2016 00:25:28 GMT  
		Size: 49.3 MB (49325081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aa56f9d911aafb1f9b4ea3f505ad885d33458d55b3044da9d58ae7582bb501f`  
		Last Modified: Tue, 20 Sep 2016 00:40:49 GMT  
		Size: 261.8 KB (261819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9502b0ae95c8e471181dc472455cbae56c475aa9fb1b7f4b5be2b8df574b2d06`  
		Last Modified: Tue, 20 Sep 2016 00:40:53 GMT  
		Size: 35.0 MB (34956660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
