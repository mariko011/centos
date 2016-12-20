<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `logstash`

-	[`logstash:5.1.1`](#logstash511)
-	[`logstash:5.1`](#logstash51)
-	[`logstash:5`](#logstash5)
-	[`logstash:latest`](#logstashlatest)
-	[`logstash:5.1.1-alpine`](#logstash511-alpine)
-	[`logstash:5.1-alpine`](#logstash51-alpine)
-	[`logstash:5-alpine`](#logstash5-alpine)
-	[`logstash:alpine`](#logstashalpine)
-	[`logstash:2.4.1`](#logstash241)
-	[`logstash:2.4`](#logstash24)
-	[`logstash:2`](#logstash2)
-	[`logstash:2.4.1-alpine`](#logstash241-alpine)
-	[`logstash:2.4-alpine`](#logstash24-alpine)
-	[`logstash:2-alpine`](#logstash2-alpine)
-	[`logstash:1.5.6`](#logstash156)
-	[`logstash:1.5`](#logstash15)
-	[`logstash:1`](#logstash1)
-	[`logstash:1.5.6-alpine`](#logstash156-alpine)
-	[`logstash:1.5-alpine`](#logstash15-alpine)
-	[`logstash:1-alpine`](#logstash1-alpine)

## `logstash:5.1.1`

```console
$ docker pull logstash@sha256:6d5c5f5437236b364a2a02193ef443b8b6437f7f98a17e8385856db98445340a
```

-	Platforms:
	-	linux; amd64

### `logstash:5.1.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.3 MB (221310042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a77dd2de440fbec1f00ac7c452ea79218ebeff038f29cb2678d8679a04dbc2a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:55:02 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:55:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 19 Dec 2016 16:48:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 16:48:31 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Mon, 19 Dec 2016 16:48:31 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Dec 2016 16:48:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 19 Dec 2016 16:48:36 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Mon, 19 Dec 2016 16:49:18 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/logstash.list
# Mon, 19 Dec 2016 16:49:18 GMT
ENV LOGSTASH_VERSION=5.1.1
# Mon, 19 Dec 2016 16:49:18 GMT
ENV LOGSTASH_DEB_VERSION=1:5.1.1-1
# Mon, 19 Dec 2016 16:49:39 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 16:49:39 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Dec 2016 16:49:39 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Mon, 19 Dec 2016 16:49:40 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Mon, 19 Dec 2016 16:49:41 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Mon, 19 Dec 2016 16:49:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 19 Dec 2016 16:49:41 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc1696ecd26a5941dda9fb149af093b44010744b855d220fc44264a5a0f15`  
		Last Modified: Wed, 14 Dec 2016 03:09:15 GMT  
		Size: 567.0 KB (566962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34836fffacad04a2dbcda9aeb95227d7b6c9474e76befa878667d9cac93c5e1b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4f57ee64ee701a626649566d2cb26d8fe7f02b9d9aed797b19c1a2cca3077b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975b9daf71f592b2408562d1dd1cc8593b6a97a1399c2b9b4a2e453090cf8884`  
		Last Modified: Wed, 14 Dec 2016 03:17:46 GMT  
		Size: 53.5 MB (53450833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6cde91351aecc55b685935d3a6c3f2a189dfe3850627ef8dcbe8caac6e2207`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 284.2 KB (284199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef545687723118e550359578ae70e8e14b4e64431c060583768265d110d39094`  
		Last Modified: Mon, 19 Dec 2016 23:45:08 GMT  
		Size: 1.4 MB (1357381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8585479cd95a00dfda7308c7ce135beeadceddf91b602397dd8a582fc3e7f41`  
		Last Modified: Mon, 19 Dec 2016 23:45:05 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7643edd7eb529bca4084dce4df46c68c77cedfa0667f23ae53fd7aef120b1c23`  
		Last Modified: Mon, 19 Dec 2016 23:45:07 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb79095170ea623980af6d92083fc6a5018850334357bac3a9fcc6e362d0d3e`  
		Last Modified: Mon, 19 Dec 2016 23:45:04 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b6b591189e179def3dbee80f4b61cd2028b1d50462f6f3953d2bdc3411dc53`  
		Last Modified: Mon, 19 Dec 2016 23:47:29 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03a563d1d1a3209cf8a6067b56adf6498ea77ed567ae90b4eb7b1aae47996114`  
		Last Modified: Mon, 19 Dec 2016 23:47:52 GMT  
		Size: 94.9 MB (94944751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1c318f4527f9c886e076ec5ad3d3ba9fa443d07f8531c82b0e278ab268f6aa7`  
		Last Modified: Mon, 19 Dec 2016 23:47:28 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02ca4dff2cadd68c625624a0db54f8c62fb44d96a40bf986cc785ed098f81a19`  
		Last Modified: Mon, 19 Dec 2016 23:47:28 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.1`

```console
$ docker pull logstash@sha256:6d5c5f5437236b364a2a02193ef443b8b6437f7f98a17e8385856db98445340a
```

-	Platforms:
	-	linux; amd64

### `logstash:5.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.3 MB (221310042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a77dd2de440fbec1f00ac7c452ea79218ebeff038f29cb2678d8679a04dbc2a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:55:02 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:55:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 19 Dec 2016 16:48:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 16:48:31 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Mon, 19 Dec 2016 16:48:31 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Dec 2016 16:48:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 19 Dec 2016 16:48:36 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Mon, 19 Dec 2016 16:49:18 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/logstash.list
# Mon, 19 Dec 2016 16:49:18 GMT
ENV LOGSTASH_VERSION=5.1.1
# Mon, 19 Dec 2016 16:49:18 GMT
ENV LOGSTASH_DEB_VERSION=1:5.1.1-1
# Mon, 19 Dec 2016 16:49:39 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 16:49:39 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Dec 2016 16:49:39 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Mon, 19 Dec 2016 16:49:40 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Mon, 19 Dec 2016 16:49:41 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Mon, 19 Dec 2016 16:49:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 19 Dec 2016 16:49:41 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc1696ecd26a5941dda9fb149af093b44010744b855d220fc44264a5a0f15`  
		Last Modified: Wed, 14 Dec 2016 03:09:15 GMT  
		Size: 567.0 KB (566962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34836fffacad04a2dbcda9aeb95227d7b6c9474e76befa878667d9cac93c5e1b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4f57ee64ee701a626649566d2cb26d8fe7f02b9d9aed797b19c1a2cca3077b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975b9daf71f592b2408562d1dd1cc8593b6a97a1399c2b9b4a2e453090cf8884`  
		Last Modified: Wed, 14 Dec 2016 03:17:46 GMT  
		Size: 53.5 MB (53450833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6cde91351aecc55b685935d3a6c3f2a189dfe3850627ef8dcbe8caac6e2207`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 284.2 KB (284199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef545687723118e550359578ae70e8e14b4e64431c060583768265d110d39094`  
		Last Modified: Mon, 19 Dec 2016 23:45:08 GMT  
		Size: 1.4 MB (1357381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8585479cd95a00dfda7308c7ce135beeadceddf91b602397dd8a582fc3e7f41`  
		Last Modified: Mon, 19 Dec 2016 23:45:05 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7643edd7eb529bca4084dce4df46c68c77cedfa0667f23ae53fd7aef120b1c23`  
		Last Modified: Mon, 19 Dec 2016 23:45:07 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb79095170ea623980af6d92083fc6a5018850334357bac3a9fcc6e362d0d3e`  
		Last Modified: Mon, 19 Dec 2016 23:45:04 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b6b591189e179def3dbee80f4b61cd2028b1d50462f6f3953d2bdc3411dc53`  
		Last Modified: Mon, 19 Dec 2016 23:47:29 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03a563d1d1a3209cf8a6067b56adf6498ea77ed567ae90b4eb7b1aae47996114`  
		Last Modified: Mon, 19 Dec 2016 23:47:52 GMT  
		Size: 94.9 MB (94944751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1c318f4527f9c886e076ec5ad3d3ba9fa443d07f8531c82b0e278ab268f6aa7`  
		Last Modified: Mon, 19 Dec 2016 23:47:28 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02ca4dff2cadd68c625624a0db54f8c62fb44d96a40bf986cc785ed098f81a19`  
		Last Modified: Mon, 19 Dec 2016 23:47:28 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5`

```console
$ docker pull logstash@sha256:6abdea7d0685cc1f1ada76265f243036f1e90c91112b819ceefc095e5e6b7445
```

-	Platforms:
	-	linux; amd64

### `logstash:5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.3 MB (221301572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ec18fcb5f14c91954bbd7b9e3b4c97370ca3fd770e1fa74f379f877989468da`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:52:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:53:53 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 08 Nov 2016 18:53:53 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 18:53:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 08 Nov 2016 18:53:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 08 Nov 2016 18:53:55 GMT
ENV JAVA_VERSION=8u111
# Tue, 08 Nov 2016 18:53:55 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 08 Nov 2016 18:53:56 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 08 Nov 2016 18:54:18 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 08 Nov 2016 18:54:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 08 Nov 2016 22:14:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 22:15:00 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 08 Nov 2016 22:15:00 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 22:15:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 08 Nov 2016 22:15:06 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 08 Nov 2016 22:25:06 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/logstash.list
# Fri, 09 Dec 2016 17:49:08 GMT
ENV LOGSTASH_VERSION=5.1.1
# Fri, 09 Dec 2016 17:49:08 GMT
ENV LOGSTASH_DEB_VERSION=1:5.1.1-1
# Fri, 09 Dec 2016 17:49:34 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 09 Dec 2016 17:49:35 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Dec 2016 17:49:35 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Fri, 09 Dec 2016 17:49:36 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Fri, 09 Dec 2016 17:49:37 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Fri, 09 Dec 2016 17:49:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Dec 2016 17:49:38 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e2e387eb26a1afa07fb24ab119e8680fc80f43a194890da1d1bb21f76e23c5e`  
		Last Modified: Tue, 08 Nov 2016 19:04:01 GMT  
		Size: 566.9 KB (566896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef540699244c02b2a8e14c3b4f335314506cb4b12e15c867535cb20ac429a37`  
		Last Modified: Tue, 08 Nov 2016 19:11:43 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1624a2f8d1142bb2aed22223df10c5416ff37b599ff48c724d23347d37b2b20e`  
		Last Modified: Tue, 08 Nov 2016 19:11:45 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7018f4ec6e0ab2d452cd6ac9600b8cfa25bcd10c603db8ad9107677e9f8fe15e`  
		Last Modified: Tue, 08 Nov 2016 19:12:03 GMT  
		Size: 53.5 MB (53450336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca3bc2ad3b37551550f7c86d23f4e25066740db6d2f99c3ba99c0f9e0a4d3ec`  
		Last Modified: Tue, 08 Nov 2016 19:11:44 GMT  
		Size: 284.2 KB (284177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3829939e70526b1cb9ed1308aba8b1e3cfe0a28f594a8e1fed143bad35d10c4c`  
		Last Modified: Tue, 08 Nov 2016 22:15:46 GMT  
		Size: 1.4 MB (1357160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf20bb3ce62d736e74a65883ccd4dbb035d8329767b3fcf0ec255a2fa6ac4ef`  
		Last Modified: Tue, 08 Nov 2016 22:15:45 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f737f281552e31d566f3dbe3dc54b8392cbcf7ba4b932561b141883629ed7b01`  
		Last Modified: Tue, 08 Nov 2016 22:15:46 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b7aca72edd236c5ccf364c8026eed4ccd4e700047ad5977072174bb921cb63`  
		Last Modified: Tue, 08 Nov 2016 22:15:42 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb821ca73c542874d7e6baa4551bc881c9c8b51f5099aad9c16914ccd6453794`  
		Last Modified: Tue, 08 Nov 2016 22:25:54 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be90372974a3210917ed84c339cecaf7176d287c800cc5f260731e804427ea5`  
		Last Modified: Fri, 09 Dec 2016 17:52:17 GMT  
		Size: 94.9 MB (94944733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce7e77c6cffff4e66136098a7df6cf5beb1a41754b25795768ed3cce5cca773`  
		Last Modified: Fri, 09 Dec 2016 17:52:01 GMT  
		Size: 2.2 KB (2244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42d62f31b9867ef1a7e4a6cf931801e3e06e714644bb70c8a993ab3a83b88f3`  
		Last Modified: Fri, 09 Dec 2016 17:52:00 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:latest`

```console
$ docker pull logstash@sha256:6d5c5f5437236b364a2a02193ef443b8b6437f7f98a17e8385856db98445340a
```

-	Platforms:
	-	linux; amd64

### `logstash:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.3 MB (221310042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a77dd2de440fbec1f00ac7c452ea79218ebeff038f29cb2678d8679a04dbc2a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:55:02 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:55:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 19 Dec 2016 16:48:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 16:48:31 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Mon, 19 Dec 2016 16:48:31 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Dec 2016 16:48:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 19 Dec 2016 16:48:36 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Mon, 19 Dec 2016 16:49:18 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/logstash.list
# Mon, 19 Dec 2016 16:49:18 GMT
ENV LOGSTASH_VERSION=5.1.1
# Mon, 19 Dec 2016 16:49:18 GMT
ENV LOGSTASH_DEB_VERSION=1:5.1.1-1
# Mon, 19 Dec 2016 16:49:39 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 16:49:39 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Dec 2016 16:49:39 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Mon, 19 Dec 2016 16:49:40 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Mon, 19 Dec 2016 16:49:41 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Mon, 19 Dec 2016 16:49:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 19 Dec 2016 16:49:41 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc1696ecd26a5941dda9fb149af093b44010744b855d220fc44264a5a0f15`  
		Last Modified: Wed, 14 Dec 2016 03:09:15 GMT  
		Size: 567.0 KB (566962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34836fffacad04a2dbcda9aeb95227d7b6c9474e76befa878667d9cac93c5e1b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4f57ee64ee701a626649566d2cb26d8fe7f02b9d9aed797b19c1a2cca3077b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975b9daf71f592b2408562d1dd1cc8593b6a97a1399c2b9b4a2e453090cf8884`  
		Last Modified: Wed, 14 Dec 2016 03:17:46 GMT  
		Size: 53.5 MB (53450833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6cde91351aecc55b685935d3a6c3f2a189dfe3850627ef8dcbe8caac6e2207`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 284.2 KB (284199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef545687723118e550359578ae70e8e14b4e64431c060583768265d110d39094`  
		Last Modified: Mon, 19 Dec 2016 23:45:08 GMT  
		Size: 1.4 MB (1357381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8585479cd95a00dfda7308c7ce135beeadceddf91b602397dd8a582fc3e7f41`  
		Last Modified: Mon, 19 Dec 2016 23:45:05 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7643edd7eb529bca4084dce4df46c68c77cedfa0667f23ae53fd7aef120b1c23`  
		Last Modified: Mon, 19 Dec 2016 23:45:07 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb79095170ea623980af6d92083fc6a5018850334357bac3a9fcc6e362d0d3e`  
		Last Modified: Mon, 19 Dec 2016 23:45:04 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b6b591189e179def3dbee80f4b61cd2028b1d50462f6f3953d2bdc3411dc53`  
		Last Modified: Mon, 19 Dec 2016 23:47:29 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03a563d1d1a3209cf8a6067b56adf6498ea77ed567ae90b4eb7b1aae47996114`  
		Last Modified: Mon, 19 Dec 2016 23:47:52 GMT  
		Size: 94.9 MB (94944751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1c318f4527f9c886e076ec5ad3d3ba9fa443d07f8531c82b0e278ab268f6aa7`  
		Last Modified: Mon, 19 Dec 2016 23:47:28 GMT  
		Size: 2.2 KB (2247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02ca4dff2cadd68c625624a0db54f8c62fb44d96a40bf986cc785ed098f81a19`  
		Last Modified: Mon, 19 Dec 2016 23:47:28 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.1.1-alpine`

```console
$ docker pull logstash@sha256:f4ac7c4fdff8c2680d83a0bcbe2e3d4bf9eaae562188a9acf94a0c061bc919cd
```

-	Platforms:
	-	linux; amd64

### `logstash:5.1.1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.7 MB (138699325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27e486aa1a606b02ef554e74a131d1b829e41b9a9ac3e45000286f7b8df04d81`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 18 Oct 2016 20:40:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 17 Nov 2016 21:47:51 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:52 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 09 Dec 2016 17:49:40 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Fri, 09 Dec 2016 17:49:43 GMT
RUN apk add --no-cache 		bash 		libzmq
# Fri, 09 Dec 2016 17:49:45 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 09 Dec 2016 17:49:46 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 09 Dec 2016 17:49:46 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Fri, 09 Dec 2016 17:49:46 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 09 Dec 2016 17:49:47 GMT
ENV LOGSTASH_VERSION=5.1.1
# Fri, 09 Dec 2016 17:49:47 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.1.1.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.1.1.tar.gz.asc LOGSTASH_TARBALL_SHA1=5c88fdd5752d01a4076ee215bd2bb6e46de0d001
# Fri, 09 Dec 2016 17:50:07 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -r "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Fri, 09 Dec 2016 17:50:08 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Fri, 09 Dec 2016 17:50:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Dec 2016 17:50:09 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:857cbad9cd9a8609720fe041554046e94f0813b64887c3c06eac0c2cfb2be741`  
		Last Modified: Thu, 17 Nov 2016 22:03:51 GMT  
		Size: 39.7 MB (39670171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa0e4621f6b8de424c61f8d932962a83b1296f6bcd0e94ac0d51371e68cd09c`  
		Last Modified: Fri, 09 Dec 2016 17:53:26 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916a60334b610753f0771fb8fb4511089cc820941ddea964f63f95ce279bdadd`  
		Last Modified: Fri, 09 Dec 2016 17:53:28 GMT  
		Size: 1.8 MB (1801874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741faf38ae81728eb659416fe9e931f6b63e41053ddaf05c5829b2cc0c7839fc`  
		Last Modified: Fri, 09 Dec 2016 17:53:27 GMT  
		Size: 87.8 KB (87822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518690f31b03bb1d1ea06474e017b533a7f78cf41d3d21093f02cfbf3530d89f`  
		Last Modified: Fri, 09 Dec 2016 17:53:47 GMT  
		Size: 94.8 MB (94824691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f48d6b3563c890790c7326d1c934ae2d2dc69f22e6417076db563c5b601432ee`  
		Last Modified: Fri, 09 Dec 2016 17:53:26 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.1-alpine`

```console
$ docker pull logstash@sha256:f4ac7c4fdff8c2680d83a0bcbe2e3d4bf9eaae562188a9acf94a0c061bc919cd
```

-	Platforms:
	-	linux; amd64

### `logstash:5.1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.7 MB (138699325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27e486aa1a606b02ef554e74a131d1b829e41b9a9ac3e45000286f7b8df04d81`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 18 Oct 2016 20:40:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 17 Nov 2016 21:47:51 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:52 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 09 Dec 2016 17:49:40 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Fri, 09 Dec 2016 17:49:43 GMT
RUN apk add --no-cache 		bash 		libzmq
# Fri, 09 Dec 2016 17:49:45 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 09 Dec 2016 17:49:46 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 09 Dec 2016 17:49:46 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Fri, 09 Dec 2016 17:49:46 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 09 Dec 2016 17:49:47 GMT
ENV LOGSTASH_VERSION=5.1.1
# Fri, 09 Dec 2016 17:49:47 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.1.1.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.1.1.tar.gz.asc LOGSTASH_TARBALL_SHA1=5c88fdd5752d01a4076ee215bd2bb6e46de0d001
# Fri, 09 Dec 2016 17:50:07 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -r "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Fri, 09 Dec 2016 17:50:08 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Fri, 09 Dec 2016 17:50:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Dec 2016 17:50:09 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:857cbad9cd9a8609720fe041554046e94f0813b64887c3c06eac0c2cfb2be741`  
		Last Modified: Thu, 17 Nov 2016 22:03:51 GMT  
		Size: 39.7 MB (39670171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa0e4621f6b8de424c61f8d932962a83b1296f6bcd0e94ac0d51371e68cd09c`  
		Last Modified: Fri, 09 Dec 2016 17:53:26 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916a60334b610753f0771fb8fb4511089cc820941ddea964f63f95ce279bdadd`  
		Last Modified: Fri, 09 Dec 2016 17:53:28 GMT  
		Size: 1.8 MB (1801874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741faf38ae81728eb659416fe9e931f6b63e41053ddaf05c5829b2cc0c7839fc`  
		Last Modified: Fri, 09 Dec 2016 17:53:27 GMT  
		Size: 87.8 KB (87822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518690f31b03bb1d1ea06474e017b533a7f78cf41d3d21093f02cfbf3530d89f`  
		Last Modified: Fri, 09 Dec 2016 17:53:47 GMT  
		Size: 94.8 MB (94824691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f48d6b3563c890790c7326d1c934ae2d2dc69f22e6417076db563c5b601432ee`  
		Last Modified: Fri, 09 Dec 2016 17:53:26 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5-alpine`

```console
$ docker pull logstash@sha256:f4ac7c4fdff8c2680d83a0bcbe2e3d4bf9eaae562188a9acf94a0c061bc919cd
```

-	Platforms:
	-	linux; amd64

### `logstash:5-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.7 MB (138699325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27e486aa1a606b02ef554e74a131d1b829e41b9a9ac3e45000286f7b8df04d81`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 18 Oct 2016 20:40:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 17 Nov 2016 21:47:51 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:52 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 09 Dec 2016 17:49:40 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Fri, 09 Dec 2016 17:49:43 GMT
RUN apk add --no-cache 		bash 		libzmq
# Fri, 09 Dec 2016 17:49:45 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 09 Dec 2016 17:49:46 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 09 Dec 2016 17:49:46 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Fri, 09 Dec 2016 17:49:46 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 09 Dec 2016 17:49:47 GMT
ENV LOGSTASH_VERSION=5.1.1
# Fri, 09 Dec 2016 17:49:47 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.1.1.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.1.1.tar.gz.asc LOGSTASH_TARBALL_SHA1=5c88fdd5752d01a4076ee215bd2bb6e46de0d001
# Fri, 09 Dec 2016 17:50:07 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -r "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Fri, 09 Dec 2016 17:50:08 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Fri, 09 Dec 2016 17:50:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Dec 2016 17:50:09 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:857cbad9cd9a8609720fe041554046e94f0813b64887c3c06eac0c2cfb2be741`  
		Last Modified: Thu, 17 Nov 2016 22:03:51 GMT  
		Size: 39.7 MB (39670171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa0e4621f6b8de424c61f8d932962a83b1296f6bcd0e94ac0d51371e68cd09c`  
		Last Modified: Fri, 09 Dec 2016 17:53:26 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916a60334b610753f0771fb8fb4511089cc820941ddea964f63f95ce279bdadd`  
		Last Modified: Fri, 09 Dec 2016 17:53:28 GMT  
		Size: 1.8 MB (1801874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741faf38ae81728eb659416fe9e931f6b63e41053ddaf05c5829b2cc0c7839fc`  
		Last Modified: Fri, 09 Dec 2016 17:53:27 GMT  
		Size: 87.8 KB (87822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518690f31b03bb1d1ea06474e017b533a7f78cf41d3d21093f02cfbf3530d89f`  
		Last Modified: Fri, 09 Dec 2016 17:53:47 GMT  
		Size: 94.8 MB (94824691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f48d6b3563c890790c7326d1c934ae2d2dc69f22e6417076db563c5b601432ee`  
		Last Modified: Fri, 09 Dec 2016 17:53:26 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:alpine`

```console
$ docker pull logstash@sha256:f4ac7c4fdff8c2680d83a0bcbe2e3d4bf9eaae562188a9acf94a0c061bc919cd
```

-	Platforms:
	-	linux; amd64

### `logstash:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.7 MB (138699325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27e486aa1a606b02ef554e74a131d1b829e41b9a9ac3e45000286f7b8df04d81`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 18 Oct 2016 20:40:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 17 Nov 2016 21:47:51 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:52 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 09 Dec 2016 17:49:40 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Fri, 09 Dec 2016 17:49:43 GMT
RUN apk add --no-cache 		bash 		libzmq
# Fri, 09 Dec 2016 17:49:45 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 09 Dec 2016 17:49:46 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 09 Dec 2016 17:49:46 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Fri, 09 Dec 2016 17:49:46 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 09 Dec 2016 17:49:47 GMT
ENV LOGSTASH_VERSION=5.1.1
# Fri, 09 Dec 2016 17:49:47 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.1.1.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.1.1.tar.gz.asc LOGSTASH_TARBALL_SHA1=5c88fdd5752d01a4076ee215bd2bb6e46de0d001
# Fri, 09 Dec 2016 17:50:07 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -r "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Fri, 09 Dec 2016 17:50:08 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Fri, 09 Dec 2016 17:50:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Dec 2016 17:50:09 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:857cbad9cd9a8609720fe041554046e94f0813b64887c3c06eac0c2cfb2be741`  
		Last Modified: Thu, 17 Nov 2016 22:03:51 GMT  
		Size: 39.7 MB (39670171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa0e4621f6b8de424c61f8d932962a83b1296f6bcd0e94ac0d51371e68cd09c`  
		Last Modified: Fri, 09 Dec 2016 17:53:26 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916a60334b610753f0771fb8fb4511089cc820941ddea964f63f95ce279bdadd`  
		Last Modified: Fri, 09 Dec 2016 17:53:28 GMT  
		Size: 1.8 MB (1801874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741faf38ae81728eb659416fe9e931f6b63e41053ddaf05c5829b2cc0c7839fc`  
		Last Modified: Fri, 09 Dec 2016 17:53:27 GMT  
		Size: 87.8 KB (87822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518690f31b03bb1d1ea06474e017b533a7f78cf41d3d21093f02cfbf3530d89f`  
		Last Modified: Fri, 09 Dec 2016 17:53:47 GMT  
		Size: 94.8 MB (94824691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f48d6b3563c890790c7326d1c934ae2d2dc69f22e6417076db563c5b601432ee`  
		Last Modified: Fri, 09 Dec 2016 17:53:26 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.4.1`

```console
$ docker pull logstash@sha256:7c0fcbf9cf6dd8b46a78ad65cc7a3ac18f860a385e6929ba8cc6dac1939b43f6
```

-	Platforms:
	-	linux; amd64

### `logstash:2.4.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.3 MB (211286508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bb8f2a2750ba912b940f9c670c94036bf2dd43ad4012107632beb4239b3cb55`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:55:02 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:55:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 19 Dec 2016 16:48:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 16:48:31 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Mon, 19 Dec 2016 16:48:31 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Dec 2016 16:48:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 19 Dec 2016 16:48:36 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Mon, 19 Dec 2016 16:48:57 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.4/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Mon, 19 Dec 2016 16:48:57 GMT
ENV LOGSTASH_VERSION=2.4.1
# Mon, 19 Dec 2016 16:48:58 GMT
ENV LOGSTASH_DEB_VERSION=1:2.4.1-1
# Mon, 19 Dec 2016 16:49:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 16:49:15 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Dec 2016 16:49:15 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Mon, 19 Dec 2016 16:49:16 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Mon, 19 Dec 2016 16:49:16 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Mon, 19 Dec 2016 16:49:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 19 Dec 2016 16:49:17 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc1696ecd26a5941dda9fb149af093b44010744b855d220fc44264a5a0f15`  
		Last Modified: Wed, 14 Dec 2016 03:09:15 GMT  
		Size: 567.0 KB (566962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34836fffacad04a2dbcda9aeb95227d7b6c9474e76befa878667d9cac93c5e1b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4f57ee64ee701a626649566d2cb26d8fe7f02b9d9aed797b19c1a2cca3077b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975b9daf71f592b2408562d1dd1cc8593b6a97a1399c2b9b4a2e453090cf8884`  
		Last Modified: Wed, 14 Dec 2016 03:17:46 GMT  
		Size: 53.5 MB (53450833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6cde91351aecc55b685935d3a6c3f2a189dfe3850627ef8dcbe8caac6e2207`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 284.2 KB (284199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef545687723118e550359578ae70e8e14b4e64431c060583768265d110d39094`  
		Last Modified: Mon, 19 Dec 2016 23:45:08 GMT  
		Size: 1.4 MB (1357381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8585479cd95a00dfda7308c7ce135beeadceddf91b602397dd8a582fc3e7f41`  
		Last Modified: Mon, 19 Dec 2016 23:45:05 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7643edd7eb529bca4084dce4df46c68c77cedfa0667f23ae53fd7aef120b1c23`  
		Last Modified: Mon, 19 Dec 2016 23:45:07 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb79095170ea623980af6d92083fc6a5018850334357bac3a9fcc6e362d0d3e`  
		Last Modified: Mon, 19 Dec 2016 23:45:04 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69bd0a5c6ff68c0cf0ffb1ac554a29e579405778a30e1f7d272f2fa4389ec0dd`  
		Last Modified: Mon, 19 Dec 2016 23:46:17 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1472d56f318e4467ab4d1ccbc15d04eabf0c6b26edddf788150bd0e7c6de919f`  
		Last Modified: Mon, 19 Dec 2016 23:46:35 GMT  
		Size: 84.9 MB (84923466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398ada7e43268a78254b4bfbf332de58fda1d240fff846c89d36857e3d0aa5ff`  
		Last Modified: Mon, 19 Dec 2016 23:46:17 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.4`

```console
$ docker pull logstash@sha256:7c0fcbf9cf6dd8b46a78ad65cc7a3ac18f860a385e6929ba8cc6dac1939b43f6
```

-	Platforms:
	-	linux; amd64

### `logstash:2.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.3 MB (211286508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bb8f2a2750ba912b940f9c670c94036bf2dd43ad4012107632beb4239b3cb55`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:55:02 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:55:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 19 Dec 2016 16:48:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 16:48:31 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Mon, 19 Dec 2016 16:48:31 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Dec 2016 16:48:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 19 Dec 2016 16:48:36 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Mon, 19 Dec 2016 16:48:57 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.4/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Mon, 19 Dec 2016 16:48:57 GMT
ENV LOGSTASH_VERSION=2.4.1
# Mon, 19 Dec 2016 16:48:58 GMT
ENV LOGSTASH_DEB_VERSION=1:2.4.1-1
# Mon, 19 Dec 2016 16:49:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 16:49:15 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Dec 2016 16:49:15 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Mon, 19 Dec 2016 16:49:16 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Mon, 19 Dec 2016 16:49:16 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Mon, 19 Dec 2016 16:49:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 19 Dec 2016 16:49:17 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc1696ecd26a5941dda9fb149af093b44010744b855d220fc44264a5a0f15`  
		Last Modified: Wed, 14 Dec 2016 03:09:15 GMT  
		Size: 567.0 KB (566962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34836fffacad04a2dbcda9aeb95227d7b6c9474e76befa878667d9cac93c5e1b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4f57ee64ee701a626649566d2cb26d8fe7f02b9d9aed797b19c1a2cca3077b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975b9daf71f592b2408562d1dd1cc8593b6a97a1399c2b9b4a2e453090cf8884`  
		Last Modified: Wed, 14 Dec 2016 03:17:46 GMT  
		Size: 53.5 MB (53450833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6cde91351aecc55b685935d3a6c3f2a189dfe3850627ef8dcbe8caac6e2207`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 284.2 KB (284199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef545687723118e550359578ae70e8e14b4e64431c060583768265d110d39094`  
		Last Modified: Mon, 19 Dec 2016 23:45:08 GMT  
		Size: 1.4 MB (1357381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8585479cd95a00dfda7308c7ce135beeadceddf91b602397dd8a582fc3e7f41`  
		Last Modified: Mon, 19 Dec 2016 23:45:05 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7643edd7eb529bca4084dce4df46c68c77cedfa0667f23ae53fd7aef120b1c23`  
		Last Modified: Mon, 19 Dec 2016 23:45:07 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb79095170ea623980af6d92083fc6a5018850334357bac3a9fcc6e362d0d3e`  
		Last Modified: Mon, 19 Dec 2016 23:45:04 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69bd0a5c6ff68c0cf0ffb1ac554a29e579405778a30e1f7d272f2fa4389ec0dd`  
		Last Modified: Mon, 19 Dec 2016 23:46:17 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1472d56f318e4467ab4d1ccbc15d04eabf0c6b26edddf788150bd0e7c6de919f`  
		Last Modified: Mon, 19 Dec 2016 23:46:35 GMT  
		Size: 84.9 MB (84923466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398ada7e43268a78254b4bfbf332de58fda1d240fff846c89d36857e3d0aa5ff`  
		Last Modified: Mon, 19 Dec 2016 23:46:17 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2`

```console
$ docker pull logstash@sha256:7c0fcbf9cf6dd8b46a78ad65cc7a3ac18f860a385e6929ba8cc6dac1939b43f6
```

-	Platforms:
	-	linux; amd64

### `logstash:2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.3 MB (211286508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bb8f2a2750ba912b940f9c670c94036bf2dd43ad4012107632beb4239b3cb55`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:55:02 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:55:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 19 Dec 2016 16:48:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 16:48:31 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Mon, 19 Dec 2016 16:48:31 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Dec 2016 16:48:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 19 Dec 2016 16:48:36 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Mon, 19 Dec 2016 16:48:57 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.4/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Mon, 19 Dec 2016 16:48:57 GMT
ENV LOGSTASH_VERSION=2.4.1
# Mon, 19 Dec 2016 16:48:58 GMT
ENV LOGSTASH_DEB_VERSION=1:2.4.1-1
# Mon, 19 Dec 2016 16:49:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 16:49:15 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Dec 2016 16:49:15 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Mon, 19 Dec 2016 16:49:16 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Mon, 19 Dec 2016 16:49:16 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Mon, 19 Dec 2016 16:49:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 19 Dec 2016 16:49:17 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc1696ecd26a5941dda9fb149af093b44010744b855d220fc44264a5a0f15`  
		Last Modified: Wed, 14 Dec 2016 03:09:15 GMT  
		Size: 567.0 KB (566962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34836fffacad04a2dbcda9aeb95227d7b6c9474e76befa878667d9cac93c5e1b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4f57ee64ee701a626649566d2cb26d8fe7f02b9d9aed797b19c1a2cca3077b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975b9daf71f592b2408562d1dd1cc8593b6a97a1399c2b9b4a2e453090cf8884`  
		Last Modified: Wed, 14 Dec 2016 03:17:46 GMT  
		Size: 53.5 MB (53450833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6cde91351aecc55b685935d3a6c3f2a189dfe3850627ef8dcbe8caac6e2207`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 284.2 KB (284199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef545687723118e550359578ae70e8e14b4e64431c060583768265d110d39094`  
		Last Modified: Mon, 19 Dec 2016 23:45:08 GMT  
		Size: 1.4 MB (1357381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8585479cd95a00dfda7308c7ce135beeadceddf91b602397dd8a582fc3e7f41`  
		Last Modified: Mon, 19 Dec 2016 23:45:05 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7643edd7eb529bca4084dce4df46c68c77cedfa0667f23ae53fd7aef120b1c23`  
		Last Modified: Mon, 19 Dec 2016 23:45:07 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb79095170ea623980af6d92083fc6a5018850334357bac3a9fcc6e362d0d3e`  
		Last Modified: Mon, 19 Dec 2016 23:45:04 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69bd0a5c6ff68c0cf0ffb1ac554a29e579405778a30e1f7d272f2fa4389ec0dd`  
		Last Modified: Mon, 19 Dec 2016 23:46:17 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1472d56f318e4467ab4d1ccbc15d04eabf0c6b26edddf788150bd0e7c6de919f`  
		Last Modified: Mon, 19 Dec 2016 23:46:35 GMT  
		Size: 84.9 MB (84923466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398ada7e43268a78254b4bfbf332de58fda1d240fff846c89d36857e3d0aa5ff`  
		Last Modified: Mon, 19 Dec 2016 23:46:17 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.4.1-alpine`

```console
$ docker pull logstash@sha256:27c86baaf3f55fcbdf16244b4af8c081dd8dd7d70a160fc0ab825a1e89c12348
```

-	Platforms:
	-	linux; amd64

### `logstash:2.4.1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.4 MB (128441876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6da060a3601bf3e8e6a0d585f2d7158bc69c4badbe97ab8bfe3b54da160d3297`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 18 Oct 2016 20:40:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 17 Nov 2016 21:47:51 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:52 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 09 Dec 2016 17:49:40 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Fri, 09 Dec 2016 17:49:43 GMT
RUN apk add --no-cache 		bash 		libzmq
# Fri, 09 Dec 2016 17:49:45 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 09 Dec 2016 17:49:46 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 09 Dec 2016 17:50:34 GMT
ENV LOGSTASH_PATH=/opt/logstash/bin
# Fri, 09 Dec 2016 17:50:34 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 09 Dec 2016 17:50:34 GMT
ENV LOGSTASH_VERSION=2.4.1
# Fri, 09 Dec 2016 17:50:35 GMT
ENV LOGSTASH_TARBALL=https://download.elastic.co/logstash/logstash/logstash-2.4.1.tar.gz LOGSTASH_TARBALL_ASC= LOGSTASH_TARBALL_SHA1=5ee4f3fa0ad4b182b3f00b4181a20c4e31a907b4
# Fri, 09 Dec 2016 17:50:59 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -r "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Fri, 09 Dec 2016 17:51:00 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Fri, 09 Dec 2016 17:51:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Dec 2016 17:51:01 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:857cbad9cd9a8609720fe041554046e94f0813b64887c3c06eac0c2cfb2be741`  
		Last Modified: Thu, 17 Nov 2016 22:03:51 GMT  
		Size: 39.7 MB (39670171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa0e4621f6b8de424c61f8d932962a83b1296f6bcd0e94ac0d51371e68cd09c`  
		Last Modified: Fri, 09 Dec 2016 17:53:26 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916a60334b610753f0771fb8fb4511089cc820941ddea964f63f95ce279bdadd`  
		Last Modified: Fri, 09 Dec 2016 17:53:28 GMT  
		Size: 1.8 MB (1801874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741faf38ae81728eb659416fe9e931f6b63e41053ddaf05c5829b2cc0c7839fc`  
		Last Modified: Fri, 09 Dec 2016 17:53:27 GMT  
		Size: 87.8 KB (87822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26b284a92e2e5dbc0f6a1d84e212965f4dd6ec87f00c41adef3f37dddad3c865`  
		Last Modified: Fri, 09 Dec 2016 17:57:33 GMT  
		Size: 84.6 MB (84567242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b71f4afe69c08ab996a0b9d404a884123dbe536d8c488da07b62d7f303f303`  
		Last Modified: Fri, 09 Dec 2016 17:57:00 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.4-alpine`

```console
$ docker pull logstash@sha256:27c86baaf3f55fcbdf16244b4af8c081dd8dd7d70a160fc0ab825a1e89c12348
```

-	Platforms:
	-	linux; amd64

### `logstash:2.4-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.4 MB (128441876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6da060a3601bf3e8e6a0d585f2d7158bc69c4badbe97ab8bfe3b54da160d3297`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 18 Oct 2016 20:40:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 17 Nov 2016 21:47:51 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:52 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 09 Dec 2016 17:49:40 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Fri, 09 Dec 2016 17:49:43 GMT
RUN apk add --no-cache 		bash 		libzmq
# Fri, 09 Dec 2016 17:49:45 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 09 Dec 2016 17:49:46 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 09 Dec 2016 17:50:34 GMT
ENV LOGSTASH_PATH=/opt/logstash/bin
# Fri, 09 Dec 2016 17:50:34 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 09 Dec 2016 17:50:34 GMT
ENV LOGSTASH_VERSION=2.4.1
# Fri, 09 Dec 2016 17:50:35 GMT
ENV LOGSTASH_TARBALL=https://download.elastic.co/logstash/logstash/logstash-2.4.1.tar.gz LOGSTASH_TARBALL_ASC= LOGSTASH_TARBALL_SHA1=5ee4f3fa0ad4b182b3f00b4181a20c4e31a907b4
# Fri, 09 Dec 2016 17:50:59 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -r "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Fri, 09 Dec 2016 17:51:00 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Fri, 09 Dec 2016 17:51:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Dec 2016 17:51:01 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:857cbad9cd9a8609720fe041554046e94f0813b64887c3c06eac0c2cfb2be741`  
		Last Modified: Thu, 17 Nov 2016 22:03:51 GMT  
		Size: 39.7 MB (39670171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa0e4621f6b8de424c61f8d932962a83b1296f6bcd0e94ac0d51371e68cd09c`  
		Last Modified: Fri, 09 Dec 2016 17:53:26 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916a60334b610753f0771fb8fb4511089cc820941ddea964f63f95ce279bdadd`  
		Last Modified: Fri, 09 Dec 2016 17:53:28 GMT  
		Size: 1.8 MB (1801874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741faf38ae81728eb659416fe9e931f6b63e41053ddaf05c5829b2cc0c7839fc`  
		Last Modified: Fri, 09 Dec 2016 17:53:27 GMT  
		Size: 87.8 KB (87822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26b284a92e2e5dbc0f6a1d84e212965f4dd6ec87f00c41adef3f37dddad3c865`  
		Last Modified: Fri, 09 Dec 2016 17:57:33 GMT  
		Size: 84.6 MB (84567242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b71f4afe69c08ab996a0b9d404a884123dbe536d8c488da07b62d7f303f303`  
		Last Modified: Fri, 09 Dec 2016 17:57:00 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2-alpine`

```console
$ docker pull logstash@sha256:27c86baaf3f55fcbdf16244b4af8c081dd8dd7d70a160fc0ab825a1e89c12348
```

-	Platforms:
	-	linux; amd64

### `logstash:2-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.4 MB (128441876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6da060a3601bf3e8e6a0d585f2d7158bc69c4badbe97ab8bfe3b54da160d3297`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 18 Oct 2016 20:40:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 17 Nov 2016 21:47:51 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:52 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 09 Dec 2016 17:49:40 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Fri, 09 Dec 2016 17:49:43 GMT
RUN apk add --no-cache 		bash 		libzmq
# Fri, 09 Dec 2016 17:49:45 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 09 Dec 2016 17:49:46 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 09 Dec 2016 17:50:34 GMT
ENV LOGSTASH_PATH=/opt/logstash/bin
# Fri, 09 Dec 2016 17:50:34 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 09 Dec 2016 17:50:34 GMT
ENV LOGSTASH_VERSION=2.4.1
# Fri, 09 Dec 2016 17:50:35 GMT
ENV LOGSTASH_TARBALL=https://download.elastic.co/logstash/logstash/logstash-2.4.1.tar.gz LOGSTASH_TARBALL_ASC= LOGSTASH_TARBALL_SHA1=5ee4f3fa0ad4b182b3f00b4181a20c4e31a907b4
# Fri, 09 Dec 2016 17:50:59 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -r "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Fri, 09 Dec 2016 17:51:00 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Fri, 09 Dec 2016 17:51:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Dec 2016 17:51:01 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:857cbad9cd9a8609720fe041554046e94f0813b64887c3c06eac0c2cfb2be741`  
		Last Modified: Thu, 17 Nov 2016 22:03:51 GMT  
		Size: 39.7 MB (39670171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa0e4621f6b8de424c61f8d932962a83b1296f6bcd0e94ac0d51371e68cd09c`  
		Last Modified: Fri, 09 Dec 2016 17:53:26 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916a60334b610753f0771fb8fb4511089cc820941ddea964f63f95ce279bdadd`  
		Last Modified: Fri, 09 Dec 2016 17:53:28 GMT  
		Size: 1.8 MB (1801874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741faf38ae81728eb659416fe9e931f6b63e41053ddaf05c5829b2cc0c7839fc`  
		Last Modified: Fri, 09 Dec 2016 17:53:27 GMT  
		Size: 87.8 KB (87822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26b284a92e2e5dbc0f6a1d84e212965f4dd6ec87f00c41adef3f37dddad3c865`  
		Last Modified: Fri, 09 Dec 2016 17:57:33 GMT  
		Size: 84.6 MB (84567242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b71f4afe69c08ab996a0b9d404a884123dbe536d8c488da07b62d7f303f303`  
		Last Modified: Fri, 09 Dec 2016 17:57:00 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:1.5.6`

```console
$ docker pull logstash@sha256:d9df14df2a80f60102e635493c19e7783bdda500cb1ed7ae9bbc9b68cf3f3a08
```

-	Platforms:
	-	linux; amd64

### `logstash:1.5.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.1 MB (217117197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18a0c5685631537449de02757220db739f1979dde7ee908594195b5a67150296`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:55:02 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:55:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 19 Dec 2016 16:48:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 16:48:31 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Mon, 19 Dec 2016 16:48:31 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Dec 2016 16:48:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 19 Dec 2016 16:48:36 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Mon, 19 Dec 2016 16:48:37 GMT
RUN echo 'deb http://packages.elastic.co/logstash/1.5/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Mon, 19 Dec 2016 16:48:37 GMT
ENV LOGSTASH_VERSION=1.5.6
# Mon, 19 Dec 2016 16:48:38 GMT
ENV LOGSTASH_DEB_VERSION=1:1.5.6-1
# Mon, 19 Dec 2016 16:48:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 16:48:54 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Dec 2016 16:48:54 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Mon, 19 Dec 2016 16:48:55 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Mon, 19 Dec 2016 16:48:55 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Mon, 19 Dec 2016 16:48:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 19 Dec 2016 16:48:56 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc1696ecd26a5941dda9fb149af093b44010744b855d220fc44264a5a0f15`  
		Last Modified: Wed, 14 Dec 2016 03:09:15 GMT  
		Size: 567.0 KB (566962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34836fffacad04a2dbcda9aeb95227d7b6c9474e76befa878667d9cac93c5e1b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4f57ee64ee701a626649566d2cb26d8fe7f02b9d9aed797b19c1a2cca3077b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975b9daf71f592b2408562d1dd1cc8593b6a97a1399c2b9b4a2e453090cf8884`  
		Last Modified: Wed, 14 Dec 2016 03:17:46 GMT  
		Size: 53.5 MB (53450833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6cde91351aecc55b685935d3a6c3f2a189dfe3850627ef8dcbe8caac6e2207`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 284.2 KB (284199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef545687723118e550359578ae70e8e14b4e64431c060583768265d110d39094`  
		Last Modified: Mon, 19 Dec 2016 23:45:08 GMT  
		Size: 1.4 MB (1357381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8585479cd95a00dfda7308c7ce135beeadceddf91b602397dd8a582fc3e7f41`  
		Last Modified: Mon, 19 Dec 2016 23:45:05 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7643edd7eb529bca4084dce4df46c68c77cedfa0667f23ae53fd7aef120b1c23`  
		Last Modified: Mon, 19 Dec 2016 23:45:07 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb79095170ea623980af6d92083fc6a5018850334357bac3a9fcc6e362d0d3e`  
		Last Modified: Mon, 19 Dec 2016 23:45:04 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0befad6b0f46be4ce2d228a1365e6eb9112721124e3b3e97250d1a3b37f79687`  
		Last Modified: Mon, 19 Dec 2016 23:45:03 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a7185949b438da755f014ee5c6d6596b97d0bff924f89e2d7767467b869c1`  
		Last Modified: Mon, 19 Dec 2016 23:45:23 GMT  
		Size: 90.8 MB (90754155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459357e714a9ec88344bba2a0ac5e7f4dab057bd988ceadfe38b6d32fb77e669`  
		Last Modified: Mon, 19 Dec 2016 23:45:03 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:1.5`

```console
$ docker pull logstash@sha256:d9df14df2a80f60102e635493c19e7783bdda500cb1ed7ae9bbc9b68cf3f3a08
```

-	Platforms:
	-	linux; amd64

### `logstash:1.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.1 MB (217117197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18a0c5685631537449de02757220db739f1979dde7ee908594195b5a67150296`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:55:02 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:55:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 19 Dec 2016 16:48:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 16:48:31 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Mon, 19 Dec 2016 16:48:31 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Dec 2016 16:48:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 19 Dec 2016 16:48:36 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Mon, 19 Dec 2016 16:48:37 GMT
RUN echo 'deb http://packages.elastic.co/logstash/1.5/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Mon, 19 Dec 2016 16:48:37 GMT
ENV LOGSTASH_VERSION=1.5.6
# Mon, 19 Dec 2016 16:48:38 GMT
ENV LOGSTASH_DEB_VERSION=1:1.5.6-1
# Mon, 19 Dec 2016 16:48:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 16:48:54 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Dec 2016 16:48:54 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Mon, 19 Dec 2016 16:48:55 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Mon, 19 Dec 2016 16:48:55 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Mon, 19 Dec 2016 16:48:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 19 Dec 2016 16:48:56 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc1696ecd26a5941dda9fb149af093b44010744b855d220fc44264a5a0f15`  
		Last Modified: Wed, 14 Dec 2016 03:09:15 GMT  
		Size: 567.0 KB (566962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34836fffacad04a2dbcda9aeb95227d7b6c9474e76befa878667d9cac93c5e1b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4f57ee64ee701a626649566d2cb26d8fe7f02b9d9aed797b19c1a2cca3077b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975b9daf71f592b2408562d1dd1cc8593b6a97a1399c2b9b4a2e453090cf8884`  
		Last Modified: Wed, 14 Dec 2016 03:17:46 GMT  
		Size: 53.5 MB (53450833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6cde91351aecc55b685935d3a6c3f2a189dfe3850627ef8dcbe8caac6e2207`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 284.2 KB (284199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef545687723118e550359578ae70e8e14b4e64431c060583768265d110d39094`  
		Last Modified: Mon, 19 Dec 2016 23:45:08 GMT  
		Size: 1.4 MB (1357381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8585479cd95a00dfda7308c7ce135beeadceddf91b602397dd8a582fc3e7f41`  
		Last Modified: Mon, 19 Dec 2016 23:45:05 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7643edd7eb529bca4084dce4df46c68c77cedfa0667f23ae53fd7aef120b1c23`  
		Last Modified: Mon, 19 Dec 2016 23:45:07 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb79095170ea623980af6d92083fc6a5018850334357bac3a9fcc6e362d0d3e`  
		Last Modified: Mon, 19 Dec 2016 23:45:04 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0befad6b0f46be4ce2d228a1365e6eb9112721124e3b3e97250d1a3b37f79687`  
		Last Modified: Mon, 19 Dec 2016 23:45:03 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a7185949b438da755f014ee5c6d6596b97d0bff924f89e2d7767467b869c1`  
		Last Modified: Mon, 19 Dec 2016 23:45:23 GMT  
		Size: 90.8 MB (90754155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459357e714a9ec88344bba2a0ac5e7f4dab057bd988ceadfe38b6d32fb77e669`  
		Last Modified: Mon, 19 Dec 2016 23:45:03 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:1`

```console
$ docker pull logstash@sha256:d9df14df2a80f60102e635493c19e7783bdda500cb1ed7ae9bbc9b68cf3f3a08
```

-	Platforms:
	-	linux; amd64

### `logstash:1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.1 MB (217117197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18a0c5685631537449de02757220db739f1979dde7ee908594195b5a67150296`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:01 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:55:02 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:55:04 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:55:04 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:55:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 19 Dec 2016 16:48:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 16:48:31 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Mon, 19 Dec 2016 16:48:31 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Dec 2016 16:48:35 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 19 Dec 2016 16:48:36 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Mon, 19 Dec 2016 16:48:37 GMT
RUN echo 'deb http://packages.elastic.co/logstash/1.5/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Mon, 19 Dec 2016 16:48:37 GMT
ENV LOGSTASH_VERSION=1.5.6
# Mon, 19 Dec 2016 16:48:38 GMT
ENV LOGSTASH_DEB_VERSION=1:1.5.6-1
# Mon, 19 Dec 2016 16:48:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 16:48:54 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Dec 2016 16:48:54 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Mon, 19 Dec 2016 16:48:55 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Mon, 19 Dec 2016 16:48:55 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Mon, 19 Dec 2016 16:48:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 19 Dec 2016 16:48:56 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1fc1696ecd26a5941dda9fb149af093b44010744b855d220fc44264a5a0f15`  
		Last Modified: Wed, 14 Dec 2016 03:09:15 GMT  
		Size: 567.0 KB (566962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34836fffacad04a2dbcda9aeb95227d7b6c9474e76befa878667d9cac93c5e1b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4f57ee64ee701a626649566d2cb26d8fe7f02b9d9aed797b19c1a2cca3077b`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975b9daf71f592b2408562d1dd1cc8593b6a97a1399c2b9b4a2e453090cf8884`  
		Last Modified: Wed, 14 Dec 2016 03:17:46 GMT  
		Size: 53.5 MB (53450833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6cde91351aecc55b685935d3a6c3f2a189dfe3850627ef8dcbe8caac6e2207`  
		Last Modified: Wed, 14 Dec 2016 03:17:33 GMT  
		Size: 284.2 KB (284199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef545687723118e550359578ae70e8e14b4e64431c060583768265d110d39094`  
		Last Modified: Mon, 19 Dec 2016 23:45:08 GMT  
		Size: 1.4 MB (1357381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8585479cd95a00dfda7308c7ce135beeadceddf91b602397dd8a582fc3e7f41`  
		Last Modified: Mon, 19 Dec 2016 23:45:05 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7643edd7eb529bca4084dce4df46c68c77cedfa0667f23ae53fd7aef120b1c23`  
		Last Modified: Mon, 19 Dec 2016 23:45:07 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb79095170ea623980af6d92083fc6a5018850334357bac3a9fcc6e362d0d3e`  
		Last Modified: Mon, 19 Dec 2016 23:45:04 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0befad6b0f46be4ce2d228a1365e6eb9112721124e3b3e97250d1a3b37f79687`  
		Last Modified: Mon, 19 Dec 2016 23:45:03 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a7185949b438da755f014ee5c6d6596b97d0bff924f89e2d7767467b869c1`  
		Last Modified: Mon, 19 Dec 2016 23:45:23 GMT  
		Size: 90.8 MB (90754155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459357e714a9ec88344bba2a0ac5e7f4dab057bd988ceadfe38b6d32fb77e669`  
		Last Modified: Mon, 19 Dec 2016 23:45:03 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:1.5.6-alpine`

```console
$ docker pull logstash@sha256:62cbc2b50662cb8aab1d78332b977be0e86375fd3656942da1d137409ce99405
```

-	Platforms:
	-	linux; amd64

### `logstash:1.5.6-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134335198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85ac0fd987835654e75b8d08d70a1fb94f2efa0dfbfa7ebdf0f4bed278069072`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 18 Oct 2016 20:40:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 17 Nov 2016 21:47:51 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:52 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 09 Dec 2016 17:49:40 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Fri, 09 Dec 2016 17:49:43 GMT
RUN apk add --no-cache 		bash 		libzmq
# Fri, 09 Dec 2016 17:49:45 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 09 Dec 2016 17:49:46 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 09 Dec 2016 17:50:34 GMT
ENV LOGSTASH_PATH=/opt/logstash/bin
# Fri, 09 Dec 2016 17:50:34 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 09 Dec 2016 17:51:25 GMT
ENV LOGSTASH_VERSION=1.5.6
# Fri, 09 Dec 2016 17:51:25 GMT
ENV LOGSTASH_TARBALL=https://download.elastic.co/logstash/logstash/logstash-1.5.6.tar.gz LOGSTASH_TARBALL_ASC= LOGSTASH_TARBALL_SHA1=f3e4342f496e0d7e709de231daf624eb1fd80873
# Fri, 09 Dec 2016 17:51:44 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -r "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Fri, 09 Dec 2016 17:51:45 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Fri, 09 Dec 2016 17:51:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Dec 2016 17:51:46 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:857cbad9cd9a8609720fe041554046e94f0813b64887c3c06eac0c2cfb2be741`  
		Last Modified: Thu, 17 Nov 2016 22:03:51 GMT  
		Size: 39.7 MB (39670171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa0e4621f6b8de424c61f8d932962a83b1296f6bcd0e94ac0d51371e68cd09c`  
		Last Modified: Fri, 09 Dec 2016 17:53:26 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916a60334b610753f0771fb8fb4511089cc820941ddea964f63f95ce279bdadd`  
		Last Modified: Fri, 09 Dec 2016 17:53:28 GMT  
		Size: 1.8 MB (1801874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741faf38ae81728eb659416fe9e931f6b63e41053ddaf05c5829b2cc0c7839fc`  
		Last Modified: Fri, 09 Dec 2016 17:53:27 GMT  
		Size: 87.8 KB (87822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9911297bfaae62f90a925e397cd6482bbeae05a3a4b248efebd612b1a06bc859`  
		Last Modified: Fri, 09 Dec 2016 18:00:06 GMT  
		Size: 90.5 MB (90460564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef11f06f952b21909741a7f8030da756c84da9a81086a0c5035c12f4e4c2357e`  
		Last Modified: Fri, 09 Dec 2016 17:59:54 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:1.5-alpine`

```console
$ docker pull logstash@sha256:62cbc2b50662cb8aab1d78332b977be0e86375fd3656942da1d137409ce99405
```

-	Platforms:
	-	linux; amd64

### `logstash:1.5-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134335198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85ac0fd987835654e75b8d08d70a1fb94f2efa0dfbfa7ebdf0f4bed278069072`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 18 Oct 2016 20:40:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 17 Nov 2016 21:47:51 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:52 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 09 Dec 2016 17:49:40 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Fri, 09 Dec 2016 17:49:43 GMT
RUN apk add --no-cache 		bash 		libzmq
# Fri, 09 Dec 2016 17:49:45 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 09 Dec 2016 17:49:46 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 09 Dec 2016 17:50:34 GMT
ENV LOGSTASH_PATH=/opt/logstash/bin
# Fri, 09 Dec 2016 17:50:34 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 09 Dec 2016 17:51:25 GMT
ENV LOGSTASH_VERSION=1.5.6
# Fri, 09 Dec 2016 17:51:25 GMT
ENV LOGSTASH_TARBALL=https://download.elastic.co/logstash/logstash/logstash-1.5.6.tar.gz LOGSTASH_TARBALL_ASC= LOGSTASH_TARBALL_SHA1=f3e4342f496e0d7e709de231daf624eb1fd80873
# Fri, 09 Dec 2016 17:51:44 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -r "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Fri, 09 Dec 2016 17:51:45 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Fri, 09 Dec 2016 17:51:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Dec 2016 17:51:46 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:857cbad9cd9a8609720fe041554046e94f0813b64887c3c06eac0c2cfb2be741`  
		Last Modified: Thu, 17 Nov 2016 22:03:51 GMT  
		Size: 39.7 MB (39670171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa0e4621f6b8de424c61f8d932962a83b1296f6bcd0e94ac0d51371e68cd09c`  
		Last Modified: Fri, 09 Dec 2016 17:53:26 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916a60334b610753f0771fb8fb4511089cc820941ddea964f63f95ce279bdadd`  
		Last Modified: Fri, 09 Dec 2016 17:53:28 GMT  
		Size: 1.8 MB (1801874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741faf38ae81728eb659416fe9e931f6b63e41053ddaf05c5829b2cc0c7839fc`  
		Last Modified: Fri, 09 Dec 2016 17:53:27 GMT  
		Size: 87.8 KB (87822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9911297bfaae62f90a925e397cd6482bbeae05a3a4b248efebd612b1a06bc859`  
		Last Modified: Fri, 09 Dec 2016 18:00:06 GMT  
		Size: 90.5 MB (90460564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef11f06f952b21909741a7f8030da756c84da9a81086a0c5035c12f4e4c2357e`  
		Last Modified: Fri, 09 Dec 2016 17:59:54 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:1-alpine`

```console
$ docker pull logstash@sha256:62cbc2b50662cb8aab1d78332b977be0e86375fd3656942da1d137409ce99405
```

-	Platforms:
	-	linux; amd64

### `logstash:1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134335198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85ac0fd987835654e75b8d08d70a1fb94f2efa0dfbfa7ebdf0f4bed278069072`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 18 Oct 2016 20:40:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 17 Nov 2016 21:47:51 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:52 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 09 Dec 2016 17:49:40 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Fri, 09 Dec 2016 17:49:43 GMT
RUN apk add --no-cache 		bash 		libzmq
# Fri, 09 Dec 2016 17:49:45 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 09 Dec 2016 17:49:46 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 09 Dec 2016 17:50:34 GMT
ENV LOGSTASH_PATH=/opt/logstash/bin
# Fri, 09 Dec 2016 17:50:34 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 09 Dec 2016 17:51:25 GMT
ENV LOGSTASH_VERSION=1.5.6
# Fri, 09 Dec 2016 17:51:25 GMT
ENV LOGSTASH_TARBALL=https://download.elastic.co/logstash/logstash/logstash-1.5.6.tar.gz LOGSTASH_TARBALL_ASC= LOGSTASH_TARBALL_SHA1=f3e4342f496e0d7e709de231daf624eb1fd80873
# Fri, 09 Dec 2016 17:51:44 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -r "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Fri, 09 Dec 2016 17:51:45 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Fri, 09 Dec 2016 17:51:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Dec 2016 17:51:46 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:857cbad9cd9a8609720fe041554046e94f0813b64887c3c06eac0c2cfb2be741`  
		Last Modified: Thu, 17 Nov 2016 22:03:51 GMT  
		Size: 39.7 MB (39670171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa0e4621f6b8de424c61f8d932962a83b1296f6bcd0e94ac0d51371e68cd09c`  
		Last Modified: Fri, 09 Dec 2016 17:53:26 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916a60334b610753f0771fb8fb4511089cc820941ddea964f63f95ce279bdadd`  
		Last Modified: Fri, 09 Dec 2016 17:53:28 GMT  
		Size: 1.8 MB (1801874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741faf38ae81728eb659416fe9e931f6b63e41053ddaf05c5829b2cc0c7839fc`  
		Last Modified: Fri, 09 Dec 2016 17:53:27 GMT  
		Size: 87.8 KB (87822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9911297bfaae62f90a925e397cd6482bbeae05a3a4b248efebd612b1a06bc859`  
		Last Modified: Fri, 09 Dec 2016 18:00:06 GMT  
		Size: 90.5 MB (90460564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef11f06f952b21909741a7f8030da756c84da9a81086a0c5035c12f4e4c2357e`  
		Last Modified: Fri, 09 Dec 2016 17:59:54 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
