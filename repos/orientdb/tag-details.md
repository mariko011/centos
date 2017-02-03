<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `orientdb`

-	[`orientdb:2.0.18`](#orientdb2018)
-	[`orientdb:2.1.25`](#orientdb2125)
-	[`orientdb:2.2.16`](#orientdb2216)
-	[`orientdb:latest`](#orientdblatest)

## `orientdb:2.0.18`

```console
$ docker pull orientdb@sha256:1666f3f2228af4b6eb70c024e9e46adaf9d5e1f1653950197bcae9fe631ac10b
```

-	Platforms:
	-	linux; amd64

### `orientdb:2.0.18` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.9 MB (289928811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c754f6bca28af8bac6089fea5be2d555b65fa4e10dabd62e0256f5c320b5e98c`
-	Default Command: `["server.sh"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:48 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:51:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 17 Jan 2017 00:51:50 GMT
ENV JAVA_VERSION=8u111
# Tue, 17 Jan 2017 00:51:50 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 17 Jan 2017 00:51:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 17 Jan 2017 00:52:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 17 Jan 2017 00:52:54 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jan 2017 18:52:12 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 17 Jan 2017 18:52:12 GMT
ENV ORIENTDB_VERSION=2.0.18
# Tue, 17 Jan 2017 18:52:13 GMT
ENV ORIENTDB_DOWNLOAD_MD5=9e7b7e7b6d95795b188adb4e5898a1b8
# Tue, 17 Jan 2017 18:52:13 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=f562794536bbf8ae2145f96153e58b1e5d9211b3
# Tue, 17 Jan 2017 18:52:18 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 17 Jan 2017 18:52:19 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 18:52:19 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 17 Jan 2017 18:52:19 GMT
WORKDIR /orientdb
# Tue, 17 Jan 2017 18:52:20 GMT
EXPOSE 2424/tcp
# Tue, 17 Jan 2017 18:52:20 GMT
EXPOSE 2480/tcp
# Tue, 17 Jan 2017 18:52:21 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60170fec2151d2108ed1420625c51138434ba4e0223d3023353d3f32ffe3cfc2`  
		Last Modified: Tue, 17 Jan 2017 21:41:40 GMT  
		Size: 593.1 KB (593146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f73de8f0d2ef292f58b004d67bc6e9ee779dcfaff7ebb3964649d4787b872`  
		Last Modified: Tue, 17 Jan 2017 21:41:38 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f7af24ed9cf47597dd6cf9963bb3e9109c963f0135e869a9e9b4999fdc12a3`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e2d6393f32abb1de7c9395c04c822ceb2287383d5a90998f7bd8dbfd43d48c`  
		Last Modified: Tue, 17 Jan 2017 21:42:23 GMT  
		Size: 130.1 MB (130102252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9cdec9c7f337940f7d872274353b66e118412cbfd433c711361bcf7922aea4`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 289.0 KB (289048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5006afb8c3a1619265a466405add40060d50e0e00e5377d1ea9c41e1b97118cb`  
		Last Modified: Wed, 18 Jan 2017 06:26:55 GMT  
		Size: 46.5 MB (46544852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.1.25`

```console
$ docker pull orientdb@sha256:e7637ad552a22a5c34a475346aa804917e82354ba9065702f02b7f716fbedd9d
```

-	Platforms:
	-	linux; amd64

### `orientdb:2.1.25` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.0 MB (82985247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fba6bfb7aaef070189d86516efb01a20cc78107320bdce7cdfdf96eb15df9096`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 27 Dec 2016 18:38:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:36 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:37 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 20:51:43 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 27 Dec 2016 20:51:43 GMT
ENV ORIENTDB_VERSION=2.1.25
# Tue, 27 Dec 2016 20:51:43 GMT
ENV ORIENTDB_DOWNLOAD_MD5=054da3fb7c56e7822b2af116966576ce
# Tue, 27 Dec 2016 20:51:44 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=b7b08242b40117ac8eb9a201f8704bde839dfcb8
# Tue, 27 Dec 2016 20:51:46 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Tue, 27 Dec 2016 20:51:51 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 27 Dec 2016 20:51:52 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 20:51:52 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 27 Dec 2016 20:51:53 GMT
WORKDIR /orientdb
# Tue, 27 Dec 2016 20:51:54 GMT
EXPOSE 2424/tcp
# Tue, 27 Dec 2016 20:51:54 GMT
EXPOSE 2480/tcp
# Tue, 27 Dec 2016 20:51:55 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b294f0e7874be262527ff531f370b2b61652d226fa8c51f9d6a0a46c4d71fdb5`  
		Last Modified: Tue, 27 Dec 2016 18:55:18 GMT  
		Size: 49.4 MB (49355643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a98f850c8f8fab677e42574647ae7f33be631221bb91fd119037aef32ae033`  
		Last Modified: Tue, 27 Dec 2016 21:20:31 GMT  
		Size: 262.0 KB (262027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:810b6e403f4507ef69ea063c10d5bba2b42f8a8900dc0692eb4d99967e30eb86`  
		Last Modified: Tue, 27 Dec 2016 21:20:35 GMT  
		Size: 31.1 MB (31054256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.16`

```console
$ docker pull orientdb@sha256:d9d6cd37831bb3c95a3b36d79536cb0fe91d93cc6c33db6eaa8a412e5a98b3c0
```

-	Platforms:
	-	linux; amd64

### `orientdb:2.2.16` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.5 MB (91466512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f317d8c636629a92d9455bdd1a76dfc501d68231f4332b2694cefcfce91facf9`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 27 Dec 2016 18:38:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:36 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:37 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 20:51:43 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 27 Dec 2016 20:51:55 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Fri, 03 Feb 2017 00:33:06 GMT
ENV ORIENTDB_VERSION=2.2.16
# Fri, 03 Feb 2017 00:33:07 GMT
ENV ORIENTDB_DOWNLOAD_MD5=dbfda032e428ff074a9ed0b40db06e74
# Fri, 03 Feb 2017 00:33:07 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=0e0e0fea7060bfd3c36db194d7d5cab5b10cb949
# Fri, 03 Feb 2017 00:33:08 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.16/orientdb-community-2.2.16.tar.gz
# Fri, 03 Feb 2017 00:33:10 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Fri, 03 Feb 2017 00:33:14 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 03 Feb 2017 00:33:14 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Feb 2017 00:33:15 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 03 Feb 2017 00:33:15 GMT
WORKDIR /orientdb
# Fri, 03 Feb 2017 00:33:16 GMT
EXPOSE 2424/tcp
# Fri, 03 Feb 2017 00:33:16 GMT
EXPOSE 2480/tcp
# Fri, 03 Feb 2017 00:33:17 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b294f0e7874be262527ff531f370b2b61652d226fa8c51f9d6a0a46c4d71fdb5`  
		Last Modified: Tue, 27 Dec 2016 18:55:18 GMT  
		Size: 49.4 MB (49355643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c64c28abef9c9295682b49960b63c683c27b4a8aeab77757431f880212d87c6`  
		Last Modified: Fri, 03 Feb 2017 00:34:06 GMT  
		Size: 262.0 KB (262015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f334e75eda86de10950b9cbd829dac6d5fbd3421aa6649196b58961c00017a85`  
		Last Modified: Fri, 03 Feb 2017 00:34:09 GMT  
		Size: 39.5 MB (39535533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:latest`

```console
$ docker pull orientdb@sha256:d9d6cd37831bb3c95a3b36d79536cb0fe91d93cc6c33db6eaa8a412e5a98b3c0
```

-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.5 MB (91466512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f317d8c636629a92d9455bdd1a76dfc501d68231f4332b2694cefcfce91facf9`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 27 Dec 2016 18:38:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:36 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:37 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 20:51:43 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 27 Dec 2016 20:51:55 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Fri, 03 Feb 2017 00:33:06 GMT
ENV ORIENTDB_VERSION=2.2.16
# Fri, 03 Feb 2017 00:33:07 GMT
ENV ORIENTDB_DOWNLOAD_MD5=dbfda032e428ff074a9ed0b40db06e74
# Fri, 03 Feb 2017 00:33:07 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=0e0e0fea7060bfd3c36db194d7d5cab5b10cb949
# Fri, 03 Feb 2017 00:33:08 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.16/orientdb-community-2.2.16.tar.gz
# Fri, 03 Feb 2017 00:33:10 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Fri, 03 Feb 2017 00:33:14 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 03 Feb 2017 00:33:14 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Feb 2017 00:33:15 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 03 Feb 2017 00:33:15 GMT
WORKDIR /orientdb
# Fri, 03 Feb 2017 00:33:16 GMT
EXPOSE 2424/tcp
# Fri, 03 Feb 2017 00:33:16 GMT
EXPOSE 2480/tcp
# Fri, 03 Feb 2017 00:33:17 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b294f0e7874be262527ff531f370b2b61652d226fa8c51f9d6a0a46c4d71fdb5`  
		Last Modified: Tue, 27 Dec 2016 18:55:18 GMT  
		Size: 49.4 MB (49355643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c64c28abef9c9295682b49960b63c683c27b4a8aeab77757431f880212d87c6`  
		Last Modified: Fri, 03 Feb 2017 00:34:06 GMT  
		Size: 262.0 KB (262015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f334e75eda86de10950b9cbd829dac6d5fbd3421aa6649196b58961c00017a85`  
		Last Modified: Fri, 03 Feb 2017 00:34:09 GMT  
		Size: 39.5 MB (39535533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
