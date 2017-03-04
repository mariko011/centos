<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `logstash`

-	[`logstash:5.2.2`](#logstash522)
-	[`logstash:5.2`](#logstash52)
-	[`logstash:5`](#logstash5)
-	[`logstash:latest`](#logstashlatest)
-	[`logstash:5.2.2-alpine`](#logstash522-alpine)
-	[`logstash:5.2-alpine`](#logstash52-alpine)
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

## `logstash:5.2.2`

```console
$ docker pull logstash@sha256:41963687ba3dc31b866ed03f96fa4753496ddf16271b3e2d1d1c709d43c3500c
```

-	Platforms:
	-	linux; amd64

### `logstash:5.2.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.4 MB (221395582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:413f93f5f1f2bd92b64631df3ed19a945712eb6947f56d95ce4acb1172886e12`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 16:02:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:03:09 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 01 Mar 2017 16:03:09 GMT
ENV GOSU_VERSION=1.7
# Wed, 01 Mar 2017 16:03:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 01 Mar 2017 16:03:15 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 01 Mar 2017 16:04:51 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/logstash.list
# Thu, 02 Mar 2017 00:38:56 GMT
ENV LOGSTASH_VERSION=5.2.2
# Thu, 02 Mar 2017 00:38:56 GMT
ENV LOGSTASH_DEB_VERSION=1:5.2.2-1
# Thu, 02 Mar 2017 00:39:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Mar 2017 00:39:38 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Mar 2017 00:39:38 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Thu, 02 Mar 2017 00:39:40 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Thu, 02 Mar 2017 00:39:56 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Thu, 02 Mar 2017 00:39:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Mar 2017 00:39:56 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:174a19b62c3e5bf6e92723dcf1b2820f3ac1f8447f269a072b46b1ffddeb72b7`  
		Last Modified: Thu, 02 Mar 2017 00:41:04 GMT  
		Size: 1.4 MB (1357270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3d0c363309749127bdae277d60d9745b4d2436fffbe565be37b2faec086486`  
		Last Modified: Thu, 02 Mar 2017 00:41:03 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bf047e5993a1eee92ea6e7fc5aa538c01beec9fc54f6fabdf6c9b31596c0ae`  
		Last Modified: Thu, 02 Mar 2017 00:41:03 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289fa5f56b965ab885843f34c152cfae938e0564da19d03da68fa23d4605cd34`  
		Last Modified: Thu, 02 Mar 2017 00:41:03 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac19fc3d22378a02d48195deb8c1d87fb71a619bcee341ccdfabf8f54b6ea9b`  
		Last Modified: Thu, 02 Mar 2017 00:41:01 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152fa8260cff39257fced508267e1ad5abc9dbeb5a4465579a6da24de3241905`  
		Last Modified: Thu, 02 Mar 2017 00:41:19 GMT  
		Size: 95.0 MB (94951753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:328ae65e70519d2131a5e9b2c63c99c40d929da980b39a1628003b1098c4132c`  
		Last Modified: Thu, 02 Mar 2017 00:41:01 GMT  
		Size: 2.2 KB (2246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68c30b8ecf71237a391e33b143c8148fe18a425439f019ddd1a3000150c7a5f`  
		Last Modified: Thu, 02 Mar 2017 00:41:00 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.2`

```console
$ docker pull logstash@sha256:41963687ba3dc31b866ed03f96fa4753496ddf16271b3e2d1d1c709d43c3500c
```

-	Platforms:
	-	linux; amd64

### `logstash:5.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.4 MB (221395582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:413f93f5f1f2bd92b64631df3ed19a945712eb6947f56d95ce4acb1172886e12`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 16:02:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:03:09 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 01 Mar 2017 16:03:09 GMT
ENV GOSU_VERSION=1.7
# Wed, 01 Mar 2017 16:03:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 01 Mar 2017 16:03:15 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 01 Mar 2017 16:04:51 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/logstash.list
# Thu, 02 Mar 2017 00:38:56 GMT
ENV LOGSTASH_VERSION=5.2.2
# Thu, 02 Mar 2017 00:38:56 GMT
ENV LOGSTASH_DEB_VERSION=1:5.2.2-1
# Thu, 02 Mar 2017 00:39:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Mar 2017 00:39:38 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Mar 2017 00:39:38 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Thu, 02 Mar 2017 00:39:40 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Thu, 02 Mar 2017 00:39:56 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Thu, 02 Mar 2017 00:39:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Mar 2017 00:39:56 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:174a19b62c3e5bf6e92723dcf1b2820f3ac1f8447f269a072b46b1ffddeb72b7`  
		Last Modified: Thu, 02 Mar 2017 00:41:04 GMT  
		Size: 1.4 MB (1357270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3d0c363309749127bdae277d60d9745b4d2436fffbe565be37b2faec086486`  
		Last Modified: Thu, 02 Mar 2017 00:41:03 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bf047e5993a1eee92ea6e7fc5aa538c01beec9fc54f6fabdf6c9b31596c0ae`  
		Last Modified: Thu, 02 Mar 2017 00:41:03 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289fa5f56b965ab885843f34c152cfae938e0564da19d03da68fa23d4605cd34`  
		Last Modified: Thu, 02 Mar 2017 00:41:03 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac19fc3d22378a02d48195deb8c1d87fb71a619bcee341ccdfabf8f54b6ea9b`  
		Last Modified: Thu, 02 Mar 2017 00:41:01 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152fa8260cff39257fced508267e1ad5abc9dbeb5a4465579a6da24de3241905`  
		Last Modified: Thu, 02 Mar 2017 00:41:19 GMT  
		Size: 95.0 MB (94951753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:328ae65e70519d2131a5e9b2c63c99c40d929da980b39a1628003b1098c4132c`  
		Last Modified: Thu, 02 Mar 2017 00:41:01 GMT  
		Size: 2.2 KB (2246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68c30b8ecf71237a391e33b143c8148fe18a425439f019ddd1a3000150c7a5f`  
		Last Modified: Thu, 02 Mar 2017 00:41:00 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5`

```console
$ docker pull logstash@sha256:41963687ba3dc31b866ed03f96fa4753496ddf16271b3e2d1d1c709d43c3500c
```

-	Platforms:
	-	linux; amd64

### `logstash:5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.4 MB (221395582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:413f93f5f1f2bd92b64631df3ed19a945712eb6947f56d95ce4acb1172886e12`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 16:02:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:03:09 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 01 Mar 2017 16:03:09 GMT
ENV GOSU_VERSION=1.7
# Wed, 01 Mar 2017 16:03:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 01 Mar 2017 16:03:15 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 01 Mar 2017 16:04:51 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/logstash.list
# Thu, 02 Mar 2017 00:38:56 GMT
ENV LOGSTASH_VERSION=5.2.2
# Thu, 02 Mar 2017 00:38:56 GMT
ENV LOGSTASH_DEB_VERSION=1:5.2.2-1
# Thu, 02 Mar 2017 00:39:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Mar 2017 00:39:38 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Mar 2017 00:39:38 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Thu, 02 Mar 2017 00:39:40 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Thu, 02 Mar 2017 00:39:56 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Thu, 02 Mar 2017 00:39:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Mar 2017 00:39:56 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:174a19b62c3e5bf6e92723dcf1b2820f3ac1f8447f269a072b46b1ffddeb72b7`  
		Last Modified: Thu, 02 Mar 2017 00:41:04 GMT  
		Size: 1.4 MB (1357270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3d0c363309749127bdae277d60d9745b4d2436fffbe565be37b2faec086486`  
		Last Modified: Thu, 02 Mar 2017 00:41:03 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bf047e5993a1eee92ea6e7fc5aa538c01beec9fc54f6fabdf6c9b31596c0ae`  
		Last Modified: Thu, 02 Mar 2017 00:41:03 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289fa5f56b965ab885843f34c152cfae938e0564da19d03da68fa23d4605cd34`  
		Last Modified: Thu, 02 Mar 2017 00:41:03 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac19fc3d22378a02d48195deb8c1d87fb71a619bcee341ccdfabf8f54b6ea9b`  
		Last Modified: Thu, 02 Mar 2017 00:41:01 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152fa8260cff39257fced508267e1ad5abc9dbeb5a4465579a6da24de3241905`  
		Last Modified: Thu, 02 Mar 2017 00:41:19 GMT  
		Size: 95.0 MB (94951753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:328ae65e70519d2131a5e9b2c63c99c40d929da980b39a1628003b1098c4132c`  
		Last Modified: Thu, 02 Mar 2017 00:41:01 GMT  
		Size: 2.2 KB (2246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68c30b8ecf71237a391e33b143c8148fe18a425439f019ddd1a3000150c7a5f`  
		Last Modified: Thu, 02 Mar 2017 00:41:00 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:latest`

```console
$ docker pull logstash@sha256:41963687ba3dc31b866ed03f96fa4753496ddf16271b3e2d1d1c709d43c3500c
```

-	Platforms:
	-	linux; amd64

### `logstash:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.4 MB (221395582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:413f93f5f1f2bd92b64631df3ed19a945712eb6947f56d95ce4acb1172886e12`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 16:02:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:03:09 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 01 Mar 2017 16:03:09 GMT
ENV GOSU_VERSION=1.7
# Wed, 01 Mar 2017 16:03:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 01 Mar 2017 16:03:15 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 01 Mar 2017 16:04:51 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/logstash.list
# Thu, 02 Mar 2017 00:38:56 GMT
ENV LOGSTASH_VERSION=5.2.2
# Thu, 02 Mar 2017 00:38:56 GMT
ENV LOGSTASH_DEB_VERSION=1:5.2.2-1
# Thu, 02 Mar 2017 00:39:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Mar 2017 00:39:38 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Mar 2017 00:39:38 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Thu, 02 Mar 2017 00:39:40 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Thu, 02 Mar 2017 00:39:56 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Thu, 02 Mar 2017 00:39:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Mar 2017 00:39:56 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:174a19b62c3e5bf6e92723dcf1b2820f3ac1f8447f269a072b46b1ffddeb72b7`  
		Last Modified: Thu, 02 Mar 2017 00:41:04 GMT  
		Size: 1.4 MB (1357270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3d0c363309749127bdae277d60d9745b4d2436fffbe565be37b2faec086486`  
		Last Modified: Thu, 02 Mar 2017 00:41:03 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bf047e5993a1eee92ea6e7fc5aa538c01beec9fc54f6fabdf6c9b31596c0ae`  
		Last Modified: Thu, 02 Mar 2017 00:41:03 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289fa5f56b965ab885843f34c152cfae938e0564da19d03da68fa23d4605cd34`  
		Last Modified: Thu, 02 Mar 2017 00:41:03 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac19fc3d22378a02d48195deb8c1d87fb71a619bcee341ccdfabf8f54b6ea9b`  
		Last Modified: Thu, 02 Mar 2017 00:41:01 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152fa8260cff39257fced508267e1ad5abc9dbeb5a4465579a6da24de3241905`  
		Last Modified: Thu, 02 Mar 2017 00:41:19 GMT  
		Size: 95.0 MB (94951753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:328ae65e70519d2131a5e9b2c63c99c40d929da980b39a1628003b1098c4132c`  
		Last Modified: Thu, 02 Mar 2017 00:41:01 GMT  
		Size: 2.2 KB (2246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68c30b8ecf71237a391e33b143c8148fe18a425439f019ddd1a3000150c7a5f`  
		Last Modified: Thu, 02 Mar 2017 00:41:00 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.2.2-alpine`

```console
$ docker pull logstash@sha256:55713590459b62d2a82d185ed66e9546f3b2322e31b18f3ada922a07b9421efb
```

-	Platforms:
	-	linux; amd64

### `logstash:5.2.2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.7 MB (138717271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d24541c1c3a83a4e098cde18b7a70c6ce932b9b18328d03282d54324b83146a1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 03 Mar 2017 22:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:11:52 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Sat, 04 Mar 2017 00:11:54 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Sat, 04 Mar 2017 00:11:55 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Mar 2017 00:11:56 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Sat, 04 Mar 2017 00:12:32 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Sat, 04 Mar 2017 00:12:33 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Mar 2017 00:12:33 GMT
ENV LOGSTASH_VERSION=5.2.2
# Sat, 04 Mar 2017 00:12:33 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.2.2.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.2.2.tar.gz.asc LOGSTASH_TARBALL_SHA1=20528f9d97e50917b994b4c9f26d518ec7249b8d
# Sat, 04 Mar 2017 00:12:48 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -r "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Sat, 04 Mar 2017 00:12:49 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Sat, 04 Mar 2017 00:12:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Mar 2017 00:12:49 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd134db5e982d5650745e9479866c856f24b892a92c4bfad3f3de6fd1bb7cc6d`  
		Last Modified: Sat, 04 Mar 2017 04:20:58 GMT  
		Size: 39.7 MB (39678331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd2ded033a43bd1b1b3643e8ac6d4029fc942f1086a25b252a0c916771e4cda`  
		Last Modified: Sat, 04 Mar 2017 07:10:40 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de47cf8bc616e13dc72cd173263501b3b9ac2276df9691e621d7f3f4ba890b8`  
		Last Modified: Sat, 04 Mar 2017 07:10:42 GMT  
		Size: 1.8 MB (1802336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af0e95fdcf9342be19f3ab617213ec2fa4ef0510348f94de3d543a4e25b27ab`  
		Last Modified: Sat, 04 Mar 2017 07:10:40 GMT  
		Size: 88.1 KB (88052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02508b7419b555c7b99a1e09850df2d075ed541a61b5cc8c4b74423fb1bb777`  
		Last Modified: Sat, 04 Mar 2017 07:13:49 GMT  
		Size: 94.8 MB (94833360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5450ce8e47c8477aa66b2a6f77ab780d8e3dca9b770c712f833f8727fb972b6a`  
		Last Modified: Sat, 04 Mar 2017 07:13:20 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.2-alpine`

```console
$ docker pull logstash@sha256:55713590459b62d2a82d185ed66e9546f3b2322e31b18f3ada922a07b9421efb
```

-	Platforms:
	-	linux; amd64

### `logstash:5.2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.7 MB (138717271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d24541c1c3a83a4e098cde18b7a70c6ce932b9b18328d03282d54324b83146a1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 03 Mar 2017 22:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:11:52 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Sat, 04 Mar 2017 00:11:54 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Sat, 04 Mar 2017 00:11:55 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Mar 2017 00:11:56 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Sat, 04 Mar 2017 00:12:32 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Sat, 04 Mar 2017 00:12:33 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Mar 2017 00:12:33 GMT
ENV LOGSTASH_VERSION=5.2.2
# Sat, 04 Mar 2017 00:12:33 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.2.2.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.2.2.tar.gz.asc LOGSTASH_TARBALL_SHA1=20528f9d97e50917b994b4c9f26d518ec7249b8d
# Sat, 04 Mar 2017 00:12:48 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -r "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Sat, 04 Mar 2017 00:12:49 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Sat, 04 Mar 2017 00:12:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Mar 2017 00:12:49 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd134db5e982d5650745e9479866c856f24b892a92c4bfad3f3de6fd1bb7cc6d`  
		Last Modified: Sat, 04 Mar 2017 04:20:58 GMT  
		Size: 39.7 MB (39678331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd2ded033a43bd1b1b3643e8ac6d4029fc942f1086a25b252a0c916771e4cda`  
		Last Modified: Sat, 04 Mar 2017 07:10:40 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de47cf8bc616e13dc72cd173263501b3b9ac2276df9691e621d7f3f4ba890b8`  
		Last Modified: Sat, 04 Mar 2017 07:10:42 GMT  
		Size: 1.8 MB (1802336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af0e95fdcf9342be19f3ab617213ec2fa4ef0510348f94de3d543a4e25b27ab`  
		Last Modified: Sat, 04 Mar 2017 07:10:40 GMT  
		Size: 88.1 KB (88052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02508b7419b555c7b99a1e09850df2d075ed541a61b5cc8c4b74423fb1bb777`  
		Last Modified: Sat, 04 Mar 2017 07:13:49 GMT  
		Size: 94.8 MB (94833360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5450ce8e47c8477aa66b2a6f77ab780d8e3dca9b770c712f833f8727fb972b6a`  
		Last Modified: Sat, 04 Mar 2017 07:13:20 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5-alpine`

```console
$ docker pull logstash@sha256:55713590459b62d2a82d185ed66e9546f3b2322e31b18f3ada922a07b9421efb
```

-	Platforms:
	-	linux; amd64

### `logstash:5-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.7 MB (138717271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d24541c1c3a83a4e098cde18b7a70c6ce932b9b18328d03282d54324b83146a1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 03 Mar 2017 22:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:11:52 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Sat, 04 Mar 2017 00:11:54 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Sat, 04 Mar 2017 00:11:55 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Mar 2017 00:11:56 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Sat, 04 Mar 2017 00:12:32 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Sat, 04 Mar 2017 00:12:33 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Mar 2017 00:12:33 GMT
ENV LOGSTASH_VERSION=5.2.2
# Sat, 04 Mar 2017 00:12:33 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.2.2.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.2.2.tar.gz.asc LOGSTASH_TARBALL_SHA1=20528f9d97e50917b994b4c9f26d518ec7249b8d
# Sat, 04 Mar 2017 00:12:48 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -r "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Sat, 04 Mar 2017 00:12:49 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Sat, 04 Mar 2017 00:12:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Mar 2017 00:12:49 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd134db5e982d5650745e9479866c856f24b892a92c4bfad3f3de6fd1bb7cc6d`  
		Last Modified: Sat, 04 Mar 2017 04:20:58 GMT  
		Size: 39.7 MB (39678331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd2ded033a43bd1b1b3643e8ac6d4029fc942f1086a25b252a0c916771e4cda`  
		Last Modified: Sat, 04 Mar 2017 07:10:40 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de47cf8bc616e13dc72cd173263501b3b9ac2276df9691e621d7f3f4ba890b8`  
		Last Modified: Sat, 04 Mar 2017 07:10:42 GMT  
		Size: 1.8 MB (1802336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af0e95fdcf9342be19f3ab617213ec2fa4ef0510348f94de3d543a4e25b27ab`  
		Last Modified: Sat, 04 Mar 2017 07:10:40 GMT  
		Size: 88.1 KB (88052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02508b7419b555c7b99a1e09850df2d075ed541a61b5cc8c4b74423fb1bb777`  
		Last Modified: Sat, 04 Mar 2017 07:13:49 GMT  
		Size: 94.8 MB (94833360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5450ce8e47c8477aa66b2a6f77ab780d8e3dca9b770c712f833f8727fb972b6a`  
		Last Modified: Sat, 04 Mar 2017 07:13:20 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:alpine`

```console
$ docker pull logstash@sha256:55713590459b62d2a82d185ed66e9546f3b2322e31b18f3ada922a07b9421efb
```

-	Platforms:
	-	linux; amd64

### `logstash:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.7 MB (138717271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d24541c1c3a83a4e098cde18b7a70c6ce932b9b18328d03282d54324b83146a1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 03 Mar 2017 22:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:11:52 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Sat, 04 Mar 2017 00:11:54 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Sat, 04 Mar 2017 00:11:55 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Mar 2017 00:11:56 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Sat, 04 Mar 2017 00:12:32 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Sat, 04 Mar 2017 00:12:33 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Mar 2017 00:12:33 GMT
ENV LOGSTASH_VERSION=5.2.2
# Sat, 04 Mar 2017 00:12:33 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.2.2.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.2.2.tar.gz.asc LOGSTASH_TARBALL_SHA1=20528f9d97e50917b994b4c9f26d518ec7249b8d
# Sat, 04 Mar 2017 00:12:48 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -r "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Sat, 04 Mar 2017 00:12:49 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Sat, 04 Mar 2017 00:12:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Mar 2017 00:12:49 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd134db5e982d5650745e9479866c856f24b892a92c4bfad3f3de6fd1bb7cc6d`  
		Last Modified: Sat, 04 Mar 2017 04:20:58 GMT  
		Size: 39.7 MB (39678331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd2ded033a43bd1b1b3643e8ac6d4029fc942f1086a25b252a0c916771e4cda`  
		Last Modified: Sat, 04 Mar 2017 07:10:40 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de47cf8bc616e13dc72cd173263501b3b9ac2276df9691e621d7f3f4ba890b8`  
		Last Modified: Sat, 04 Mar 2017 07:10:42 GMT  
		Size: 1.8 MB (1802336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af0e95fdcf9342be19f3ab617213ec2fa4ef0510348f94de3d543a4e25b27ab`  
		Last Modified: Sat, 04 Mar 2017 07:10:40 GMT  
		Size: 88.1 KB (88052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02508b7419b555c7b99a1e09850df2d075ed541a61b5cc8c4b74423fb1bb777`  
		Last Modified: Sat, 04 Mar 2017 07:13:49 GMT  
		Size: 94.8 MB (94833360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5450ce8e47c8477aa66b2a6f77ab780d8e3dca9b770c712f833f8727fb972b6a`  
		Last Modified: Sat, 04 Mar 2017 07:13:20 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.4.1`

```console
$ docker pull logstash@sha256:5a0a971262818ecbe370c3bc9d18f55a260eec946d0a7968c9fdf5a58af6f2f5
```

-	Platforms:
	-	linux; amd64

### `logstash:2.4.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.4 MB (211364939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:657deeb93e995bb544d79f699f0d90fa8648e8fe44315055aff0558185bfae49`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 16:02:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:03:09 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 01 Mar 2017 16:03:09 GMT
ENV GOSU_VERSION=1.7
# Wed, 01 Mar 2017 16:03:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 01 Mar 2017 16:03:15 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 01 Mar 2017 16:04:01 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.4/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Wed, 01 Mar 2017 16:04:01 GMT
ENV LOGSTASH_VERSION=2.4.1
# Wed, 01 Mar 2017 16:04:02 GMT
ENV LOGSTASH_DEB_VERSION=1:2.4.1-1
# Wed, 01 Mar 2017 16:04:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:04:32 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 16:04:32 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 01 Mar 2017 16:04:33 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Wed, 01 Mar 2017 16:04:49 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Wed, 01 Mar 2017 16:04:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 16:04:50 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:174a19b62c3e5bf6e92723dcf1b2820f3ac1f8447f269a072b46b1ffddeb72b7`  
		Last Modified: Thu, 02 Mar 2017 00:41:04 GMT  
		Size: 1.4 MB (1357270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3d0c363309749127bdae277d60d9745b4d2436fffbe565be37b2faec086486`  
		Last Modified: Thu, 02 Mar 2017 00:41:03 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bf047e5993a1eee92ea6e7fc5aa538c01beec9fc54f6fabdf6c9b31596c0ae`  
		Last Modified: Thu, 02 Mar 2017 00:41:03 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289fa5f56b965ab885843f34c152cfae938e0564da19d03da68fa23d4605cd34`  
		Last Modified: Thu, 02 Mar 2017 00:41:03 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a693502f2bb0cc2fbe1289eccb367b197d4f229548684377b2104d9d7f02138a`  
		Last Modified: Thu, 02 Mar 2017 00:45:48 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03753ce99d781c75ec6d40b04b1398f5f2221d4860b8adac1bb3bbc7e3ff1e99`  
		Last Modified: Thu, 02 Mar 2017 00:46:08 GMT  
		Size: 84.9 MB (84923363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1caaafc62912427b38d0650577fd8966f948dcc96d58f81172cfe26cf4e9b903`  
		Last Modified: Thu, 02 Mar 2017 00:45:48 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.4`

```console
$ docker pull logstash@sha256:5a0a971262818ecbe370c3bc9d18f55a260eec946d0a7968c9fdf5a58af6f2f5
```

-	Platforms:
	-	linux; amd64

### `logstash:2.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.4 MB (211364939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:657deeb93e995bb544d79f699f0d90fa8648e8fe44315055aff0558185bfae49`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 16:02:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:03:09 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 01 Mar 2017 16:03:09 GMT
ENV GOSU_VERSION=1.7
# Wed, 01 Mar 2017 16:03:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 01 Mar 2017 16:03:15 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 01 Mar 2017 16:04:01 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.4/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Wed, 01 Mar 2017 16:04:01 GMT
ENV LOGSTASH_VERSION=2.4.1
# Wed, 01 Mar 2017 16:04:02 GMT
ENV LOGSTASH_DEB_VERSION=1:2.4.1-1
# Wed, 01 Mar 2017 16:04:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:04:32 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 16:04:32 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 01 Mar 2017 16:04:33 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Wed, 01 Mar 2017 16:04:49 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Wed, 01 Mar 2017 16:04:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 16:04:50 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:174a19b62c3e5bf6e92723dcf1b2820f3ac1f8447f269a072b46b1ffddeb72b7`  
		Last Modified: Thu, 02 Mar 2017 00:41:04 GMT  
		Size: 1.4 MB (1357270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3d0c363309749127bdae277d60d9745b4d2436fffbe565be37b2faec086486`  
		Last Modified: Thu, 02 Mar 2017 00:41:03 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bf047e5993a1eee92ea6e7fc5aa538c01beec9fc54f6fabdf6c9b31596c0ae`  
		Last Modified: Thu, 02 Mar 2017 00:41:03 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289fa5f56b965ab885843f34c152cfae938e0564da19d03da68fa23d4605cd34`  
		Last Modified: Thu, 02 Mar 2017 00:41:03 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a693502f2bb0cc2fbe1289eccb367b197d4f229548684377b2104d9d7f02138a`  
		Last Modified: Thu, 02 Mar 2017 00:45:48 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03753ce99d781c75ec6d40b04b1398f5f2221d4860b8adac1bb3bbc7e3ff1e99`  
		Last Modified: Thu, 02 Mar 2017 00:46:08 GMT  
		Size: 84.9 MB (84923363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1caaafc62912427b38d0650577fd8966f948dcc96d58f81172cfe26cf4e9b903`  
		Last Modified: Thu, 02 Mar 2017 00:45:48 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2`

```console
$ docker pull logstash@sha256:5a0a971262818ecbe370c3bc9d18f55a260eec946d0a7968c9fdf5a58af6f2f5
```

-	Platforms:
	-	linux; amd64

### `logstash:2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.4 MB (211364939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:657deeb93e995bb544d79f699f0d90fa8648e8fe44315055aff0558185bfae49`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 16:02:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:03:09 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 01 Mar 2017 16:03:09 GMT
ENV GOSU_VERSION=1.7
# Wed, 01 Mar 2017 16:03:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 01 Mar 2017 16:03:15 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 01 Mar 2017 16:04:01 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.4/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Wed, 01 Mar 2017 16:04:01 GMT
ENV LOGSTASH_VERSION=2.4.1
# Wed, 01 Mar 2017 16:04:02 GMT
ENV LOGSTASH_DEB_VERSION=1:2.4.1-1
# Wed, 01 Mar 2017 16:04:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:04:32 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 16:04:32 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 01 Mar 2017 16:04:33 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Wed, 01 Mar 2017 16:04:49 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Wed, 01 Mar 2017 16:04:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 16:04:50 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:174a19b62c3e5bf6e92723dcf1b2820f3ac1f8447f269a072b46b1ffddeb72b7`  
		Last Modified: Thu, 02 Mar 2017 00:41:04 GMT  
		Size: 1.4 MB (1357270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3d0c363309749127bdae277d60d9745b4d2436fffbe565be37b2faec086486`  
		Last Modified: Thu, 02 Mar 2017 00:41:03 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bf047e5993a1eee92ea6e7fc5aa538c01beec9fc54f6fabdf6c9b31596c0ae`  
		Last Modified: Thu, 02 Mar 2017 00:41:03 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289fa5f56b965ab885843f34c152cfae938e0564da19d03da68fa23d4605cd34`  
		Last Modified: Thu, 02 Mar 2017 00:41:03 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a693502f2bb0cc2fbe1289eccb367b197d4f229548684377b2104d9d7f02138a`  
		Last Modified: Thu, 02 Mar 2017 00:45:48 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03753ce99d781c75ec6d40b04b1398f5f2221d4860b8adac1bb3bbc7e3ff1e99`  
		Last Modified: Thu, 02 Mar 2017 00:46:08 GMT  
		Size: 84.9 MB (84923363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1caaafc62912427b38d0650577fd8966f948dcc96d58f81172cfe26cf4e9b903`  
		Last Modified: Thu, 02 Mar 2017 00:45:48 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.4.1-alpine`

```console
$ docker pull logstash@sha256:bb2a0ed5c9b2a032bd8b689b5aa67535d7d097a52b83e8ceb4559edb1cef3963
```

-	Platforms:
	-	linux; amd64

### `logstash:2.4.1-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.5 MB (128455527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d18060301ee225b5b59afd90e48b951db22fd6e34e36c9772d6ff237fa756be3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 03 Mar 2017 22:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:11:52 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Sat, 04 Mar 2017 00:11:54 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Sat, 04 Mar 2017 00:11:55 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Mar 2017 00:11:56 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Sat, 04 Mar 2017 00:11:56 GMT
ENV LOGSTASH_PATH=/opt/logstash/bin
# Sat, 04 Mar 2017 00:11:56 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Mar 2017 00:12:14 GMT
ENV LOGSTASH_VERSION=2.4.1
# Sat, 04 Mar 2017 00:12:15 GMT
ENV LOGSTASH_TARBALL=https://download.elastic.co/logstash/logstash/logstash-2.4.1.tar.gz LOGSTASH_TARBALL_ASC= LOGSTASH_TARBALL_SHA1=5ee4f3fa0ad4b182b3f00b4181a20c4e31a907b4
# Sat, 04 Mar 2017 00:12:30 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -r "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Sat, 04 Mar 2017 00:12:31 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Sat, 04 Mar 2017 00:12:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Mar 2017 00:12:32 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd134db5e982d5650745e9479866c856f24b892a92c4bfad3f3de6fd1bb7cc6d`  
		Last Modified: Sat, 04 Mar 2017 04:20:58 GMT  
		Size: 39.7 MB (39678331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd2ded033a43bd1b1b3643e8ac6d4029fc942f1086a25b252a0c916771e4cda`  
		Last Modified: Sat, 04 Mar 2017 07:10:40 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de47cf8bc616e13dc72cd173263501b3b9ac2276df9691e621d7f3f4ba890b8`  
		Last Modified: Sat, 04 Mar 2017 07:10:42 GMT  
		Size: 1.8 MB (1802336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af0e95fdcf9342be19f3ab617213ec2fa4ef0510348f94de3d543a4e25b27ab`  
		Last Modified: Sat, 04 Mar 2017 07:10:40 GMT  
		Size: 88.1 KB (88052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16e3c8bce2624b178001f892648b987c177eadfd8395f0d8134c4767248e774b`  
		Last Modified: Sat, 04 Mar 2017 07:12:22 GMT  
		Size: 84.6 MB (84571617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1618ecb73bcbed6338e50be9dced4bae9a7ca84b7efa4f4a8aefedc72624d26e`  
		Last Modified: Sat, 04 Mar 2017 07:11:58 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.4-alpine`

```console
$ docker pull logstash@sha256:bb2a0ed5c9b2a032bd8b689b5aa67535d7d097a52b83e8ceb4559edb1cef3963
```

-	Platforms:
	-	linux; amd64

### `logstash:2.4-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.5 MB (128455527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d18060301ee225b5b59afd90e48b951db22fd6e34e36c9772d6ff237fa756be3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 03 Mar 2017 22:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:11:52 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Sat, 04 Mar 2017 00:11:54 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Sat, 04 Mar 2017 00:11:55 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Mar 2017 00:11:56 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Sat, 04 Mar 2017 00:11:56 GMT
ENV LOGSTASH_PATH=/opt/logstash/bin
# Sat, 04 Mar 2017 00:11:56 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Mar 2017 00:12:14 GMT
ENV LOGSTASH_VERSION=2.4.1
# Sat, 04 Mar 2017 00:12:15 GMT
ENV LOGSTASH_TARBALL=https://download.elastic.co/logstash/logstash/logstash-2.4.1.tar.gz LOGSTASH_TARBALL_ASC= LOGSTASH_TARBALL_SHA1=5ee4f3fa0ad4b182b3f00b4181a20c4e31a907b4
# Sat, 04 Mar 2017 00:12:30 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -r "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Sat, 04 Mar 2017 00:12:31 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Sat, 04 Mar 2017 00:12:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Mar 2017 00:12:32 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd134db5e982d5650745e9479866c856f24b892a92c4bfad3f3de6fd1bb7cc6d`  
		Last Modified: Sat, 04 Mar 2017 04:20:58 GMT  
		Size: 39.7 MB (39678331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd2ded033a43bd1b1b3643e8ac6d4029fc942f1086a25b252a0c916771e4cda`  
		Last Modified: Sat, 04 Mar 2017 07:10:40 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de47cf8bc616e13dc72cd173263501b3b9ac2276df9691e621d7f3f4ba890b8`  
		Last Modified: Sat, 04 Mar 2017 07:10:42 GMT  
		Size: 1.8 MB (1802336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af0e95fdcf9342be19f3ab617213ec2fa4ef0510348f94de3d543a4e25b27ab`  
		Last Modified: Sat, 04 Mar 2017 07:10:40 GMT  
		Size: 88.1 KB (88052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16e3c8bce2624b178001f892648b987c177eadfd8395f0d8134c4767248e774b`  
		Last Modified: Sat, 04 Mar 2017 07:12:22 GMT  
		Size: 84.6 MB (84571617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1618ecb73bcbed6338e50be9dced4bae9a7ca84b7efa4f4a8aefedc72624d26e`  
		Last Modified: Sat, 04 Mar 2017 07:11:58 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2-alpine`

```console
$ docker pull logstash@sha256:bb2a0ed5c9b2a032bd8b689b5aa67535d7d097a52b83e8ceb4559edb1cef3963
```

-	Platforms:
	-	linux; amd64

### `logstash:2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.5 MB (128455527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d18060301ee225b5b59afd90e48b951db22fd6e34e36c9772d6ff237fa756be3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 03 Mar 2017 22:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:11:52 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Sat, 04 Mar 2017 00:11:54 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Sat, 04 Mar 2017 00:11:55 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Mar 2017 00:11:56 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Sat, 04 Mar 2017 00:11:56 GMT
ENV LOGSTASH_PATH=/opt/logstash/bin
# Sat, 04 Mar 2017 00:11:56 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Mar 2017 00:12:14 GMT
ENV LOGSTASH_VERSION=2.4.1
# Sat, 04 Mar 2017 00:12:15 GMT
ENV LOGSTASH_TARBALL=https://download.elastic.co/logstash/logstash/logstash-2.4.1.tar.gz LOGSTASH_TARBALL_ASC= LOGSTASH_TARBALL_SHA1=5ee4f3fa0ad4b182b3f00b4181a20c4e31a907b4
# Sat, 04 Mar 2017 00:12:30 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -r "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Sat, 04 Mar 2017 00:12:31 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Sat, 04 Mar 2017 00:12:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Mar 2017 00:12:32 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd134db5e982d5650745e9479866c856f24b892a92c4bfad3f3de6fd1bb7cc6d`  
		Last Modified: Sat, 04 Mar 2017 04:20:58 GMT  
		Size: 39.7 MB (39678331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd2ded033a43bd1b1b3643e8ac6d4029fc942f1086a25b252a0c916771e4cda`  
		Last Modified: Sat, 04 Mar 2017 07:10:40 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de47cf8bc616e13dc72cd173263501b3b9ac2276df9691e621d7f3f4ba890b8`  
		Last Modified: Sat, 04 Mar 2017 07:10:42 GMT  
		Size: 1.8 MB (1802336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af0e95fdcf9342be19f3ab617213ec2fa4ef0510348f94de3d543a4e25b27ab`  
		Last Modified: Sat, 04 Mar 2017 07:10:40 GMT  
		Size: 88.1 KB (88052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16e3c8bce2624b178001f892648b987c177eadfd8395f0d8134c4767248e774b`  
		Last Modified: Sat, 04 Mar 2017 07:12:22 GMT  
		Size: 84.6 MB (84571617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1618ecb73bcbed6338e50be9dced4bae9a7ca84b7efa4f4a8aefedc72624d26e`  
		Last Modified: Sat, 04 Mar 2017 07:11:58 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:1.5.6`

```console
$ docker pull logstash@sha256:fe51ca6485b5a967d83de9da9bc9f1636144aef570eae3c4bcbd6ae52562c3e7
```

-	Platforms:
	-	linux; amd64

### `logstash:1.5.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.2 MB (217195516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9173fd84e27984e9d52e89b49f680fbb255b9fafb1c83ffb0122b5d8d59458a9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 16:02:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:03:09 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 01 Mar 2017 16:03:09 GMT
ENV GOSU_VERSION=1.7
# Wed, 01 Mar 2017 16:03:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 01 Mar 2017 16:03:15 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 01 Mar 2017 16:03:16 GMT
RUN echo 'deb http://packages.elastic.co/logstash/1.5/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Wed, 01 Mar 2017 16:03:16 GMT
ENV LOGSTASH_VERSION=1.5.6
# Wed, 01 Mar 2017 16:03:17 GMT
ENV LOGSTASH_DEB_VERSION=1:1.5.6-1
# Wed, 01 Mar 2017 16:03:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:03:42 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 16:03:42 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 01 Mar 2017 16:03:43 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Wed, 01 Mar 2017 16:03:44 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Wed, 01 Mar 2017 16:03:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 16:03:59 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:174a19b62c3e5bf6e92723dcf1b2820f3ac1f8447f269a072b46b1ffddeb72b7`  
		Last Modified: Thu, 02 Mar 2017 00:41:04 GMT  
		Size: 1.4 MB (1357270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3d0c363309749127bdae277d60d9745b4d2436fffbe565be37b2faec086486`  
		Last Modified: Thu, 02 Mar 2017 00:41:03 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bf047e5993a1eee92ea6e7fc5aa538c01beec9fc54f6fabdf6c9b31596c0ae`  
		Last Modified: Thu, 02 Mar 2017 00:41:03 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289fa5f56b965ab885843f34c152cfae938e0564da19d03da68fa23d4605cd34`  
		Last Modified: Thu, 02 Mar 2017 00:41:03 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b448d199423e0500fa4752b23e82ac65b2e2abaf907cb67eb67b7f312584be13`  
		Last Modified: Thu, 02 Mar 2017 00:49:38 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc93bac13ec627d29b2e1730d155f24ff373f7aa108569abb4dd6e4e897551e6`  
		Last Modified: Thu, 02 Mar 2017 00:49:59 GMT  
		Size: 90.8 MB (90753938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c12734f68aa50db4537122e71617d821eab1f55216b08e18dce652f83f2959d`  
		Last Modified: Thu, 02 Mar 2017 00:49:38 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:1.5`

```console
$ docker pull logstash@sha256:fe51ca6485b5a967d83de9da9bc9f1636144aef570eae3c4bcbd6ae52562c3e7
```

-	Platforms:
	-	linux; amd64

### `logstash:1.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.2 MB (217195516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9173fd84e27984e9d52e89b49f680fbb255b9fafb1c83ffb0122b5d8d59458a9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 16:02:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:03:09 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 01 Mar 2017 16:03:09 GMT
ENV GOSU_VERSION=1.7
# Wed, 01 Mar 2017 16:03:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 01 Mar 2017 16:03:15 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 01 Mar 2017 16:03:16 GMT
RUN echo 'deb http://packages.elastic.co/logstash/1.5/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Wed, 01 Mar 2017 16:03:16 GMT
ENV LOGSTASH_VERSION=1.5.6
# Wed, 01 Mar 2017 16:03:17 GMT
ENV LOGSTASH_DEB_VERSION=1:1.5.6-1
# Wed, 01 Mar 2017 16:03:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:03:42 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 16:03:42 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 01 Mar 2017 16:03:43 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Wed, 01 Mar 2017 16:03:44 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Wed, 01 Mar 2017 16:03:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 16:03:59 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:174a19b62c3e5bf6e92723dcf1b2820f3ac1f8447f269a072b46b1ffddeb72b7`  
		Last Modified: Thu, 02 Mar 2017 00:41:04 GMT  
		Size: 1.4 MB (1357270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3d0c363309749127bdae277d60d9745b4d2436fffbe565be37b2faec086486`  
		Last Modified: Thu, 02 Mar 2017 00:41:03 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bf047e5993a1eee92ea6e7fc5aa538c01beec9fc54f6fabdf6c9b31596c0ae`  
		Last Modified: Thu, 02 Mar 2017 00:41:03 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289fa5f56b965ab885843f34c152cfae938e0564da19d03da68fa23d4605cd34`  
		Last Modified: Thu, 02 Mar 2017 00:41:03 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b448d199423e0500fa4752b23e82ac65b2e2abaf907cb67eb67b7f312584be13`  
		Last Modified: Thu, 02 Mar 2017 00:49:38 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc93bac13ec627d29b2e1730d155f24ff373f7aa108569abb4dd6e4e897551e6`  
		Last Modified: Thu, 02 Mar 2017 00:49:59 GMT  
		Size: 90.8 MB (90753938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c12734f68aa50db4537122e71617d821eab1f55216b08e18dce652f83f2959d`  
		Last Modified: Thu, 02 Mar 2017 00:49:38 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:1`

```console
$ docker pull logstash@sha256:fe51ca6485b5a967d83de9da9bc9f1636144aef570eae3c4bcbd6ae52562c3e7
```

-	Platforms:
	-	linux; amd64

### `logstash:1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.2 MB (217195516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9173fd84e27984e9d52e89b49f680fbb255b9fafb1c83ffb0122b5d8d59458a9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:13 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 15:25:13 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:25:15 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:25:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:36 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:38 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 16:02:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq3 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:03:09 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Wed, 01 Mar 2017 16:03:09 GMT
ENV GOSU_VERSION=1.7
# Wed, 01 Mar 2017 16:03:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 01 Mar 2017 16:03:15 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 01 Mar 2017 16:03:16 GMT
RUN echo 'deb http://packages.elastic.co/logstash/1.5/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Wed, 01 Mar 2017 16:03:16 GMT
ENV LOGSTASH_VERSION=1.5.6
# Wed, 01 Mar 2017 16:03:17 GMT
ENV LOGSTASH_DEB_VERSION=1:1.5.6-1
# Wed, 01 Mar 2017 16:03:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 16:03:42 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Mar 2017 16:03:42 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 01 Mar 2017 16:03:43 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Wed, 01 Mar 2017 16:03:44 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Wed, 01 Mar 2017 16:03:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 16:03:59 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8d00ed730f283f3b242d69afa12b3b654475f2de8cbb137f972f2645e076bf`  
		Last Modified: Tue, 28 Feb 2017 21:56:45 GMT  
		Size: 566.8 KB (566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d79e1ef0b6a66ac926f1f529420d34804d99ba1a9379ed112e8220e958416c`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b476804250de0d7f45e721809576a6a0ce1f5c5db459b6e1de63cf74dff1921`  
		Last Modified: Tue, 28 Feb 2017 22:02:53 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a3a92baa1ba5375d758caa6cd32c7cc64074fb1a87f9678542b6ba8fd551582`  
		Last Modified: Tue, 28 Feb 2017 22:03:09 GMT  
		Size: 53.5 MB (53518516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303c34abd3fc952153ec0116fe304c25360ad61e548d5c61276d5a7d9409331a`  
		Last Modified: Tue, 28 Feb 2017 22:02:54 GMT  
		Size: 289.0 KB (289039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:174a19b62c3e5bf6e92723dcf1b2820f3ac1f8447f269a072b46b1ffddeb72b7`  
		Last Modified: Thu, 02 Mar 2017 00:41:04 GMT  
		Size: 1.4 MB (1357270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3d0c363309749127bdae277d60d9745b4d2436fffbe565be37b2faec086486`  
		Last Modified: Thu, 02 Mar 2017 00:41:03 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bf047e5993a1eee92ea6e7fc5aa538c01beec9fc54f6fabdf6c9b31596c0ae`  
		Last Modified: Thu, 02 Mar 2017 00:41:03 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289fa5f56b965ab885843f34c152cfae938e0564da19d03da68fa23d4605cd34`  
		Last Modified: Thu, 02 Mar 2017 00:41:03 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b448d199423e0500fa4752b23e82ac65b2e2abaf907cb67eb67b7f312584be13`  
		Last Modified: Thu, 02 Mar 2017 00:49:38 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc93bac13ec627d29b2e1730d155f24ff373f7aa108569abb4dd6e4e897551e6`  
		Last Modified: Thu, 02 Mar 2017 00:49:59 GMT  
		Size: 90.8 MB (90753938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c12734f68aa50db4537122e71617d821eab1f55216b08e18dce652f83f2959d`  
		Last Modified: Thu, 02 Mar 2017 00:49:38 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:1.5.6-alpine`

```console
$ docker pull logstash@sha256:b4b471a15f781e52cd3b65ea7d525369e3700480a27b57e62d704af28fae955d
```

-	Platforms:
	-	linux; amd64

### `logstash:1.5.6-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134346178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:340f57d0d46ff8e3fb5fb980e8dc10e8d7e1fe946d84846ea9ed7759c28d5079`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 03 Mar 2017 22:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:11:52 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Sat, 04 Mar 2017 00:11:54 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Sat, 04 Mar 2017 00:11:55 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Mar 2017 00:11:56 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Sat, 04 Mar 2017 00:11:56 GMT
ENV LOGSTASH_PATH=/opt/logstash/bin
# Sat, 04 Mar 2017 00:11:56 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Mar 2017 00:11:56 GMT
ENV LOGSTASH_VERSION=1.5.6
# Sat, 04 Mar 2017 00:11:57 GMT
ENV LOGSTASH_TARBALL=https://download.elastic.co/logstash/logstash/logstash-1.5.6.tar.gz LOGSTASH_TARBALL_ASC= LOGSTASH_TARBALL_SHA1=f3e4342f496e0d7e709de231daf624eb1fd80873
# Sat, 04 Mar 2017 00:12:13 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -r "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Sat, 04 Mar 2017 00:12:13 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Sat, 04 Mar 2017 00:12:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Mar 2017 00:12:14 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd134db5e982d5650745e9479866c856f24b892a92c4bfad3f3de6fd1bb7cc6d`  
		Last Modified: Sat, 04 Mar 2017 04:20:58 GMT  
		Size: 39.7 MB (39678331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd2ded033a43bd1b1b3643e8ac6d4029fc942f1086a25b252a0c916771e4cda`  
		Last Modified: Sat, 04 Mar 2017 07:10:40 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de47cf8bc616e13dc72cd173263501b3b9ac2276df9691e621d7f3f4ba890b8`  
		Last Modified: Sat, 04 Mar 2017 07:10:42 GMT  
		Size: 1.8 MB (1802336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af0e95fdcf9342be19f3ab617213ec2fa4ef0510348f94de3d543a4e25b27ab`  
		Last Modified: Sat, 04 Mar 2017 07:10:40 GMT  
		Size: 88.1 KB (88052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570129d6fdc7f9f5a299fa6d961a59e1426ec7227d035dbcd990cb20e5cee49e`  
		Last Modified: Sat, 04 Mar 2017 07:10:59 GMT  
		Size: 90.5 MB (90462269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff637e135d2939b55804e91fb375a3b727395faeb6bbd351048817cc95709e32`  
		Last Modified: Sat, 04 Mar 2017 07:10:40 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:1.5-alpine`

```console
$ docker pull logstash@sha256:b4b471a15f781e52cd3b65ea7d525369e3700480a27b57e62d704af28fae955d
```

-	Platforms:
	-	linux; amd64

### `logstash:1.5-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134346178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:340f57d0d46ff8e3fb5fb980e8dc10e8d7e1fe946d84846ea9ed7759c28d5079`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 03 Mar 2017 22:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:11:52 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Sat, 04 Mar 2017 00:11:54 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Sat, 04 Mar 2017 00:11:55 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Mar 2017 00:11:56 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Sat, 04 Mar 2017 00:11:56 GMT
ENV LOGSTASH_PATH=/opt/logstash/bin
# Sat, 04 Mar 2017 00:11:56 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Mar 2017 00:11:56 GMT
ENV LOGSTASH_VERSION=1.5.6
# Sat, 04 Mar 2017 00:11:57 GMT
ENV LOGSTASH_TARBALL=https://download.elastic.co/logstash/logstash/logstash-1.5.6.tar.gz LOGSTASH_TARBALL_ASC= LOGSTASH_TARBALL_SHA1=f3e4342f496e0d7e709de231daf624eb1fd80873
# Sat, 04 Mar 2017 00:12:13 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -r "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Sat, 04 Mar 2017 00:12:13 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Sat, 04 Mar 2017 00:12:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Mar 2017 00:12:14 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd134db5e982d5650745e9479866c856f24b892a92c4bfad3f3de6fd1bb7cc6d`  
		Last Modified: Sat, 04 Mar 2017 04:20:58 GMT  
		Size: 39.7 MB (39678331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd2ded033a43bd1b1b3643e8ac6d4029fc942f1086a25b252a0c916771e4cda`  
		Last Modified: Sat, 04 Mar 2017 07:10:40 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de47cf8bc616e13dc72cd173263501b3b9ac2276df9691e621d7f3f4ba890b8`  
		Last Modified: Sat, 04 Mar 2017 07:10:42 GMT  
		Size: 1.8 MB (1802336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af0e95fdcf9342be19f3ab617213ec2fa4ef0510348f94de3d543a4e25b27ab`  
		Last Modified: Sat, 04 Mar 2017 07:10:40 GMT  
		Size: 88.1 KB (88052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570129d6fdc7f9f5a299fa6d961a59e1426ec7227d035dbcd990cb20e5cee49e`  
		Last Modified: Sat, 04 Mar 2017 07:10:59 GMT  
		Size: 90.5 MB (90462269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff637e135d2939b55804e91fb375a3b727395faeb6bbd351048817cc95709e32`  
		Last Modified: Sat, 04 Mar 2017 07:10:40 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:1-alpine`

```console
$ docker pull logstash@sha256:b4b471a15f781e52cd3b65ea7d525369e3700480a27b57e62d704af28fae955d
```

-	Platforms:
	-	linux; amd64

### `logstash:1-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134346178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:340f57d0d46ff8e3fb5fb980e8dc10e8d7e1fe946d84846ea9ed7759c28d5079`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 03 Mar 2017 22:01:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:28 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:11:52 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Sat, 04 Mar 2017 00:11:54 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Sat, 04 Mar 2017 00:11:55 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Mar 2017 00:11:56 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Sat, 04 Mar 2017 00:11:56 GMT
ENV LOGSTASH_PATH=/opt/logstash/bin
# Sat, 04 Mar 2017 00:11:56 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Mar 2017 00:11:56 GMT
ENV LOGSTASH_VERSION=1.5.6
# Sat, 04 Mar 2017 00:11:57 GMT
ENV LOGSTASH_TARBALL=https://download.elastic.co/logstash/logstash/logstash-1.5.6.tar.gz LOGSTASH_TARBALL_ASC= LOGSTASH_TARBALL_SHA1=f3e4342f496e0d7e709de231daf624eb1fd80873
# Sat, 04 Mar 2017 00:12:13 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -r "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Sat, 04 Mar 2017 00:12:13 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Sat, 04 Mar 2017 00:12:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Mar 2017 00:12:14 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd134db5e982d5650745e9479866c856f24b892a92c4bfad3f3de6fd1bb7cc6d`  
		Last Modified: Sat, 04 Mar 2017 04:20:58 GMT  
		Size: 39.7 MB (39678331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd2ded033a43bd1b1b3643e8ac6d4029fc942f1086a25b252a0c916771e4cda`  
		Last Modified: Sat, 04 Mar 2017 07:10:40 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de47cf8bc616e13dc72cd173263501b3b9ac2276df9691e621d7f3f4ba890b8`  
		Last Modified: Sat, 04 Mar 2017 07:10:42 GMT  
		Size: 1.8 MB (1802336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af0e95fdcf9342be19f3ab617213ec2fa4ef0510348f94de3d543a4e25b27ab`  
		Last Modified: Sat, 04 Mar 2017 07:10:40 GMT  
		Size: 88.1 KB (88052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570129d6fdc7f9f5a299fa6d961a59e1426ec7227d035dbcd990cb20e5cee49e`  
		Last Modified: Sat, 04 Mar 2017 07:10:59 GMT  
		Size: 90.5 MB (90462269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff637e135d2939b55804e91fb375a3b727395faeb6bbd351048817cc95709e32`  
		Last Modified: Sat, 04 Mar 2017 07:10:40 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
