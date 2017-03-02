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
$ docker pull logstash@sha256:31555f9d8f4a72c26ad2eb58bbe4e041d0f17c03a27f4ef1cacf4bcae5960ee5
```

-	Platforms:
	-	linux; amd64

### `logstash:5.2.2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.7 MB (138705869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8be2536ad86fe1fc707debf9222d1dd72dee41a37a7224419f73a347df8750df`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 27 Dec 2016 18:38:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:44 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:45 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:18:26 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Fri, 17 Feb 2017 19:21:34 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Fri, 17 Feb 2017 19:21:37 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 17 Feb 2017 19:21:37 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 17 Feb 2017 19:21:38 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Fri, 17 Feb 2017 19:21:39 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 02 Mar 2017 00:39:58 GMT
ENV LOGSTASH_VERSION=5.2.2
# Thu, 02 Mar 2017 00:39:58 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.2.2.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.2.2.tar.gz.asc LOGSTASH_TARBALL_SHA1=20528f9d97e50917b994b4c9f26d518ec7249b8d
# Thu, 02 Mar 2017 00:40:15 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -r "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Thu, 02 Mar 2017 00:40:25 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Thu, 02 Mar 2017 00:40:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Mar 2017 00:40:26 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb75a810eee14e75bc372b510c025740f57b5eddae56f87dd85f0f9ef531c9f`  
		Last Modified: Tue, 27 Dec 2016 18:59:36 GMT  
		Size: 39.7 MB (39670203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499e921fe151c6234a64e05e2dd6f42d65e90cc4b396ec18dd9c8e66d8658da9`  
		Last Modified: Tue, 27 Dec 2016 22:49:43 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efddda48f37ae693b02f06cd8d15d3537feba9ba4de45ce36ac063da052894e7`  
		Last Modified: Fri, 17 Feb 2017 19:25:25 GMT  
		Size: 1.8 MB (1802308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e540dcae585bf7b05eaa0f92fb9a03a61a91175df53ab88ac0c99efd48f1f58c`  
		Last Modified: Fri, 17 Feb 2017 19:25:25 GMT  
		Size: 88.0 KB (88049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87cdcce7bc36fb325c6cd41382694392d648381627804e7450cea1a579f75db7`  
		Last Modified: Thu, 02 Mar 2017 00:43:45 GMT  
		Size: 94.8 MB (94830412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14e85e32f5b0a86d6b6cb0758276e84849bff5287d22a302496e2c0e78990593`  
		Last Modified: Thu, 02 Mar 2017 00:43:27 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.2-alpine`

```console
$ docker pull logstash@sha256:31555f9d8f4a72c26ad2eb58bbe4e041d0f17c03a27f4ef1cacf4bcae5960ee5
```

-	Platforms:
	-	linux; amd64

### `logstash:5.2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.7 MB (138705869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8be2536ad86fe1fc707debf9222d1dd72dee41a37a7224419f73a347df8750df`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 27 Dec 2016 18:38:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:44 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:45 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:18:26 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Fri, 17 Feb 2017 19:21:34 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Fri, 17 Feb 2017 19:21:37 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 17 Feb 2017 19:21:37 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 17 Feb 2017 19:21:38 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Fri, 17 Feb 2017 19:21:39 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 02 Mar 2017 00:39:58 GMT
ENV LOGSTASH_VERSION=5.2.2
# Thu, 02 Mar 2017 00:39:58 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.2.2.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.2.2.tar.gz.asc LOGSTASH_TARBALL_SHA1=20528f9d97e50917b994b4c9f26d518ec7249b8d
# Thu, 02 Mar 2017 00:40:15 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -r "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Thu, 02 Mar 2017 00:40:25 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Thu, 02 Mar 2017 00:40:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Mar 2017 00:40:26 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb75a810eee14e75bc372b510c025740f57b5eddae56f87dd85f0f9ef531c9f`  
		Last Modified: Tue, 27 Dec 2016 18:59:36 GMT  
		Size: 39.7 MB (39670203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499e921fe151c6234a64e05e2dd6f42d65e90cc4b396ec18dd9c8e66d8658da9`  
		Last Modified: Tue, 27 Dec 2016 22:49:43 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efddda48f37ae693b02f06cd8d15d3537feba9ba4de45ce36ac063da052894e7`  
		Last Modified: Fri, 17 Feb 2017 19:25:25 GMT  
		Size: 1.8 MB (1802308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e540dcae585bf7b05eaa0f92fb9a03a61a91175df53ab88ac0c99efd48f1f58c`  
		Last Modified: Fri, 17 Feb 2017 19:25:25 GMT  
		Size: 88.0 KB (88049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87cdcce7bc36fb325c6cd41382694392d648381627804e7450cea1a579f75db7`  
		Last Modified: Thu, 02 Mar 2017 00:43:45 GMT  
		Size: 94.8 MB (94830412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14e85e32f5b0a86d6b6cb0758276e84849bff5287d22a302496e2c0e78990593`  
		Last Modified: Thu, 02 Mar 2017 00:43:27 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5-alpine`

```console
$ docker pull logstash@sha256:31555f9d8f4a72c26ad2eb58bbe4e041d0f17c03a27f4ef1cacf4bcae5960ee5
```

-	Platforms:
	-	linux; amd64

### `logstash:5-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.7 MB (138705869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8be2536ad86fe1fc707debf9222d1dd72dee41a37a7224419f73a347df8750df`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 27 Dec 2016 18:38:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:44 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:45 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:18:26 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Fri, 17 Feb 2017 19:21:34 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Fri, 17 Feb 2017 19:21:37 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 17 Feb 2017 19:21:37 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 17 Feb 2017 19:21:38 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Fri, 17 Feb 2017 19:21:39 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 02 Mar 2017 00:39:58 GMT
ENV LOGSTASH_VERSION=5.2.2
# Thu, 02 Mar 2017 00:39:58 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.2.2.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.2.2.tar.gz.asc LOGSTASH_TARBALL_SHA1=20528f9d97e50917b994b4c9f26d518ec7249b8d
# Thu, 02 Mar 2017 00:40:15 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -r "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Thu, 02 Mar 2017 00:40:25 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Thu, 02 Mar 2017 00:40:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Mar 2017 00:40:26 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb75a810eee14e75bc372b510c025740f57b5eddae56f87dd85f0f9ef531c9f`  
		Last Modified: Tue, 27 Dec 2016 18:59:36 GMT  
		Size: 39.7 MB (39670203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499e921fe151c6234a64e05e2dd6f42d65e90cc4b396ec18dd9c8e66d8658da9`  
		Last Modified: Tue, 27 Dec 2016 22:49:43 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efddda48f37ae693b02f06cd8d15d3537feba9ba4de45ce36ac063da052894e7`  
		Last Modified: Fri, 17 Feb 2017 19:25:25 GMT  
		Size: 1.8 MB (1802308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e540dcae585bf7b05eaa0f92fb9a03a61a91175df53ab88ac0c99efd48f1f58c`  
		Last Modified: Fri, 17 Feb 2017 19:25:25 GMT  
		Size: 88.0 KB (88049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87cdcce7bc36fb325c6cd41382694392d648381627804e7450cea1a579f75db7`  
		Last Modified: Thu, 02 Mar 2017 00:43:45 GMT  
		Size: 94.8 MB (94830412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14e85e32f5b0a86d6b6cb0758276e84849bff5287d22a302496e2c0e78990593`  
		Last Modified: Thu, 02 Mar 2017 00:43:27 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:alpine`

```console
$ docker pull logstash@sha256:31555f9d8f4a72c26ad2eb58bbe4e041d0f17c03a27f4ef1cacf4bcae5960ee5
```

-	Platforms:
	-	linux; amd64

### `logstash:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.7 MB (138705869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8be2536ad86fe1fc707debf9222d1dd72dee41a37a7224419f73a347df8750df`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 27 Dec 2016 18:38:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:44 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:45 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:18:26 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Fri, 17 Feb 2017 19:21:34 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Fri, 17 Feb 2017 19:21:37 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 17 Feb 2017 19:21:37 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 17 Feb 2017 19:21:38 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Fri, 17 Feb 2017 19:21:39 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 02 Mar 2017 00:39:58 GMT
ENV LOGSTASH_VERSION=5.2.2
# Thu, 02 Mar 2017 00:39:58 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.2.2.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.2.2.tar.gz.asc LOGSTASH_TARBALL_SHA1=20528f9d97e50917b994b4c9f26d518ec7249b8d
# Thu, 02 Mar 2017 00:40:15 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -r "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Thu, 02 Mar 2017 00:40:25 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Thu, 02 Mar 2017 00:40:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Mar 2017 00:40:26 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb75a810eee14e75bc372b510c025740f57b5eddae56f87dd85f0f9ef531c9f`  
		Last Modified: Tue, 27 Dec 2016 18:59:36 GMT  
		Size: 39.7 MB (39670203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499e921fe151c6234a64e05e2dd6f42d65e90cc4b396ec18dd9c8e66d8658da9`  
		Last Modified: Tue, 27 Dec 2016 22:49:43 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efddda48f37ae693b02f06cd8d15d3537feba9ba4de45ce36ac063da052894e7`  
		Last Modified: Fri, 17 Feb 2017 19:25:25 GMT  
		Size: 1.8 MB (1802308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e540dcae585bf7b05eaa0f92fb9a03a61a91175df53ab88ac0c99efd48f1f58c`  
		Last Modified: Fri, 17 Feb 2017 19:25:25 GMT  
		Size: 88.0 KB (88049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87cdcce7bc36fb325c6cd41382694392d648381627804e7450cea1a579f75db7`  
		Last Modified: Thu, 02 Mar 2017 00:43:45 GMT  
		Size: 94.8 MB (94830412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14e85e32f5b0a86d6b6cb0758276e84849bff5287d22a302496e2c0e78990593`  
		Last Modified: Thu, 02 Mar 2017 00:43:27 GMT  
		Size: 305.0 B  
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
$ docker pull logstash@sha256:382ec1b8e14fd648f9575064549b9ac57ac763ada7c49d0dd7095fbc4e124b32
```

-	Platforms:
	-	linux; amd64

### `logstash:2.4.1-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.4 MB (128442577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:262c5f0f9f4000232dca8ef59c9c9c58ddb6e57176c599a07a10a95bee853b3e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 27 Dec 2016 18:38:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:44 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:45 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:18:26 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Fri, 17 Feb 2017 19:21:34 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Fri, 17 Feb 2017 19:21:37 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 17 Feb 2017 19:21:37 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 17 Feb 2017 19:22:07 GMT
ENV LOGSTASH_PATH=/opt/logstash/bin
# Fri, 17 Feb 2017 19:22:07 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 17 Feb 2017 19:22:08 GMT
ENV LOGSTASH_VERSION=2.4.1
# Fri, 17 Feb 2017 19:22:08 GMT
ENV LOGSTASH_TARBALL=https://download.elastic.co/logstash/logstash/logstash-2.4.1.tar.gz LOGSTASH_TARBALL_ASC= LOGSTASH_TARBALL_SHA1=5ee4f3fa0ad4b182b3f00b4181a20c4e31a907b4
# Fri, 17 Feb 2017 19:22:38 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -r "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Fri, 17 Feb 2017 19:22:40 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Fri, 17 Feb 2017 19:22:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 17 Feb 2017 19:22:41 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb75a810eee14e75bc372b510c025740f57b5eddae56f87dd85f0f9ef531c9f`  
		Last Modified: Tue, 27 Dec 2016 18:59:36 GMT  
		Size: 39.7 MB (39670203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499e921fe151c6234a64e05e2dd6f42d65e90cc4b396ec18dd9c8e66d8658da9`  
		Last Modified: Tue, 27 Dec 2016 22:49:43 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efddda48f37ae693b02f06cd8d15d3537feba9ba4de45ce36ac063da052894e7`  
		Last Modified: Fri, 17 Feb 2017 19:25:25 GMT  
		Size: 1.8 MB (1802308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e540dcae585bf7b05eaa0f92fb9a03a61a91175df53ab88ac0c99efd48f1f58c`  
		Last Modified: Fri, 17 Feb 2017 19:25:25 GMT  
		Size: 88.0 KB (88049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92de768274e0e54296c98cabb01ce1b909865b252e7cc066ee89c35166a48b6`  
		Last Modified: Fri, 17 Feb 2017 19:28:26 GMT  
		Size: 84.6 MB (84567119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79768e38e79203b2f8174fc35285ea9b2c7df0ae4277741166a01ec49f5c6fd`  
		Last Modified: Fri, 17 Feb 2017 19:28:08 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.4-alpine`

```console
$ docker pull logstash@sha256:382ec1b8e14fd648f9575064549b9ac57ac763ada7c49d0dd7095fbc4e124b32
```

-	Platforms:
	-	linux; amd64

### `logstash:2.4-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.4 MB (128442577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:262c5f0f9f4000232dca8ef59c9c9c58ddb6e57176c599a07a10a95bee853b3e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 27 Dec 2016 18:38:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:44 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:45 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:18:26 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Fri, 17 Feb 2017 19:21:34 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Fri, 17 Feb 2017 19:21:37 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 17 Feb 2017 19:21:37 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 17 Feb 2017 19:22:07 GMT
ENV LOGSTASH_PATH=/opt/logstash/bin
# Fri, 17 Feb 2017 19:22:07 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 17 Feb 2017 19:22:08 GMT
ENV LOGSTASH_VERSION=2.4.1
# Fri, 17 Feb 2017 19:22:08 GMT
ENV LOGSTASH_TARBALL=https://download.elastic.co/logstash/logstash/logstash-2.4.1.tar.gz LOGSTASH_TARBALL_ASC= LOGSTASH_TARBALL_SHA1=5ee4f3fa0ad4b182b3f00b4181a20c4e31a907b4
# Fri, 17 Feb 2017 19:22:38 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -r "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Fri, 17 Feb 2017 19:22:40 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Fri, 17 Feb 2017 19:22:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 17 Feb 2017 19:22:41 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb75a810eee14e75bc372b510c025740f57b5eddae56f87dd85f0f9ef531c9f`  
		Last Modified: Tue, 27 Dec 2016 18:59:36 GMT  
		Size: 39.7 MB (39670203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499e921fe151c6234a64e05e2dd6f42d65e90cc4b396ec18dd9c8e66d8658da9`  
		Last Modified: Tue, 27 Dec 2016 22:49:43 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efddda48f37ae693b02f06cd8d15d3537feba9ba4de45ce36ac063da052894e7`  
		Last Modified: Fri, 17 Feb 2017 19:25:25 GMT  
		Size: 1.8 MB (1802308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e540dcae585bf7b05eaa0f92fb9a03a61a91175df53ab88ac0c99efd48f1f58c`  
		Last Modified: Fri, 17 Feb 2017 19:25:25 GMT  
		Size: 88.0 KB (88049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92de768274e0e54296c98cabb01ce1b909865b252e7cc066ee89c35166a48b6`  
		Last Modified: Fri, 17 Feb 2017 19:28:26 GMT  
		Size: 84.6 MB (84567119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79768e38e79203b2f8174fc35285ea9b2c7df0ae4277741166a01ec49f5c6fd`  
		Last Modified: Fri, 17 Feb 2017 19:28:08 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2-alpine`

```console
$ docker pull logstash@sha256:382ec1b8e14fd648f9575064549b9ac57ac763ada7c49d0dd7095fbc4e124b32
```

-	Platforms:
	-	linux; amd64

### `logstash:2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.4 MB (128442577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:262c5f0f9f4000232dca8ef59c9c9c58ddb6e57176c599a07a10a95bee853b3e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 27 Dec 2016 18:38:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:44 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:45 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:18:26 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Fri, 17 Feb 2017 19:21:34 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Fri, 17 Feb 2017 19:21:37 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 17 Feb 2017 19:21:37 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 17 Feb 2017 19:22:07 GMT
ENV LOGSTASH_PATH=/opt/logstash/bin
# Fri, 17 Feb 2017 19:22:07 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 17 Feb 2017 19:22:08 GMT
ENV LOGSTASH_VERSION=2.4.1
# Fri, 17 Feb 2017 19:22:08 GMT
ENV LOGSTASH_TARBALL=https://download.elastic.co/logstash/logstash/logstash-2.4.1.tar.gz LOGSTASH_TARBALL_ASC= LOGSTASH_TARBALL_SHA1=5ee4f3fa0ad4b182b3f00b4181a20c4e31a907b4
# Fri, 17 Feb 2017 19:22:38 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -r "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Fri, 17 Feb 2017 19:22:40 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Fri, 17 Feb 2017 19:22:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 17 Feb 2017 19:22:41 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb75a810eee14e75bc372b510c025740f57b5eddae56f87dd85f0f9ef531c9f`  
		Last Modified: Tue, 27 Dec 2016 18:59:36 GMT  
		Size: 39.7 MB (39670203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499e921fe151c6234a64e05e2dd6f42d65e90cc4b396ec18dd9c8e66d8658da9`  
		Last Modified: Tue, 27 Dec 2016 22:49:43 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efddda48f37ae693b02f06cd8d15d3537feba9ba4de45ce36ac063da052894e7`  
		Last Modified: Fri, 17 Feb 2017 19:25:25 GMT  
		Size: 1.8 MB (1802308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e540dcae585bf7b05eaa0f92fb9a03a61a91175df53ab88ac0c99efd48f1f58c`  
		Last Modified: Fri, 17 Feb 2017 19:25:25 GMT  
		Size: 88.0 KB (88049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92de768274e0e54296c98cabb01ce1b909865b252e7cc066ee89c35166a48b6`  
		Last Modified: Fri, 17 Feb 2017 19:28:26 GMT  
		Size: 84.6 MB (84567119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79768e38e79203b2f8174fc35285ea9b2c7df0ae4277741166a01ec49f5c6fd`  
		Last Modified: Fri, 17 Feb 2017 19:28:08 GMT  
		Size: 306.0 B  
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
$ docker pull logstash@sha256:615aaec31e81c1246f168e7b24df072ce08080a49a4e6a27793739fb91a2a640
```

-	Platforms:
	-	linux; amd64

### `logstash:1.5.6-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134336506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a3533b89ab9f5c8df7f7e23d885ac4063366651f1a2ee4976a4d0fb2bdbb03`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 27 Dec 2016 18:38:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:44 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:45 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:18:26 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Fri, 17 Feb 2017 19:21:34 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Fri, 17 Feb 2017 19:21:37 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 17 Feb 2017 19:21:37 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 17 Feb 2017 19:22:07 GMT
ENV LOGSTASH_PATH=/opt/logstash/bin
# Fri, 17 Feb 2017 19:22:07 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 17 Feb 2017 19:22:43 GMT
ENV LOGSTASH_VERSION=1.5.6
# Fri, 17 Feb 2017 19:22:44 GMT
ENV LOGSTASH_TARBALL=https://download.elastic.co/logstash/logstash/logstash-1.5.6.tar.gz LOGSTASH_TARBALL_ASC= LOGSTASH_TARBALL_SHA1=f3e4342f496e0d7e709de231daf624eb1fd80873
# Fri, 17 Feb 2017 19:23:11 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -r "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Fri, 17 Feb 2017 19:23:13 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Fri, 17 Feb 2017 19:23:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 17 Feb 2017 19:23:14 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb75a810eee14e75bc372b510c025740f57b5eddae56f87dd85f0f9ef531c9f`  
		Last Modified: Tue, 27 Dec 2016 18:59:36 GMT  
		Size: 39.7 MB (39670203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499e921fe151c6234a64e05e2dd6f42d65e90cc4b396ec18dd9c8e66d8658da9`  
		Last Modified: Tue, 27 Dec 2016 22:49:43 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efddda48f37ae693b02f06cd8d15d3537feba9ba4de45ce36ac063da052894e7`  
		Last Modified: Fri, 17 Feb 2017 19:25:25 GMT  
		Size: 1.8 MB (1802308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e540dcae585bf7b05eaa0f92fb9a03a61a91175df53ab88ac0c99efd48f1f58c`  
		Last Modified: Fri, 17 Feb 2017 19:25:25 GMT  
		Size: 88.0 KB (88049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a886972f73f06d958010e6a5f2ef480f2835dec761a1389348aa6e36395aed78`  
		Last Modified: Fri, 17 Feb 2017 19:30:47 GMT  
		Size: 90.5 MB (90461048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d76d93b3c351df24532c8a936c68ad26a9572770ba8d7e7c8c4d14833512c58`  
		Last Modified: Fri, 17 Feb 2017 19:30:35 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:1.5-alpine`

```console
$ docker pull logstash@sha256:615aaec31e81c1246f168e7b24df072ce08080a49a4e6a27793739fb91a2a640
```

-	Platforms:
	-	linux; amd64

### `logstash:1.5-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134336506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a3533b89ab9f5c8df7f7e23d885ac4063366651f1a2ee4976a4d0fb2bdbb03`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 27 Dec 2016 18:38:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:44 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:45 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:18:26 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Fri, 17 Feb 2017 19:21:34 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Fri, 17 Feb 2017 19:21:37 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 17 Feb 2017 19:21:37 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 17 Feb 2017 19:22:07 GMT
ENV LOGSTASH_PATH=/opt/logstash/bin
# Fri, 17 Feb 2017 19:22:07 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 17 Feb 2017 19:22:43 GMT
ENV LOGSTASH_VERSION=1.5.6
# Fri, 17 Feb 2017 19:22:44 GMT
ENV LOGSTASH_TARBALL=https://download.elastic.co/logstash/logstash/logstash-1.5.6.tar.gz LOGSTASH_TARBALL_ASC= LOGSTASH_TARBALL_SHA1=f3e4342f496e0d7e709de231daf624eb1fd80873
# Fri, 17 Feb 2017 19:23:11 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -r "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Fri, 17 Feb 2017 19:23:13 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Fri, 17 Feb 2017 19:23:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 17 Feb 2017 19:23:14 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb75a810eee14e75bc372b510c025740f57b5eddae56f87dd85f0f9ef531c9f`  
		Last Modified: Tue, 27 Dec 2016 18:59:36 GMT  
		Size: 39.7 MB (39670203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499e921fe151c6234a64e05e2dd6f42d65e90cc4b396ec18dd9c8e66d8658da9`  
		Last Modified: Tue, 27 Dec 2016 22:49:43 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efddda48f37ae693b02f06cd8d15d3537feba9ba4de45ce36ac063da052894e7`  
		Last Modified: Fri, 17 Feb 2017 19:25:25 GMT  
		Size: 1.8 MB (1802308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e540dcae585bf7b05eaa0f92fb9a03a61a91175df53ab88ac0c99efd48f1f58c`  
		Last Modified: Fri, 17 Feb 2017 19:25:25 GMT  
		Size: 88.0 KB (88049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a886972f73f06d958010e6a5f2ef480f2835dec761a1389348aa6e36395aed78`  
		Last Modified: Fri, 17 Feb 2017 19:30:47 GMT  
		Size: 90.5 MB (90461048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d76d93b3c351df24532c8a936c68ad26a9572770ba8d7e7c8c4d14833512c58`  
		Last Modified: Fri, 17 Feb 2017 19:30:35 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:1-alpine`

```console
$ docker pull logstash@sha256:615aaec31e81c1246f168e7b24df072ce08080a49a4e6a27793739fb91a2a640
```

-	Platforms:
	-	linux; amd64

### `logstash:1-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134336506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a3533b89ab9f5c8df7f7e23d885ac4063366651f1a2ee4976a4d0fb2bdbb03`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 27 Dec 2016 18:38:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:44 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:45 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:18:26 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Fri, 17 Feb 2017 19:21:34 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Fri, 17 Feb 2017 19:21:37 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 17 Feb 2017 19:21:37 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 17 Feb 2017 19:22:07 GMT
ENV LOGSTASH_PATH=/opt/logstash/bin
# Fri, 17 Feb 2017 19:22:07 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 17 Feb 2017 19:22:43 GMT
ENV LOGSTASH_VERSION=1.5.6
# Fri, 17 Feb 2017 19:22:44 GMT
ENV LOGSTASH_TARBALL=https://download.elastic.co/logstash/logstash/logstash-1.5.6.tar.gz LOGSTASH_TARBALL_ASC= LOGSTASH_TARBALL_SHA1=f3e4342f496e0d7e709de231daf624eb1fd80873
# Fri, 17 Feb 2017 19:23:11 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -r "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Fri, 17 Feb 2017 19:23:13 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Fri, 17 Feb 2017 19:23:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 17 Feb 2017 19:23:14 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb75a810eee14e75bc372b510c025740f57b5eddae56f87dd85f0f9ef531c9f`  
		Last Modified: Tue, 27 Dec 2016 18:59:36 GMT  
		Size: 39.7 MB (39670203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499e921fe151c6234a64e05e2dd6f42d65e90cc4b396ec18dd9c8e66d8658da9`  
		Last Modified: Tue, 27 Dec 2016 22:49:43 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efddda48f37ae693b02f06cd8d15d3537feba9ba4de45ce36ac063da052894e7`  
		Last Modified: Fri, 17 Feb 2017 19:25:25 GMT  
		Size: 1.8 MB (1802308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e540dcae585bf7b05eaa0f92fb9a03a61a91175df53ab88ac0c99efd48f1f58c`  
		Last Modified: Fri, 17 Feb 2017 19:25:25 GMT  
		Size: 88.0 KB (88049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a886972f73f06d958010e6a5f2ef480f2835dec761a1389348aa6e36395aed78`  
		Last Modified: Fri, 17 Feb 2017 19:30:47 GMT  
		Size: 90.5 MB (90461048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d76d93b3c351df24532c8a936c68ad26a9572770ba8d7e7c8c4d14833512c58`  
		Last Modified: Fri, 17 Feb 2017 19:30:35 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
