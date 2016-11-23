<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `elasticsearch`

-	[`elasticsearch:1.6.2`](#elasticsearch162)
-	[`elasticsearch:1.6`](#elasticsearch16)
-	[`elasticsearch:1.7.6`](#elasticsearch176)
-	[`elasticsearch:1.7`](#elasticsearch17)
-	[`elasticsearch:1`](#elasticsearch1)
-	[`elasticsearch:2.0.2`](#elasticsearch202)
-	[`elasticsearch:2.0`](#elasticsearch20)
-	[`elasticsearch:2.1.2`](#elasticsearch212)
-	[`elasticsearch:2.1`](#elasticsearch21)
-	[`elasticsearch:2.2.2`](#elasticsearch222)
-	[`elasticsearch:2.2`](#elasticsearch22)
-	[`elasticsearch:2.3.5`](#elasticsearch235)
-	[`elasticsearch:2.3`](#elasticsearch23)
-	[`elasticsearch:2.4.2`](#elasticsearch242)
-	[`elasticsearch:2.4`](#elasticsearch24)
-	[`elasticsearch:2`](#elasticsearch2)
-	[`elasticsearch:5.0.1`](#elasticsearch501)
-	[`elasticsearch:5.0`](#elasticsearch50)
-	[`elasticsearch:5`](#elasticsearch5)
-	[`elasticsearch:latest`](#elasticsearchlatest)

## `elasticsearch:1.6.2`

```console
$ docker pull elasticsearch@sha256:ca48a10ae8b7d242fda097d7d5fd38ac6cf4c619d8ee14cf43856ad20724f571
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:1.6.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152955620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e62d75987018577a8c108ed9711bbd69ff30011a38960ac6eb843b4eb20eb2d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 08 Nov 2016 21:45:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 21:45:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 08 Nov 2016 21:45:49 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 08 Nov 2016 21:47:17 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/1.6/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 08 Nov 2016 21:47:17 GMT
ENV ELASTICSEARCH_VERSION=1.6.2
# Tue, 08 Nov 2016 21:47:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 21:47:26 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 21:47:27 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 08 Nov 2016 21:47:28 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 08 Nov 2016 21:47:28 GMT
COPY dir:31f8476cce13d884e30d94ee9384cd924f19b02a6833943b9d501f833cd60885 in ./config 
# Tue, 08 Nov 2016 21:47:29 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 08 Nov 2016 21:47:29 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Tue, 08 Nov 2016 21:47:30 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 08 Nov 2016 21:47:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 21:47:30 GMT
CMD ["elasticsearch"]
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
	-	`sha256:424638b495a6da4a73d3a82bb8ddacdcb74a302ab461a07d6e6719d2c92d51cf`  
		Last Modified: Tue, 08 Nov 2016 21:46:33 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff72d0b7bea485979564c703993059b75dbaf6a4af1d11213b4619353936f8c`  
		Last Modified: Tue, 08 Nov 2016 21:46:35 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa479271fbbd171867bff1f29e0fe5be4407df3daaf0a3be1f2d77e697ab86c0`  
		Last Modified: Tue, 08 Nov 2016 21:47:43 GMT  
		Size: 536.0 KB (536034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2476ccb52302e52feb89d3bc486dc6234dc41e51399d7fcafc2d792cfa2e7379`  
		Last Modified: Tue, 08 Nov 2016 21:47:45 GMT  
		Size: 27.4 MB (27421694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02091d90188dddb8830fe52617abc75ec475f1c1e745d5b2bd4816f45ba1306`  
		Last Modified: Tue, 08 Nov 2016 21:47:42 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1990074455d7190392c148eedcc4bc7af48688bf3f5b3350bcfc9b0540a61b50`  
		Last Modified: Tue, 08 Nov 2016 21:47:42 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:728fedbf8b2b1702c7f37e03514dfdf71fd6bb6bd30b85b17cbb0225a7b03186`  
		Last Modified: Tue, 08 Nov 2016 21:47:42 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:1.6`

```console
$ docker pull elasticsearch@sha256:ca48a10ae8b7d242fda097d7d5fd38ac6cf4c619d8ee14cf43856ad20724f571
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:1.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152955620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e62d75987018577a8c108ed9711bbd69ff30011a38960ac6eb843b4eb20eb2d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 08 Nov 2016 21:45:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 21:45:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 08 Nov 2016 21:45:49 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 08 Nov 2016 21:47:17 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/1.6/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 08 Nov 2016 21:47:17 GMT
ENV ELASTICSEARCH_VERSION=1.6.2
# Tue, 08 Nov 2016 21:47:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 21:47:26 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 21:47:27 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 08 Nov 2016 21:47:28 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 08 Nov 2016 21:47:28 GMT
COPY dir:31f8476cce13d884e30d94ee9384cd924f19b02a6833943b9d501f833cd60885 in ./config 
# Tue, 08 Nov 2016 21:47:29 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 08 Nov 2016 21:47:29 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Tue, 08 Nov 2016 21:47:30 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 08 Nov 2016 21:47:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 21:47:30 GMT
CMD ["elasticsearch"]
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
	-	`sha256:424638b495a6da4a73d3a82bb8ddacdcb74a302ab461a07d6e6719d2c92d51cf`  
		Last Modified: Tue, 08 Nov 2016 21:46:33 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff72d0b7bea485979564c703993059b75dbaf6a4af1d11213b4619353936f8c`  
		Last Modified: Tue, 08 Nov 2016 21:46:35 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa479271fbbd171867bff1f29e0fe5be4407df3daaf0a3be1f2d77e697ab86c0`  
		Last Modified: Tue, 08 Nov 2016 21:47:43 GMT  
		Size: 536.0 KB (536034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2476ccb52302e52feb89d3bc486dc6234dc41e51399d7fcafc2d792cfa2e7379`  
		Last Modified: Tue, 08 Nov 2016 21:47:45 GMT  
		Size: 27.4 MB (27421694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02091d90188dddb8830fe52617abc75ec475f1c1e745d5b2bd4816f45ba1306`  
		Last Modified: Tue, 08 Nov 2016 21:47:42 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1990074455d7190392c148eedcc4bc7af48688bf3f5b3350bcfc9b0540a61b50`  
		Last Modified: Tue, 08 Nov 2016 21:47:42 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:728fedbf8b2b1702c7f37e03514dfdf71fd6bb6bd30b85b17cbb0225a7b03186`  
		Last Modified: Tue, 08 Nov 2016 21:47:42 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:1.7.6`

```console
$ docker pull elasticsearch@sha256:4caed8a35bba64f02468788847a2d933251e110ec3d30bdf38bd43e9d7ae6851
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:1.7.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152956414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d40c382b5ce3b682cbb33ccb9512cc62bddb643213359043cfc6a49f654180dd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 08 Nov 2016 21:45:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 21:45:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 08 Nov 2016 21:45:49 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 08 Nov 2016 21:45:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/1.7/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 23 Nov 2016 20:57:46 GMT
ENV ELASTICSEARCH_VERSION=1.7.6
# Wed, 23 Nov 2016 20:57:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Nov 2016 20:57:59 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Nov 2016 20:57:59 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 23 Nov 2016 20:58:00 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 23 Nov 2016 20:58:00 GMT
COPY dir:31f8476cce13d884e30d94ee9384cd924f19b02a6833943b9d501f833cd60885 in ./config 
# Wed, 23 Nov 2016 20:58:01 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 23 Nov 2016 20:58:01 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Wed, 23 Nov 2016 20:58:01 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 23 Nov 2016 20:58:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Nov 2016 20:58:02 GMT
CMD ["elasticsearch"]
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
	-	`sha256:424638b495a6da4a73d3a82bb8ddacdcb74a302ab461a07d6e6719d2c92d51cf`  
		Last Modified: Tue, 08 Nov 2016 21:46:33 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff72d0b7bea485979564c703993059b75dbaf6a4af1d11213b4619353936f8c`  
		Last Modified: Tue, 08 Nov 2016 21:46:35 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8691455bbbd4483327e4706d4e085197c4af9a7fc23042131cb8b71484bd4c71`  
		Last Modified: Tue, 08 Nov 2016 21:46:30 GMT  
		Size: 536.0 KB (536036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f072916d8d05445ce62d8f0e8a0f56a4f4dafb0bbbb599464182001c1f95cbd3`  
		Last Modified: Wed, 23 Nov 2016 20:59:01 GMT  
		Size: 27.4 MB (27422488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea73d512978e42aa10a05d667160fc9c9cf3107052d66890f235266ce284dfd`  
		Last Modified: Wed, 23 Nov 2016 20:58:59 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5890671139e81422573eaca2d1de257ef738620cfba7256e36cc511cf7590185`  
		Last Modified: Wed, 23 Nov 2016 20:58:59 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2459d6ac3cdf3e4c3533236df7a43484890bcda8ecf57d2d9ecc3f73fc2771`  
		Last Modified: Wed, 23 Nov 2016 20:58:59 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:1.7`

```console
$ docker pull elasticsearch@sha256:8dd2aae523b85faa8e5b218a8f6b97c0f848a04c1ad8d6f9fc5e03f69124c38b
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:1.7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152957107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8497e1a8039b33be01673d52c3a8fb3ec433a4b49b79612cfca0e37193699427`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 08 Nov 2016 21:45:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 21:45:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 08 Nov 2016 21:45:49 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 08 Nov 2016 21:45:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/1.7/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 08 Nov 2016 21:45:58 GMT
ENV ELASTICSEARCH_VERSION=1.7.5
# Tue, 08 Nov 2016 21:46:08 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 21:46:14 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 21:46:14 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 08 Nov 2016 21:46:15 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 08 Nov 2016 21:46:16 GMT
COPY dir:31f8476cce13d884e30d94ee9384cd924f19b02a6833943b9d501f833cd60885 in ./config 
# Tue, 08 Nov 2016 21:46:16 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 08 Nov 2016 21:46:17 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Tue, 08 Nov 2016 21:46:17 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 08 Nov 2016 21:46:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 21:46:18 GMT
CMD ["elasticsearch"]
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
	-	`sha256:424638b495a6da4a73d3a82bb8ddacdcb74a302ab461a07d6e6719d2c92d51cf`  
		Last Modified: Tue, 08 Nov 2016 21:46:33 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff72d0b7bea485979564c703993059b75dbaf6a4af1d11213b4619353936f8c`  
		Last Modified: Tue, 08 Nov 2016 21:46:35 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8691455bbbd4483327e4706d4e085197c4af9a7fc23042131cb8b71484bd4c71`  
		Last Modified: Tue, 08 Nov 2016 21:46:30 GMT  
		Size: 536.0 KB (536036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7a28da409b4dc186ef3ecd1fc6b97d3387555ab5abb0f4bf3ec2b12ce18bd2`  
		Last Modified: Tue, 08 Nov 2016 21:46:33 GMT  
		Size: 27.4 MB (27423181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d459d15ba716a2b5a0ea6cef686e5cfe9ad3541d079058c2deb952f799f3924`  
		Last Modified: Tue, 08 Nov 2016 21:46:29 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c89b17124fadf14236d3475223f6b7e5907b4804030080d93b4eb53c7c735a48`  
		Last Modified: Tue, 08 Nov 2016 21:46:29 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82d6a34b0f30c62767165fddb3ecc8c6a510ac42b863e7728a2d89cfd68c2e0c`  
		Last Modified: Tue, 08 Nov 2016 21:46:29 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:1`

```console
$ docker pull elasticsearch@sha256:4caed8a35bba64f02468788847a2d933251e110ec3d30bdf38bd43e9d7ae6851
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152956414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d40c382b5ce3b682cbb33ccb9512cc62bddb643213359043cfc6a49f654180dd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 08 Nov 2016 21:45:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 21:45:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 08 Nov 2016 21:45:49 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 08 Nov 2016 21:45:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/1.7/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 23 Nov 2016 20:57:46 GMT
ENV ELASTICSEARCH_VERSION=1.7.6
# Wed, 23 Nov 2016 20:57:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Nov 2016 20:57:59 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Nov 2016 20:57:59 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 23 Nov 2016 20:58:00 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 23 Nov 2016 20:58:00 GMT
COPY dir:31f8476cce13d884e30d94ee9384cd924f19b02a6833943b9d501f833cd60885 in ./config 
# Wed, 23 Nov 2016 20:58:01 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 23 Nov 2016 20:58:01 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Wed, 23 Nov 2016 20:58:01 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 23 Nov 2016 20:58:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Nov 2016 20:58:02 GMT
CMD ["elasticsearch"]
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
	-	`sha256:424638b495a6da4a73d3a82bb8ddacdcb74a302ab461a07d6e6719d2c92d51cf`  
		Last Modified: Tue, 08 Nov 2016 21:46:33 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff72d0b7bea485979564c703993059b75dbaf6a4af1d11213b4619353936f8c`  
		Last Modified: Tue, 08 Nov 2016 21:46:35 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8691455bbbd4483327e4706d4e085197c4af9a7fc23042131cb8b71484bd4c71`  
		Last Modified: Tue, 08 Nov 2016 21:46:30 GMT  
		Size: 536.0 KB (536036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f072916d8d05445ce62d8f0e8a0f56a4f4dafb0bbbb599464182001c1f95cbd3`  
		Last Modified: Wed, 23 Nov 2016 20:59:01 GMT  
		Size: 27.4 MB (27422488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea73d512978e42aa10a05d667160fc9c9cf3107052d66890f235266ce284dfd`  
		Last Modified: Wed, 23 Nov 2016 20:58:59 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5890671139e81422573eaca2d1de257ef738620cfba7256e36cc511cf7590185`  
		Last Modified: Wed, 23 Nov 2016 20:58:59 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2459d6ac3cdf3e4c3533236df7a43484890bcda8ecf57d2d9ecc3f73fc2771`  
		Last Modified: Wed, 23 Nov 2016 20:58:59 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.0.2`

```console
$ docker pull elasticsearch@sha256:09398ed806442313acc2b6b527b92be40cbf7389c5c59946cf56c33167ba6d80
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.0.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.1 MB (154118415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29497c4c7a5d1b852941c235eba90bcceb4496f89c5b2651b67a4fbd117e2c45`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 08 Nov 2016 21:45:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 21:45:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 08 Nov 2016 21:45:49 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 08 Nov 2016 21:48:14 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/2.x/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 08 Nov 2016 21:49:22 GMT
ENV ELASTICSEARCH_VERSION=2.0.2
# Tue, 08 Nov 2016 21:49:32 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 21:49:33 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 21:49:33 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 08 Nov 2016 21:49:34 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 08 Nov 2016 21:49:35 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Tue, 08 Nov 2016 21:49:35 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 08 Nov 2016 21:49:36 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Tue, 08 Nov 2016 21:49:36 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 08 Nov 2016 21:49:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 21:49:37 GMT
CMD ["elasticsearch"]
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
	-	`sha256:424638b495a6da4a73d3a82bb8ddacdcb74a302ab461a07d6e6719d2c92d51cf`  
		Last Modified: Tue, 08 Nov 2016 21:46:33 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff72d0b7bea485979564c703993059b75dbaf6a4af1d11213b4619353936f8c`  
		Last Modified: Tue, 08 Nov 2016 21:46:35 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d25542ccc0236a46cb599bfae8b879b99e61ddf86346b9cb3212a7c55e5482c`  
		Last Modified: Tue, 08 Nov 2016 21:48:43 GMT  
		Size: 536.0 KB (536020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acee250c6320dbfc97b4bb48475f750d1026af8fda819c258c145b5d72a2eabe`  
		Last Modified: Tue, 08 Nov 2016 21:49:53 GMT  
		Size: 28.6 MB (28584461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fa97595cf06976460865e2e7b41b36c2c08529b0d9d1e9b8a3e7c11311de911`  
		Last Modified: Tue, 08 Nov 2016 21:49:49 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd23fd4167d0f4efa05074ed897f890a17e58e3af8b2511d78e5ceee30758df`  
		Last Modified: Tue, 08 Nov 2016 21:49:49 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f193b98811c01fe952861c6e0549259ff02dd5df1554e9f25aef2e616877a105`  
		Last Modified: Tue, 08 Nov 2016 21:49:50 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.0`

```console
$ docker pull elasticsearch@sha256:09398ed806442313acc2b6b527b92be40cbf7389c5c59946cf56c33167ba6d80
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.1 MB (154118415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29497c4c7a5d1b852941c235eba90bcceb4496f89c5b2651b67a4fbd117e2c45`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 08 Nov 2016 21:45:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 21:45:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 08 Nov 2016 21:45:49 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 08 Nov 2016 21:48:14 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/2.x/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 08 Nov 2016 21:49:22 GMT
ENV ELASTICSEARCH_VERSION=2.0.2
# Tue, 08 Nov 2016 21:49:32 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 21:49:33 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 21:49:33 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 08 Nov 2016 21:49:34 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 08 Nov 2016 21:49:35 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Tue, 08 Nov 2016 21:49:35 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 08 Nov 2016 21:49:36 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Tue, 08 Nov 2016 21:49:36 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 08 Nov 2016 21:49:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 21:49:37 GMT
CMD ["elasticsearch"]
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
	-	`sha256:424638b495a6da4a73d3a82bb8ddacdcb74a302ab461a07d6e6719d2c92d51cf`  
		Last Modified: Tue, 08 Nov 2016 21:46:33 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff72d0b7bea485979564c703993059b75dbaf6a4af1d11213b4619353936f8c`  
		Last Modified: Tue, 08 Nov 2016 21:46:35 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d25542ccc0236a46cb599bfae8b879b99e61ddf86346b9cb3212a7c55e5482c`  
		Last Modified: Tue, 08 Nov 2016 21:48:43 GMT  
		Size: 536.0 KB (536020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acee250c6320dbfc97b4bb48475f750d1026af8fda819c258c145b5d72a2eabe`  
		Last Modified: Tue, 08 Nov 2016 21:49:53 GMT  
		Size: 28.6 MB (28584461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fa97595cf06976460865e2e7b41b36c2c08529b0d9d1e9b8a3e7c11311de911`  
		Last Modified: Tue, 08 Nov 2016 21:49:49 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd23fd4167d0f4efa05074ed897f890a17e58e3af8b2511d78e5ceee30758df`  
		Last Modified: Tue, 08 Nov 2016 21:49:49 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f193b98811c01fe952861c6e0549259ff02dd5df1554e9f25aef2e616877a105`  
		Last Modified: Tue, 08 Nov 2016 21:49:50 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.1.2`

```console
$ docker pull elasticsearch@sha256:1d9efe2c8c3f5c980a76fe1c065dbff8b27808ab8ac14d7ae4cec3d7337f90ca
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.1.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.5 MB (154533672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81607c92c29ac063fb7bdc561a0ddc8f8c162465355376a44bd066ca58af59f1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 08 Nov 2016 21:45:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 21:45:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 08 Nov 2016 21:45:49 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 08 Nov 2016 21:48:14 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/2.x/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 08 Nov 2016 21:50:24 GMT
ENV ELASTICSEARCH_VERSION=2.1.2
# Tue, 08 Nov 2016 21:51:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 21:51:10 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 21:51:10 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 08 Nov 2016 21:51:11 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 08 Nov 2016 21:51:12 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Tue, 08 Nov 2016 21:51:12 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 08 Nov 2016 21:51:13 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Tue, 08 Nov 2016 21:51:13 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 08 Nov 2016 21:51:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 21:51:14 GMT
CMD ["elasticsearch"]
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
	-	`sha256:424638b495a6da4a73d3a82bb8ddacdcb74a302ab461a07d6e6719d2c92d51cf`  
		Last Modified: Tue, 08 Nov 2016 21:46:33 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff72d0b7bea485979564c703993059b75dbaf6a4af1d11213b4619353936f8c`  
		Last Modified: Tue, 08 Nov 2016 21:46:35 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d25542ccc0236a46cb599bfae8b879b99e61ddf86346b9cb3212a7c55e5482c`  
		Last Modified: Tue, 08 Nov 2016 21:48:43 GMT  
		Size: 536.0 KB (536020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79931bc941114e4bad9bef896110eae2a983a6d3cd49ce503ea491c7661731bb`  
		Last Modified: Tue, 08 Nov 2016 21:51:29 GMT  
		Size: 29.0 MB (28999717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae624a3fbaadc96fe016b72639f4b0a2f65c5af5dba34fe620d30512f8bb3f53`  
		Last Modified: Tue, 08 Nov 2016 21:51:25 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f10328bd79fd9945a4d43a644a6b0beeb715612992f371a02472dee59acbb84`  
		Last Modified: Tue, 08 Nov 2016 21:51:25 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b740a93b17fe416ecc8cef82ada200f509ff1f7d4225aabfa7e7e136477b31b7`  
		Last Modified: Tue, 08 Nov 2016 21:51:25 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.1`

```console
$ docker pull elasticsearch@sha256:1d9efe2c8c3f5c980a76fe1c065dbff8b27808ab8ac14d7ae4cec3d7337f90ca
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.5 MB (154533672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81607c92c29ac063fb7bdc561a0ddc8f8c162465355376a44bd066ca58af59f1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 08 Nov 2016 21:45:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 21:45:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 08 Nov 2016 21:45:49 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 08 Nov 2016 21:48:14 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/2.x/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 08 Nov 2016 21:50:24 GMT
ENV ELASTICSEARCH_VERSION=2.1.2
# Tue, 08 Nov 2016 21:51:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 21:51:10 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 21:51:10 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 08 Nov 2016 21:51:11 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 08 Nov 2016 21:51:12 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Tue, 08 Nov 2016 21:51:12 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 08 Nov 2016 21:51:13 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Tue, 08 Nov 2016 21:51:13 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 08 Nov 2016 21:51:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 21:51:14 GMT
CMD ["elasticsearch"]
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
	-	`sha256:424638b495a6da4a73d3a82bb8ddacdcb74a302ab461a07d6e6719d2c92d51cf`  
		Last Modified: Tue, 08 Nov 2016 21:46:33 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff72d0b7bea485979564c703993059b75dbaf6a4af1d11213b4619353936f8c`  
		Last Modified: Tue, 08 Nov 2016 21:46:35 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d25542ccc0236a46cb599bfae8b879b99e61ddf86346b9cb3212a7c55e5482c`  
		Last Modified: Tue, 08 Nov 2016 21:48:43 GMT  
		Size: 536.0 KB (536020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79931bc941114e4bad9bef896110eae2a983a6d3cd49ce503ea491c7661731bb`  
		Last Modified: Tue, 08 Nov 2016 21:51:29 GMT  
		Size: 29.0 MB (28999717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae624a3fbaadc96fe016b72639f4b0a2f65c5af5dba34fe620d30512f8bb3f53`  
		Last Modified: Tue, 08 Nov 2016 21:51:25 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f10328bd79fd9945a4d43a644a6b0beeb715612992f371a02472dee59acbb84`  
		Last Modified: Tue, 08 Nov 2016 21:51:25 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b740a93b17fe416ecc8cef82ada200f509ff1f7d4225aabfa7e7e136477b31b7`  
		Last Modified: Tue, 08 Nov 2016 21:51:25 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.2.2`

```console
$ docker pull elasticsearch@sha256:987eeb57e73ecf1513582c7117ad3a4dc1727ba7a4e141c3db7fca8a5339a9c6
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.2.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.0 MB (154950244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdaa263ad7f315286f53f550eb7944534295d0448d9be37712d4629ec7668364`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 08 Nov 2016 21:45:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 21:45:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 08 Nov 2016 21:45:49 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 08 Nov 2016 21:48:14 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/2.x/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 08 Nov 2016 21:51:52 GMT
ENV ELASTICSEARCH_VERSION=2.2.2
# Tue, 08 Nov 2016 21:52:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 21:52:03 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 21:52:04 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 08 Nov 2016 21:52:04 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 08 Nov 2016 21:52:05 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Tue, 08 Nov 2016 21:52:05 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 08 Nov 2016 21:52:06 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Tue, 08 Nov 2016 21:52:06 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 08 Nov 2016 21:52:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 21:52:07 GMT
CMD ["elasticsearch"]
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
	-	`sha256:424638b495a6da4a73d3a82bb8ddacdcb74a302ab461a07d6e6719d2c92d51cf`  
		Last Modified: Tue, 08 Nov 2016 21:46:33 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff72d0b7bea485979564c703993059b75dbaf6a4af1d11213b4619353936f8c`  
		Last Modified: Tue, 08 Nov 2016 21:46:35 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d25542ccc0236a46cb599bfae8b879b99e61ddf86346b9cb3212a7c55e5482c`  
		Last Modified: Tue, 08 Nov 2016 21:48:43 GMT  
		Size: 536.0 KB (536020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e18ad7cd1d0be9451cc9858fbcbdf25cf9278a9fd73face618df9defe71892f`  
		Last Modified: Tue, 08 Nov 2016 21:52:23 GMT  
		Size: 29.4 MB (29416293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3dd62a5b99c0e900403cc33e4106687592acde9ed6beef20ce3f8de07b20700`  
		Last Modified: Tue, 08 Nov 2016 21:52:19 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3731a9e71e1f112ebfac28a394b6e69411deab41f97313c0612dc079edfdce44`  
		Last Modified: Tue, 08 Nov 2016 21:52:19 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53eabcef7f8e91026faac42103f3fb6926cf1271e430552ca32103e7892de639`  
		Last Modified: Tue, 08 Nov 2016 21:52:19 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.2`

```console
$ docker pull elasticsearch@sha256:987eeb57e73ecf1513582c7117ad3a4dc1727ba7a4e141c3db7fca8a5339a9c6
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.0 MB (154950244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdaa263ad7f315286f53f550eb7944534295d0448d9be37712d4629ec7668364`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 08 Nov 2016 21:45:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 21:45:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 08 Nov 2016 21:45:49 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 08 Nov 2016 21:48:14 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/2.x/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 08 Nov 2016 21:51:52 GMT
ENV ELASTICSEARCH_VERSION=2.2.2
# Tue, 08 Nov 2016 21:52:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 21:52:03 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 21:52:04 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 08 Nov 2016 21:52:04 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 08 Nov 2016 21:52:05 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Tue, 08 Nov 2016 21:52:05 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 08 Nov 2016 21:52:06 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Tue, 08 Nov 2016 21:52:06 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 08 Nov 2016 21:52:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 21:52:07 GMT
CMD ["elasticsearch"]
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
	-	`sha256:424638b495a6da4a73d3a82bb8ddacdcb74a302ab461a07d6e6719d2c92d51cf`  
		Last Modified: Tue, 08 Nov 2016 21:46:33 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff72d0b7bea485979564c703993059b75dbaf6a4af1d11213b4619353936f8c`  
		Last Modified: Tue, 08 Nov 2016 21:46:35 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d25542ccc0236a46cb599bfae8b879b99e61ddf86346b9cb3212a7c55e5482c`  
		Last Modified: Tue, 08 Nov 2016 21:48:43 GMT  
		Size: 536.0 KB (536020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e18ad7cd1d0be9451cc9858fbcbdf25cf9278a9fd73face618df9defe71892f`  
		Last Modified: Tue, 08 Nov 2016 21:52:23 GMT  
		Size: 29.4 MB (29416293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3dd62a5b99c0e900403cc33e4106687592acde9ed6beef20ce3f8de07b20700`  
		Last Modified: Tue, 08 Nov 2016 21:52:19 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3731a9e71e1f112ebfac28a394b6e69411deab41f97313c0612dc079edfdce44`  
		Last Modified: Tue, 08 Nov 2016 21:52:19 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53eabcef7f8e91026faac42103f3fb6926cf1271e430552ca32103e7892de639`  
		Last Modified: Tue, 08 Nov 2016 21:52:19 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.3.5`

```console
$ docker pull elasticsearch@sha256:1dd841174ee3265b34f6a8f0a8b009ba24d9eb2787db568ffd095d3528ae2015
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.3.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.1 MB (153074180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bda7a560f2ebb6fe77122f8fd09c87f89865a44d40cf2751f800c08e7e41c6a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 08 Nov 2016 21:45:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 21:45:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 08 Nov 2016 21:45:49 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 08 Nov 2016 21:48:14 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/2.x/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 08 Nov 2016 21:52:53 GMT
ENV ELASTICSEARCH_VERSION=2.3.5
# Tue, 08 Nov 2016 21:53:02 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 21:53:03 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 21:53:03 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 08 Nov 2016 21:53:04 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 08 Nov 2016 21:53:05 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Tue, 08 Nov 2016 21:53:05 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 08 Nov 2016 21:53:06 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Tue, 08 Nov 2016 21:53:06 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 08 Nov 2016 21:53:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 21:53:07 GMT
CMD ["elasticsearch"]
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
	-	`sha256:424638b495a6da4a73d3a82bb8ddacdcb74a302ab461a07d6e6719d2c92d51cf`  
		Last Modified: Tue, 08 Nov 2016 21:46:33 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff72d0b7bea485979564c703993059b75dbaf6a4af1d11213b4619353936f8c`  
		Last Modified: Tue, 08 Nov 2016 21:46:35 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d25542ccc0236a46cb599bfae8b879b99e61ddf86346b9cb3212a7c55e5482c`  
		Last Modified: Tue, 08 Nov 2016 21:48:43 GMT  
		Size: 536.0 KB (536020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8346773aaa7a938cfc9fdaaf37478a036f9518094c00061893b823c25364fa7`  
		Last Modified: Tue, 08 Nov 2016 21:53:23 GMT  
		Size: 27.5 MB (27540228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da0add806aab7dc67bc2ff0fccf90bb3a1ee0e60c3626cbf6c1a91896fadd8fc`  
		Last Modified: Tue, 08 Nov 2016 21:53:20 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ac6846cc6688a742420b1542e8fdeea3ced81308b8757bd2c1067afbc1dce5`  
		Last Modified: Tue, 08 Nov 2016 21:53:19 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d59ae270ae20c0ef5453a198be26b256ce01d7b1e0158ec683ee3aac25b2179e`  
		Last Modified: Tue, 08 Nov 2016 21:53:20 GMT  
		Size: 467.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.3`

```console
$ docker pull elasticsearch@sha256:1dd841174ee3265b34f6a8f0a8b009ba24d9eb2787db568ffd095d3528ae2015
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.1 MB (153074180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bda7a560f2ebb6fe77122f8fd09c87f89865a44d40cf2751f800c08e7e41c6a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 08 Nov 2016 21:45:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 21:45:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 08 Nov 2016 21:45:49 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 08 Nov 2016 21:48:14 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/2.x/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 08 Nov 2016 21:52:53 GMT
ENV ELASTICSEARCH_VERSION=2.3.5
# Tue, 08 Nov 2016 21:53:02 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 21:53:03 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 21:53:03 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 08 Nov 2016 21:53:04 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 08 Nov 2016 21:53:05 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Tue, 08 Nov 2016 21:53:05 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 08 Nov 2016 21:53:06 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Tue, 08 Nov 2016 21:53:06 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 08 Nov 2016 21:53:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 21:53:07 GMT
CMD ["elasticsearch"]
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
	-	`sha256:424638b495a6da4a73d3a82bb8ddacdcb74a302ab461a07d6e6719d2c92d51cf`  
		Last Modified: Tue, 08 Nov 2016 21:46:33 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff72d0b7bea485979564c703993059b75dbaf6a4af1d11213b4619353936f8c`  
		Last Modified: Tue, 08 Nov 2016 21:46:35 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d25542ccc0236a46cb599bfae8b879b99e61ddf86346b9cb3212a7c55e5482c`  
		Last Modified: Tue, 08 Nov 2016 21:48:43 GMT  
		Size: 536.0 KB (536020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8346773aaa7a938cfc9fdaaf37478a036f9518094c00061893b823c25364fa7`  
		Last Modified: Tue, 08 Nov 2016 21:53:23 GMT  
		Size: 27.5 MB (27540228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da0add806aab7dc67bc2ff0fccf90bb3a1ee0e60c3626cbf6c1a91896fadd8fc`  
		Last Modified: Tue, 08 Nov 2016 21:53:20 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ac6846cc6688a742420b1542e8fdeea3ced81308b8757bd2c1067afbc1dce5`  
		Last Modified: Tue, 08 Nov 2016 21:53:19 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d59ae270ae20c0ef5453a198be26b256ce01d7b1e0158ec683ee3aac25b2179e`  
		Last Modified: Tue, 08 Nov 2016 21:53:20 GMT  
		Size: 467.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.4.2`

**does not exist** (yet?)

## `elasticsearch:2.4`

```console
$ docker pull elasticsearch@sha256:94d3b2f01529868f4a070c75c9f053b8c7528f5806f6da25e2f7ae6bb9ad3b9b
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.9 MB (152891605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e3cf79edcc3aae0c20b9a3d972f3165a82bb34c1379ff783a91735fbf623c41`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 08 Nov 2016 21:45:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 21:45:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 08 Nov 2016 21:45:49 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 08 Nov 2016 21:48:14 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/2.x/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 08 Nov 2016 21:48:14 GMT
ENV ELASTICSEARCH_VERSION=2.4.1
# Tue, 08 Nov 2016 21:48:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 21:48:25 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 21:48:25 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 08 Nov 2016 21:48:26 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 08 Nov 2016 21:48:27 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Tue, 08 Nov 2016 21:48:27 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 08 Nov 2016 21:48:28 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Tue, 08 Nov 2016 21:48:28 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 08 Nov 2016 21:48:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 21:48:29 GMT
CMD ["elasticsearch"]
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
	-	`sha256:424638b495a6da4a73d3a82bb8ddacdcb74a302ab461a07d6e6719d2c92d51cf`  
		Last Modified: Tue, 08 Nov 2016 21:46:33 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff72d0b7bea485979564c703993059b75dbaf6a4af1d11213b4619353936f8c`  
		Last Modified: Tue, 08 Nov 2016 21:46:35 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d25542ccc0236a46cb599bfae8b879b99e61ddf86346b9cb3212a7c55e5482c`  
		Last Modified: Tue, 08 Nov 2016 21:48:43 GMT  
		Size: 536.0 KB (536020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a46cae5caaae6b2594936f3bc0f3cff357011366d41377aa09fafc3fb88469`  
		Last Modified: Tue, 08 Nov 2016 21:48:44 GMT  
		Size: 27.4 MB (27357656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae4c257cb0b08a172ec4f07915e9305ddf6dc2e4f0f87f54c82f037cc15555e`  
		Last Modified: Tue, 08 Nov 2016 21:48:42 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81198a264f0be7f4bac259c40cde66dfb1e4d1b756cfa1e6e87898078a44ed38`  
		Last Modified: Tue, 08 Nov 2016 21:48:41 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0182f56c501f8ee914b4136a513746a60f874973b167e4b330066340a82abb00`  
		Last Modified: Tue, 08 Nov 2016 21:48:43 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2`

```console
$ docker pull elasticsearch@sha256:94d3b2f01529868f4a070c75c9f053b8c7528f5806f6da25e2f7ae6bb9ad3b9b
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.9 MB (152891605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e3cf79edcc3aae0c20b9a3d972f3165a82bb34c1379ff783a91735fbf623c41`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 08 Nov 2016 21:45:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 21:45:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 08 Nov 2016 21:45:49 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 08 Nov 2016 21:48:14 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/2.x/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 08 Nov 2016 21:48:14 GMT
ENV ELASTICSEARCH_VERSION=2.4.1
# Tue, 08 Nov 2016 21:48:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 21:48:25 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 21:48:25 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 08 Nov 2016 21:48:26 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 08 Nov 2016 21:48:27 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Tue, 08 Nov 2016 21:48:27 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 08 Nov 2016 21:48:28 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Tue, 08 Nov 2016 21:48:28 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 08 Nov 2016 21:48:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 21:48:29 GMT
CMD ["elasticsearch"]
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
	-	`sha256:424638b495a6da4a73d3a82bb8ddacdcb74a302ab461a07d6e6719d2c92d51cf`  
		Last Modified: Tue, 08 Nov 2016 21:46:33 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff72d0b7bea485979564c703993059b75dbaf6a4af1d11213b4619353936f8c`  
		Last Modified: Tue, 08 Nov 2016 21:46:35 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d25542ccc0236a46cb599bfae8b879b99e61ddf86346b9cb3212a7c55e5482c`  
		Last Modified: Tue, 08 Nov 2016 21:48:43 GMT  
		Size: 536.0 KB (536020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a46cae5caaae6b2594936f3bc0f3cff357011366d41377aa09fafc3fb88469`  
		Last Modified: Tue, 08 Nov 2016 21:48:44 GMT  
		Size: 27.4 MB (27357656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae4c257cb0b08a172ec4f07915e9305ddf6dc2e4f0f87f54c82f037cc15555e`  
		Last Modified: Tue, 08 Nov 2016 21:48:42 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81198a264f0be7f4bac259c40cde66dfb1e4d1b756cfa1e6e87898078a44ed38`  
		Last Modified: Tue, 08 Nov 2016 21:48:41 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0182f56c501f8ee914b4136a513746a60f874973b167e4b330066340a82abb00`  
		Last Modified: Tue, 08 Nov 2016 21:48:43 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.0.1`

```console
$ docker pull elasticsearch@sha256:c7eaa97e9b898b65f8f8588ade1c9c6187420b8ce6efb7d3300d9213cd5cb0dc
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:5.0.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.5 MB (158479184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:102d77d939029d16f01f587ca36b802e9927581c1c7d87fe122cef049c3eb3e4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 08 Nov 2016 21:45:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 21:45:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 08 Nov 2016 21:45:49 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 08 Nov 2016 21:53:53 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 15 Nov 2016 20:48:27 GMT
ENV ELASTICSEARCH_VERSION=5.0.1
# Tue, 15 Nov 2016 20:48:39 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 15 Nov 2016 20:48:39 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Nov 2016 20:48:39 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 15 Nov 2016 20:48:40 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 15 Nov 2016 20:48:40 GMT
COPY dir:aacebf91dc4c741fe8e3adf41add1f566e09f1d20f104cc9c8f9d6afb4190fe6 in ./config 
# Tue, 15 Nov 2016 20:48:41 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 15 Nov 2016 20:48:41 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Tue, 15 Nov 2016 20:48:41 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 15 Nov 2016 20:48:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Nov 2016 20:48:42 GMT
CMD ["elasticsearch"]
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
	-	`sha256:424638b495a6da4a73d3a82bb8ddacdcb74a302ab461a07d6e6719d2c92d51cf`  
		Last Modified: Tue, 08 Nov 2016 21:46:33 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff72d0b7bea485979564c703993059b75dbaf6a4af1d11213b4619353936f8c`  
		Last Modified: Tue, 08 Nov 2016 21:46:35 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0d6a2049bf2f64d20b3b28e2a2bf1d0d90dff8c536f9a8f6b4ebe75becd18e0`  
		Last Modified: Tue, 08 Nov 2016 21:54:28 GMT  
		Size: 536.0 KB (536036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51dc322097cbef25662404e155e10993b4f550be68983756773c08086795a67b`  
		Last Modified: Tue, 15 Nov 2016 20:53:00 GMT  
		Size: 32.9 MB (32945246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6cdd5ecea8946b235daaaa46e7db47aaf8ec3afe32d7d9b157bfc7196c0621`  
		Last Modified: Tue, 15 Nov 2016 20:52:56 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51cdecfd285ebaeaa28eed7902c8000ff784ed24f880b1efdb10825af71f3cd2`  
		Last Modified: Tue, 15 Nov 2016 20:52:56 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a05afcfde6c8572c2b3d74476029e55b26b67827fcf41e94a47ff4f6b8bc21`  
		Last Modified: Tue, 15 Nov 2016 20:52:58 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.0`

```console
$ docker pull elasticsearch@sha256:c7eaa97e9b898b65f8f8588ade1c9c6187420b8ce6efb7d3300d9213cd5cb0dc
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:5.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.5 MB (158479184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:102d77d939029d16f01f587ca36b802e9927581c1c7d87fe122cef049c3eb3e4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 08 Nov 2016 21:45:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 21:45:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 08 Nov 2016 21:45:49 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 08 Nov 2016 21:53:53 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 15 Nov 2016 20:48:27 GMT
ENV ELASTICSEARCH_VERSION=5.0.1
# Tue, 15 Nov 2016 20:48:39 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 15 Nov 2016 20:48:39 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Nov 2016 20:48:39 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 15 Nov 2016 20:48:40 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 15 Nov 2016 20:48:40 GMT
COPY dir:aacebf91dc4c741fe8e3adf41add1f566e09f1d20f104cc9c8f9d6afb4190fe6 in ./config 
# Tue, 15 Nov 2016 20:48:41 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 15 Nov 2016 20:48:41 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Tue, 15 Nov 2016 20:48:41 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 15 Nov 2016 20:48:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Nov 2016 20:48:42 GMT
CMD ["elasticsearch"]
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
	-	`sha256:424638b495a6da4a73d3a82bb8ddacdcb74a302ab461a07d6e6719d2c92d51cf`  
		Last Modified: Tue, 08 Nov 2016 21:46:33 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff72d0b7bea485979564c703993059b75dbaf6a4af1d11213b4619353936f8c`  
		Last Modified: Tue, 08 Nov 2016 21:46:35 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0d6a2049bf2f64d20b3b28e2a2bf1d0d90dff8c536f9a8f6b4ebe75becd18e0`  
		Last Modified: Tue, 08 Nov 2016 21:54:28 GMT  
		Size: 536.0 KB (536036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51dc322097cbef25662404e155e10993b4f550be68983756773c08086795a67b`  
		Last Modified: Tue, 15 Nov 2016 20:53:00 GMT  
		Size: 32.9 MB (32945246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6cdd5ecea8946b235daaaa46e7db47aaf8ec3afe32d7d9b157bfc7196c0621`  
		Last Modified: Tue, 15 Nov 2016 20:52:56 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51cdecfd285ebaeaa28eed7902c8000ff784ed24f880b1efdb10825af71f3cd2`  
		Last Modified: Tue, 15 Nov 2016 20:52:56 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a05afcfde6c8572c2b3d74476029e55b26b67827fcf41e94a47ff4f6b8bc21`  
		Last Modified: Tue, 15 Nov 2016 20:52:58 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5`

```console
$ docker pull elasticsearch@sha256:c7eaa97e9b898b65f8f8588ade1c9c6187420b8ce6efb7d3300d9213cd5cb0dc
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.5 MB (158479184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:102d77d939029d16f01f587ca36b802e9927581c1c7d87fe122cef049c3eb3e4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 08 Nov 2016 21:45:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 21:45:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 08 Nov 2016 21:45:49 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 08 Nov 2016 21:53:53 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 15 Nov 2016 20:48:27 GMT
ENV ELASTICSEARCH_VERSION=5.0.1
# Tue, 15 Nov 2016 20:48:39 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 15 Nov 2016 20:48:39 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Nov 2016 20:48:39 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 15 Nov 2016 20:48:40 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 15 Nov 2016 20:48:40 GMT
COPY dir:aacebf91dc4c741fe8e3adf41add1f566e09f1d20f104cc9c8f9d6afb4190fe6 in ./config 
# Tue, 15 Nov 2016 20:48:41 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 15 Nov 2016 20:48:41 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Tue, 15 Nov 2016 20:48:41 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 15 Nov 2016 20:48:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Nov 2016 20:48:42 GMT
CMD ["elasticsearch"]
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
	-	`sha256:424638b495a6da4a73d3a82bb8ddacdcb74a302ab461a07d6e6719d2c92d51cf`  
		Last Modified: Tue, 08 Nov 2016 21:46:33 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff72d0b7bea485979564c703993059b75dbaf6a4af1d11213b4619353936f8c`  
		Last Modified: Tue, 08 Nov 2016 21:46:35 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0d6a2049bf2f64d20b3b28e2a2bf1d0d90dff8c536f9a8f6b4ebe75becd18e0`  
		Last Modified: Tue, 08 Nov 2016 21:54:28 GMT  
		Size: 536.0 KB (536036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51dc322097cbef25662404e155e10993b4f550be68983756773c08086795a67b`  
		Last Modified: Tue, 15 Nov 2016 20:53:00 GMT  
		Size: 32.9 MB (32945246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6cdd5ecea8946b235daaaa46e7db47aaf8ec3afe32d7d9b157bfc7196c0621`  
		Last Modified: Tue, 15 Nov 2016 20:52:56 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51cdecfd285ebaeaa28eed7902c8000ff784ed24f880b1efdb10825af71f3cd2`  
		Last Modified: Tue, 15 Nov 2016 20:52:56 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a05afcfde6c8572c2b3d74476029e55b26b67827fcf41e94a47ff4f6b8bc21`  
		Last Modified: Tue, 15 Nov 2016 20:52:58 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:latest`

```console
$ docker pull elasticsearch@sha256:c7eaa97e9b898b65f8f8588ade1c9c6187420b8ce6efb7d3300d9213cd5cb0dc
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.5 MB (158479184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:102d77d939029d16f01f587ca36b802e9927581c1c7d87fe122cef049c3eb3e4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 08 Nov 2016 21:45:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 21:45:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 08 Nov 2016 21:45:49 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 08 Nov 2016 21:53:53 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 15 Nov 2016 20:48:27 GMT
ENV ELASTICSEARCH_VERSION=5.0.1
# Tue, 15 Nov 2016 20:48:39 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 15 Nov 2016 20:48:39 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Nov 2016 20:48:39 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 15 Nov 2016 20:48:40 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 15 Nov 2016 20:48:40 GMT
COPY dir:aacebf91dc4c741fe8e3adf41add1f566e09f1d20f104cc9c8f9d6afb4190fe6 in ./config 
# Tue, 15 Nov 2016 20:48:41 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 15 Nov 2016 20:48:41 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Tue, 15 Nov 2016 20:48:41 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 15 Nov 2016 20:48:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Nov 2016 20:48:42 GMT
CMD ["elasticsearch"]
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
	-	`sha256:424638b495a6da4a73d3a82bb8ddacdcb74a302ab461a07d6e6719d2c92d51cf`  
		Last Modified: Tue, 08 Nov 2016 21:46:33 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff72d0b7bea485979564c703993059b75dbaf6a4af1d11213b4619353936f8c`  
		Last Modified: Tue, 08 Nov 2016 21:46:35 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0d6a2049bf2f64d20b3b28e2a2bf1d0d90dff8c536f9a8f6b4ebe75becd18e0`  
		Last Modified: Tue, 08 Nov 2016 21:54:28 GMT  
		Size: 536.0 KB (536036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51dc322097cbef25662404e155e10993b4f550be68983756773c08086795a67b`  
		Last Modified: Tue, 15 Nov 2016 20:53:00 GMT  
		Size: 32.9 MB (32945246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6cdd5ecea8946b235daaaa46e7db47aaf8ec3afe32d7d9b157bfc7196c0621`  
		Last Modified: Tue, 15 Nov 2016 20:52:56 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51cdecfd285ebaeaa28eed7902c8000ff784ed24f880b1efdb10825af71f3cd2`  
		Last Modified: Tue, 15 Nov 2016 20:52:56 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a05afcfde6c8572c2b3d74476029e55b26b67827fcf41e94a47ff4f6b8bc21`  
		Last Modified: Tue, 15 Nov 2016 20:52:58 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
