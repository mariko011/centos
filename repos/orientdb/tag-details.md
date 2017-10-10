<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `orientdb`

-	[`orientdb:2.0.18`](#orientdb2018)
-	[`orientdb:2.1.25`](#orientdb2125)
-	[`orientdb:2.2.29`](#orientdb2229)
-	[`orientdb:2.2.29-spatial`](#orientdb2229-spatial)
-	[`orientdb:3.0.0m2`](#orientdb300m2)
-	[`orientdb:3.0.0m2-spatial`](#orientdb300m2-spatial)
-	[`orientdb:latest`](#orientdblatest)

## `orientdb:2.0.18`

```console
$ docker pull orientdb@sha256:505ce3fd05cdc61f2e9395d2e611a069bf4ce2f9723fbbaf71b4da568bf37d36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.0.18` - linux; amd64

```console
$ docker pull orientdb@sha256:ccd1ace93eb953b056dcdd351c5a4eae62920fe49bec168eb5346e044d9fd576
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.3 MB (342333148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d5f5e1e6bb6627df9327ea9e6e4585bbcb83737fb57469ac7f408582980a278`
-	Default Command: `["server.sh"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:48:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:48:49 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:49:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:49:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 09:54:21 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 10 Oct 2017 09:54:21 GMT
ENV ORIENTDB_VERSION=2.0.18
# Tue, 10 Oct 2017 09:54:21 GMT
ENV ORIENTDB_DOWNLOAD_MD5=9e7b7e7b6d95795b188adb4e5898a1b8
# Tue, 10 Oct 2017 09:54:22 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=f562794536bbf8ae2145f96153e58b1e5d9211b3
# Tue, 10 Oct 2017 09:54:26 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 10 Oct 2017 09:54:27 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 09:54:27 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 10 Oct 2017 09:54:27 GMT
WORKDIR /orientdb
# Tue, 10 Oct 2017 09:54:27 GMT
EXPOSE 2424/tcp
# Tue, 10 Oct 2017 09:54:28 GMT
EXPOSE 2480/tcp
# Tue, 10 Oct 2017 09:54:28 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77980e5d0a6deb5b982795f18597f7e9ee7f9d08614cbc57528050b2a7977044`  
		Last Modified: Tue, 10 Oct 2017 01:17:05 GMT  
		Size: 892.2 KB (892192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5458607a81d3430c59a97089416a3ef2d8788bdb7eba159b3c2508904d41b996`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34cf8338f422c47dc8c752afc2b406bb502e95cd2f74af9e84bff773e72d243`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3d3da5c56e5c9083605636f83450dfb193a0e46c55185cf98ed1ebac26f339`  
		Last Modified: Tue, 10 Oct 2017 01:17:39 GMT  
		Size: 183.7 MB (183691300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ade7a861e3fe26356fa773e1b3f05add01be9ab4c977b711223c15fc30f458e`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f94b83fa1b80ec74b7368d26c2877c081f616988f5505da2f0a470af2ff61013`  
		Last Modified: Tue, 10 Oct 2017 09:54:52 GMT  
		Size: 46.6 MB (46586556 bytes)  
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

## `orientdb:2.2.29`

```console
$ docker pull orientdb@sha256:e2caf64d8448c82331e9c84c703a72e9a109a98166a8ac786251f87756543fb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.29` - linux; amd64

```console
$ docker pull orientdb@sha256:38ed7982b3f29f0c7cdf2d785f5f607d8402b22a8b7ff26323946ca51ec03022
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116970225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7a4e1ff2dc8d37b9746746c95338d6aa64d60c0771a786872133a3f003c6ff1`
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
# Fri, 06 Oct 2017 18:37:31 GMT
ENV ORIENTDB_VERSION=2.2.29
# Fri, 06 Oct 2017 18:37:31 GMT
ENV ORIENTDB_DOWNLOAD_MD5=f20dc9a571e3b361bf115f1a5b9b82cb
# Fri, 06 Oct 2017 18:37:31 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=051f68bdc70642744def2c85d7136673a6bf24c1
# Fri, 06 Oct 2017 18:37:32 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.29/orientdb-community-2.2.29.tar.gz
# Fri, 06 Oct 2017 18:37:35 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Fri, 06 Oct 2017 18:37:41 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 06 Oct 2017 18:37:41 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 06 Oct 2017 18:37:42 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 06 Oct 2017 18:37:42 GMT
WORKDIR /orientdb
# Fri, 06 Oct 2017 18:37:42 GMT
EXPOSE 2424/tcp
# Fri, 06 Oct 2017 18:37:42 GMT
EXPOSE 2480/tcp
# Fri, 06 Oct 2017 18:37:43 GMT
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
	-	`sha256:df238cfb90639443a84c7dfe64eed41845a2968b365a63e13da766c6aea136a2`  
		Last Modified: Fri, 06 Oct 2017 18:38:01 GMT  
		Size: 662.5 KB (662481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72210388770339e73eebf9534c49eb04bad63f20cf2516213f0a7dd226728c4c`  
		Last Modified: Fri, 06 Oct 2017 18:38:04 GMT  
		Size: 44.3 MB (44265741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.29-spatial`

```console
$ docker pull orientdb@sha256:eaccf4e3c540157fb4a023f0dd7f70bd40b864c405338ea13b93a2a1ba57db06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.29-spatial` - linux; amd64

```console
$ docker pull orientdb@sha256:e52f4e1152f5e7f14d2621a5bb7160f694e254def488d7deb25fb7a99fa30ce4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.2 MB (118172623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4535c82fe7fb89d94ce55a0b2c0f2bfe4038ca593dd8b23bb0735e2413322e5`
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
# Fri, 06 Oct 2017 18:37:31 GMT
ENV ORIENTDB_VERSION=2.2.29
# Fri, 06 Oct 2017 18:37:31 GMT
ENV ORIENTDB_DOWNLOAD_MD5=f20dc9a571e3b361bf115f1a5b9b82cb
# Fri, 06 Oct 2017 18:37:31 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=051f68bdc70642744def2c85d7136673a6bf24c1
# Fri, 06 Oct 2017 18:37:32 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.29/orientdb-community-2.2.29.tar.gz
# Fri, 06 Oct 2017 18:37:35 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Fri, 06 Oct 2017 18:37:41 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 06 Oct 2017 18:37:41 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 06 Oct 2017 18:37:42 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 06 Oct 2017 18:37:42 GMT
WORKDIR /orientdb
# Fri, 06 Oct 2017 18:37:42 GMT
EXPOSE 2424/tcp
# Fri, 06 Oct 2017 18:37:42 GMT
EXPOSE 2480/tcp
# Fri, 06 Oct 2017 18:37:43 GMT
CMD ["server.sh"]
# Fri, 06 Oct 2017 18:37:48 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_MD5=09b0b730c208fc28aced078dadb19ebd
# Fri, 06 Oct 2017 18:37:49 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_SHA1=78ef59069f26c5cf3d96f3c35e24bb7cdbf115ec
# Fri, 06 Oct 2017 18:37:49 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-spatial/2.2.29/orientdb-spatial-2.2.29-dist.jar
# Fri, 06 Oct 2017 18:37:50 GMT
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
	-	`sha256:df238cfb90639443a84c7dfe64eed41845a2968b365a63e13da766c6aea136a2`  
		Last Modified: Fri, 06 Oct 2017 18:38:01 GMT  
		Size: 662.5 KB (662481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72210388770339e73eebf9534c49eb04bad63f20cf2516213f0a7dd226728c4c`  
		Last Modified: Fri, 06 Oct 2017 18:38:04 GMT  
		Size: 44.3 MB (44265741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d34505774990061962dad7f39e8e4ace2ec6fb3b4b9096f1d423276ff1aa667`  
		Last Modified: Fri, 06 Oct 2017 18:38:22 GMT  
		Size: 1.2 MB (1202398 bytes)  
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
$ docker pull orientdb@sha256:e2caf64d8448c82331e9c84c703a72e9a109a98166a8ac786251f87756543fb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:38ed7982b3f29f0c7cdf2d785f5f607d8402b22a8b7ff26323946ca51ec03022
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116970225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7a4e1ff2dc8d37b9746746c95338d6aa64d60c0771a786872133a3f003c6ff1`
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
# Fri, 06 Oct 2017 18:37:31 GMT
ENV ORIENTDB_VERSION=2.2.29
# Fri, 06 Oct 2017 18:37:31 GMT
ENV ORIENTDB_DOWNLOAD_MD5=f20dc9a571e3b361bf115f1a5b9b82cb
# Fri, 06 Oct 2017 18:37:31 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=051f68bdc70642744def2c85d7136673a6bf24c1
# Fri, 06 Oct 2017 18:37:32 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.29/orientdb-community-2.2.29.tar.gz
# Fri, 06 Oct 2017 18:37:35 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Fri, 06 Oct 2017 18:37:41 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 06 Oct 2017 18:37:41 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 06 Oct 2017 18:37:42 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 06 Oct 2017 18:37:42 GMT
WORKDIR /orientdb
# Fri, 06 Oct 2017 18:37:42 GMT
EXPOSE 2424/tcp
# Fri, 06 Oct 2017 18:37:42 GMT
EXPOSE 2480/tcp
# Fri, 06 Oct 2017 18:37:43 GMT
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
	-	`sha256:df238cfb90639443a84c7dfe64eed41845a2968b365a63e13da766c6aea136a2`  
		Last Modified: Fri, 06 Oct 2017 18:38:01 GMT  
		Size: 662.5 KB (662481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72210388770339e73eebf9534c49eb04bad63f20cf2516213f0a7dd226728c4c`  
		Last Modified: Fri, 06 Oct 2017 18:38:04 GMT  
		Size: 44.3 MB (44265741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
