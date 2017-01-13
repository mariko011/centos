<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `elasticsearch`

-	[`elasticsearch:5.1.2`](#elasticsearch512)
-	[`elasticsearch:5.1`](#elasticsearch51)
-	[`elasticsearch:5`](#elasticsearch5)
-	[`elasticsearch:latest`](#elasticsearchlatest)
-	[`elasticsearch:5.1.2-alpine`](#elasticsearch512-alpine)
-	[`elasticsearch:5.1-alpine`](#elasticsearch51-alpine)
-	[`elasticsearch:5-alpine`](#elasticsearch5-alpine)
-	[`elasticsearch:alpine`](#elasticsearchalpine)
-	[`elasticsearch:2.4.4`](#elasticsearch244)
-	[`elasticsearch:2.4`](#elasticsearch24)
-	[`elasticsearch:2`](#elasticsearch2)
-	[`elasticsearch:2.4.4-alpine`](#elasticsearch244-alpine)
-	[`elasticsearch:2.4-alpine`](#elasticsearch24-alpine)
-	[`elasticsearch:2-alpine`](#elasticsearch2-alpine)
-	[`elasticsearch:1.7.6`](#elasticsearch176)
-	[`elasticsearch:1.7`](#elasticsearch17)
-	[`elasticsearch:1`](#elasticsearch1)
-	[`elasticsearch:1.7.6-alpine`](#elasticsearch176-alpine)
-	[`elasticsearch:1.7-alpine`](#elasticsearch17-alpine)
-	[`elasticsearch:1-alpine`](#elasticsearch1-alpine)

## `elasticsearch:5.1.2`

```console
$ docker pull elasticsearch@sha256:810a9fe048d799546a969485d1dbf6960b22f1787da114fc59afe979e6b54e80
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:5.1.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.8 MB (158838786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35c82580d05bca47045b795967d633d54a51dd64a175c2e1673e1988f9e2b6e9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Wed, 14 Dec 2016 14:01:20 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 14:01:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 13 Jan 2017 19:55:03 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 13 Jan 2017 19:55:11 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Fri, 13 Jan 2017 22:27:39 GMT
ENV ELASTICSEARCH_VERSION=5.1.2
# Fri, 13 Jan 2017 22:27:39 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.1.2
# Fri, 13 Jan 2017 22:27:49 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Jan 2017 22:27:50 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Jan 2017 22:27:50 GMT
WORKDIR /usr/share/elasticsearch
# Fri, 13 Jan 2017 22:27:51 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Fri, 13 Jan 2017 22:27:52 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Fri, 13 Jan 2017 22:27:52 GMT
VOLUME [/usr/share/elasticsearch/data]
# Fri, 13 Jan 2017 22:27:53 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Fri, 13 Jan 2017 22:27:53 GMT
EXPOSE 9200/tcp 9300/tcp
# Fri, 13 Jan 2017 22:27:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Jan 2017 22:27:54 GMT
CMD ["elasticsearch"]
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
	-	`sha256:cda5a5d3e7b3ecebeb83a18c1d9139cc5bb6ab5b0cba766bfcb6f1634b67946e`  
		Last Modified: Wed, 14 Dec 2016 14:11:31 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:097a2fd195ebcc05cb7dbcda9190b484bf0d69d03a4bb01ed935ea2bff71bcfd`  
		Last Modified: Fri, 13 Jan 2017 22:30:01 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2393d697fed651a8a188814b3c6fd29a5d55eb341a9a6db7025e2ccbce9e69`  
		Last Modified: Fri, 13 Jan 2017 22:29:59 GMT  
		Size: 536.2 KB (536236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77a9b03f44da05f8ad06e8e65b3ba709defd1d21a78bdb579f53ba817f655ed1`  
		Last Modified: Fri, 13 Jan 2017 22:30:03 GMT  
		Size: 33.3 MB (33296412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b23fbfd65951526a5bcc2a705704f06e7d4a87f2fe00a2b5226e8967b56b04e`  
		Last Modified: Fri, 13 Jan 2017 22:29:58 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8bd3acdba91e8de3ac6b9e9e80c9f25d3e31df534592da205c2be8ef0da392`  
		Last Modified: Fri, 13 Jan 2017 22:29:58 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df9745689e27da69cdaa11f5489d4a9a06e7832a3e6bd4df23652dfa2e5681a4`  
		Last Modified: Fri, 13 Jan 2017 22:29:59 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.1`

```console
$ docker pull elasticsearch@sha256:810a9fe048d799546a969485d1dbf6960b22f1787da114fc59afe979e6b54e80
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:5.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.8 MB (158838786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35c82580d05bca47045b795967d633d54a51dd64a175c2e1673e1988f9e2b6e9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Wed, 14 Dec 2016 14:01:20 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 14:01:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 13 Jan 2017 19:55:03 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 13 Jan 2017 19:55:11 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Fri, 13 Jan 2017 22:27:39 GMT
ENV ELASTICSEARCH_VERSION=5.1.2
# Fri, 13 Jan 2017 22:27:39 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.1.2
# Fri, 13 Jan 2017 22:27:49 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Jan 2017 22:27:50 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Jan 2017 22:27:50 GMT
WORKDIR /usr/share/elasticsearch
# Fri, 13 Jan 2017 22:27:51 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Fri, 13 Jan 2017 22:27:52 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Fri, 13 Jan 2017 22:27:52 GMT
VOLUME [/usr/share/elasticsearch/data]
# Fri, 13 Jan 2017 22:27:53 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Fri, 13 Jan 2017 22:27:53 GMT
EXPOSE 9200/tcp 9300/tcp
# Fri, 13 Jan 2017 22:27:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Jan 2017 22:27:54 GMT
CMD ["elasticsearch"]
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
	-	`sha256:cda5a5d3e7b3ecebeb83a18c1d9139cc5bb6ab5b0cba766bfcb6f1634b67946e`  
		Last Modified: Wed, 14 Dec 2016 14:11:31 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:097a2fd195ebcc05cb7dbcda9190b484bf0d69d03a4bb01ed935ea2bff71bcfd`  
		Last Modified: Fri, 13 Jan 2017 22:30:01 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2393d697fed651a8a188814b3c6fd29a5d55eb341a9a6db7025e2ccbce9e69`  
		Last Modified: Fri, 13 Jan 2017 22:29:59 GMT  
		Size: 536.2 KB (536236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77a9b03f44da05f8ad06e8e65b3ba709defd1d21a78bdb579f53ba817f655ed1`  
		Last Modified: Fri, 13 Jan 2017 22:30:03 GMT  
		Size: 33.3 MB (33296412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b23fbfd65951526a5bcc2a705704f06e7d4a87f2fe00a2b5226e8967b56b04e`  
		Last Modified: Fri, 13 Jan 2017 22:29:58 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8bd3acdba91e8de3ac6b9e9e80c9f25d3e31df534592da205c2be8ef0da392`  
		Last Modified: Fri, 13 Jan 2017 22:29:58 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df9745689e27da69cdaa11f5489d4a9a06e7832a3e6bd4df23652dfa2e5681a4`  
		Last Modified: Fri, 13 Jan 2017 22:29:59 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5`

```console
$ docker pull elasticsearch@sha256:810a9fe048d799546a969485d1dbf6960b22f1787da114fc59afe979e6b54e80
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.8 MB (158838786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35c82580d05bca47045b795967d633d54a51dd64a175c2e1673e1988f9e2b6e9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Wed, 14 Dec 2016 14:01:20 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 14:01:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 13 Jan 2017 19:55:03 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 13 Jan 2017 19:55:11 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Fri, 13 Jan 2017 22:27:39 GMT
ENV ELASTICSEARCH_VERSION=5.1.2
# Fri, 13 Jan 2017 22:27:39 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.1.2
# Fri, 13 Jan 2017 22:27:49 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Jan 2017 22:27:50 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Jan 2017 22:27:50 GMT
WORKDIR /usr/share/elasticsearch
# Fri, 13 Jan 2017 22:27:51 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Fri, 13 Jan 2017 22:27:52 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Fri, 13 Jan 2017 22:27:52 GMT
VOLUME [/usr/share/elasticsearch/data]
# Fri, 13 Jan 2017 22:27:53 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Fri, 13 Jan 2017 22:27:53 GMT
EXPOSE 9200/tcp 9300/tcp
# Fri, 13 Jan 2017 22:27:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Jan 2017 22:27:54 GMT
CMD ["elasticsearch"]
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
	-	`sha256:cda5a5d3e7b3ecebeb83a18c1d9139cc5bb6ab5b0cba766bfcb6f1634b67946e`  
		Last Modified: Wed, 14 Dec 2016 14:11:31 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:097a2fd195ebcc05cb7dbcda9190b484bf0d69d03a4bb01ed935ea2bff71bcfd`  
		Last Modified: Fri, 13 Jan 2017 22:30:01 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2393d697fed651a8a188814b3c6fd29a5d55eb341a9a6db7025e2ccbce9e69`  
		Last Modified: Fri, 13 Jan 2017 22:29:59 GMT  
		Size: 536.2 KB (536236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77a9b03f44da05f8ad06e8e65b3ba709defd1d21a78bdb579f53ba817f655ed1`  
		Last Modified: Fri, 13 Jan 2017 22:30:03 GMT  
		Size: 33.3 MB (33296412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b23fbfd65951526a5bcc2a705704f06e7d4a87f2fe00a2b5226e8967b56b04e`  
		Last Modified: Fri, 13 Jan 2017 22:29:58 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c8bd3acdba91e8de3ac6b9e9e80c9f25d3e31df534592da205c2be8ef0da392`  
		Last Modified: Fri, 13 Jan 2017 22:29:58 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df9745689e27da69cdaa11f5489d4a9a06e7832a3e6bd4df23652dfa2e5681a4`  
		Last Modified: Fri, 13 Jan 2017 22:29:59 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:latest`

```console
$ docker pull elasticsearch@sha256:6b111f95c72f9b9f560c9495f6906e73f0baef0d3e842528da2d236f9a19423a
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.8 MB (158829615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08dc186844c73c4eba14a8fa6950839b1d2276654c47fe1c5fd84bfc2587f982`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Wed, 14 Dec 2016 14:01:20 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 14:01:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 14:01:29 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 14 Dec 2016 14:01:37 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 14 Dec 2016 14:01:37 GMT
ENV ELASTICSEARCH_VERSION=5.1.1
# Wed, 14 Dec 2016 14:01:38 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.1.1
# Wed, 14 Dec 2016 14:01:53 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:01:54 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 14:01:54 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 14 Dec 2016 14:01:55 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 14 Dec 2016 14:01:56 GMT
COPY dir:aacebf91dc4c741fe8e3adf41add1f566e09f1d20f104cc9c8f9d6afb4190fe6 in ./config 
# Wed, 14 Dec 2016 14:01:56 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 22 Dec 2016 19:21:04 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Thu, 22 Dec 2016 19:21:05 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 22 Dec 2016 19:21:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Dec 2016 19:21:06 GMT
CMD ["elasticsearch"]
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
	-	`sha256:cda5a5d3e7b3ecebeb83a18c1d9139cc5bb6ab5b0cba766bfcb6f1634b67946e`  
		Last Modified: Wed, 14 Dec 2016 14:11:31 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6134e30966b1d4a22b31069546819fd1a45f13b6110e43aa9da3b96e3af784`  
		Last Modified: Wed, 14 Dec 2016 14:11:29 GMT  
		Size: 1.5 KB (1453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f0dc86ab9c9f65c373e11c4e10dc0d6ae7b2cb949718eb6019d5eaa913a4fe`  
		Last Modified: Wed, 14 Dec 2016 14:11:27 GMT  
		Size: 536.2 KB (536226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c4c5cec03162c9d87e037e1cb1cd7e23dac1031dd483ccd556a8e700913337`  
		Last Modified: Wed, 14 Dec 2016 14:11:31 GMT  
		Size: 33.3 MB (33287209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0892d1f1b6760bb6a738e9d2b5d43e320a51e56dc5380306dcd41f7d845c34d7`  
		Last Modified: Wed, 14 Dec 2016 14:11:26 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:627538d3dc8ced3844d02c8ee761567b54bcb754d3c8cc8dc718de6b64ad1aa7`  
		Last Modified: Wed, 14 Dec 2016 14:11:27 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:460c3be3282ea002faa220202a8488a8bc9d1cdd10c1bd8015c592bc8392a8e9`  
		Last Modified: Thu, 22 Dec 2016 19:58:12 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.1.2-alpine`

**does not exist** (yet?)

## `elasticsearch:5.1-alpine`

```console
$ docker pull elasticsearch@sha256:ae81a5a6e7db097ce65482c3dc1c22723b21abc977163a41d7607d4a656220c0
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:5.1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.8 MB (76755261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d41154aa0a90751103c4472f46046d34f8e2f5610e96508e0901d146a1e21d42`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 27 Dec 2016 22:14:28 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Tue, 27 Dec 2016 22:14:31 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Tue, 27 Dec 2016 22:14:31 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 27 Dec 2016 22:14:32 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 27 Dec 2016 22:14:32 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 22:15:01 GMT
ENV ELASTICSEARCH_VERSION=5.1.1
# Tue, 27 Dec 2016 22:15:02 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.1.1.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.1.1.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=7351cd29ac9c20592d94bde950f513b5c5bb44d3
# Tue, 27 Dec 2016 22:15:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -r "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Tue, 27 Dec 2016 22:15:15 GMT
COPY dir:aacebf91dc4c741fe8e3adf41add1f566e09f1d20f104cc9c8f9d6afb4190fe6 in ./config 
# Tue, 27 Dec 2016 22:15:15 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 27 Dec 2016 22:15:16 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Tue, 27 Dec 2016 22:15:17 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 27 Dec 2016 22:15:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Dec 2016 22:15:18 GMT
CMD ["elasticsearch"]
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
	-	`sha256:9bd80bfc6ba60414141d53d7a6672a8b4e14a1fe95767eb46d0630cbe00709d8`  
		Last Modified: Tue, 27 Dec 2016 22:41:44 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8545e0091c1aa923754cbedb6f83ff90f310b5b89a6096b119a984f161c30016`  
		Last Modified: Tue, 27 Dec 2016 22:41:41 GMT  
		Size: 1.1 MB (1098595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae93bce2c179e6cc38e9d668c69cc0c7f22163dd01c453f0f50dc3af2cccb40`  
		Last Modified: Tue, 27 Dec 2016 22:41:40 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e28d92be9c3b5fcc4a79b2b29a161aaed6108accf0e3dfefc38efd18d071854`  
		Last Modified: Tue, 27 Dec 2016 22:43:23 GMT  
		Size: 33.7 MB (33670707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e07acbcc7dfc35f46cbc8efae8f08683ec22e3a58d3015cf8b557804731e67a`  
		Last Modified: Tue, 27 Dec 2016 22:43:19 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29f774fba61777b386c934fb87813ae626a71a6b6515ec0f1c4407f873749de`  
		Last Modified: Tue, 27 Dec 2016 22:43:19 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5-alpine`

```console
$ docker pull elasticsearch@sha256:ae81a5a6e7db097ce65482c3dc1c22723b21abc977163a41d7607d4a656220c0
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:5-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.8 MB (76755261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d41154aa0a90751103c4472f46046d34f8e2f5610e96508e0901d146a1e21d42`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 27 Dec 2016 22:14:28 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Tue, 27 Dec 2016 22:14:31 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Tue, 27 Dec 2016 22:14:31 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 27 Dec 2016 22:14:32 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 27 Dec 2016 22:14:32 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 22:15:01 GMT
ENV ELASTICSEARCH_VERSION=5.1.1
# Tue, 27 Dec 2016 22:15:02 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.1.1.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.1.1.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=7351cd29ac9c20592d94bde950f513b5c5bb44d3
# Tue, 27 Dec 2016 22:15:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -r "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Tue, 27 Dec 2016 22:15:15 GMT
COPY dir:aacebf91dc4c741fe8e3adf41add1f566e09f1d20f104cc9c8f9d6afb4190fe6 in ./config 
# Tue, 27 Dec 2016 22:15:15 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 27 Dec 2016 22:15:16 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Tue, 27 Dec 2016 22:15:17 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 27 Dec 2016 22:15:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Dec 2016 22:15:18 GMT
CMD ["elasticsearch"]
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
	-	`sha256:9bd80bfc6ba60414141d53d7a6672a8b4e14a1fe95767eb46d0630cbe00709d8`  
		Last Modified: Tue, 27 Dec 2016 22:41:44 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8545e0091c1aa923754cbedb6f83ff90f310b5b89a6096b119a984f161c30016`  
		Last Modified: Tue, 27 Dec 2016 22:41:41 GMT  
		Size: 1.1 MB (1098595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae93bce2c179e6cc38e9d668c69cc0c7f22163dd01c453f0f50dc3af2cccb40`  
		Last Modified: Tue, 27 Dec 2016 22:41:40 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e28d92be9c3b5fcc4a79b2b29a161aaed6108accf0e3dfefc38efd18d071854`  
		Last Modified: Tue, 27 Dec 2016 22:43:23 GMT  
		Size: 33.7 MB (33670707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e07acbcc7dfc35f46cbc8efae8f08683ec22e3a58d3015cf8b557804731e67a`  
		Last Modified: Tue, 27 Dec 2016 22:43:19 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29f774fba61777b386c934fb87813ae626a71a6b6515ec0f1c4407f873749de`  
		Last Modified: Tue, 27 Dec 2016 22:43:19 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:alpine`

```console
$ docker pull elasticsearch@sha256:ae81a5a6e7db097ce65482c3dc1c22723b21abc977163a41d7607d4a656220c0
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.8 MB (76755261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d41154aa0a90751103c4472f46046d34f8e2f5610e96508e0901d146a1e21d42`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 27 Dec 2016 22:14:28 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Tue, 27 Dec 2016 22:14:31 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Tue, 27 Dec 2016 22:14:31 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 27 Dec 2016 22:14:32 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 27 Dec 2016 22:14:32 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 22:15:01 GMT
ENV ELASTICSEARCH_VERSION=5.1.1
# Tue, 27 Dec 2016 22:15:02 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.1.1.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.1.1.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=7351cd29ac9c20592d94bde950f513b5c5bb44d3
# Tue, 27 Dec 2016 22:15:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -r "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Tue, 27 Dec 2016 22:15:15 GMT
COPY dir:aacebf91dc4c741fe8e3adf41add1f566e09f1d20f104cc9c8f9d6afb4190fe6 in ./config 
# Tue, 27 Dec 2016 22:15:15 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 27 Dec 2016 22:15:16 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Tue, 27 Dec 2016 22:15:17 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 27 Dec 2016 22:15:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Dec 2016 22:15:18 GMT
CMD ["elasticsearch"]
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
	-	`sha256:9bd80bfc6ba60414141d53d7a6672a8b4e14a1fe95767eb46d0630cbe00709d8`  
		Last Modified: Tue, 27 Dec 2016 22:41:44 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8545e0091c1aa923754cbedb6f83ff90f310b5b89a6096b119a984f161c30016`  
		Last Modified: Tue, 27 Dec 2016 22:41:41 GMT  
		Size: 1.1 MB (1098595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae93bce2c179e6cc38e9d668c69cc0c7f22163dd01c453f0f50dc3af2cccb40`  
		Last Modified: Tue, 27 Dec 2016 22:41:40 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e28d92be9c3b5fcc4a79b2b29a161aaed6108accf0e3dfefc38efd18d071854`  
		Last Modified: Tue, 27 Dec 2016 22:43:23 GMT  
		Size: 33.7 MB (33670707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e07acbcc7dfc35f46cbc8efae8f08683ec22e3a58d3015cf8b557804731e67a`  
		Last Modified: Tue, 27 Dec 2016 22:43:19 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29f774fba61777b386c934fb87813ae626a71a6b6515ec0f1c4407f873749de`  
		Last Modified: Tue, 27 Dec 2016 22:43:19 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.4.4`

**does not exist** (yet?)

## `elasticsearch:2.4`

```console
$ docker pull elasticsearch@sha256:5c8045190cfde1a6dfdb0ff48486e8449d3f12d847f468766b63102c394a7738
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.9 MB (152875667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:363d22f524513454233443c69e6ac02b0756e3fd4687eb71017b4e806c9bdbde`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Wed, 14 Dec 2016 14:01:20 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 14:01:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 14:01:29 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 14 Dec 2016 14:02:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/2.x/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Mon, 19 Dec 2016 23:30:05 GMT
ENV ELASTICSEARCH_VERSION=2.4.3
# Mon, 19 Dec 2016 23:30:06 GMT
ENV ELASTICSEARCH_DEB_VERSION=2.4.3
# Mon, 19 Dec 2016 23:30:16 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 23:30:21 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Dec 2016 23:30:22 GMT
WORKDIR /usr/share/elasticsearch
# Mon, 19 Dec 2016 23:30:23 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Mon, 19 Dec 2016 23:30:23 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Mon, 19 Dec 2016 23:30:24 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 22 Dec 2016 19:21:09 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Thu, 22 Dec 2016 19:21:10 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 22 Dec 2016 19:21:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Dec 2016 19:21:11 GMT
CMD ["elasticsearch"]
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
	-	`sha256:cda5a5d3e7b3ecebeb83a18c1d9139cc5bb6ab5b0cba766bfcb6f1634b67946e`  
		Last Modified: Wed, 14 Dec 2016 14:11:31 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6134e30966b1d4a22b31069546819fd1a45f13b6110e43aa9da3b96e3af784`  
		Last Modified: Wed, 14 Dec 2016 14:11:29 GMT  
		Size: 1.5 KB (1453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6279d1527cee1c715a3696d93ddb876c41b10609bc27a5106e24b8be85984a0b`  
		Last Modified: Wed, 14 Dec 2016 14:13:49 GMT  
		Size: 536.2 KB (536219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa11e749096c84e42eee2bc338649d0427f440dbd75f235211a98d9414241ae3`  
		Last Modified: Mon, 19 Dec 2016 23:34:05 GMT  
		Size: 27.3 MB (27333242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0a26274250e41e2928a0d774c4022093bbf0afcaf1edf0ce03d07405ad6a2b`  
		Last Modified: Mon, 19 Dec 2016 23:34:02 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd31d48cdf97cbeb19c715367407f7420af2088e371ebd7906011cbeb3cd7eff`  
		Last Modified: Mon, 19 Dec 2016 23:34:03 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33832d907279d63185b3695fa5c506ff6ddf7c9859dbf69ae6c9976f52b58cf`  
		Last Modified: Thu, 22 Dec 2016 20:00:30 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2`

```console
$ docker pull elasticsearch@sha256:5c8045190cfde1a6dfdb0ff48486e8449d3f12d847f468766b63102c394a7738
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.9 MB (152875667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:363d22f524513454233443c69e6ac02b0756e3fd4687eb71017b4e806c9bdbde`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Wed, 14 Dec 2016 14:01:20 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 14:01:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 14:01:29 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 14 Dec 2016 14:02:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/2.x/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Mon, 19 Dec 2016 23:30:05 GMT
ENV ELASTICSEARCH_VERSION=2.4.3
# Mon, 19 Dec 2016 23:30:06 GMT
ENV ELASTICSEARCH_DEB_VERSION=2.4.3
# Mon, 19 Dec 2016 23:30:16 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 23:30:21 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Dec 2016 23:30:22 GMT
WORKDIR /usr/share/elasticsearch
# Mon, 19 Dec 2016 23:30:23 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Mon, 19 Dec 2016 23:30:23 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Mon, 19 Dec 2016 23:30:24 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 22 Dec 2016 19:21:09 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Thu, 22 Dec 2016 19:21:10 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 22 Dec 2016 19:21:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Dec 2016 19:21:11 GMT
CMD ["elasticsearch"]
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
	-	`sha256:cda5a5d3e7b3ecebeb83a18c1d9139cc5bb6ab5b0cba766bfcb6f1634b67946e`  
		Last Modified: Wed, 14 Dec 2016 14:11:31 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6134e30966b1d4a22b31069546819fd1a45f13b6110e43aa9da3b96e3af784`  
		Last Modified: Wed, 14 Dec 2016 14:11:29 GMT  
		Size: 1.5 KB (1453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6279d1527cee1c715a3696d93ddb876c41b10609bc27a5106e24b8be85984a0b`  
		Last Modified: Wed, 14 Dec 2016 14:13:49 GMT  
		Size: 536.2 KB (536219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa11e749096c84e42eee2bc338649d0427f440dbd75f235211a98d9414241ae3`  
		Last Modified: Mon, 19 Dec 2016 23:34:05 GMT  
		Size: 27.3 MB (27333242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0a26274250e41e2928a0d774c4022093bbf0afcaf1edf0ce03d07405ad6a2b`  
		Last Modified: Mon, 19 Dec 2016 23:34:02 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd31d48cdf97cbeb19c715367407f7420af2088e371ebd7906011cbeb3cd7eff`  
		Last Modified: Mon, 19 Dec 2016 23:34:03 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33832d907279d63185b3695fa5c506ff6ddf7c9859dbf69ae6c9976f52b58cf`  
		Last Modified: Thu, 22 Dec 2016 20:00:30 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.4.4-alpine`

**does not exist** (yet?)

## `elasticsearch:2.4-alpine`

```console
$ docker pull elasticsearch@sha256:43a9538716c692ca900008942fb7e3b18c64166b3452094148797a1bd8f66f42
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.4-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.8 MB (70801571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3f4e44ce22953c660948b60894e81588381774817cbaf95ebf57fc6818946af`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 27 Dec 2016 22:14:28 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Tue, 27 Dec 2016 22:14:31 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Tue, 27 Dec 2016 22:14:31 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 27 Dec 2016 22:14:32 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 27 Dec 2016 22:14:32 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 22:14:45 GMT
ENV ELASTICSEARCH_VERSION=2.4.3
# Tue, 27 Dec 2016 22:14:46 GMT
ENV ELASTICSEARCH_TARBALL=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.3.tar.gz ELASTICSEARCH_TARBALL_ASC=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.3.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=7f415b3598315c017b0733f50cd47aa837886a7f
# Tue, 27 Dec 2016 22:14:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -r "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Tue, 27 Dec 2016 22:14:57 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Tue, 27 Dec 2016 22:14:58 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 27 Dec 2016 22:14:59 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Tue, 27 Dec 2016 22:14:59 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 27 Dec 2016 22:15:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Dec 2016 22:15:00 GMT
CMD ["elasticsearch"]
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
	-	`sha256:9bd80bfc6ba60414141d53d7a6672a8b4e14a1fe95767eb46d0630cbe00709d8`  
		Last Modified: Tue, 27 Dec 2016 22:41:44 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8545e0091c1aa923754cbedb6f83ff90f310b5b89a6096b119a984f161c30016`  
		Last Modified: Tue, 27 Dec 2016 22:41:41 GMT  
		Size: 1.1 MB (1098595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae93bce2c179e6cc38e9d668c69cc0c7f22163dd01c453f0f50dc3af2cccb40`  
		Last Modified: Tue, 27 Dec 2016 22:41:40 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc4bc7dcdba587259ab5c474cb00480b0e7823aa6f97ed31aad01ae5eadcd1e`  
		Last Modified: Tue, 27 Dec 2016 22:42:34 GMT  
		Size: 27.7 MB (27716988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ecc7e8ca188d42507708bd962b7a6563a36cfdbe36dd7d301a93eee36d849a`  
		Last Modified: Tue, 27 Dec 2016 22:42:30 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e9f2226fc63fe693a0a5bef4efc9574da41ada05d8bd8c1eb454c67f85b0314`  
		Last Modified: Tue, 27 Dec 2016 22:42:30 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2-alpine`

```console
$ docker pull elasticsearch@sha256:43a9538716c692ca900008942fb7e3b18c64166b3452094148797a1bd8f66f42
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.8 MB (70801571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3f4e44ce22953c660948b60894e81588381774817cbaf95ebf57fc6818946af`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 27 Dec 2016 22:14:28 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Tue, 27 Dec 2016 22:14:31 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Tue, 27 Dec 2016 22:14:31 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 27 Dec 2016 22:14:32 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 27 Dec 2016 22:14:32 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 22:14:45 GMT
ENV ELASTICSEARCH_VERSION=2.4.3
# Tue, 27 Dec 2016 22:14:46 GMT
ENV ELASTICSEARCH_TARBALL=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.3.tar.gz ELASTICSEARCH_TARBALL_ASC=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.3.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=7f415b3598315c017b0733f50cd47aa837886a7f
# Tue, 27 Dec 2016 22:14:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -r "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Tue, 27 Dec 2016 22:14:57 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Tue, 27 Dec 2016 22:14:58 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 27 Dec 2016 22:14:59 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Tue, 27 Dec 2016 22:14:59 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 27 Dec 2016 22:15:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Dec 2016 22:15:00 GMT
CMD ["elasticsearch"]
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
	-	`sha256:9bd80bfc6ba60414141d53d7a6672a8b4e14a1fe95767eb46d0630cbe00709d8`  
		Last Modified: Tue, 27 Dec 2016 22:41:44 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8545e0091c1aa923754cbedb6f83ff90f310b5b89a6096b119a984f161c30016`  
		Last Modified: Tue, 27 Dec 2016 22:41:41 GMT  
		Size: 1.1 MB (1098595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae93bce2c179e6cc38e9d668c69cc0c7f22163dd01c453f0f50dc3af2cccb40`  
		Last Modified: Tue, 27 Dec 2016 22:41:40 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc4bc7dcdba587259ab5c474cb00480b0e7823aa6f97ed31aad01ae5eadcd1e`  
		Last Modified: Tue, 27 Dec 2016 22:42:34 GMT  
		Size: 27.7 MB (27716988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ecc7e8ca188d42507708bd962b7a6563a36cfdbe36dd7d301a93eee36d849a`  
		Last Modified: Tue, 27 Dec 2016 22:42:30 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e9f2226fc63fe693a0a5bef4efc9574da41ada05d8bd8c1eb454c67f85b0314`  
		Last Modified: Tue, 27 Dec 2016 22:42:30 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:1.7.6`

```console
$ docker pull elasticsearch@sha256:dcd80bb24559132a9387f49cb15f7c65efc8e75374176348d09f6276feb66f99
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:1.7.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152965111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08402b3e29fe18b53f53a81d259a476b5fd1d7e74ce80a303a8028809d987d98`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Wed, 14 Dec 2016 14:01:20 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 14:01:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 14:01:29 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 14 Dec 2016 14:10:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/1.7/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 14 Dec 2016 14:10:28 GMT
ENV ELASTICSEARCH_VERSION=1.7.6
# Wed, 14 Dec 2016 14:10:29 GMT
ENV ELASTICSEARCH_DEB_VERSION=1.7.6
# Wed, 14 Dec 2016 14:10:40 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:10:41 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 14:10:41 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 14 Dec 2016 14:10:42 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 14 Dec 2016 14:10:42 GMT
COPY dir:31f8476cce13d884e30d94ee9384cd924f19b02a6833943b9d501f833cd60885 in ./config 
# Wed, 14 Dec 2016 14:10:43 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 22 Dec 2016 19:21:14 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Thu, 22 Dec 2016 19:21:15 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 22 Dec 2016 19:21:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Dec 2016 19:21:16 GMT
CMD ["elasticsearch"]
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
	-	`sha256:cda5a5d3e7b3ecebeb83a18c1d9139cc5bb6ab5b0cba766bfcb6f1634b67946e`  
		Last Modified: Wed, 14 Dec 2016 14:11:31 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6134e30966b1d4a22b31069546819fd1a45f13b6110e43aa9da3b96e3af784`  
		Last Modified: Wed, 14 Dec 2016 14:11:29 GMT  
		Size: 1.5 KB (1453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73040216d29c52ef0242f135f6738c70f777c8044e2568423597adf82ab1d81a`  
		Last Modified: Wed, 14 Dec 2016 14:15:36 GMT  
		Size: 536.2 KB (536222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd57274b737695e8a2778eb50acb81061b885519ac5e554bf1b422ae734274b7`  
		Last Modified: Wed, 14 Dec 2016 14:15:41 GMT  
		Size: 27.4 MB (27422727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cf71ea3e85c8754fcb174b8b6dbd5215bf59805a3650ba64a6d22ec3ccf719`  
		Last Modified: Wed, 14 Dec 2016 14:15:36 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625b776aa721bbb60d933dc7ab5b8a0c7d83b6551d211a6d219b095c4d3e539f`  
		Last Modified: Wed, 14 Dec 2016 14:15:36 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd84f38ef0dd612f0c09e00033cc84e67d7b8afa38e562da9df35fa28cb2dde2`  
		Last Modified: Thu, 22 Dec 2016 20:02:21 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:1.7`

```console
$ docker pull elasticsearch@sha256:dcd80bb24559132a9387f49cb15f7c65efc8e75374176348d09f6276feb66f99
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:1.7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152965111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08402b3e29fe18b53f53a81d259a476b5fd1d7e74ce80a303a8028809d987d98`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Wed, 14 Dec 2016 14:01:20 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 14:01:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 14:01:29 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 14 Dec 2016 14:10:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/1.7/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 14 Dec 2016 14:10:28 GMT
ENV ELASTICSEARCH_VERSION=1.7.6
# Wed, 14 Dec 2016 14:10:29 GMT
ENV ELASTICSEARCH_DEB_VERSION=1.7.6
# Wed, 14 Dec 2016 14:10:40 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:10:41 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 14:10:41 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 14 Dec 2016 14:10:42 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 14 Dec 2016 14:10:42 GMT
COPY dir:31f8476cce13d884e30d94ee9384cd924f19b02a6833943b9d501f833cd60885 in ./config 
# Wed, 14 Dec 2016 14:10:43 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 22 Dec 2016 19:21:14 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Thu, 22 Dec 2016 19:21:15 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 22 Dec 2016 19:21:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Dec 2016 19:21:16 GMT
CMD ["elasticsearch"]
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
	-	`sha256:cda5a5d3e7b3ecebeb83a18c1d9139cc5bb6ab5b0cba766bfcb6f1634b67946e`  
		Last Modified: Wed, 14 Dec 2016 14:11:31 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6134e30966b1d4a22b31069546819fd1a45f13b6110e43aa9da3b96e3af784`  
		Last Modified: Wed, 14 Dec 2016 14:11:29 GMT  
		Size: 1.5 KB (1453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73040216d29c52ef0242f135f6738c70f777c8044e2568423597adf82ab1d81a`  
		Last Modified: Wed, 14 Dec 2016 14:15:36 GMT  
		Size: 536.2 KB (536222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd57274b737695e8a2778eb50acb81061b885519ac5e554bf1b422ae734274b7`  
		Last Modified: Wed, 14 Dec 2016 14:15:41 GMT  
		Size: 27.4 MB (27422727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cf71ea3e85c8754fcb174b8b6dbd5215bf59805a3650ba64a6d22ec3ccf719`  
		Last Modified: Wed, 14 Dec 2016 14:15:36 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625b776aa721bbb60d933dc7ab5b8a0c7d83b6551d211a6d219b095c4d3e539f`  
		Last Modified: Wed, 14 Dec 2016 14:15:36 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd84f38ef0dd612f0c09e00033cc84e67d7b8afa38e562da9df35fa28cb2dde2`  
		Last Modified: Thu, 22 Dec 2016 20:02:21 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:1`

```console
$ docker pull elasticsearch@sha256:dcd80bb24559132a9387f49cb15f7c65efc8e75374176348d09f6276feb66f99
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152965111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08402b3e29fe18b53f53a81d259a476b5fd1d7e74ce80a303a8028809d987d98`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Wed, 14 Dec 2016 14:01:20 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 14:01:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Dec 2016 14:01:29 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 14 Dec 2016 14:10:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/1.7/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 14 Dec 2016 14:10:28 GMT
ENV ELASTICSEARCH_VERSION=1.7.6
# Wed, 14 Dec 2016 14:10:29 GMT
ENV ELASTICSEARCH_DEB_VERSION=1.7.6
# Wed, 14 Dec 2016 14:10:40 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 14:10:41 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 14:10:41 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 14 Dec 2016 14:10:42 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 14 Dec 2016 14:10:42 GMT
COPY dir:31f8476cce13d884e30d94ee9384cd924f19b02a6833943b9d501f833cd60885 in ./config 
# Wed, 14 Dec 2016 14:10:43 GMT
VOLUME [/usr/share/elasticsearch/data]
# Thu, 22 Dec 2016 19:21:14 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Thu, 22 Dec 2016 19:21:15 GMT
EXPOSE 9200/tcp 9300/tcp
# Thu, 22 Dec 2016 19:21:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Dec 2016 19:21:16 GMT
CMD ["elasticsearch"]
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
	-	`sha256:cda5a5d3e7b3ecebeb83a18c1d9139cc5bb6ab5b0cba766bfcb6f1634b67946e`  
		Last Modified: Wed, 14 Dec 2016 14:11:31 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6134e30966b1d4a22b31069546819fd1a45f13b6110e43aa9da3b96e3af784`  
		Last Modified: Wed, 14 Dec 2016 14:11:29 GMT  
		Size: 1.5 KB (1453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73040216d29c52ef0242f135f6738c70f777c8044e2568423597adf82ab1d81a`  
		Last Modified: Wed, 14 Dec 2016 14:15:36 GMT  
		Size: 536.2 KB (536222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd57274b737695e8a2778eb50acb81061b885519ac5e554bf1b422ae734274b7`  
		Last Modified: Wed, 14 Dec 2016 14:15:41 GMT  
		Size: 27.4 MB (27422727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38cf71ea3e85c8754fcb174b8b6dbd5215bf59805a3650ba64a6d22ec3ccf719`  
		Last Modified: Wed, 14 Dec 2016 14:15:36 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625b776aa721bbb60d933dc7ab5b8a0c7d83b6551d211a6d219b095c4d3e539f`  
		Last Modified: Wed, 14 Dec 2016 14:15:36 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd84f38ef0dd612f0c09e00033cc84e67d7b8afa38e562da9df35fa28cb2dde2`  
		Last Modified: Thu, 22 Dec 2016 20:02:21 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:1.7.6-alpine`

```console
$ docker pull elasticsearch@sha256:15b4734d9f3601591eb15b06603e06429b8d867df955dce532884a6dcde6eb5a
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:1.7.6-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71948181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a45e850ac4e8a3a1098ebb1b852d9128ddcadc7b7f64c8f512188a9541e45d1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 27 Dec 2016 22:14:28 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Tue, 27 Dec 2016 22:14:31 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Tue, 27 Dec 2016 22:14:31 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 27 Dec 2016 22:14:32 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 27 Dec 2016 22:14:32 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 22:14:33 GMT
ENV ELASTICSEARCH_VERSION=1.7.6
# Tue, 27 Dec 2016 22:14:33 GMT
ENV ELASTICSEARCH_TARBALL=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.7.6.tar.gz ELASTICSEARCH_TARBALL_ASC= ELASTICSEARCH_TARBALL_SHA1=0b6ec9fe34b29e6adc4d8481630bf1f69cb04aa9
# Tue, 27 Dec 2016 22:14:40 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -r "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Tue, 27 Dec 2016 22:14:41 GMT
COPY dir:31f8476cce13d884e30d94ee9384cd924f19b02a6833943b9d501f833cd60885 in ./config 
# Tue, 27 Dec 2016 22:14:42 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 27 Dec 2016 22:14:43 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Tue, 27 Dec 2016 22:14:43 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 27 Dec 2016 22:14:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Dec 2016 22:14:44 GMT
CMD ["elasticsearch"]
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
	-	`sha256:9bd80bfc6ba60414141d53d7a6672a8b4e14a1fe95767eb46d0630cbe00709d8`  
		Last Modified: Tue, 27 Dec 2016 22:41:44 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8545e0091c1aa923754cbedb6f83ff90f310b5b89a6096b119a984f161c30016`  
		Last Modified: Tue, 27 Dec 2016 22:41:41 GMT  
		Size: 1.1 MB (1098595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae93bce2c179e6cc38e9d668c69cc0c7f22163dd01c453f0f50dc3af2cccb40`  
		Last Modified: Tue, 27 Dec 2016 22:41:40 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeefdcfa0e7a2def66ea687b9ee02cf3e007c0f7733190863d06666deabb99cc`  
		Last Modified: Tue, 27 Dec 2016 22:41:44 GMT  
		Size: 28.9 MB (28863640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec7197dcd21b3a6e695617db0339ae7244f9e89243b44944e136bb1c7f484dd`  
		Last Modified: Tue, 27 Dec 2016 22:41:40 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3803e5f029d1bf72fd34c0cafd1e2c5436bab031fb401cb5691819de5964ce`  
		Last Modified: Tue, 27 Dec 2016 22:41:40 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:1.7-alpine`

```console
$ docker pull elasticsearch@sha256:15b4734d9f3601591eb15b06603e06429b8d867df955dce532884a6dcde6eb5a
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:1.7-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71948181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a45e850ac4e8a3a1098ebb1b852d9128ddcadc7b7f64c8f512188a9541e45d1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 27 Dec 2016 22:14:28 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Tue, 27 Dec 2016 22:14:31 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Tue, 27 Dec 2016 22:14:31 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 27 Dec 2016 22:14:32 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 27 Dec 2016 22:14:32 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 22:14:33 GMT
ENV ELASTICSEARCH_VERSION=1.7.6
# Tue, 27 Dec 2016 22:14:33 GMT
ENV ELASTICSEARCH_TARBALL=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.7.6.tar.gz ELASTICSEARCH_TARBALL_ASC= ELASTICSEARCH_TARBALL_SHA1=0b6ec9fe34b29e6adc4d8481630bf1f69cb04aa9
# Tue, 27 Dec 2016 22:14:40 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -r "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Tue, 27 Dec 2016 22:14:41 GMT
COPY dir:31f8476cce13d884e30d94ee9384cd924f19b02a6833943b9d501f833cd60885 in ./config 
# Tue, 27 Dec 2016 22:14:42 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 27 Dec 2016 22:14:43 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Tue, 27 Dec 2016 22:14:43 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 27 Dec 2016 22:14:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Dec 2016 22:14:44 GMT
CMD ["elasticsearch"]
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
	-	`sha256:9bd80bfc6ba60414141d53d7a6672a8b4e14a1fe95767eb46d0630cbe00709d8`  
		Last Modified: Tue, 27 Dec 2016 22:41:44 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8545e0091c1aa923754cbedb6f83ff90f310b5b89a6096b119a984f161c30016`  
		Last Modified: Tue, 27 Dec 2016 22:41:41 GMT  
		Size: 1.1 MB (1098595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae93bce2c179e6cc38e9d668c69cc0c7f22163dd01c453f0f50dc3af2cccb40`  
		Last Modified: Tue, 27 Dec 2016 22:41:40 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeefdcfa0e7a2def66ea687b9ee02cf3e007c0f7733190863d06666deabb99cc`  
		Last Modified: Tue, 27 Dec 2016 22:41:44 GMT  
		Size: 28.9 MB (28863640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec7197dcd21b3a6e695617db0339ae7244f9e89243b44944e136bb1c7f484dd`  
		Last Modified: Tue, 27 Dec 2016 22:41:40 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3803e5f029d1bf72fd34c0cafd1e2c5436bab031fb401cb5691819de5964ce`  
		Last Modified: Tue, 27 Dec 2016 22:41:40 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:1-alpine`

```console
$ docker pull elasticsearch@sha256:15b4734d9f3601591eb15b06603e06429b8d867df955dce532884a6dcde6eb5a
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71948181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a45e850ac4e8a3a1098ebb1b852d9128ddcadc7b7f64c8f512188a9541e45d1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Tue, 27 Dec 2016 22:14:28 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Tue, 27 Dec 2016 22:14:31 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Tue, 27 Dec 2016 22:14:31 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 27 Dec 2016 22:14:32 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 27 Dec 2016 22:14:32 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 22:14:33 GMT
ENV ELASTICSEARCH_VERSION=1.7.6
# Tue, 27 Dec 2016 22:14:33 GMT
ENV ELASTICSEARCH_TARBALL=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.7.6.tar.gz ELASTICSEARCH_TARBALL_ASC= ELASTICSEARCH_TARBALL_SHA1=0b6ec9fe34b29e6adc4d8481630bf1f69cb04aa9
# Tue, 27 Dec 2016 22:14:40 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -r "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Tue, 27 Dec 2016 22:14:41 GMT
COPY dir:31f8476cce13d884e30d94ee9384cd924f19b02a6833943b9d501f833cd60885 in ./config 
# Tue, 27 Dec 2016 22:14:42 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 27 Dec 2016 22:14:43 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Tue, 27 Dec 2016 22:14:43 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 27 Dec 2016 22:14:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Dec 2016 22:14:44 GMT
CMD ["elasticsearch"]
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
	-	`sha256:9bd80bfc6ba60414141d53d7a6672a8b4e14a1fe95767eb46d0630cbe00709d8`  
		Last Modified: Tue, 27 Dec 2016 22:41:44 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8545e0091c1aa923754cbedb6f83ff90f310b5b89a6096b119a984f161c30016`  
		Last Modified: Tue, 27 Dec 2016 22:41:41 GMT  
		Size: 1.1 MB (1098595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae93bce2c179e6cc38e9d668c69cc0c7f22163dd01c453f0f50dc3af2cccb40`  
		Last Modified: Tue, 27 Dec 2016 22:41:40 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeefdcfa0e7a2def66ea687b9ee02cf3e007c0f7733190863d06666deabb99cc`  
		Last Modified: Tue, 27 Dec 2016 22:41:44 GMT  
		Size: 28.9 MB (28863640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec7197dcd21b3a6e695617db0339ae7244f9e89243b44944e136bb1c7f484dd`  
		Last Modified: Tue, 27 Dec 2016 22:41:40 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3803e5f029d1bf72fd34c0cafd1e2c5436bab031fb401cb5691819de5964ce`  
		Last Modified: Tue, 27 Dec 2016 22:41:40 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
