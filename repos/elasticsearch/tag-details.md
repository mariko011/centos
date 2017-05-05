<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `elasticsearch`

-	[`elasticsearch:5.4.0`](#elasticsearch540)
-	[`elasticsearch:5.4`](#elasticsearch54)
-	[`elasticsearch:5`](#elasticsearch5)
-	[`elasticsearch:latest`](#elasticsearchlatest)
-	[`elasticsearch:5.4.0-alpine`](#elasticsearch540-alpine)
-	[`elasticsearch:5.4-alpine`](#elasticsearch54-alpine)
-	[`elasticsearch:5-alpine`](#elasticsearch5-alpine)
-	[`elasticsearch:alpine`](#elasticsearchalpine)
-	[`elasticsearch:2.4.5`](#elasticsearch245)
-	[`elasticsearch:2.4`](#elasticsearch24)
-	[`elasticsearch:2`](#elasticsearch2)
-	[`elasticsearch:2.4.5-alpine`](#elasticsearch245-alpine)
-	[`elasticsearch:2.4-alpine`](#elasticsearch24-alpine)
-	[`elasticsearch:2-alpine`](#elasticsearch2-alpine)
-	[`elasticsearch:1.7.6`](#elasticsearch176)
-	[`elasticsearch:1.7`](#elasticsearch17)
-	[`elasticsearch:1`](#elasticsearch1)
-	[`elasticsearch:1.7.6-alpine`](#elasticsearch176-alpine)
-	[`elasticsearch:1.7-alpine`](#elasticsearch17-alpine)
-	[`elasticsearch:1-alpine`](#elasticsearch1-alpine)

## `elasticsearch:5.4.0`

```console
$ docker pull elasticsearch@sha256:91661327ac129ab17c62646e0dc1362570a3306668ff1039db9d4f261d438881
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:5.4.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.4 MB (161441526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9a7470c1389205915e1f32a6e752ddd565e9eb27a4afedc5abe6073e2579105`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 26 Apr 2017 23:10:37 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Apr 2017 23:10:39 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 26 Apr 2017 23:59:11 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Apr 2017 23:59:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 26 Apr 2017 23:59:19 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 27 Apr 2017 00:01:15 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Fri, 05 May 2017 20:11:17 GMT
ENV ELASTICSEARCH_VERSION=5.4.0
# Fri, 05 May 2017 20:11:17 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.4.0
# Fri, 05 May 2017 20:11:31 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 May 2017 20:11:31 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 05 May 2017 20:11:32 GMT
WORKDIR /usr/share/elasticsearch
# Fri, 05 May 2017 20:11:33 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Fri, 05 May 2017 20:11:34 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Fri, 05 May 2017 20:11:35 GMT
VOLUME [/usr/share/elasticsearch/data]
# Fri, 05 May 2017 20:11:36 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Fri, 05 May 2017 20:11:36 GMT
EXPOSE 9200/tcp 9300/tcp
# Fri, 05 May 2017 20:11:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 05 May 2017 20:11:38 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a404e523e02b811c1633263adce210d7b2bd95d17ebfe0313103e20a29be80`  
		Last Modified: Wed, 26 Apr 2017 23:24:36 GMT  
		Size: 54.1 MB (54059106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806f07b1dce8f18233ee76f7e7d325fc080a9ed694909b64b2051077f58ff030`  
		Last Modified: Wed, 26 Apr 2017 23:24:27 GMT  
		Size: 289.6 KB (289638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97180523aa1a18c62510d095f116e42653b5c0dc657876f60995f216156d3fb8`  
		Last Modified: Thu, 27 Apr 2017 00:02:01 GMT  
		Size: 818.8 KB (818809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1f5d9e6a71efbf93e338bdca40546905ab67954d753a11f89f3b5bad4223c3`  
		Last Modified: Thu, 27 Apr 2017 00:02:01 GMT  
		Size: 1.4 KB (1448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6614709b45b0190b7f08079160429a76565355cd2880d1b2831d9a6e57959fae`  
		Last Modified: Thu, 27 Apr 2017 00:06:05 GMT  
		Size: 543.0 KB (542961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c789d0d832af919f57d776c1edcbd1a4be93c181febbcde1e035e3b02af6b1`  
		Last Modified: Fri, 05 May 2017 20:12:41 GMT  
		Size: 33.3 MB (33337688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff71476adf84af0b730b516446d4e4332ee82e3bcb9d95c7e446479ccfbb01fb`  
		Last Modified: Fri, 05 May 2017 20:12:37 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25e5bf09b66316645926d60c30c00c885e6198a95e5ab48bc35d354899ccbe0`  
		Last Modified: Fri, 05 May 2017 20:12:37 GMT  
		Size: 480.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63a496f68789318fbc026cdba08781bbdd68248d0c52db8bad24fac4da4143c`  
		Last Modified: Fri, 05 May 2017 20:12:37 GMT  
		Size: 506.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.4`

```console
$ docker pull elasticsearch@sha256:91661327ac129ab17c62646e0dc1362570a3306668ff1039db9d4f261d438881
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:5.4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.4 MB (161441526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9a7470c1389205915e1f32a6e752ddd565e9eb27a4afedc5abe6073e2579105`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 26 Apr 2017 23:10:37 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Apr 2017 23:10:39 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 26 Apr 2017 23:59:11 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Apr 2017 23:59:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 26 Apr 2017 23:59:19 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 27 Apr 2017 00:01:15 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Fri, 05 May 2017 20:11:17 GMT
ENV ELASTICSEARCH_VERSION=5.4.0
# Fri, 05 May 2017 20:11:17 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.4.0
# Fri, 05 May 2017 20:11:31 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 May 2017 20:11:31 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 05 May 2017 20:11:32 GMT
WORKDIR /usr/share/elasticsearch
# Fri, 05 May 2017 20:11:33 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Fri, 05 May 2017 20:11:34 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Fri, 05 May 2017 20:11:35 GMT
VOLUME [/usr/share/elasticsearch/data]
# Fri, 05 May 2017 20:11:36 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Fri, 05 May 2017 20:11:36 GMT
EXPOSE 9200/tcp 9300/tcp
# Fri, 05 May 2017 20:11:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 05 May 2017 20:11:38 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a404e523e02b811c1633263adce210d7b2bd95d17ebfe0313103e20a29be80`  
		Last Modified: Wed, 26 Apr 2017 23:24:36 GMT  
		Size: 54.1 MB (54059106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806f07b1dce8f18233ee76f7e7d325fc080a9ed694909b64b2051077f58ff030`  
		Last Modified: Wed, 26 Apr 2017 23:24:27 GMT  
		Size: 289.6 KB (289638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97180523aa1a18c62510d095f116e42653b5c0dc657876f60995f216156d3fb8`  
		Last Modified: Thu, 27 Apr 2017 00:02:01 GMT  
		Size: 818.8 KB (818809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1f5d9e6a71efbf93e338bdca40546905ab67954d753a11f89f3b5bad4223c3`  
		Last Modified: Thu, 27 Apr 2017 00:02:01 GMT  
		Size: 1.4 KB (1448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6614709b45b0190b7f08079160429a76565355cd2880d1b2831d9a6e57959fae`  
		Last Modified: Thu, 27 Apr 2017 00:06:05 GMT  
		Size: 543.0 KB (542961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c789d0d832af919f57d776c1edcbd1a4be93c181febbcde1e035e3b02af6b1`  
		Last Modified: Fri, 05 May 2017 20:12:41 GMT  
		Size: 33.3 MB (33337688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff71476adf84af0b730b516446d4e4332ee82e3bcb9d95c7e446479ccfbb01fb`  
		Last Modified: Fri, 05 May 2017 20:12:37 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25e5bf09b66316645926d60c30c00c885e6198a95e5ab48bc35d354899ccbe0`  
		Last Modified: Fri, 05 May 2017 20:12:37 GMT  
		Size: 480.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63a496f68789318fbc026cdba08781bbdd68248d0c52db8bad24fac4da4143c`  
		Last Modified: Fri, 05 May 2017 20:12:37 GMT  
		Size: 506.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5`

```console
$ docker pull elasticsearch@sha256:91661327ac129ab17c62646e0dc1362570a3306668ff1039db9d4f261d438881
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.4 MB (161441526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9a7470c1389205915e1f32a6e752ddd565e9eb27a4afedc5abe6073e2579105`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 26 Apr 2017 23:10:37 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Apr 2017 23:10:39 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 26 Apr 2017 23:59:11 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Apr 2017 23:59:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 26 Apr 2017 23:59:19 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 27 Apr 2017 00:01:15 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Fri, 05 May 2017 20:11:17 GMT
ENV ELASTICSEARCH_VERSION=5.4.0
# Fri, 05 May 2017 20:11:17 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.4.0
# Fri, 05 May 2017 20:11:31 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 May 2017 20:11:31 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 05 May 2017 20:11:32 GMT
WORKDIR /usr/share/elasticsearch
# Fri, 05 May 2017 20:11:33 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Fri, 05 May 2017 20:11:34 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Fri, 05 May 2017 20:11:35 GMT
VOLUME [/usr/share/elasticsearch/data]
# Fri, 05 May 2017 20:11:36 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Fri, 05 May 2017 20:11:36 GMT
EXPOSE 9200/tcp 9300/tcp
# Fri, 05 May 2017 20:11:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 05 May 2017 20:11:38 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a404e523e02b811c1633263adce210d7b2bd95d17ebfe0313103e20a29be80`  
		Last Modified: Wed, 26 Apr 2017 23:24:36 GMT  
		Size: 54.1 MB (54059106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806f07b1dce8f18233ee76f7e7d325fc080a9ed694909b64b2051077f58ff030`  
		Last Modified: Wed, 26 Apr 2017 23:24:27 GMT  
		Size: 289.6 KB (289638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97180523aa1a18c62510d095f116e42653b5c0dc657876f60995f216156d3fb8`  
		Last Modified: Thu, 27 Apr 2017 00:02:01 GMT  
		Size: 818.8 KB (818809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1f5d9e6a71efbf93e338bdca40546905ab67954d753a11f89f3b5bad4223c3`  
		Last Modified: Thu, 27 Apr 2017 00:02:01 GMT  
		Size: 1.4 KB (1448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6614709b45b0190b7f08079160429a76565355cd2880d1b2831d9a6e57959fae`  
		Last Modified: Thu, 27 Apr 2017 00:06:05 GMT  
		Size: 543.0 KB (542961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c789d0d832af919f57d776c1edcbd1a4be93c181febbcde1e035e3b02af6b1`  
		Last Modified: Fri, 05 May 2017 20:12:41 GMT  
		Size: 33.3 MB (33337688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff71476adf84af0b730b516446d4e4332ee82e3bcb9d95c7e446479ccfbb01fb`  
		Last Modified: Fri, 05 May 2017 20:12:37 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25e5bf09b66316645926d60c30c00c885e6198a95e5ab48bc35d354899ccbe0`  
		Last Modified: Fri, 05 May 2017 20:12:37 GMT  
		Size: 480.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63a496f68789318fbc026cdba08781bbdd68248d0c52db8bad24fac4da4143c`  
		Last Modified: Fri, 05 May 2017 20:12:37 GMT  
		Size: 506.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:latest`

```console
$ docker pull elasticsearch@sha256:91661327ac129ab17c62646e0dc1362570a3306668ff1039db9d4f261d438881
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.4 MB (161441526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9a7470c1389205915e1f32a6e752ddd565e9eb27a4afedc5abe6073e2579105`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 26 Apr 2017 23:10:37 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Apr 2017 23:10:39 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 26 Apr 2017 23:59:11 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Apr 2017 23:59:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 26 Apr 2017 23:59:19 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 27 Apr 2017 00:01:15 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Fri, 05 May 2017 20:11:17 GMT
ENV ELASTICSEARCH_VERSION=5.4.0
# Fri, 05 May 2017 20:11:17 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.4.0
# Fri, 05 May 2017 20:11:31 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 05 May 2017 20:11:31 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 05 May 2017 20:11:32 GMT
WORKDIR /usr/share/elasticsearch
# Fri, 05 May 2017 20:11:33 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Fri, 05 May 2017 20:11:34 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Fri, 05 May 2017 20:11:35 GMT
VOLUME [/usr/share/elasticsearch/data]
# Fri, 05 May 2017 20:11:36 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Fri, 05 May 2017 20:11:36 GMT
EXPOSE 9200/tcp 9300/tcp
# Fri, 05 May 2017 20:11:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 05 May 2017 20:11:38 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a404e523e02b811c1633263adce210d7b2bd95d17ebfe0313103e20a29be80`  
		Last Modified: Wed, 26 Apr 2017 23:24:36 GMT  
		Size: 54.1 MB (54059106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806f07b1dce8f18233ee76f7e7d325fc080a9ed694909b64b2051077f58ff030`  
		Last Modified: Wed, 26 Apr 2017 23:24:27 GMT  
		Size: 289.6 KB (289638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97180523aa1a18c62510d095f116e42653b5c0dc657876f60995f216156d3fb8`  
		Last Modified: Thu, 27 Apr 2017 00:02:01 GMT  
		Size: 818.8 KB (818809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1f5d9e6a71efbf93e338bdca40546905ab67954d753a11f89f3b5bad4223c3`  
		Last Modified: Thu, 27 Apr 2017 00:02:01 GMT  
		Size: 1.4 KB (1448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6614709b45b0190b7f08079160429a76565355cd2880d1b2831d9a6e57959fae`  
		Last Modified: Thu, 27 Apr 2017 00:06:05 GMT  
		Size: 543.0 KB (542961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c789d0d832af919f57d776c1edcbd1a4be93c181febbcde1e035e3b02af6b1`  
		Last Modified: Fri, 05 May 2017 20:12:41 GMT  
		Size: 33.3 MB (33337688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff71476adf84af0b730b516446d4e4332ee82e3bcb9d95c7e446479ccfbb01fb`  
		Last Modified: Fri, 05 May 2017 20:12:37 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25e5bf09b66316645926d60c30c00c885e6198a95e5ab48bc35d354899ccbe0`  
		Last Modified: Fri, 05 May 2017 20:12:37 GMT  
		Size: 480.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63a496f68789318fbc026cdba08781bbdd68248d0c52db8bad24fac4da4143c`  
		Last Modified: Fri, 05 May 2017 20:12:37 GMT  
		Size: 506.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.4.0-alpine`

```console
$ docker pull elasticsearch@sha256:7df3449f0a2ae59904302ea1b0367aa14dd3dccedc20b2e45d10e92928628a11
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:5.4.0-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.5 MB (90543360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32cc94f9b576b3515e4fcb4d5028c9479f994500c1c1356519ae35d4013f517d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 07 Mar 2017 01:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 17:46:13 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Tue, 07 Mar 2017 17:46:16 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Tue, 07 Mar 2017 17:46:32 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 25 Apr 2017 02:36:04 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 25 Apr 2017 02:36:05 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 05 May 2017 20:11:57 GMT
ENV ELASTICSEARCH_VERSION=5.4.0
# Fri, 05 May 2017 20:11:57 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.4.0.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.4.0.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=880b115be755a923f25aea810e3386ccb723cc55
# Fri, 05 May 2017 20:12:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -r "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Fri, 05 May 2017 20:12:11 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Fri, 05 May 2017 20:12:11 GMT
VOLUME [/usr/share/elasticsearch/data]
# Fri, 05 May 2017 20:12:12 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Fri, 05 May 2017 20:12:13 GMT
EXPOSE 9200/tcp 9300/tcp
# Fri, 05 May 2017 20:12:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 05 May 2017 20:12:14 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e619d348278f1e8660192734bff496a6c3e05aab6bef025e843e7413a7c9e3`  
		Last Modified: Tue, 07 Mar 2017 01:15:49 GMT  
		Size: 53.8 MB (53811092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc52efe90d3e45b685f2f90da7c649be6fdf27398cc80683e15ba3429d43ccb`  
		Last Modified: Tue, 07 Mar 2017 18:01:20 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8e5d874dc8370932df2932dc75e9205ff40b46c0552cb687518b3358aa9342`  
		Last Modified: Tue, 07 Mar 2017 18:01:18 GMT  
		Size: 1.1 MB (1095257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46199d6df4617c989cbb1d100a928ebe7a69fbbebc8cd420b7a2fd99606e655`  
		Last Modified: Tue, 25 Apr 2017 02:41:16 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba67247bf194c28807a969872de8cc37bda955120b10654d47b220264da9ea4`  
		Last Modified: Fri, 05 May 2017 20:14:09 GMT  
		Size: 33.7 MB (33729128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0b6cf5bd550a11f436265b7fc4fc37da11e5156f93f50e7352447c33312b24`  
		Last Modified: Fri, 05 May 2017 20:14:05 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439cf76f0b469afb82f6b4d3e4fdc97c74a3c1c11b401f4266241cbd157b3137`  
		Last Modified: Fri, 05 May 2017 20:14:05 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.4-alpine`

```console
$ docker pull elasticsearch@sha256:7df3449f0a2ae59904302ea1b0367aa14dd3dccedc20b2e45d10e92928628a11
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:5.4-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.5 MB (90543360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32cc94f9b576b3515e4fcb4d5028c9479f994500c1c1356519ae35d4013f517d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 07 Mar 2017 01:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 17:46:13 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Tue, 07 Mar 2017 17:46:16 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Tue, 07 Mar 2017 17:46:32 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 25 Apr 2017 02:36:04 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 25 Apr 2017 02:36:05 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 05 May 2017 20:11:57 GMT
ENV ELASTICSEARCH_VERSION=5.4.0
# Fri, 05 May 2017 20:11:57 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.4.0.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.4.0.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=880b115be755a923f25aea810e3386ccb723cc55
# Fri, 05 May 2017 20:12:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -r "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Fri, 05 May 2017 20:12:11 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Fri, 05 May 2017 20:12:11 GMT
VOLUME [/usr/share/elasticsearch/data]
# Fri, 05 May 2017 20:12:12 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Fri, 05 May 2017 20:12:13 GMT
EXPOSE 9200/tcp 9300/tcp
# Fri, 05 May 2017 20:12:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 05 May 2017 20:12:14 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e619d348278f1e8660192734bff496a6c3e05aab6bef025e843e7413a7c9e3`  
		Last Modified: Tue, 07 Mar 2017 01:15:49 GMT  
		Size: 53.8 MB (53811092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc52efe90d3e45b685f2f90da7c649be6fdf27398cc80683e15ba3429d43ccb`  
		Last Modified: Tue, 07 Mar 2017 18:01:20 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8e5d874dc8370932df2932dc75e9205ff40b46c0552cb687518b3358aa9342`  
		Last Modified: Tue, 07 Mar 2017 18:01:18 GMT  
		Size: 1.1 MB (1095257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46199d6df4617c989cbb1d100a928ebe7a69fbbebc8cd420b7a2fd99606e655`  
		Last Modified: Tue, 25 Apr 2017 02:41:16 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba67247bf194c28807a969872de8cc37bda955120b10654d47b220264da9ea4`  
		Last Modified: Fri, 05 May 2017 20:14:09 GMT  
		Size: 33.7 MB (33729128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0b6cf5bd550a11f436265b7fc4fc37da11e5156f93f50e7352447c33312b24`  
		Last Modified: Fri, 05 May 2017 20:14:05 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439cf76f0b469afb82f6b4d3e4fdc97c74a3c1c11b401f4266241cbd157b3137`  
		Last Modified: Fri, 05 May 2017 20:14:05 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5-alpine`

```console
$ docker pull elasticsearch@sha256:7df3449f0a2ae59904302ea1b0367aa14dd3dccedc20b2e45d10e92928628a11
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:5-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.5 MB (90543360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32cc94f9b576b3515e4fcb4d5028c9479f994500c1c1356519ae35d4013f517d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 07 Mar 2017 01:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 17:46:13 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Tue, 07 Mar 2017 17:46:16 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Tue, 07 Mar 2017 17:46:32 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 25 Apr 2017 02:36:04 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 25 Apr 2017 02:36:05 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 05 May 2017 20:11:57 GMT
ENV ELASTICSEARCH_VERSION=5.4.0
# Fri, 05 May 2017 20:11:57 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.4.0.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.4.0.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=880b115be755a923f25aea810e3386ccb723cc55
# Fri, 05 May 2017 20:12:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -r "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Fri, 05 May 2017 20:12:11 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Fri, 05 May 2017 20:12:11 GMT
VOLUME [/usr/share/elasticsearch/data]
# Fri, 05 May 2017 20:12:12 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Fri, 05 May 2017 20:12:13 GMT
EXPOSE 9200/tcp 9300/tcp
# Fri, 05 May 2017 20:12:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 05 May 2017 20:12:14 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e619d348278f1e8660192734bff496a6c3e05aab6bef025e843e7413a7c9e3`  
		Last Modified: Tue, 07 Mar 2017 01:15:49 GMT  
		Size: 53.8 MB (53811092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc52efe90d3e45b685f2f90da7c649be6fdf27398cc80683e15ba3429d43ccb`  
		Last Modified: Tue, 07 Mar 2017 18:01:20 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8e5d874dc8370932df2932dc75e9205ff40b46c0552cb687518b3358aa9342`  
		Last Modified: Tue, 07 Mar 2017 18:01:18 GMT  
		Size: 1.1 MB (1095257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46199d6df4617c989cbb1d100a928ebe7a69fbbebc8cd420b7a2fd99606e655`  
		Last Modified: Tue, 25 Apr 2017 02:41:16 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba67247bf194c28807a969872de8cc37bda955120b10654d47b220264da9ea4`  
		Last Modified: Fri, 05 May 2017 20:14:09 GMT  
		Size: 33.7 MB (33729128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0b6cf5bd550a11f436265b7fc4fc37da11e5156f93f50e7352447c33312b24`  
		Last Modified: Fri, 05 May 2017 20:14:05 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439cf76f0b469afb82f6b4d3e4fdc97c74a3c1c11b401f4266241cbd157b3137`  
		Last Modified: Fri, 05 May 2017 20:14:05 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:alpine`

```console
$ docker pull elasticsearch@sha256:7df3449f0a2ae59904302ea1b0367aa14dd3dccedc20b2e45d10e92928628a11
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.5 MB (90543360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32cc94f9b576b3515e4fcb4d5028c9479f994500c1c1356519ae35d4013f517d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 07 Mar 2017 01:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 17:46:13 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Tue, 07 Mar 2017 17:46:16 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Tue, 07 Mar 2017 17:46:32 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 25 Apr 2017 02:36:04 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 25 Apr 2017 02:36:05 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 05 May 2017 20:11:57 GMT
ENV ELASTICSEARCH_VERSION=5.4.0
# Fri, 05 May 2017 20:11:57 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.4.0.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.4.0.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=880b115be755a923f25aea810e3386ccb723cc55
# Fri, 05 May 2017 20:12:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -r "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Fri, 05 May 2017 20:12:11 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Fri, 05 May 2017 20:12:11 GMT
VOLUME [/usr/share/elasticsearch/data]
# Fri, 05 May 2017 20:12:12 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Fri, 05 May 2017 20:12:13 GMT
EXPOSE 9200/tcp 9300/tcp
# Fri, 05 May 2017 20:12:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 05 May 2017 20:12:14 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e619d348278f1e8660192734bff496a6c3e05aab6bef025e843e7413a7c9e3`  
		Last Modified: Tue, 07 Mar 2017 01:15:49 GMT  
		Size: 53.8 MB (53811092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc52efe90d3e45b685f2f90da7c649be6fdf27398cc80683e15ba3429d43ccb`  
		Last Modified: Tue, 07 Mar 2017 18:01:20 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8e5d874dc8370932df2932dc75e9205ff40b46c0552cb687518b3358aa9342`  
		Last Modified: Tue, 07 Mar 2017 18:01:18 GMT  
		Size: 1.1 MB (1095257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46199d6df4617c989cbb1d100a928ebe7a69fbbebc8cd420b7a2fd99606e655`  
		Last Modified: Tue, 25 Apr 2017 02:41:16 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba67247bf194c28807a969872de8cc37bda955120b10654d47b220264da9ea4`  
		Last Modified: Fri, 05 May 2017 20:14:09 GMT  
		Size: 33.7 MB (33729128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0b6cf5bd550a11f436265b7fc4fc37da11e5156f93f50e7352447c33312b24`  
		Last Modified: Fri, 05 May 2017 20:14:05 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:439cf76f0b469afb82f6b4d3e4fdc97c74a3c1c11b401f4266241cbd157b3137`  
		Last Modified: Fri, 05 May 2017 20:14:05 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.4.5`

```console
$ docker pull elasticsearch@sha256:c6f72d8dcd2bbb39036622e055b4606ba6ea38e97d20aecb2b73f33f022c5ffe
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.4.5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.5 MB (155472537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f60dd879d40d28cebd0a5ca61c911d4411129580b18f85b48a15cba950a6c8fe`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 26 Apr 2017 23:10:37 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Apr 2017 23:10:39 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 26 Apr 2017 23:59:11 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Apr 2017 23:59:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 26 Apr 2017 23:59:19 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 27 Apr 2017 00:00:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/2.x/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Mon, 01 May 2017 18:14:16 GMT
ENV ELASTICSEARCH_VERSION=2.4.5
# Mon, 01 May 2017 18:14:17 GMT
ENV ELASTICSEARCH_DEB_VERSION=2.4.5
# Mon, 01 May 2017 18:14:27 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 May 2017 18:14:28 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 May 2017 18:14:28 GMT
WORKDIR /usr/share/elasticsearch
# Mon, 01 May 2017 18:14:30 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Mon, 01 May 2017 18:14:31 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Mon, 01 May 2017 18:14:32 GMT
VOLUME [/usr/share/elasticsearch/data]
# Mon, 01 May 2017 18:14:33 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Mon, 01 May 2017 18:14:33 GMT
EXPOSE 9200/tcp 9300/tcp
# Mon, 01 May 2017 18:14:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 01 May 2017 18:14:35 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a404e523e02b811c1633263adce210d7b2bd95d17ebfe0313103e20a29be80`  
		Last Modified: Wed, 26 Apr 2017 23:24:36 GMT  
		Size: 54.1 MB (54059106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806f07b1dce8f18233ee76f7e7d325fc080a9ed694909b64b2051077f58ff030`  
		Last Modified: Wed, 26 Apr 2017 23:24:27 GMT  
		Size: 289.6 KB (289638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97180523aa1a18c62510d095f116e42653b5c0dc657876f60995f216156d3fb8`  
		Last Modified: Thu, 27 Apr 2017 00:02:01 GMT  
		Size: 818.8 KB (818809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1f5d9e6a71efbf93e338bdca40546905ab67954d753a11f89f3b5bad4223c3`  
		Last Modified: Thu, 27 Apr 2017 00:02:01 GMT  
		Size: 1.4 KB (1448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edcadfd7f7d52d89f1c7aa2f22bb1bd371411e7110eb58571c849bbec0bca471`  
		Last Modified: Thu, 27 Apr 2017 00:04:02 GMT  
		Size: 542.9 KB (542944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d05f49f05bddc6501b077eb22e6460dc5cf33c2f905c0165b6af252a6f0f66b`  
		Last Modified: Mon, 01 May 2017 18:18:28 GMT  
		Size: 27.4 MB (27368659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0044eb2a729e2243f6f457d3befe9df548d223642b9bad5a1553bf2f83ad580f`  
		Last Modified: Mon, 01 May 2017 18:18:24 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0ec6cb5301f89bd378a29020cee1b51470e069eb5f7a597aa9ef2610d0f7b8`  
		Last Modified: Mon, 01 May 2017 18:18:24 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e150204b7b536de2834e7893ced4d222fa932355df2bea6b58750bcf642e65`  
		Last Modified: Mon, 01 May 2017 18:18:25 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.4`

```console
$ docker pull elasticsearch@sha256:c6f72d8dcd2bbb39036622e055b4606ba6ea38e97d20aecb2b73f33f022c5ffe
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.5 MB (155472537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f60dd879d40d28cebd0a5ca61c911d4411129580b18f85b48a15cba950a6c8fe`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 26 Apr 2017 23:10:37 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Apr 2017 23:10:39 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 26 Apr 2017 23:59:11 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Apr 2017 23:59:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 26 Apr 2017 23:59:19 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 27 Apr 2017 00:00:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/2.x/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Mon, 01 May 2017 18:14:16 GMT
ENV ELASTICSEARCH_VERSION=2.4.5
# Mon, 01 May 2017 18:14:17 GMT
ENV ELASTICSEARCH_DEB_VERSION=2.4.5
# Mon, 01 May 2017 18:14:27 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 May 2017 18:14:28 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 May 2017 18:14:28 GMT
WORKDIR /usr/share/elasticsearch
# Mon, 01 May 2017 18:14:30 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Mon, 01 May 2017 18:14:31 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Mon, 01 May 2017 18:14:32 GMT
VOLUME [/usr/share/elasticsearch/data]
# Mon, 01 May 2017 18:14:33 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Mon, 01 May 2017 18:14:33 GMT
EXPOSE 9200/tcp 9300/tcp
# Mon, 01 May 2017 18:14:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 01 May 2017 18:14:35 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a404e523e02b811c1633263adce210d7b2bd95d17ebfe0313103e20a29be80`  
		Last Modified: Wed, 26 Apr 2017 23:24:36 GMT  
		Size: 54.1 MB (54059106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806f07b1dce8f18233ee76f7e7d325fc080a9ed694909b64b2051077f58ff030`  
		Last Modified: Wed, 26 Apr 2017 23:24:27 GMT  
		Size: 289.6 KB (289638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97180523aa1a18c62510d095f116e42653b5c0dc657876f60995f216156d3fb8`  
		Last Modified: Thu, 27 Apr 2017 00:02:01 GMT  
		Size: 818.8 KB (818809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1f5d9e6a71efbf93e338bdca40546905ab67954d753a11f89f3b5bad4223c3`  
		Last Modified: Thu, 27 Apr 2017 00:02:01 GMT  
		Size: 1.4 KB (1448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edcadfd7f7d52d89f1c7aa2f22bb1bd371411e7110eb58571c849bbec0bca471`  
		Last Modified: Thu, 27 Apr 2017 00:04:02 GMT  
		Size: 542.9 KB (542944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d05f49f05bddc6501b077eb22e6460dc5cf33c2f905c0165b6af252a6f0f66b`  
		Last Modified: Mon, 01 May 2017 18:18:28 GMT  
		Size: 27.4 MB (27368659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0044eb2a729e2243f6f457d3befe9df548d223642b9bad5a1553bf2f83ad580f`  
		Last Modified: Mon, 01 May 2017 18:18:24 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0ec6cb5301f89bd378a29020cee1b51470e069eb5f7a597aa9ef2610d0f7b8`  
		Last Modified: Mon, 01 May 2017 18:18:24 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e150204b7b536de2834e7893ced4d222fa932355df2bea6b58750bcf642e65`  
		Last Modified: Mon, 01 May 2017 18:18:25 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2`

```console
$ docker pull elasticsearch@sha256:c6f72d8dcd2bbb39036622e055b4606ba6ea38e97d20aecb2b73f33f022c5ffe
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.5 MB (155472537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f60dd879d40d28cebd0a5ca61c911d4411129580b18f85b48a15cba950a6c8fe`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 26 Apr 2017 23:10:37 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Apr 2017 23:10:39 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 26 Apr 2017 23:59:11 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Apr 2017 23:59:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 26 Apr 2017 23:59:19 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 27 Apr 2017 00:00:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/2.x/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Mon, 01 May 2017 18:14:16 GMT
ENV ELASTICSEARCH_VERSION=2.4.5
# Mon, 01 May 2017 18:14:17 GMT
ENV ELASTICSEARCH_DEB_VERSION=2.4.5
# Mon, 01 May 2017 18:14:27 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 May 2017 18:14:28 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 May 2017 18:14:28 GMT
WORKDIR /usr/share/elasticsearch
# Mon, 01 May 2017 18:14:30 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Mon, 01 May 2017 18:14:31 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Mon, 01 May 2017 18:14:32 GMT
VOLUME [/usr/share/elasticsearch/data]
# Mon, 01 May 2017 18:14:33 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Mon, 01 May 2017 18:14:33 GMT
EXPOSE 9200/tcp 9300/tcp
# Mon, 01 May 2017 18:14:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 01 May 2017 18:14:35 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a404e523e02b811c1633263adce210d7b2bd95d17ebfe0313103e20a29be80`  
		Last Modified: Wed, 26 Apr 2017 23:24:36 GMT  
		Size: 54.1 MB (54059106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806f07b1dce8f18233ee76f7e7d325fc080a9ed694909b64b2051077f58ff030`  
		Last Modified: Wed, 26 Apr 2017 23:24:27 GMT  
		Size: 289.6 KB (289638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97180523aa1a18c62510d095f116e42653b5c0dc657876f60995f216156d3fb8`  
		Last Modified: Thu, 27 Apr 2017 00:02:01 GMT  
		Size: 818.8 KB (818809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1f5d9e6a71efbf93e338bdca40546905ab67954d753a11f89f3b5bad4223c3`  
		Last Modified: Thu, 27 Apr 2017 00:02:01 GMT  
		Size: 1.4 KB (1448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edcadfd7f7d52d89f1c7aa2f22bb1bd371411e7110eb58571c849bbec0bca471`  
		Last Modified: Thu, 27 Apr 2017 00:04:02 GMT  
		Size: 542.9 KB (542944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d05f49f05bddc6501b077eb22e6460dc5cf33c2f905c0165b6af252a6f0f66b`  
		Last Modified: Mon, 01 May 2017 18:18:28 GMT  
		Size: 27.4 MB (27368659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0044eb2a729e2243f6f457d3befe9df548d223642b9bad5a1553bf2f83ad580f`  
		Last Modified: Mon, 01 May 2017 18:18:24 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0ec6cb5301f89bd378a29020cee1b51470e069eb5f7a597aa9ef2610d0f7b8`  
		Last Modified: Mon, 01 May 2017 18:18:24 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e150204b7b536de2834e7893ced4d222fa932355df2bea6b58750bcf642e65`  
		Last Modified: Mon, 01 May 2017 18:18:25 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.4.5-alpine`

```console
$ docker pull elasticsearch@sha256:f90864e93e5463446feed0657fa1b365cea29851822a9f3cd49b9183a6810fe7
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.4.5-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.6 MB (84577961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b191fd84573ba921e8dc3c462badb0e66a7eb672577431cf7cc3da6a2945465d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 07 Mar 2017 01:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 17:46:13 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Tue, 07 Mar 2017 17:46:16 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Tue, 07 Mar 2017 17:46:32 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 25 Apr 2017 02:36:04 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 25 Apr 2017 02:36:05 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 01 May 2017 18:14:53 GMT
ENV ELASTICSEARCH_VERSION=2.4.5
# Mon, 01 May 2017 18:14:54 GMT
ENV ELASTICSEARCH_TARBALL=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.5.tar.gz ELASTICSEARCH_TARBALL_ASC=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.5.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=180353a1a65995f5e4533ff0a58f18e1e85f28ae
# Mon, 01 May 2017 18:15:03 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -r "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Mon, 01 May 2017 18:15:04 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Mon, 01 May 2017 18:15:04 GMT
VOLUME [/usr/share/elasticsearch/data]
# Mon, 01 May 2017 18:15:05 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Mon, 01 May 2017 18:15:06 GMT
EXPOSE 9200/tcp 9300/tcp
# Mon, 01 May 2017 18:15:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 01 May 2017 18:15:08 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e619d348278f1e8660192734bff496a6c3e05aab6bef025e843e7413a7c9e3`  
		Last Modified: Tue, 07 Mar 2017 01:15:49 GMT  
		Size: 53.8 MB (53811092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc52efe90d3e45b685f2f90da7c649be6fdf27398cc80683e15ba3429d43ccb`  
		Last Modified: Tue, 07 Mar 2017 18:01:20 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8e5d874dc8370932df2932dc75e9205ff40b46c0552cb687518b3358aa9342`  
		Last Modified: Tue, 07 Mar 2017 18:01:18 GMT  
		Size: 1.1 MB (1095257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46199d6df4617c989cbb1d100a928ebe7a69fbbebc8cd420b7a2fd99606e655`  
		Last Modified: Tue, 25 Apr 2017 02:41:16 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5bb777cb5573b284056b9b3218af0f5924e187e6e69e25e2d85451a966cf8f`  
		Last Modified: Mon, 01 May 2017 18:19:34 GMT  
		Size: 27.8 MB (27763671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c6ca0c52c270d0c5c76b70cafe951dd51b8df13785c0b73f67e614fab93afc`  
		Last Modified: Mon, 01 May 2017 18:19:32 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc77d8ec0ea5ddaf6b2b5fddc803ea658e3cd1c10842241594cfa3968e811bf`  
		Last Modified: Mon, 01 May 2017 18:19:31 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.4-alpine`

```console
$ docker pull elasticsearch@sha256:f90864e93e5463446feed0657fa1b365cea29851822a9f3cd49b9183a6810fe7
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.4-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.6 MB (84577961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b191fd84573ba921e8dc3c462badb0e66a7eb672577431cf7cc3da6a2945465d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 07 Mar 2017 01:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 17:46:13 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Tue, 07 Mar 2017 17:46:16 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Tue, 07 Mar 2017 17:46:32 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 25 Apr 2017 02:36:04 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 25 Apr 2017 02:36:05 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 01 May 2017 18:14:53 GMT
ENV ELASTICSEARCH_VERSION=2.4.5
# Mon, 01 May 2017 18:14:54 GMT
ENV ELASTICSEARCH_TARBALL=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.5.tar.gz ELASTICSEARCH_TARBALL_ASC=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.5.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=180353a1a65995f5e4533ff0a58f18e1e85f28ae
# Mon, 01 May 2017 18:15:03 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -r "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Mon, 01 May 2017 18:15:04 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Mon, 01 May 2017 18:15:04 GMT
VOLUME [/usr/share/elasticsearch/data]
# Mon, 01 May 2017 18:15:05 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Mon, 01 May 2017 18:15:06 GMT
EXPOSE 9200/tcp 9300/tcp
# Mon, 01 May 2017 18:15:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 01 May 2017 18:15:08 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e619d348278f1e8660192734bff496a6c3e05aab6bef025e843e7413a7c9e3`  
		Last Modified: Tue, 07 Mar 2017 01:15:49 GMT  
		Size: 53.8 MB (53811092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc52efe90d3e45b685f2f90da7c649be6fdf27398cc80683e15ba3429d43ccb`  
		Last Modified: Tue, 07 Mar 2017 18:01:20 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8e5d874dc8370932df2932dc75e9205ff40b46c0552cb687518b3358aa9342`  
		Last Modified: Tue, 07 Mar 2017 18:01:18 GMT  
		Size: 1.1 MB (1095257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46199d6df4617c989cbb1d100a928ebe7a69fbbebc8cd420b7a2fd99606e655`  
		Last Modified: Tue, 25 Apr 2017 02:41:16 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5bb777cb5573b284056b9b3218af0f5924e187e6e69e25e2d85451a966cf8f`  
		Last Modified: Mon, 01 May 2017 18:19:34 GMT  
		Size: 27.8 MB (27763671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c6ca0c52c270d0c5c76b70cafe951dd51b8df13785c0b73f67e614fab93afc`  
		Last Modified: Mon, 01 May 2017 18:19:32 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc77d8ec0ea5ddaf6b2b5fddc803ea658e3cd1c10842241594cfa3968e811bf`  
		Last Modified: Mon, 01 May 2017 18:19:31 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2-alpine`

```console
$ docker pull elasticsearch@sha256:f90864e93e5463446feed0657fa1b365cea29851822a9f3cd49b9183a6810fe7
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.6 MB (84577961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b191fd84573ba921e8dc3c462badb0e66a7eb672577431cf7cc3da6a2945465d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 07 Mar 2017 01:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 17:46:13 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Tue, 07 Mar 2017 17:46:16 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Tue, 07 Mar 2017 17:46:32 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 25 Apr 2017 02:36:04 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 25 Apr 2017 02:36:05 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 01 May 2017 18:14:53 GMT
ENV ELASTICSEARCH_VERSION=2.4.5
# Mon, 01 May 2017 18:14:54 GMT
ENV ELASTICSEARCH_TARBALL=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.5.tar.gz ELASTICSEARCH_TARBALL_ASC=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.5.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=180353a1a65995f5e4533ff0a58f18e1e85f28ae
# Mon, 01 May 2017 18:15:03 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -r "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Mon, 01 May 2017 18:15:04 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Mon, 01 May 2017 18:15:04 GMT
VOLUME [/usr/share/elasticsearch/data]
# Mon, 01 May 2017 18:15:05 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Mon, 01 May 2017 18:15:06 GMT
EXPOSE 9200/tcp 9300/tcp
# Mon, 01 May 2017 18:15:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 01 May 2017 18:15:08 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e619d348278f1e8660192734bff496a6c3e05aab6bef025e843e7413a7c9e3`  
		Last Modified: Tue, 07 Mar 2017 01:15:49 GMT  
		Size: 53.8 MB (53811092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc52efe90d3e45b685f2f90da7c649be6fdf27398cc80683e15ba3429d43ccb`  
		Last Modified: Tue, 07 Mar 2017 18:01:20 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8e5d874dc8370932df2932dc75e9205ff40b46c0552cb687518b3358aa9342`  
		Last Modified: Tue, 07 Mar 2017 18:01:18 GMT  
		Size: 1.1 MB (1095257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46199d6df4617c989cbb1d100a928ebe7a69fbbebc8cd420b7a2fd99606e655`  
		Last Modified: Tue, 25 Apr 2017 02:41:16 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5bb777cb5573b284056b9b3218af0f5924e187e6e69e25e2d85451a966cf8f`  
		Last Modified: Mon, 01 May 2017 18:19:34 GMT  
		Size: 27.8 MB (27763671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c6ca0c52c270d0c5c76b70cafe951dd51b8df13785c0b73f67e614fab93afc`  
		Last Modified: Mon, 01 May 2017 18:19:32 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc77d8ec0ea5ddaf6b2b5fddc803ea658e3cd1c10842241594cfa3968e811bf`  
		Last Modified: Mon, 01 May 2017 18:19:31 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:1.7.6`

```console
$ docker pull elasticsearch@sha256:7333ea7e85858a96a511e0cee0d70898aa82c9d3f2937f694a6db4747b1292ea
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:1.7.6` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.6 MB (155558107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:906c59664435b3e41204a79d9316ff2de88b3b3a026edd0c69e10a98653685fb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 26 Apr 2017 23:10:37 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Apr 2017 23:10:39 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 26 Apr 2017 23:59:11 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Apr 2017 23:59:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 26 Apr 2017 23:59:19 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 26 Apr 2017 23:59:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/1.7/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 26 Apr 2017 23:59:30 GMT
ENV ELASTICSEARCH_VERSION=1.7.6
# Wed, 26 Apr 2017 23:59:30 GMT
ENV ELASTICSEARCH_DEB_VERSION=1.7.6
# Wed, 26 Apr 2017 23:59:40 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Apr 2017 23:59:41 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 23:59:42 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 26 Apr 2017 23:59:43 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 26 Apr 2017 23:59:44 GMT
COPY dir:31f8476cce13d884e30d94ee9384cd924f19b02a6833943b9d501f833cd60885 in ./config 
# Wed, 26 Apr 2017 23:59:45 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 26 Apr 2017 23:59:46 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Wed, 26 Apr 2017 23:59:47 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 26 Apr 2017 23:59:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Apr 2017 23:59:48 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a404e523e02b811c1633263adce210d7b2bd95d17ebfe0313103e20a29be80`  
		Last Modified: Wed, 26 Apr 2017 23:24:36 GMT  
		Size: 54.1 MB (54059106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806f07b1dce8f18233ee76f7e7d325fc080a9ed694909b64b2051077f58ff030`  
		Last Modified: Wed, 26 Apr 2017 23:24:27 GMT  
		Size: 289.6 KB (289638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97180523aa1a18c62510d095f116e42653b5c0dc657876f60995f216156d3fb8`  
		Last Modified: Thu, 27 Apr 2017 00:02:01 GMT  
		Size: 818.8 KB (818809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1f5d9e6a71efbf93e338bdca40546905ab67954d753a11f89f3b5bad4223c3`  
		Last Modified: Thu, 27 Apr 2017 00:02:01 GMT  
		Size: 1.4 KB (1448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7481657c79809c012d3edaa24f656387c4b8564d92a1ff0c726b41e03924dd6`  
		Last Modified: Thu, 27 Apr 2017 00:01:59 GMT  
		Size: 542.9 KB (542931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3f9f2d5d6004e7e9a4600a654fe59613fbbf1a95b02602030c95ab357a42a89`  
		Last Modified: Thu, 27 Apr 2017 00:02:01 GMT  
		Size: 27.5 MB (27454285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab5c100306fb0bf68c9b294695a28e20dd152caf2fef655a177316a468952b1`  
		Last Modified: Thu, 27 Apr 2017 00:01:58 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e81ca93c2c49bc9922b1bd986c15cfa30136d102c17dfb254112d5b88ab5ba8`  
		Last Modified: Thu, 27 Apr 2017 00:01:58 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ffae04d1f5064567823d8e9d5b3465a052cf449a9be79ea8a482cff71cfbbd`  
		Last Modified: Thu, 27 Apr 2017 00:01:58 GMT  
		Size: 505.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:1.7`

```console
$ docker pull elasticsearch@sha256:7333ea7e85858a96a511e0cee0d70898aa82c9d3f2937f694a6db4747b1292ea
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:1.7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.6 MB (155558107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:906c59664435b3e41204a79d9316ff2de88b3b3a026edd0c69e10a98653685fb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 26 Apr 2017 23:10:37 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Apr 2017 23:10:39 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 26 Apr 2017 23:59:11 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Apr 2017 23:59:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 26 Apr 2017 23:59:19 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 26 Apr 2017 23:59:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/1.7/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 26 Apr 2017 23:59:30 GMT
ENV ELASTICSEARCH_VERSION=1.7.6
# Wed, 26 Apr 2017 23:59:30 GMT
ENV ELASTICSEARCH_DEB_VERSION=1.7.6
# Wed, 26 Apr 2017 23:59:40 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Apr 2017 23:59:41 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 23:59:42 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 26 Apr 2017 23:59:43 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 26 Apr 2017 23:59:44 GMT
COPY dir:31f8476cce13d884e30d94ee9384cd924f19b02a6833943b9d501f833cd60885 in ./config 
# Wed, 26 Apr 2017 23:59:45 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 26 Apr 2017 23:59:46 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Wed, 26 Apr 2017 23:59:47 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 26 Apr 2017 23:59:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Apr 2017 23:59:48 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a404e523e02b811c1633263adce210d7b2bd95d17ebfe0313103e20a29be80`  
		Last Modified: Wed, 26 Apr 2017 23:24:36 GMT  
		Size: 54.1 MB (54059106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806f07b1dce8f18233ee76f7e7d325fc080a9ed694909b64b2051077f58ff030`  
		Last Modified: Wed, 26 Apr 2017 23:24:27 GMT  
		Size: 289.6 KB (289638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97180523aa1a18c62510d095f116e42653b5c0dc657876f60995f216156d3fb8`  
		Last Modified: Thu, 27 Apr 2017 00:02:01 GMT  
		Size: 818.8 KB (818809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1f5d9e6a71efbf93e338bdca40546905ab67954d753a11f89f3b5bad4223c3`  
		Last Modified: Thu, 27 Apr 2017 00:02:01 GMT  
		Size: 1.4 KB (1448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7481657c79809c012d3edaa24f656387c4b8564d92a1ff0c726b41e03924dd6`  
		Last Modified: Thu, 27 Apr 2017 00:01:59 GMT  
		Size: 542.9 KB (542931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3f9f2d5d6004e7e9a4600a654fe59613fbbf1a95b02602030c95ab357a42a89`  
		Last Modified: Thu, 27 Apr 2017 00:02:01 GMT  
		Size: 27.5 MB (27454285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab5c100306fb0bf68c9b294695a28e20dd152caf2fef655a177316a468952b1`  
		Last Modified: Thu, 27 Apr 2017 00:01:58 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e81ca93c2c49bc9922b1bd986c15cfa30136d102c17dfb254112d5b88ab5ba8`  
		Last Modified: Thu, 27 Apr 2017 00:01:58 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ffae04d1f5064567823d8e9d5b3465a052cf449a9be79ea8a482cff71cfbbd`  
		Last Modified: Thu, 27 Apr 2017 00:01:58 GMT  
		Size: 505.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:1`

```console
$ docker pull elasticsearch@sha256:7333ea7e85858a96a511e0cee0d70898aa82c9d3f2937f694a6db4747b1292ea
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.6 MB (155558107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:906c59664435b3e41204a79d9316ff2de88b3b3a026edd0c69e10a98653685fb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 25 Apr 2017 00:42:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:42:42 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:42:43 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Wed, 26 Apr 2017 23:10:37 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Apr 2017 23:10:39 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 26 Apr 2017 23:59:11 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Apr 2017 23:59:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 26 Apr 2017 23:59:19 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 26 Apr 2017 23:59:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/1.7/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 26 Apr 2017 23:59:30 GMT
ENV ELASTICSEARCH_VERSION=1.7.6
# Wed, 26 Apr 2017 23:59:30 GMT
ENV ELASTICSEARCH_DEB_VERSION=1.7.6
# Wed, 26 Apr 2017 23:59:40 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Apr 2017 23:59:41 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 23:59:42 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 26 Apr 2017 23:59:43 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 26 Apr 2017 23:59:44 GMT
COPY dir:31f8476cce13d884e30d94ee9384cd924f19b02a6833943b9d501f833cd60885 in ./config 
# Wed, 26 Apr 2017 23:59:45 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 26 Apr 2017 23:59:46 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Wed, 26 Apr 2017 23:59:47 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 26 Apr 2017 23:59:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Apr 2017 23:59:48 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a404e523e02b811c1633263adce210d7b2bd95d17ebfe0313103e20a29be80`  
		Last Modified: Wed, 26 Apr 2017 23:24:36 GMT  
		Size: 54.1 MB (54059106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806f07b1dce8f18233ee76f7e7d325fc080a9ed694909b64b2051077f58ff030`  
		Last Modified: Wed, 26 Apr 2017 23:24:27 GMT  
		Size: 289.6 KB (289638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97180523aa1a18c62510d095f116e42653b5c0dc657876f60995f216156d3fb8`  
		Last Modified: Thu, 27 Apr 2017 00:02:01 GMT  
		Size: 818.8 KB (818809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1f5d9e6a71efbf93e338bdca40546905ab67954d753a11f89f3b5bad4223c3`  
		Last Modified: Thu, 27 Apr 2017 00:02:01 GMT  
		Size: 1.4 KB (1448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7481657c79809c012d3edaa24f656387c4b8564d92a1ff0c726b41e03924dd6`  
		Last Modified: Thu, 27 Apr 2017 00:01:59 GMT  
		Size: 542.9 KB (542931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3f9f2d5d6004e7e9a4600a654fe59613fbbf1a95b02602030c95ab357a42a89`  
		Last Modified: Thu, 27 Apr 2017 00:02:01 GMT  
		Size: 27.5 MB (27454285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab5c100306fb0bf68c9b294695a28e20dd152caf2fef655a177316a468952b1`  
		Last Modified: Thu, 27 Apr 2017 00:01:58 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e81ca93c2c49bc9922b1bd986c15cfa30136d102c17dfb254112d5b88ab5ba8`  
		Last Modified: Thu, 27 Apr 2017 00:01:58 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ffae04d1f5064567823d8e9d5b3465a052cf449a9be79ea8a482cff71cfbbd`  
		Last Modified: Thu, 27 Apr 2017 00:01:58 GMT  
		Size: 505.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:1.7.6-alpine`

```console
$ docker pull elasticsearch@sha256:29586abeb0492d069fd6506dff5f1114932462c8bc9a4bb40c6dc367b7f3f07c
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:1.7.6-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.7 MB (85687488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59103e15fe949d9735eb4ff885abb6fb5ff50bc587acb4075ac10c0d9bbb0467`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 07 Mar 2017 01:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 17:46:13 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Tue, 07 Mar 2017 17:46:16 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Tue, 07 Mar 2017 17:46:32 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 07 Mar 2017 17:46:32 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 07 Mar 2017 17:46:33 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 17:46:33 GMT
ENV ELASTICSEARCH_VERSION=1.7.6
# Tue, 07 Mar 2017 17:46:34 GMT
ENV ELASTICSEARCH_TARBALL=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.7.6.tar.gz ELASTICSEARCH_TARBALL_ASC= ELASTICSEARCH_TARBALL_SHA1=0b6ec9fe34b29e6adc4d8481630bf1f69cb04aa9
# Tue, 04 Apr 2017 23:28:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -r "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Tue, 04 Apr 2017 23:28:34 GMT
COPY dir:31f8476cce13d884e30d94ee9384cd924f19b02a6833943b9d501f833cd60885 in ./config 
# Tue, 04 Apr 2017 23:28:34 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 04 Apr 2017 23:28:35 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Tue, 04 Apr 2017 23:28:35 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 04 Apr 2017 23:28:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Apr 2017 23:28:36 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e619d348278f1e8660192734bff496a6c3e05aab6bef025e843e7413a7c9e3`  
		Last Modified: Tue, 07 Mar 2017 01:15:49 GMT  
		Size: 53.8 MB (53811092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc52efe90d3e45b685f2f90da7c649be6fdf27398cc80683e15ba3429d43ccb`  
		Last Modified: Tue, 07 Mar 2017 18:01:20 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8e5d874dc8370932df2932dc75e9205ff40b46c0552cb687518b3358aa9342`  
		Last Modified: Tue, 07 Mar 2017 18:01:18 GMT  
		Size: 1.1 MB (1095257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fad975b2fa0db6655766653becb8473f65005f574bea44f65fda8c151632d8`  
		Last Modified: Tue, 07 Mar 2017 18:01:17 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e09013eb8de46379202577a5a047b91186720f8dc1cfe70f89a9ce995cd5e979`  
		Last Modified: Tue, 04 Apr 2017 23:35:05 GMT  
		Size: 28.9 MB (28873236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae209472dc4580952e3dc2fac686c1c13916859f294de14683401fc537937ec3`  
		Last Modified: Tue, 04 Apr 2017 23:35:01 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b75f8f37b538fcd87aa34ca2900cdac2ba8e2a0a2eb8d7e847922f23b67271d`  
		Last Modified: Tue, 04 Apr 2017 23:35:03 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:1.7-alpine`

```console
$ docker pull elasticsearch@sha256:29586abeb0492d069fd6506dff5f1114932462c8bc9a4bb40c6dc367b7f3f07c
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:1.7-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.7 MB (85687488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59103e15fe949d9735eb4ff885abb6fb5ff50bc587acb4075ac10c0d9bbb0467`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 07 Mar 2017 01:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 17:46:13 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Tue, 07 Mar 2017 17:46:16 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Tue, 07 Mar 2017 17:46:32 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 07 Mar 2017 17:46:32 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 07 Mar 2017 17:46:33 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 17:46:33 GMT
ENV ELASTICSEARCH_VERSION=1.7.6
# Tue, 07 Mar 2017 17:46:34 GMT
ENV ELASTICSEARCH_TARBALL=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.7.6.tar.gz ELASTICSEARCH_TARBALL_ASC= ELASTICSEARCH_TARBALL_SHA1=0b6ec9fe34b29e6adc4d8481630bf1f69cb04aa9
# Tue, 04 Apr 2017 23:28:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -r "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Tue, 04 Apr 2017 23:28:34 GMT
COPY dir:31f8476cce13d884e30d94ee9384cd924f19b02a6833943b9d501f833cd60885 in ./config 
# Tue, 04 Apr 2017 23:28:34 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 04 Apr 2017 23:28:35 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Tue, 04 Apr 2017 23:28:35 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 04 Apr 2017 23:28:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Apr 2017 23:28:36 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e619d348278f1e8660192734bff496a6c3e05aab6bef025e843e7413a7c9e3`  
		Last Modified: Tue, 07 Mar 2017 01:15:49 GMT  
		Size: 53.8 MB (53811092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc52efe90d3e45b685f2f90da7c649be6fdf27398cc80683e15ba3429d43ccb`  
		Last Modified: Tue, 07 Mar 2017 18:01:20 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8e5d874dc8370932df2932dc75e9205ff40b46c0552cb687518b3358aa9342`  
		Last Modified: Tue, 07 Mar 2017 18:01:18 GMT  
		Size: 1.1 MB (1095257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fad975b2fa0db6655766653becb8473f65005f574bea44f65fda8c151632d8`  
		Last Modified: Tue, 07 Mar 2017 18:01:17 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e09013eb8de46379202577a5a047b91186720f8dc1cfe70f89a9ce995cd5e979`  
		Last Modified: Tue, 04 Apr 2017 23:35:05 GMT  
		Size: 28.9 MB (28873236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae209472dc4580952e3dc2fac686c1c13916859f294de14683401fc537937ec3`  
		Last Modified: Tue, 04 Apr 2017 23:35:01 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b75f8f37b538fcd87aa34ca2900cdac2ba8e2a0a2eb8d7e847922f23b67271d`  
		Last Modified: Tue, 04 Apr 2017 23:35:03 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:1-alpine`

```console
$ docker pull elasticsearch@sha256:29586abeb0492d069fd6506dff5f1114932462c8bc9a4bb40c6dc367b7f3f07c
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:1-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.7 MB (85687488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59103e15fe949d9735eb4ff885abb6fb5ff50bc587acb4075ac10c0d9bbb0467`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 07 Mar 2017 01:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 17:46:13 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Tue, 07 Mar 2017 17:46:16 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Tue, 07 Mar 2017 17:46:32 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 07 Mar 2017 17:46:32 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 07 Mar 2017 17:46:33 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 17:46:33 GMT
ENV ELASTICSEARCH_VERSION=1.7.6
# Tue, 07 Mar 2017 17:46:34 GMT
ENV ELASTICSEARCH_TARBALL=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.7.6.tar.gz ELASTICSEARCH_TARBALL_ASC= ELASTICSEARCH_TARBALL_SHA1=0b6ec9fe34b29e6adc4d8481630bf1f69cb04aa9
# Tue, 04 Apr 2017 23:28:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -r "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Tue, 04 Apr 2017 23:28:34 GMT
COPY dir:31f8476cce13d884e30d94ee9384cd924f19b02a6833943b9d501f833cd60885 in ./config 
# Tue, 04 Apr 2017 23:28:34 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 04 Apr 2017 23:28:35 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Tue, 04 Apr 2017 23:28:35 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 04 Apr 2017 23:28:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Apr 2017 23:28:36 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e619d348278f1e8660192734bff496a6c3e05aab6bef025e843e7413a7c9e3`  
		Last Modified: Tue, 07 Mar 2017 01:15:49 GMT  
		Size: 53.8 MB (53811092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc52efe90d3e45b685f2f90da7c649be6fdf27398cc80683e15ba3429d43ccb`  
		Last Modified: Tue, 07 Mar 2017 18:01:20 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8e5d874dc8370932df2932dc75e9205ff40b46c0552cb687518b3358aa9342`  
		Last Modified: Tue, 07 Mar 2017 18:01:18 GMT  
		Size: 1.1 MB (1095257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fad975b2fa0db6655766653becb8473f65005f574bea44f65fda8c151632d8`  
		Last Modified: Tue, 07 Mar 2017 18:01:17 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e09013eb8de46379202577a5a047b91186720f8dc1cfe70f89a9ce995cd5e979`  
		Last Modified: Tue, 04 Apr 2017 23:35:05 GMT  
		Size: 28.9 MB (28873236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae209472dc4580952e3dc2fac686c1c13916859f294de14683401fc537937ec3`  
		Last Modified: Tue, 04 Apr 2017 23:35:01 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b75f8f37b538fcd87aa34ca2900cdac2ba8e2a0a2eb8d7e847922f23b67271d`  
		Last Modified: Tue, 04 Apr 2017 23:35:03 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
