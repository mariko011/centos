<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `orientdb`

-	[`orientdb:2.0.18`](#orientdb2018)
-	[`orientdb:2.1.25`](#orientdb2125)
-	[`orientdb:2.2.30`](#orientdb2230)
-	[`orientdb:2.2.30-spatial`](#orientdb2230-spatial)
-	[`orientdb:3.0.0m2`](#orientdb300m2)
-	[`orientdb:3.0.0m2-spatial`](#orientdb300m2-spatial)
-	[`orientdb:latest`](#orientdblatest)

## `orientdb:2.0.18`

```console
$ docker pull orientdb@sha256:87315d4918a962de993c4d86806bd0d2d353710c2c28b075043531a46572a89f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.0.18` - linux; amd64

```console
$ docker pull orientdb@sha256:f249c86f0f64ae4152d56219a71daa3fa46a88f7defbbb5608dee2db5b69feac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.2 MB (341235169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed33a38a0797f4ff3448f82da78f1a803021629b4460858e5302ddbb4975485c`
-	Default Command: `["server.sh"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:52:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:52:27 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:52:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:52:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:52:31 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 18:52:31 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:52:31 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:52:31 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:53:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:53:16 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 22:52:41 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Sat, 04 Nov 2017 22:52:41 GMT
ENV ORIENTDB_VERSION=2.0.18
# Sat, 04 Nov 2017 22:52:41 GMT
ENV ORIENTDB_DOWNLOAD_MD5=9e7b7e7b6d95795b188adb4e5898a1b8
# Sat, 04 Nov 2017 22:52:41 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=f562794536bbf8ae2145f96153e58b1e5d9211b3
# Sat, 04 Nov 2017 22:52:45 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Sat, 04 Nov 2017 22:52:46 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 22:52:46 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Sat, 04 Nov 2017 22:52:46 GMT
WORKDIR /orientdb
# Sat, 04 Nov 2017 22:52:46 GMT
EXPOSE 2424/tcp
# Sat, 04 Nov 2017 22:52:47 GMT
EXPOSE 2480/tcp
# Sat, 04 Nov 2017 22:52:47 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bd198d0a5f34c083f529767ffc7052e2754810db4a258db1c560ac4c523730`  
		Last Modified: Sat, 04 Nov 2017 15:47:56 GMT  
		Size: 50.0 MB (50021087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4d78fb08d622a543fe48a8d8bc932fae257861c35c5ad07f21c48102bd1ce1`  
		Last Modified: Sat, 04 Nov 2017 18:59:40 GMT  
		Size: 891.9 KB (891947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3d1bdcab4b0ca41f94ab11c917c609e07c78993870e21d1f71841a7e19578e`  
		Last Modified: Sat, 04 Nov 2017 18:59:38 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4853d1e6d0c10c3eb4de7eabd40e8cc9b20a78c3ab1754bcb1286658448509b0`  
		Last Modified: Sat, 04 Nov 2017 18:59:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e4624ad45ffa9e64288f35bb424be1cc94c5a33c573f12eb1e82f04800f417`  
		Last Modified: Sat, 04 Nov 2017 19:00:11 GMT  
		Size: 182.9 MB (182891789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbcd4c3ef937fe5c4c7bb9afca55d3d9f3d1068641a1f87b4a8dff02ef19e9a`  
		Last Modified: Sat, 04 Nov 2017 18:59:38 GMT  
		Size: 272.1 KB (272086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03ee7751d7e8755d385bd1cd09e6cebab99db7551f101cc2bc9e2ee1e9ccda1`  
		Last Modified: Sat, 04 Nov 2017 22:53:03 GMT  
		Size: 46.6 MB (46586558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.1.25`

```console
$ docker pull orientdb@sha256:45c9fa7fc3e4ebc24a410c221ebfcc6d6d2d4faea80fc9bcd3594b9dc8633bb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.1.25` - linux; amd64

```console
$ docker pull orientdb@sha256:32d4fabdc5fa6c02d2893e700389f3c6f43aafd43a95113fdf68cd191a070e45
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.4 MB (103401684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bef4743382f90c2eeb4e41f6f26d769088ad53a5aea00c530761dea34a7904a`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Sat, 04 Nov 2017 05:48:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_VERSION=8u131
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 04 Nov 2017 05:48:29 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 16:55:16 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Sat, 04 Nov 2017 16:55:17 GMT
ENV ORIENTDB_VERSION=2.1.25
# Sat, 04 Nov 2017 16:55:17 GMT
ENV ORIENTDB_DOWNLOAD_MD5=054da3fb7c56e7822b2af116966576ce
# Sat, 04 Nov 2017 16:55:17 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=b7b08242b40117ac8eb9a201f8704bde839dfcb8
# Sat, 04 Nov 2017 16:55:20 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Sat, 04 Nov 2017 16:55:23 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Sat, 04 Nov 2017 16:55:23 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 16:55:23 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Sat, 04 Nov 2017 16:55:26 GMT
WORKDIR /orientdb
# Sat, 04 Nov 2017 16:55:26 GMT
EXPOSE 2424/tcp
# Sat, 04 Nov 2017 16:55:26 GMT
EXPOSE 2480/tcp
# Sat, 04 Nov 2017 16:55:26 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7678525069841024e8702b5d9dbc066f2c8970afee9c11248f7af18c147ec3`  
		Last Modified: Sat, 04 Nov 2017 06:02:25 GMT  
		Size: 70.1 MB (70053766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71cb75af3edca9ccb19a062d30f735b377d1e87bf16ca0097405cb2a8b6ce09e`  
		Last Modified: Sat, 04 Nov 2017 16:56:38 GMT  
		Size: 268.3 KB (268294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3639ac3e82c3103577f3ac9e35f467a1727c6862c35bbfe5d351f988aaed869`  
		Last Modified: Sat, 04 Nov 2017 16:56:43 GMT  
		Size: 31.1 MB (31087951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.30`

**does not exist** (yet?)

## `orientdb:2.2.30-spatial`

**does not exist** (yet?)

## `orientdb:3.0.0m2`

```console
$ docker pull orientdb@sha256:75486302c0daf77294dc21528cfd59c5b391d7c8ca12accfd909ee33dd44defa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.0m2` - linux; amd64

```console
$ docker pull orientdb@sha256:dac6a72a83065f889deadd56ab1bb0c3b6de8b8ec43010675ea70c82d49508e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.9 MB (124863725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62088eacefbe2805734c2f9d249d84b55931b8c177f6fd4e5a1d3fa42a7007f3`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Sat, 04 Nov 2017 05:48:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_VERSION=8u131
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 04 Nov 2017 05:48:29 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 16:55:16 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Sat, 04 Nov 2017 16:55:32 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Sat, 04 Nov 2017 16:55:50 GMT
ENV ORIENTDB_VERSION=3.0.0m2
# Sat, 04 Nov 2017 16:55:51 GMT
ENV ORIENTDB_DOWNLOAD_MD5=4d17543d4308b73b9692281444bbfe69
# Sat, 04 Nov 2017 16:55:51 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=4520d18b19f366937a9158c2753c36bae4133905
# Sat, 04 Nov 2017 16:55:51 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community-gremlin/3.0.0m2/orientdb-community-gremlin-3.0.0m2.tar.gz
# Sat, 04 Nov 2017 16:55:54 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Sat, 04 Nov 2017 16:55:58 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-gremlin-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-gremlin-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-gremlin-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-gremlin-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Sat, 04 Nov 2017 16:55:58 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 16:55:58 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Sat, 04 Nov 2017 16:55:59 GMT
WORKDIR /orientdb
# Sat, 04 Nov 2017 16:55:59 GMT
EXPOSE 2424/tcp
# Sat, 04 Nov 2017 16:55:59 GMT
EXPOSE 2480/tcp
# Sat, 04 Nov 2017 16:55:59 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7678525069841024e8702b5d9dbc066f2c8970afee9c11248f7af18c147ec3`  
		Last Modified: Sat, 04 Nov 2017 06:02:25 GMT  
		Size: 70.1 MB (70053766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee975602f0d2e48d06bcd50957b754be7d4f51f4dde162445b0160c1610fc8ed`  
		Last Modified: Sat, 04 Nov 2017 16:57:17 GMT  
		Size: 663.1 KB (663108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:188c55b975a850d4b6456f98e194a2a5c5a735b8470967cc1252e83a29a23111`  
		Last Modified: Sat, 04 Nov 2017 16:57:21 GMT  
		Size: 52.2 MB (52155178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.0m2-spatial`

```console
$ docker pull orientdb@sha256:daeb94480153c721462e57e21bb4828da712abcf9e6ce33b41d5474a864af012
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.0m2-spatial` - linux; amd64

```console
$ docker pull orientdb@sha256:34d5c9621f664eff47d197e526a61d2a019445d46474e1455ac2726afe3c2111
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127823543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d82126d633048004e7cb0e5975a79e0327998e314283592e75947d4981bf8640`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Sat, 04 Nov 2017 05:48:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_VERSION=8u131
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 04 Nov 2017 05:48:29 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 16:55:16 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Sat, 04 Nov 2017 16:55:32 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Sat, 04 Nov 2017 16:55:50 GMT
ENV ORIENTDB_VERSION=3.0.0m2
# Sat, 04 Nov 2017 16:56:05 GMT
ENV ORIENTDB_DOWNLOAD_MD5=6d5546b1aa88a7a78cccc51bc61ae086
# Sat, 04 Nov 2017 16:56:05 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=339ec7e96aed62b0280a4a66579a82a5ae144db5
# Sat, 04 Nov 2017 16:56:06 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community-spatial/3.0.0m2/orientdb-community-spatial-3.0.0m2.tar.gz
# Sat, 04 Nov 2017 16:56:09 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Sat, 04 Nov 2017 16:56:13 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Sat, 04 Nov 2017 16:56:13 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 16:56:14 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Sat, 04 Nov 2017 16:56:14 GMT
WORKDIR /orientdb
# Sat, 04 Nov 2017 16:56:14 GMT
EXPOSE 2424/tcp
# Sat, 04 Nov 2017 16:56:14 GMT
EXPOSE 2480/tcp
# Sat, 04 Nov 2017 16:56:15 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7678525069841024e8702b5d9dbc066f2c8970afee9c11248f7af18c147ec3`  
		Last Modified: Sat, 04 Nov 2017 06:02:25 GMT  
		Size: 70.1 MB (70053766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf414950a8228e69671506f04ecd5ab1a40b524f48146ecc746841b71f733af`  
		Last Modified: Sat, 04 Nov 2017 16:57:30 GMT  
		Size: 663.1 KB (663109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0874c89a11348a84f60f59ca65de533bddbda8fa2905e19f623c06c3f73506ba`  
		Last Modified: Sat, 04 Nov 2017 16:57:34 GMT  
		Size: 55.1 MB (55114995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:latest`

```console
$ docker pull orientdb@sha256:d1bda70952f242cb0371fb997774665bc5188347e0638c1e45a88ee9bb14a17e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:83a6a0369bceedd838d443addbba39b535a116f7838f5a2eda7697bbf416f22a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116974278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:723e9eae0dbea63d447a3ddf4b0c514df4095f5a59ec34c1e8ea42cd5f181ad9`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Sat, 04 Nov 2017 05:48:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_VERSION=8u131
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 04 Nov 2017 05:48:29 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 16:55:16 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Sat, 04 Nov 2017 16:55:32 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Sat, 04 Nov 2017 16:55:32 GMT
ENV ORIENTDB_VERSION=2.2.29
# Sat, 04 Nov 2017 16:55:33 GMT
ENV ORIENTDB_DOWNLOAD_MD5=f20dc9a571e3b361bf115f1a5b9b82cb
# Sat, 04 Nov 2017 16:55:33 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=051f68bdc70642744def2c85d7136673a6bf24c1
# Sat, 04 Nov 2017 16:55:33 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.29/orientdb-community-2.2.29.tar.gz
# Sat, 04 Nov 2017 16:55:37 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Sat, 04 Nov 2017 16:55:41 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Sat, 04 Nov 2017 16:55:41 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 16:55:41 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Sat, 04 Nov 2017 16:55:42 GMT
WORKDIR /orientdb
# Sat, 04 Nov 2017 16:55:42 GMT
EXPOSE 2424/tcp
# Sat, 04 Nov 2017 16:55:42 GMT
EXPOSE 2480/tcp
# Sat, 04 Nov 2017 16:55:42 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7678525069841024e8702b5d9dbc066f2c8970afee9c11248f7af18c147ec3`  
		Last Modified: Sat, 04 Nov 2017 06:02:25 GMT  
		Size: 70.1 MB (70053766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78b9936a97b60bd9cc60ac0141f2ead501bb606e561cda52e48961002b47349`  
		Last Modified: Sat, 04 Nov 2017 16:56:52 GMT  
		Size: 663.1 KB (663111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6dbf9cd4b46a46d18041b12c64ad4c00a5a92d71c39b11698296fc3fe65b9a`  
		Last Modified: Sat, 04 Nov 2017 16:56:56 GMT  
		Size: 44.3 MB (44265728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
