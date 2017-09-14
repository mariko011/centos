<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `orientdb`

-	[`orientdb:2.0.18`](#orientdb2018)
-	[`orientdb:2.1.25`](#orientdb2125)
-	[`orientdb:2.2.26`](#orientdb2226)
-	[`orientdb:2.2.26-spatial`](#orientdb2226-spatial)
-	[`orientdb:3.0.0m2`](#orientdb300m2)
-	[`orientdb:3.0.0m2-spatial`](#orientdb300m2-spatial)
-	[`orientdb:latest`](#orientdblatest)

## `orientdb:2.0.18`

```console
$ docker pull orientdb@sha256:c455a3768eb3d4b901d3f529ce108c05ff25f2a0e9b9b807568c6f2e14fe7e53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.0.18` - linux; amd64

```console
$ docker pull orientdb@sha256:10c43541536d258dccaaa9e8712c325595290cdec3e44fc2b36194a8b7b7c59f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.3 MB (342321538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3649bea44e7bc705de1f8991d9e9a381ba32f6985584cea940ba6896355dfd9a`
-	Default Command: `["server.sh"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:36:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 04:18:14 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:18:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_VERSION=8u141
# Thu, 14 Sep 2017 04:18:17 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Thu, 14 Sep 2017 04:18:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 14 Sep 2017 04:19:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 14 Sep 2017 04:19:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 14 Sep 2017 06:40:23 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Thu, 14 Sep 2017 06:40:23 GMT
ENV ORIENTDB_VERSION=2.0.18
# Thu, 14 Sep 2017 06:40:23 GMT
ENV ORIENTDB_DOWNLOAD_MD5=9e7b7e7b6d95795b188adb4e5898a1b8
# Thu, 14 Sep 2017 06:40:23 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=f562794536bbf8ae2145f96153e58b1e5d9211b3
# Thu, 14 Sep 2017 06:40:28 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 14 Sep 2017 06:40:28 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 06:40:29 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 14 Sep 2017 06:40:29 GMT
WORKDIR /orientdb
# Thu, 14 Sep 2017 06:40:29 GMT
EXPOSE 2424/tcp
# Thu, 14 Sep 2017 06:40:29 GMT
EXPOSE 2480/tcp
# Thu, 14 Sep 2017 06:40:30 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9ce992ffe4e9206f990140191a5c20da0b4d94b00368b0cf95d842ff624a05`  
		Last Modified: Wed, 13 Sep 2017 12:57:46 GMT  
		Size: 11.1 MB (11103324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df8518230c3fcec095c3d4d27ee2f0f7df43aff4edb1461414ed74fa0751ec`  
		Last Modified: Wed, 13 Sep 2017 12:57:44 GMT  
		Size: 4.6 MB (4634394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ae21afde7b8e1eac3c1778aafa74ca286c2b5fccbb710da1016ca24a0bac56`  
		Last Modified: Wed, 13 Sep 2017 12:58:12 GMT  
		Size: 50.0 MB (50015593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d83cd5dabc8ae549b560ca520b1371f13d8baef53bcdfa4ec214987faf7718d`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 892.0 KB (892036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543947717bd00d6ab61f70fcd34dfb353cf6fbac6792971978dffdec837889f2`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344e9890b7318c3327a159d040a78ed639f2fc35cca96713f4052d6b3d37ac3a`  
		Last Modified: Thu, 14 Sep 2017 04:53:21 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6553263ea2e2528a718004ece3dac7bdaf66f2250816e28288fc61673bd40705`  
		Last Modified: Thu, 14 Sep 2017 04:54:20 GMT  
		Size: 183.7 MB (183691703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b668a5599b5fcf8e160432f65f880a9fa43e702fcc25b4c94db1989d3769c4b`  
		Last Modified: Thu, 14 Sep 2017 04:53:22 GMT  
		Size: 272.1 KB (272083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d93d6ec43093644a577ac4c41dbcc7634573dc03028686435edc78b22053c0`  
		Last Modified: Thu, 14 Sep 2017 06:41:37 GMT  
		Size: 46.6 MB (46586531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.1.25`

```console
$ docker pull orientdb@sha256:e2d07e10627fa2bc8525ce03b5789a459814b205cf844de0b9e7bcf52eef2ab0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.1.25` - linux; amd64

```console
$ docker pull orientdb@sha256:8c78d6f920c5891991f3c9b94be4fb7ae957647a462149bf8109d8e4d860ba35
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.4 MB (103398500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3228f53f6cc92d3441a99295d80e30ce250ed41898b3306fb9eb6ca10869ee51`
-	Default Command: `["server.sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 14 Sep 2017 04:21:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:21:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:40:32 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Thu, 14 Sep 2017 06:40:32 GMT
ENV ORIENTDB_VERSION=2.1.25
# Thu, 14 Sep 2017 06:40:32 GMT
ENV ORIENTDB_DOWNLOAD_MD5=054da3fb7c56e7822b2af116966576ce
# Thu, 14 Sep 2017 06:40:32 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=b7b08242b40117ac8eb9a201f8704bde839dfcb8
# Thu, 14 Sep 2017 06:40:35 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Thu, 14 Sep 2017 06:40:40 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 14 Sep 2017 06:40:40 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 06:40:40 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 14 Sep 2017 06:40:40 GMT
WORKDIR /orientdb
# Thu, 14 Sep 2017 06:40:41 GMT
EXPOSE 2424/tcp
# Thu, 14 Sep 2017 06:40:41 GMT
EXPOSE 2480/tcp
# Thu, 14 Sep 2017 06:40:41 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a4b3080d3cc157970baf6edf6194df12fa0a9dc61d2c1525781ae4af65213c`  
		Last Modified: Thu, 14 Sep 2017 04:59:04 GMT  
		Size: 70.1 MB (70051361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a10b3aa9dd79eeb2a694161366ac45157d2a006f2698fb20f43ff7098b577b`  
		Last Modified: Thu, 14 Sep 2017 06:41:48 GMT  
		Size: 268.5 KB (268536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfb715ad3d2480a541cdbbaca4276e44ae842e90cf7c80774ace57b91f01970`  
		Last Modified: Thu, 14 Sep 2017 06:41:49 GMT  
		Size: 31.1 MB (31087961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.26`

```console
$ docker pull orientdb@sha256:254fdfb9998f2aea4240c888bdb701a818db49896f081ce34ef2f30466ca4619
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.26` - linux; amd64

```console
$ docker pull orientdb@sha256:6a9a9185e7a5b6dac5b1716364bff75d4d2f9f630a6dd45723338f13b6752d9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.9 MB (116932888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12185c4eb44d24d62fe5c24be87edc0c077c97f2acad5bc644983a4035aa5038`
-	Default Command: `["server.sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 14 Sep 2017 04:21:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:21:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:40:32 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Thu, 14 Sep 2017 06:40:43 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Thu, 14 Sep 2017 06:40:44 GMT
ENV ORIENTDB_VERSION=2.2.26
# Thu, 14 Sep 2017 06:40:44 GMT
ENV ORIENTDB_DOWNLOAD_MD5=51f07639db0cce7574be6fe0c90e3ba7
# Thu, 14 Sep 2017 06:40:44 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=7b58eed99b5c5c03139eaa16718e2b048ffcd046
# Thu, 14 Sep 2017 06:40:44 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.26/orientdb-community-2.2.26.tar.gz
# Thu, 14 Sep 2017 06:40:47 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Thu, 14 Sep 2017 06:40:50 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 14 Sep 2017 06:40:50 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 06:40:50 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 14 Sep 2017 06:40:51 GMT
WORKDIR /orientdb
# Thu, 14 Sep 2017 06:40:51 GMT
EXPOSE 2424/tcp
# Thu, 14 Sep 2017 06:40:51 GMT
EXPOSE 2480/tcp
# Thu, 14 Sep 2017 06:40:51 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a4b3080d3cc157970baf6edf6194df12fa0a9dc61d2c1525781ae4af65213c`  
		Last Modified: Thu, 14 Sep 2017 04:59:04 GMT  
		Size: 70.1 MB (70051361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df2f6eb45b1c98729be8e0b278e3cb57a4f3b6d76314c22f5a66b9c4f7141fc`  
		Last Modified: Thu, 14 Sep 2017 06:41:58 GMT  
		Size: 649.5 KB (649450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c281a8d691b9788c2c6c0f341a75e494e3ce784165f6b85f9c9206c3c2ebfc8`  
		Last Modified: Thu, 14 Sep 2017 06:42:00 GMT  
		Size: 44.2 MB (44241435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.26-spatial`

```console
$ docker pull orientdb@sha256:afcc758c2c32c1ca300db9bad15b4e2abf9fc468f45c5d735c0423ba5f8a16b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.26-spatial` - linux; amd64

```console
$ docker pull orientdb@sha256:d5a7db5492529328d386d34371935655ccaa692f5b50cde9959a074aa6ada25a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.1 MB (118135396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c717f2bf1b12786ca334ff455233509437cb19305f320ec242d86389f713122`
-	Default Command: `["server.sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 14 Sep 2017 04:21:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:21:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:40:32 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Thu, 14 Sep 2017 06:40:43 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Thu, 14 Sep 2017 06:40:44 GMT
ENV ORIENTDB_VERSION=2.2.26
# Thu, 14 Sep 2017 06:40:44 GMT
ENV ORIENTDB_DOWNLOAD_MD5=51f07639db0cce7574be6fe0c90e3ba7
# Thu, 14 Sep 2017 06:40:44 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=7b58eed99b5c5c03139eaa16718e2b048ffcd046
# Thu, 14 Sep 2017 06:40:44 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.26/orientdb-community-2.2.26.tar.gz
# Thu, 14 Sep 2017 06:40:47 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Thu, 14 Sep 2017 06:40:50 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 14 Sep 2017 06:40:50 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 06:40:50 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 14 Sep 2017 06:40:51 GMT
WORKDIR /orientdb
# Thu, 14 Sep 2017 06:40:51 GMT
EXPOSE 2424/tcp
# Thu, 14 Sep 2017 06:40:51 GMT
EXPOSE 2480/tcp
# Thu, 14 Sep 2017 06:40:51 GMT
CMD ["server.sh"]
# Thu, 14 Sep 2017 06:40:54 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_MD5=184b497995869c3213eb4aa6a78130fc
# Thu, 14 Sep 2017 06:40:54 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_SHA1=70ff26a011902c744df18fab837890e7b581de1b
# Thu, 14 Sep 2017 06:40:54 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-spatial/2.2.26/orientdb-spatial-2.2.26-dist.jar
# Thu, 14 Sep 2017 06:40:55 GMT
RUN wget $ORIENTDB_DOWNLOAD_SPATIAL_URL     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_MD5 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | md5sum -c -     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_SHA1 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | sha1sum -c -     && mv orientdb-spatial-*-dist.jar /orientdb/lib/
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a4b3080d3cc157970baf6edf6194df12fa0a9dc61d2c1525781ae4af65213c`  
		Last Modified: Thu, 14 Sep 2017 04:59:04 GMT  
		Size: 70.1 MB (70051361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df2f6eb45b1c98729be8e0b278e3cb57a4f3b6d76314c22f5a66b9c4f7141fc`  
		Last Modified: Thu, 14 Sep 2017 06:41:58 GMT  
		Size: 649.5 KB (649450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c281a8d691b9788c2c6c0f341a75e494e3ce784165f6b85f9c9206c3c2ebfc8`  
		Last Modified: Thu, 14 Sep 2017 06:42:00 GMT  
		Size: 44.2 MB (44241435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ebe5e68760221545a6450556567422e877ced157536bc30655da3cd70e047f`  
		Last Modified: Thu, 14 Sep 2017 06:42:15 GMT  
		Size: 1.2 MB (1202508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.0m2`

```console
$ docker pull orientdb@sha256:e058802dede23f9fb5c0c85e35fb6e131a74a76b401be5187700c2cbe6b24084
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.0m2` - linux; amd64

```console
$ docker pull orientdb@sha256:3688101071012b349d3b269d80b02202801c2c204083a2b07e9ef0409a0c49e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.8 MB (124846596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dd8524681814c852fd4a06d8cc9172e042267432ebb5fd9f2ccb3b8fffc4d79`
-	Default Command: `["server.sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 14 Sep 2017 04:21:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:21:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:40:32 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Thu, 14 Sep 2017 06:40:43 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Thu, 14 Sep 2017 06:40:57 GMT
ENV ORIENTDB_VERSION=3.0.0m2
# Thu, 14 Sep 2017 06:40:57 GMT
ENV ORIENTDB_DOWNLOAD_MD5=4d17543d4308b73b9692281444bbfe69
# Thu, 14 Sep 2017 06:40:58 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=4520d18b19f366937a9158c2753c36bae4133905
# Thu, 14 Sep 2017 06:40:58 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community-gremlin/3.0.0m2/orientdb-community-gremlin-3.0.0m2.tar.gz
# Thu, 14 Sep 2017 06:41:01 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Thu, 14 Sep 2017 06:41:05 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-gremlin-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-gremlin-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-gremlin-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-gremlin-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 14 Sep 2017 06:41:05 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 06:41:05 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 14 Sep 2017 06:41:05 GMT
WORKDIR /orientdb
# Thu, 14 Sep 2017 06:41:06 GMT
EXPOSE 2424/tcp
# Thu, 14 Sep 2017 06:41:06 GMT
EXPOSE 2480/tcp
# Thu, 14 Sep 2017 06:41:06 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a4b3080d3cc157970baf6edf6194df12fa0a9dc61d2c1525781ae4af65213c`  
		Last Modified: Thu, 14 Sep 2017 04:59:04 GMT  
		Size: 70.1 MB (70051361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8004f9ed2cc20532735f140cb93b34732aa491046bc1973b0c29656ceac25bc9`  
		Last Modified: Thu, 14 Sep 2017 06:42:23 GMT  
		Size: 649.5 KB (649450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ae6b9e745d90de9dcbca9cc1115b69556e250ccecfd3b3f35860067601bfec`  
		Last Modified: Thu, 14 Sep 2017 06:42:29 GMT  
		Size: 52.2 MB (52155143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.0m2-spatial`

```console
$ docker pull orientdb@sha256:aab371dbcfb93f4a5eaa090530bd705b11e9c01495693d3b041597aa6af9e425
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.0m2-spatial` - linux; amd64

```console
$ docker pull orientdb@sha256:ba550b618a7fbf872c6c1e48beaf4f389664c033e6b9cde42d42c9e4f3211389
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127806448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db4b9e682aee26420d1b6e7517fb74d5823979bb19600063a59d7d2d477cd75b`
-	Default Command: `["server.sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 14 Sep 2017 04:21:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:21:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:40:32 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Thu, 14 Sep 2017 06:40:43 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Thu, 14 Sep 2017 06:40:57 GMT
ENV ORIENTDB_VERSION=3.0.0m2
# Thu, 14 Sep 2017 06:41:08 GMT
ENV ORIENTDB_DOWNLOAD_MD5=6d5546b1aa88a7a78cccc51bc61ae086
# Thu, 14 Sep 2017 06:41:09 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=339ec7e96aed62b0280a4a66579a82a5ae144db5
# Thu, 14 Sep 2017 06:41:09 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community-spatial/3.0.0m2/orientdb-community-spatial-3.0.0m2.tar.gz
# Thu, 14 Sep 2017 06:41:12 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Thu, 14 Sep 2017 06:41:17 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 14 Sep 2017 06:41:17 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 06:41:17 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 14 Sep 2017 06:41:17 GMT
WORKDIR /orientdb
# Thu, 14 Sep 2017 06:41:18 GMT
EXPOSE 2424/tcp
# Thu, 14 Sep 2017 06:41:18 GMT
EXPOSE 2480/tcp
# Thu, 14 Sep 2017 06:41:18 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a4b3080d3cc157970baf6edf6194df12fa0a9dc61d2c1525781ae4af65213c`  
		Last Modified: Thu, 14 Sep 2017 04:59:04 GMT  
		Size: 70.1 MB (70051361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdc28f13541e6d25256065d822de620237c80bf5b5ddbb9c1cdab2a1ddb47f6`  
		Last Modified: Thu, 14 Sep 2017 06:42:39 GMT  
		Size: 649.5 KB (649452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0177310dfb065e70f08a002a58e0896bc4a2d3cb8a4c17894c6c599900506dc5`  
		Last Modified: Thu, 14 Sep 2017 06:42:44 GMT  
		Size: 55.1 MB (55114993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:latest`

```console
$ docker pull orientdb@sha256:254fdfb9998f2aea4240c888bdb701a818db49896f081ce34ef2f30466ca4619
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:6a9a9185e7a5b6dac5b1716364bff75d4d2f9f630a6dd45723338f13b6752d9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.9 MB (116932888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12185c4eb44d24d62fe5c24be87edc0c077c97f2acad5bc644983a4035aa5038`
-	Default Command: `["server.sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 14 Sep 2017 04:21:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:21:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:40:32 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Thu, 14 Sep 2017 06:40:43 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Thu, 14 Sep 2017 06:40:44 GMT
ENV ORIENTDB_VERSION=2.2.26
# Thu, 14 Sep 2017 06:40:44 GMT
ENV ORIENTDB_DOWNLOAD_MD5=51f07639db0cce7574be6fe0c90e3ba7
# Thu, 14 Sep 2017 06:40:44 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=7b58eed99b5c5c03139eaa16718e2b048ffcd046
# Thu, 14 Sep 2017 06:40:44 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.26/orientdb-community-2.2.26.tar.gz
# Thu, 14 Sep 2017 06:40:47 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Thu, 14 Sep 2017 06:40:50 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 14 Sep 2017 06:40:50 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 06:40:50 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 14 Sep 2017 06:40:51 GMT
WORKDIR /orientdb
# Thu, 14 Sep 2017 06:40:51 GMT
EXPOSE 2424/tcp
# Thu, 14 Sep 2017 06:40:51 GMT
EXPOSE 2480/tcp
# Thu, 14 Sep 2017 06:40:51 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a4b3080d3cc157970baf6edf6194df12fa0a9dc61d2c1525781ae4af65213c`  
		Last Modified: Thu, 14 Sep 2017 04:59:04 GMT  
		Size: 70.1 MB (70051361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df2f6eb45b1c98729be8e0b278e3cb57a4f3b6d76314c22f5a66b9c4f7141fc`  
		Last Modified: Thu, 14 Sep 2017 06:41:58 GMT  
		Size: 649.5 KB (649450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c281a8d691b9788c2c6c0f341a75e494e3ce784165f6b85f9c9206c3c2ebfc8`  
		Last Modified: Thu, 14 Sep 2017 06:42:00 GMT  
		Size: 44.2 MB (44241435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
