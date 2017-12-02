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
$ docker pull orientdb@sha256:2a4114bea3a4e69af97c534d778b2ce77e515cffa4287617f85f27945126a526
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.1.25` - linux; amd64

```console
$ docker pull orientdb@sha256:0a48b4aed8f3b03a7d7505ea14cde6d067912c9b909d79310fc79ba85b7d48b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.4 MB (103401825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17f2c28ca053b46cd564f93cc017da5ce23979ceca879110b405c9151df5b32c`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:10:23 GMT
ENV LANG=C.UTF-8
# Fri, 01 Dec 2017 22:10:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 01 Dec 2017 22:11:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 01 Dec 2017 22:11:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 01 Dec 2017 22:11:21 GMT
ENV JAVA_VERSION=8u131
# Fri, 01 Dec 2017 22:11:21 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Fri, 01 Dec 2017 22:11:27 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 02 Dec 2017 00:23:30 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Sat, 02 Dec 2017 00:23:30 GMT
ENV ORIENTDB_VERSION=2.1.25
# Sat, 02 Dec 2017 00:23:30 GMT
ENV ORIENTDB_DOWNLOAD_MD5=054da3fb7c56e7822b2af116966576ce
# Sat, 02 Dec 2017 00:23:31 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=b7b08242b40117ac8eb9a201f8704bde839dfcb8
# Sat, 02 Dec 2017 00:23:34 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Sat, 02 Dec 2017 00:23:38 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Sat, 02 Dec 2017 00:23:38 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 02 Dec 2017 00:23:38 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Sat, 02 Dec 2017 00:23:39 GMT
WORKDIR /orientdb
# Sat, 02 Dec 2017 00:23:39 GMT
EXPOSE 2424/tcp
# Sat, 02 Dec 2017 00:23:39 GMT
EXPOSE 2480/tcp
# Sat, 02 Dec 2017 00:23:40 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b3e089ad5bb56a471216d30899b22b6cc9887cb8a4f49e5ada714fd21a8c8e`  
		Last Modified: Fri, 01 Dec 2017 22:12:17 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4220f7d94f04402577aa397b232e4efb4d3a99550329c601b5fb98279d22a2d8`  
		Last Modified: Fri, 01 Dec 2017 22:13:39 GMT  
		Size: 70.1 MB (70053843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06111a39a83ca730af1d70eefe7c0da98ee7988fcdb24abeb0ac42dcc9aa160b`  
		Last Modified: Sat, 02 Dec 2017 00:25:05 GMT  
		Size: 268.3 KB (268289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2b5ef4b93368139746cd751a26f4b0f0f7e5d273e42227a151303c90b68674`  
		Last Modified: Sat, 02 Dec 2017 00:25:08 GMT  
		Size: 31.1 MB (31087955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.30`

```console
$ docker pull orientdb@sha256:100eba6fe883709019a19bb3cd37ee9bc0161f8401e0db7e230455f441cc2582
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.30` - linux; amd64

```console
$ docker pull orientdb@sha256:9936185d37fdeb470d0208cc2c640543aa6f9fe9eb8e82bb8cf35b4eab865325
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (119037390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b0b59a01b9554e6c520d3f8c1c53bcb71522db8cb0c941bc27fdcf4613baa65`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:10:23 GMT
ENV LANG=C.UTF-8
# Fri, 01 Dec 2017 22:10:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 01 Dec 2017 22:11:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 01 Dec 2017 22:11:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 01 Dec 2017 22:11:21 GMT
ENV JAVA_VERSION=8u131
# Fri, 01 Dec 2017 22:11:21 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Fri, 01 Dec 2017 22:11:27 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 02 Dec 2017 00:23:30 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Sat, 02 Dec 2017 00:23:45 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Sat, 02 Dec 2017 00:23:46 GMT
ENV ORIENTDB_VERSION=2.2.30
# Sat, 02 Dec 2017 00:23:46 GMT
ENV ORIENTDB_DOWNLOAD_MD5=41757856ddbca87f368e812982041316
# Sat, 02 Dec 2017 00:23:46 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=7c014647fbf7521a2817a5427e29dae609e53954
# Sat, 02 Dec 2017 00:23:46 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.30/orientdb-community-2.2.30.tar.gz
# Sat, 02 Dec 2017 00:23:49 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Sat, 02 Dec 2017 00:23:52 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Sat, 02 Dec 2017 00:23:53 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 02 Dec 2017 00:23:53 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Sat, 02 Dec 2017 00:23:53 GMT
WORKDIR /orientdb
# Sat, 02 Dec 2017 00:23:54 GMT
EXPOSE 2424/tcp
# Sat, 02 Dec 2017 00:23:54 GMT
EXPOSE 2480/tcp
# Sat, 02 Dec 2017 00:23:54 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b3e089ad5bb56a471216d30899b22b6cc9887cb8a4f49e5ada714fd21a8c8e`  
		Last Modified: Fri, 01 Dec 2017 22:12:17 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4220f7d94f04402577aa397b232e4efb4d3a99550329c601b5fb98279d22a2d8`  
		Last Modified: Fri, 01 Dec 2017 22:13:39 GMT  
		Size: 70.1 MB (70053843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904c853784f93a7e49d23b99957380a1fe292a3225ea6bdf491af4a2c25c1aff`  
		Last Modified: Sat, 02 Dec 2017 00:25:22 GMT  
		Size: 663.1 KB (663109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34f9bed0273986ed159dfa895ea05ea72404c00b13b3d6f0ef0a209da5a1f7bb`  
		Last Modified: Sat, 02 Dec 2017 00:25:25 GMT  
		Size: 46.3 MB (46328700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.30-spatial`

```console
$ docker pull orientdb@sha256:28cdf8e80dfb495d6164d0098b5fab8bb021ba90ac21cb0bcfd097a1619140ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.30-spatial` - linux; amd64

```console
$ docker pull orientdb@sha256:9f2bf950226263f754cfec8a1a602c1aed66de4896d1ae06e51b00d444d988f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.2 MB (120240010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4635828945c191d5b8ce92d023f7bcfd2d8bf507363e369a79aefcffd15bd3b7`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:10:23 GMT
ENV LANG=C.UTF-8
# Fri, 01 Dec 2017 22:10:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 01 Dec 2017 22:11:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 01 Dec 2017 22:11:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 01 Dec 2017 22:11:21 GMT
ENV JAVA_VERSION=8u131
# Fri, 01 Dec 2017 22:11:21 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Fri, 01 Dec 2017 22:11:27 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 02 Dec 2017 00:23:30 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Sat, 02 Dec 2017 00:23:45 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Sat, 02 Dec 2017 00:23:46 GMT
ENV ORIENTDB_VERSION=2.2.30
# Sat, 02 Dec 2017 00:23:46 GMT
ENV ORIENTDB_DOWNLOAD_MD5=41757856ddbca87f368e812982041316
# Sat, 02 Dec 2017 00:23:46 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=7c014647fbf7521a2817a5427e29dae609e53954
# Sat, 02 Dec 2017 00:23:46 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.30/orientdb-community-2.2.30.tar.gz
# Sat, 02 Dec 2017 00:23:49 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Sat, 02 Dec 2017 00:23:52 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Sat, 02 Dec 2017 00:23:53 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 02 Dec 2017 00:23:53 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Sat, 02 Dec 2017 00:23:53 GMT
WORKDIR /orientdb
# Sat, 02 Dec 2017 00:23:54 GMT
EXPOSE 2424/tcp
# Sat, 02 Dec 2017 00:23:54 GMT
EXPOSE 2480/tcp
# Sat, 02 Dec 2017 00:23:54 GMT
CMD ["server.sh"]
# Sat, 02 Dec 2017 00:24:06 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_MD5=52bd5e5da675a05db240babadde1c5c4
# Sat, 02 Dec 2017 00:24:07 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_SHA1=0c36159eef6ad73ad07f8fc9a5dae056101638a8
# Sat, 02 Dec 2017 00:24:07 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-spatial/2.2.30/orientdb-spatial-2.2.30-dist.jar
# Sat, 02 Dec 2017 00:24:08 GMT
RUN wget $ORIENTDB_DOWNLOAD_SPATIAL_URL     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_MD5 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | md5sum -c -     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_SHA1 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | sha1sum -c -     && mv orientdb-spatial-*-dist.jar /orientdb/lib/
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b3e089ad5bb56a471216d30899b22b6cc9887cb8a4f49e5ada714fd21a8c8e`  
		Last Modified: Fri, 01 Dec 2017 22:12:17 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4220f7d94f04402577aa397b232e4efb4d3a99550329c601b5fb98279d22a2d8`  
		Last Modified: Fri, 01 Dec 2017 22:13:39 GMT  
		Size: 70.1 MB (70053843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904c853784f93a7e49d23b99957380a1fe292a3225ea6bdf491af4a2c25c1aff`  
		Last Modified: Sat, 02 Dec 2017 00:25:22 GMT  
		Size: 663.1 KB (663109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34f9bed0273986ed159dfa895ea05ea72404c00b13b3d6f0ef0a209da5a1f7bb`  
		Last Modified: Sat, 02 Dec 2017 00:25:25 GMT  
		Size: 46.3 MB (46328700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65c9c97ce408c74380d5bde411f89980221f1eea485f22f15d97cd6c97287f6`  
		Last Modified: Sat, 02 Dec 2017 00:25:45 GMT  
		Size: 1.2 MB (1202620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.0m2`

```console
$ docker pull orientdb@sha256:ed7b251ce937bd6ac07ec2ff08450401b5a16d880368e69eb606d49250e7df58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.0m2` - linux; amd64

```console
$ docker pull orientdb@sha256:550e4ad170f240f7658ca6e098ec8ef1a34f69aebc196b28aede51f7ad9e7f2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.9 MB (124863843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8f99169e4f08bd540b83c84df6329f1a6256b39c416ed06f5db8b857593527e`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:10:23 GMT
ENV LANG=C.UTF-8
# Fri, 01 Dec 2017 22:10:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 01 Dec 2017 22:11:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 01 Dec 2017 22:11:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 01 Dec 2017 22:11:21 GMT
ENV JAVA_VERSION=8u131
# Fri, 01 Dec 2017 22:11:21 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Fri, 01 Dec 2017 22:11:27 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 02 Dec 2017 00:23:30 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Sat, 02 Dec 2017 00:23:45 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Sat, 02 Dec 2017 00:24:15 GMT
ENV ORIENTDB_VERSION=3.0.0m2
# Sat, 02 Dec 2017 00:24:16 GMT
ENV ORIENTDB_DOWNLOAD_MD5=4d17543d4308b73b9692281444bbfe69
# Sat, 02 Dec 2017 00:24:16 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=4520d18b19f366937a9158c2753c36bae4133905
# Sat, 02 Dec 2017 00:24:16 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community-gremlin/3.0.0m2/orientdb-community-gremlin-3.0.0m2.tar.gz
# Sat, 02 Dec 2017 00:24:19 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Sat, 02 Dec 2017 00:24:28 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-gremlin-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-gremlin-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-gremlin-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-gremlin-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Sat, 02 Dec 2017 00:24:28 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 02 Dec 2017 00:24:29 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Sat, 02 Dec 2017 00:24:29 GMT
WORKDIR /orientdb
# Sat, 02 Dec 2017 00:24:29 GMT
EXPOSE 2424/tcp
# Sat, 02 Dec 2017 00:24:30 GMT
EXPOSE 2480/tcp
# Sat, 02 Dec 2017 00:24:30 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b3e089ad5bb56a471216d30899b22b6cc9887cb8a4f49e5ada714fd21a8c8e`  
		Last Modified: Fri, 01 Dec 2017 22:12:17 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4220f7d94f04402577aa397b232e4efb4d3a99550329c601b5fb98279d22a2d8`  
		Last Modified: Fri, 01 Dec 2017 22:13:39 GMT  
		Size: 70.1 MB (70053843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e382b222b1ffcaa0fd4dd7e3b7ca707d1b41e621e1e78a9f83af8f2dc6a775e6`  
		Last Modified: Sat, 02 Dec 2017 00:26:00 GMT  
		Size: 663.1 KB (663117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee0c627febd00a9b4a449baeddf8f037d1f3e3fa98022f9a96afa76c891f188`  
		Last Modified: Sat, 02 Dec 2017 00:26:05 GMT  
		Size: 52.2 MB (52155145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.0m2-spatial`

```console
$ docker pull orientdb@sha256:b4bbe4f0ab1b9a4aef4741ffbed4cd5a6d667b832a08b5e616390379d65717ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.0m2-spatial` - linux; amd64

```console
$ docker pull orientdb@sha256:440dec99dedfe455baab81fdedc16e8f81d0472cd530d0218c93c4d3d196ec46
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127823651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03b5b22c33281165068a10888513c43dd40b52417f0624bfa0f06029c04ae1f5`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:10:23 GMT
ENV LANG=C.UTF-8
# Fri, 01 Dec 2017 22:10:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 01 Dec 2017 22:11:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 01 Dec 2017 22:11:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 01 Dec 2017 22:11:21 GMT
ENV JAVA_VERSION=8u131
# Fri, 01 Dec 2017 22:11:21 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Fri, 01 Dec 2017 22:11:27 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 02 Dec 2017 00:23:30 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Sat, 02 Dec 2017 00:23:45 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Sat, 02 Dec 2017 00:24:15 GMT
ENV ORIENTDB_VERSION=3.0.0m2
# Sat, 02 Dec 2017 00:24:41 GMT
ENV ORIENTDB_DOWNLOAD_MD5=6d5546b1aa88a7a78cccc51bc61ae086
# Sat, 02 Dec 2017 00:24:41 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=339ec7e96aed62b0280a4a66579a82a5ae144db5
# Sat, 02 Dec 2017 00:24:41 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community-spatial/3.0.0m2/orientdb-community-spatial-3.0.0m2.tar.gz
# Sat, 02 Dec 2017 00:24:44 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Sat, 02 Dec 2017 00:24:51 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Sat, 02 Dec 2017 00:24:51 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 02 Dec 2017 00:24:52 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Sat, 02 Dec 2017 00:24:52 GMT
WORKDIR /orientdb
# Sat, 02 Dec 2017 00:24:52 GMT
EXPOSE 2424/tcp
# Sat, 02 Dec 2017 00:24:52 GMT
EXPOSE 2480/tcp
# Sat, 02 Dec 2017 00:24:53 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b3e089ad5bb56a471216d30899b22b6cc9887cb8a4f49e5ada714fd21a8c8e`  
		Last Modified: Fri, 01 Dec 2017 22:12:17 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4220f7d94f04402577aa397b232e4efb4d3a99550329c601b5fb98279d22a2d8`  
		Last Modified: Fri, 01 Dec 2017 22:13:39 GMT  
		Size: 70.1 MB (70053843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c669d3f872b13f23b0c24ae7ac948d5c9069210113af09abda2888f1a8605116`  
		Last Modified: Sat, 02 Dec 2017 00:26:20 GMT  
		Size: 663.1 KB (663106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5972ba656d5484bc6439fa717a81a567c837d4fe06b4eb49d1e58286d545cb30`  
		Last Modified: Sat, 02 Dec 2017 00:26:27 GMT  
		Size: 55.1 MB (55114964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:latest`

```console
$ docker pull orientdb@sha256:100eba6fe883709019a19bb3cd37ee9bc0161f8401e0db7e230455f441cc2582
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:9936185d37fdeb470d0208cc2c640543aa6f9fe9eb8e82bb8cf35b4eab865325
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (119037390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b0b59a01b9554e6c520d3f8c1c53bcb71522db8cb0c941bc27fdcf4613baa65`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:10:23 GMT
ENV LANG=C.UTF-8
# Fri, 01 Dec 2017 22:10:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 01 Dec 2017 22:11:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 01 Dec 2017 22:11:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 01 Dec 2017 22:11:21 GMT
ENV JAVA_VERSION=8u131
# Fri, 01 Dec 2017 22:11:21 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Fri, 01 Dec 2017 22:11:27 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 02 Dec 2017 00:23:30 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Sat, 02 Dec 2017 00:23:45 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Sat, 02 Dec 2017 00:23:46 GMT
ENV ORIENTDB_VERSION=2.2.30
# Sat, 02 Dec 2017 00:23:46 GMT
ENV ORIENTDB_DOWNLOAD_MD5=41757856ddbca87f368e812982041316
# Sat, 02 Dec 2017 00:23:46 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=7c014647fbf7521a2817a5427e29dae609e53954
# Sat, 02 Dec 2017 00:23:46 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.30/orientdb-community-2.2.30.tar.gz
# Sat, 02 Dec 2017 00:23:49 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Sat, 02 Dec 2017 00:23:52 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Sat, 02 Dec 2017 00:23:53 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 02 Dec 2017 00:23:53 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Sat, 02 Dec 2017 00:23:53 GMT
WORKDIR /orientdb
# Sat, 02 Dec 2017 00:23:54 GMT
EXPOSE 2424/tcp
# Sat, 02 Dec 2017 00:23:54 GMT
EXPOSE 2480/tcp
# Sat, 02 Dec 2017 00:23:54 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b3e089ad5bb56a471216d30899b22b6cc9887cb8a4f49e5ada714fd21a8c8e`  
		Last Modified: Fri, 01 Dec 2017 22:12:17 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4220f7d94f04402577aa397b232e4efb4d3a99550329c601b5fb98279d22a2d8`  
		Last Modified: Fri, 01 Dec 2017 22:13:39 GMT  
		Size: 70.1 MB (70053843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904c853784f93a7e49d23b99957380a1fe292a3225ea6bdf491af4a2c25c1aff`  
		Last Modified: Sat, 02 Dec 2017 00:25:22 GMT  
		Size: 663.1 KB (663109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34f9bed0273986ed159dfa895ea05ea72404c00b13b3d6f0ef0a209da5a1f7bb`  
		Last Modified: Sat, 02 Dec 2017 00:25:25 GMT  
		Size: 46.3 MB (46328700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
