<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `orientdb`

-	[`orientdb:2.0.18`](#orientdb2018)
-	[`orientdb:2.1.23`](#orientdb2123)
-	[`orientdb:2.2.12`](#orientdb2212)
-	[`orientdb:latest`](#orientdblatest)

## `orientdb:2.0.18`

```console
$ docker pull orientdb@sha256:fadf73c214da4b22ed2f310a9d73b2793e754f0fa573417fca53171d85415a7e
```

-	Platforms:
	-	linux; amd64

### `orientdb:2.0.18` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.9 MB (289908768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3265a3ea81b51dadc580217c4ceb0edece04f6186c0cbdf8c88deb8d6be2285c`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 20:07:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:53:46 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 31 Oct 2016 21:53:47 GMT
ENV LANG=C.UTF-8
# Mon, 31 Oct 2016 21:53:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 31 Oct 2016 21:53:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Mon, 31 Oct 2016 21:53:48 GMT
ENV JAVA_VERSION=8u102
# Mon, 31 Oct 2016 21:53:49 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Mon, 31 Oct 2016 21:53:49 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Mon, 31 Oct 2016 21:54:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 31 Oct 2016 21:55:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 01 Nov 2016 06:47:21 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 01 Nov 2016 06:47:22 GMT
ENV ORIENTDB_VERSION=2.0.18
# Tue, 01 Nov 2016 06:47:22 GMT
ENV ORIENTDB_DOWNLOAD_MD5=9e7b7e7b6d95795b188adb4e5898a1b8
# Tue, 01 Nov 2016 06:47:23 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=f562794536bbf8ae2145f96153e58b1e5d9211b3
# Tue, 01 Nov 2016 06:47:33 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 01 Nov 2016 06:47:33 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 06:47:34 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 01 Nov 2016 06:47:34 GMT
WORKDIR /orientdb
# Tue, 01 Nov 2016 06:47:35 GMT
EXPOSE 2424/tcp
# Tue, 01 Nov 2016 06:47:35 GMT
EXPOSE 2480/tcp
# Tue, 01 Nov 2016 06:47:36 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc4cdbc8d81addf57f4475aafb4d7c14f8b33b1f81338f292d019b52dab828d`  
		Last Modified: Fri, 21 Oct 2016 20:08:28 GMT  
		Size: 593.0 KB (593002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c6fc3e9968f5b8fb198a1ea206d24c695ca2ba720f3c60465eb766378eb661`  
		Last Modified: Tue, 01 Nov 2016 05:34:59 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfa8d5153bb17cb57f744591779c9cae37e3ce60ef7f251a06de8a52b4a5dc4`  
		Last Modified: Tue, 01 Nov 2016 05:34:59 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05bc8d0fffcad18701b038c987358882834e50c5f8880d80e596b1b53a10452b`  
		Last Modified: Tue, 01 Nov 2016 05:35:36 GMT  
		Size: 130.1 MB (130104197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1266a2a7ecbe81ae03360bc3e8bf9300175665db11e6d02fa7be79d485b530e`  
		Last Modified: Tue, 01 Nov 2016 05:34:58 GMT  
		Size: 284.2 KB (284198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5f5ccc400680513f2251b623b6efa3d2f8c1583822f3fce04ac80011976ca4`  
		Last Modified: Tue, 01 Nov 2016 06:48:04 GMT  
		Size: 46.5 MB (46544846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.1.23`

```console
$ docker pull orientdb@sha256:cfc34bb4cecb46390784c1a7a6d10865b143d6188b1d1911fe633f8bd34c15a6
```

-	Platforms:
	-	linux; amd64

### `orientdb:2.1.23` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.0 MB (82953625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aff94d5632a7544fb7f5819f3247f5fbb02bea2a58c5cda8718b17e9ae3c7e79`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 18 Oct 2016 20:40:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 18 Oct 2016 20:40:26 GMT
ENV JAVA_VERSION=8u92
# Tue, 18 Oct 2016 20:40:26 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 18 Oct 2016 20:40:33 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 18 Oct 2016 23:48:51 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 18 Oct 2016 23:48:51 GMT
ENV ORIENTDB_VERSION=2.1.23
# Tue, 18 Oct 2016 23:48:51 GMT
ENV ORIENTDB_DOWNLOAD_MD5=fb4eb924f411116b79f0c8653bbee126
# Tue, 18 Oct 2016 23:48:52 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=bc1123445b7dfc52f3f54cb05bb8b805de696c76
# Tue, 18 Oct 2016 23:48:53 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Tue, 18 Oct 2016 23:49:00 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 18 Oct 2016 23:49:00 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 18 Oct 2016 23:49:01 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 18 Oct 2016 23:49:02 GMT
WORKDIR /orientdb
# Tue, 18 Oct 2016 23:49:02 GMT
EXPOSE 2424/tcp
# Tue, 18 Oct 2016 23:49:03 GMT
EXPOSE 2480/tcp
# Tue, 18 Oct 2016 23:49:03 GMT
CMD ["server.sh"]
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
	-	`sha256:0d438913956e1ea2320b12f24358a2b0822a0b3a09aa59d082151759f24486d3`  
		Last Modified: Tue, 18 Oct 2016 20:50:55 GMT  
		Size: 49.3 MB (49327784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b9be7846e67fa4fc288785c30421aa35763a907732c416cec4d431a11ee0cb`  
		Last Modified: Tue, 18 Oct 2016 23:49:13 GMT  
		Size: 261.9 KB (261940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d178e1c35ed678f9bfdb96c55a2b397ad371a1f86264b36e7408be9f526822b`  
		Last Modified: Tue, 18 Oct 2016 23:49:17 GMT  
		Size: 31.1 MB (31050713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.12`

```console
$ docker pull orientdb@sha256:d01de9f255f3d581bcd9e66e60bf895b1c85627e2c0efc9f1b1c74c4c5f38d1f
```

-	Platforms:
	-	linux; amd64

### `orientdb:2.2.12` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86883544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd532cd52f32f09b6a325723ac865809dcae220eabd4aa55eabf76b9cd95e467`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 18 Oct 2016 20:40:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 18 Oct 2016 20:40:26 GMT
ENV JAVA_VERSION=8u92
# Tue, 18 Oct 2016 20:40:26 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 18 Oct 2016 20:40:33 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 18 Oct 2016 23:48:51 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 18 Oct 2016 23:49:25 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Thu, 20 Oct 2016 17:34:22 GMT
ENV ORIENTDB_VERSION=2.2.12
# Thu, 20 Oct 2016 17:34:22 GMT
ENV ORIENTDB_DOWNLOAD_MD5=baa2817c9ccb2e4d16501e012a6ec6a7
# Thu, 20 Oct 2016 17:34:22 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=557b8228f6dcf9f88c0b28ce1f31826dd2f70f84
# Thu, 20 Oct 2016 17:34:23 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.12/orientdb-community-2.2.12.tar.gz
# Thu, 20 Oct 2016 17:34:24 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Thu, 20 Oct 2016 17:34:29 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 20 Oct 2016 17:34:29 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 20 Oct 2016 17:34:30 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 20 Oct 2016 17:34:30 GMT
WORKDIR /orientdb
# Thu, 20 Oct 2016 17:34:31 GMT
EXPOSE 2424/tcp
# Thu, 20 Oct 2016 17:34:31 GMT
EXPOSE 2480/tcp
# Thu, 20 Oct 2016 17:34:31 GMT
CMD ["server.sh"]
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
	-	`sha256:0d438913956e1ea2320b12f24358a2b0822a0b3a09aa59d082151759f24486d3`  
		Last Modified: Tue, 18 Oct 2016 20:50:55 GMT  
		Size: 49.3 MB (49327784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d0e890343438094c86112692bd603db3eb89749cdcef0c3da7eb9a48d70b28`  
		Last Modified: Thu, 20 Oct 2016 17:35:04 GMT  
		Size: 261.9 KB (261932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3bcac55007f5fc8dfa99351d174cb5ae13b72bd44b5ee38e6ed8d9606f3d9fe`  
		Last Modified: Thu, 20 Oct 2016 17:35:09 GMT  
		Size: 35.0 MB (34980640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:latest`

```console
$ docker pull orientdb@sha256:d01de9f255f3d581bcd9e66e60bf895b1c85627e2c0efc9f1b1c74c4c5f38d1f
```

-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86883544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd532cd52f32f09b6a325723ac865809dcae220eabd4aa55eabf76b9cd95e467`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 18 Oct 2016 20:40:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 18 Oct 2016 20:40:26 GMT
ENV JAVA_VERSION=8u92
# Tue, 18 Oct 2016 20:40:26 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 18 Oct 2016 20:40:33 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 18 Oct 2016 23:48:51 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 18 Oct 2016 23:49:25 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Thu, 20 Oct 2016 17:34:22 GMT
ENV ORIENTDB_VERSION=2.2.12
# Thu, 20 Oct 2016 17:34:22 GMT
ENV ORIENTDB_DOWNLOAD_MD5=baa2817c9ccb2e4d16501e012a6ec6a7
# Thu, 20 Oct 2016 17:34:22 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=557b8228f6dcf9f88c0b28ce1f31826dd2f70f84
# Thu, 20 Oct 2016 17:34:23 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.12/orientdb-community-2.2.12.tar.gz
# Thu, 20 Oct 2016 17:34:24 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Thu, 20 Oct 2016 17:34:29 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 20 Oct 2016 17:34:29 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 20 Oct 2016 17:34:30 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 20 Oct 2016 17:34:30 GMT
WORKDIR /orientdb
# Thu, 20 Oct 2016 17:34:31 GMT
EXPOSE 2424/tcp
# Thu, 20 Oct 2016 17:34:31 GMT
EXPOSE 2480/tcp
# Thu, 20 Oct 2016 17:34:31 GMT
CMD ["server.sh"]
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
	-	`sha256:0d438913956e1ea2320b12f24358a2b0822a0b3a09aa59d082151759f24486d3`  
		Last Modified: Tue, 18 Oct 2016 20:50:55 GMT  
		Size: 49.3 MB (49327784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d0e890343438094c86112692bd603db3eb89749cdcef0c3da7eb9a48d70b28`  
		Last Modified: Thu, 20 Oct 2016 17:35:04 GMT  
		Size: 261.9 KB (261932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3bcac55007f5fc8dfa99351d174cb5ae13b72bd44b5ee38e6ed8d9606f3d9fe`  
		Last Modified: Thu, 20 Oct 2016 17:35:09 GMT  
		Size: 35.0 MB (34980640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
