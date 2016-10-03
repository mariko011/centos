<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `orientdb`

-	[`orientdb:2.0.18`](#orientdb2018)
-	[`orientdb:2.1.23`](#orientdb2123)
-	[`orientdb:2.2.11`](#orientdb2211)
-	[`orientdb:latest`](#orientdblatest)

## `orientdb:2.0.18`

```console
$ docker pull orientdb@sha256:fbd203516b10dc09f8210f8996dd0fcdf7b97c31ed78aabe5c47220f5df9839e
```

-	Platforms:
	-	linux; amd64

### `orientdb:2.0.18` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.9 MB (289875254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bb6584e05348a53a6db98d548003639e64adce8819bb4355afcb23321e58499`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:34:26 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:34:26 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:34:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Fri, 23 Sep 2016 19:34:27 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:34:28 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:34:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:35:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:35:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Sep 2016 21:14:38 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Fri, 23 Sep 2016 21:14:38 GMT
ENV ORIENTDB_VERSION=2.0.18
# Fri, 23 Sep 2016 21:14:39 GMT
ENV ORIENTDB_DOWNLOAD_MD5=9e7b7e7b6d95795b188adb4e5898a1b8
# Fri, 23 Sep 2016 21:14:39 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=f562794536bbf8ae2145f96153e58b1e5d9211b3
# Fri, 23 Sep 2016 21:14:42 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 23 Sep 2016 21:14:43 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 21:14:43 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 23 Sep 2016 21:14:43 GMT
WORKDIR /orientdb
# Fri, 23 Sep 2016 21:14:44 GMT
EXPOSE 2424/tcp
# Fri, 23 Sep 2016 21:14:44 GMT
EXPOSE 2480/tcp
# Fri, 23 Sep 2016 21:14:45 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd38215a2fae624e391280d5d9edb6cdb993a0ee5f3acb2188819336f993e80`  
		Last Modified: Fri, 23 Sep 2016 19:31:08 GMT  
		Size: 593.0 KB (593001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b26cafa72d5c36eb885c0fa4d359dac87ce0ecbb1f8c8dbf8d7f17b4a7385c6`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f340301a2a0fd2ddb7dd16b2ea7e7319d473a865c7bc9f93aac4dfb5e9e3a665`  
		Last Modified: Fri, 23 Sep 2016 19:35:42 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8512ca758302270e4f0a519f8afd1e4aaab0bbdb9f4bb369d93e3a547e53bf4`  
		Last Modified: Fri, 23 Sep 2016 19:36:13 GMT  
		Size: 130.1 MB (130074162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76b0eeb6b4da36f6af1f62ec8b07597883176035553ff18633821edfd3750ad`  
		Last Modified: Fri, 23 Sep 2016 19:35:43 GMT  
		Size: 284.2 KB (284191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51bfa3cc591e45058d4265ea7d239b52f373ca3f291a14f5b8d105e81aad08b2`  
		Last Modified: Fri, 23 Sep 2016 21:14:58 GMT  
		Size: 46.5 MB (46544851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.1.23`

```console
$ docker pull orientdb@sha256:7599c875d3aaaa31db658f391b4b36bb477f27ef3c226917c6bc8ee103230a5f
```

-	Platforms:
	-	linux; amd64

### `orientdb:2.1.23` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.0 MB (82951034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca874eae4ce71ad7610fb3c2861b5e25b9ba205fea27a5086406e3888a4c9902`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:05:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 23 Sep 2016 17:05:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:05:18 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 17:17:32 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Fri, 23 Sep 2016 17:17:33 GMT
ENV ORIENTDB_VERSION=2.1.23
# Fri, 23 Sep 2016 17:17:33 GMT
ENV ORIENTDB_DOWNLOAD_MD5=fb4eb924f411116b79f0c8653bbee126
# Fri, 23 Sep 2016 17:17:33 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=bc1123445b7dfc52f3f54cb05bb8b805de696c76
# Fri, 23 Sep 2016 17:17:35 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Fri, 23 Sep 2016 17:17:37 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 23 Sep 2016 17:17:38 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:17:38 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 23 Sep 2016 17:17:39 GMT
WORKDIR /orientdb
# Fri, 23 Sep 2016 17:17:39 GMT
EXPOSE 2424/tcp
# Fri, 23 Sep 2016 17:17:39 GMT
EXPOSE 2480/tcp
# Fri, 23 Sep 2016 17:17:40 GMT
CMD ["server.sh"]
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
	-	`sha256:9536b9909f79d52b70efe60abe868e66019b131e7618f3498475b236a756e2ad`  
		Last Modified: Fri, 23 Sep 2016 17:05:37 GMT  
		Size: 49.3 MB (49325354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83cdcae596faf0720907208fcc806d8985887b3fe3d2c64a4238d76207a03448`  
		Last Modified: Fri, 23 Sep 2016 17:17:49 GMT  
		Size: 261.8 KB (261816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9efc5d6643d3f6fdd916d3a540be66598fa95949e8b8f515f07239f0ea1f084`  
		Last Modified: Fri, 23 Sep 2016 17:17:53 GMT  
		Size: 31.1 MB (31050703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.11`

```console
$ docker pull orientdb@sha256:e60bf434814970ddc4399ba85a75de5ab9a766176b8931ecd1ee2693095912ad
```

-	Platforms:
	-	linux; amd64

### `orientdb:2.2.11` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86865213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:662d247cd05254c24efc563ced75429e9353f0e2b9e45ca10e50b576552f4e1b`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:05:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 23 Sep 2016 17:05:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:05:18 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 17:17:32 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Fri, 23 Sep 2016 17:18:03 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Mon, 03 Oct 2016 17:16:49 GMT
ENV ORIENTDB_VERSION=2.2.11
# Mon, 03 Oct 2016 17:16:50 GMT
ENV ORIENTDB_DOWNLOAD_MD5=df97a70c559256029f846caabe456e45
# Mon, 03 Oct 2016 17:16:50 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=f97a4d7a3bc5b60fff718c7c6408153b866f35b9
# Mon, 03 Oct 2016 17:16:50 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.11/orientdb-community-2.2.11.tar.gz
# Mon, 03 Oct 2016 17:16:52 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Mon, 03 Oct 2016 17:16:55 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Mon, 03 Oct 2016 17:16:55 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 03 Oct 2016 17:16:56 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Mon, 03 Oct 2016 17:16:56 GMT
WORKDIR /orientdb
# Mon, 03 Oct 2016 17:16:57 GMT
EXPOSE 2424/tcp
# Mon, 03 Oct 2016 17:16:57 GMT
EXPOSE 2480/tcp
# Mon, 03 Oct 2016 17:16:57 GMT
CMD ["server.sh"]
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
	-	`sha256:9536b9909f79d52b70efe60abe868e66019b131e7618f3498475b236a756e2ad`  
		Last Modified: Fri, 23 Sep 2016 17:05:37 GMT  
		Size: 49.3 MB (49325354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be175839097487ea4f568af3b10fe6a09979cef339194e645f2da96a5748f01a`  
		Last Modified: Mon, 03 Oct 2016 17:17:27 GMT  
		Size: 261.8 KB (261816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f09b80a6352e4e6419e556975eb5ce4d8c297ede525404d060e2e8ca343d00c`  
		Last Modified: Mon, 03 Oct 2016 17:17:31 GMT  
		Size: 35.0 MB (34964882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:latest`

```console
$ docker pull orientdb@sha256:e60bf434814970ddc4399ba85a75de5ab9a766176b8931ecd1ee2693095912ad
```

-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86865213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:662d247cd05254c24efc563ced75429e9353f0e2b9e45ca10e50b576552f4e1b`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:05:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 23 Sep 2016 17:05:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:05:18 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 17:17:32 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Fri, 23 Sep 2016 17:18:03 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Mon, 03 Oct 2016 17:16:49 GMT
ENV ORIENTDB_VERSION=2.2.11
# Mon, 03 Oct 2016 17:16:50 GMT
ENV ORIENTDB_DOWNLOAD_MD5=df97a70c559256029f846caabe456e45
# Mon, 03 Oct 2016 17:16:50 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=f97a4d7a3bc5b60fff718c7c6408153b866f35b9
# Mon, 03 Oct 2016 17:16:50 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.11/orientdb-community-2.2.11.tar.gz
# Mon, 03 Oct 2016 17:16:52 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Mon, 03 Oct 2016 17:16:55 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Mon, 03 Oct 2016 17:16:55 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 03 Oct 2016 17:16:56 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Mon, 03 Oct 2016 17:16:56 GMT
WORKDIR /orientdb
# Mon, 03 Oct 2016 17:16:57 GMT
EXPOSE 2424/tcp
# Mon, 03 Oct 2016 17:16:57 GMT
EXPOSE 2480/tcp
# Mon, 03 Oct 2016 17:16:57 GMT
CMD ["server.sh"]
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
	-	`sha256:9536b9909f79d52b70efe60abe868e66019b131e7618f3498475b236a756e2ad`  
		Last Modified: Fri, 23 Sep 2016 17:05:37 GMT  
		Size: 49.3 MB (49325354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be175839097487ea4f568af3b10fe6a09979cef339194e645f2da96a5748f01a`  
		Last Modified: Mon, 03 Oct 2016 17:17:27 GMT  
		Size: 261.8 KB (261816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f09b80a6352e4e6419e556975eb5ce4d8c297ede525404d060e2e8ca343d00c`  
		Last Modified: Mon, 03 Oct 2016 17:17:31 GMT  
		Size: 35.0 MB (34964882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
