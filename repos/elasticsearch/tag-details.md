<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

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
-	[`elasticsearch:2.4.1`](#elasticsearch241)
-	[`elasticsearch:2.4`](#elasticsearch24)
-	[`elasticsearch:2`](#elasticsearch2)
-	[`elasticsearch:latest`](#elasticsearchlatest)
-	[`elasticsearch:5.0.0-rc1`](#elasticsearch500-rc1)
-	[`elasticsearch:5.0.0`](#elasticsearch500)
-	[`elasticsearch:5.0`](#elasticsearch50)
-	[`elasticsearch:5`](#elasticsearch5)

## `elasticsearch:1.5.2`

```console
$ docker pull elasticsearch@sha256:3f6ea712a941eeb217188e2cbab703fbf1d26241359163d4e8b49fa3274d3ce5
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:1.5.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.6 MB (152581244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8db48151e684909ccfcc4bed2f4a57e661cd5c8d0cdce921711953a58de51e95`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 00:28:27 GMT
ENV GOSU_VERSION=1.7
# Sat, 24 Sep 2016 00:28:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 24 Sep 2016 00:28:34 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 18 Oct 2016 23:37:53 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/1.5/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 18 Oct 2016 23:37:57 GMT
ENV ELASTICSEARCH_VERSION=1.5.2
# Tue, 18 Oct 2016 23:38:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Oct 2016 23:38:08 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 23:38:08 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 18 Oct 2016 23:38:09 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 18 Oct 2016 23:38:10 GMT
COPY dir:31f8476cce13d884e30d94ee9384cd924f19b02a6833943b9d501f833cd60885 in ./config 
# Tue, 18 Oct 2016 23:38:10 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 18 Oct 2016 23:38:11 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Tue, 18 Oct 2016 23:38:11 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 18 Oct 2016 23:38:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:38:12 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcda778c27e01ecd3b9e7c7d0d8aab02a662fea7116b8fad1fdd506d60a1935`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef4f9486437f1439290f90526264a63153def936a38435068bd1c08923dbb58`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 1.5 KB (1453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f7f93c0384cb3517ddcc525fcdc47059139c04b079a646841f83bfdc6e24eb`  
		Last Modified: Tue, 18 Oct 2016 23:38:21 GMT  
		Size: 535.5 KB (535454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6686c502c90a29edbb8bedf83a65c16b9db95b40bb2e25313b469217dc7345`  
		Last Modified: Tue, 18 Oct 2016 23:38:27 GMT  
		Size: 27.1 MB (27099526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be786a87d0afe3b45c727072abc46d73c469b1db2be187ffbe8e542199f1d26c`  
		Last Modified: Tue, 18 Oct 2016 23:38:21 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6478ab3e9fe57b9d428a97516372dfc6592dad8c7193974a2ae37f0d7554ec17`  
		Last Modified: Tue, 18 Oct 2016 23:38:21 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc8e0eeef1a1e59ffd0990b5ce7a2cf66ead8092d27b443bebfff00627ef5ab`  
		Last Modified: Tue, 18 Oct 2016 23:38:21 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:1.5`

```console
$ docker pull elasticsearch@sha256:3f6ea712a941eeb217188e2cbab703fbf1d26241359163d4e8b49fa3274d3ce5
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:1.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.6 MB (152581244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8db48151e684909ccfcc4bed2f4a57e661cd5c8d0cdce921711953a58de51e95`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 00:28:27 GMT
ENV GOSU_VERSION=1.7
# Sat, 24 Sep 2016 00:28:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 24 Sep 2016 00:28:34 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 18 Oct 2016 23:37:53 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/1.5/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 18 Oct 2016 23:37:57 GMT
ENV ELASTICSEARCH_VERSION=1.5.2
# Tue, 18 Oct 2016 23:38:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Oct 2016 23:38:08 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 23:38:08 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 18 Oct 2016 23:38:09 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 18 Oct 2016 23:38:10 GMT
COPY dir:31f8476cce13d884e30d94ee9384cd924f19b02a6833943b9d501f833cd60885 in ./config 
# Tue, 18 Oct 2016 23:38:10 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 18 Oct 2016 23:38:11 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Tue, 18 Oct 2016 23:38:11 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 18 Oct 2016 23:38:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:38:12 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcda778c27e01ecd3b9e7c7d0d8aab02a662fea7116b8fad1fdd506d60a1935`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef4f9486437f1439290f90526264a63153def936a38435068bd1c08923dbb58`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 1.5 KB (1453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98f7f93c0384cb3517ddcc525fcdc47059139c04b079a646841f83bfdc6e24eb`  
		Last Modified: Tue, 18 Oct 2016 23:38:21 GMT  
		Size: 535.5 KB (535454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc6686c502c90a29edbb8bedf83a65c16b9db95b40bb2e25313b469217dc7345`  
		Last Modified: Tue, 18 Oct 2016 23:38:27 GMT  
		Size: 27.1 MB (27099526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be786a87d0afe3b45c727072abc46d73c469b1db2be187ffbe8e542199f1d26c`  
		Last Modified: Tue, 18 Oct 2016 23:38:21 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6478ab3e9fe57b9d428a97516372dfc6592dad8c7193974a2ae37f0d7554ec17`  
		Last Modified: Tue, 18 Oct 2016 23:38:21 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc8e0eeef1a1e59ffd0990b5ce7a2cf66ead8092d27b443bebfff00627ef5ab`  
		Last Modified: Tue, 18 Oct 2016 23:38:21 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:1.6.2`

```console
$ docker pull elasticsearch@sha256:4dc721b8f64def6ae6e17e2035cc8404f7433908ee4527ed071ce2eaa64a5073
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:1.6.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152366985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efcf9293b7e4a0cb7ad1308f9440cf572308110f90c3246fa13eeb2624862630`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 00:28:27 GMT
ENV GOSU_VERSION=1.7
# Sat, 24 Sep 2016 00:28:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 24 Sep 2016 00:28:34 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Sat, 24 Sep 2016 00:30:13 GMT
ENV ELASTICSEARCH_VERSION=1.6.2
# Sat, 24 Sep 2016 00:30:14 GMT
ENV ELASTICSEARCH_REPO_BASE=http://packages.elasticsearch.org/elasticsearch/1.6/debian
# Sat, 24 Sep 2016 00:30:15 GMT
RUN echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list
# Sat, 24 Sep 2016 00:30:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:30:24 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 00:30:25 GMT
WORKDIR /usr/share/elasticsearch
# Sat, 24 Sep 2016 00:30:25 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Sat, 24 Sep 2016 00:30:26 GMT
COPY dir:31f8476cce13d884e30d94ee9384cd924f19b02a6833943b9d501f833cd60885 in ./config 
# Sat, 24 Sep 2016 00:30:26 GMT
VOLUME [/usr/share/elasticsearch/data]
# Sat, 24 Sep 2016 00:30:27 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Sat, 24 Sep 2016 00:30:27 GMT
EXPOSE 9200/tcp 9300/tcp
# Sat, 24 Sep 2016 00:30:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 24 Sep 2016 00:30:28 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcda778c27e01ecd3b9e7c7d0d8aab02a662fea7116b8fad1fdd506d60a1935`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef4f9486437f1439290f90526264a63153def936a38435068bd1c08923dbb58`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 1.5 KB (1453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deab66769af9319976406c5f653142a42bad7a39cb82aa796b2770ad27add0c9`  
		Last Modified: Sat, 24 Sep 2016 00:30:36 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84bc1fc479399bf7a6a4f2555025c3d30255e9a2fded80a49c95f88d54b9648b`  
		Last Modified: Sat, 24 Sep 2016 00:30:38 GMT  
		Size: 27.4 MB (27420497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a02aaabe8a59328d247dac16eca21547f0c10be6a006aac88e19c0c35d097e1`  
		Last Modified: Sat, 24 Sep 2016 00:30:35 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c9718e98ce188bf6fd462d1a359d8b9fbf11d847aac48ccba38028bd596fb31`  
		Last Modified: Sat, 24 Sep 2016 00:30:36 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b895890ef63118bb1cc8e93e1fc8ef802d71778d89dc4c548b083ecd0669747e`  
		Last Modified: Sat, 24 Sep 2016 00:30:35 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:1.6`

```console
$ docker pull elasticsearch@sha256:4dc721b8f64def6ae6e17e2035cc8404f7433908ee4527ed071ce2eaa64a5073
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:1.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.4 MB (152366985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efcf9293b7e4a0cb7ad1308f9440cf572308110f90c3246fa13eeb2624862630`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 00:28:27 GMT
ENV GOSU_VERSION=1.7
# Sat, 24 Sep 2016 00:28:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 24 Sep 2016 00:28:34 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Sat, 24 Sep 2016 00:30:13 GMT
ENV ELASTICSEARCH_VERSION=1.6.2
# Sat, 24 Sep 2016 00:30:14 GMT
ENV ELASTICSEARCH_REPO_BASE=http://packages.elasticsearch.org/elasticsearch/1.6/debian
# Sat, 24 Sep 2016 00:30:15 GMT
RUN echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list
# Sat, 24 Sep 2016 00:30:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:30:24 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 00:30:25 GMT
WORKDIR /usr/share/elasticsearch
# Sat, 24 Sep 2016 00:30:25 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Sat, 24 Sep 2016 00:30:26 GMT
COPY dir:31f8476cce13d884e30d94ee9384cd924f19b02a6833943b9d501f833cd60885 in ./config 
# Sat, 24 Sep 2016 00:30:26 GMT
VOLUME [/usr/share/elasticsearch/data]
# Sat, 24 Sep 2016 00:30:27 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Sat, 24 Sep 2016 00:30:27 GMT
EXPOSE 9200/tcp 9300/tcp
# Sat, 24 Sep 2016 00:30:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 24 Sep 2016 00:30:28 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcda778c27e01ecd3b9e7c7d0d8aab02a662fea7116b8fad1fdd506d60a1935`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef4f9486437f1439290f90526264a63153def936a38435068bd1c08923dbb58`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 1.5 KB (1453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deab66769af9319976406c5f653142a42bad7a39cb82aa796b2770ad27add0c9`  
		Last Modified: Sat, 24 Sep 2016 00:30:36 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84bc1fc479399bf7a6a4f2555025c3d30255e9a2fded80a49c95f88d54b9648b`  
		Last Modified: Sat, 24 Sep 2016 00:30:38 GMT  
		Size: 27.4 MB (27420497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a02aaabe8a59328d247dac16eca21547f0c10be6a006aac88e19c0c35d097e1`  
		Last Modified: Sat, 24 Sep 2016 00:30:35 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c9718e98ce188bf6fd462d1a359d8b9fbf11d847aac48ccba38028bd596fb31`  
		Last Modified: Sat, 24 Sep 2016 00:30:36 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b895890ef63118bb1cc8e93e1fc8ef802d71778d89dc4c548b083ecd0669747e`  
		Last Modified: Sat, 24 Sep 2016 00:30:35 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:1.7.5`

```console
$ docker pull elasticsearch@sha256:ba88f943c819bbb1e64014a45158375e01cf6a09085a6ab52782a0bfa5a18063
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:1.7.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.9 MB (152904600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd22fa4281521c514c750e15a2686754176038d22bdf658627d796f3eb9fb948`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 00:28:27 GMT
ENV GOSU_VERSION=1.7
# Sat, 24 Sep 2016 00:28:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 24 Sep 2016 00:28:34 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 18 Oct 2016 23:36:42 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/1.7/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 18 Oct 2016 23:36:44 GMT
ENV ELASTICSEARCH_VERSION=1.7.5
# Tue, 18 Oct 2016 23:36:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Oct 2016 23:36:54 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 23:36:55 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 18 Oct 2016 23:36:56 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 18 Oct 2016 23:36:56 GMT
COPY dir:31f8476cce13d884e30d94ee9384cd924f19b02a6833943b9d501f833cd60885 in ./config 
# Tue, 18 Oct 2016 23:36:56 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 18 Oct 2016 23:36:57 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Tue, 18 Oct 2016 23:36:57 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 18 Oct 2016 23:36:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:36:58 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcda778c27e01ecd3b9e7c7d0d8aab02a662fea7116b8fad1fdd506d60a1935`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef4f9486437f1439290f90526264a63153def936a38435068bd1c08923dbb58`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 1.5 KB (1453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ac8403dd732f7680f73660e905bc0db637a74dfd85aef995af217c339281b8`  
		Last Modified: Tue, 18 Oct 2016 23:37:13 GMT  
		Size: 535.5 KB (535470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f628b09318eb6922a87a49166b2a69b38da27e314f62483a9272d3fbc6f604`  
		Last Modified: Tue, 18 Oct 2016 23:37:18 GMT  
		Size: 27.4 MB (27422866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:314a0911e037eefc4b4e96696d2fce600971f9b5cec2f7d6c76c0ca3d69f7d3b`  
		Last Modified: Tue, 18 Oct 2016 23:37:12 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43fa7815b8d8e336cfb640694c052585ebcae7cf431ece0e245f2465ca874ad3`  
		Last Modified: Tue, 18 Oct 2016 23:37:12 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06946169383749084bab640e909fbc64d4145ec4dd041ebe4ee21e052b916ec9`  
		Last Modified: Tue, 18 Oct 2016 23:37:12 GMT  
		Size: 467.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:1.7`

```console
$ docker pull elasticsearch@sha256:ba88f943c819bbb1e64014a45158375e01cf6a09085a6ab52782a0bfa5a18063
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:1.7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.9 MB (152904600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd22fa4281521c514c750e15a2686754176038d22bdf658627d796f3eb9fb948`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 00:28:27 GMT
ENV GOSU_VERSION=1.7
# Sat, 24 Sep 2016 00:28:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 24 Sep 2016 00:28:34 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 18 Oct 2016 23:36:42 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/1.7/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 18 Oct 2016 23:36:44 GMT
ENV ELASTICSEARCH_VERSION=1.7.5
# Tue, 18 Oct 2016 23:36:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Oct 2016 23:36:54 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 23:36:55 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 18 Oct 2016 23:36:56 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 18 Oct 2016 23:36:56 GMT
COPY dir:31f8476cce13d884e30d94ee9384cd924f19b02a6833943b9d501f833cd60885 in ./config 
# Tue, 18 Oct 2016 23:36:56 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 18 Oct 2016 23:36:57 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Tue, 18 Oct 2016 23:36:57 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 18 Oct 2016 23:36:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:36:58 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcda778c27e01ecd3b9e7c7d0d8aab02a662fea7116b8fad1fdd506d60a1935`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef4f9486437f1439290f90526264a63153def936a38435068bd1c08923dbb58`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 1.5 KB (1453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ac8403dd732f7680f73660e905bc0db637a74dfd85aef995af217c339281b8`  
		Last Modified: Tue, 18 Oct 2016 23:37:13 GMT  
		Size: 535.5 KB (535470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f628b09318eb6922a87a49166b2a69b38da27e314f62483a9272d3fbc6f604`  
		Last Modified: Tue, 18 Oct 2016 23:37:18 GMT  
		Size: 27.4 MB (27422866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:314a0911e037eefc4b4e96696d2fce600971f9b5cec2f7d6c76c0ca3d69f7d3b`  
		Last Modified: Tue, 18 Oct 2016 23:37:12 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43fa7815b8d8e336cfb640694c052585ebcae7cf431ece0e245f2465ca874ad3`  
		Last Modified: Tue, 18 Oct 2016 23:37:12 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06946169383749084bab640e909fbc64d4145ec4dd041ebe4ee21e052b916ec9`  
		Last Modified: Tue, 18 Oct 2016 23:37:12 GMT  
		Size: 467.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:1`

```console
$ docker pull elasticsearch@sha256:ba88f943c819bbb1e64014a45158375e01cf6a09085a6ab52782a0bfa5a18063
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.9 MB (152904600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd22fa4281521c514c750e15a2686754176038d22bdf658627d796f3eb9fb948`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 00:28:27 GMT
ENV GOSU_VERSION=1.7
# Sat, 24 Sep 2016 00:28:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 24 Sep 2016 00:28:34 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 18 Oct 2016 23:36:42 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/1.7/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 18 Oct 2016 23:36:44 GMT
ENV ELASTICSEARCH_VERSION=1.7.5
# Tue, 18 Oct 2016 23:36:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Oct 2016 23:36:54 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 23:36:55 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 18 Oct 2016 23:36:56 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 18 Oct 2016 23:36:56 GMT
COPY dir:31f8476cce13d884e30d94ee9384cd924f19b02a6833943b9d501f833cd60885 in ./config 
# Tue, 18 Oct 2016 23:36:56 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 18 Oct 2016 23:36:57 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Tue, 18 Oct 2016 23:36:57 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 18 Oct 2016 23:36:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Oct 2016 23:36:58 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcda778c27e01ecd3b9e7c7d0d8aab02a662fea7116b8fad1fdd506d60a1935`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef4f9486437f1439290f90526264a63153def936a38435068bd1c08923dbb58`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 1.5 KB (1453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ac8403dd732f7680f73660e905bc0db637a74dfd85aef995af217c339281b8`  
		Last Modified: Tue, 18 Oct 2016 23:37:13 GMT  
		Size: 535.5 KB (535470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f628b09318eb6922a87a49166b2a69b38da27e314f62483a9272d3fbc6f604`  
		Last Modified: Tue, 18 Oct 2016 23:37:18 GMT  
		Size: 27.4 MB (27422866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:314a0911e037eefc4b4e96696d2fce600971f9b5cec2f7d6c76c0ca3d69f7d3b`  
		Last Modified: Tue, 18 Oct 2016 23:37:12 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43fa7815b8d8e336cfb640694c052585ebcae7cf431ece0e245f2465ca874ad3`  
		Last Modified: Tue, 18 Oct 2016 23:37:12 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06946169383749084bab640e909fbc64d4145ec4dd041ebe4ee21e052b916ec9`  
		Last Modified: Tue, 18 Oct 2016 23:37:12 GMT  
		Size: 467.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.0.2`

```console
$ docker pull elasticsearch@sha256:b6283a9091ff4791275458edcbf77c5d73c16b069639d6d659a5d287bd4c6aa4
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.0.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.5 MB (153529757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24af09db90e9469bf8c03abd9dc5d17859f4302f0f992e480d5f69e6c1309a94`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 00:28:27 GMT
ENV GOSU_VERSION=1.7
# Sat, 24 Sep 2016 00:28:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 24 Sep 2016 00:28:34 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Sat, 24 Sep 2016 00:32:09 GMT
ENV ELASTICSEARCH_VERSION=2.0.2
# Sat, 24 Sep 2016 00:32:09 GMT
ENV ELASTICSEARCH_REPO_BASE=http://packages.elasticsearch.org/elasticsearch/2.x/debian
# Sat, 24 Sep 2016 00:32:10 GMT
RUN echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list
# Sat, 24 Sep 2016 00:32:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:32:20 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 00:32:20 GMT
WORKDIR /usr/share/elasticsearch
# Sat, 24 Sep 2016 00:32:21 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Sat, 24 Sep 2016 00:32:22 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Sat, 24 Sep 2016 00:32:22 GMT
VOLUME [/usr/share/elasticsearch/data]
# Sat, 24 Sep 2016 00:32:22 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Sat, 24 Sep 2016 00:32:23 GMT
EXPOSE 9200/tcp 9300/tcp
# Sat, 24 Sep 2016 00:32:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 24 Sep 2016 00:32:24 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcda778c27e01ecd3b9e7c7d0d8aab02a662fea7116b8fad1fdd506d60a1935`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef4f9486437f1439290f90526264a63153def936a38435068bd1c08923dbb58`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 1.5 KB (1453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd43f56f5f3f3c9a7d64c47ae58d728393b4dc89399ea805ad3aaf57bd8963f`  
		Last Modified: Sat, 24 Sep 2016 00:32:31 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a918f4f4d15efccce26dee7e2ba9b16f3913ef4b9a82c4945ad96519907379b3`  
		Last Modified: Sat, 24 Sep 2016 00:32:35 GMT  
		Size: 28.6 MB (28583218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f18c7fa160dd49e193729a95b28b9cbdbd3291057d19db27b42448797379d7`  
		Last Modified: Sat, 24 Sep 2016 00:32:31 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4cdbc728e90ce980368919ee394cae532e3ec47a8f12fff089aeff766f97890`  
		Last Modified: Sat, 24 Sep 2016 00:32:31 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d262db00085ff012ad8563d676d0954fdfa59cd0ecd7896ca241115c46289f18`  
		Last Modified: Sat, 24 Sep 2016 00:32:31 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.0`

```console
$ docker pull elasticsearch@sha256:b6283a9091ff4791275458edcbf77c5d73c16b069639d6d659a5d287bd4c6aa4
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.5 MB (153529757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24af09db90e9469bf8c03abd9dc5d17859f4302f0f992e480d5f69e6c1309a94`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 00:28:27 GMT
ENV GOSU_VERSION=1.7
# Sat, 24 Sep 2016 00:28:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 24 Sep 2016 00:28:34 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Sat, 24 Sep 2016 00:32:09 GMT
ENV ELASTICSEARCH_VERSION=2.0.2
# Sat, 24 Sep 2016 00:32:09 GMT
ENV ELASTICSEARCH_REPO_BASE=http://packages.elasticsearch.org/elasticsearch/2.x/debian
# Sat, 24 Sep 2016 00:32:10 GMT
RUN echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list
# Sat, 24 Sep 2016 00:32:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:32:20 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 00:32:20 GMT
WORKDIR /usr/share/elasticsearch
# Sat, 24 Sep 2016 00:32:21 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Sat, 24 Sep 2016 00:32:22 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Sat, 24 Sep 2016 00:32:22 GMT
VOLUME [/usr/share/elasticsearch/data]
# Sat, 24 Sep 2016 00:32:22 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Sat, 24 Sep 2016 00:32:23 GMT
EXPOSE 9200/tcp 9300/tcp
# Sat, 24 Sep 2016 00:32:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 24 Sep 2016 00:32:24 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcda778c27e01ecd3b9e7c7d0d8aab02a662fea7116b8fad1fdd506d60a1935`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef4f9486437f1439290f90526264a63153def936a38435068bd1c08923dbb58`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 1.5 KB (1453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd43f56f5f3f3c9a7d64c47ae58d728393b4dc89399ea805ad3aaf57bd8963f`  
		Last Modified: Sat, 24 Sep 2016 00:32:31 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a918f4f4d15efccce26dee7e2ba9b16f3913ef4b9a82c4945ad96519907379b3`  
		Last Modified: Sat, 24 Sep 2016 00:32:35 GMT  
		Size: 28.6 MB (28583218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f18c7fa160dd49e193729a95b28b9cbdbd3291057d19db27b42448797379d7`  
		Last Modified: Sat, 24 Sep 2016 00:32:31 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4cdbc728e90ce980368919ee394cae532e3ec47a8f12fff089aeff766f97890`  
		Last Modified: Sat, 24 Sep 2016 00:32:31 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d262db00085ff012ad8563d676d0954fdfa59cd0ecd7896ca241115c46289f18`  
		Last Modified: Sat, 24 Sep 2016 00:32:31 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.1.2`

```console
$ docker pull elasticsearch@sha256:71d0dfaa41f58f917afca4d7b4e511bdd9f4d71e89985ba36751db41e4babacc
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.1.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.9 MB (153945092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24c25d90bb2ce1e9c1c57d1d9c1c3f7c0ce9c0bfed3640656e33d9ff00ce75da`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 00:28:27 GMT
ENV GOSU_VERSION=1.7
# Sat, 24 Sep 2016 00:28:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 24 Sep 2016 00:28:34 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Sat, 24 Sep 2016 00:32:53 GMT
ENV ELASTICSEARCH_VERSION=2.1.2
# Sat, 24 Sep 2016 00:32:53 GMT
ENV ELASTICSEARCH_REPO_BASE=http://packages.elasticsearch.org/elasticsearch/2.x/debian
# Sat, 24 Sep 2016 00:32:54 GMT
RUN echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list
# Sat, 24 Sep 2016 00:33:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:33:04 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 00:33:05 GMT
WORKDIR /usr/share/elasticsearch
# Sat, 24 Sep 2016 00:33:06 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Sat, 24 Sep 2016 00:33:06 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Sat, 24 Sep 2016 00:33:07 GMT
VOLUME [/usr/share/elasticsearch/data]
# Sat, 24 Sep 2016 00:33:07 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Sat, 24 Sep 2016 00:33:07 GMT
EXPOSE 9200/tcp 9300/tcp
# Sat, 24 Sep 2016 00:33:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 24 Sep 2016 00:33:08 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcda778c27e01ecd3b9e7c7d0d8aab02a662fea7116b8fad1fdd506d60a1935`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef4f9486437f1439290f90526264a63153def936a38435068bd1c08923dbb58`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 1.5 KB (1453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ca8da532ef71ebc24aae53117e7c8943d9d02759fdcac98f8fa0c689a0cec1`  
		Last Modified: Sat, 24 Sep 2016 00:33:16 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ae9cc89834e6bdf7120a43031a0d9285ae209ad8dc92ea463646a5f4d715f3`  
		Last Modified: Sat, 24 Sep 2016 00:33:19 GMT  
		Size: 29.0 MB (28998559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:281801aeaf97c65f5f79fe4d3b5c9d6fcc4f35bf75918fb444911238a3d0173e`  
		Last Modified: Sat, 24 Sep 2016 00:33:16 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a2d71b1791e76c60a7769231aa84452b2eeba4533c4e728cd1da33eecb3ef7`  
		Last Modified: Sat, 24 Sep 2016 00:33:17 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40e1c563a3371b10974593bf81fd6a8537a6efe9d9d96e6f8adb2eeaf453f62`  
		Last Modified: Sat, 24 Sep 2016 00:33:16 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.1`

```console
$ docker pull elasticsearch@sha256:71d0dfaa41f58f917afca4d7b4e511bdd9f4d71e89985ba36751db41e4babacc
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.9 MB (153945092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24c25d90bb2ce1e9c1c57d1d9c1c3f7c0ce9c0bfed3640656e33d9ff00ce75da`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 00:28:27 GMT
ENV GOSU_VERSION=1.7
# Sat, 24 Sep 2016 00:28:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 24 Sep 2016 00:28:34 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Sat, 24 Sep 2016 00:32:53 GMT
ENV ELASTICSEARCH_VERSION=2.1.2
# Sat, 24 Sep 2016 00:32:53 GMT
ENV ELASTICSEARCH_REPO_BASE=http://packages.elasticsearch.org/elasticsearch/2.x/debian
# Sat, 24 Sep 2016 00:32:54 GMT
RUN echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list
# Sat, 24 Sep 2016 00:33:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:33:04 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 00:33:05 GMT
WORKDIR /usr/share/elasticsearch
# Sat, 24 Sep 2016 00:33:06 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Sat, 24 Sep 2016 00:33:06 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Sat, 24 Sep 2016 00:33:07 GMT
VOLUME [/usr/share/elasticsearch/data]
# Sat, 24 Sep 2016 00:33:07 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Sat, 24 Sep 2016 00:33:07 GMT
EXPOSE 9200/tcp 9300/tcp
# Sat, 24 Sep 2016 00:33:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 24 Sep 2016 00:33:08 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcda778c27e01ecd3b9e7c7d0d8aab02a662fea7116b8fad1fdd506d60a1935`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef4f9486437f1439290f90526264a63153def936a38435068bd1c08923dbb58`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 1.5 KB (1453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ca8da532ef71ebc24aae53117e7c8943d9d02759fdcac98f8fa0c689a0cec1`  
		Last Modified: Sat, 24 Sep 2016 00:33:16 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ae9cc89834e6bdf7120a43031a0d9285ae209ad8dc92ea463646a5f4d715f3`  
		Last Modified: Sat, 24 Sep 2016 00:33:19 GMT  
		Size: 29.0 MB (28998559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:281801aeaf97c65f5f79fe4d3b5c9d6fcc4f35bf75918fb444911238a3d0173e`  
		Last Modified: Sat, 24 Sep 2016 00:33:16 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a2d71b1791e76c60a7769231aa84452b2eeba4533c4e728cd1da33eecb3ef7`  
		Last Modified: Sat, 24 Sep 2016 00:33:17 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40e1c563a3371b10974593bf81fd6a8537a6efe9d9d96e6f8adb2eeaf453f62`  
		Last Modified: Sat, 24 Sep 2016 00:33:16 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.2.2`

```console
$ docker pull elasticsearch@sha256:42ea3068884683b689d47ff2bfac266d927eb820a6741e88046a5411dfc74376
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.2.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.4 MB (154361561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e495e868202523100c02a7ed714c6258dc59c5080830acc3e4f12313aac932fd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 00:28:27 GMT
ENV GOSU_VERSION=1.7
# Sat, 24 Sep 2016 00:28:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 24 Sep 2016 00:28:34 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Sat, 24 Sep 2016 00:33:39 GMT
ENV ELASTICSEARCH_VERSION=2.2.2
# Sat, 24 Sep 2016 00:33:39 GMT
ENV ELASTICSEARCH_REPO_BASE=http://packages.elasticsearch.org/elasticsearch/2.x/debian
# Sat, 24 Sep 2016 00:33:40 GMT
RUN echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list
# Sat, 24 Sep 2016 00:33:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:33:50 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 00:33:50 GMT
WORKDIR /usr/share/elasticsearch
# Sat, 24 Sep 2016 00:33:51 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Sat, 24 Sep 2016 00:33:51 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Sat, 24 Sep 2016 00:33:52 GMT
VOLUME [/usr/share/elasticsearch/data]
# Sat, 24 Sep 2016 00:33:52 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Sat, 24 Sep 2016 00:33:53 GMT
EXPOSE 9200/tcp 9300/tcp
# Sat, 24 Sep 2016 00:33:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 24 Sep 2016 00:33:53 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcda778c27e01ecd3b9e7c7d0d8aab02a662fea7116b8fad1fdd506d60a1935`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef4f9486437f1439290f90526264a63153def936a38435068bd1c08923dbb58`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 1.5 KB (1453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa4de8371a422be5c50a8ff604a1484c34ebe2f031538bcf6f46e62436e843d`  
		Last Modified: Sat, 24 Sep 2016 00:34:01 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f08f60976533e64b94b12967995c5c08155f49f71b795a0875fbcddd54a04fe`  
		Last Modified: Sat, 24 Sep 2016 00:34:06 GMT  
		Size: 29.4 MB (29415024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd120cf2f4fd055ed712d6ca2671ed6ddbfd0c7769b789e48c9cde3122114c8`  
		Last Modified: Sat, 24 Sep 2016 00:34:01 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0181e77064384588deb003ffcad93d751b826ce6cb4990d5d6381f70ef26d182`  
		Last Modified: Sat, 24 Sep 2016 00:34:01 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae50f237d3dcf447f5901177bab1ed6176d169c90433a93dc747383fd57b4d2`  
		Last Modified: Sat, 24 Sep 2016 00:34:01 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.2`

```console
$ docker pull elasticsearch@sha256:42ea3068884683b689d47ff2bfac266d927eb820a6741e88046a5411dfc74376
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.4 MB (154361561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e495e868202523100c02a7ed714c6258dc59c5080830acc3e4f12313aac932fd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 00:28:27 GMT
ENV GOSU_VERSION=1.7
# Sat, 24 Sep 2016 00:28:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 24 Sep 2016 00:28:34 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Sat, 24 Sep 2016 00:33:39 GMT
ENV ELASTICSEARCH_VERSION=2.2.2
# Sat, 24 Sep 2016 00:33:39 GMT
ENV ELASTICSEARCH_REPO_BASE=http://packages.elasticsearch.org/elasticsearch/2.x/debian
# Sat, 24 Sep 2016 00:33:40 GMT
RUN echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list
# Sat, 24 Sep 2016 00:33:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:33:50 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 00:33:50 GMT
WORKDIR /usr/share/elasticsearch
# Sat, 24 Sep 2016 00:33:51 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Sat, 24 Sep 2016 00:33:51 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Sat, 24 Sep 2016 00:33:52 GMT
VOLUME [/usr/share/elasticsearch/data]
# Sat, 24 Sep 2016 00:33:52 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Sat, 24 Sep 2016 00:33:53 GMT
EXPOSE 9200/tcp 9300/tcp
# Sat, 24 Sep 2016 00:33:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 24 Sep 2016 00:33:53 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcda778c27e01ecd3b9e7c7d0d8aab02a662fea7116b8fad1fdd506d60a1935`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef4f9486437f1439290f90526264a63153def936a38435068bd1c08923dbb58`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 1.5 KB (1453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa4de8371a422be5c50a8ff604a1484c34ebe2f031538bcf6f46e62436e843d`  
		Last Modified: Sat, 24 Sep 2016 00:34:01 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f08f60976533e64b94b12967995c5c08155f49f71b795a0875fbcddd54a04fe`  
		Last Modified: Sat, 24 Sep 2016 00:34:06 GMT  
		Size: 29.4 MB (29415024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd120cf2f4fd055ed712d6ca2671ed6ddbfd0c7769b789e48c9cde3122114c8`  
		Last Modified: Sat, 24 Sep 2016 00:34:01 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0181e77064384588deb003ffcad93d751b826ce6cb4990d5d6381f70ef26d182`  
		Last Modified: Sat, 24 Sep 2016 00:34:01 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae50f237d3dcf447f5901177bab1ed6176d169c90433a93dc747383fd57b4d2`  
		Last Modified: Sat, 24 Sep 2016 00:34:01 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.3.5`

```console
$ docker pull elasticsearch@sha256:78018d1ccfb0df34f2c26d182f7511bcdda2300046e4218d2fcccb81c61cd39e
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.3.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.5 MB (152485565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d29b7e92cf9b9ea7ad4cdbf648a6a90b696f9c153638474ab2676832e515c4d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 00:28:27 GMT
ENV GOSU_VERSION=1.7
# Sat, 24 Sep 2016 00:28:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 24 Sep 2016 00:28:34 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Sat, 24 Sep 2016 00:34:23 GMT
ENV ELASTICSEARCH_VERSION=2.3.5
# Sat, 24 Sep 2016 00:34:23 GMT
ENV ELASTICSEARCH_REPO_BASE=http://packages.elasticsearch.org/elasticsearch/2.x/debian
# Sat, 24 Sep 2016 00:34:24 GMT
RUN echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list
# Sat, 24 Sep 2016 00:34:34 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:34:34 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 00:34:35 GMT
WORKDIR /usr/share/elasticsearch
# Sat, 24 Sep 2016 00:34:36 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Sat, 24 Sep 2016 00:34:36 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Sat, 24 Sep 2016 00:34:37 GMT
VOLUME [/usr/share/elasticsearch/data]
# Sat, 24 Sep 2016 00:34:37 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Sat, 24 Sep 2016 00:34:38 GMT
EXPOSE 9200/tcp 9300/tcp
# Sat, 24 Sep 2016 00:34:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 24 Sep 2016 00:34:38 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcda778c27e01ecd3b9e7c7d0d8aab02a662fea7116b8fad1fdd506d60a1935`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef4f9486437f1439290f90526264a63153def936a38435068bd1c08923dbb58`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 1.5 KB (1453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a57d06481f479d8a5c3e6b3070156bba9604e338abc483f4852d3f55d40ccc`  
		Last Modified: Sat, 24 Sep 2016 00:34:46 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd7758effc3f08262992fbbecc556246b929aa1fa24d7478f63601014512860c`  
		Last Modified: Sat, 24 Sep 2016 00:34:50 GMT  
		Size: 27.5 MB (27539030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b4b9ceffe63618d035a4d9261263aba68a0f0c4f228f7c65e209978e16c4fd`  
		Last Modified: Sat, 24 Sep 2016 00:34:46 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f1da6c551fe58f44ffdc9c9082f3f53163fca9a5ed187fce8312a1c3ee2243`  
		Last Modified: Sat, 24 Sep 2016 00:34:48 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdd35d7a5f4036ab2c54800799d34d0de351781f094be54bace896562f1f70e8`  
		Last Modified: Sat, 24 Sep 2016 00:34:46 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.3`

```console
$ docker pull elasticsearch@sha256:78018d1ccfb0df34f2c26d182f7511bcdda2300046e4218d2fcccb81c61cd39e
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.5 MB (152485565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d29b7e92cf9b9ea7ad4cdbf648a6a90b696f9c153638474ab2676832e515c4d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 00:28:27 GMT
ENV GOSU_VERSION=1.7
# Sat, 24 Sep 2016 00:28:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 24 Sep 2016 00:28:34 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Sat, 24 Sep 2016 00:34:23 GMT
ENV ELASTICSEARCH_VERSION=2.3.5
# Sat, 24 Sep 2016 00:34:23 GMT
ENV ELASTICSEARCH_REPO_BASE=http://packages.elasticsearch.org/elasticsearch/2.x/debian
# Sat, 24 Sep 2016 00:34:24 GMT
RUN echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list
# Sat, 24 Sep 2016 00:34:34 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:34:34 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 00:34:35 GMT
WORKDIR /usr/share/elasticsearch
# Sat, 24 Sep 2016 00:34:36 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Sat, 24 Sep 2016 00:34:36 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Sat, 24 Sep 2016 00:34:37 GMT
VOLUME [/usr/share/elasticsearch/data]
# Sat, 24 Sep 2016 00:34:37 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Sat, 24 Sep 2016 00:34:38 GMT
EXPOSE 9200/tcp 9300/tcp
# Sat, 24 Sep 2016 00:34:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 24 Sep 2016 00:34:38 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcda778c27e01ecd3b9e7c7d0d8aab02a662fea7116b8fad1fdd506d60a1935`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef4f9486437f1439290f90526264a63153def936a38435068bd1c08923dbb58`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 1.5 KB (1453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a57d06481f479d8a5c3e6b3070156bba9604e338abc483f4852d3f55d40ccc`  
		Last Modified: Sat, 24 Sep 2016 00:34:46 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd7758effc3f08262992fbbecc556246b929aa1fa24d7478f63601014512860c`  
		Last Modified: Sat, 24 Sep 2016 00:34:50 GMT  
		Size: 27.5 MB (27539030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b4b9ceffe63618d035a4d9261263aba68a0f0c4f228f7c65e209978e16c4fd`  
		Last Modified: Sat, 24 Sep 2016 00:34:46 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f1da6c551fe58f44ffdc9c9082f3f53163fca9a5ed187fce8312a1c3ee2243`  
		Last Modified: Sat, 24 Sep 2016 00:34:48 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdd35d7a5f4036ab2c54800799d34d0de351781f094be54bace896562f1f70e8`  
		Last Modified: Sat, 24 Sep 2016 00:34:46 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.4.1`

```console
$ docker pull elasticsearch@sha256:fe78f31641f2c17276a001b78d83b74500d910c9619eaa3f6279dbfaf1914c0d
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.4.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.3 MB (152302985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22287ab1f811bd81eaaf3a9c112a8100b6532996a0a3a428ec5bcace8802db59`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 00:28:27 GMT
ENV GOSU_VERSION=1.7
# Sat, 24 Sep 2016 00:28:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 24 Sep 2016 00:28:34 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 28 Sep 2016 20:42:25 GMT
ENV ELASTICSEARCH_VERSION=2.4.1
# Wed, 28 Sep 2016 20:42:25 GMT
ENV ELASTICSEARCH_REPO_BASE=http://packages.elasticsearch.org/elasticsearch/2.x/debian
# Wed, 28 Sep 2016 20:42:26 GMT
RUN echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 28 Sep 2016 20:42:37 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:42:38 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 20:42:38 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 28 Sep 2016 20:42:39 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 28 Sep 2016 20:42:39 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Wed, 28 Sep 2016 20:42:40 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 28 Sep 2016 20:42:40 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Wed, 28 Sep 2016 20:42:41 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 28 Sep 2016 20:42:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Sep 2016 20:42:41 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcda778c27e01ecd3b9e7c7d0d8aab02a662fea7116b8fad1fdd506d60a1935`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef4f9486437f1439290f90526264a63153def936a38435068bd1c08923dbb58`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 1.5 KB (1453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70899aa48619a21aeaf6cf9e6e9a3fe6670ef1d7b1c634a659ab54a69132d9d9`  
		Last Modified: Wed, 28 Sep 2016 20:45:33 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c562ccbdcd300a0726780879294a68bc433055c0aea1c0e073b56921651c0c`  
		Last Modified: Wed, 28 Sep 2016 20:45:36 GMT  
		Size: 27.4 MB (27356452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6bb1563ea2d43f465f71ca27531a24312e3e53827c0bc589c48a32a067e9678`  
		Last Modified: Wed, 28 Sep 2016 20:45:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3036c1ad72699991cf212217dcf75fa66f384e38d6a1bd5c5feaa5322da8f8`  
		Last Modified: Wed, 28 Sep 2016 20:45:33 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5bc2f99845f7318c4a2f83cc62d51b80894b7769dfd6f2a59ffc3a140e7ab96`  
		Last Modified: Wed, 28 Sep 2016 20:45:32 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.4`

```console
$ docker pull elasticsearch@sha256:fe78f31641f2c17276a001b78d83b74500d910c9619eaa3f6279dbfaf1914c0d
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.3 MB (152302985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22287ab1f811bd81eaaf3a9c112a8100b6532996a0a3a428ec5bcace8802db59`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 00:28:27 GMT
ENV GOSU_VERSION=1.7
# Sat, 24 Sep 2016 00:28:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 24 Sep 2016 00:28:34 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 28 Sep 2016 20:42:25 GMT
ENV ELASTICSEARCH_VERSION=2.4.1
# Wed, 28 Sep 2016 20:42:25 GMT
ENV ELASTICSEARCH_REPO_BASE=http://packages.elasticsearch.org/elasticsearch/2.x/debian
# Wed, 28 Sep 2016 20:42:26 GMT
RUN echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 28 Sep 2016 20:42:37 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:42:38 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 20:42:38 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 28 Sep 2016 20:42:39 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 28 Sep 2016 20:42:39 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Wed, 28 Sep 2016 20:42:40 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 28 Sep 2016 20:42:40 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Wed, 28 Sep 2016 20:42:41 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 28 Sep 2016 20:42:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Sep 2016 20:42:41 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcda778c27e01ecd3b9e7c7d0d8aab02a662fea7116b8fad1fdd506d60a1935`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef4f9486437f1439290f90526264a63153def936a38435068bd1c08923dbb58`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 1.5 KB (1453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70899aa48619a21aeaf6cf9e6e9a3fe6670ef1d7b1c634a659ab54a69132d9d9`  
		Last Modified: Wed, 28 Sep 2016 20:45:33 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c562ccbdcd300a0726780879294a68bc433055c0aea1c0e073b56921651c0c`  
		Last Modified: Wed, 28 Sep 2016 20:45:36 GMT  
		Size: 27.4 MB (27356452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6bb1563ea2d43f465f71ca27531a24312e3e53827c0bc589c48a32a067e9678`  
		Last Modified: Wed, 28 Sep 2016 20:45:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3036c1ad72699991cf212217dcf75fa66f384e38d6a1bd5c5feaa5322da8f8`  
		Last Modified: Wed, 28 Sep 2016 20:45:33 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5bc2f99845f7318c4a2f83cc62d51b80894b7769dfd6f2a59ffc3a140e7ab96`  
		Last Modified: Wed, 28 Sep 2016 20:45:32 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2`

```console
$ docker pull elasticsearch@sha256:fe78f31641f2c17276a001b78d83b74500d910c9619eaa3f6279dbfaf1914c0d
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.3 MB (152302985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22287ab1f811bd81eaaf3a9c112a8100b6532996a0a3a428ec5bcace8802db59`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 00:28:27 GMT
ENV GOSU_VERSION=1.7
# Sat, 24 Sep 2016 00:28:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 24 Sep 2016 00:28:34 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 28 Sep 2016 20:42:25 GMT
ENV ELASTICSEARCH_VERSION=2.4.1
# Wed, 28 Sep 2016 20:42:25 GMT
ENV ELASTICSEARCH_REPO_BASE=http://packages.elasticsearch.org/elasticsearch/2.x/debian
# Wed, 28 Sep 2016 20:42:26 GMT
RUN echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 28 Sep 2016 20:42:37 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:42:38 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 20:42:38 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 28 Sep 2016 20:42:39 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 28 Sep 2016 20:42:39 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Wed, 28 Sep 2016 20:42:40 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 28 Sep 2016 20:42:40 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Wed, 28 Sep 2016 20:42:41 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 28 Sep 2016 20:42:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Sep 2016 20:42:41 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcda778c27e01ecd3b9e7c7d0d8aab02a662fea7116b8fad1fdd506d60a1935`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef4f9486437f1439290f90526264a63153def936a38435068bd1c08923dbb58`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 1.5 KB (1453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70899aa48619a21aeaf6cf9e6e9a3fe6670ef1d7b1c634a659ab54a69132d9d9`  
		Last Modified: Wed, 28 Sep 2016 20:45:33 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c562ccbdcd300a0726780879294a68bc433055c0aea1c0e073b56921651c0c`  
		Last Modified: Wed, 28 Sep 2016 20:45:36 GMT  
		Size: 27.4 MB (27356452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6bb1563ea2d43f465f71ca27531a24312e3e53827c0bc589c48a32a067e9678`  
		Last Modified: Wed, 28 Sep 2016 20:45:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3036c1ad72699991cf212217dcf75fa66f384e38d6a1bd5c5feaa5322da8f8`  
		Last Modified: Wed, 28 Sep 2016 20:45:33 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5bc2f99845f7318c4a2f83cc62d51b80894b7769dfd6f2a59ffc3a140e7ab96`  
		Last Modified: Wed, 28 Sep 2016 20:45:32 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:latest`

```console
$ docker pull elasticsearch@sha256:fe78f31641f2c17276a001b78d83b74500d910c9619eaa3f6279dbfaf1914c0d
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.3 MB (152302985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22287ab1f811bd81eaaf3a9c112a8100b6532996a0a3a428ec5bcace8802db59`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 00:28:27 GMT
ENV GOSU_VERSION=1.7
# Sat, 24 Sep 2016 00:28:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 24 Sep 2016 00:28:34 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 28 Sep 2016 20:42:25 GMT
ENV ELASTICSEARCH_VERSION=2.4.1
# Wed, 28 Sep 2016 20:42:25 GMT
ENV ELASTICSEARCH_REPO_BASE=http://packages.elasticsearch.org/elasticsearch/2.x/debian
# Wed, 28 Sep 2016 20:42:26 GMT
RUN echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 28 Sep 2016 20:42:37 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 20:42:38 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 20:42:38 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 28 Sep 2016 20:42:39 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 28 Sep 2016 20:42:39 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Wed, 28 Sep 2016 20:42:40 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 28 Sep 2016 20:42:40 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Wed, 28 Sep 2016 20:42:41 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 28 Sep 2016 20:42:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Sep 2016 20:42:41 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcda778c27e01ecd3b9e7c7d0d8aab02a662fea7116b8fad1fdd506d60a1935`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef4f9486437f1439290f90526264a63153def936a38435068bd1c08923dbb58`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 1.5 KB (1453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70899aa48619a21aeaf6cf9e6e9a3fe6670ef1d7b1c634a659ab54a69132d9d9`  
		Last Modified: Wed, 28 Sep 2016 20:45:33 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c562ccbdcd300a0726780879294a68bc433055c0aea1c0e073b56921651c0c`  
		Last Modified: Wed, 28 Sep 2016 20:45:36 GMT  
		Size: 27.4 MB (27356452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6bb1563ea2d43f465f71ca27531a24312e3e53827c0bc589c48a32a067e9678`  
		Last Modified: Wed, 28 Sep 2016 20:45:33 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3036c1ad72699991cf212217dcf75fa66f384e38d6a1bd5c5feaa5322da8f8`  
		Last Modified: Wed, 28 Sep 2016 20:45:33 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5bc2f99845f7318c4a2f83cc62d51b80894b7769dfd6f2a59ffc3a140e7ab96`  
		Last Modified: Wed, 28 Sep 2016 20:45:32 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.0.0-rc1`

```console
$ docker pull elasticsearch@sha256:23502678afc446fb8df9db937f4d299047ad89152ec9cb45eccdd71aa41b59c5
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:5.0.0-rc1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.4 MB (158447517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b65c435cef39dd71666c391dee8c31ce8774a70a85fbbf02adf4844b841baec3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 00:28:27 GMT
ENV GOSU_VERSION=1.7
# Sat, 24 Sep 2016 00:28:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Oct 2016 21:03:35 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends apt-transport-https     && apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Oct 2016 21:03:35 GMT
ENV ELASTICSEARCH_VERSION=5.0.0-rc1
# Tue, 11 Oct 2016 21:03:36 GMT
ENV ELASTICSEARCH_REPO_BASE=https://artifacts.elastic.co/packages/5.x-prerelease/apt
# Tue, 11 Oct 2016 21:03:37 GMT
RUN echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 11 Oct 2016 21:03:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Oct 2016 21:03:46 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Oct 2016 21:03:46 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 11 Oct 2016 21:03:47 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 11 Oct 2016 21:03:47 GMT
COPY dir:aacebf91dc4c741fe8e3adf41add1f566e09f1d20f104cc9c8f9d6afb4190fe6 in ./config 
# Tue, 11 Oct 2016 21:03:48 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 11 Oct 2016 21:03:48 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Tue, 11 Oct 2016 21:03:49 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 11 Oct 2016 21:03:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Oct 2016 21:03:49 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcda778c27e01ecd3b9e7c7d0d8aab02a662fea7116b8fad1fdd506d60a1935`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a0d145d5b4def2da0e2c8284007dc4c0f839156f58ae8e90ed95290b4fd91a`  
		Last Modified: Tue, 11 Oct 2016 21:07:13 GMT  
		Size: 537.1 KB (537139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c3b57b9eb3da5a3ad1086f358b84cf440c2a02c4ef93da2f6753a5004b4da3`  
		Last Modified: Tue, 11 Oct 2016 21:07:10 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e796d2ad8d57ea28b02b4e84101c40642988733d3d2ca7fc1245f9ac0190b501`  
		Last Modified: Tue, 11 Oct 2016 21:07:18 GMT  
		Size: 33.0 MB (32965315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfe23b7ca14ee0796a93498f3ca4a4404bb4e64c67d35a8638a67e3ce737593`  
		Last Modified: Tue, 11 Oct 2016 21:07:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a74e3a039fec3f2d0e80ba41d86e1a79ce9e6070393f5dd662cf317ffd3ebb`  
		Last Modified: Tue, 11 Oct 2016 21:07:11 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b3c6469009aec6c5e535a3cea5c70e290aecea89932a33ca7a299033a490e6`  
		Last Modified: Tue, 11 Oct 2016 21:07:10 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.0.0`

```console
$ docker pull elasticsearch@sha256:23502678afc446fb8df9db937f4d299047ad89152ec9cb45eccdd71aa41b59c5
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:5.0.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.4 MB (158447517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b65c435cef39dd71666c391dee8c31ce8774a70a85fbbf02adf4844b841baec3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 00:28:27 GMT
ENV GOSU_VERSION=1.7
# Sat, 24 Sep 2016 00:28:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Oct 2016 21:03:35 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends apt-transport-https     && apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Oct 2016 21:03:35 GMT
ENV ELASTICSEARCH_VERSION=5.0.0-rc1
# Tue, 11 Oct 2016 21:03:36 GMT
ENV ELASTICSEARCH_REPO_BASE=https://artifacts.elastic.co/packages/5.x-prerelease/apt
# Tue, 11 Oct 2016 21:03:37 GMT
RUN echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 11 Oct 2016 21:03:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Oct 2016 21:03:46 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Oct 2016 21:03:46 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 11 Oct 2016 21:03:47 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 11 Oct 2016 21:03:47 GMT
COPY dir:aacebf91dc4c741fe8e3adf41add1f566e09f1d20f104cc9c8f9d6afb4190fe6 in ./config 
# Tue, 11 Oct 2016 21:03:48 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 11 Oct 2016 21:03:48 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Tue, 11 Oct 2016 21:03:49 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 11 Oct 2016 21:03:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Oct 2016 21:03:49 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcda778c27e01ecd3b9e7c7d0d8aab02a662fea7116b8fad1fdd506d60a1935`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a0d145d5b4def2da0e2c8284007dc4c0f839156f58ae8e90ed95290b4fd91a`  
		Last Modified: Tue, 11 Oct 2016 21:07:13 GMT  
		Size: 537.1 KB (537139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c3b57b9eb3da5a3ad1086f358b84cf440c2a02c4ef93da2f6753a5004b4da3`  
		Last Modified: Tue, 11 Oct 2016 21:07:10 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e796d2ad8d57ea28b02b4e84101c40642988733d3d2ca7fc1245f9ac0190b501`  
		Last Modified: Tue, 11 Oct 2016 21:07:18 GMT  
		Size: 33.0 MB (32965315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfe23b7ca14ee0796a93498f3ca4a4404bb4e64c67d35a8638a67e3ce737593`  
		Last Modified: Tue, 11 Oct 2016 21:07:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a74e3a039fec3f2d0e80ba41d86e1a79ce9e6070393f5dd662cf317ffd3ebb`  
		Last Modified: Tue, 11 Oct 2016 21:07:11 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b3c6469009aec6c5e535a3cea5c70e290aecea89932a33ca7a299033a490e6`  
		Last Modified: Tue, 11 Oct 2016 21:07:10 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.0`

```console
$ docker pull elasticsearch@sha256:23502678afc446fb8df9db937f4d299047ad89152ec9cb45eccdd71aa41b59c5
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:5.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.4 MB (158447517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b65c435cef39dd71666c391dee8c31ce8774a70a85fbbf02adf4844b841baec3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 00:28:27 GMT
ENV GOSU_VERSION=1.7
# Sat, 24 Sep 2016 00:28:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Oct 2016 21:03:35 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends apt-transport-https     && apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Oct 2016 21:03:35 GMT
ENV ELASTICSEARCH_VERSION=5.0.0-rc1
# Tue, 11 Oct 2016 21:03:36 GMT
ENV ELASTICSEARCH_REPO_BASE=https://artifacts.elastic.co/packages/5.x-prerelease/apt
# Tue, 11 Oct 2016 21:03:37 GMT
RUN echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 11 Oct 2016 21:03:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Oct 2016 21:03:46 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Oct 2016 21:03:46 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 11 Oct 2016 21:03:47 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 11 Oct 2016 21:03:47 GMT
COPY dir:aacebf91dc4c741fe8e3adf41add1f566e09f1d20f104cc9c8f9d6afb4190fe6 in ./config 
# Tue, 11 Oct 2016 21:03:48 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 11 Oct 2016 21:03:48 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Tue, 11 Oct 2016 21:03:49 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 11 Oct 2016 21:03:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Oct 2016 21:03:49 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcda778c27e01ecd3b9e7c7d0d8aab02a662fea7116b8fad1fdd506d60a1935`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a0d145d5b4def2da0e2c8284007dc4c0f839156f58ae8e90ed95290b4fd91a`  
		Last Modified: Tue, 11 Oct 2016 21:07:13 GMT  
		Size: 537.1 KB (537139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c3b57b9eb3da5a3ad1086f358b84cf440c2a02c4ef93da2f6753a5004b4da3`  
		Last Modified: Tue, 11 Oct 2016 21:07:10 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e796d2ad8d57ea28b02b4e84101c40642988733d3d2ca7fc1245f9ac0190b501`  
		Last Modified: Tue, 11 Oct 2016 21:07:18 GMT  
		Size: 33.0 MB (32965315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfe23b7ca14ee0796a93498f3ca4a4404bb4e64c67d35a8638a67e3ce737593`  
		Last Modified: Tue, 11 Oct 2016 21:07:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a74e3a039fec3f2d0e80ba41d86e1a79ce9e6070393f5dd662cf317ffd3ebb`  
		Last Modified: Tue, 11 Oct 2016 21:07:11 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b3c6469009aec6c5e535a3cea5c70e290aecea89932a33ca7a299033a490e6`  
		Last Modified: Tue, 11 Oct 2016 21:07:10 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5`

```console
$ docker pull elasticsearch@sha256:23502678afc446fb8df9db937f4d299047ad89152ec9cb45eccdd71aa41b59c5
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.4 MB (158447517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b65c435cef39dd71666c391dee8c31ce8774a70a85fbbf02adf4844b841baec3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:37:42 GMT
RUN echo 'deb http://httpredir.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Sep 2016 19:37:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 19:37:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_VERSION=8u102
# Fri, 23 Sep 2016 19:37:44 GMT
ENV JAVA_DEBIAN_VERSION=8u102-b14.1-1~bpo8+1
# Fri, 23 Sep 2016 19:37:45 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Fri, 23 Sep 2016 19:38:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 19:38:06 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 24 Sep 2016 00:28:27 GMT
ENV GOSU_VERSION=1.7
# Sat, 24 Sep 2016 00:28:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 11 Oct 2016 21:03:35 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends apt-transport-https     && apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Oct 2016 21:03:35 GMT
ENV ELASTICSEARCH_VERSION=5.0.0-rc1
# Tue, 11 Oct 2016 21:03:36 GMT
ENV ELASTICSEARCH_REPO_BASE=https://artifacts.elastic.co/packages/5.x-prerelease/apt
# Tue, 11 Oct 2016 21:03:37 GMT
RUN echo "deb $ELASTICSEARCH_REPO_BASE stable main" > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 11 Oct 2016 21:03:46 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends elasticsearch=$ELASTICSEARCH_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Oct 2016 21:03:46 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Oct 2016 21:03:46 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 11 Oct 2016 21:03:47 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 11 Oct 2016 21:03:47 GMT
COPY dir:aacebf91dc4c741fe8e3adf41add1f566e09f1d20f104cc9c8f9d6afb4190fe6 in ./config 
# Tue, 11 Oct 2016 21:03:48 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 11 Oct 2016 21:03:48 GMT
COPY file:4e7f545ce5a4556808c0760a1dbf219cb9aab1bf750b56480663d05716aac376 in / 
# Tue, 11 Oct 2016 21:03:49 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 11 Oct 2016 21:03:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Oct 2016 21:03:49 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc639e6fca6aa608423c71badb1c40bacbd0b4a1bbe563b439d831a3c55298`  
		Last Modified: Fri, 23 Sep 2016 19:33:38 GMT  
		Size: 566.5 KB (566547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cac98b7f5b9c75d78082095f3348899dc83c3d6f1968dc68877c9d32798f65d`  
		Last Modified: Fri, 23 Sep 2016 19:38:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf96dd67c9aae18b5b25c15de2a12d9cb64d6fb227e3f25fdb4e453da4293c64`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab05ba8362e2ac429a4c24286f80d2f623a6ba32184abfe76174e635304d7afa`  
		Last Modified: Fri, 23 Sep 2016 19:38:25 GMT  
		Size: 53.4 MB (53401902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e8f9f253c0a41ebf41be1054ebb4c2b7e6d465bb59135f16a01614a7c8370`  
		Last Modified: Fri, 23 Sep 2016 19:38:14 GMT  
		Size: 284.2 KB (284172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bcda778c27e01ecd3b9e7c7d0d8aab02a662fea7116b8fad1fdd506d60a1935`  
		Last Modified: Sat, 24 Sep 2016 00:29:01 GMT  
		Size: 807.9 KB (807930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a0d145d5b4def2da0e2c8284007dc4c0f839156f58ae8e90ed95290b4fd91a`  
		Last Modified: Tue, 11 Oct 2016 21:07:13 GMT  
		Size: 537.1 KB (537139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c3b57b9eb3da5a3ad1086f358b84cf440c2a02c4ef93da2f6753a5004b4da3`  
		Last Modified: Tue, 11 Oct 2016 21:07:10 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e796d2ad8d57ea28b02b4e84101c40642988733d3d2ca7fc1245f9ac0190b501`  
		Last Modified: Tue, 11 Oct 2016 21:07:18 GMT  
		Size: 33.0 MB (32965315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfe23b7ca14ee0796a93498f3ca4a4404bb4e64c67d35a8638a67e3ce737593`  
		Last Modified: Tue, 11 Oct 2016 21:07:11 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a74e3a039fec3f2d0e80ba41d86e1a79ce9e6070393f5dd662cf317ffd3ebb`  
		Last Modified: Tue, 11 Oct 2016 21:07:11 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b3c6469009aec6c5e535a3cea5c70e290aecea89932a33ca7a299033a490e6`  
		Last Modified: Tue, 11 Oct 2016 21:07:10 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
