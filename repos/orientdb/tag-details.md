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
$ docker pull orientdb@sha256:292266db9db9329636b6da39a16990d48391a4f218ef91b17323a6080f263e78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.1.25` - linux; amd64

```console
$ docker pull orientdb@sha256:5ec06e357ba4ff68dc7f1781a492e518bc0380abcd331e94411e46eb8d6560a0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.4 MB (103401732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:825cf61d6dc751d2a3ff324fa3ccfaedb75e503642bef5ba295b54f96088cda8`
-	Default Command: `["server.sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:25:21 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 01:25:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 01:28:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 26 Oct 2017 01:28:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 01:28:49 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 01:28:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 01:28:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 05:14:20 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Thu, 26 Oct 2017 05:14:20 GMT
ENV ORIENTDB_VERSION=2.1.25
# Thu, 26 Oct 2017 05:14:20 GMT
ENV ORIENTDB_DOWNLOAD_MD5=054da3fb7c56e7822b2af116966576ce
# Thu, 26 Oct 2017 05:14:20 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=b7b08242b40117ac8eb9a201f8704bde839dfcb8
# Thu, 26 Oct 2017 05:14:24 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Thu, 26 Oct 2017 05:14:28 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 26 Oct 2017 05:14:28 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 05:14:28 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 26 Oct 2017 05:14:28 GMT
WORKDIR /orientdb
# Thu, 26 Oct 2017 05:14:29 GMT
EXPOSE 2424/tcp
# Thu, 26 Oct 2017 05:14:29 GMT
EXPOSE 2480/tcp
# Thu, 26 Oct 2017 05:14:30 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2296e775ba08de9d41d94164ff4d14bea2c4ad0074b0e395bc6ee35ff0534a5f`  
		Last Modified: Thu, 26 Oct 2017 01:29:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e753bb2ec6763bd6c1b08b811ddca7327ded09593b37abd28e72898742f3f6b`  
		Last Modified: Thu, 26 Oct 2017 01:31:29 GMT  
		Size: 70.1 MB (70053816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d236ee7e7c5322d0e5c484e92f02eeb3a761c128c29b075c5fbb0ada231749b3`  
		Last Modified: Thu, 26 Oct 2017 05:16:21 GMT  
		Size: 268.3 KB (268284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82afacb3e47381b675c4ed4cbe78ea7fc64d823ae449f417487245873c1128d4`  
		Last Modified: Thu, 26 Oct 2017 05:16:24 GMT  
		Size: 31.1 MB (31087960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.29`

```console
$ docker pull orientdb@sha256:4b1dad92d445352677f71888b46fea2ffa53329db51c1e7b995ac178c615fb8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.29` - linux; amd64

```console
$ docker pull orientdb@sha256:b65554cc63f310628f6fffc695fa1fcb0e083e567a8aaea6c338841d4cd7aa47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116974323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:646428878590dd8fa76a7187a02575458a2f3e719f5f5969743c674ea639ea1d`
-	Default Command: `["server.sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:25:21 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 01:25:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 01:28:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 26 Oct 2017 01:28:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 01:28:49 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 01:28:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 01:28:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 05:14:20 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Thu, 26 Oct 2017 05:14:45 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Thu, 26 Oct 2017 05:14:45 GMT
ENV ORIENTDB_VERSION=2.2.29
# Thu, 26 Oct 2017 05:14:45 GMT
ENV ORIENTDB_DOWNLOAD_MD5=f20dc9a571e3b361bf115f1a5b9b82cb
# Thu, 26 Oct 2017 05:14:46 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=051f68bdc70642744def2c85d7136673a6bf24c1
# Thu, 26 Oct 2017 05:14:46 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.29/orientdb-community-2.2.29.tar.gz
# Thu, 26 Oct 2017 05:14:49 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Thu, 26 Oct 2017 05:14:53 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 26 Oct 2017 05:14:53 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 05:14:53 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 26 Oct 2017 05:14:54 GMT
WORKDIR /orientdb
# Thu, 26 Oct 2017 05:14:54 GMT
EXPOSE 2424/tcp
# Thu, 26 Oct 2017 05:14:54 GMT
EXPOSE 2480/tcp
# Thu, 26 Oct 2017 05:14:55 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2296e775ba08de9d41d94164ff4d14bea2c4ad0074b0e395bc6ee35ff0534a5f`  
		Last Modified: Thu, 26 Oct 2017 01:29:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e753bb2ec6763bd6c1b08b811ddca7327ded09593b37abd28e72898742f3f6b`  
		Last Modified: Thu, 26 Oct 2017 01:31:29 GMT  
		Size: 70.1 MB (70053816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abe360f924466c54190b33903ede51140b9ab1fbd460b69b20bc6d61f51c987`  
		Last Modified: Thu, 26 Oct 2017 05:16:37 GMT  
		Size: 663.1 KB (663104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd433f1d282ca6ced1a8c185842c4b732eb638359055bae79b8bc7eb5101353`  
		Last Modified: Thu, 26 Oct 2017 05:16:40 GMT  
		Size: 44.3 MB (44265731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.29-spatial`

```console
$ docker pull orientdb@sha256:c34769a076b262a959f8dc0115764cf1f56fc6b37dc3e4eb80e663791a3cc69a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.29-spatial` - linux; amd64

```console
$ docker pull orientdb@sha256:390e0ed3720f939d6038de46994d862406f4cf4175afbbbf126b6abe08ed74b1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.2 MB (118176719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12308d1cb41f40cd9cce82dc102ba0ef691b443f471eac56f479d3d1e380ff3e`
-	Default Command: `["server.sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:25:21 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 01:25:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 01:28:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 26 Oct 2017 01:28:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 01:28:49 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 01:28:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 01:28:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 05:14:20 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Thu, 26 Oct 2017 05:14:45 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Thu, 26 Oct 2017 05:14:45 GMT
ENV ORIENTDB_VERSION=2.2.29
# Thu, 26 Oct 2017 05:14:45 GMT
ENV ORIENTDB_DOWNLOAD_MD5=f20dc9a571e3b361bf115f1a5b9b82cb
# Thu, 26 Oct 2017 05:14:46 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=051f68bdc70642744def2c85d7136673a6bf24c1
# Thu, 26 Oct 2017 05:14:46 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.29/orientdb-community-2.2.29.tar.gz
# Thu, 26 Oct 2017 05:14:49 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Thu, 26 Oct 2017 05:14:53 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 26 Oct 2017 05:14:53 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 05:14:53 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 26 Oct 2017 05:14:54 GMT
WORKDIR /orientdb
# Thu, 26 Oct 2017 05:14:54 GMT
EXPOSE 2424/tcp
# Thu, 26 Oct 2017 05:14:54 GMT
EXPOSE 2480/tcp
# Thu, 26 Oct 2017 05:14:55 GMT
CMD ["server.sh"]
# Thu, 26 Oct 2017 05:15:10 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_MD5=09b0b730c208fc28aced078dadb19ebd
# Thu, 26 Oct 2017 05:15:10 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_SHA1=78ef59069f26c5cf3d96f3c35e24bb7cdbf115ec
# Thu, 26 Oct 2017 05:15:11 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-spatial/2.2.29/orientdb-spatial-2.2.29-dist.jar
# Thu, 26 Oct 2017 05:15:12 GMT
RUN wget $ORIENTDB_DOWNLOAD_SPATIAL_URL     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_MD5 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | md5sum -c -     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_SHA1 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | sha1sum -c -     && mv orientdb-spatial-*-dist.jar /orientdb/lib/
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2296e775ba08de9d41d94164ff4d14bea2c4ad0074b0e395bc6ee35ff0534a5f`  
		Last Modified: Thu, 26 Oct 2017 01:29:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e753bb2ec6763bd6c1b08b811ddca7327ded09593b37abd28e72898742f3f6b`  
		Last Modified: Thu, 26 Oct 2017 01:31:29 GMT  
		Size: 70.1 MB (70053816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abe360f924466c54190b33903ede51140b9ab1fbd460b69b20bc6d61f51c987`  
		Last Modified: Thu, 26 Oct 2017 05:16:37 GMT  
		Size: 663.1 KB (663104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd433f1d282ca6ced1a8c185842c4b732eb638359055bae79b8bc7eb5101353`  
		Last Modified: Thu, 26 Oct 2017 05:16:40 GMT  
		Size: 44.3 MB (44265731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3408593f98e3c5a098eb0a70b0e73702a110c537e7f28cc87cc807c4ee86067`  
		Last Modified: Thu, 26 Oct 2017 05:17:06 GMT  
		Size: 1.2 MB (1202396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.0m2`

```console
$ docker pull orientdb@sha256:12c349ce46ed2613c080a4dabcb8e3f702aadc23c70ec0adedc4695d5943094f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.0m2` - linux; amd64

```console
$ docker pull orientdb@sha256:33970d9c4e87374becda9bcebb28abf51c6137c5d5f66fdf4f461737a3e3bbe9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.9 MB (124863743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b227c2d558d55c3acc072c4c7b5f0bd252961a07de40053bd66937e31e471632`
-	Default Command: `["server.sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:25:21 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 01:25:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 01:28:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 26 Oct 2017 01:28:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 01:28:49 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 01:28:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 01:28:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 05:14:20 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Thu, 26 Oct 2017 05:14:45 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Thu, 26 Oct 2017 05:15:20 GMT
ENV ORIENTDB_VERSION=3.0.0m2
# Thu, 26 Oct 2017 05:15:20 GMT
ENV ORIENTDB_DOWNLOAD_MD5=4d17543d4308b73b9692281444bbfe69
# Thu, 26 Oct 2017 05:15:20 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=4520d18b19f366937a9158c2753c36bae4133905
# Thu, 26 Oct 2017 05:15:20 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community-gremlin/3.0.0m2/orientdb-community-gremlin-3.0.0m2.tar.gz
# Thu, 26 Oct 2017 05:15:25 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Thu, 26 Oct 2017 05:15:31 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-gremlin-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-gremlin-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-gremlin-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-gremlin-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 26 Oct 2017 05:15:34 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 05:15:34 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 26 Oct 2017 05:15:34 GMT
WORKDIR /orientdb
# Thu, 26 Oct 2017 05:15:35 GMT
EXPOSE 2424/tcp
# Thu, 26 Oct 2017 05:15:35 GMT
EXPOSE 2480/tcp
# Thu, 26 Oct 2017 05:15:36 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2296e775ba08de9d41d94164ff4d14bea2c4ad0074b0e395bc6ee35ff0534a5f`  
		Last Modified: Thu, 26 Oct 2017 01:29:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e753bb2ec6763bd6c1b08b811ddca7327ded09593b37abd28e72898742f3f6b`  
		Last Modified: Thu, 26 Oct 2017 01:31:29 GMT  
		Size: 70.1 MB (70053816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ef96ff2f61e26f11fa7fbe2225e31ee353d385369cdd5443c5173faf973eff`  
		Last Modified: Thu, 26 Oct 2017 05:17:19 GMT  
		Size: 663.1 KB (663103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fccb23a80331bc64a04c1e229a6d404e166103d23b5c7e73672bd53f84ad28d8`  
		Last Modified: Thu, 26 Oct 2017 05:17:23 GMT  
		Size: 52.2 MB (52155152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.0m2-spatial`

```console
$ docker pull orientdb@sha256:018970236183edbc7bcfda2ac0e3e66edfc9ae0635879fa4fcd43761e6fb7811
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.0m2-spatial` - linux; amd64

```console
$ docker pull orientdb@sha256:c84d40308bd2e4a89cf91d897bec10115182b24bed841a2633352d7b53dfd46c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.8 MB (127823542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c042388d4d0f9720386affd641babf184f27d76579a520f4e3ccd15dd48264cf`
-	Default Command: `["server.sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:25:21 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 01:25:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 01:28:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 26 Oct 2017 01:28:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 01:28:49 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 01:28:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 01:28:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 05:14:20 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Thu, 26 Oct 2017 05:14:45 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Thu, 26 Oct 2017 05:15:20 GMT
ENV ORIENTDB_VERSION=3.0.0m2
# Thu, 26 Oct 2017 05:15:46 GMT
ENV ORIENTDB_DOWNLOAD_MD5=6d5546b1aa88a7a78cccc51bc61ae086
# Thu, 26 Oct 2017 05:15:46 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=339ec7e96aed62b0280a4a66579a82a5ae144db5
# Thu, 26 Oct 2017 05:15:46 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community-spatial/3.0.0m2/orientdb-community-spatial-3.0.0m2.tar.gz
# Thu, 26 Oct 2017 05:15:50 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Thu, 26 Oct 2017 05:16:03 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-spatial-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 26 Oct 2017 05:16:03 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 05:16:04 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 26 Oct 2017 05:16:04 GMT
WORKDIR /orientdb
# Thu, 26 Oct 2017 05:16:04 GMT
EXPOSE 2424/tcp
# Thu, 26 Oct 2017 05:16:05 GMT
EXPOSE 2480/tcp
# Thu, 26 Oct 2017 05:16:05 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2296e775ba08de9d41d94164ff4d14bea2c4ad0074b0e395bc6ee35ff0534a5f`  
		Last Modified: Thu, 26 Oct 2017 01:29:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e753bb2ec6763bd6c1b08b811ddca7327ded09593b37abd28e72898742f3f6b`  
		Last Modified: Thu, 26 Oct 2017 01:31:29 GMT  
		Size: 70.1 MB (70053816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b77ce651a0c259b3dc7e5d7645f7c1addace2b53694db0045d31e7ac563d26`  
		Last Modified: Thu, 26 Oct 2017 05:17:38 GMT  
		Size: 663.1 KB (663105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92bd5f6d5fae049a848facb62c8428344738d57058a48be3b9da576ac72c927`  
		Last Modified: Thu, 26 Oct 2017 05:17:41 GMT  
		Size: 55.1 MB (55114949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:latest`

```console
$ docker pull orientdb@sha256:4b1dad92d445352677f71888b46fea2ffa53329db51c1e7b995ac178c615fb8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:b65554cc63f310628f6fffc695fa1fcb0e083e567a8aaea6c338841d4cd7aa47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116974323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:646428878590dd8fa76a7187a02575458a2f3e719f5f5969743c674ea639ea1d`
-	Default Command: `["server.sh"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 01:25:21 GMT
ENV LANG=C.UTF-8
# Thu, 26 Oct 2017 01:25:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 26 Oct 2017 01:28:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 26 Oct 2017 01:28:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 01:28:49 GMT
ENV JAVA_VERSION=8u131
# Thu, 26 Oct 2017 01:28:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 26 Oct 2017 01:28:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 26 Oct 2017 05:14:20 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Thu, 26 Oct 2017 05:14:45 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Thu, 26 Oct 2017 05:14:45 GMT
ENV ORIENTDB_VERSION=2.2.29
# Thu, 26 Oct 2017 05:14:45 GMT
ENV ORIENTDB_DOWNLOAD_MD5=f20dc9a571e3b361bf115f1a5b9b82cb
# Thu, 26 Oct 2017 05:14:46 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=051f68bdc70642744def2c85d7136673a6bf24c1
# Thu, 26 Oct 2017 05:14:46 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.29/orientdb-community-2.2.29.tar.gz
# Thu, 26 Oct 2017 05:14:49 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Thu, 26 Oct 2017 05:14:53 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 26 Oct 2017 05:14:53 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 26 Oct 2017 05:14:53 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 26 Oct 2017 05:14:54 GMT
WORKDIR /orientdb
# Thu, 26 Oct 2017 05:14:54 GMT
EXPOSE 2424/tcp
# Thu, 26 Oct 2017 05:14:54 GMT
EXPOSE 2480/tcp
# Thu, 26 Oct 2017 05:14:55 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2296e775ba08de9d41d94164ff4d14bea2c4ad0074b0e395bc6ee35ff0534a5f`  
		Last Modified: Thu, 26 Oct 2017 01:29:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e753bb2ec6763bd6c1b08b811ddca7327ded09593b37abd28e72898742f3f6b`  
		Last Modified: Thu, 26 Oct 2017 01:31:29 GMT  
		Size: 70.1 MB (70053816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abe360f924466c54190b33903ede51140b9ab1fbd460b69b20bc6d61f51c987`  
		Last Modified: Thu, 26 Oct 2017 05:16:37 GMT  
		Size: 663.1 KB (663104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd433f1d282ca6ced1a8c185842c4b732eb638359055bae79b8bc7eb5101353`  
		Last Modified: Thu, 26 Oct 2017 05:16:40 GMT  
		Size: 44.3 MB (44265731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
