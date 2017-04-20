<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `orientdb`

-	[`orientdb:2.0.18`](#orientdb2018)
-	[`orientdb:2.1.25`](#orientdb2125)
-	[`orientdb:2.2.18`](#orientdb2218)
-	[`orientdb:latest`](#orientdblatest)
-	[`orientdb:2.2.18-spatial`](#orientdb2218-spatial)
-	[`orientdb:3.0.0m1`](#orientdb300m1)
-	[`orientdb:3.0.0m1-spatial`](#orientdb300m1-spatial)

## `orientdb:2.0.18`

```console
$ docker pull orientdb@sha256:9ae6d0e083612ab012251b1b40ccf5a784363444874f579079cc5231e8cbbb71
```

-	Platforms:
	-	linux; amd64

### `orientdb:2.0.18` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.4 MB (290430768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c4320183aeb500d63fbbfa00d8bf404490036b5d678813659e6872c9b33f7a9`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:13:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:47:46 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:47:47 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:47:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:48:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 21 Mar 2017 22:48:05 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:48:05 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:48:06 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:49:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:49:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 21 Mar 2017 22:52:58 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 21 Mar 2017 22:52:59 GMT
ENV ORIENTDB_VERSION=2.0.18
# Tue, 21 Mar 2017 22:52:59 GMT
ENV ORIENTDB_DOWNLOAD_MD5=9e7b7e7b6d95795b188adb4e5898a1b8
# Tue, 21 Mar 2017 22:53:00 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=f562794536bbf8ae2145f96153e58b1e5d9211b3
# Tue, 21 Mar 2017 22:53:08 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 21 Mar 2017 22:53:08 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 22:53:09 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 21 Mar 2017 22:53:10 GMT
WORKDIR /orientdb
# Tue, 21 Mar 2017 22:53:11 GMT
EXPOSE 2424/tcp
# Tue, 21 Mar 2017 22:53:11 GMT
EXPOSE 2480/tcp
# Tue, 21 Mar 2017 22:53:12 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e61641c845ed10c60ee9ec652f04ed75c16c4defef698b5d8ce3162c275d85f1`  
		Last Modified: Wed, 22 Mar 2017 17:41:18 GMT  
		Size: 593.4 KB (593432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cce4cca5b76b6a22d24703b3337fd31d23a3e1d502918300f6c1fbf9a26bac58`  
		Last Modified: Wed, 22 Mar 2017 17:41:18 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6826227500b0c71a7f0f4f9f733dbee91bff2e153ae682e9586ec1d5e6e1d34f`  
		Last Modified: Wed, 22 Mar 2017 17:41:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03b117ffd91e23430bf3c72c8e1f84a2be955c1277ddb8b836f226b5be3a3fb`  
		Last Modified: Wed, 22 Mar 2017 17:41:55 GMT  
		Size: 130.4 MB (130386158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:821a1547b43512b5d418584e755787a6efabe608671646a24b1ea5b8cb3b2fbf`  
		Last Modified: Wed, 22 Mar 2017 17:41:14 GMT  
		Size: 289.1 KB (289053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29c3310aa13dc880e064f6a793076d71c415cdccf06627562c7f37e46bb7cfe3`  
		Last Modified: Thu, 23 Mar 2017 23:39:54 GMT  
		Size: 46.5 MB (46544910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.1.25`

```console
$ docker pull orientdb@sha256:59a16a5ba29c8e42abc73eccbf7c5421fa8dc616e5e397941ba642a3611e22db
```

-	Platforms:
	-	linux; amd64

### `orientdb:2.1.25` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.8 MB (102783167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bfb8e7466843b729f277455b3b7848d8075b8fb104dff7762c0a057dc6ca56a`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 07 Mar 2017 01:04:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 19:43:39 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 07 Mar 2017 19:43:40 GMT
ENV ORIENTDB_VERSION=2.1.25
# Tue, 07 Mar 2017 19:43:40 GMT
ENV ORIENTDB_DOWNLOAD_MD5=054da3fb7c56e7822b2af116966576ce
# Tue, 07 Mar 2017 19:43:41 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=b7b08242b40117ac8eb9a201f8704bde839dfcb8
# Tue, 07 Mar 2017 19:43:43 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Tue, 07 Mar 2017 19:43:49 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 07 Mar 2017 19:43:49 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 19:43:50 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 07 Mar 2017 19:43:51 GMT
WORKDIR /orientdb
# Tue, 07 Mar 2017 19:43:52 GMT
EXPOSE 2424/tcp
# Tue, 07 Mar 2017 19:43:52 GMT
EXPOSE 2480/tcp
# Tue, 07 Mar 2017 19:43:53 GMT
CMD ["server.sh"]
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
	-	`sha256:3e00029ebfe30f96f53c89cd3c838b89876ee212cbb545e8ac5c70698c1818f1`  
		Last Modified: Tue, 07 Mar 2017 01:12:59 GMT  
		Size: 69.6 MB (69564916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b363938ddfa7b636cf6bf2c94b3d6506c53099498506ffc908237428e06ca4bc`  
		Last Modified: Tue, 07 Mar 2017 19:44:50 GMT  
		Size: 258.5 KB (258488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36cc159fa79e33d6cd331e8770556bedf627521d8f179648f0b2c812221343e`  
		Last Modified: Tue, 07 Mar 2017 19:44:52 GMT  
		Size: 31.1 MB (31054261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.18`

```console
$ docker pull orientdb@sha256:c11d56f4850fd668638de877196b423360e860860fc6d0bc21f56c37890bfaa5
```

-	Platforms:
	-	linux; amd64

### `orientdb:2.2.18` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 MB (114778324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6597b53ff5e17415f3844fea91e01040e3ad0d1062a49bd46ca2e491d915160f`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 07 Mar 2017 01:04:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 19:43:39 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 07 Mar 2017 19:43:54 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Thu, 06 Apr 2017 20:14:18 GMT
ENV ORIENTDB_VERSION=2.2.18
# Thu, 06 Apr 2017 20:14:18 GMT
ENV ORIENTDB_DOWNLOAD_MD5=dc92356f8fc488208f3c5f272e418fb3
# Thu, 06 Apr 2017 20:14:18 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=dc866f6b8be40eec43b71fbee3548ec8b2f423e6
# Thu, 06 Apr 2017 20:14:19 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.18/orientdb-community-2.2.18.tar.gz
# Thu, 06 Apr 2017 20:14:20 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Thu, 06 Apr 2017 20:14:25 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 06 Apr 2017 20:14:26 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 06 Apr 2017 20:14:26 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 06 Apr 2017 20:14:26 GMT
WORKDIR /orientdb
# Thu, 06 Apr 2017 20:14:27 GMT
EXPOSE 2424/tcp
# Thu, 06 Apr 2017 20:14:27 GMT
EXPOSE 2480/tcp
# Thu, 06 Apr 2017 20:14:28 GMT
CMD ["server.sh"]
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
	-	`sha256:3e00029ebfe30f96f53c89cd3c838b89876ee212cbb545e8ac5c70698c1818f1`  
		Last Modified: Tue, 07 Mar 2017 01:12:59 GMT  
		Size: 69.6 MB (69564916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23be3fafbe89ee8f43955aaf088e412340d9df64fb6f600b2f70cc6728a95754`  
		Last Modified: Thu, 06 Apr 2017 20:15:41 GMT  
		Size: 622.5 KB (622493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75607aab8914eb26c28660e076647c3fd1a4fa6913203c2c4e42f44473cf603`  
		Last Modified: Thu, 06 Apr 2017 20:15:46 GMT  
		Size: 42.7 MB (42685413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:latest`

```console
$ docker pull orientdb@sha256:c11d56f4850fd668638de877196b423360e860860fc6d0bc21f56c37890bfaa5
```

-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 MB (114778324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6597b53ff5e17415f3844fea91e01040e3ad0d1062a49bd46ca2e491d915160f`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 07 Mar 2017 01:04:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 19:43:39 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 07 Mar 2017 19:43:54 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Thu, 06 Apr 2017 20:14:18 GMT
ENV ORIENTDB_VERSION=2.2.18
# Thu, 06 Apr 2017 20:14:18 GMT
ENV ORIENTDB_DOWNLOAD_MD5=dc92356f8fc488208f3c5f272e418fb3
# Thu, 06 Apr 2017 20:14:18 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=dc866f6b8be40eec43b71fbee3548ec8b2f423e6
# Thu, 06 Apr 2017 20:14:19 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.18/orientdb-community-2.2.18.tar.gz
# Thu, 06 Apr 2017 20:14:20 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Thu, 06 Apr 2017 20:14:25 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 06 Apr 2017 20:14:26 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 06 Apr 2017 20:14:26 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 06 Apr 2017 20:14:26 GMT
WORKDIR /orientdb
# Thu, 06 Apr 2017 20:14:27 GMT
EXPOSE 2424/tcp
# Thu, 06 Apr 2017 20:14:27 GMT
EXPOSE 2480/tcp
# Thu, 06 Apr 2017 20:14:28 GMT
CMD ["server.sh"]
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
	-	`sha256:3e00029ebfe30f96f53c89cd3c838b89876ee212cbb545e8ac5c70698c1818f1`  
		Last Modified: Tue, 07 Mar 2017 01:12:59 GMT  
		Size: 69.6 MB (69564916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23be3fafbe89ee8f43955aaf088e412340d9df64fb6f600b2f70cc6728a95754`  
		Last Modified: Thu, 06 Apr 2017 20:15:41 GMT  
		Size: 622.5 KB (622493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75607aab8914eb26c28660e076647c3fd1a4fa6913203c2c4e42f44473cf603`  
		Last Modified: Thu, 06 Apr 2017 20:15:46 GMT  
		Size: 42.7 MB (42685413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.18-spatial`

```console
$ docker pull orientdb@sha256:6bd0a936e5e6f176fbb0d71b531b651bedbba08baa2e7c3e4ba5a9ec3318a7ce
```

-	Platforms:
	-	linux; amd64

### `orientdb:2.2.18-spatial` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (115980675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf3cccd608ee897cff40a541f530ff6c2417e3ecec3e68c57e24b826275101d0`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 07 Mar 2017 01:04:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 19:43:39 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 07 Mar 2017 19:43:54 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Thu, 06 Apr 2017 20:14:18 GMT
ENV ORIENTDB_VERSION=2.2.18
# Thu, 06 Apr 2017 20:14:18 GMT
ENV ORIENTDB_DOWNLOAD_MD5=dc92356f8fc488208f3c5f272e418fb3
# Thu, 06 Apr 2017 20:14:18 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=dc866f6b8be40eec43b71fbee3548ec8b2f423e6
# Thu, 06 Apr 2017 20:14:19 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.18/orientdb-community-2.2.18.tar.gz
# Thu, 06 Apr 2017 20:14:20 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Thu, 06 Apr 2017 20:14:25 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 06 Apr 2017 20:14:26 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 06 Apr 2017 20:14:26 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 06 Apr 2017 20:14:26 GMT
WORKDIR /orientdb
# Thu, 06 Apr 2017 20:14:27 GMT
EXPOSE 2424/tcp
# Thu, 06 Apr 2017 20:14:27 GMT
EXPOSE 2480/tcp
# Thu, 06 Apr 2017 20:14:28 GMT
CMD ["server.sh"]
# Thu, 06 Apr 2017 20:14:29 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_MD5=e1476b6c15baecad3e5d16f2774d0625
# Thu, 06 Apr 2017 20:14:29 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_SHA1=a61f83be97d0d86d3930a30b5bc2b4cef8c7d9ba
# Thu, 06 Apr 2017 20:14:30 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-spatial/2.2.18/orientdb-spatial-2.2.18-dist.jar
# Thu, 06 Apr 2017 20:14:31 GMT
RUN wget $ORIENTDB_DOWNLOAD_SPATIAL_URL     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_MD5 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | md5sum -c -     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_SHA1 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | sha1sum -c -     && mv orientdb-spatial-*-dist.jar /orientdb/lib/
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
	-	`sha256:3e00029ebfe30f96f53c89cd3c838b89876ee212cbb545e8ac5c70698c1818f1`  
		Last Modified: Tue, 07 Mar 2017 01:12:59 GMT  
		Size: 69.6 MB (69564916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23be3fafbe89ee8f43955aaf088e412340d9df64fb6f600b2f70cc6728a95754`  
		Last Modified: Thu, 06 Apr 2017 20:15:41 GMT  
		Size: 622.5 KB (622493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75607aab8914eb26c28660e076647c3fd1a4fa6913203c2c4e42f44473cf603`  
		Last Modified: Thu, 06 Apr 2017 20:15:46 GMT  
		Size: 42.7 MB (42685413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86304349ba58429ef43cbae8c7fbc8f12828644788e9ecc682b85dde7e96cc5b`  
		Last Modified: Thu, 06 Apr 2017 20:16:32 GMT  
		Size: 1.2 MB (1202351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.0m1`

```console
$ docker pull orientdb@sha256:3f71554ea46f09935a5237dfdd7346189edf1c3587654d87761d177a5ea90812
```

-	Platforms:
	-	linux; amd64

### `orientdb:3.0.0m1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.3 MB (122308166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1811fa316e0b09880b538941fce8bad4960ad5ab20c24cfac59c319cd7660e6`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 07 Mar 2017 01:04:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 19:43:39 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 07 Mar 2017 19:43:54 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Thu, 20 Apr 2017 14:29:34 GMT
ENV ORIENTDB_VERSION=3.0.0m1
# Thu, 20 Apr 2017 14:29:34 GMT
ENV ORIENTDB_DOWNLOAD_MD5=e667351657f17fe4fb6d2f3b5a1bc9ad
# Thu, 20 Apr 2017 14:29:35 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=f621e0887a274b5f1277937f9925615a0e68edb1
# Thu, 20 Apr 2017 14:29:35 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community-tp3/3.0.0m1/orientdb-community-tp3-3.0.0m1.tar.gz
# Thu, 20 Apr 2017 14:29:53 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Thu, 20 Apr 2017 14:30:00 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-tp3-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-tp3-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-tp3-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-tp3-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 20 Apr 2017 14:30:01 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 20 Apr 2017 14:30:02 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 20 Apr 2017 14:30:02 GMT
WORKDIR /orientdb
# Thu, 20 Apr 2017 14:30:03 GMT
EXPOSE 2424/tcp
# Thu, 20 Apr 2017 14:30:04 GMT
EXPOSE 2480/tcp
# Thu, 20 Apr 2017 14:30:05 GMT
CMD ["server.sh"]
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
	-	`sha256:3e00029ebfe30f96f53c89cd3c838b89876ee212cbb545e8ac5c70698c1818f1`  
		Last Modified: Tue, 07 Mar 2017 01:12:59 GMT  
		Size: 69.6 MB (69564916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3bea0391cc559669e173f6dbe208bec5987ea593051f0e12b958d5859745bca`  
		Last Modified: Thu, 20 Apr 2017 14:32:55 GMT  
		Size: 643.9 KB (643854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c745ede62d63fa5e7abdb633cf9e987f9e2db9e59a6840f1f9859be241642b3`  
		Last Modified: Thu, 20 Apr 2017 14:33:00 GMT  
		Size: 50.2 MB (50193894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.0m1-spatial`

```console
$ docker pull orientdb@sha256:e2f1278c01e6a9d045777d2bea17c1eca23e043d879c0328a01f6017d001fb55
```

-	Platforms:
	-	linux; amd64

### `orientdb:3.0.0m1-spatial` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.1 MB (125050390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c02dcfa6535112f2ae72ef9f26abe11bf6012c4c6813c36e0e00f045e87d97a`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 07 Mar 2017 01:04:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 19:43:39 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 07 Mar 2017 19:43:54 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Thu, 20 Apr 2017 14:29:34 GMT
ENV ORIENTDB_VERSION=3.0.0m1
# Thu, 20 Apr 2017 14:30:36 GMT
ENV ORIENTDB_DOWNLOAD_MD5=ced149e809b02301b926f73ea4cf9c50
# Thu, 20 Apr 2017 14:30:37 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=d7f61d1435380e31338a96d87cfa59fdb5f0c579
# Thu, 20 Apr 2017 14:30:37 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community-spatial/3.0.0m1/orientdb-community-spatial-3.0.0m1.tar.gz
# Thu, 20 Apr 2017 14:30:39 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Thu, 20 Apr 2017 14:31:01 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 20 Apr 2017 14:31:02 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 20 Apr 2017 14:31:03 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 20 Apr 2017 14:31:04 GMT
WORKDIR /orientdb
# Thu, 20 Apr 2017 14:31:04 GMT
EXPOSE 2424/tcp
# Thu, 20 Apr 2017 14:31:05 GMT
EXPOSE 2480/tcp
# Thu, 20 Apr 2017 14:31:06 GMT
CMD ["server.sh"]
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
	-	`sha256:3e00029ebfe30f96f53c89cd3c838b89876ee212cbb545e8ac5c70698c1818f1`  
		Last Modified: Tue, 07 Mar 2017 01:12:59 GMT  
		Size: 69.6 MB (69564916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83debb9e10c398ea87586e555204ec1a6c37973521f87987e45a3330e5adee1`  
		Last Modified: Thu, 20 Apr 2017 14:33:22 GMT  
		Size: 643.9 KB (643858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c53d5d18019a16632c49708d938900a5716734e43b86bc18ec0e8e2e67935c0b`  
		Last Modified: Thu, 20 Apr 2017 14:33:28 GMT  
		Size: 52.9 MB (52936114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
