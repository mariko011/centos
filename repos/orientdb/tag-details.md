<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `orientdb`

-	[`orientdb:2.0.18`](#orientdb2018)
-	[`orientdb:2.1.25`](#orientdb2125)
-	[`orientdb:2.2.22`](#orientdb2222)
-	[`orientdb:latest`](#orientdblatest)
-	[`orientdb:2.2.22-spatial`](#orientdb2222-spatial)
-	[`orientdb:3.0.0m1`](#orientdb300m1)
-	[`orientdb:3.0.0m1-spatial`](#orientdb300m1-spatial)

## `orientdb:2.0.18`

```console
$ docker pull orientdb@sha256:3118364677b653b3033f3ff06754d21141e588dcb510ee691680939460a8b6fc
```

-	Platforms:
	-	linux; amd64

### `orientdb:2.0.18` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.9 MB (281878552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a55e1fcbe86255f1b55c68af7b094250a4ba6c9c0d89c06c25514125c28d62cc`
-	Default Command: `["server.sh"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:24:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 16:52:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:25:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 12 Jun 2017 17:25:07 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:25:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:25:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:25:11 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 12 Jun 2017 17:25:11 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 17:25:12 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Mon, 12 Jun 2017 17:25:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Mon, 12 Jun 2017 17:25:53 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 12 Jun 2017 17:25:55 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 12 Jun 2017 17:29:33 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Mon, 12 Jun 2017 17:29:34 GMT
ENV ORIENTDB_VERSION=2.0.18
# Mon, 12 Jun 2017 17:29:34 GMT
ENV ORIENTDB_DOWNLOAD_MD5=9e7b7e7b6d95795b188adb4e5898a1b8
# Mon, 12 Jun 2017 17:29:35 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=f562794536bbf8ae2145f96153e58b1e5d9211b3
# Mon, 12 Jun 2017 17:29:40 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Mon, 12 Jun 2017 17:29:41 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Jun 2017 17:29:42 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Mon, 12 Jun 2017 17:29:43 GMT
WORKDIR /orientdb
# Mon, 12 Jun 2017 17:29:44 GMT
EXPOSE 2424/tcp
# Mon, 12 Jun 2017 17:29:45 GMT
EXPOSE 2480/tcp
# Mon, 12 Jun 2017 17:29:46 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f38f9d5c3c0e3e4eabe6d4dac4bcc729caf847c172d0af75caf581b6c23120c`  
		Last Modified: Wed, 07 Jun 2017 20:07:12 GMT  
		Size: 43.2 MB (43225567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cbb987bd399bf408a9d6454c5dfaed03e218ef890851ed956202c762e627212`  
		Last Modified: Tue, 13 Jun 2017 21:27:35 GMT  
		Size: 594.3 KB (594334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d084a7098441d179acda1ede474028edd334db0c07de42f9c15f0a837b4240`  
		Last Modified: Tue, 13 Jun 2017 21:27:34 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09373cf6f1c7695d0e811c571320127e3abc393dca77f81b87e4d94ddfe8ca6f`  
		Last Modified: Tue, 13 Jun 2017 21:27:32 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d486a02fa0f9d8708c9fa043ea1e9e7d54a48ac13790f3f65583c92072601f`  
		Last Modified: Tue, 13 Jun 2017 21:27:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e979ba42b15895685f5307fb1d4aff7f8f260ae7f6ed5efb086a45963baf6eb`  
		Last Modified: Tue, 13 Jun 2017 21:27:57 GMT  
		Size: 119.4 MB (119350683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594e48fef5be5b8804b6402f7261a3a51f6cff42410a340984bc4c86b6fef7a6`  
		Last Modified: Tue, 13 Jun 2017 21:27:32 GMT  
		Size: 289.6 KB (289630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3e0e638b277ed8be8cd8cc594efae08e8db7d7368f935da83270e700b930ff`  
		Last Modified: Wed, 14 Jun 2017 18:36:45 GMT  
		Size: 46.6 MB (46586560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.1.25`

```console
$ docker pull orientdb@sha256:80081d4e074f97f7747161a5f1b493ba3ca0e19d0df133b930cb0f28438056ee
```

-	Platforms:
	-	linux; amd64

### `orientdb:2.1.25` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.4 MB (103396000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b1ee74476ff7754a526906e80912e8d1961f46cc118f3ffd18bceb51e9cf659`
-	Default Command: `["server.sh"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Thu, 01 Jun 2017 16:58:46 GMT
ENV LANG=C.UTF-8
# Thu, 01 Jun 2017 16:58:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 01 Jun 2017 16:59:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 01 Jun 2017 16:59:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 01 Jun 2017 16:59:59 GMT
ENV JAVA_VERSION=8u131
# Sat, 17 Jun 2017 06:10:15 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 17 Jun 2017 06:10:24 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 19 Jun 2017 21:18:25 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Mon, 19 Jun 2017 21:18:26 GMT
ENV ORIENTDB_VERSION=2.1.25
# Mon, 19 Jun 2017 21:18:27 GMT
ENV ORIENTDB_DOWNLOAD_MD5=054da3fb7c56e7822b2af116966576ce
# Mon, 19 Jun 2017 21:18:28 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=b7b08242b40117ac8eb9a201f8704bde839dfcb8
# Mon, 19 Jun 2017 21:18:33 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Mon, 19 Jun 2017 21:18:39 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Mon, 19 Jun 2017 21:18:40 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 21:18:41 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Mon, 19 Jun 2017 21:18:43 GMT
WORKDIR /orientdb
# Mon, 19 Jun 2017 21:18:44 GMT
EXPOSE 2424/tcp
# Mon, 19 Jun 2017 21:18:45 GMT
EXPOSE 2480/tcp
# Mon, 19 Jun 2017 21:18:47 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bb7a1c6ee7ae261bc9a503b112a715153b44524eaf20763357e3c4b1b32983`  
		Last Modified: Thu, 01 Jun 2017 17:04:59 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc79c9f161a1155f09119c5d339345333c92b46bbf9b9f3621312dd4394aebc1`  
		Last Modified: Sat, 17 Jun 2017 06:24:47 GMT  
		Size: 70.1 MB (70050328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ec8212c822357b3a4917de54c2c8e54ceb3d95ec55864db950d7e3694a0fc1`  
		Last Modified: Mon, 19 Jun 2017 21:50:48 GMT  
		Size: 267.3 KB (267348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c0c91d325e189ccdc5cb965256498a611ba3dc2fc03b7fdbb485f7de18020d4`  
		Last Modified: Mon, 19 Jun 2017 21:50:50 GMT  
		Size: 31.1 MB (31087991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.22`

```console
$ docker pull orientdb@sha256:06fe16f9fce29eb9cbc0c11b3ad7af897af6289b40c200453f73327d77cc078a
```

-	Platforms:
	-	linux; amd64

### `orientdb:2.2.22` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.5 MB (115460663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5da77630a9bf224e021bf8cf0fd8b7c229db0e02d8cfed5e0118902d1c353ff0`
-	Default Command: `["server.sh"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Thu, 01 Jun 2017 16:58:46 GMT
ENV LANG=C.UTF-8
# Thu, 01 Jun 2017 16:58:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 01 Jun 2017 16:59:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 01 Jun 2017 16:59:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 01 Jun 2017 16:59:59 GMT
ENV JAVA_VERSION=8u131
# Sat, 17 Jun 2017 06:10:15 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 17 Jun 2017 06:10:24 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 19 Jun 2017 21:18:25 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Mon, 19 Jun 2017 21:19:17 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Mon, 19 Jun 2017 21:19:18 GMT
ENV ORIENTDB_VERSION=2.2.22
# Mon, 19 Jun 2017 21:19:19 GMT
ENV ORIENTDB_DOWNLOAD_MD5=e882a61a79d93a40fa1a38f8e8845a0f
# Mon, 19 Jun 2017 21:19:21 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=c9ef48dc96a01daf9a2841b9340d31b9567f7691
# Mon, 19 Jun 2017 21:19:23 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.22/orientdb-community-2.2.22.tar.gz
# Mon, 19 Jun 2017 21:19:29 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Mon, 19 Jun 2017 21:21:48 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Mon, 19 Jun 2017 21:21:49 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 21:21:51 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Mon, 19 Jun 2017 21:21:53 GMT
WORKDIR /orientdb
# Mon, 19 Jun 2017 21:21:54 GMT
EXPOSE 2424/tcp
# Mon, 19 Jun 2017 21:21:56 GMT
EXPOSE 2480/tcp
# Mon, 19 Jun 2017 21:21:57 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bb7a1c6ee7ae261bc9a503b112a715153b44524eaf20763357e3c4b1b32983`  
		Last Modified: Thu, 01 Jun 2017 17:04:59 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc79c9f161a1155f09119c5d339345333c92b46bbf9b9f3621312dd4394aebc1`  
		Last Modified: Sat, 17 Jun 2017 06:24:47 GMT  
		Size: 70.1 MB (70050328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab9bf17a1cf07ba18881b1dedb005be9325ae072ca8efb408f56c49dd745bca8`  
		Last Modified: Mon, 19 Jun 2017 21:51:34 GMT  
		Size: 646.6 KB (646643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c63bec94f3cc41af28fba750be8692be6d5a015e27a3088fb9cd963f02335c6`  
		Last Modified: Mon, 19 Jun 2017 21:51:40 GMT  
		Size: 42.8 MB (42773359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:latest`

```console
$ docker pull orientdb@sha256:06fe16f9fce29eb9cbc0c11b3ad7af897af6289b40c200453f73327d77cc078a
```

-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.5 MB (115460663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5da77630a9bf224e021bf8cf0fd8b7c229db0e02d8cfed5e0118902d1c353ff0`
-	Default Command: `["server.sh"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Thu, 01 Jun 2017 16:58:46 GMT
ENV LANG=C.UTF-8
# Thu, 01 Jun 2017 16:58:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 01 Jun 2017 16:59:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 01 Jun 2017 16:59:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 01 Jun 2017 16:59:59 GMT
ENV JAVA_VERSION=8u131
# Sat, 17 Jun 2017 06:10:15 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 17 Jun 2017 06:10:24 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 19 Jun 2017 21:18:25 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Mon, 19 Jun 2017 21:19:17 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Mon, 19 Jun 2017 21:19:18 GMT
ENV ORIENTDB_VERSION=2.2.22
# Mon, 19 Jun 2017 21:19:19 GMT
ENV ORIENTDB_DOWNLOAD_MD5=e882a61a79d93a40fa1a38f8e8845a0f
# Mon, 19 Jun 2017 21:19:21 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=c9ef48dc96a01daf9a2841b9340d31b9567f7691
# Mon, 19 Jun 2017 21:19:23 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.22/orientdb-community-2.2.22.tar.gz
# Mon, 19 Jun 2017 21:19:29 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Mon, 19 Jun 2017 21:21:48 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Mon, 19 Jun 2017 21:21:49 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 21:21:51 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Mon, 19 Jun 2017 21:21:53 GMT
WORKDIR /orientdb
# Mon, 19 Jun 2017 21:21:54 GMT
EXPOSE 2424/tcp
# Mon, 19 Jun 2017 21:21:56 GMT
EXPOSE 2480/tcp
# Mon, 19 Jun 2017 21:21:57 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bb7a1c6ee7ae261bc9a503b112a715153b44524eaf20763357e3c4b1b32983`  
		Last Modified: Thu, 01 Jun 2017 17:04:59 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc79c9f161a1155f09119c5d339345333c92b46bbf9b9f3621312dd4394aebc1`  
		Last Modified: Sat, 17 Jun 2017 06:24:47 GMT  
		Size: 70.1 MB (70050328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab9bf17a1cf07ba18881b1dedb005be9325ae072ca8efb408f56c49dd745bca8`  
		Last Modified: Mon, 19 Jun 2017 21:51:34 GMT  
		Size: 646.6 KB (646643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c63bec94f3cc41af28fba750be8692be6d5a015e27a3088fb9cd963f02335c6`  
		Last Modified: Mon, 19 Jun 2017 21:51:40 GMT  
		Size: 42.8 MB (42773359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.22-spatial`

```console
$ docker pull orientdb@sha256:66d087c86e38888741e2b1ee4c70d74697d2b4cd12a2599236ad8826c109a535
```

-	Platforms:
	-	linux; amd64

### `orientdb:2.2.22-spatial` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.7 MB (116662936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c7a655e1108cea55217a16a105d842c5d49414f362cffdf9004f95d7ceae609`
-	Default Command: `["server.sh"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Thu, 01 Jun 2017 16:58:46 GMT
ENV LANG=C.UTF-8
# Thu, 01 Jun 2017 16:58:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 01 Jun 2017 16:59:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 01 Jun 2017 16:59:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 01 Jun 2017 16:59:59 GMT
ENV JAVA_VERSION=8u131
# Sat, 17 Jun 2017 06:10:15 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 17 Jun 2017 06:10:24 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 19 Jun 2017 21:18:25 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Mon, 19 Jun 2017 21:19:17 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Mon, 19 Jun 2017 21:19:18 GMT
ENV ORIENTDB_VERSION=2.2.22
# Mon, 19 Jun 2017 21:19:19 GMT
ENV ORIENTDB_DOWNLOAD_MD5=e882a61a79d93a40fa1a38f8e8845a0f
# Mon, 19 Jun 2017 21:19:21 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=c9ef48dc96a01daf9a2841b9340d31b9567f7691
# Mon, 19 Jun 2017 21:19:23 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.22/orientdb-community-2.2.22.tar.gz
# Mon, 19 Jun 2017 21:19:29 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Mon, 19 Jun 2017 21:21:48 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Mon, 19 Jun 2017 21:21:49 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 21:21:51 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Mon, 19 Jun 2017 21:21:53 GMT
WORKDIR /orientdb
# Mon, 19 Jun 2017 21:21:54 GMT
EXPOSE 2424/tcp
# Mon, 19 Jun 2017 21:21:56 GMT
EXPOSE 2480/tcp
# Mon, 19 Jun 2017 21:21:57 GMT
CMD ["server.sh"]
# Mon, 19 Jun 2017 21:22:34 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_MD5=ff846d1b89893ef66912a8b58dd148a5
# Mon, 19 Jun 2017 21:22:35 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_SHA1=123c8f6e00f08767f7938c8244aa97f14db9f35d
# Mon, 19 Jun 2017 21:22:37 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-spatial/2.2.22/orientdb-spatial-2.2.22-dist.jar
# Mon, 19 Jun 2017 21:22:40 GMT
RUN wget $ORIENTDB_DOWNLOAD_SPATIAL_URL     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_MD5 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | md5sum -c -     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_SHA1 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | sha1sum -c -     && mv orientdb-spatial-*-dist.jar /orientdb/lib/
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bb7a1c6ee7ae261bc9a503b112a715153b44524eaf20763357e3c4b1b32983`  
		Last Modified: Thu, 01 Jun 2017 17:04:59 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc79c9f161a1155f09119c5d339345333c92b46bbf9b9f3621312dd4394aebc1`  
		Last Modified: Sat, 17 Jun 2017 06:24:47 GMT  
		Size: 70.1 MB (70050328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab9bf17a1cf07ba18881b1dedb005be9325ae072ca8efb408f56c49dd745bca8`  
		Last Modified: Mon, 19 Jun 2017 21:51:34 GMT  
		Size: 646.6 KB (646643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c63bec94f3cc41af28fba750be8692be6d5a015e27a3088fb9cd963f02335c6`  
		Last Modified: Mon, 19 Jun 2017 21:51:40 GMT  
		Size: 42.8 MB (42773359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e25b8e4bd58e17af7d27c573ec0aee8db0b3f0befe6017e4ddf1a7019804a5d`  
		Last Modified: Mon, 19 Jun 2017 21:53:06 GMT  
		Size: 1.2 MB (1202273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.0m1`

```console
$ docker pull orientdb@sha256:63aa4c83c80007bfb35bd980efd5a1838c568d693a0236955441719ed859eedd
```

-	Platforms:
	-	linux; amd64

### `orientdb:3.0.0m1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.9 MB (122881249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81ad969f8a93b9552e508ca8bd8d609dca67c95d861aab5dddb7d924599e500d`
-	Default Command: `["server.sh"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Thu, 01 Jun 2017 16:58:46 GMT
ENV LANG=C.UTF-8
# Thu, 01 Jun 2017 16:58:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 01 Jun 2017 16:59:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 01 Jun 2017 16:59:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 01 Jun 2017 16:59:59 GMT
ENV JAVA_VERSION=8u131
# Sat, 17 Jun 2017 06:10:15 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 17 Jun 2017 06:10:24 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 19 Jun 2017 21:18:25 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Mon, 19 Jun 2017 21:19:17 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Mon, 19 Jun 2017 21:45:21 GMT
ENV ORIENTDB_VERSION=3.0.0m1
# Mon, 19 Jun 2017 21:45:22 GMT
ENV ORIENTDB_DOWNLOAD_MD5=e667351657f17fe4fb6d2f3b5a1bc9ad
# Mon, 19 Jun 2017 21:45:22 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=f621e0887a274b5f1277937f9925615a0e68edb1
# Mon, 19 Jun 2017 21:46:02 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community-tp3/3.0.0m1/orientdb-community-tp3-3.0.0m1.tar.gz
# Mon, 19 Jun 2017 21:46:08 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Mon, 19 Jun 2017 21:46:34 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-tp3-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-tp3-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-tp3-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-tp3-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Mon, 19 Jun 2017 21:47:17 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 21:47:18 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Mon, 19 Jun 2017 21:47:20 GMT
WORKDIR /orientdb
# Mon, 19 Jun 2017 21:47:21 GMT
EXPOSE 2424/tcp
# Mon, 19 Jun 2017 21:47:22 GMT
EXPOSE 2480/tcp
# Mon, 19 Jun 2017 21:47:23 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bb7a1c6ee7ae261bc9a503b112a715153b44524eaf20763357e3c4b1b32983`  
		Last Modified: Thu, 01 Jun 2017 17:04:59 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc79c9f161a1155f09119c5d339345333c92b46bbf9b9f3621312dd4394aebc1`  
		Last Modified: Sat, 17 Jun 2017 06:24:47 GMT  
		Size: 70.1 MB (70050328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44cf29172b87368fa3f764269b220bf931625724096e6c84d42549296b336229`  
		Last Modified: Mon, 19 Jun 2017 21:53:52 GMT  
		Size: 646.6 KB (646643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc1fb6774c17babd775fac03c251cbf1f212098bc15528c298ce73076b4bfab`  
		Last Modified: Mon, 19 Jun 2017 21:53:57 GMT  
		Size: 50.2 MB (50193945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.0m1-spatial`

```console
$ docker pull orientdb@sha256:c2e328bebeeac27a1f80dd0e7a8668b798330d5816508b300c0e0b77b7bae6fa
```

-	Platforms:
	-	linux; amd64

### `orientdb:3.0.0m1-spatial` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.6 MB (125623378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88d8c136d2706e3a643e2b9aed016c90937747b95a6c182a81dd59098c8e693f`
-	Default Command: `["server.sh"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Thu, 01 Jun 2017 16:58:46 GMT
ENV LANG=C.UTF-8
# Thu, 01 Jun 2017 16:58:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 01 Jun 2017 16:59:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 01 Jun 2017 16:59:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 01 Jun 2017 16:59:59 GMT
ENV JAVA_VERSION=8u131
# Sat, 17 Jun 2017 06:10:15 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 17 Jun 2017 06:10:24 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 19 Jun 2017 21:18:25 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Mon, 19 Jun 2017 21:19:17 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Mon, 19 Jun 2017 21:45:21 GMT
ENV ORIENTDB_VERSION=3.0.0m1
# Mon, 19 Jun 2017 21:48:11 GMT
ENV ORIENTDB_DOWNLOAD_MD5=ced149e809b02301b926f73ea4cf9c50
# Mon, 19 Jun 2017 21:48:12 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=d7f61d1435380e31338a96d87cfa59fdb5f0c579
# Mon, 19 Jun 2017 21:48:13 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community-spatial/3.0.0m1/orientdb-community-spatial-3.0.0m1.tar.gz
# Mon, 19 Jun 2017 21:48:17 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Mon, 19 Jun 2017 21:48:44 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Mon, 19 Jun 2017 21:49:05 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 21:49:06 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Mon, 19 Jun 2017 21:49:08 GMT
WORKDIR /orientdb
# Mon, 19 Jun 2017 21:49:31 GMT
EXPOSE 2424/tcp
# Mon, 19 Jun 2017 21:49:33 GMT
EXPOSE 2480/tcp
# Mon, 19 Jun 2017 21:49:34 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bb7a1c6ee7ae261bc9a503b112a715153b44524eaf20763357e3c4b1b32983`  
		Last Modified: Thu, 01 Jun 2017 17:04:59 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc79c9f161a1155f09119c5d339345333c92b46bbf9b9f3621312dd4394aebc1`  
		Last Modified: Sat, 17 Jun 2017 06:24:47 GMT  
		Size: 70.1 MB (70050328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f60d5c47a319b99419d6dbea64b01dcbd55b271b260d993b62e6a07676a363`  
		Last Modified: Mon, 19 Jun 2017 21:54:38 GMT  
		Size: 646.6 KB (646641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e647892921e94e615663450c0b5c330202fdd5cdcaef7e040600259841767c56`  
		Last Modified: Mon, 19 Jun 2017 21:54:44 GMT  
		Size: 52.9 MB (52936076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
