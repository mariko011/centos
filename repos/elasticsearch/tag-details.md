<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `elasticsearch`

-	[`elasticsearch:2`](#elasticsearch2)
-	[`elasticsearch:2.4`](#elasticsearch24)
-	[`elasticsearch:2.4.6`](#elasticsearch246)
-	[`elasticsearch:2.4.6-alpine`](#elasticsearch246-alpine)
-	[`elasticsearch:2.4-alpine`](#elasticsearch24-alpine)
-	[`elasticsearch:2-alpine`](#elasticsearch2-alpine)
-	[`elasticsearch:5`](#elasticsearch5)
-	[`elasticsearch:5.6`](#elasticsearch56)
-	[`elasticsearch:5.6.3`](#elasticsearch563)
-	[`elasticsearch:5.6.3-alpine`](#elasticsearch563-alpine)
-	[`elasticsearch:5.6-alpine`](#elasticsearch56-alpine)
-	[`elasticsearch:5-alpine`](#elasticsearch5-alpine)
-	[`elasticsearch:alpine`](#elasticsearchalpine)
-	[`elasticsearch:latest`](#elasticsearchlatest)

## `elasticsearch:2`

```console
$ docker pull elasticsearch@sha256:1527abc05d68241f7afb8a7d5a1e1163c517dfc815c7704db1c9dae22182a483
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.3 MB (256348864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6208a3b31b7e949eb816bdaaad8a7ee52b95b1976f9a6c034dfd1af57f9c6c33`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 03:04:27 GMT
ENV GOSU_VERSION=1.10
# Mon, 11 Sep 2017 03:04:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 11 Sep 2017 03:04:38 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 11 Sep 2017 03:04:52 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/2.x/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Mon, 11 Sep 2017 03:04:52 GMT
ENV ELASTICSEARCH_VERSION=2.4.6
# Mon, 11 Sep 2017 03:04:58 GMT
ENV ELASTICSEARCH_DEB_VERSION=2.4.6
# Mon, 11 Sep 2017 03:05:03 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 03:05:07 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 03:05:07 GMT
WORKDIR /usr/share/elasticsearch
# Mon, 11 Sep 2017 03:05:08 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Mon, 11 Sep 2017 03:05:08 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Mon, 11 Sep 2017 03:05:08 GMT
VOLUME [/usr/share/elasticsearch/data]
# Mon, 11 Sep 2017 03:05:09 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Mon, 11 Sep 2017 03:05:09 GMT
EXPOSE 9200/tcp 9300/tcp
# Mon, 11 Sep 2017 03:05:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 11 Sep 2017 03:05:10 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ed224fb73fc7e3c5955da1f20675c87271f59237cc94043883bb458efa43e1`  
		Last Modified: Mon, 11 Sep 2017 03:05:53 GMT  
		Size: 500.9 KB (500908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f478c95dec237e3990394b847cd3f4c4bce39881387ba9d401aa2fb4ce850aa3`  
		Last Modified: Mon, 11 Sep 2017 03:05:49 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30539fe1a64bbc3048611be89a8879e36f8603dec9ee5095400ff645b08d2e50`  
		Last Modified: Mon, 11 Sep 2017 03:05:50 GMT  
		Size: 691.0 KB (690964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc74f1db9ed299b0caafc3e66f44a79b2f3de3b7942d88f1530be942c1cbe0b`  
		Last Modified: Mon, 11 Sep 2017 03:05:52 GMT  
		Size: 27.4 MB (27438010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a446855698fae79438f8326fe2a72eb0ac0fd8f8736ca5e38574f124e7403bb`  
		Last Modified: Mon, 11 Sep 2017 03:05:49 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b92b2250c7d379f3f35f6591a7b6d8de45d7c23eec0f22b00ce568b96afe4e38`  
		Last Modified: Mon, 11 Sep 2017 03:05:50 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fdc7baa2acba42545923d99c4ae678a1557606aff95363ee2557da3bdad0fe9`  
		Last Modified: Mon, 11 Sep 2017 03:05:50 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.4`

```console
$ docker pull elasticsearch@sha256:1527abc05d68241f7afb8a7d5a1e1163c517dfc815c7704db1c9dae22182a483
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.3 MB (256348864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6208a3b31b7e949eb816bdaaad8a7ee52b95b1976f9a6c034dfd1af57f9c6c33`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 03:04:27 GMT
ENV GOSU_VERSION=1.10
# Mon, 11 Sep 2017 03:04:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 11 Sep 2017 03:04:38 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 11 Sep 2017 03:04:52 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/2.x/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Mon, 11 Sep 2017 03:04:52 GMT
ENV ELASTICSEARCH_VERSION=2.4.6
# Mon, 11 Sep 2017 03:04:58 GMT
ENV ELASTICSEARCH_DEB_VERSION=2.4.6
# Mon, 11 Sep 2017 03:05:03 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 03:05:07 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 03:05:07 GMT
WORKDIR /usr/share/elasticsearch
# Mon, 11 Sep 2017 03:05:08 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Mon, 11 Sep 2017 03:05:08 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Mon, 11 Sep 2017 03:05:08 GMT
VOLUME [/usr/share/elasticsearch/data]
# Mon, 11 Sep 2017 03:05:09 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Mon, 11 Sep 2017 03:05:09 GMT
EXPOSE 9200/tcp 9300/tcp
# Mon, 11 Sep 2017 03:05:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 11 Sep 2017 03:05:10 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ed224fb73fc7e3c5955da1f20675c87271f59237cc94043883bb458efa43e1`  
		Last Modified: Mon, 11 Sep 2017 03:05:53 GMT  
		Size: 500.9 KB (500908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f478c95dec237e3990394b847cd3f4c4bce39881387ba9d401aa2fb4ce850aa3`  
		Last Modified: Mon, 11 Sep 2017 03:05:49 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30539fe1a64bbc3048611be89a8879e36f8603dec9ee5095400ff645b08d2e50`  
		Last Modified: Mon, 11 Sep 2017 03:05:50 GMT  
		Size: 691.0 KB (690964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc74f1db9ed299b0caafc3e66f44a79b2f3de3b7942d88f1530be942c1cbe0b`  
		Last Modified: Mon, 11 Sep 2017 03:05:52 GMT  
		Size: 27.4 MB (27438010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a446855698fae79438f8326fe2a72eb0ac0fd8f8736ca5e38574f124e7403bb`  
		Last Modified: Mon, 11 Sep 2017 03:05:49 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b92b2250c7d379f3f35f6591a7b6d8de45d7c23eec0f22b00ce568b96afe4e38`  
		Last Modified: Mon, 11 Sep 2017 03:05:50 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fdc7baa2acba42545923d99c4ae678a1557606aff95363ee2557da3bdad0fe9`  
		Last Modified: Mon, 11 Sep 2017 03:05:50 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.4.6`

```console
$ docker pull elasticsearch@sha256:1527abc05d68241f7afb8a7d5a1e1163c517dfc815c7704db1c9dae22182a483
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.4.6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.3 MB (256348864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6208a3b31b7e949eb816bdaaad8a7ee52b95b1976f9a6c034dfd1af57f9c6c33`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 03:04:27 GMT
ENV GOSU_VERSION=1.10
# Mon, 11 Sep 2017 03:04:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 11 Sep 2017 03:04:38 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 11 Sep 2017 03:04:52 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/2.x/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Mon, 11 Sep 2017 03:04:52 GMT
ENV ELASTICSEARCH_VERSION=2.4.6
# Mon, 11 Sep 2017 03:04:58 GMT
ENV ELASTICSEARCH_DEB_VERSION=2.4.6
# Mon, 11 Sep 2017 03:05:03 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 03:05:07 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 03:05:07 GMT
WORKDIR /usr/share/elasticsearch
# Mon, 11 Sep 2017 03:05:08 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Mon, 11 Sep 2017 03:05:08 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Mon, 11 Sep 2017 03:05:08 GMT
VOLUME [/usr/share/elasticsearch/data]
# Mon, 11 Sep 2017 03:05:09 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Mon, 11 Sep 2017 03:05:09 GMT
EXPOSE 9200/tcp 9300/tcp
# Mon, 11 Sep 2017 03:05:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 11 Sep 2017 03:05:10 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ed224fb73fc7e3c5955da1f20675c87271f59237cc94043883bb458efa43e1`  
		Last Modified: Mon, 11 Sep 2017 03:05:53 GMT  
		Size: 500.9 KB (500908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f478c95dec237e3990394b847cd3f4c4bce39881387ba9d401aa2fb4ce850aa3`  
		Last Modified: Mon, 11 Sep 2017 03:05:49 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30539fe1a64bbc3048611be89a8879e36f8603dec9ee5095400ff645b08d2e50`  
		Last Modified: Mon, 11 Sep 2017 03:05:50 GMT  
		Size: 691.0 KB (690964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc74f1db9ed299b0caafc3e66f44a79b2f3de3b7942d88f1530be942c1cbe0b`  
		Last Modified: Mon, 11 Sep 2017 03:05:52 GMT  
		Size: 27.4 MB (27438010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a446855698fae79438f8326fe2a72eb0ac0fd8f8736ca5e38574f124e7403bb`  
		Last Modified: Mon, 11 Sep 2017 03:05:49 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b92b2250c7d379f3f35f6591a7b6d8de45d7c23eec0f22b00ce568b96afe4e38`  
		Last Modified: Mon, 11 Sep 2017 03:05:50 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fdc7baa2acba42545923d99c4ae678a1557606aff95363ee2557da3bdad0fe9`  
		Last Modified: Mon, 11 Sep 2017 03:05:50 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.4.6-alpine`

```console
$ docker pull elasticsearch@sha256:bc77394a17e28edd0120177c8910010912e263b652110eb32e38f729b3e4616e
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.4.6-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.2 MB (85163660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb51d0b9be13cc92e3c602b8a4fb919df8a8f31499729f1b22f9a871535a41e2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:19:08 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Thu, 29 Jun 2017 02:19:13 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Thu, 29 Jun 2017 02:19:35 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 29 Jun 2017 02:19:36 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 29 Jun 2017 02:19:37 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 26 Jul 2017 07:14:55 GMT
ENV ELASTICSEARCH_VERSION=2.4.6
# Wed, 26 Jul 2017 07:14:55 GMT
ENV ELASTICSEARCH_TARBALL=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.6.tar.gz ELASTICSEARCH_TARBALL_ASC=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.6.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=c3441bef89cd91206edf3cf3bd5c4b62550e60a9
# Wed, 26 Jul 2017 07:15:07 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Wed, 26 Jul 2017 07:15:09 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Wed, 26 Jul 2017 07:15:09 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 26 Jul 2017 07:15:10 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Wed, 26 Jul 2017 07:15:10 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 26 Jul 2017 07:15:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Jul 2017 07:15:10 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3c3aa99e713670d216ed9727b2ca8d2932ee69de1c1fdb024e1907669fea33`  
		Last Modified: Sat, 01 Jul 2017 17:35:50 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c4769f1a29b3512ab9143e4b5af8b9aabdfa26565f28575f76845dfd2521cd8`  
		Last Modified: Sat, 01 Jul 2017 17:35:19 GMT  
		Size: 1.1 MB (1124286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b96cc45d38f9cbdbf74ddf615010caab771eba1c4650562e515b37d2c615569`  
		Last Modified: Sat, 01 Jul 2017 17:35:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c826349f41e3ac317498e6b198a6a43cdf4053f25b3bc4303bee5f1b995e9c47`  
		Last Modified: Wed, 26 Jul 2017 07:16:49 GMT  
		Size: 27.8 MB (27764999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02bf33b0782c4a82a16993e026af5198b244bae77d75273bfada407f79bc8790`  
		Last Modified: Wed, 26 Jul 2017 07:16:48 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7528b71c4cff05918d045f77016b68a1ec8e2444d3c2eefea93a5eaf9b9c515b`  
		Last Modified: Wed, 26 Jul 2017 07:16:48 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.4-alpine`

```console
$ docker pull elasticsearch@sha256:bc77394a17e28edd0120177c8910010912e263b652110eb32e38f729b3e4616e
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2.4-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.2 MB (85163660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb51d0b9be13cc92e3c602b8a4fb919df8a8f31499729f1b22f9a871535a41e2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:19:08 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Thu, 29 Jun 2017 02:19:13 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Thu, 29 Jun 2017 02:19:35 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 29 Jun 2017 02:19:36 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 29 Jun 2017 02:19:37 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 26 Jul 2017 07:14:55 GMT
ENV ELASTICSEARCH_VERSION=2.4.6
# Wed, 26 Jul 2017 07:14:55 GMT
ENV ELASTICSEARCH_TARBALL=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.6.tar.gz ELASTICSEARCH_TARBALL_ASC=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.6.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=c3441bef89cd91206edf3cf3bd5c4b62550e60a9
# Wed, 26 Jul 2017 07:15:07 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Wed, 26 Jul 2017 07:15:09 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Wed, 26 Jul 2017 07:15:09 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 26 Jul 2017 07:15:10 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Wed, 26 Jul 2017 07:15:10 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 26 Jul 2017 07:15:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Jul 2017 07:15:10 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3c3aa99e713670d216ed9727b2ca8d2932ee69de1c1fdb024e1907669fea33`  
		Last Modified: Sat, 01 Jul 2017 17:35:50 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c4769f1a29b3512ab9143e4b5af8b9aabdfa26565f28575f76845dfd2521cd8`  
		Last Modified: Sat, 01 Jul 2017 17:35:19 GMT  
		Size: 1.1 MB (1124286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b96cc45d38f9cbdbf74ddf615010caab771eba1c4650562e515b37d2c615569`  
		Last Modified: Sat, 01 Jul 2017 17:35:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c826349f41e3ac317498e6b198a6a43cdf4053f25b3bc4303bee5f1b995e9c47`  
		Last Modified: Wed, 26 Jul 2017 07:16:49 GMT  
		Size: 27.8 MB (27764999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02bf33b0782c4a82a16993e026af5198b244bae77d75273bfada407f79bc8790`  
		Last Modified: Wed, 26 Jul 2017 07:16:48 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7528b71c4cff05918d045f77016b68a1ec8e2444d3c2eefea93a5eaf9b9c515b`  
		Last Modified: Wed, 26 Jul 2017 07:16:48 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2-alpine`

```console
$ docker pull elasticsearch@sha256:bc77394a17e28edd0120177c8910010912e263b652110eb32e38f729b3e4616e
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:2-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.2 MB (85163660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb51d0b9be13cc92e3c602b8a4fb919df8a8f31499729f1b22f9a871535a41e2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:19:08 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Thu, 29 Jun 2017 02:19:13 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Thu, 29 Jun 2017 02:19:35 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 29 Jun 2017 02:19:36 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 29 Jun 2017 02:19:37 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 26 Jul 2017 07:14:55 GMT
ENV ELASTICSEARCH_VERSION=2.4.6
# Wed, 26 Jul 2017 07:14:55 GMT
ENV ELASTICSEARCH_TARBALL=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.6.tar.gz ELASTICSEARCH_TARBALL_ASC=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.6.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=c3441bef89cd91206edf3cf3bd5c4b62550e60a9
# Wed, 26 Jul 2017 07:15:07 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Wed, 26 Jul 2017 07:15:09 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Wed, 26 Jul 2017 07:15:09 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 26 Jul 2017 07:15:10 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Wed, 26 Jul 2017 07:15:10 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 26 Jul 2017 07:15:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Jul 2017 07:15:10 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3c3aa99e713670d216ed9727b2ca8d2932ee69de1c1fdb024e1907669fea33`  
		Last Modified: Sat, 01 Jul 2017 17:35:50 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c4769f1a29b3512ab9143e4b5af8b9aabdfa26565f28575f76845dfd2521cd8`  
		Last Modified: Sat, 01 Jul 2017 17:35:19 GMT  
		Size: 1.1 MB (1124286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b96cc45d38f9cbdbf74ddf615010caab771eba1c4650562e515b37d2c615569`  
		Last Modified: Sat, 01 Jul 2017 17:35:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c826349f41e3ac317498e6b198a6a43cdf4053f25b3bc4303bee5f1b995e9c47`  
		Last Modified: Wed, 26 Jul 2017 07:16:49 GMT  
		Size: 27.8 MB (27764999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02bf33b0782c4a82a16993e026af5198b244bae77d75273bfada407f79bc8790`  
		Last Modified: Wed, 26 Jul 2017 07:16:48 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7528b71c4cff05918d045f77016b68a1ec8e2444d3c2eefea93a5eaf9b9c515b`  
		Last Modified: Wed, 26 Jul 2017 07:16:48 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5`

```console
$ docker pull elasticsearch@sha256:3686a5757ed46c9dbcf00f6f71fce48ffc5413b193a80d1c46a21e7aad4c53ad
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.5 MB (262501179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1ac13423d3cf7664e2b158049330c713f777473815b0ffe03d4103412505f0c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 03:04:27 GMT
ENV GOSU_VERSION=1.10
# Mon, 11 Sep 2017 03:04:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 11 Sep 2017 03:04:38 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 11 Sep 2017 03:05:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Mon, 11 Sep 2017 03:05:26 GMT
ENV ELASTICSEARCH_VERSION=5.5.2
# Mon, 11 Sep 2017 03:05:26 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.5.2
# Mon, 11 Sep 2017 03:05:33 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 03:05:33 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 03:05:34 GMT
WORKDIR /usr/share/elasticsearch
# Mon, 11 Sep 2017 03:05:35 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Mon, 11 Sep 2017 03:05:35 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Mon, 11 Sep 2017 03:05:36 GMT
VOLUME [/usr/share/elasticsearch/data]
# Mon, 11 Sep 2017 03:05:36 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Mon, 11 Sep 2017 03:05:37 GMT
EXPOSE 9200/tcp 9300/tcp
# Mon, 11 Sep 2017 03:05:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 11 Sep 2017 03:05:38 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ed224fb73fc7e3c5955da1f20675c87271f59237cc94043883bb458efa43e1`  
		Last Modified: Mon, 11 Sep 2017 03:05:53 GMT  
		Size: 500.9 KB (500908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f478c95dec237e3990394b847cd3f4c4bce39881387ba9d401aa2fb4ce850aa3`  
		Last Modified: Mon, 11 Sep 2017 03:05:49 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f9ae4a86d71c0e48b20fc03b1726eebb93878da6e8375fb2ad87de0d341f696`  
		Last Modified: Mon, 11 Sep 2017 03:05:57 GMT  
		Size: 690.9 KB (690931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f822bfcfdea9a546421de4d9a6753bf9bab5affa20d46e905d168fcd07e64936`  
		Last Modified: Mon, 11 Sep 2017 03:05:59 GMT  
		Size: 33.6 MB (33590418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d9d4b54ad02879d62aaaca770820048c2f44918cff6e08bd5331b648e96f75`  
		Last Modified: Mon, 11 Sep 2017 03:05:55 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b728c174e95814fe7787d9026cf35c7090cc571ae6e2f037e09695b82a902a`  
		Last Modified: Mon, 11 Sep 2017 03:05:56 GMT  
		Size: 480.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2de73c3385cad3158ccff169b0a9af7c5b4460d43bb2993de2b55f67813097`  
		Last Modified: Mon, 11 Sep 2017 03:05:55 GMT  
		Size: 506.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.6`

**does not exist** (yet?)

## `elasticsearch:5.6.3`

**does not exist** (yet?)

## `elasticsearch:5.6.3-alpine`

**does not exist** (yet?)

## `elasticsearch:5.6-alpine`

**does not exist** (yet?)

## `elasticsearch:5-alpine`

```console
$ docker pull elasticsearch@sha256:7f134147e285a2cb03595820fa22e10ff561b53f2de3a35b4bb1d83cc8905990
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:5-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.3 MB (91314478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5a0a6044f71be0fa35f2964f926ae17d915a156b7e6ff4263a5fd31e9f164fb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:19:08 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Thu, 29 Jun 2017 02:19:13 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Thu, 29 Jun 2017 02:19:35 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 29 Jun 2017 02:19:36 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 29 Jun 2017 02:19:37 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 21 Aug 2017 18:34:02 GMT
ENV ELASTICSEARCH_VERSION=5.5.2
# Mon, 21 Aug 2017 18:34:03 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.5.2.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.5.2.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=91b3b3c823fafce54609ed5c9075d9cf50b2edff
# Mon, 21 Aug 2017 18:34:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Mon, 21 Aug 2017 18:34:19 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Mon, 21 Aug 2017 18:34:19 GMT
VOLUME [/usr/share/elasticsearch/data]
# Mon, 21 Aug 2017 18:34:20 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Mon, 21 Aug 2017 18:34:20 GMT
EXPOSE 9200/tcp 9300/tcp
# Mon, 21 Aug 2017 18:34:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 21 Aug 2017 18:34:21 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3c3aa99e713670d216ed9727b2ca8d2932ee69de1c1fdb024e1907669fea33`  
		Last Modified: Sat, 01 Jul 2017 17:35:50 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c4769f1a29b3512ab9143e4b5af8b9aabdfa26565f28575f76845dfd2521cd8`  
		Last Modified: Sat, 01 Jul 2017 17:35:19 GMT  
		Size: 1.1 MB (1124286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b96cc45d38f9cbdbf74ddf615010caab771eba1c4650562e515b37d2c615569`  
		Last Modified: Sat, 01 Jul 2017 17:35:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:188ff4a1dbfa8ee35453c322b0b6a3a1685eaff3a81cd34902759d6cf501f838`  
		Last Modified: Mon, 21 Aug 2017 18:39:41 GMT  
		Size: 33.9 MB (33915873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76bcb2aa861bc231aceb6006b88e46d949a56322cdc39aa6b78f11b553547262`  
		Last Modified: Mon, 21 Aug 2017 18:39:36 GMT  
		Size: 480.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac20dfbd38d70fc28b656b9e05be37ea8e53b2087348bd2a3002e42cf609cef`  
		Last Modified: Mon, 21 Aug 2017 18:39:36 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:alpine`

```console
$ docker pull elasticsearch@sha256:7f134147e285a2cb03595820fa22e10ff561b53f2de3a35b4bb1d83cc8905990
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.3 MB (91314478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5a0a6044f71be0fa35f2964f926ae17d915a156b7e6ff4263a5fd31e9f164fb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:19:08 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Thu, 29 Jun 2017 02:19:13 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Thu, 29 Jun 2017 02:19:35 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Thu, 29 Jun 2017 02:19:36 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 29 Jun 2017 02:19:37 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 21 Aug 2017 18:34:02 GMT
ENV ELASTICSEARCH_VERSION=5.5.2
# Mon, 21 Aug 2017 18:34:03 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.5.2.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.5.2.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=91b3b3c823fafce54609ed5c9075d9cf50b2edff
# Mon, 21 Aug 2017 18:34:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Mon, 21 Aug 2017 18:34:19 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Mon, 21 Aug 2017 18:34:19 GMT
VOLUME [/usr/share/elasticsearch/data]
# Mon, 21 Aug 2017 18:34:20 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Mon, 21 Aug 2017 18:34:20 GMT
EXPOSE 9200/tcp 9300/tcp
# Mon, 21 Aug 2017 18:34:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 21 Aug 2017 18:34:21 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3c3aa99e713670d216ed9727b2ca8d2932ee69de1c1fdb024e1907669fea33`  
		Last Modified: Sat, 01 Jul 2017 17:35:50 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c4769f1a29b3512ab9143e4b5af8b9aabdfa26565f28575f76845dfd2521cd8`  
		Last Modified: Sat, 01 Jul 2017 17:35:19 GMT  
		Size: 1.1 MB (1124286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b96cc45d38f9cbdbf74ddf615010caab771eba1c4650562e515b37d2c615569`  
		Last Modified: Sat, 01 Jul 2017 17:35:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:188ff4a1dbfa8ee35453c322b0b6a3a1685eaff3a81cd34902759d6cf501f838`  
		Last Modified: Mon, 21 Aug 2017 18:39:41 GMT  
		Size: 33.9 MB (33915873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76bcb2aa861bc231aceb6006b88e46d949a56322cdc39aa6b78f11b553547262`  
		Last Modified: Mon, 21 Aug 2017 18:39:36 GMT  
		Size: 480.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac20dfbd38d70fc28b656b9e05be37ea8e53b2087348bd2a3002e42cf609cef`  
		Last Modified: Mon, 21 Aug 2017 18:39:36 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:latest`

```console
$ docker pull elasticsearch@sha256:3686a5757ed46c9dbcf00f6f71fce48ffc5413b193a80d1c46a21e7aad4c53ad
```

-	Platforms:
	-	linux; amd64

### `elasticsearch:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.5 MB (262501179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1ac13423d3cf7664e2b158049330c713f777473815b0ffe03d4103412505f0c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:30:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 08:57:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:57:12 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:57:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:57:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_VERSION=8u141
# Fri, 08 Sep 2017 08:57:15 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Fri, 08 Sep 2017 08:57:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 09 Sep 2017 00:58:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 09 Sep 2017 00:59:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 11 Sep 2017 03:04:27 GMT
ENV GOSU_VERSION=1.10
# Mon, 11 Sep 2017 03:04:32 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 11 Sep 2017 03:04:38 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Mon, 11 Sep 2017 03:05:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Mon, 11 Sep 2017 03:05:26 GMT
ENV ELASTICSEARCH_VERSION=5.5.2
# Mon, 11 Sep 2017 03:05:26 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.5.2
# Mon, 11 Sep 2017 03:05:33 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 03:05:33 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 03:05:34 GMT
WORKDIR /usr/share/elasticsearch
# Mon, 11 Sep 2017 03:05:35 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Mon, 11 Sep 2017 03:05:35 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Mon, 11 Sep 2017 03:05:36 GMT
VOLUME [/usr/share/elasticsearch/data]
# Mon, 11 Sep 2017 03:05:36 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Mon, 11 Sep 2017 03:05:37 GMT
EXPOSE 9200/tcp 9300/tcp
# Mon, 11 Sep 2017 03:05:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 11 Sep 2017 03:05:38 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a482fbcfe4075b3bf46ba44ce501ab9fa42067dd341003b450dca9569a25857f`  
		Last Modified: Thu, 07 Sep 2017 23:56:24 GMT  
		Size: 11.1 MB (11102630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980edaaff53b44cce16a276125944851f730f29a03d970db878a0c71206460b2`  
		Last Modified: Thu, 07 Sep 2017 23:56:23 GMT  
		Size: 4.4 MB (4411946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288ffe538f2fc557b8808e5025d52113db92b771b763324f0932afb3b2e2284d`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 630.2 KB (630226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017932737cd46cc69a7e0dd235d5d349b2c4d949c416bd3aeefd7784119d2538`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b38dddf546eccba0e0f6936747db188d454ed8e38f360d924f12b94a242e61`  
		Last Modified: Sat, 09 Sep 2017 00:37:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aff82bd83fa8d50ea46ce8eb1abe7112f8c2f50dcf1e2b328fc58e1b2d2e4c`  
		Last Modified: Sat, 09 Sep 2017 01:10:57 GMT  
		Size: 166.2 MB (166173633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08144fb654dc4a7f868c512a556d8a2c7a3889ccc2c8cc1861f96b7dce06784`  
		Last Modified: Sat, 09 Sep 2017 01:10:23 GMT  
		Size: 272.0 KB (271989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ed224fb73fc7e3c5955da1f20675c87271f59237cc94043883bb458efa43e1`  
		Last Modified: Mon, 11 Sep 2017 03:05:53 GMT  
		Size: 500.9 KB (500908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f478c95dec237e3990394b847cd3f4c4bce39881387ba9d401aa2fb4ce850aa3`  
		Last Modified: Mon, 11 Sep 2017 03:05:49 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f9ae4a86d71c0e48b20fc03b1726eebb93878da6e8375fb2ad87de0d341f696`  
		Last Modified: Mon, 11 Sep 2017 03:05:57 GMT  
		Size: 690.9 KB (690931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f822bfcfdea9a546421de4d9a6753bf9bab5affa20d46e905d168fcd07e64936`  
		Last Modified: Mon, 11 Sep 2017 03:05:59 GMT  
		Size: 33.6 MB (33590418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d9d4b54ad02879d62aaaca770820048c2f44918cff6e08bd5331b648e96f75`  
		Last Modified: Mon, 11 Sep 2017 03:05:55 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b728c174e95814fe7787d9026cf35c7090cc571ae6e2f037e09695b82a902a`  
		Last Modified: Mon, 11 Sep 2017 03:05:56 GMT  
		Size: 480.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2de73c3385cad3158ccff169b0a9af7c5b4460d43bb2993de2b55f67813097`  
		Last Modified: Mon, 11 Sep 2017 03:05:55 GMT  
		Size: 506.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
