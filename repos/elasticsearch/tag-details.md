<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `elasticsearch`

-	[`elasticsearch:1.5.2`](#elasticsearch152)
-	[`elasticsearch:1.5`](#elasticsearch15)
-	[`elasticsearch:1.6.2`](#elasticsearch162)
-	[`elasticsearch:1.6`](#elasticsearch16)
-	[`elasticsearch:1.7.5`](#elasticsearch175)
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
-	[`elasticsearch:2`](#elasticsearch2)
-	[`elasticsearch:latest`](#elasticsearchlatest)
-	[`elasticsearch:5.0.0-alpha5`](#elasticsearch500-alpha5)
-	[`elasticsearch:5.0.0`](#elasticsearch500)
-	[`elasticsearch:5.0`](#elasticsearch50)
-	[`elasticsearch:5`](#elasticsearch5)

## `elasticsearch:1.5.2`

```console
$ docker pull elasticsearch@sha256:3b4960ece5d078cd1683be6d9c11b056ecd53fad5cb295cbb086370a1e9adbe4
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:1.5.2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.1 MB (152055469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f9f04d4f3450a2110ca77efd5cf220cbe5da3b256b041a93f5a7665dfb5bff0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 17:18:49 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 Aug 2016 17:18:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 Aug 2016 17:19:12 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 11 Aug 2016 17:19:13 GMT
ENV ELASTICSEARCH_VERSION=1.5.2
# Thu, 11 Aug 2016 17:19:14 GMT
ENV ELASTICSEARCH_REPO_BASE=http://packages.elasticsearch.org/elasticsearch/1.5/debian
# Thu, 11 Aug 2016 17:19:16 GMT
RUN echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list
# Thu, 11 Aug 2016 17:20:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:20:17 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:20:17 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 11 Aug 2016 17:20:19 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Thu, 11 Aug 2016 17:20:21 GMT
COPY dir:31f8476cce13d884e30d94ee9384cd924f19b02a6833943b9d501f833cd60885 in ./config
# Thu, 11 Aug 2016 17:20:22 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 11 Aug 2016 17:20:23 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in /
# Thu, 11 Aug 2016 17:20:24 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 11 Aug 2016 17:20:24 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 17:20:25 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:587e958702ba2b8b7e2284775b712708a94c4bba8eb517f0336a8e59c7f74c15`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 807.9 KB (807928 bytes)
	-	`sha256:f2d29026b186e440fe444c687d5eb0768d581a0b02b03483ec6033693b382e04`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 1.4 KB (1447 bytes)
	-	`sha256:add2fca6275767e374cf3cfc8578fec2b6472f5aa11fb3a8982ccf6c3044d3bc`  
		Last Modified: Thu, 11 Aug 2016 17:20:35 GMT  
		Size: 226.0 B
	-	`sha256:e70a29d372c4ae26d6573f5c462f8b08b36829b59d1bb18702cfeed640551c29`  
		Last Modified: Thu, 11 Aug 2016 17:20:40 GMT  
		Size: 27.1 MB (27098812 bytes)
	-	`sha256:e18a3e4c0e5626ce8ec0f3b985359a6646379abf0005e7aac96c0d012c8dc232`  
		Last Modified: Thu, 11 Aug 2016 17:20:35 GMT  
		Size: 214.0 B
	-	`sha256:2afdcec06b271e100b201feaf6d3f5fbe2b220cd7c4f470387c2874298fbf93c`  
		Last Modified: Thu, 11 Aug 2016 17:20:35 GMT  
		Size: 497.0 B
	-	`sha256:2e15438cb27ba78c60225c04f53083fced996f43be6a62074c38f59a741c2ab4`  
		Last Modified: Thu, 11 Aug 2016 17:20:36 GMT  
		Size: 469.0 B

## `elasticsearch:1.5`

```console
$ docker pull elasticsearch@sha256:3b4960ece5d078cd1683be6d9c11b056ecd53fad5cb295cbb086370a1e9adbe4
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:1.5` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.1 MB (152055469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f9f04d4f3450a2110ca77efd5cf220cbe5da3b256b041a93f5a7665dfb5bff0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 17:18:49 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 Aug 2016 17:18:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 Aug 2016 17:19:12 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 11 Aug 2016 17:19:13 GMT
ENV ELASTICSEARCH_VERSION=1.5.2
# Thu, 11 Aug 2016 17:19:14 GMT
ENV ELASTICSEARCH_REPO_BASE=http://packages.elasticsearch.org/elasticsearch/1.5/debian
# Thu, 11 Aug 2016 17:19:16 GMT
RUN echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list
# Thu, 11 Aug 2016 17:20:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:20:17 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:20:17 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 11 Aug 2016 17:20:19 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Thu, 11 Aug 2016 17:20:21 GMT
COPY dir:31f8476cce13d884e30d94ee9384cd924f19b02a6833943b9d501f833cd60885 in ./config
# Thu, 11 Aug 2016 17:20:22 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 11 Aug 2016 17:20:23 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in /
# Thu, 11 Aug 2016 17:20:24 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 11 Aug 2016 17:20:24 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 17:20:25 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:587e958702ba2b8b7e2284775b712708a94c4bba8eb517f0336a8e59c7f74c15`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 807.9 KB (807928 bytes)
	-	`sha256:f2d29026b186e440fe444c687d5eb0768d581a0b02b03483ec6033693b382e04`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 1.4 KB (1447 bytes)
	-	`sha256:add2fca6275767e374cf3cfc8578fec2b6472f5aa11fb3a8982ccf6c3044d3bc`  
		Last Modified: Thu, 11 Aug 2016 17:20:35 GMT  
		Size: 226.0 B
	-	`sha256:e70a29d372c4ae26d6573f5c462f8b08b36829b59d1bb18702cfeed640551c29`  
		Last Modified: Thu, 11 Aug 2016 17:20:40 GMT  
		Size: 27.1 MB (27098812 bytes)
	-	`sha256:e18a3e4c0e5626ce8ec0f3b985359a6646379abf0005e7aac96c0d012c8dc232`  
		Last Modified: Thu, 11 Aug 2016 17:20:35 GMT  
		Size: 214.0 B
	-	`sha256:2afdcec06b271e100b201feaf6d3f5fbe2b220cd7c4f470387c2874298fbf93c`  
		Last Modified: Thu, 11 Aug 2016 17:20:35 GMT  
		Size: 497.0 B
	-	`sha256:2e15438cb27ba78c60225c04f53083fced996f43be6a62074c38f59a741c2ab4`  
		Last Modified: Thu, 11 Aug 2016 17:20:36 GMT  
		Size: 469.0 B

## `elasticsearch:1.6.2`

```console
$ docker pull elasticsearch@sha256:26d1ae865ee678639b33f689aca24a6b13c1a25c5f40d127ea5d7364d2375dc2
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:1.6.2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152377378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3acde2c75f7cc2e03f5dab933d3deec2587f5657fa010c559d447bef6fa00302`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 17:18:49 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 Aug 2016 17:18:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 Aug 2016 17:19:12 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 11 Aug 2016 17:25:21 GMT
ENV ELASTICSEARCH_VERSION=1.6.2
# Thu, 11 Aug 2016 17:25:22 GMT
ENV ELASTICSEARCH_REPO_BASE=http://packages.elasticsearch.org/elasticsearch/1.6/debian
# Thu, 11 Aug 2016 17:25:24 GMT
RUN echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list
# Thu, 11 Aug 2016 17:26:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:26:26 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:26:27 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 11 Aug 2016 17:26:29 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Thu, 11 Aug 2016 17:26:30 GMT
COPY dir:31f8476cce13d884e30d94ee9384cd924f19b02a6833943b9d501f833cd60885 in ./config
# Thu, 11 Aug 2016 17:26:31 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 11 Aug 2016 17:26:33 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in /
# Thu, 11 Aug 2016 17:26:33 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 11 Aug 2016 17:26:34 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 17:26:35 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:587e958702ba2b8b7e2284775b712708a94c4bba8eb517f0336a8e59c7f74c15`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 807.9 KB (807928 bytes)
	-	`sha256:f2d29026b186e440fe444c687d5eb0768d581a0b02b03483ec6033693b382e04`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 1.4 KB (1447 bytes)
	-	`sha256:19bc0a36713068dea1219ae368872f0bec6e1fd439c4812974cd8a64ab2d2343`  
		Last Modified: Thu, 11 Aug 2016 17:26:45 GMT  
		Size: 226.0 B
	-	`sha256:8d3a192529b39d8f56b5a0aa214160fa53caf9dae7fd0dcd1b06d3531979784d`  
		Last Modified: Thu, 11 Aug 2016 17:26:49 GMT  
		Size: 27.4 MB (27420722 bytes)
	-	`sha256:56335ed8ce2bc88fdddd278fdce11a89388c192b72b063afe5d93862ee1dd00b`  
		Last Modified: Thu, 11 Aug 2016 17:26:45 GMT  
		Size: 216.0 B
	-	`sha256:67ab34a46ee3873cb21abc7113647ee47f94dfba820b07879579a66d01e6cfa9`  
		Last Modified: Thu, 11 Aug 2016 17:26:45 GMT  
		Size: 496.0 B
	-	`sha256:7a14051f31e9f85e1a8bf28509855eff3a8d82ab93f7986aef8be418525922e1`  
		Last Modified: Thu, 11 Aug 2016 17:26:45 GMT  
		Size: 467.0 B

## `elasticsearch:1.6`

```console
$ docker pull elasticsearch@sha256:26d1ae865ee678639b33f689aca24a6b13c1a25c5f40d127ea5d7364d2375dc2
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:1.6` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152377378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3acde2c75f7cc2e03f5dab933d3deec2587f5657fa010c559d447bef6fa00302`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 17:18:49 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 Aug 2016 17:18:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 Aug 2016 17:19:12 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 11 Aug 2016 17:25:21 GMT
ENV ELASTICSEARCH_VERSION=1.6.2
# Thu, 11 Aug 2016 17:25:22 GMT
ENV ELASTICSEARCH_REPO_BASE=http://packages.elasticsearch.org/elasticsearch/1.6/debian
# Thu, 11 Aug 2016 17:25:24 GMT
RUN echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list
# Thu, 11 Aug 2016 17:26:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:26:26 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:26:27 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 11 Aug 2016 17:26:29 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Thu, 11 Aug 2016 17:26:30 GMT
COPY dir:31f8476cce13d884e30d94ee9384cd924f19b02a6833943b9d501f833cd60885 in ./config
# Thu, 11 Aug 2016 17:26:31 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 11 Aug 2016 17:26:33 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in /
# Thu, 11 Aug 2016 17:26:33 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 11 Aug 2016 17:26:34 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 17:26:35 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:587e958702ba2b8b7e2284775b712708a94c4bba8eb517f0336a8e59c7f74c15`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 807.9 KB (807928 bytes)
	-	`sha256:f2d29026b186e440fe444c687d5eb0768d581a0b02b03483ec6033693b382e04`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 1.4 KB (1447 bytes)
	-	`sha256:19bc0a36713068dea1219ae368872f0bec6e1fd439c4812974cd8a64ab2d2343`  
		Last Modified: Thu, 11 Aug 2016 17:26:45 GMT  
		Size: 226.0 B
	-	`sha256:8d3a192529b39d8f56b5a0aa214160fa53caf9dae7fd0dcd1b06d3531979784d`  
		Last Modified: Thu, 11 Aug 2016 17:26:49 GMT  
		Size: 27.4 MB (27420722 bytes)
	-	`sha256:56335ed8ce2bc88fdddd278fdce11a89388c192b72b063afe5d93862ee1dd00b`  
		Last Modified: Thu, 11 Aug 2016 17:26:45 GMT  
		Size: 216.0 B
	-	`sha256:67ab34a46ee3873cb21abc7113647ee47f94dfba820b07879579a66d01e6cfa9`  
		Last Modified: Thu, 11 Aug 2016 17:26:45 GMT  
		Size: 496.0 B
	-	`sha256:7a14051f31e9f85e1a8bf28509855eff3a8d82ab93f7986aef8be418525922e1`  
		Last Modified: Thu, 11 Aug 2016 17:26:45 GMT  
		Size: 467.0 B

## `elasticsearch:1.7.5`

```console
$ docker pull elasticsearch@sha256:b241875e63604bf0d08f6e25c5fb73a60fe39a320d67ed2994c1dfa1dbd1ae6a
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:1.7.5` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152378878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16666b073ee4d9f82f71a213654470982315af8908f477bab0426c23aef5e25b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 17:18:49 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 Aug 2016 17:18:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 Aug 2016 17:19:12 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 11 Aug 2016 17:27:09 GMT
ENV ELASTICSEARCH_VERSION=1.7.5
# Thu, 11 Aug 2016 17:27:10 GMT
ENV ELASTICSEARCH_REPO_BASE=http://packages.elasticsearch.org/elasticsearch/1.7/debian
# Thu, 11 Aug 2016 17:27:12 GMT
RUN echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list
# Thu, 11 Aug 2016 17:28:11 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:28:12 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:28:13 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 11 Aug 2016 17:28:15 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Thu, 11 Aug 2016 17:28:16 GMT
COPY dir:31f8476cce13d884e30d94ee9384cd924f19b02a6833943b9d501f833cd60885 in ./config
# Thu, 11 Aug 2016 17:28:17 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 11 Aug 2016 17:28:18 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in /
# Thu, 11 Aug 2016 17:28:19 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 11 Aug 2016 17:28:20 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 17:28:21 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:587e958702ba2b8b7e2284775b712708a94c4bba8eb517f0336a8e59c7f74c15`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 807.9 KB (807928 bytes)
	-	`sha256:f2d29026b186e440fe444c687d5eb0768d581a0b02b03483ec6033693b382e04`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 1.4 KB (1447 bytes)
	-	`sha256:b2360228c7a7634c94685b17518c67282630be55e91240090f092664b4f695b3`  
		Last Modified: Thu, 11 Aug 2016 17:28:31 GMT  
		Size: 226.0 B
	-	`sha256:d2161da95e41149774f4a3e3e96d8045c92a5516cbefb2ffcf79ddec6792c07c`  
		Last Modified: Thu, 11 Aug 2016 17:28:35 GMT  
		Size: 27.4 MB (27422223 bytes)
	-	`sha256:0a0fd2ab062b08b006838788c1cc0abade3b5481c35d9cf7bc09cefbf33b5b05`  
		Last Modified: Thu, 11 Aug 2016 17:28:31 GMT  
		Size: 215.0 B
	-	`sha256:9302986d868f0c1d76b53ef6746b304f239dbd84abfc25e7ec2afb1f3ffdf870`  
		Last Modified: Thu, 11 Aug 2016 17:28:32 GMT  
		Size: 494.0 B
	-	`sha256:a24c9e73e0f2bb630bb9e3e9bce895f2c45edc9b47ee6c67378e4ad51a2f6849`  
		Last Modified: Thu, 11 Aug 2016 17:28:31 GMT  
		Size: 469.0 B

## `elasticsearch:1.7`

```console
$ docker pull elasticsearch@sha256:b241875e63604bf0d08f6e25c5fb73a60fe39a320d67ed2994c1dfa1dbd1ae6a
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:1.7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152378878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16666b073ee4d9f82f71a213654470982315af8908f477bab0426c23aef5e25b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 17:18:49 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 Aug 2016 17:18:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 Aug 2016 17:19:12 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 11 Aug 2016 17:27:09 GMT
ENV ELASTICSEARCH_VERSION=1.7.5
# Thu, 11 Aug 2016 17:27:10 GMT
ENV ELASTICSEARCH_REPO_BASE=http://packages.elasticsearch.org/elasticsearch/1.7/debian
# Thu, 11 Aug 2016 17:27:12 GMT
RUN echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list
# Thu, 11 Aug 2016 17:28:11 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:28:12 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:28:13 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 11 Aug 2016 17:28:15 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Thu, 11 Aug 2016 17:28:16 GMT
COPY dir:31f8476cce13d884e30d94ee9384cd924f19b02a6833943b9d501f833cd60885 in ./config
# Thu, 11 Aug 2016 17:28:17 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 11 Aug 2016 17:28:18 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in /
# Thu, 11 Aug 2016 17:28:19 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 11 Aug 2016 17:28:20 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 17:28:21 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:587e958702ba2b8b7e2284775b712708a94c4bba8eb517f0336a8e59c7f74c15`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 807.9 KB (807928 bytes)
	-	`sha256:f2d29026b186e440fe444c687d5eb0768d581a0b02b03483ec6033693b382e04`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 1.4 KB (1447 bytes)
	-	`sha256:b2360228c7a7634c94685b17518c67282630be55e91240090f092664b4f695b3`  
		Last Modified: Thu, 11 Aug 2016 17:28:31 GMT  
		Size: 226.0 B
	-	`sha256:d2161da95e41149774f4a3e3e96d8045c92a5516cbefb2ffcf79ddec6792c07c`  
		Last Modified: Thu, 11 Aug 2016 17:28:35 GMT  
		Size: 27.4 MB (27422223 bytes)
	-	`sha256:0a0fd2ab062b08b006838788c1cc0abade3b5481c35d9cf7bc09cefbf33b5b05`  
		Last Modified: Thu, 11 Aug 2016 17:28:31 GMT  
		Size: 215.0 B
	-	`sha256:9302986d868f0c1d76b53ef6746b304f239dbd84abfc25e7ec2afb1f3ffdf870`  
		Last Modified: Thu, 11 Aug 2016 17:28:32 GMT  
		Size: 494.0 B
	-	`sha256:a24c9e73e0f2bb630bb9e3e9bce895f2c45edc9b47ee6c67378e4ad51a2f6849`  
		Last Modified: Thu, 11 Aug 2016 17:28:31 GMT  
		Size: 469.0 B

## `elasticsearch:1`

```console
$ docker pull elasticsearch@sha256:b241875e63604bf0d08f6e25c5fb73a60fe39a320d67ed2994c1dfa1dbd1ae6a
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152378878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16666b073ee4d9f82f71a213654470982315af8908f477bab0426c23aef5e25b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 17:18:49 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 Aug 2016 17:18:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 Aug 2016 17:19:12 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 11 Aug 2016 17:27:09 GMT
ENV ELASTICSEARCH_VERSION=1.7.5
# Thu, 11 Aug 2016 17:27:10 GMT
ENV ELASTICSEARCH_REPO_BASE=http://packages.elasticsearch.org/elasticsearch/1.7/debian
# Thu, 11 Aug 2016 17:27:12 GMT
RUN echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list
# Thu, 11 Aug 2016 17:28:11 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:28:12 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:28:13 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 11 Aug 2016 17:28:15 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Thu, 11 Aug 2016 17:28:16 GMT
COPY dir:31f8476cce13d884e30d94ee9384cd924f19b02a6833943b9d501f833cd60885 in ./config
# Thu, 11 Aug 2016 17:28:17 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 11 Aug 2016 17:28:18 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in /
# Thu, 11 Aug 2016 17:28:19 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 11 Aug 2016 17:28:20 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 17:28:21 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:587e958702ba2b8b7e2284775b712708a94c4bba8eb517f0336a8e59c7f74c15`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 807.9 KB (807928 bytes)
	-	`sha256:f2d29026b186e440fe444c687d5eb0768d581a0b02b03483ec6033693b382e04`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 1.4 KB (1447 bytes)
	-	`sha256:b2360228c7a7634c94685b17518c67282630be55e91240090f092664b4f695b3`  
		Last Modified: Thu, 11 Aug 2016 17:28:31 GMT  
		Size: 226.0 B
	-	`sha256:d2161da95e41149774f4a3e3e96d8045c92a5516cbefb2ffcf79ddec6792c07c`  
		Last Modified: Thu, 11 Aug 2016 17:28:35 GMT  
		Size: 27.4 MB (27422223 bytes)
	-	`sha256:0a0fd2ab062b08b006838788c1cc0abade3b5481c35d9cf7bc09cefbf33b5b05`  
		Last Modified: Thu, 11 Aug 2016 17:28:31 GMT  
		Size: 215.0 B
	-	`sha256:9302986d868f0c1d76b53ef6746b304f239dbd84abfc25e7ec2afb1f3ffdf870`  
		Last Modified: Thu, 11 Aug 2016 17:28:32 GMT  
		Size: 494.0 B
	-	`sha256:a24c9e73e0f2bb630bb9e3e9bce895f2c45edc9b47ee6c67378e4ad51a2f6849`  
		Last Modified: Thu, 11 Aug 2016 17:28:31 GMT  
		Size: 469.0 B

## `elasticsearch:2.0.2`

```console
$ docker pull elasticsearch@sha256:0f72ee5a46ed0eab5c5dcf9719a263db6e2fce9a3b30b494676ab813cffd8b39
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.0.2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.5 MB (153540146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09290f43aaa86f5d7dc2114a583fbdfe770099c2b50aaff2623545a3490d12ad`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 17:18:49 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 Aug 2016 17:18:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 Aug 2016 17:19:12 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 11 Aug 2016 17:29:05 GMT
ENV ELASTICSEARCH_VERSION=2.0.2
# Thu, 11 Aug 2016 17:29:06 GMT
ENV ELASTICSEARCH_REPO_BASE=http://packages.elasticsearch.org/elasticsearch/2.x/debian
# Thu, 11 Aug 2016 17:29:08 GMT
RUN echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list
# Thu, 11 Aug 2016 17:30:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:30:09 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:30:10 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 11 Aug 2016 17:30:12 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Thu, 11 Aug 2016 17:30:14 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config
# Thu, 11 Aug 2016 17:30:15 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 11 Aug 2016 17:30:16 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in /
# Thu, 11 Aug 2016 17:30:17 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 11 Aug 2016 17:30:18 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 17:30:18 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:587e958702ba2b8b7e2284775b712708a94c4bba8eb517f0336a8e59c7f74c15`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 807.9 KB (807928 bytes)
	-	`sha256:f2d29026b186e440fe444c687d5eb0768d581a0b02b03483ec6033693b382e04`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 1.4 KB (1447 bytes)
	-	`sha256:31e0b1983841826e79face586221ab71e9c0d6a4b60912cb6f268b858c40c9d4`  
		Last Modified: Thu, 11 Aug 2016 17:30:28 GMT  
		Size: 226.0 B
	-	`sha256:bcc8d6526d05cb353895bec0f355175a06d8976f53d1e870b92eed1648edaa87`  
		Last Modified: Thu, 11 Aug 2016 17:30:33 GMT  
		Size: 28.6 MB (28583445 bytes)
	-	`sha256:96d61fa6bc9becbc0d283605b90b4e968b9d45a2591cef397d4d52e78d5c9cb0`  
		Last Modified: Thu, 11 Aug 2016 17:30:28 GMT  
		Size: 216.0 B
	-	`sha256:bbd26cd8247998337a31c37280847cdefcdad67fd89abe634357695459874c9d`  
		Last Modified: Thu, 11 Aug 2016 17:30:28 GMT  
		Size: 539.0 B
	-	`sha256:6a41ac29fdf90152e37dfb71110c17369879de4b1982cfa650e0780ae685e2c3`  
		Last Modified: Thu, 11 Aug 2016 17:30:28 GMT  
		Size: 469.0 B

## `elasticsearch:2.0`

```console
$ docker pull elasticsearch@sha256:0f72ee5a46ed0eab5c5dcf9719a263db6e2fce9a3b30b494676ab813cffd8b39
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.5 MB (153540146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09290f43aaa86f5d7dc2114a583fbdfe770099c2b50aaff2623545a3490d12ad`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 17:18:49 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 Aug 2016 17:18:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 Aug 2016 17:19:12 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 11 Aug 2016 17:29:05 GMT
ENV ELASTICSEARCH_VERSION=2.0.2
# Thu, 11 Aug 2016 17:29:06 GMT
ENV ELASTICSEARCH_REPO_BASE=http://packages.elasticsearch.org/elasticsearch/2.x/debian
# Thu, 11 Aug 2016 17:29:08 GMT
RUN echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list
# Thu, 11 Aug 2016 17:30:09 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:30:09 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:30:10 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 11 Aug 2016 17:30:12 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Thu, 11 Aug 2016 17:30:14 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config
# Thu, 11 Aug 2016 17:30:15 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 11 Aug 2016 17:30:16 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in /
# Thu, 11 Aug 2016 17:30:17 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 11 Aug 2016 17:30:18 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 17:30:18 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:587e958702ba2b8b7e2284775b712708a94c4bba8eb517f0336a8e59c7f74c15`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 807.9 KB (807928 bytes)
	-	`sha256:f2d29026b186e440fe444c687d5eb0768d581a0b02b03483ec6033693b382e04`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 1.4 KB (1447 bytes)
	-	`sha256:31e0b1983841826e79face586221ab71e9c0d6a4b60912cb6f268b858c40c9d4`  
		Last Modified: Thu, 11 Aug 2016 17:30:28 GMT  
		Size: 226.0 B
	-	`sha256:bcc8d6526d05cb353895bec0f355175a06d8976f53d1e870b92eed1648edaa87`  
		Last Modified: Thu, 11 Aug 2016 17:30:33 GMT  
		Size: 28.6 MB (28583445 bytes)
	-	`sha256:96d61fa6bc9becbc0d283605b90b4e968b9d45a2591cef397d4d52e78d5c9cb0`  
		Last Modified: Thu, 11 Aug 2016 17:30:28 GMT  
		Size: 216.0 B
	-	`sha256:bbd26cd8247998337a31c37280847cdefcdad67fd89abe634357695459874c9d`  
		Last Modified: Thu, 11 Aug 2016 17:30:28 GMT  
		Size: 539.0 B
	-	`sha256:6a41ac29fdf90152e37dfb71110c17369879de4b1982cfa650e0780ae685e2c3`  
		Last Modified: Thu, 11 Aug 2016 17:30:28 GMT  
		Size: 469.0 B

## `elasticsearch:2.1.2`

```console
$ docker pull elasticsearch@sha256:93b5667fec635d70136a4564518c90f3cb95ae43e67538e94298aa2c0f6b9cdd
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.1.2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.0 MB (153955456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db728034d4faf44447d386c68f82facb40800f63fb776ba740d4c86f2667538c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 17:18:49 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 Aug 2016 17:18:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 Aug 2016 17:19:12 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 11 Aug 2016 17:30:51 GMT
ENV ELASTICSEARCH_VERSION=2.1.2
# Thu, 11 Aug 2016 17:30:52 GMT
ENV ELASTICSEARCH_REPO_BASE=http://packages.elasticsearch.org/elasticsearch/2.x/debian
# Thu, 11 Aug 2016 17:30:54 GMT
RUN echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list
# Thu, 11 Aug 2016 17:31:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:31:56 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:31:56 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 11 Aug 2016 17:31:58 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Thu, 11 Aug 2016 17:32:00 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config
# Thu, 11 Aug 2016 17:32:01 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 11 Aug 2016 17:32:02 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in /
# Thu, 11 Aug 2016 17:32:03 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 11 Aug 2016 17:32:04 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 17:32:04 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:587e958702ba2b8b7e2284775b712708a94c4bba8eb517f0336a8e59c7f74c15`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 807.9 KB (807928 bytes)
	-	`sha256:f2d29026b186e440fe444c687d5eb0768d581a0b02b03483ec6033693b382e04`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 1.4 KB (1447 bytes)
	-	`sha256:35cd8559b0c6a587abf23f8553c50f1d6cc63cbf36c248909d7fd1639a942384`  
		Last Modified: Thu, 11 Aug 2016 17:32:15 GMT  
		Size: 226.0 B
	-	`sha256:0dd234d8e5e69d9c95e9531bbe1036310edfe0fd952226af77928e20c8bbc1e8`  
		Last Modified: Thu, 11 Aug 2016 17:32:18 GMT  
		Size: 29.0 MB (28998755 bytes)
	-	`sha256:a25dbd992d686fbcceea82c5d19352e03bf659a0c7f8144c79607521ecc258b9`  
		Last Modified: Thu, 11 Aug 2016 17:32:14 GMT  
		Size: 215.0 B
	-	`sha256:7365552543c73ffeb0e6231b3997838c16a58e30ce260c2cd94c2207ff9baa0a`  
		Last Modified: Thu, 11 Aug 2016 17:32:14 GMT  
		Size: 540.0 B
	-	`sha256:81a5a14640c01990920e5a6a4c666ddc233bb1e48837ee65dc0d0bb7351efe5c`  
		Last Modified: Thu, 11 Aug 2016 17:32:15 GMT  
		Size: 469.0 B

## `elasticsearch:2.1`

```console
$ docker pull elasticsearch@sha256:93b5667fec635d70136a4564518c90f3cb95ae43e67538e94298aa2c0f6b9cdd
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.0 MB (153955456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db728034d4faf44447d386c68f82facb40800f63fb776ba740d4c86f2667538c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 17:18:49 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 Aug 2016 17:18:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 Aug 2016 17:19:12 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 11 Aug 2016 17:30:51 GMT
ENV ELASTICSEARCH_VERSION=2.1.2
# Thu, 11 Aug 2016 17:30:52 GMT
ENV ELASTICSEARCH_REPO_BASE=http://packages.elasticsearch.org/elasticsearch/2.x/debian
# Thu, 11 Aug 2016 17:30:54 GMT
RUN echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list
# Thu, 11 Aug 2016 17:31:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:31:56 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:31:56 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 11 Aug 2016 17:31:58 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Thu, 11 Aug 2016 17:32:00 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config
# Thu, 11 Aug 2016 17:32:01 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 11 Aug 2016 17:32:02 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in /
# Thu, 11 Aug 2016 17:32:03 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 11 Aug 2016 17:32:04 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 17:32:04 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:587e958702ba2b8b7e2284775b712708a94c4bba8eb517f0336a8e59c7f74c15`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 807.9 KB (807928 bytes)
	-	`sha256:f2d29026b186e440fe444c687d5eb0768d581a0b02b03483ec6033693b382e04`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 1.4 KB (1447 bytes)
	-	`sha256:35cd8559b0c6a587abf23f8553c50f1d6cc63cbf36c248909d7fd1639a942384`  
		Last Modified: Thu, 11 Aug 2016 17:32:15 GMT  
		Size: 226.0 B
	-	`sha256:0dd234d8e5e69d9c95e9531bbe1036310edfe0fd952226af77928e20c8bbc1e8`  
		Last Modified: Thu, 11 Aug 2016 17:32:18 GMT  
		Size: 29.0 MB (28998755 bytes)
	-	`sha256:a25dbd992d686fbcceea82c5d19352e03bf659a0c7f8144c79607521ecc258b9`  
		Last Modified: Thu, 11 Aug 2016 17:32:14 GMT  
		Size: 215.0 B
	-	`sha256:7365552543c73ffeb0e6231b3997838c16a58e30ce260c2cd94c2207ff9baa0a`  
		Last Modified: Thu, 11 Aug 2016 17:32:14 GMT  
		Size: 540.0 B
	-	`sha256:81a5a14640c01990920e5a6a4c666ddc233bb1e48837ee65dc0d0bb7351efe5c`  
		Last Modified: Thu, 11 Aug 2016 17:32:15 GMT  
		Size: 469.0 B

## `elasticsearch:2.2.2`

```console
$ docker pull elasticsearch@sha256:1f1f78116d3a585121a34563a515d79a823a50712a764ae9e55091bae386dd83
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.2.2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.4 MB (154372026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ad63774f5cf0bb6834984f8aa887ea564edb3d3ac9b6444cd9db4fedea5a7ec`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 17:18:49 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 Aug 2016 17:18:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 Aug 2016 17:19:12 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 11 Aug 2016 17:32:38 GMT
ENV ELASTICSEARCH_VERSION=2.2.2
# Thu, 11 Aug 2016 17:32:39 GMT
ENV ELASTICSEARCH_REPO_BASE=http://packages.elasticsearch.org/elasticsearch/2.x/debian
# Thu, 11 Aug 2016 17:32:41 GMT
RUN echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list
# Thu, 11 Aug 2016 17:33:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:33:43 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:33:43 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 11 Aug 2016 17:33:46 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Thu, 11 Aug 2016 17:33:47 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config
# Thu, 11 Aug 2016 17:33:48 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 11 Aug 2016 17:33:49 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in /
# Thu, 11 Aug 2016 17:33:50 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 11 Aug 2016 17:33:51 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 17:33:52 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:587e958702ba2b8b7e2284775b712708a94c4bba8eb517f0336a8e59c7f74c15`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 807.9 KB (807928 bytes)
	-	`sha256:f2d29026b186e440fe444c687d5eb0768d581a0b02b03483ec6033693b382e04`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 1.4 KB (1447 bytes)
	-	`sha256:08f6aacd7b083f3fcdd8505b8313abb30dd0083bc7bfee6cff1cdd5f9ddf400a`  
		Last Modified: Thu, 11 Aug 2016 17:34:02 GMT  
		Size: 225.0 B
	-	`sha256:a2f0ac98d3efe4b1791751533814bebf25ed85d414380d317ea3efeb165867c3`  
		Last Modified: Thu, 11 Aug 2016 17:34:08 GMT  
		Size: 29.4 MB (29415327 bytes)
	-	`sha256:ccc63ef472ad139562cbd400e5b67d2eb031b8eba3cdb3b47f68d1aecd5d1a43`  
		Last Modified: Thu, 11 Aug 2016 17:34:02 GMT  
		Size: 215.0 B
	-	`sha256:a235cd019d75002718d319b6337dfcf67b3bbc2b68b53fd8b32b64d8d1241f7e`  
		Last Modified: Thu, 11 Aug 2016 17:34:02 GMT  
		Size: 539.0 B
	-	`sha256:afd8bd9d98747e0d17cbacc9e505c506f710d2cc521426b107124d2d5bbd5786`  
		Last Modified: Thu, 11 Aug 2016 17:34:02 GMT  
		Size: 469.0 B

## `elasticsearch:2.2`

```console
$ docker pull elasticsearch@sha256:1f1f78116d3a585121a34563a515d79a823a50712a764ae9e55091bae386dd83
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.4 MB (154372026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ad63774f5cf0bb6834984f8aa887ea564edb3d3ac9b6444cd9db4fedea5a7ec`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 17:18:49 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 Aug 2016 17:18:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 Aug 2016 17:19:12 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 11 Aug 2016 17:32:38 GMT
ENV ELASTICSEARCH_VERSION=2.2.2
# Thu, 11 Aug 2016 17:32:39 GMT
ENV ELASTICSEARCH_REPO_BASE=http://packages.elasticsearch.org/elasticsearch/2.x/debian
# Thu, 11 Aug 2016 17:32:41 GMT
RUN echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list
# Thu, 11 Aug 2016 17:33:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:33:43 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:33:43 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 11 Aug 2016 17:33:46 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Thu, 11 Aug 2016 17:33:47 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config
# Thu, 11 Aug 2016 17:33:48 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 11 Aug 2016 17:33:49 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in /
# Thu, 11 Aug 2016 17:33:50 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 11 Aug 2016 17:33:51 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 17:33:52 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:587e958702ba2b8b7e2284775b712708a94c4bba8eb517f0336a8e59c7f74c15`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 807.9 KB (807928 bytes)
	-	`sha256:f2d29026b186e440fe444c687d5eb0768d581a0b02b03483ec6033693b382e04`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 1.4 KB (1447 bytes)
	-	`sha256:08f6aacd7b083f3fcdd8505b8313abb30dd0083bc7bfee6cff1cdd5f9ddf400a`  
		Last Modified: Thu, 11 Aug 2016 17:34:02 GMT  
		Size: 225.0 B
	-	`sha256:a2f0ac98d3efe4b1791751533814bebf25ed85d414380d317ea3efeb165867c3`  
		Last Modified: Thu, 11 Aug 2016 17:34:08 GMT  
		Size: 29.4 MB (29415327 bytes)
	-	`sha256:ccc63ef472ad139562cbd400e5b67d2eb031b8eba3cdb3b47f68d1aecd5d1a43`  
		Last Modified: Thu, 11 Aug 2016 17:34:02 GMT  
		Size: 215.0 B
	-	`sha256:a235cd019d75002718d319b6337dfcf67b3bbc2b68b53fd8b32b64d8d1241f7e`  
		Last Modified: Thu, 11 Aug 2016 17:34:02 GMT  
		Size: 539.0 B
	-	`sha256:afd8bd9d98747e0d17cbacc9e505c506f710d2cc521426b107124d2d5bbd5786`  
		Last Modified: Thu, 11 Aug 2016 17:34:02 GMT  
		Size: 469.0 B

## `elasticsearch:2.3.5`

```console
$ docker pull elasticsearch@sha256:6eecc2f2878a05bfc7a8f01e2b8f2f2ce8e5c3adb0799c8ef15248dbf1bb7815
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.3.5` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.5 MB (152495938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddb795388d57a4e04872558c9bf9a8a16bd0fd86421575daadedc80ad4492db5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 17:18:49 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 Aug 2016 17:18:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 Aug 2016 17:19:12 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 11 Aug 2016 17:21:00 GMT
ENV ELASTICSEARCH_VERSION=2.3.5
# Thu, 11 Aug 2016 17:21:01 GMT
ENV ELASTICSEARCH_REPO_BASE=http://packages.elasticsearch.org/elasticsearch/2.x/debian
# Thu, 11 Aug 2016 17:21:03 GMT
RUN echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list
# Thu, 11 Aug 2016 17:22:05 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:22:06 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:22:07 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 11 Aug 2016 17:22:09 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Thu, 11 Aug 2016 17:22:10 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config
# Thu, 11 Aug 2016 17:22:11 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 11 Aug 2016 17:22:12 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in /
# Thu, 11 Aug 2016 17:22:13 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 11 Aug 2016 17:22:14 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 17:22:15 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:587e958702ba2b8b7e2284775b712708a94c4bba8eb517f0336a8e59c7f74c15`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 807.9 KB (807928 bytes)
	-	`sha256:f2d29026b186e440fe444c687d5eb0768d581a0b02b03483ec6033693b382e04`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 1.4 KB (1447 bytes)
	-	`sha256:09f7dfb6af7f3243ceb5d9443eece51df5808f5d5b5515c267dcd751810c54e6`  
		Last Modified: Thu, 11 Aug 2016 17:22:25 GMT  
		Size: 224.0 B
	-	`sha256:8fe5922f9eb7df157e294364b9f6492de20596086264b73e3523a8befabfc60d`  
		Last Modified: Thu, 11 Aug 2016 17:22:28 GMT  
		Size: 27.5 MB (27539239 bytes)
	-	`sha256:df7240b728661d980773e1634be7268ace74150dde2311a5c1f5ad2f49a6c923`  
		Last Modified: Thu, 11 Aug 2016 17:22:25 GMT  
		Size: 214.0 B
	-	`sha256:ebd5ba30c6969ccd2ae80a2ba626c1f84a07dce960fc17bf622f9cddbfc987db`  
		Last Modified: Thu, 11 Aug 2016 17:22:25 GMT  
		Size: 540.0 B
	-	`sha256:2995da3129b57c4c61fc8ab5665510dcc0c83854ebc43161b677808273c14830`  
		Last Modified: Thu, 11 Aug 2016 17:22:25 GMT  
		Size: 470.0 B

## `elasticsearch:2.3`

```console
$ docker pull elasticsearch@sha256:6eecc2f2878a05bfc7a8f01e2b8f2f2ce8e5c3adb0799c8ef15248dbf1bb7815
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.3` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.5 MB (152495938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddb795388d57a4e04872558c9bf9a8a16bd0fd86421575daadedc80ad4492db5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 17:18:49 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 Aug 2016 17:18:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 Aug 2016 17:19:12 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 11 Aug 2016 17:21:00 GMT
ENV ELASTICSEARCH_VERSION=2.3.5
# Thu, 11 Aug 2016 17:21:01 GMT
ENV ELASTICSEARCH_REPO_BASE=http://packages.elasticsearch.org/elasticsearch/2.x/debian
# Thu, 11 Aug 2016 17:21:03 GMT
RUN echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list
# Thu, 11 Aug 2016 17:22:05 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:22:06 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:22:07 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 11 Aug 2016 17:22:09 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Thu, 11 Aug 2016 17:22:10 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config
# Thu, 11 Aug 2016 17:22:11 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 11 Aug 2016 17:22:12 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in /
# Thu, 11 Aug 2016 17:22:13 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 11 Aug 2016 17:22:14 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 17:22:15 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:587e958702ba2b8b7e2284775b712708a94c4bba8eb517f0336a8e59c7f74c15`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 807.9 KB (807928 bytes)
	-	`sha256:f2d29026b186e440fe444c687d5eb0768d581a0b02b03483ec6033693b382e04`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 1.4 KB (1447 bytes)
	-	`sha256:09f7dfb6af7f3243ceb5d9443eece51df5808f5d5b5515c267dcd751810c54e6`  
		Last Modified: Thu, 11 Aug 2016 17:22:25 GMT  
		Size: 224.0 B
	-	`sha256:8fe5922f9eb7df157e294364b9f6492de20596086264b73e3523a8befabfc60d`  
		Last Modified: Thu, 11 Aug 2016 17:22:28 GMT  
		Size: 27.5 MB (27539239 bytes)
	-	`sha256:df7240b728661d980773e1634be7268ace74150dde2311a5c1f5ad2f49a6c923`  
		Last Modified: Thu, 11 Aug 2016 17:22:25 GMT  
		Size: 214.0 B
	-	`sha256:ebd5ba30c6969ccd2ae80a2ba626c1f84a07dce960fc17bf622f9cddbfc987db`  
		Last Modified: Thu, 11 Aug 2016 17:22:25 GMT  
		Size: 540.0 B
	-	`sha256:2995da3129b57c4c61fc8ab5665510dcc0c83854ebc43161b677808273c14830`  
		Last Modified: Thu, 11 Aug 2016 17:22:25 GMT  
		Size: 470.0 B

## `elasticsearch:2`

```console
$ docker pull elasticsearch@sha256:6eecc2f2878a05bfc7a8f01e2b8f2f2ce8e5c3adb0799c8ef15248dbf1bb7815
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.5 MB (152495938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddb795388d57a4e04872558c9bf9a8a16bd0fd86421575daadedc80ad4492db5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 17:18:49 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 Aug 2016 17:18:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 Aug 2016 17:19:12 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 11 Aug 2016 17:21:00 GMT
ENV ELASTICSEARCH_VERSION=2.3.5
# Thu, 11 Aug 2016 17:21:01 GMT
ENV ELASTICSEARCH_REPO_BASE=http://packages.elasticsearch.org/elasticsearch/2.x/debian
# Thu, 11 Aug 2016 17:21:03 GMT
RUN echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list
# Thu, 11 Aug 2016 17:22:05 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:22:06 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:22:07 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 11 Aug 2016 17:22:09 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Thu, 11 Aug 2016 17:22:10 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config
# Thu, 11 Aug 2016 17:22:11 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 11 Aug 2016 17:22:12 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in /
# Thu, 11 Aug 2016 17:22:13 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 11 Aug 2016 17:22:14 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 17:22:15 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:587e958702ba2b8b7e2284775b712708a94c4bba8eb517f0336a8e59c7f74c15`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 807.9 KB (807928 bytes)
	-	`sha256:f2d29026b186e440fe444c687d5eb0768d581a0b02b03483ec6033693b382e04`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 1.4 KB (1447 bytes)
	-	`sha256:09f7dfb6af7f3243ceb5d9443eece51df5808f5d5b5515c267dcd751810c54e6`  
		Last Modified: Thu, 11 Aug 2016 17:22:25 GMT  
		Size: 224.0 B
	-	`sha256:8fe5922f9eb7df157e294364b9f6492de20596086264b73e3523a8befabfc60d`  
		Last Modified: Thu, 11 Aug 2016 17:22:28 GMT  
		Size: 27.5 MB (27539239 bytes)
	-	`sha256:df7240b728661d980773e1634be7268ace74150dde2311a5c1f5ad2f49a6c923`  
		Last Modified: Thu, 11 Aug 2016 17:22:25 GMT  
		Size: 214.0 B
	-	`sha256:ebd5ba30c6969ccd2ae80a2ba626c1f84a07dce960fc17bf622f9cddbfc987db`  
		Last Modified: Thu, 11 Aug 2016 17:22:25 GMT  
		Size: 540.0 B
	-	`sha256:2995da3129b57c4c61fc8ab5665510dcc0c83854ebc43161b677808273c14830`  
		Last Modified: Thu, 11 Aug 2016 17:22:25 GMT  
		Size: 470.0 B

## `elasticsearch:latest`

```console
$ docker pull elasticsearch@sha256:6eecc2f2878a05bfc7a8f01e2b8f2f2ce8e5c3adb0799c8ef15248dbf1bb7815
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.5 MB (152495938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddb795388d57a4e04872558c9bf9a8a16bd0fd86421575daadedc80ad4492db5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 17:18:49 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 Aug 2016 17:18:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 Aug 2016 17:19:12 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 11 Aug 2016 17:21:00 GMT
ENV ELASTICSEARCH_VERSION=2.3.5
# Thu, 11 Aug 2016 17:21:01 GMT
ENV ELASTICSEARCH_REPO_BASE=http://packages.elasticsearch.org/elasticsearch/2.x/debian
# Thu, 11 Aug 2016 17:21:03 GMT
RUN echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list
# Thu, 11 Aug 2016 17:22:05 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:22:06 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:22:07 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 11 Aug 2016 17:22:09 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Thu, 11 Aug 2016 17:22:10 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config
# Thu, 11 Aug 2016 17:22:11 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 11 Aug 2016 17:22:12 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in /
# Thu, 11 Aug 2016 17:22:13 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 11 Aug 2016 17:22:14 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 17:22:15 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:587e958702ba2b8b7e2284775b712708a94c4bba8eb517f0336a8e59c7f74c15`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 807.9 KB (807928 bytes)
	-	`sha256:f2d29026b186e440fe444c687d5eb0768d581a0b02b03483ec6033693b382e04`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 1.4 KB (1447 bytes)
	-	`sha256:09f7dfb6af7f3243ceb5d9443eece51df5808f5d5b5515c267dcd751810c54e6`  
		Last Modified: Thu, 11 Aug 2016 17:22:25 GMT  
		Size: 224.0 B
	-	`sha256:8fe5922f9eb7df157e294364b9f6492de20596086264b73e3523a8befabfc60d`  
		Last Modified: Thu, 11 Aug 2016 17:22:28 GMT  
		Size: 27.5 MB (27539239 bytes)
	-	`sha256:df7240b728661d980773e1634be7268ace74150dde2311a5c1f5ad2f49a6c923`  
		Last Modified: Thu, 11 Aug 2016 17:22:25 GMT  
		Size: 214.0 B
	-	`sha256:ebd5ba30c6969ccd2ae80a2ba626c1f84a07dce960fc17bf622f9cddbfc987db`  
		Last Modified: Thu, 11 Aug 2016 17:22:25 GMT  
		Size: 540.0 B
	-	`sha256:2995da3129b57c4c61fc8ab5665510dcc0c83854ebc43161b677808273c14830`  
		Last Modified: Thu, 11 Aug 2016 17:22:25 GMT  
		Size: 470.0 B

## `elasticsearch:5.0.0-alpha5`

```console
$ docker pull elasticsearch@sha256:5b162faaab22c5a100d1e46da87852a866a224204d0ad17e52183d5976d49f00
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:5.0.0-alpha5` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.2 MB (157169559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aac381cc412000c93c3cb3400050e0afd8f8767aea8f44d08132ed0244d8a202`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 17:18:49 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 Aug 2016 17:18:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 Aug 2016 17:19:12 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 11 Aug 2016 17:23:11 GMT
ENV ELASTICSEARCH_VERSION=5.0.0-alpha5
# Thu, 11 Aug 2016 17:23:12 GMT
ENV ELASTICSEARCH_REPO_BASE=http://packages.elasticsearch.org/elasticsearch/5.x/debian
# Thu, 11 Aug 2016 17:23:14 GMT
RUN echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list
# Thu, 11 Aug 2016 17:24:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:24:15 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:24:16 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 11 Aug 2016 17:24:18 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Thu, 11 Aug 2016 17:24:20 GMT
COPY dir:66d691a8b9d6cba7c5f563f417110f6739567ec3dc58ff126823448a5faa05b7 in ./config
# Thu, 11 Aug 2016 17:24:20 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 11 Aug 2016 17:24:22 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in /
# Thu, 11 Aug 2016 17:24:23 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 11 Aug 2016 17:24:23 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 17:24:24 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:587e958702ba2b8b7e2284775b712708a94c4bba8eb517f0336a8e59c7f74c15`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 807.9 KB (807928 bytes)
	-	`sha256:f2d29026b186e440fe444c687d5eb0768d581a0b02b03483ec6033693b382e04`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 1.4 KB (1447 bytes)
	-	`sha256:c86de0a059936f9267b80414fc6a033f111b0226f1104691fffed7cbe0a22a13`  
		Last Modified: Thu, 11 Aug 2016 17:24:34 GMT  
		Size: 228.0 B
	-	`sha256:95b9c6422e15c1b9fe277b5af119b79798990b90112d4b71ef600cf334997c8f`  
		Last Modified: Thu, 11 Aug 2016 17:24:39 GMT  
		Size: 32.2 MB (32212758 bytes)
	-	`sha256:e33fbe434bfc76f10af8d4820d8743de01f4e6988713551d69d54a71b981766c`  
		Last Modified: Thu, 11 Aug 2016 17:24:34 GMT  
		Size: 213.0 B
	-	`sha256:9cf37789f94a235c86289d19e08a0639d6d673a94de7c05edf3af9632635f105`  
		Last Modified: Thu, 11 Aug 2016 17:24:35 GMT  
		Size: 640.0 B
	-	`sha256:61a208bcb4d550743da2bc80847f73a81d648a489fbd3684de070f5b6066e090`  
		Last Modified: Thu, 11 Aug 2016 17:24:34 GMT  
		Size: 469.0 B

## `elasticsearch:5.0.0`

```console
$ docker pull elasticsearch@sha256:5b162faaab22c5a100d1e46da87852a866a224204d0ad17e52183d5976d49f00
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:5.0.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.2 MB (157169559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aac381cc412000c93c3cb3400050e0afd8f8767aea8f44d08132ed0244d8a202`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 17:18:49 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 Aug 2016 17:18:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 Aug 2016 17:19:12 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 11 Aug 2016 17:23:11 GMT
ENV ELASTICSEARCH_VERSION=5.0.0-alpha5
# Thu, 11 Aug 2016 17:23:12 GMT
ENV ELASTICSEARCH_REPO_BASE=http://packages.elasticsearch.org/elasticsearch/5.x/debian
# Thu, 11 Aug 2016 17:23:14 GMT
RUN echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list
# Thu, 11 Aug 2016 17:24:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:24:15 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:24:16 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 11 Aug 2016 17:24:18 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Thu, 11 Aug 2016 17:24:20 GMT
COPY dir:66d691a8b9d6cba7c5f563f417110f6739567ec3dc58ff126823448a5faa05b7 in ./config
# Thu, 11 Aug 2016 17:24:20 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 11 Aug 2016 17:24:22 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in /
# Thu, 11 Aug 2016 17:24:23 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 11 Aug 2016 17:24:23 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 17:24:24 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:587e958702ba2b8b7e2284775b712708a94c4bba8eb517f0336a8e59c7f74c15`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 807.9 KB (807928 bytes)
	-	`sha256:f2d29026b186e440fe444c687d5eb0768d581a0b02b03483ec6033693b382e04`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 1.4 KB (1447 bytes)
	-	`sha256:c86de0a059936f9267b80414fc6a033f111b0226f1104691fffed7cbe0a22a13`  
		Last Modified: Thu, 11 Aug 2016 17:24:34 GMT  
		Size: 228.0 B
	-	`sha256:95b9c6422e15c1b9fe277b5af119b79798990b90112d4b71ef600cf334997c8f`  
		Last Modified: Thu, 11 Aug 2016 17:24:39 GMT  
		Size: 32.2 MB (32212758 bytes)
	-	`sha256:e33fbe434bfc76f10af8d4820d8743de01f4e6988713551d69d54a71b981766c`  
		Last Modified: Thu, 11 Aug 2016 17:24:34 GMT  
		Size: 213.0 B
	-	`sha256:9cf37789f94a235c86289d19e08a0639d6d673a94de7c05edf3af9632635f105`  
		Last Modified: Thu, 11 Aug 2016 17:24:35 GMT  
		Size: 640.0 B
	-	`sha256:61a208bcb4d550743da2bc80847f73a81d648a489fbd3684de070f5b6066e090`  
		Last Modified: Thu, 11 Aug 2016 17:24:34 GMT  
		Size: 469.0 B

## `elasticsearch:5.0`

```console
$ docker pull elasticsearch@sha256:5b162faaab22c5a100d1e46da87852a866a224204d0ad17e52183d5976d49f00
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:5.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.2 MB (157169559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aac381cc412000c93c3cb3400050e0afd8f8767aea8f44d08132ed0244d8a202`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 17:18:49 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 Aug 2016 17:18:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 Aug 2016 17:19:12 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 11 Aug 2016 17:23:11 GMT
ENV ELASTICSEARCH_VERSION=5.0.0-alpha5
# Thu, 11 Aug 2016 17:23:12 GMT
ENV ELASTICSEARCH_REPO_BASE=http://packages.elasticsearch.org/elasticsearch/5.x/debian
# Thu, 11 Aug 2016 17:23:14 GMT
RUN echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list
# Thu, 11 Aug 2016 17:24:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:24:15 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:24:16 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 11 Aug 2016 17:24:18 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Thu, 11 Aug 2016 17:24:20 GMT
COPY dir:66d691a8b9d6cba7c5f563f417110f6739567ec3dc58ff126823448a5faa05b7 in ./config
# Thu, 11 Aug 2016 17:24:20 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 11 Aug 2016 17:24:22 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in /
# Thu, 11 Aug 2016 17:24:23 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 11 Aug 2016 17:24:23 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 17:24:24 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:587e958702ba2b8b7e2284775b712708a94c4bba8eb517f0336a8e59c7f74c15`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 807.9 KB (807928 bytes)
	-	`sha256:f2d29026b186e440fe444c687d5eb0768d581a0b02b03483ec6033693b382e04`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 1.4 KB (1447 bytes)
	-	`sha256:c86de0a059936f9267b80414fc6a033f111b0226f1104691fffed7cbe0a22a13`  
		Last Modified: Thu, 11 Aug 2016 17:24:34 GMT  
		Size: 228.0 B
	-	`sha256:95b9c6422e15c1b9fe277b5af119b79798990b90112d4b71ef600cf334997c8f`  
		Last Modified: Thu, 11 Aug 2016 17:24:39 GMT  
		Size: 32.2 MB (32212758 bytes)
	-	`sha256:e33fbe434bfc76f10af8d4820d8743de01f4e6988713551d69d54a71b981766c`  
		Last Modified: Thu, 11 Aug 2016 17:24:34 GMT  
		Size: 213.0 B
	-	`sha256:9cf37789f94a235c86289d19e08a0639d6d673a94de7c05edf3af9632635f105`  
		Last Modified: Thu, 11 Aug 2016 17:24:35 GMT  
		Size: 640.0 B
	-	`sha256:61a208bcb4d550743da2bc80847f73a81d648a489fbd3684de070f5b6066e090`  
		Last Modified: Thu, 11 Aug 2016 17:24:34 GMT  
		Size: 469.0 B

## `elasticsearch:5`

```console
$ docker pull elasticsearch@sha256:5b162faaab22c5a100d1e46da87852a866a224204d0ad17e52183d5976d49f00
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:5` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.2 MB (157169559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aac381cc412000c93c3cb3400050e0afd8f8767aea8f44d08132ed0244d8a202`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 29 Jul 2016 04:48:33 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 29 Jul 2016 04:48:34 GMT
ENV LANG=C.UTF-8
# Fri, 29 Jul 2016 04:48:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 29 Jul 2016 04:48:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Wed, 10 Aug 2016 18:41:34 GMT
ENV JAVA_VERSION=8u102
# Wed, 10 Aug 2016 18:41:35 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Wed, 10 Aug 2016 18:41:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Wed, 10 Aug 2016 18:42:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Aug 2016 18:42:59 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 11 Aug 2016 17:18:49 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 Aug 2016 17:18:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 Aug 2016 17:19:12 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 11 Aug 2016 17:23:11 GMT
ENV ELASTICSEARCH_VERSION=5.0.0-alpha5
# Thu, 11 Aug 2016 17:23:12 GMT
ENV ELASTICSEARCH_REPO_BASE=http://packages.elasticsearch.org/elasticsearch/5.x/debian
# Thu, 11 Aug 2016 17:23:14 GMT
RUN echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list
# Thu, 11 Aug 2016 17:24:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:24:15 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Aug 2016 17:24:16 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 11 Aug 2016 17:24:18 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Thu, 11 Aug 2016 17:24:20 GMT
COPY dir:66d691a8b9d6cba7c5f563f417110f6739567ec3dc58ff126823448a5faa05b7 in ./config
# Thu, 11 Aug 2016 17:24:20 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 11 Aug 2016 17:24:22 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in /
# Thu, 11 Aug 2016 17:24:23 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 11 Aug 2016 17:24:23 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Thu, 11 Aug 2016 17:24:24 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:42f3df3273929b5e92a50ccf25b3f47da32741b852e3920a2761922fefcc910f`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 566.7 KB (566729 bytes)
	-	`sha256:3decae4e97632104d90258921a164f84958cf0fe012006782f004e606aa0b3df`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 217.0 B
	-	`sha256:0a60a7e0c31dd2490489e2af5afc39c309f8aa317a718b54be8e7b3cd0400c79`  
		Last Modified: Fri, 29 Jul 2016 16:48:02 GMT  
		Size: 241.0 B
	-	`sha256:b42727ba883d4796223b11b2da763151f725ebd22f9ec6e2adb617665d536c88`  
		Last Modified: Wed, 10 Aug 2016 18:53:59 GMT  
		Size: 53.4 MB (53401736 bytes)
	-	`sha256:98299a24213cc4fe454163b76c150be38a18060a7bae26d7a55657c71475688b`  
		Last Modified: Wed, 10 Aug 2016 18:53:48 GMT  
		Size: 284.4 KB (284364 bytes)
	-	`sha256:587e958702ba2b8b7e2284775b712708a94c4bba8eb517f0336a8e59c7f74c15`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 807.9 KB (807928 bytes)
	-	`sha256:f2d29026b186e440fe444c687d5eb0768d581a0b02b03483ec6033693b382e04`  
		Last Modified: Thu, 11 Aug 2016 17:20:39 GMT  
		Size: 1.4 KB (1447 bytes)
	-	`sha256:c86de0a059936f9267b80414fc6a033f111b0226f1104691fffed7cbe0a22a13`  
		Last Modified: Thu, 11 Aug 2016 17:24:34 GMT  
		Size: 228.0 B
	-	`sha256:95b9c6422e15c1b9fe277b5af119b79798990b90112d4b71ef600cf334997c8f`  
		Last Modified: Thu, 11 Aug 2016 17:24:39 GMT  
		Size: 32.2 MB (32212758 bytes)
	-	`sha256:e33fbe434bfc76f10af8d4820d8743de01f4e6988713551d69d54a71b981766c`  
		Last Modified: Thu, 11 Aug 2016 17:24:34 GMT  
		Size: 213.0 B
	-	`sha256:9cf37789f94a235c86289d19e08a0639d6d673a94de7c05edf3af9632635f105`  
		Last Modified: Thu, 11 Aug 2016 17:24:35 GMT  
		Size: 640.0 B
	-	`sha256:61a208bcb4d550743da2bc80847f73a81d648a489fbd3684de070f5b6066e090`  
		Last Modified: Thu, 11 Aug 2016 17:24:34 GMT  
		Size: 469.0 B
