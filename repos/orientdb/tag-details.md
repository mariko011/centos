<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `orientdb`

-	[`orientdb:2.0.18`](#orientdb2018)
-	[`orientdb:2.1.25`](#orientdb2125)
-	[`orientdb:2.2.31`](#orientdb2231)
-	[`orientdb:2.2.31-spatial`](#orientdb2231-spatial)
-	[`orientdb:3.0.0RC1`](#orientdb300rc1)
-	[`orientdb:3.0.0RC1-spatial`](#orientdb300rc1-spatial)
-	[`orientdb:latest`](#orientdblatest)

## `orientdb:2.0.18`

```console
$ docker pull orientdb@sha256:2894c29f93d3ea344e3054c9ffe6543e23440970d1f6909c038857bf27cb4814
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.0.18` - linux; amd64

```console
$ docker pull orientdb@sha256:963276a3ff746abdfa5ef279c646f62565b73dddd8759624e436ba088c874f9a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.2 MB (341240309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07cbf1b2e011fd5c5717a4c021e235a3aead846c9a2d98582541c04d46bda134`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:54:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:54:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 07:54:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 15:14:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 15:14:21 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 15:14:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Dec 2017 15:14:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 12 Dec 2017 15:14:24 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 12 Dec 2017 15:14:24 GMT
ENV JAVA_VERSION=8u151
# Tue, 12 Dec 2017 15:14:25 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Tue, 12 Dec 2017 15:14:25 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 12 Dec 2017 15:15:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Dec 2017 15:15:53 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 12 Dec 2017 18:49:26 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 12 Dec 2017 18:49:27 GMT
ENV ORIENTDB_VERSION=2.0.18
# Tue, 12 Dec 2017 18:49:27 GMT
ENV ORIENTDB_DOWNLOAD_MD5=9e7b7e7b6d95795b188adb4e5898a1b8
# Tue, 12 Dec 2017 18:49:27 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=f562794536bbf8ae2145f96153e58b1e5d9211b3
# Tue, 12 Dec 2017 18:49:33 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 12 Dec 2017 18:49:33 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 18:49:34 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 12 Dec 2017 18:49:34 GMT
WORKDIR /orientdb
# Tue, 12 Dec 2017 18:49:35 GMT
EXPOSE 2424/tcp
# Tue, 12 Dec 2017 18:49:35 GMT
EXPOSE 2480/tcp
# Tue, 12 Dec 2017 18:49:35 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe15a44e12f84b4aac20d4f2b450ec8638cc0b176c9130d1802cb4fed17d953`  
		Last Modified: Tue, 12 Dec 2017 08:03:48 GMT  
		Size: 11.1 MB (11107352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409a28e3cc3de08700c9d37c809a6d3aa43dc076402943919f4a78c286c60a0b`  
		Last Modified: Tue, 12 Dec 2017 08:03:48 GMT  
		Size: 4.3 MB (4335420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50316693559041b3c6895bce352b10c302f31c074495671a820b689d2ce12baa`  
		Last Modified: Tue, 12 Dec 2017 08:04:27 GMT  
		Size: 50.0 MB (50022829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043a12c29ea469f2521637d790e447a11583651eaa1809da1b15cbbdcdccc0ed`  
		Last Modified: Tue, 12 Dec 2017 16:17:47 GMT  
		Size: 892.0 KB (892049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3036204524472a3bf48d87444c797e8d0ea5e2b7b7490702a059314d797aa697`  
		Last Modified: Tue, 12 Dec 2017 16:17:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61f95baa024b8c0a05ab25a2180f5a37d9cae8284ff70709ca0fcb36d97d9e6`  
		Last Modified: Tue, 12 Dec 2017 16:17:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2018472a1fdc5a8ef25fbbf2cde838d8c9aa99ca9e799c0f38d82552368d8c`  
		Last Modified: Tue, 12 Dec 2017 16:18:35 GMT  
		Size: 182.9 MB (182901918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a25f8a69c882f7cd39cfd819ae28c9d228bfc4255fe39a18a5d6bd41fd60b061`  
		Last Modified: Tue, 12 Dec 2017 16:17:43 GMT  
		Size: 272.2 KB (272178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fe7a535f71f7038cb2c8c79c838145c60a099856112a5035396c1ed459bf01`  
		Last Modified: Tue, 12 Dec 2017 18:50:04 GMT  
		Size: 46.6 MB (46586556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.1.25`

```console
$ docker pull orientdb@sha256:89d13a3aad87d63c1c416ccd4c706a07e045af8debee4e5860e28ae9914ab24b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.1.25` - linux; amd64

```console
$ docker pull orientdb@sha256:78e9b043a3bbc44ccbdbc8c1e258a28ff6fcc53383b112c0767669dd951b15c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.6 MB (103649606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdf4e5c5bc0455f1fddb19cd712269524e4f58ee0f12ac063607814074b32ba9`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 03:42:44 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 03:42:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 05 Dec 2017 03:43:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 03:43:38 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 04:59:33 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 05 Dec 2017 04:59:33 GMT
ENV ORIENTDB_VERSION=2.1.25
# Tue, 05 Dec 2017 04:59:33 GMT
ENV ORIENTDB_DOWNLOAD_MD5=054da3fb7c56e7822b2af116966576ce
# Tue, 05 Dec 2017 04:59:33 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=b7b08242b40117ac8eb9a201f8704bde839dfcb8
# Tue, 05 Dec 2017 04:59:37 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Tue, 05 Dec 2017 04:59:40 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 05 Dec 2017 04:59:40 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 04:59:40 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 05 Dec 2017 04:59:40 GMT
WORKDIR /orientdb
# Tue, 05 Dec 2017 04:59:46 GMT
EXPOSE 2424/tcp
# Tue, 05 Dec 2017 04:59:46 GMT
EXPOSE 2480/tcp
# Tue, 05 Dec 2017 04:59:47 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82630fd6e5ba7225587bd7986c7b6245801f8c7b001c9db318aecbb7fcb188a4`  
		Last Modified: Tue, 05 Dec 2017 03:44:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:001511eb343719c992da5faff08582639cc4a015132f74ac29c2be121bfd62ed`  
		Last Modified: Tue, 05 Dec 2017 03:45:44 GMT  
		Size: 70.2 MB (70227876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a99b1aa31ce48af328d19d812f3d87a80fa9573a6c1f44f5618b54c8b0d8f05`  
		Last Modified: Tue, 05 Dec 2017 05:01:17 GMT  
		Size: 268.6 KB (268613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802574708c0828740a96c11ccb750af46abe8ddbfeb143490cd4526ce1f69247`  
		Last Modified: Tue, 05 Dec 2017 05:01:20 GMT  
		Size: 31.1 MB (31087967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.31`

```console
$ docker pull orientdb@sha256:8857810b5cd029622a3de84e036c776336d21786f7212ec4a4e9fc0b0b748d8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.31` - linux; amd64

```console
$ docker pull orientdb@sha256:7109c70f145eb2e93ea94505ef48856467194a64f01e37481367dba0fad02935
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.6 MB (119619400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a91b48ffd510e85ad55e40f46173b10f6cf90fa95ca3454bc13a4e9451ad73ab`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 03:42:44 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 03:42:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 05 Dec 2017 03:43:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 03:43:38 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 04:59:33 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 05 Dec 2017 04:59:54 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Wed, 13 Dec 2017 18:36:37 GMT
ENV ORIENTDB_VERSION=2.2.31
# Wed, 13 Dec 2017 18:36:37 GMT
ENV ORIENTDB_DOWNLOAD_MD5=a7f9558bed6f8a12950b6282af9ef8cd
# Wed, 13 Dec 2017 18:36:37 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=b4044e1a623ceaa67fd2a0ff18afe10b3f741c1c
# Wed, 13 Dec 2017 18:36:37 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.31/orientdb-community-2.2.31.tar.gz
# Wed, 13 Dec 2017 18:36:40 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Wed, 13 Dec 2017 18:36:45 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 13 Dec 2017 18:36:46 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 13 Dec 2017 18:36:46 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 13 Dec 2017 18:36:46 GMT
WORKDIR /orientdb
# Wed, 13 Dec 2017 18:36:47 GMT
EXPOSE 2424/tcp
# Wed, 13 Dec 2017 18:36:47 GMT
EXPOSE 2480/tcp
# Wed, 13 Dec 2017 18:36:47 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82630fd6e5ba7225587bd7986c7b6245801f8c7b001c9db318aecbb7fcb188a4`  
		Last Modified: Tue, 05 Dec 2017 03:44:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:001511eb343719c992da5faff08582639cc4a015132f74ac29c2be121bfd62ed`  
		Last Modified: Tue, 05 Dec 2017 03:45:44 GMT  
		Size: 70.2 MB (70227876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cda56e469046baae75ad43748d2c523505e679ee34b36d510663aa1a9e57922`  
		Last Modified: Wed, 13 Dec 2017 18:37:12 GMT  
		Size: 665.5 KB (665514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb3624b319c5c7e5eed72b364d08b06979faab0665b589a43c4b372f89bebe43`  
		Last Modified: Wed, 13 Dec 2017 18:37:17 GMT  
		Size: 46.7 MB (46660860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.31-spatial`

```console
$ docker pull orientdb@sha256:d968f1a74f0db97c10b6f83b4f30fbd47b8bac0ea940e6f77a718885e8f9e93e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.31-spatial` - linux; amd64

```console
$ docker pull orientdb@sha256:60edb9e60147a98c485bb9dc4011798daa2c9b053eed9349e0b8aa83ff462280
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.8 MB (120822025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a9342bcc6fdac0ecb8a9edd681a45a192bb65bd24bf86ade8ef3801c0638729`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 03:42:44 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 03:42:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 05 Dec 2017 03:43:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 03:43:38 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 04:59:33 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 05 Dec 2017 04:59:54 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Wed, 13 Dec 2017 18:36:37 GMT
ENV ORIENTDB_VERSION=2.2.31
# Wed, 13 Dec 2017 18:36:37 GMT
ENV ORIENTDB_DOWNLOAD_MD5=a7f9558bed6f8a12950b6282af9ef8cd
# Wed, 13 Dec 2017 18:36:37 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=b4044e1a623ceaa67fd2a0ff18afe10b3f741c1c
# Wed, 13 Dec 2017 18:36:37 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.31/orientdb-community-2.2.31.tar.gz
# Wed, 13 Dec 2017 18:36:40 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Wed, 13 Dec 2017 18:36:45 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 13 Dec 2017 18:36:46 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 13 Dec 2017 18:36:46 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 13 Dec 2017 18:36:46 GMT
WORKDIR /orientdb
# Wed, 13 Dec 2017 18:36:47 GMT
EXPOSE 2424/tcp
# Wed, 13 Dec 2017 18:36:47 GMT
EXPOSE 2480/tcp
# Wed, 13 Dec 2017 18:36:47 GMT
CMD ["server.sh"]
# Wed, 13 Dec 2017 18:36:55 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_MD5=45c20a72a89ea40a10b29064256b9856
# Wed, 13 Dec 2017 18:36:56 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_SHA1=49ece1da0d4444bc231b7b8961c2f25c5e27d58b
# Wed, 13 Dec 2017 18:36:56 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-spatial/2.2.31/orientdb-spatial-2.2.31-dist.jar
# Wed, 13 Dec 2017 18:36:57 GMT
RUN wget $ORIENTDB_DOWNLOAD_SPATIAL_URL     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_MD5 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | md5sum -c -     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_SHA1 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | sha1sum -c -     && mv orientdb-spatial-*-dist.jar /orientdb/lib/
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82630fd6e5ba7225587bd7986c7b6245801f8c7b001c9db318aecbb7fcb188a4`  
		Last Modified: Tue, 05 Dec 2017 03:44:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:001511eb343719c992da5faff08582639cc4a015132f74ac29c2be121bfd62ed`  
		Last Modified: Tue, 05 Dec 2017 03:45:44 GMT  
		Size: 70.2 MB (70227876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cda56e469046baae75ad43748d2c523505e679ee34b36d510663aa1a9e57922`  
		Last Modified: Wed, 13 Dec 2017 18:37:12 GMT  
		Size: 665.5 KB (665514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb3624b319c5c7e5eed72b364d08b06979faab0665b589a43c4b372f89bebe43`  
		Last Modified: Wed, 13 Dec 2017 18:37:17 GMT  
		Size: 46.7 MB (46660860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e29a1d43c1d941af27985c08a4c0b0be23d34796c2d7e37e5104ee66317ed6`  
		Last Modified: Wed, 13 Dec 2017 18:37:42 GMT  
		Size: 1.2 MB (1202625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.0RC1`

```console
$ docker pull orientdb@sha256:6cf7ff2f57e2c1a42f2347ba31485552773a0a7e914e14bcdb28c31be9124da8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.0RC1` - linux; amd64

```console
$ docker pull orientdb@sha256:659ec9443978096cb45087fcb39a2f311f0cc53dead090b20b2e44b510d07c16
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134884452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8d1fe63f9affb4549b3de55bfede0f022bd22940a07a1c0a804dbc513a68495`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 03:42:44 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 03:42:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 05 Dec 2017 03:43:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 03:43:38 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 04:59:33 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 05 Dec 2017 04:59:54 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Tue, 19 Dec 2017 17:45:37 GMT
ENV ORIENTDB_VERSION=3.0.0RC1
# Tue, 19 Dec 2017 17:45:37 GMT
ENV ORIENTDB_DOWNLOAD_MD5=f231735d7ac8c18e8e5f6aab5e6ae459
# Tue, 19 Dec 2017 17:45:38 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=8a1d8d5468d55bdb9430f525481ba356e9ca6209
# Tue, 19 Dec 2017 17:45:38 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community-gremlin/3.0.0RC1/orientdb-community-gremlin-3.0.0RC1.tar.gz
# Tue, 19 Dec 2017 17:45:42 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Tue, 19 Dec 2017 17:45:49 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-gremlin-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-gremlin-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-gremlin-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-gremlin-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 19 Dec 2017 17:45:49 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 19 Dec 2017 17:45:50 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 19 Dec 2017 17:45:50 GMT
WORKDIR /orientdb
# Tue, 19 Dec 2017 17:45:51 GMT
EXPOSE 2424/tcp
# Tue, 19 Dec 2017 17:45:51 GMT
EXPOSE 2480/tcp
# Tue, 19 Dec 2017 17:45:52 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82630fd6e5ba7225587bd7986c7b6245801f8c7b001c9db318aecbb7fcb188a4`  
		Last Modified: Tue, 05 Dec 2017 03:44:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:001511eb343719c992da5faff08582639cc4a015132f74ac29c2be121bfd62ed`  
		Last Modified: Tue, 05 Dec 2017 03:45:44 GMT  
		Size: 70.2 MB (70227876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc449eb495739e0e634b9e93cc1b63ed3978fb9e56fe96d5b0fe1b52e5fe0bab`  
		Last Modified: Tue, 19 Dec 2017 17:46:59 GMT  
		Size: 665.5 KB (665505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd3e79a1ed6f550514d5636934c1167db7a90f7dfc5e97134aff2a04b27b6ef`  
		Last Modified: Tue, 19 Dec 2017 17:47:04 GMT  
		Size: 61.9 MB (61925921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.0RC1-spatial`

```console
$ docker pull orientdb@sha256:156cab24c64f742582dbc54de44d984f55a845bcb26a08b7215c84fa8ab708fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.0RC1-spatial` - linux; amd64

```console
$ docker pull orientdb@sha256:615ae7a61f5a580550194d1f9906713fa8f0c6f50e0ed3e2008f96203c0f18ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.9 MB (137922587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fb209278ab44f273b4c0bd7cbfe3e047d83209f283dc0ed09faef99578f7ae3`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 03:42:44 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 03:42:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 05 Dec 2017 03:43:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 03:43:38 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 04:59:33 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 05 Dec 2017 04:59:54 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Tue, 19 Dec 2017 17:45:37 GMT
ENV ORIENTDB_VERSION=3.0.0RC1
# Tue, 19 Dec 2017 17:46:11 GMT
ENV ORIENTDB_DOWNLOAD_MD5=ca13076821b8b358f723ed4245c6fbf1
# Tue, 19 Dec 2017 17:46:11 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=0dc325fbe3583c32eb9c785a1a6c92cda1112031
# Tue, 19 Dec 2017 17:46:11 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community-spatial/3.0.0RC1/orientdb-community-spatial-3.0.0RC1.tar.gz
# Tue, 19 Dec 2017 17:46:17 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Tue, 19 Dec 2017 17:46:26 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 19 Dec 2017 17:46:26 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 19 Dec 2017 17:46:27 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 19 Dec 2017 17:46:27 GMT
WORKDIR /orientdb
# Tue, 19 Dec 2017 17:46:28 GMT
EXPOSE 2424/tcp
# Tue, 19 Dec 2017 17:46:29 GMT
EXPOSE 2480/tcp
# Tue, 19 Dec 2017 17:46:29 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82630fd6e5ba7225587bd7986c7b6245801f8c7b001c9db318aecbb7fcb188a4`  
		Last Modified: Tue, 05 Dec 2017 03:44:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:001511eb343719c992da5faff08582639cc4a015132f74ac29c2be121bfd62ed`  
		Last Modified: Tue, 05 Dec 2017 03:45:44 GMT  
		Size: 70.2 MB (70227876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d13e9ef9a12bba815fb1908bb2b4bf739aaabf57384351b7f86188f94dc36ab`  
		Last Modified: Tue, 19 Dec 2017 17:47:20 GMT  
		Size: 665.5 KB (665506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367fb0c87b3ac4fd2846b08d2b0aa8501b7aa488f98ec6f8078ee822c9be41f0`  
		Last Modified: Tue, 19 Dec 2017 17:47:24 GMT  
		Size: 65.0 MB (64964055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:latest`

```console
$ docker pull orientdb@sha256:8857810b5cd029622a3de84e036c776336d21786f7212ec4a4e9fc0b0b748d8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:7109c70f145eb2e93ea94505ef48856467194a64f01e37481367dba0fad02935
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.6 MB (119619400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a91b48ffd510e85ad55e40f46173b10f6cf90fa95ca3454bc13a4e9451ad73ab`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 03:42:44 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 03:42:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 05 Dec 2017 03:43:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 03:43:38 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 04:59:33 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 05 Dec 2017 04:59:54 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Wed, 13 Dec 2017 18:36:37 GMT
ENV ORIENTDB_VERSION=2.2.31
# Wed, 13 Dec 2017 18:36:37 GMT
ENV ORIENTDB_DOWNLOAD_MD5=a7f9558bed6f8a12950b6282af9ef8cd
# Wed, 13 Dec 2017 18:36:37 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=b4044e1a623ceaa67fd2a0ff18afe10b3f741c1c
# Wed, 13 Dec 2017 18:36:37 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.31/orientdb-community-2.2.31.tar.gz
# Wed, 13 Dec 2017 18:36:40 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Wed, 13 Dec 2017 18:36:45 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 13 Dec 2017 18:36:46 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 13 Dec 2017 18:36:46 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 13 Dec 2017 18:36:46 GMT
WORKDIR /orientdb
# Wed, 13 Dec 2017 18:36:47 GMT
EXPOSE 2424/tcp
# Wed, 13 Dec 2017 18:36:47 GMT
EXPOSE 2480/tcp
# Wed, 13 Dec 2017 18:36:47 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82630fd6e5ba7225587bd7986c7b6245801f8c7b001c9db318aecbb7fcb188a4`  
		Last Modified: Tue, 05 Dec 2017 03:44:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:001511eb343719c992da5faff08582639cc4a015132f74ac29c2be121bfd62ed`  
		Last Modified: Tue, 05 Dec 2017 03:45:44 GMT  
		Size: 70.2 MB (70227876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cda56e469046baae75ad43748d2c523505e679ee34b36d510663aa1a9e57922`  
		Last Modified: Wed, 13 Dec 2017 18:37:12 GMT  
		Size: 665.5 KB (665514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb3624b319c5c7e5eed72b364d08b06979faab0665b589a43c4b372f89bebe43`  
		Last Modified: Wed, 13 Dec 2017 18:37:17 GMT  
		Size: 46.7 MB (46660860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
