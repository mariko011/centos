<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `logstash`

-	[`logstash:1.5.6-1`](#logstash156-1)
-	[`logstash:1.5.6`](#logstash156)
-	[`logstash:1.5`](#logstash15)
-	[`logstash:1`](#logstash1)
-	[`logstash:2.0.0-1`](#logstash200-1)
-	[`logstash:2.0.0`](#logstash200)
-	[`logstash:2.0`](#logstash20)
-	[`logstash:2.1.3-1`](#logstash213-1)
-	[`logstash:2.1.3`](#logstash213)
-	[`logstash:2.1`](#logstash21)
-	[`logstash:2.2.4-1`](#logstash224-1)
-	[`logstash:2.2.4`](#logstash224)
-	[`logstash:2.2`](#logstash22)
-	[`logstash:2.3.4-1`](#logstash234-1)
-	[`logstash:2.3.4`](#logstash234)
-	[`logstash:2.3`](#logstash23)
-	[`logstash:2.4.1-1`](#logstash241-1)
-	[`logstash:2.4.1`](#logstash241)
-	[`logstash:2.4`](#logstash24)
-	[`logstash:2`](#logstash2)
-	[`logstash:5.0.2-1`](#logstash502-1)
-	[`logstash:5.0.2`](#logstash502)
-	[`logstash:5.0`](#logstash50)
-	[`logstash:5`](#logstash5)
-	[`logstash:latest`](#logstashlatest)

## `logstash:1.5.6-1`

```console
$ docker pull logstash@sha256:88447fbbf87ba91ac7fae709afd03c148afe669dabd36b96310c1ec6478dd0af
```

-	Platforms:
	-	linux; amd64

### `logstash:1.5.6-1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.1 MB (217108593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e358d0736b73c53567618dad066aa18b4e15bacacd853657a7fcad9fe06a9eb6`
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
# Tue, 08 Nov 2016 22:15:07 GMT
RUN echo 'deb http://packages.elastic.co/logstash/1.5/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Tue, 08 Nov 2016 22:15:08 GMT
ENV LOGSTASH_VERSION=1:1.5.6-1
# Tue, 08 Nov 2016 22:15:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 22:15:28 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 22:15:28 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 15 Nov 2016 01:43:28 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 15 Nov 2016 01:43:29 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Tue, 15 Nov 2016 01:43:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Nov 2016 01:43:30 GMT
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
	-	`sha256:3eef21260a2399933f9b38fa0d21e1606f145ee3dc55bfbbe3e6f6d312695540`  
		Last Modified: Tue, 08 Nov 2016 22:15:42 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e6a96fa6a122bb0a2fa2df50da6b4df91e05420167407392d405ac06e517c5`  
		Last Modified: Tue, 08 Nov 2016 22:15:58 GMT  
		Size: 90.8 MB (90754055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a35e8d1517e249f8030bba5dbe68ba4a1ccba4833794df69bcf418a2179162a`  
		Last Modified: Tue, 15 Nov 2016 01:43:59 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:1.5.6`

```console
$ docker pull logstash@sha256:88447fbbf87ba91ac7fae709afd03c148afe669dabd36b96310c1ec6478dd0af
```

-	Platforms:
	-	linux; amd64

### `logstash:1.5.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.1 MB (217108593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e358d0736b73c53567618dad066aa18b4e15bacacd853657a7fcad9fe06a9eb6`
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
# Tue, 08 Nov 2016 22:15:07 GMT
RUN echo 'deb http://packages.elastic.co/logstash/1.5/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Tue, 08 Nov 2016 22:15:08 GMT
ENV LOGSTASH_VERSION=1:1.5.6-1
# Tue, 08 Nov 2016 22:15:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 22:15:28 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 22:15:28 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 15 Nov 2016 01:43:28 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 15 Nov 2016 01:43:29 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Tue, 15 Nov 2016 01:43:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Nov 2016 01:43:30 GMT
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
	-	`sha256:3eef21260a2399933f9b38fa0d21e1606f145ee3dc55bfbbe3e6f6d312695540`  
		Last Modified: Tue, 08 Nov 2016 22:15:42 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e6a96fa6a122bb0a2fa2df50da6b4df91e05420167407392d405ac06e517c5`  
		Last Modified: Tue, 08 Nov 2016 22:15:58 GMT  
		Size: 90.8 MB (90754055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a35e8d1517e249f8030bba5dbe68ba4a1ccba4833794df69bcf418a2179162a`  
		Last Modified: Tue, 15 Nov 2016 01:43:59 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:1.5`

```console
$ docker pull logstash@sha256:88447fbbf87ba91ac7fae709afd03c148afe669dabd36b96310c1ec6478dd0af
```

-	Platforms:
	-	linux; amd64

### `logstash:1.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.1 MB (217108593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e358d0736b73c53567618dad066aa18b4e15bacacd853657a7fcad9fe06a9eb6`
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
# Tue, 08 Nov 2016 22:15:07 GMT
RUN echo 'deb http://packages.elastic.co/logstash/1.5/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Tue, 08 Nov 2016 22:15:08 GMT
ENV LOGSTASH_VERSION=1:1.5.6-1
# Tue, 08 Nov 2016 22:15:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 22:15:28 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 22:15:28 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 15 Nov 2016 01:43:28 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 15 Nov 2016 01:43:29 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Tue, 15 Nov 2016 01:43:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Nov 2016 01:43:30 GMT
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
	-	`sha256:3eef21260a2399933f9b38fa0d21e1606f145ee3dc55bfbbe3e6f6d312695540`  
		Last Modified: Tue, 08 Nov 2016 22:15:42 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e6a96fa6a122bb0a2fa2df50da6b4df91e05420167407392d405ac06e517c5`  
		Last Modified: Tue, 08 Nov 2016 22:15:58 GMT  
		Size: 90.8 MB (90754055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a35e8d1517e249f8030bba5dbe68ba4a1ccba4833794df69bcf418a2179162a`  
		Last Modified: Tue, 15 Nov 2016 01:43:59 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:1`

```console
$ docker pull logstash@sha256:88447fbbf87ba91ac7fae709afd03c148afe669dabd36b96310c1ec6478dd0af
```

-	Platforms:
	-	linux; amd64

### `logstash:1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.1 MB (217108593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e358d0736b73c53567618dad066aa18b4e15bacacd853657a7fcad9fe06a9eb6`
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
# Tue, 08 Nov 2016 22:15:07 GMT
RUN echo 'deb http://packages.elastic.co/logstash/1.5/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Tue, 08 Nov 2016 22:15:08 GMT
ENV LOGSTASH_VERSION=1:1.5.6-1
# Tue, 08 Nov 2016 22:15:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 22:15:28 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 22:15:28 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 15 Nov 2016 01:43:28 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 15 Nov 2016 01:43:29 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Tue, 15 Nov 2016 01:43:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Nov 2016 01:43:30 GMT
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
	-	`sha256:3eef21260a2399933f9b38fa0d21e1606f145ee3dc55bfbbe3e6f6d312695540`  
		Last Modified: Tue, 08 Nov 2016 22:15:42 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e6a96fa6a122bb0a2fa2df50da6b4df91e05420167407392d405ac06e517c5`  
		Last Modified: Tue, 08 Nov 2016 22:15:58 GMT  
		Size: 90.8 MB (90754055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a35e8d1517e249f8030bba5dbe68ba4a1ccba4833794df69bcf418a2179162a`  
		Last Modified: Tue, 15 Nov 2016 01:43:59 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.0.0-1`

```console
$ docker pull logstash@sha256:02087f728253291786250c9a9c8bc0c5ce036df429ddf524b56dc664d198343c
```

-	Platforms:
	-	linux; amd64

### `logstash:2.0.0-1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.9 MB (207889412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b22c71348e62e8b10248afa4081adcca0249cbaf54d30b7221eb9faca8bc126f`
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
# Tue, 08 Nov 2016 22:18:53 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.0/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Tue, 08 Nov 2016 22:18:53 GMT
ENV LOGSTASH_VERSION=1:2.0.0-1
# Tue, 08 Nov 2016 22:19:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 22:19:12 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 22:19:13 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 15 Nov 2016 01:43:31 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 15 Nov 2016 01:43:32 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Tue, 15 Nov 2016 01:43:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Nov 2016 01:43:32 GMT
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
	-	`sha256:863ce92626e17a140df3e3ae55e1749dd9316d37e6d3ee4c72918c761c86538c`  
		Last Modified: Tue, 08 Nov 2016 22:19:27 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6067510bebe6d45284bfb603a25fd1be79cd0884ed1695f3b02c4d6a04d9b333`  
		Last Modified: Tue, 08 Nov 2016 22:19:42 GMT  
		Size: 81.5 MB (81534873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb9143207ddcc6a312760753ca3f297530ffe9bfb451aca77fd457a615ef8039`  
		Last Modified: Tue, 15 Nov 2016 01:44:57 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.0.0`

```console
$ docker pull logstash@sha256:02087f728253291786250c9a9c8bc0c5ce036df429ddf524b56dc664d198343c
```

-	Platforms:
	-	linux; amd64

### `logstash:2.0.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.9 MB (207889412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b22c71348e62e8b10248afa4081adcca0249cbaf54d30b7221eb9faca8bc126f`
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
# Tue, 08 Nov 2016 22:18:53 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.0/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Tue, 08 Nov 2016 22:18:53 GMT
ENV LOGSTASH_VERSION=1:2.0.0-1
# Tue, 08 Nov 2016 22:19:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 22:19:12 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 22:19:13 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 15 Nov 2016 01:43:31 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 15 Nov 2016 01:43:32 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Tue, 15 Nov 2016 01:43:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Nov 2016 01:43:32 GMT
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
	-	`sha256:863ce92626e17a140df3e3ae55e1749dd9316d37e6d3ee4c72918c761c86538c`  
		Last Modified: Tue, 08 Nov 2016 22:19:27 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6067510bebe6d45284bfb603a25fd1be79cd0884ed1695f3b02c4d6a04d9b333`  
		Last Modified: Tue, 08 Nov 2016 22:19:42 GMT  
		Size: 81.5 MB (81534873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb9143207ddcc6a312760753ca3f297530ffe9bfb451aca77fd457a615ef8039`  
		Last Modified: Tue, 15 Nov 2016 01:44:57 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.0`

```console
$ docker pull logstash@sha256:02087f728253291786250c9a9c8bc0c5ce036df429ddf524b56dc664d198343c
```

-	Platforms:
	-	linux; amd64

### `logstash:2.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.9 MB (207889412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b22c71348e62e8b10248afa4081adcca0249cbaf54d30b7221eb9faca8bc126f`
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
# Tue, 08 Nov 2016 22:18:53 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.0/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Tue, 08 Nov 2016 22:18:53 GMT
ENV LOGSTASH_VERSION=1:2.0.0-1
# Tue, 08 Nov 2016 22:19:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 22:19:12 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 22:19:13 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 15 Nov 2016 01:43:31 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 15 Nov 2016 01:43:32 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Tue, 15 Nov 2016 01:43:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Nov 2016 01:43:32 GMT
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
	-	`sha256:863ce92626e17a140df3e3ae55e1749dd9316d37e6d3ee4c72918c761c86538c`  
		Last Modified: Tue, 08 Nov 2016 22:19:27 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6067510bebe6d45284bfb603a25fd1be79cd0884ed1695f3b02c4d6a04d9b333`  
		Last Modified: Tue, 08 Nov 2016 22:19:42 GMT  
		Size: 81.5 MB (81534873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb9143207ddcc6a312760753ca3f297530ffe9bfb451aca77fd457a615ef8039`  
		Last Modified: Tue, 15 Nov 2016 01:44:57 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.1.3-1`

```console
$ docker pull logstash@sha256:336e7cc78d6be705a01923def0247c4f669c453c0fbc0b1f601c25d6bfbffdfd
```

-	Platforms:
	-	linux; amd64

### `logstash:2.1.3-1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.7 MB (201692927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c4c67572aaac88739d428b0d4b1e3772f55f2144aeacf67109af4e52ad61ee9`
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
# Tue, 08 Nov 2016 22:20:26 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.1/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Tue, 08 Nov 2016 22:20:26 GMT
ENV LOGSTASH_VERSION=1:2.1.3-1
# Tue, 08 Nov 2016 22:20:44 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 22:20:45 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 22:20:45 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 15 Nov 2016 01:43:34 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 15 Nov 2016 01:43:35 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Tue, 15 Nov 2016 01:43:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Nov 2016 01:43:35 GMT
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
	-	`sha256:5985a5263c666c77bbe782f72d86ad072adeccdb882def5c22b7f24edecd8ad4`  
		Last Modified: Tue, 08 Nov 2016 22:20:59 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40eba37fcbb4a48e2a499db566600f18fdf0fd64e9d8c96a2a8aba1f9c25f8d4`  
		Last Modified: Tue, 08 Nov 2016 22:21:11 GMT  
		Size: 75.3 MB (75338387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:149a9bd740678a2582a5cc17fa92c49d0c63fb8d98ab568beed86a8562031cd0`  
		Last Modified: Tue, 15 Nov 2016 01:45:44 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.1.3`

```console
$ docker pull logstash@sha256:336e7cc78d6be705a01923def0247c4f669c453c0fbc0b1f601c25d6bfbffdfd
```

-	Platforms:
	-	linux; amd64

### `logstash:2.1.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.7 MB (201692927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c4c67572aaac88739d428b0d4b1e3772f55f2144aeacf67109af4e52ad61ee9`
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
# Tue, 08 Nov 2016 22:20:26 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.1/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Tue, 08 Nov 2016 22:20:26 GMT
ENV LOGSTASH_VERSION=1:2.1.3-1
# Tue, 08 Nov 2016 22:20:44 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 22:20:45 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 22:20:45 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 15 Nov 2016 01:43:34 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 15 Nov 2016 01:43:35 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Tue, 15 Nov 2016 01:43:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Nov 2016 01:43:35 GMT
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
	-	`sha256:5985a5263c666c77bbe782f72d86ad072adeccdb882def5c22b7f24edecd8ad4`  
		Last Modified: Tue, 08 Nov 2016 22:20:59 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40eba37fcbb4a48e2a499db566600f18fdf0fd64e9d8c96a2a8aba1f9c25f8d4`  
		Last Modified: Tue, 08 Nov 2016 22:21:11 GMT  
		Size: 75.3 MB (75338387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:149a9bd740678a2582a5cc17fa92c49d0c63fb8d98ab568beed86a8562031cd0`  
		Last Modified: Tue, 15 Nov 2016 01:45:44 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.1`

```console
$ docker pull logstash@sha256:336e7cc78d6be705a01923def0247c4f669c453c0fbc0b1f601c25d6bfbffdfd
```

-	Platforms:
	-	linux; amd64

### `logstash:2.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.7 MB (201692927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c4c67572aaac88739d428b0d4b1e3772f55f2144aeacf67109af4e52ad61ee9`
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
# Tue, 08 Nov 2016 22:20:26 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.1/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Tue, 08 Nov 2016 22:20:26 GMT
ENV LOGSTASH_VERSION=1:2.1.3-1
# Tue, 08 Nov 2016 22:20:44 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 22:20:45 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 22:20:45 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 15 Nov 2016 01:43:34 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 15 Nov 2016 01:43:35 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Tue, 15 Nov 2016 01:43:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Nov 2016 01:43:35 GMT
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
	-	`sha256:5985a5263c666c77bbe782f72d86ad072adeccdb882def5c22b7f24edecd8ad4`  
		Last Modified: Tue, 08 Nov 2016 22:20:59 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40eba37fcbb4a48e2a499db566600f18fdf0fd64e9d8c96a2a8aba1f9c25f8d4`  
		Last Modified: Tue, 08 Nov 2016 22:21:11 GMT  
		Size: 75.3 MB (75338387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:149a9bd740678a2582a5cc17fa92c49d0c63fb8d98ab568beed86a8562031cd0`  
		Last Modified: Tue, 15 Nov 2016 01:45:44 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.2.4-1`

```console
$ docker pull logstash@sha256:15bf9651db81771a887e14db928a45c4a29c33d043326ea9b2079cac493ca83a
```

-	Platforms:
	-	linux; amd64

### `logstash:2.2.4-1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.5 MB (202493335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cfc73d72233035fb77c10d73ba3d03f7093213a56472594db0f2dd83723b352`
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
# Tue, 08 Nov 2016 22:21:50 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.2/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Tue, 08 Nov 2016 22:21:50 GMT
ENV LOGSTASH_VERSION=1:2.2.4-1
# Tue, 08 Nov 2016 22:22:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 22:22:11 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 22:22:11 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 15 Nov 2016 01:43:37 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 15 Nov 2016 01:43:37 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Tue, 15 Nov 2016 01:43:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Nov 2016 01:43:38 GMT
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
	-	`sha256:cccdf70b8c74e4926be778b7d6fb33e00772e922051f4895f77827f46b45f4dc`  
		Last Modified: Tue, 08 Nov 2016 22:22:28 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9edd17deec7c8fe96e4f4078d891018a49006139799354fc3e1458387673c091`  
		Last Modified: Tue, 08 Nov 2016 22:22:36 GMT  
		Size: 76.1 MB (76138796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8048474c75bcf15974c6429b08820ea4a1e3487792c5ab5c57be9b9bc7bdaca4`  
		Last Modified: Tue, 15 Nov 2016 01:46:30 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.2.4`

```console
$ docker pull logstash@sha256:15bf9651db81771a887e14db928a45c4a29c33d043326ea9b2079cac493ca83a
```

-	Platforms:
	-	linux; amd64

### `logstash:2.2.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.5 MB (202493335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cfc73d72233035fb77c10d73ba3d03f7093213a56472594db0f2dd83723b352`
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
# Tue, 08 Nov 2016 22:21:50 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.2/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Tue, 08 Nov 2016 22:21:50 GMT
ENV LOGSTASH_VERSION=1:2.2.4-1
# Tue, 08 Nov 2016 22:22:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 22:22:11 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 22:22:11 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 15 Nov 2016 01:43:37 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 15 Nov 2016 01:43:37 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Tue, 15 Nov 2016 01:43:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Nov 2016 01:43:38 GMT
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
	-	`sha256:cccdf70b8c74e4926be778b7d6fb33e00772e922051f4895f77827f46b45f4dc`  
		Last Modified: Tue, 08 Nov 2016 22:22:28 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9edd17deec7c8fe96e4f4078d891018a49006139799354fc3e1458387673c091`  
		Last Modified: Tue, 08 Nov 2016 22:22:36 GMT  
		Size: 76.1 MB (76138796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8048474c75bcf15974c6429b08820ea4a1e3487792c5ab5c57be9b9bc7bdaca4`  
		Last Modified: Tue, 15 Nov 2016 01:46:30 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.2`

```console
$ docker pull logstash@sha256:15bf9651db81771a887e14db928a45c4a29c33d043326ea9b2079cac493ca83a
```

-	Platforms:
	-	linux; amd64

### `logstash:2.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.5 MB (202493335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cfc73d72233035fb77c10d73ba3d03f7093213a56472594db0f2dd83723b352`
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
# Tue, 08 Nov 2016 22:21:50 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.2/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Tue, 08 Nov 2016 22:21:50 GMT
ENV LOGSTASH_VERSION=1:2.2.4-1
# Tue, 08 Nov 2016 22:22:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 22:22:11 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 22:22:11 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 15 Nov 2016 01:43:37 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 15 Nov 2016 01:43:37 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Tue, 15 Nov 2016 01:43:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Nov 2016 01:43:38 GMT
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
	-	`sha256:cccdf70b8c74e4926be778b7d6fb33e00772e922051f4895f77827f46b45f4dc`  
		Last Modified: Tue, 08 Nov 2016 22:22:28 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9edd17deec7c8fe96e4f4078d891018a49006139799354fc3e1458387673c091`  
		Last Modified: Tue, 08 Nov 2016 22:22:36 GMT  
		Size: 76.1 MB (76138796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8048474c75bcf15974c6429b08820ea4a1e3487792c5ab5c57be9b9bc7bdaca4`  
		Last Modified: Tue, 15 Nov 2016 01:46:30 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.3.4-1`

```console
$ docker pull logstash@sha256:1c6ba77ea0c8495b2cd1b98abb17f9a58a5ad89168c34a2e14af5cdd2c42db17
```

-	Platforms:
	-	linux; amd64

### `logstash:2.3.4-1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.1 MB (207080249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4c6b17f6516a6b12934af6432833c2407f8b8c858894cb234bd4af0961e9bbf`
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
# Tue, 08 Nov 2016 22:23:18 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.3/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Tue, 08 Nov 2016 22:23:25 GMT
ENV LOGSTASH_VERSION=1:2.3.4-1
# Tue, 08 Nov 2016 22:23:44 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 22:23:45 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 22:23:46 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 15 Nov 2016 01:43:40 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 15 Nov 2016 01:43:40 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Tue, 15 Nov 2016 01:43:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Nov 2016 01:43:41 GMT
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
	-	`sha256:eb5b52f80a11cf87300ecd8fae686b69e72392cf076c86f56cd6b654535ced97`  
		Last Modified: Tue, 08 Nov 2016 22:24:09 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a8e046d78e5626658c5d7dcede73350dade8d957819487f18ccadcc06c0c18`  
		Last Modified: Tue, 08 Nov 2016 22:24:23 GMT  
		Size: 80.7 MB (80725709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d266c0fd9a0d5d9f2e884fa0dfd022b29e957c4f386b673ae9c73f62314f2b8b`  
		Last Modified: Tue, 15 Nov 2016 01:47:16 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.3.4`

```console
$ docker pull logstash@sha256:1c6ba77ea0c8495b2cd1b98abb17f9a58a5ad89168c34a2e14af5cdd2c42db17
```

-	Platforms:
	-	linux; amd64

### `logstash:2.3.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.1 MB (207080249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4c6b17f6516a6b12934af6432833c2407f8b8c858894cb234bd4af0961e9bbf`
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
# Tue, 08 Nov 2016 22:23:18 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.3/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Tue, 08 Nov 2016 22:23:25 GMT
ENV LOGSTASH_VERSION=1:2.3.4-1
# Tue, 08 Nov 2016 22:23:44 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 22:23:45 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 22:23:46 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 15 Nov 2016 01:43:40 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 15 Nov 2016 01:43:40 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Tue, 15 Nov 2016 01:43:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Nov 2016 01:43:41 GMT
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
	-	`sha256:eb5b52f80a11cf87300ecd8fae686b69e72392cf076c86f56cd6b654535ced97`  
		Last Modified: Tue, 08 Nov 2016 22:24:09 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a8e046d78e5626658c5d7dcede73350dade8d957819487f18ccadcc06c0c18`  
		Last Modified: Tue, 08 Nov 2016 22:24:23 GMT  
		Size: 80.7 MB (80725709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d266c0fd9a0d5d9f2e884fa0dfd022b29e957c4f386b673ae9c73f62314f2b8b`  
		Last Modified: Tue, 15 Nov 2016 01:47:16 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.3`

```console
$ docker pull logstash@sha256:1c6ba77ea0c8495b2cd1b98abb17f9a58a5ad89168c34a2e14af5cdd2c42db17
```

-	Platforms:
	-	linux; amd64

### `logstash:2.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.1 MB (207080249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4c6b17f6516a6b12934af6432833c2407f8b8c858894cb234bd4af0961e9bbf`
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
# Tue, 08 Nov 2016 22:23:18 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.3/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Tue, 08 Nov 2016 22:23:25 GMT
ENV LOGSTASH_VERSION=1:2.3.4-1
# Tue, 08 Nov 2016 22:23:44 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 22:23:45 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 22:23:46 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 15 Nov 2016 01:43:40 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 15 Nov 2016 01:43:40 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Tue, 15 Nov 2016 01:43:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Nov 2016 01:43:41 GMT
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
	-	`sha256:eb5b52f80a11cf87300ecd8fae686b69e72392cf076c86f56cd6b654535ced97`  
		Last Modified: Tue, 08 Nov 2016 22:24:09 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a8e046d78e5626658c5d7dcede73350dade8d957819487f18ccadcc06c0c18`  
		Last Modified: Tue, 08 Nov 2016 22:24:23 GMT  
		Size: 80.7 MB (80725709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d266c0fd9a0d5d9f2e884fa0dfd022b29e957c4f386b673ae9c73f62314f2b8b`  
		Last Modified: Tue, 15 Nov 2016 01:47:16 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.4.1-1`

```console
$ docker pull logstash@sha256:d567d5d12577409753baf902125193a5581cf37281fa9cb4c95cc14b5ac5e33f
```

-	Platforms:
	-	linux; amd64

### `logstash:2.4.1-1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.3 MB (211276813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cf64076ad0930da0ec073fb98f4a5c66c640b6be99cab253085224d75de264a`
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
# Tue, 08 Nov 2016 22:16:51 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.4/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Tue, 15 Nov 2016 20:59:21 GMT
ENV LOGSTASH_VERSION=1:2.4.1-1
# Tue, 15 Nov 2016 20:59:40 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 15 Nov 2016 20:59:41 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Nov 2016 20:59:41 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 15 Nov 2016 20:59:42 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 15 Nov 2016 20:59:43 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Tue, 15 Nov 2016 20:59:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Nov 2016 20:59:43 GMT
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
	-	`sha256:1f01fd80496b205d17331d6bb84f8f5e39a1443fe2b9bb5b9a8ff77a9d942d83`  
		Last Modified: Tue, 08 Nov 2016 22:17:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab0d9f8328f9cfef7c5301e74344543ff55a9061f5662639271b548929f97d39`  
		Last Modified: Tue, 15 Nov 2016 21:04:34 GMT  
		Size: 84.9 MB (84922275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca66c5069475e3f3ddd81bcd3e13e66566335a5fb9aceca2c93279ffce594084`  
		Last Modified: Tue, 15 Nov 2016 21:04:20 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.4.1`

```console
$ docker pull logstash@sha256:d567d5d12577409753baf902125193a5581cf37281fa9cb4c95cc14b5ac5e33f
```

-	Platforms:
	-	linux; amd64

### `logstash:2.4.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.3 MB (211276813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cf64076ad0930da0ec073fb98f4a5c66c640b6be99cab253085224d75de264a`
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
# Tue, 08 Nov 2016 22:16:51 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.4/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Tue, 15 Nov 2016 20:59:21 GMT
ENV LOGSTASH_VERSION=1:2.4.1-1
# Tue, 15 Nov 2016 20:59:40 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 15 Nov 2016 20:59:41 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Nov 2016 20:59:41 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 15 Nov 2016 20:59:42 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 15 Nov 2016 20:59:43 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Tue, 15 Nov 2016 20:59:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Nov 2016 20:59:43 GMT
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
	-	`sha256:1f01fd80496b205d17331d6bb84f8f5e39a1443fe2b9bb5b9a8ff77a9d942d83`  
		Last Modified: Tue, 08 Nov 2016 22:17:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab0d9f8328f9cfef7c5301e74344543ff55a9061f5662639271b548929f97d39`  
		Last Modified: Tue, 15 Nov 2016 21:04:34 GMT  
		Size: 84.9 MB (84922275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca66c5069475e3f3ddd81bcd3e13e66566335a5fb9aceca2c93279ffce594084`  
		Last Modified: Tue, 15 Nov 2016 21:04:20 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.4`

```console
$ docker pull logstash@sha256:d567d5d12577409753baf902125193a5581cf37281fa9cb4c95cc14b5ac5e33f
```

-	Platforms:
	-	linux; amd64

### `logstash:2.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.3 MB (211276813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cf64076ad0930da0ec073fb98f4a5c66c640b6be99cab253085224d75de264a`
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
# Tue, 08 Nov 2016 22:16:51 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.4/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Tue, 15 Nov 2016 20:59:21 GMT
ENV LOGSTASH_VERSION=1:2.4.1-1
# Tue, 15 Nov 2016 20:59:40 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 15 Nov 2016 20:59:41 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Nov 2016 20:59:41 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 15 Nov 2016 20:59:42 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 15 Nov 2016 20:59:43 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Tue, 15 Nov 2016 20:59:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Nov 2016 20:59:43 GMT
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
	-	`sha256:1f01fd80496b205d17331d6bb84f8f5e39a1443fe2b9bb5b9a8ff77a9d942d83`  
		Last Modified: Tue, 08 Nov 2016 22:17:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab0d9f8328f9cfef7c5301e74344543ff55a9061f5662639271b548929f97d39`  
		Last Modified: Tue, 15 Nov 2016 21:04:34 GMT  
		Size: 84.9 MB (84922275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca66c5069475e3f3ddd81bcd3e13e66566335a5fb9aceca2c93279ffce594084`  
		Last Modified: Tue, 15 Nov 2016 21:04:20 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2`

```console
$ docker pull logstash@sha256:d567d5d12577409753baf902125193a5581cf37281fa9cb4c95cc14b5ac5e33f
```

-	Platforms:
	-	linux; amd64

### `logstash:2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.3 MB (211276813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cf64076ad0930da0ec073fb98f4a5c66c640b6be99cab253085224d75de264a`
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
# Tue, 08 Nov 2016 22:16:51 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.4/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Tue, 15 Nov 2016 20:59:21 GMT
ENV LOGSTASH_VERSION=1:2.4.1-1
# Tue, 15 Nov 2016 20:59:40 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 15 Nov 2016 20:59:41 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Nov 2016 20:59:41 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 15 Nov 2016 20:59:42 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 15 Nov 2016 20:59:43 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Tue, 15 Nov 2016 20:59:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Nov 2016 20:59:43 GMT
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
	-	`sha256:1f01fd80496b205d17331d6bb84f8f5e39a1443fe2b9bb5b9a8ff77a9d942d83`  
		Last Modified: Tue, 08 Nov 2016 22:17:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab0d9f8328f9cfef7c5301e74344543ff55a9061f5662639271b548929f97d39`  
		Last Modified: Tue, 15 Nov 2016 21:04:34 GMT  
		Size: 84.9 MB (84922275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca66c5069475e3f3ddd81bcd3e13e66566335a5fb9aceca2c93279ffce594084`  
		Last Modified: Tue, 15 Nov 2016 21:04:20 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.0.2-1`

**does not exist** (yet?)

## `logstash:5.0.2`

**does not exist** (yet?)

## `logstash:5.0`

```console
$ docker pull logstash@sha256:048a18100f18cdec3a42ebaa42042d5ee5bb3acceacea027dee4ae3819039da7
```

-	Platforms:
	-	linux; amd64

### `logstash:5.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.2 MB (232152190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96410b00b6647661c48a17f98510325712b5c22756fc99ec7a96e2069b968ba5`
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
# Tue, 15 Nov 2016 20:59:44 GMT
ENV LOGSTASH_VERSION=1:5.0.1-1
# Tue, 15 Nov 2016 21:00:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 15 Nov 2016 21:00:11 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Nov 2016 21:00:12 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 15 Nov 2016 21:00:13 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 15 Nov 2016 21:00:13 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Tue, 15 Nov 2016 21:00:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Nov 2016 21:00:14 GMT
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
	-	`sha256:c1543e80c12a02cd04da54ab2dba9eaf554e6829da042cca1ebf257aed52a79d`  
		Last Modified: Tue, 15 Nov 2016 21:05:59 GMT  
		Size: 105.8 MB (105795923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566f64970d2ac34775b0c52faec6bb2b1988132da8fd09c61b6bea034eaee001`  
		Last Modified: Tue, 15 Nov 2016 21:05:40 GMT  
		Size: 1.7 KB (1727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de88d0e9219550514234797d153540646969c4ec12fef63a1eaf28a70f8b2f8c`  
		Last Modified: Tue, 15 Nov 2016 21:05:40 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5`

```console
$ docker pull logstash@sha256:048a18100f18cdec3a42ebaa42042d5ee5bb3acceacea027dee4ae3819039da7
```

-	Platforms:
	-	linux; amd64

### `logstash:5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.2 MB (232152190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96410b00b6647661c48a17f98510325712b5c22756fc99ec7a96e2069b968ba5`
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
# Tue, 15 Nov 2016 20:59:44 GMT
ENV LOGSTASH_VERSION=1:5.0.1-1
# Tue, 15 Nov 2016 21:00:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 15 Nov 2016 21:00:11 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Nov 2016 21:00:12 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 15 Nov 2016 21:00:13 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 15 Nov 2016 21:00:13 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Tue, 15 Nov 2016 21:00:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Nov 2016 21:00:14 GMT
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
	-	`sha256:c1543e80c12a02cd04da54ab2dba9eaf554e6829da042cca1ebf257aed52a79d`  
		Last Modified: Tue, 15 Nov 2016 21:05:59 GMT  
		Size: 105.8 MB (105795923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566f64970d2ac34775b0c52faec6bb2b1988132da8fd09c61b6bea034eaee001`  
		Last Modified: Tue, 15 Nov 2016 21:05:40 GMT  
		Size: 1.7 KB (1727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de88d0e9219550514234797d153540646969c4ec12fef63a1eaf28a70f8b2f8c`  
		Last Modified: Tue, 15 Nov 2016 21:05:40 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:latest`

```console
$ docker pull logstash@sha256:048a18100f18cdec3a42ebaa42042d5ee5bb3acceacea027dee4ae3819039da7
```

-	Platforms:
	-	linux; amd64

### `logstash:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.2 MB (232152190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96410b00b6647661c48a17f98510325712b5c22756fc99ec7a96e2069b968ba5`
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
# Tue, 15 Nov 2016 20:59:44 GMT
ENV LOGSTASH_VERSION=1:5.0.1-1
# Tue, 15 Nov 2016 21:00:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends logstash=$LOGSTASH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 15 Nov 2016 21:00:11 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Nov 2016 21:00:12 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 15 Nov 2016 21:00:13 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 15 Nov 2016 21:00:13 GMT
COPY file:e25e9bbce7bd2a5373b3d6a54afe70f3338f9e3fb5fc933284ea0d73eaa8985c in / 
# Tue, 15 Nov 2016 21:00:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Nov 2016 21:00:14 GMT
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
	-	`sha256:c1543e80c12a02cd04da54ab2dba9eaf554e6829da042cca1ebf257aed52a79d`  
		Last Modified: Tue, 15 Nov 2016 21:05:59 GMT  
		Size: 105.8 MB (105795923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566f64970d2ac34775b0c52faec6bb2b1988132da8fd09c61b6bea034eaee001`  
		Last Modified: Tue, 15 Nov 2016 21:05:40 GMT  
		Size: 1.7 KB (1727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de88d0e9219550514234797d153540646969c4ec12fef63a1eaf28a70f8b2f8c`  
		Last Modified: Tue, 15 Nov 2016 21:05:40 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
