<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `orientdb`

-	[`orientdb:2.0.18`](#orientdb2018)
-	[`orientdb:2.1.25`](#orientdb2125)
-	[`orientdb:2.2.25`](#orientdb2225)
-	[`orientdb:2.2.25-spatial`](#orientdb2225-spatial)
-	[`orientdb:3.0.0m2`](#orientdb300m2)
-	[`orientdb:3.0.0m2-spatial`](#orientdb300m2-spatial)
-	[`orientdb:latest`](#orientdblatest)

## `orientdb:2.0.18`

```console
$ docker pull orientdb@sha256:3e7949ba7916a385bdb498e01a2c6a7731edda8fba665e67100b03fb36bdeafd
```

-	Platforms:
	-	linux; amd64

### `orientdb:2.0.18` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.9 MB (341866755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:054d5dfd13a9420f8db6165faa521f1c8d7e8d2cef1b48d018c1785dba8327ca`
-	Default Command: `["server.sh"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:09:51 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 18:09:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 24 Jul 2017 18:09:53 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_VERSION=8u141
# Wed, 26 Jul 2017 20:32:25 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Wed, 26 Jul 2017 20:32:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 26 Jul 2017 20:33:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Jul 2017 20:33:16 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 27 Jul 2017 20:17:06 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Thu, 27 Jul 2017 20:17:06 GMT
ENV ORIENTDB_VERSION=2.0.18
# Thu, 27 Jul 2017 20:17:06 GMT
ENV ORIENTDB_DOWNLOAD_MD5=9e7b7e7b6d95795b188adb4e5898a1b8
# Thu, 27 Jul 2017 20:17:06 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=f562794536bbf8ae2145f96153e58b1e5d9211b3
# Thu, 27 Jul 2017 20:17:11 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 27 Jul 2017 20:17:11 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Jul 2017 20:17:12 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 27 Jul 2017 20:17:12 GMT
WORKDIR /orientdb
# Thu, 27 Jul 2017 20:17:12 GMT
EXPOSE 2424/tcp
# Thu, 27 Jul 2017 20:17:13 GMT
EXPOSE 2480/tcp
# Thu, 27 Jul 2017 20:17:13 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14eaa20184e60073d2705ab636fb92b4428dfc503b858b423608dba26d628c99`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 660.5 KB (660458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a8522e2399427c6c6d4cb5748e3c9ea39188af728386b37ffa3719b60a08a0`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ba9d7befcada9c3bfe28fe046ee3ddf551dbcd0fe29a620071c07f49afc2e9`  
		Last Modified: Mon, 24 Jul 2017 18:22:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635bf5037831b9d348a557e32db9ca3c918de37880ff495a93d232ca111c7dba`  
		Last Modified: Wed, 26 Jul 2017 20:37:36 GMT  
		Size: 183.7 MB (183682145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1236c277f1c5f5d26d97dca2662375f8b807e82196737c10ee54219109a86b0`  
		Last Modified: Wed, 26 Jul 2017 20:37:10 GMT  
		Size: 272.0 KB (271991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f9f19d10b160b078feaaf148922eb4dfc702de63c839fab6749f1e4e5480d0c`  
		Last Modified: Thu, 27 Jul 2017 20:17:23 GMT  
		Size: 46.6 MB (46586556 bytes)  
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

## `orientdb:2.2.25`

```console
$ docker pull orientdb@sha256:52e41bbb4c692336737a6c01fc9307ec1d78cb87f5e1b80f549aad357fc7f22a
```

-	Platforms:
	-	linux; amd64

### `orientdb:2.2.25` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.8 MB (115832730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8537ee47199bd18b51ce7b4f285c0ea82a954560552ebf1c92184ca69df1bc4c`
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
# Wed, 02 Aug 2017 16:43:28 GMT
ENV ORIENTDB_VERSION=2.2.25
# Wed, 02 Aug 2017 16:43:28 GMT
ENV ORIENTDB_DOWNLOAD_MD5=4fb8bf20113de22ffc551cbd6f41c84c
# Wed, 02 Aug 2017 16:43:29 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=cc2b3c449910161d11885e22f8cc16b0060786ca
# Wed, 02 Aug 2017 16:43:29 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.25/orientdb-community-2.2.25.tar.gz
# Wed, 02 Aug 2017 16:43:33 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Wed, 02 Aug 2017 16:43:36 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 02 Aug 2017 16:43:37 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 02 Aug 2017 16:43:37 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 02 Aug 2017 16:43:37 GMT
WORKDIR /orientdb
# Wed, 02 Aug 2017 16:43:38 GMT
EXPOSE 2424/tcp
# Wed, 02 Aug 2017 16:43:38 GMT
EXPOSE 2480/tcp
# Wed, 02 Aug 2017 16:43:38 GMT
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
	-	`sha256:c6311af2be3184e2614a084ebbaba0c60dfc27ffb2b218c23f17f22b60ef36d2`  
		Last Modified: Wed, 02 Aug 2017 16:44:03 GMT  
		Size: 646.7 KB (646653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60cbc7ac3432239053cadf4e8aa99061037f490f8ca0415b72dc3b85d615e5af`  
		Last Modified: Wed, 02 Aug 2017 16:44:06 GMT  
		Size: 43.1 MB (43145264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.25-spatial`

```console
$ docker pull orientdb@sha256:f3a56e8a37bf68b2b4a071f3ea8918fd7e45a97945aa5dda5dff6505d9b09b31
```

-	Platforms:
	-	linux; amd64

### `orientdb:2.2.25-spatial` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (117035228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60a041c57ae319f27669289be6926fe69b71e3bb041aa7879efadf74d6661ccc`
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
# Wed, 02 Aug 2017 16:43:28 GMT
ENV ORIENTDB_VERSION=2.2.25
# Wed, 02 Aug 2017 16:43:28 GMT
ENV ORIENTDB_DOWNLOAD_MD5=4fb8bf20113de22ffc551cbd6f41c84c
# Wed, 02 Aug 2017 16:43:29 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=cc2b3c449910161d11885e22f8cc16b0060786ca
# Wed, 02 Aug 2017 16:43:29 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.25/orientdb-community-2.2.25.tar.gz
# Wed, 02 Aug 2017 16:43:33 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Wed, 02 Aug 2017 16:43:36 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 02 Aug 2017 16:43:37 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 02 Aug 2017 16:43:37 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 02 Aug 2017 16:43:37 GMT
WORKDIR /orientdb
# Wed, 02 Aug 2017 16:43:38 GMT
EXPOSE 2424/tcp
# Wed, 02 Aug 2017 16:43:38 GMT
EXPOSE 2480/tcp
# Wed, 02 Aug 2017 16:43:38 GMT
CMD ["server.sh"]
# Wed, 02 Aug 2017 16:43:42 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_MD5=146e22b45903ffdf32bcc82403e82f1c
# Wed, 02 Aug 2017 16:43:42 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_SHA1=f29772979980fb4858599e733919c850588bcd4c
# Wed, 02 Aug 2017 16:43:42 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-spatial/2.2.25/orientdb-spatial-2.2.25-dist.jar
# Wed, 02 Aug 2017 16:43:43 GMT
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
	-	`sha256:c6311af2be3184e2614a084ebbaba0c60dfc27ffb2b218c23f17f22b60ef36d2`  
		Last Modified: Wed, 02 Aug 2017 16:44:03 GMT  
		Size: 646.7 KB (646653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60cbc7ac3432239053cadf4e8aa99061037f490f8ca0415b72dc3b85d615e5af`  
		Last Modified: Wed, 02 Aug 2017 16:44:06 GMT  
		Size: 43.1 MB (43145264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913c63240462a8fff7db27d67c2c8bdd43ef8b19afc2e4bcb81e39bf775f80b6`  
		Last Modified: Wed, 02 Aug 2017 16:44:18 GMT  
		Size: 1.2 MB (1202498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.0m2`

```console
$ docker pull orientdb@sha256:75619779f8373b80bab5a0e31390f319a70d9bc3127a78617d30cb2f0e2e286b
```

-	Platforms:
	-	linux; amd64

### `orientdb:3.0.0m2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.8 MB (124842649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96fbebdbbd883149d2942bfe20d74382384f6b0a334ad20aac0286d1784aaf4a`
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
# Tue, 01 Aug 2017 18:27:25 GMT
ENV ORIENTDB_VERSION=3.0.0m2
# Tue, 01 Aug 2017 18:27:25 GMT
ENV ORIENTDB_DOWNLOAD_MD5=4d17543d4308b73b9692281444bbfe69
# Tue, 01 Aug 2017 18:27:26 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=4520d18b19f366937a9158c2753c36bae4133905
# Tue, 01 Aug 2017 18:27:26 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community-gremlin/3.0.0m2/orientdb-community-gremlin-3.0.0m2.tar.gz
# Tue, 01 Aug 2017 18:27:32 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Tue, 01 Aug 2017 18:27:37 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-gremlin-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-gremlin-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-gremlin-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-gremlin-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 01 Aug 2017 18:27:37 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 01 Aug 2017 18:27:37 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 01 Aug 2017 18:27:38 GMT
WORKDIR /orientdb
# Tue, 01 Aug 2017 18:27:38 GMT
EXPOSE 2424/tcp
# Tue, 01 Aug 2017 18:27:38 GMT
EXPOSE 2480/tcp
# Tue, 01 Aug 2017 18:27:39 GMT
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
	-	`sha256:09e0811151fcca4c7650db1e48ac3614434d83c45e4999064902605348feede6`  
		Last Modified: Tue, 01 Aug 2017 18:28:26 GMT  
		Size: 646.7 KB (646658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c2e72d4f2bfe15440dfc278b5be706b12296d3ea28e8176139531753c9012f`  
		Last Modified: Tue, 01 Aug 2017 18:28:30 GMT  
		Size: 52.2 MB (52155178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.0m2-spatial`

```console
$ docker pull orientdb@sha256:21445e628950cae640fd39a417f64fdb60041ca0d734a655db5ba47326eabb6e
```

-	Platforms:
	-	linux; amd64

### `orientdb:3.0.0m2-spatial` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127802399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a8ab6810b705b5cbb5c732d2a544dc172c8f4bdcf8f524885e62bd3d6d904f4`
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
# Tue, 01 Aug 2017 18:27:25 GMT
ENV ORIENTDB_VERSION=3.0.0m2
# Tue, 01 Aug 2017 18:27:42 GMT
ENV ORIENTDB_DOWNLOAD_MD5=6d5546b1aa88a7a78cccc51bc61ae086
# Tue, 01 Aug 2017 18:27:42 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=339ec7e96aed62b0280a4a66579a82a5ae144db5
# Tue, 01 Aug 2017 18:27:42 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community-spatial/3.0.0m2/orientdb-community-spatial-3.0.0m2.tar.gz
# Tue, 01 Aug 2017 18:27:45 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Tue, 01 Aug 2017 18:27:50 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 01 Aug 2017 18:27:51 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 01 Aug 2017 18:27:51 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 01 Aug 2017 18:27:51 GMT
WORKDIR /orientdb
# Tue, 01 Aug 2017 18:27:51 GMT
EXPOSE 2424/tcp
# Tue, 01 Aug 2017 18:27:52 GMT
EXPOSE 2480/tcp
# Tue, 01 Aug 2017 18:27:52 GMT
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
	-	`sha256:c91535ae0297a487dc7ed4fab92b60cc0e4ebd57a38c966d29623f18c695c65d`  
		Last Modified: Tue, 01 Aug 2017 18:28:40 GMT  
		Size: 646.7 KB (646651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5546c3dfefb89be93bb86aaf6b4b8c136b45cc05841e86e4db0da09100005fa6`  
		Last Modified: Tue, 01 Aug 2017 18:28:46 GMT  
		Size: 55.1 MB (55114935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:latest`

```console
$ docker pull orientdb@sha256:ed30e40f4fa6dc2d7ee6ec3937dc31a4c99877e091b8487346a10607e89e6362
```

-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.6 MB (115643804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0723e4b0ee2c76c1faa47b232da16377e6c7a033b79e0f407a18cce40ae72a0`
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
# Fri, 21 Jul 2017 18:50:58 GMT
ENV ORIENTDB_VERSION=2.2.24
# Fri, 21 Jul 2017 18:50:58 GMT
ENV ORIENTDB_DOWNLOAD_MD5=04da451958c0cb72ebaf42029883a257
# Fri, 21 Jul 2017 18:50:59 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=af0d308d580f7485c2d3871ac98a371f2c77a2ae
# Fri, 21 Jul 2017 18:50:59 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.24/orientdb-community-2.2.24.tar.gz
# Fri, 21 Jul 2017 18:51:03 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Fri, 21 Jul 2017 18:51:07 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 21 Jul 2017 18:51:07 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Jul 2017 18:51:08 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 21 Jul 2017 18:51:09 GMT
WORKDIR /orientdb
# Fri, 21 Jul 2017 18:51:09 GMT
EXPOSE 2424/tcp
# Fri, 21 Jul 2017 18:51:10 GMT
EXPOSE 2480/tcp
# Fri, 21 Jul 2017 18:51:11 GMT
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
	-	`sha256:c26e632329dad03ceb1f16635d37e735adbfeb06714e0f7f86cefdb1716aa14e`  
		Last Modified: Fri, 21 Jul 2017 18:51:57 GMT  
		Size: 646.7 KB (646658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458eb9b8c69e14f1966e42136e2fa0269aa09cec8b85d80c15aa9d8bb35db6e2`  
		Last Modified: Fri, 21 Jul 2017 18:52:11 GMT  
		Size: 43.0 MB (42956333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
