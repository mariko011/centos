<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `orientdb`

-	[`orientdb:2.0.18`](#orientdb2018)
-	[`orientdb:2.1.25`](#orientdb2125)
-	[`orientdb:2.2.23`](#orientdb2223)
-	[`orientdb:latest`](#orientdblatest)
-	[`orientdb:2.2.23-spatial`](#orientdb2223-spatial)
-	[`orientdb:3.0.0m1`](#orientdb300m1)
-	[`orientdb:3.0.0m1-spatial`](#orientdb300m1-spatial)

## `orientdb:2.0.18`

```console
$ docker pull orientdb@sha256:40bc493f84377dd4c53f4eddd01f8951c05961d78520b4c5bea236ec24796d13
```

-	Platforms:
	-	linux; amd64

### `orientdb:2.0.18` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.3 MB (341292384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87cd53aeb67e1521216e6bbd14f5916f897e6e078ae9d3cc72861d81adcd5798`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:30:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Jul 2017 22:31:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:11:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:11:29 GMT
ENV LANG=C.UTF-8
# Thu, 06 Jul 2017 23:11:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 06 Jul 2017 23:11:33 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 06 Jul 2017 23:11:34 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 06 Jul 2017 23:11:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 06 Jul 2017 23:11:35 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Thu, 06 Jul 2017 23:11:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 06 Jul 2017 23:12:29 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 06 Jul 2017 23:12:32 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 08 Jul 2017 04:31:39 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Sat, 08 Jul 2017 04:31:39 GMT
ENV ORIENTDB_VERSION=2.0.18
# Sat, 08 Jul 2017 04:31:40 GMT
ENV ORIENTDB_DOWNLOAD_MD5=9e7b7e7b6d95795b188adb4e5898a1b8
# Sat, 08 Jul 2017 04:31:40 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=f562794536bbf8ae2145f96153e58b1e5d9211b3
# Sat, 08 Jul 2017 04:31:46 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Sat, 08 Jul 2017 04:31:46 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 08 Jul 2017 04:31:46 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Sat, 08 Jul 2017 04:31:47 GMT
WORKDIR /orientdb
# Sat, 08 Jul 2017 04:31:47 GMT
EXPOSE 2424/tcp
# Sat, 08 Jul 2017 04:31:48 GMT
EXPOSE 2480/tcp
# Sat, 08 Jul 2017 04:31:48 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5d2d0853c76cad76d65745ca5b10e17ffe72647e78616bb28b2fd70e5173ab`  
		Last Modified: Thu, 06 Jul 2017 23:56:33 GMT  
		Size: 4.4 MB (4411344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de358416a758e4776153bd86b34fcaa0f31b577b335845b968646e61ac78bf4`  
		Last Modified: Thu, 06 Jul 2017 23:56:47 GMT  
		Size: 50.0 MB (50004119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4049b231edeab7c94920b61f8e95d5ae615893cf7ae7b9d28a670f5e47765ddf`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 660.4 KB (660432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6617c62c7c1089f445af30dda32df5c346c31019acf9077741422a3e4785a537`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa26fbcddb08b7bc5e7847d2cd1bfb54bd4674c892a483341f8d59911cb012c2`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b28339f9cb0b6aef1e23a0d32b8bf6da5ff989a4a1191a36f3a9d3d9630ce2`  
		Last Modified: Thu, 06 Jul 2017 23:57:10 GMT  
		Size: 183.1 MB (183109251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7b25fab67abb2ebdc9eff8023a7cc5b1efc7cd956e1f05ba4af94389992040`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 272.0 KB (271977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab187234132da837cb4544dbf2edd060b222a1621f24932bc4592f2ab6e96af`  
		Last Modified: Tue, 11 Jul 2017 17:06:15 GMT  
		Size: 46.6 MB (46586521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.1.25`

```console
$ docker pull orientdb@sha256:232e77eab2b7e06ce7fc54b5cc69724338a461ceac603abef1e32f362496e87d
```

-	Platforms:
	-	linux; amd64

### `orientdb:2.1.25` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.4 MB (103396122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:053b69ba5b1ad903ed976e369ba43f41a560f6d9b68b86e0e5467afc9bf0c828`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 28 Jun 2017 20:04:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:04:48 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:04:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:04:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 28 Jun 2017 20:05:57 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 28 Jun 2017 20:05:58 GMT
ENV ORIENTDB_VERSION=2.1.25
# Wed, 28 Jun 2017 20:05:58 GMT
ENV ORIENTDB_DOWNLOAD_MD5=054da3fb7c56e7822b2af116966576ce
# Wed, 28 Jun 2017 20:05:59 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=b7b08242b40117ac8eb9a201f8704bde839dfcb8
# Wed, 28 Jun 2017 20:06:03 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Wed, 28 Jun 2017 20:06:08 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 28 Jun 2017 20:06:09 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:06:10 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 28 Jun 2017 20:06:11 GMT
WORKDIR /orientdb
# Wed, 28 Jun 2017 20:06:12 GMT
EXPOSE 2424/tcp
# Wed, 28 Jun 2017 20:06:13 GMT
EXPOSE 2480/tcp
# Wed, 28 Jun 2017 20:06:14 GMT
CMD ["server.sh"]
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
	-	`sha256:86ed68184682c19ccbab7445ae3789b7e8a72ccd4d68b9b64548e0d71c17b15b`  
		Last Modified: Thu, 29 Jun 2017 23:42:08 GMT  
		Size: 70.1 MB (70050180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7264882047ca7599aa58d406f9cc05c51189176842e8a8172ec5a8cca72500b`  
		Last Modified: Fri, 30 Jun 2017 00:04:51 GMT  
		Size: 267.3 KB (267338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afb89ce3380bf3f48b92dc106b7e1edee9dad3b2c879aeb7144ca01c4affe3d`  
		Last Modified: Fri, 30 Jun 2017 00:04:53 GMT  
		Size: 31.1 MB (31087971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.23`

```console
$ docker pull orientdb@sha256:8a6ab8110173e756d8ded7e1e5d5e98d700b98601f53130b8d2cd70dc974c178
```

-	Platforms:
	-	linux; amd64

### `orientdb:2.2.23` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115627284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fcfe2351e0f38bd68e2426764874cb6922e7e04c95d9750c7476ea9d303b1bd`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 28 Jun 2017 20:04:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:04:48 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:04:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:04:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 28 Jun 2017 20:05:57 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 28 Jun 2017 20:06:41 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Tue, 11 Jul 2017 17:19:17 GMT
ENV ORIENTDB_VERSION=2.2.23
# Tue, 11 Jul 2017 17:19:18 GMT
ENV ORIENTDB_DOWNLOAD_MD5=b5876a00eab78237a1098a787b21bed4
# Tue, 11 Jul 2017 17:19:18 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=33b8a824ac890f7fb5721333e67baa01c2421513
# Tue, 11 Jul 2017 17:19:19 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.23/orientdb-community-2.2.23.tar.gz
# Tue, 11 Jul 2017 17:19:22 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Tue, 11 Jul 2017 17:19:31 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 11 Jul 2017 17:19:38 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 11 Jul 2017 17:19:39 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 11 Jul 2017 17:19:39 GMT
WORKDIR /orientdb
# Tue, 11 Jul 2017 17:19:40 GMT
EXPOSE 2424/tcp
# Tue, 11 Jul 2017 17:19:41 GMT
EXPOSE 2480/tcp
# Tue, 11 Jul 2017 17:19:41 GMT
CMD ["server.sh"]
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
	-	`sha256:86ed68184682c19ccbab7445ae3789b7e8a72ccd4d68b9b64548e0d71c17b15b`  
		Last Modified: Thu, 29 Jun 2017 23:42:08 GMT  
		Size: 70.1 MB (70050180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c4cad53a5d8ed5139732f082adeb5dc0593978a7acecbb77122dcc0a7446a2`  
		Last Modified: Tue, 11 Jul 2017 17:20:39 GMT  
		Size: 646.7 KB (646653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2936d49da1f168ea70652308706fc6e9bbc94f1ceaac83a5f58353bd8076b7`  
		Last Modified: Tue, 11 Jul 2017 17:20:42 GMT  
		Size: 42.9 MB (42939818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:latest`

```console
$ docker pull orientdb@sha256:8a6ab8110173e756d8ded7e1e5d5e98d700b98601f53130b8d2cd70dc974c178
```

-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115627284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fcfe2351e0f38bd68e2426764874cb6922e7e04c95d9750c7476ea9d303b1bd`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 28 Jun 2017 20:04:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:04:48 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:04:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:04:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 28 Jun 2017 20:05:57 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 28 Jun 2017 20:06:41 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Tue, 11 Jul 2017 17:19:17 GMT
ENV ORIENTDB_VERSION=2.2.23
# Tue, 11 Jul 2017 17:19:18 GMT
ENV ORIENTDB_DOWNLOAD_MD5=b5876a00eab78237a1098a787b21bed4
# Tue, 11 Jul 2017 17:19:18 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=33b8a824ac890f7fb5721333e67baa01c2421513
# Tue, 11 Jul 2017 17:19:19 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.23/orientdb-community-2.2.23.tar.gz
# Tue, 11 Jul 2017 17:19:22 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Tue, 11 Jul 2017 17:19:31 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 11 Jul 2017 17:19:38 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 11 Jul 2017 17:19:39 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 11 Jul 2017 17:19:39 GMT
WORKDIR /orientdb
# Tue, 11 Jul 2017 17:19:40 GMT
EXPOSE 2424/tcp
# Tue, 11 Jul 2017 17:19:41 GMT
EXPOSE 2480/tcp
# Tue, 11 Jul 2017 17:19:41 GMT
CMD ["server.sh"]
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
	-	`sha256:86ed68184682c19ccbab7445ae3789b7e8a72ccd4d68b9b64548e0d71c17b15b`  
		Last Modified: Thu, 29 Jun 2017 23:42:08 GMT  
		Size: 70.1 MB (70050180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c4cad53a5d8ed5139732f082adeb5dc0593978a7acecbb77122dcc0a7446a2`  
		Last Modified: Tue, 11 Jul 2017 17:20:39 GMT  
		Size: 646.7 KB (646653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2936d49da1f168ea70652308706fc6e9bbc94f1ceaac83a5f58353bd8076b7`  
		Last Modified: Tue, 11 Jul 2017 17:20:42 GMT  
		Size: 42.9 MB (42939818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.23-spatial`

```console
$ docker pull orientdb@sha256:2dc88cbd4445266eb21c02fd291fa1b282524f97385f8d874e617601e81b1f76
```

-	Platforms:
	-	linux; amd64

### `orientdb:2.2.23-spatial` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.8 MB (116829445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9eeae149324ae680ff320cf9c4f607c2f931e1f788a8b73c79de29f328e1f59`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 28 Jun 2017 20:04:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:04:48 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:04:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:04:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 28 Jun 2017 20:05:57 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 28 Jun 2017 20:06:41 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Tue, 11 Jul 2017 17:19:17 GMT
ENV ORIENTDB_VERSION=2.2.23
# Tue, 11 Jul 2017 17:19:18 GMT
ENV ORIENTDB_DOWNLOAD_MD5=b5876a00eab78237a1098a787b21bed4
# Tue, 11 Jul 2017 17:19:18 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=33b8a824ac890f7fb5721333e67baa01c2421513
# Tue, 11 Jul 2017 17:19:19 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.23/orientdb-community-2.2.23.tar.gz
# Tue, 11 Jul 2017 17:19:22 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Tue, 11 Jul 2017 17:19:31 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 11 Jul 2017 17:19:38 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 11 Jul 2017 17:19:39 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 11 Jul 2017 17:19:39 GMT
WORKDIR /orientdb
# Tue, 11 Jul 2017 17:19:40 GMT
EXPOSE 2424/tcp
# Tue, 11 Jul 2017 17:19:41 GMT
EXPOSE 2480/tcp
# Tue, 11 Jul 2017 17:19:41 GMT
CMD ["server.sh"]
# Tue, 11 Jul 2017 17:19:55 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_MD5=5504791ac478c13b9ab55be705d8cab0
# Tue, 11 Jul 2017 17:19:56 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_SHA1=54f8c636ef893d363bf2918b37c27b8a5872235e
# Tue, 11 Jul 2017 17:19:56 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-spatial/2.2.23/orientdb-spatial-2.2.23-dist.jar
# Tue, 11 Jul 2017 17:19:58 GMT
RUN wget $ORIENTDB_DOWNLOAD_SPATIAL_URL     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_MD5 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | md5sum -c -     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_SHA1 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | sha1sum -c -     && mv orientdb-spatial-*-dist.jar /orientdb/lib/
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
	-	`sha256:86ed68184682c19ccbab7445ae3789b7e8a72ccd4d68b9b64548e0d71c17b15b`  
		Last Modified: Thu, 29 Jun 2017 23:42:08 GMT  
		Size: 70.1 MB (70050180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c4cad53a5d8ed5139732f082adeb5dc0593978a7acecbb77122dcc0a7446a2`  
		Last Modified: Tue, 11 Jul 2017 17:20:39 GMT  
		Size: 646.7 KB (646653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2936d49da1f168ea70652308706fc6e9bbc94f1ceaac83a5f58353bd8076b7`  
		Last Modified: Tue, 11 Jul 2017 17:20:42 GMT  
		Size: 42.9 MB (42939818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83e88d595acba57aabaf01203c711d20ef2674dee043275d4e45a5d1772e30a`  
		Last Modified: Tue, 11 Jul 2017 17:21:17 GMT  
		Size: 1.2 MB (1202161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.0m1`

```console
$ docker pull orientdb@sha256:cd88c5e89207ce8ee40359a6d6f6cb0848e3b872b53e53f03a4782fcf92fcb3c
```

-	Platforms:
	-	linux; amd64

### `orientdb:3.0.0m1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.9 MB (122881404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d8c2406010bd60bbea4520bc9bd4eb2df70e5628286af20e3ea3e3e6216bfc7`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 28 Jun 2017 20:04:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:04:48 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:04:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:04:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 28 Jun 2017 20:05:57 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 28 Jun 2017 20:06:41 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Wed, 28 Jun 2017 20:07:56 GMT
ENV ORIENTDB_VERSION=3.0.0m1
# Wed, 28 Jun 2017 20:07:57 GMT
ENV ORIENTDB_DOWNLOAD_MD5=e667351657f17fe4fb6d2f3b5a1bc9ad
# Wed, 28 Jun 2017 20:07:57 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=f621e0887a274b5f1277937f9925615a0e68edb1
# Wed, 28 Jun 2017 20:07:58 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community-tp3/3.0.0m1/orientdb-community-tp3-3.0.0m1.tar.gz
# Wed, 28 Jun 2017 20:08:03 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Wed, 28 Jun 2017 20:08:10 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-tp3-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-tp3-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-tp3-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-tp3-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 28 Jun 2017 20:08:10 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:08:11 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 28 Jun 2017 20:08:13 GMT
WORKDIR /orientdb
# Wed, 28 Jun 2017 20:08:14 GMT
EXPOSE 2424/tcp
# Wed, 28 Jun 2017 20:08:15 GMT
EXPOSE 2480/tcp
# Wed, 28 Jun 2017 20:08:16 GMT
CMD ["server.sh"]
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
	-	`sha256:86ed68184682c19ccbab7445ae3789b7e8a72ccd4d68b9b64548e0d71c17b15b`  
		Last Modified: Thu, 29 Jun 2017 23:42:08 GMT  
		Size: 70.1 MB (70050180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec51608ca3e65110a50921f2556e4ef22efa2efc675e1dbaeccdcd24cbe705ba`  
		Last Modified: Fri, 30 Jun 2017 00:08:09 GMT  
		Size: 646.7 KB (646652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32368ca746f3972e014f209be6a6f960245545567b952f70e189c29de0b8826`  
		Last Modified: Fri, 30 Jun 2017 00:08:14 GMT  
		Size: 50.2 MB (50193939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.0m1-spatial`

```console
$ docker pull orientdb@sha256:183de305607b6b4386f085d2da3660010f551037099a17220e9a5c7f3f21ecbc
```

-	Platforms:
	-	linux; amd64

### `orientdb:3.0.0m1-spatial` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125623529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66dfdd20dfb8c59d856755990005bd019670e861850d075fb8d853e366d59b0d`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 28 Jun 2017 20:04:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:04:48 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:04:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:04:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 28 Jun 2017 20:05:57 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 28 Jun 2017 20:06:41 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Wed, 28 Jun 2017 20:07:56 GMT
ENV ORIENTDB_VERSION=3.0.0m1
# Wed, 28 Jun 2017 20:08:41 GMT
ENV ORIENTDB_DOWNLOAD_MD5=ced149e809b02301b926f73ea4cf9c50
# Wed, 28 Jun 2017 20:08:42 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=d7f61d1435380e31338a96d87cfa59fdb5f0c579
# Wed, 28 Jun 2017 20:08:43 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community-spatial/3.0.0m1/orientdb-community-spatial-3.0.0m1.tar.gz
# Wed, 28 Jun 2017 20:08:47 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Wed, 28 Jun 2017 20:08:56 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 28 Jun 2017 20:08:57 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:08:58 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 28 Jun 2017 20:08:59 GMT
WORKDIR /orientdb
# Wed, 28 Jun 2017 20:09:00 GMT
EXPOSE 2424/tcp
# Wed, 28 Jun 2017 20:09:01 GMT
EXPOSE 2480/tcp
# Wed, 28 Jun 2017 20:09:02 GMT
CMD ["server.sh"]
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
	-	`sha256:86ed68184682c19ccbab7445ae3789b7e8a72ccd4d68b9b64548e0d71c17b15b`  
		Last Modified: Thu, 29 Jun 2017 23:42:08 GMT  
		Size: 70.1 MB (70050180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95220985633aca8f3455bc2a747e4c4a45cd6b9f2ac47f5e04733ac335d9728f`  
		Last Modified: Fri, 30 Jun 2017 00:08:58 GMT  
		Size: 646.7 KB (646652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd3ea83f323504574a41c0679e3bd2494348be0ed531d0dd2580170af7a31c6`  
		Last Modified: Fri, 30 Jun 2017 00:09:03 GMT  
		Size: 52.9 MB (52936064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
