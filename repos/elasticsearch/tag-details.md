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
$ docker pull elasticsearch@sha256:b6e7542e20edf5b02cb82e82f2306379699de51c55df057fe55ee0aae1e6abe5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:2` - linux; amd64

```console
$ docker pull elasticsearch@sha256:bf8b84454034ff28aa0f45ced5eb4b7fdfab94fb75734ee7f572697c022bea58
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.3 MB (257288269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:629d444542aa0059e047e14991d0df6eaacdf1d5c7b9df6451d17c4a2788ca68`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 25 Oct 2017 15:07:15 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 15:07:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 15:08:36 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 25 Oct 2017 15:08:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/2.x/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 25 Oct 2017 15:08:46 GMT
ENV ELASTICSEARCH_VERSION=2.4.6
# Wed, 25 Oct 2017 15:08:46 GMT
ENV ELASTICSEARCH_DEB_VERSION=2.4.6
# Wed, 25 Oct 2017 15:08:51 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 15:08:52 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Oct 2017 15:08:52 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 25 Oct 2017 15:08:53 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 25 Oct 2017 15:08:53 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Wed, 25 Oct 2017 15:08:53 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 25 Oct 2017 15:08:53 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Wed, 25 Oct 2017 15:08:54 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 25 Oct 2017 15:08:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Oct 2017 15:08:54 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67da81c75392c43da0a6e29b4fc8beb7a673da0489b1f583f1e14f10e32d674`  
		Last Modified: Wed, 25 Oct 2017 15:10:48 GMT  
		Size: 500.9 KB (500905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85a015301f2ff324283a0a76415b7eae76b767fb53a7f2bc15e9333e8a9bd29`  
		Last Modified: Wed, 25 Oct 2017 15:10:49 GMT  
		Size: 1.4 KB (1445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6759dfed4ccaf589eec36c31ca68b0afc283ba59adaf757306553105aae09a4a`  
		Last Modified: Wed, 25 Oct 2017 15:10:50 GMT  
		Size: 936.5 KB (936486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53c4eaba321ac7df434f32e224181c6d7e37201965e7844188530d569cd3772`  
		Last Modified: Wed, 25 Oct 2017 15:10:49 GMT  
		Size: 27.7 MB (27683517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e3e8e9a953125b9d106ccf2afb161dc165fc7b6d178374b064cbe928629c6a`  
		Last Modified: Wed, 25 Oct 2017 15:10:46 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bfa13cc093fe198393b9d06359f23634d78c315027169c863a8afec90713bd7`  
		Last Modified: Wed, 25 Oct 2017 15:10:46 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bb2e1b8a25abdc4815213fc0fcd9d3d0339e8eab313a80deeb443bb88e3e654`  
		Last Modified: Wed, 25 Oct 2017 15:10:45 GMT  
		Size: 505.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.4`

```console
$ docker pull elasticsearch@sha256:b6e7542e20edf5b02cb82e82f2306379699de51c55df057fe55ee0aae1e6abe5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:2.4` - linux; amd64

```console
$ docker pull elasticsearch@sha256:bf8b84454034ff28aa0f45ced5eb4b7fdfab94fb75734ee7f572697c022bea58
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.3 MB (257288269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:629d444542aa0059e047e14991d0df6eaacdf1d5c7b9df6451d17c4a2788ca68`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 25 Oct 2017 15:07:15 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 15:07:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 15:08:36 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 25 Oct 2017 15:08:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/2.x/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 25 Oct 2017 15:08:46 GMT
ENV ELASTICSEARCH_VERSION=2.4.6
# Wed, 25 Oct 2017 15:08:46 GMT
ENV ELASTICSEARCH_DEB_VERSION=2.4.6
# Wed, 25 Oct 2017 15:08:51 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 15:08:52 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Oct 2017 15:08:52 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 25 Oct 2017 15:08:53 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 25 Oct 2017 15:08:53 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Wed, 25 Oct 2017 15:08:53 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 25 Oct 2017 15:08:53 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Wed, 25 Oct 2017 15:08:54 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 25 Oct 2017 15:08:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Oct 2017 15:08:54 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67da81c75392c43da0a6e29b4fc8beb7a673da0489b1f583f1e14f10e32d674`  
		Last Modified: Wed, 25 Oct 2017 15:10:48 GMT  
		Size: 500.9 KB (500905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85a015301f2ff324283a0a76415b7eae76b767fb53a7f2bc15e9333e8a9bd29`  
		Last Modified: Wed, 25 Oct 2017 15:10:49 GMT  
		Size: 1.4 KB (1445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6759dfed4ccaf589eec36c31ca68b0afc283ba59adaf757306553105aae09a4a`  
		Last Modified: Wed, 25 Oct 2017 15:10:50 GMT  
		Size: 936.5 KB (936486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53c4eaba321ac7df434f32e224181c6d7e37201965e7844188530d569cd3772`  
		Last Modified: Wed, 25 Oct 2017 15:10:49 GMT  
		Size: 27.7 MB (27683517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e3e8e9a953125b9d106ccf2afb161dc165fc7b6d178374b064cbe928629c6a`  
		Last Modified: Wed, 25 Oct 2017 15:10:46 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bfa13cc093fe198393b9d06359f23634d78c315027169c863a8afec90713bd7`  
		Last Modified: Wed, 25 Oct 2017 15:10:46 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bb2e1b8a25abdc4815213fc0fcd9d3d0339e8eab313a80deeb443bb88e3e654`  
		Last Modified: Wed, 25 Oct 2017 15:10:45 GMT  
		Size: 505.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.4.6`

```console
$ docker pull elasticsearch@sha256:b6e7542e20edf5b02cb82e82f2306379699de51c55df057fe55ee0aae1e6abe5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:2.4.6` - linux; amd64

```console
$ docker pull elasticsearch@sha256:bf8b84454034ff28aa0f45ced5eb4b7fdfab94fb75734ee7f572697c022bea58
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.3 MB (257288269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:629d444542aa0059e047e14991d0df6eaacdf1d5c7b9df6451d17c4a2788ca68`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 25 Oct 2017 15:07:15 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 15:07:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 15:08:36 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 25 Oct 2017 15:08:44 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/2.x/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 25 Oct 2017 15:08:46 GMT
ENV ELASTICSEARCH_VERSION=2.4.6
# Wed, 25 Oct 2017 15:08:46 GMT
ENV ELASTICSEARCH_DEB_VERSION=2.4.6
# Wed, 25 Oct 2017 15:08:51 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 15:08:52 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Oct 2017 15:08:52 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 25 Oct 2017 15:08:53 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 25 Oct 2017 15:08:53 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Wed, 25 Oct 2017 15:08:53 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 25 Oct 2017 15:08:53 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Wed, 25 Oct 2017 15:08:54 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 25 Oct 2017 15:08:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Oct 2017 15:08:54 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67da81c75392c43da0a6e29b4fc8beb7a673da0489b1f583f1e14f10e32d674`  
		Last Modified: Wed, 25 Oct 2017 15:10:48 GMT  
		Size: 500.9 KB (500905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85a015301f2ff324283a0a76415b7eae76b767fb53a7f2bc15e9333e8a9bd29`  
		Last Modified: Wed, 25 Oct 2017 15:10:49 GMT  
		Size: 1.4 KB (1445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6759dfed4ccaf589eec36c31ca68b0afc283ba59adaf757306553105aae09a4a`  
		Last Modified: Wed, 25 Oct 2017 15:10:50 GMT  
		Size: 936.5 KB (936486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53c4eaba321ac7df434f32e224181c6d7e37201965e7844188530d569cd3772`  
		Last Modified: Wed, 25 Oct 2017 15:10:49 GMT  
		Size: 27.7 MB (27683517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e3e8e9a953125b9d106ccf2afb161dc165fc7b6d178374b064cbe928629c6a`  
		Last Modified: Wed, 25 Oct 2017 15:10:46 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bfa13cc093fe198393b9d06359f23634d78c315027169c863a8afec90713bd7`  
		Last Modified: Wed, 25 Oct 2017 15:10:46 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bb2e1b8a25abdc4815213fc0fcd9d3d0339e8eab313a80deeb443bb88e3e654`  
		Last Modified: Wed, 25 Oct 2017 15:10:45 GMT  
		Size: 505.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.4.6-alpine`

```console
$ docker pull elasticsearch@sha256:6eba9a2a50864dfb4a18c1aa287fbdd55b52f01e4f34e6d72214a53f733a0980
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:2.4.6-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:fdbc7b4a849f3a66a1f5c32e30f1b4c68157e2a72c89ebf7f80fbef765c9c0b5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.2 MB (85185658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2221f0135c01dac0213175f5030bdc3fc3416acf3900c2d3ed4f59732172d534`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 14 Sep 2017 04:25:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:25:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 25 Oct 2017 15:07:59 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Wed, 25 Oct 2017 15:08:04 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 25 Oct 2017 15:08:04 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 25 Oct 2017 15:08:05 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 25 Oct 2017 15:08:05 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 25 Oct 2017 15:09:09 GMT
ENV ELASTICSEARCH_VERSION=2.4.6
# Wed, 25 Oct 2017 15:09:09 GMT
ENV ELASTICSEARCH_TARBALL=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.6.tar.gz ELASTICSEARCH_TARBALL_ASC=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.6.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=c3441bef89cd91206edf3cf3bd5c4b62550e60a9
# Wed, 25 Oct 2017 15:09:19 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Wed, 25 Oct 2017 15:09:25 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Wed, 25 Oct 2017 15:09:25 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 25 Oct 2017 15:09:25 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Wed, 25 Oct 2017 15:09:25 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 25 Oct 2017 15:09:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Oct 2017 15:09:26 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9431a0557160e1ec384a6cfe37d1225528bd236e486010ffc0b75ce7fe1c1465`  
		Last Modified: Thu, 14 Sep 2017 05:01:46 GMT  
		Size: 54.3 MB (54282902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967632d224abfc51e7766a81bd551fcc0ef7359813fb157f2c918c436c730c68`  
		Last Modified: Wed, 25 Oct 2017 15:09:41 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd68672b6ddf77a3a0312b4035c5d790f2cc210c18452b833de9ff430f34a02`  
		Last Modified: Wed, 25 Oct 2017 15:09:39 GMT  
		Size: 1.1 MB (1143901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca850ff8be3b95bf1aa20934c92ab54f0c0a72c4dcb2e677c5dafd684f657478`  
		Last Modified: Wed, 25 Oct 2017 15:09:39 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11b9efef2277ef3a1146df833abbd0331653a89d6db09733827166152c531329`  
		Last Modified: Wed, 25 Oct 2017 15:11:42 GMT  
		Size: 27.8 MB (27765760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eafa9860ac03dd6ed63758f514662ac30bd4500fd79f792f6491458f3adcb4f5`  
		Last Modified: Wed, 25 Oct 2017 15:11:40 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7708b2e0237f3e60ffc076ef9b9d63deed1a5ba6b4450d4f59e6efca5b2bab74`  
		Last Modified: Wed, 25 Oct 2017 15:11:39 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.4-alpine`

```console
$ docker pull elasticsearch@sha256:6eba9a2a50864dfb4a18c1aa287fbdd55b52f01e4f34e6d72214a53f733a0980
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:2.4-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:fdbc7b4a849f3a66a1f5c32e30f1b4c68157e2a72c89ebf7f80fbef765c9c0b5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.2 MB (85185658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2221f0135c01dac0213175f5030bdc3fc3416acf3900c2d3ed4f59732172d534`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 14 Sep 2017 04:25:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:25:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 25 Oct 2017 15:07:59 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Wed, 25 Oct 2017 15:08:04 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 25 Oct 2017 15:08:04 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 25 Oct 2017 15:08:05 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 25 Oct 2017 15:08:05 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 25 Oct 2017 15:09:09 GMT
ENV ELASTICSEARCH_VERSION=2.4.6
# Wed, 25 Oct 2017 15:09:09 GMT
ENV ELASTICSEARCH_TARBALL=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.6.tar.gz ELASTICSEARCH_TARBALL_ASC=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.6.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=c3441bef89cd91206edf3cf3bd5c4b62550e60a9
# Wed, 25 Oct 2017 15:09:19 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Wed, 25 Oct 2017 15:09:25 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Wed, 25 Oct 2017 15:09:25 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 25 Oct 2017 15:09:25 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Wed, 25 Oct 2017 15:09:25 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 25 Oct 2017 15:09:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Oct 2017 15:09:26 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9431a0557160e1ec384a6cfe37d1225528bd236e486010ffc0b75ce7fe1c1465`  
		Last Modified: Thu, 14 Sep 2017 05:01:46 GMT  
		Size: 54.3 MB (54282902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967632d224abfc51e7766a81bd551fcc0ef7359813fb157f2c918c436c730c68`  
		Last Modified: Wed, 25 Oct 2017 15:09:41 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd68672b6ddf77a3a0312b4035c5d790f2cc210c18452b833de9ff430f34a02`  
		Last Modified: Wed, 25 Oct 2017 15:09:39 GMT  
		Size: 1.1 MB (1143901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca850ff8be3b95bf1aa20934c92ab54f0c0a72c4dcb2e677c5dafd684f657478`  
		Last Modified: Wed, 25 Oct 2017 15:09:39 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11b9efef2277ef3a1146df833abbd0331653a89d6db09733827166152c531329`  
		Last Modified: Wed, 25 Oct 2017 15:11:42 GMT  
		Size: 27.8 MB (27765760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eafa9860ac03dd6ed63758f514662ac30bd4500fd79f792f6491458f3adcb4f5`  
		Last Modified: Wed, 25 Oct 2017 15:11:40 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7708b2e0237f3e60ffc076ef9b9d63deed1a5ba6b4450d4f59e6efca5b2bab74`  
		Last Modified: Wed, 25 Oct 2017 15:11:39 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2-alpine`

```console
$ docker pull elasticsearch@sha256:6eba9a2a50864dfb4a18c1aa287fbdd55b52f01e4f34e6d72214a53f733a0980
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:2-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:fdbc7b4a849f3a66a1f5c32e30f1b4c68157e2a72c89ebf7f80fbef765c9c0b5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.2 MB (85185658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2221f0135c01dac0213175f5030bdc3fc3416acf3900c2d3ed4f59732172d534`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 14 Sep 2017 04:25:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:25:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 25 Oct 2017 15:07:59 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Wed, 25 Oct 2017 15:08:04 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 25 Oct 2017 15:08:04 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 25 Oct 2017 15:08:05 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 25 Oct 2017 15:08:05 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 25 Oct 2017 15:09:09 GMT
ENV ELASTICSEARCH_VERSION=2.4.6
# Wed, 25 Oct 2017 15:09:09 GMT
ENV ELASTICSEARCH_TARBALL=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.6.tar.gz ELASTICSEARCH_TARBALL_ASC=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.6.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=c3441bef89cd91206edf3cf3bd5c4b62550e60a9
# Wed, 25 Oct 2017 15:09:19 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Wed, 25 Oct 2017 15:09:25 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Wed, 25 Oct 2017 15:09:25 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 25 Oct 2017 15:09:25 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Wed, 25 Oct 2017 15:09:25 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 25 Oct 2017 15:09:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Oct 2017 15:09:26 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9431a0557160e1ec384a6cfe37d1225528bd236e486010ffc0b75ce7fe1c1465`  
		Last Modified: Thu, 14 Sep 2017 05:01:46 GMT  
		Size: 54.3 MB (54282902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967632d224abfc51e7766a81bd551fcc0ef7359813fb157f2c918c436c730c68`  
		Last Modified: Wed, 25 Oct 2017 15:09:41 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd68672b6ddf77a3a0312b4035c5d790f2cc210c18452b833de9ff430f34a02`  
		Last Modified: Wed, 25 Oct 2017 15:09:39 GMT  
		Size: 1.1 MB (1143901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca850ff8be3b95bf1aa20934c92ab54f0c0a72c4dcb2e677c5dafd684f657478`  
		Last Modified: Wed, 25 Oct 2017 15:09:39 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11b9efef2277ef3a1146df833abbd0331653a89d6db09733827166152c531329`  
		Last Modified: Wed, 25 Oct 2017 15:11:42 GMT  
		Size: 27.8 MB (27765760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eafa9860ac03dd6ed63758f514662ac30bd4500fd79f792f6491458f3adcb4f5`  
		Last Modified: Wed, 25 Oct 2017 15:11:40 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7708b2e0237f3e60ffc076ef9b9d63deed1a5ba6b4450d4f59e6efca5b2bab74`  
		Last Modified: Wed, 25 Oct 2017 15:11:39 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5`

```console
$ docker pull elasticsearch@sha256:600d4557b64ab8a1c6b50d4224d4bb67a50c5901de5170ab1aa6194cb1e4f460
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5` - linux; amd64

```console
$ docker pull elasticsearch@sha256:9518bb3603fda1652f5f454d05187bc4ac4b85587693f08743d69c077909ac83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.7 MB (263722963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaac8f2572dbec372f6fe4472e3a7293dbfcdf85f885057ca6167454d5b9cd0b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 25 Oct 2017 15:07:15 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 15:07:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 15:08:36 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 25 Oct 2017 17:46:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 25 Oct 2017 17:46:48 GMT
ENV ELASTICSEARCH_VERSION=5.6.3
# Wed, 25 Oct 2017 17:46:48 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.6.3
# Wed, 25 Oct 2017 17:46:54 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 17:46:54 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Oct 2017 17:46:55 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 25 Oct 2017 17:46:55 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 25 Oct 2017 17:46:56 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Wed, 25 Oct 2017 17:46:56 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 25 Oct 2017 17:46:56 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Wed, 25 Oct 2017 17:46:56 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 25 Oct 2017 17:46:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Oct 2017 17:46:57 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67da81c75392c43da0a6e29b4fc8beb7a673da0489b1f583f1e14f10e32d674`  
		Last Modified: Wed, 25 Oct 2017 15:10:48 GMT  
		Size: 500.9 KB (500905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85a015301f2ff324283a0a76415b7eae76b767fb53a7f2bc15e9333e8a9bd29`  
		Last Modified: Wed, 25 Oct 2017 15:10:49 GMT  
		Size: 1.4 KB (1445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b99f45d383084761d4f8313fe075c9478be8894dedc7e434ebe8af856dc9166`  
		Last Modified: Wed, 25 Oct 2017 17:47:14 GMT  
		Size: 936.5 KB (936478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85d9f5153e3718b515c71635f26e35124082ce98a3a8b19ed625f908f503a237`  
		Last Modified: Wed, 25 Oct 2017 17:47:18 GMT  
		Size: 34.1 MB (34118271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f4eddfc63d3944307a293f3dd0b9e8d41c109156ecd9cf0ab850dc04b0ab11`  
		Last Modified: Wed, 25 Oct 2017 17:47:14 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d642fb07a7c5ec1d5a540b367648f2f1a740525848536200982f6ab3e11229c3`  
		Last Modified: Wed, 25 Oct 2017 17:47:14 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a040dcbfdfdab9fa5db076623c3e2ff68e790e99a54b329ed2c623f67e0f51da`  
		Last Modified: Wed, 25 Oct 2017 17:47:14 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.6`

```console
$ docker pull elasticsearch@sha256:600d4557b64ab8a1c6b50d4224d4bb67a50c5901de5170ab1aa6194cb1e4f460
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5.6` - linux; amd64

```console
$ docker pull elasticsearch@sha256:9518bb3603fda1652f5f454d05187bc4ac4b85587693f08743d69c077909ac83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.7 MB (263722963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaac8f2572dbec372f6fe4472e3a7293dbfcdf85f885057ca6167454d5b9cd0b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 25 Oct 2017 15:07:15 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 15:07:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 15:08:36 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 25 Oct 2017 17:46:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 25 Oct 2017 17:46:48 GMT
ENV ELASTICSEARCH_VERSION=5.6.3
# Wed, 25 Oct 2017 17:46:48 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.6.3
# Wed, 25 Oct 2017 17:46:54 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 17:46:54 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Oct 2017 17:46:55 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 25 Oct 2017 17:46:55 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 25 Oct 2017 17:46:56 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Wed, 25 Oct 2017 17:46:56 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 25 Oct 2017 17:46:56 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Wed, 25 Oct 2017 17:46:56 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 25 Oct 2017 17:46:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Oct 2017 17:46:57 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67da81c75392c43da0a6e29b4fc8beb7a673da0489b1f583f1e14f10e32d674`  
		Last Modified: Wed, 25 Oct 2017 15:10:48 GMT  
		Size: 500.9 KB (500905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85a015301f2ff324283a0a76415b7eae76b767fb53a7f2bc15e9333e8a9bd29`  
		Last Modified: Wed, 25 Oct 2017 15:10:49 GMT  
		Size: 1.4 KB (1445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b99f45d383084761d4f8313fe075c9478be8894dedc7e434ebe8af856dc9166`  
		Last Modified: Wed, 25 Oct 2017 17:47:14 GMT  
		Size: 936.5 KB (936478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85d9f5153e3718b515c71635f26e35124082ce98a3a8b19ed625f908f503a237`  
		Last Modified: Wed, 25 Oct 2017 17:47:18 GMT  
		Size: 34.1 MB (34118271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f4eddfc63d3944307a293f3dd0b9e8d41c109156ecd9cf0ab850dc04b0ab11`  
		Last Modified: Wed, 25 Oct 2017 17:47:14 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d642fb07a7c5ec1d5a540b367648f2f1a740525848536200982f6ab3e11229c3`  
		Last Modified: Wed, 25 Oct 2017 17:47:14 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a040dcbfdfdab9fa5db076623c3e2ff68e790e99a54b329ed2c623f67e0f51da`  
		Last Modified: Wed, 25 Oct 2017 17:47:14 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.6.3`

```console
$ docker pull elasticsearch@sha256:600d4557b64ab8a1c6b50d4224d4bb67a50c5901de5170ab1aa6194cb1e4f460
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5.6.3` - linux; amd64

```console
$ docker pull elasticsearch@sha256:9518bb3603fda1652f5f454d05187bc4ac4b85587693f08743d69c077909ac83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.7 MB (263722963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaac8f2572dbec372f6fe4472e3a7293dbfcdf85f885057ca6167454d5b9cd0b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 25 Oct 2017 15:07:15 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 15:07:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 15:08:36 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 25 Oct 2017 17:46:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 25 Oct 2017 17:46:48 GMT
ENV ELASTICSEARCH_VERSION=5.6.3
# Wed, 25 Oct 2017 17:46:48 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.6.3
# Wed, 25 Oct 2017 17:46:54 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 17:46:54 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Oct 2017 17:46:55 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 25 Oct 2017 17:46:55 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 25 Oct 2017 17:46:56 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Wed, 25 Oct 2017 17:46:56 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 25 Oct 2017 17:46:56 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Wed, 25 Oct 2017 17:46:56 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 25 Oct 2017 17:46:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Oct 2017 17:46:57 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67da81c75392c43da0a6e29b4fc8beb7a673da0489b1f583f1e14f10e32d674`  
		Last Modified: Wed, 25 Oct 2017 15:10:48 GMT  
		Size: 500.9 KB (500905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85a015301f2ff324283a0a76415b7eae76b767fb53a7f2bc15e9333e8a9bd29`  
		Last Modified: Wed, 25 Oct 2017 15:10:49 GMT  
		Size: 1.4 KB (1445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b99f45d383084761d4f8313fe075c9478be8894dedc7e434ebe8af856dc9166`  
		Last Modified: Wed, 25 Oct 2017 17:47:14 GMT  
		Size: 936.5 KB (936478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85d9f5153e3718b515c71635f26e35124082ce98a3a8b19ed625f908f503a237`  
		Last Modified: Wed, 25 Oct 2017 17:47:18 GMT  
		Size: 34.1 MB (34118271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f4eddfc63d3944307a293f3dd0b9e8d41c109156ecd9cf0ab850dc04b0ab11`  
		Last Modified: Wed, 25 Oct 2017 17:47:14 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d642fb07a7c5ec1d5a540b367648f2f1a740525848536200982f6ab3e11229c3`  
		Last Modified: Wed, 25 Oct 2017 17:47:14 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a040dcbfdfdab9fa5db076623c3e2ff68e790e99a54b329ed2c623f67e0f51da`  
		Last Modified: Wed, 25 Oct 2017 17:47:14 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.6.3-alpine`

```console
$ docker pull elasticsearch@sha256:502bfad241ffc18d06d55f295766221df169484571e8095e1eff6fd0d423d248
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5.6.3-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:438859cccc88cce0fe3a1bc23be87decc5737b6d89555ccbffce96887ee1e63c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.6 MB (91619875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d44c33f57da2e1647bc625310dffb8a9e3f33cc89680bb33d9fd08753e793f3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 14 Sep 2017 04:25:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:25:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 25 Oct 2017 15:07:59 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Wed, 25 Oct 2017 15:08:04 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 25 Oct 2017 15:08:04 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 25 Oct 2017 15:08:05 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 25 Oct 2017 15:08:05 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 25 Oct 2017 15:08:05 GMT
ENV ELASTICSEARCH_VERSION=5.6.3
# Wed, 25 Oct 2017 15:08:05 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.3.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.3.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=d5e4b61038f2cc3ec7ae5cbecf3406c7ecc7a1c4
# Wed, 25 Oct 2017 15:08:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Wed, 25 Oct 2017 15:08:21 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Wed, 25 Oct 2017 15:08:21 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 25 Oct 2017 15:08:21 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Wed, 25 Oct 2017 15:08:21 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 25 Oct 2017 15:08:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Oct 2017 15:08:22 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9431a0557160e1ec384a6cfe37d1225528bd236e486010ffc0b75ce7fe1c1465`  
		Last Modified: Thu, 14 Sep 2017 05:01:46 GMT  
		Size: 54.3 MB (54282902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967632d224abfc51e7766a81bd551fcc0ef7359813fb157f2c918c436c730c68`  
		Last Modified: Wed, 25 Oct 2017 15:09:41 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd68672b6ddf77a3a0312b4035c5d790f2cc210c18452b833de9ff430f34a02`  
		Last Modified: Wed, 25 Oct 2017 15:09:39 GMT  
		Size: 1.1 MB (1143901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca850ff8be3b95bf1aa20934c92ab54f0c0a72c4dcb2e677c5dafd684f657478`  
		Last Modified: Wed, 25 Oct 2017 15:09:39 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c927809fc42c2cd4ea2fa5e09e3513d90e401a1f74eb1d7384fb00d5760c6a0f`  
		Last Modified: Wed, 25 Oct 2017 15:09:42 GMT  
		Size: 34.2 MB (34200033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8637f8f0f5975ff54e2e3b51cee81222b9b8cc345bf0473f762b5a265fa601`  
		Last Modified: Wed, 25 Oct 2017 15:09:39 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe140ad124fa5c174e38b24e5671dc263a77b246942e5e48eaf2aea89b8b92e1`  
		Last Modified: Wed, 25 Oct 2017 15:09:39 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.6-alpine`

```console
$ docker pull elasticsearch@sha256:502bfad241ffc18d06d55f295766221df169484571e8095e1eff6fd0d423d248
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5.6-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:438859cccc88cce0fe3a1bc23be87decc5737b6d89555ccbffce96887ee1e63c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.6 MB (91619875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d44c33f57da2e1647bc625310dffb8a9e3f33cc89680bb33d9fd08753e793f3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 14 Sep 2017 04:25:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:25:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 25 Oct 2017 15:07:59 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Wed, 25 Oct 2017 15:08:04 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 25 Oct 2017 15:08:04 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 25 Oct 2017 15:08:05 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 25 Oct 2017 15:08:05 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 25 Oct 2017 15:08:05 GMT
ENV ELASTICSEARCH_VERSION=5.6.3
# Wed, 25 Oct 2017 15:08:05 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.3.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.3.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=d5e4b61038f2cc3ec7ae5cbecf3406c7ecc7a1c4
# Wed, 25 Oct 2017 15:08:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Wed, 25 Oct 2017 15:08:21 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Wed, 25 Oct 2017 15:08:21 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 25 Oct 2017 15:08:21 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Wed, 25 Oct 2017 15:08:21 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 25 Oct 2017 15:08:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Oct 2017 15:08:22 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9431a0557160e1ec384a6cfe37d1225528bd236e486010ffc0b75ce7fe1c1465`  
		Last Modified: Thu, 14 Sep 2017 05:01:46 GMT  
		Size: 54.3 MB (54282902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967632d224abfc51e7766a81bd551fcc0ef7359813fb157f2c918c436c730c68`  
		Last Modified: Wed, 25 Oct 2017 15:09:41 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd68672b6ddf77a3a0312b4035c5d790f2cc210c18452b833de9ff430f34a02`  
		Last Modified: Wed, 25 Oct 2017 15:09:39 GMT  
		Size: 1.1 MB (1143901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca850ff8be3b95bf1aa20934c92ab54f0c0a72c4dcb2e677c5dafd684f657478`  
		Last Modified: Wed, 25 Oct 2017 15:09:39 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c927809fc42c2cd4ea2fa5e09e3513d90e401a1f74eb1d7384fb00d5760c6a0f`  
		Last Modified: Wed, 25 Oct 2017 15:09:42 GMT  
		Size: 34.2 MB (34200033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8637f8f0f5975ff54e2e3b51cee81222b9b8cc345bf0473f762b5a265fa601`  
		Last Modified: Wed, 25 Oct 2017 15:09:39 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe140ad124fa5c174e38b24e5671dc263a77b246942e5e48eaf2aea89b8b92e1`  
		Last Modified: Wed, 25 Oct 2017 15:09:39 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5-alpine`

```console
$ docker pull elasticsearch@sha256:502bfad241ffc18d06d55f295766221df169484571e8095e1eff6fd0d423d248
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:438859cccc88cce0fe3a1bc23be87decc5737b6d89555ccbffce96887ee1e63c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.6 MB (91619875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d44c33f57da2e1647bc625310dffb8a9e3f33cc89680bb33d9fd08753e793f3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 14 Sep 2017 04:25:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:25:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 25 Oct 2017 15:07:59 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Wed, 25 Oct 2017 15:08:04 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 25 Oct 2017 15:08:04 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 25 Oct 2017 15:08:05 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 25 Oct 2017 15:08:05 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 25 Oct 2017 15:08:05 GMT
ENV ELASTICSEARCH_VERSION=5.6.3
# Wed, 25 Oct 2017 15:08:05 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.3.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.3.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=d5e4b61038f2cc3ec7ae5cbecf3406c7ecc7a1c4
# Wed, 25 Oct 2017 15:08:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Wed, 25 Oct 2017 15:08:21 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Wed, 25 Oct 2017 15:08:21 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 25 Oct 2017 15:08:21 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Wed, 25 Oct 2017 15:08:21 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 25 Oct 2017 15:08:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Oct 2017 15:08:22 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9431a0557160e1ec384a6cfe37d1225528bd236e486010ffc0b75ce7fe1c1465`  
		Last Modified: Thu, 14 Sep 2017 05:01:46 GMT  
		Size: 54.3 MB (54282902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967632d224abfc51e7766a81bd551fcc0ef7359813fb157f2c918c436c730c68`  
		Last Modified: Wed, 25 Oct 2017 15:09:41 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd68672b6ddf77a3a0312b4035c5d790f2cc210c18452b833de9ff430f34a02`  
		Last Modified: Wed, 25 Oct 2017 15:09:39 GMT  
		Size: 1.1 MB (1143901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca850ff8be3b95bf1aa20934c92ab54f0c0a72c4dcb2e677c5dafd684f657478`  
		Last Modified: Wed, 25 Oct 2017 15:09:39 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c927809fc42c2cd4ea2fa5e09e3513d90e401a1f74eb1d7384fb00d5760c6a0f`  
		Last Modified: Wed, 25 Oct 2017 15:09:42 GMT  
		Size: 34.2 MB (34200033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8637f8f0f5975ff54e2e3b51cee81222b9b8cc345bf0473f762b5a265fa601`  
		Last Modified: Wed, 25 Oct 2017 15:09:39 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe140ad124fa5c174e38b24e5671dc263a77b246942e5e48eaf2aea89b8b92e1`  
		Last Modified: Wed, 25 Oct 2017 15:09:39 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:alpine`

```console
$ docker pull elasticsearch@sha256:502bfad241ffc18d06d55f295766221df169484571e8095e1eff6fd0d423d248
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:438859cccc88cce0fe3a1bc23be87decc5737b6d89555ccbffce96887ee1e63c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.6 MB (91619875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d44c33f57da2e1647bc625310dffb8a9e3f33cc89680bb33d9fd08753e793f3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 14 Sep 2017 04:25:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:25:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 25 Oct 2017 15:07:59 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Wed, 25 Oct 2017 15:08:04 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 25 Oct 2017 15:08:04 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 25 Oct 2017 15:08:05 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 25 Oct 2017 15:08:05 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 25 Oct 2017 15:08:05 GMT
ENV ELASTICSEARCH_VERSION=5.6.3
# Wed, 25 Oct 2017 15:08:05 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.3.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.3.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=d5e4b61038f2cc3ec7ae5cbecf3406c7ecc7a1c4
# Wed, 25 Oct 2017 15:08:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Wed, 25 Oct 2017 15:08:21 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Wed, 25 Oct 2017 15:08:21 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 25 Oct 2017 15:08:21 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Wed, 25 Oct 2017 15:08:21 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 25 Oct 2017 15:08:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Oct 2017 15:08:22 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9431a0557160e1ec384a6cfe37d1225528bd236e486010ffc0b75ce7fe1c1465`  
		Last Modified: Thu, 14 Sep 2017 05:01:46 GMT  
		Size: 54.3 MB (54282902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967632d224abfc51e7766a81bd551fcc0ef7359813fb157f2c918c436c730c68`  
		Last Modified: Wed, 25 Oct 2017 15:09:41 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd68672b6ddf77a3a0312b4035c5d790f2cc210c18452b833de9ff430f34a02`  
		Last Modified: Wed, 25 Oct 2017 15:09:39 GMT  
		Size: 1.1 MB (1143901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca850ff8be3b95bf1aa20934c92ab54f0c0a72c4dcb2e677c5dafd684f657478`  
		Last Modified: Wed, 25 Oct 2017 15:09:39 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c927809fc42c2cd4ea2fa5e09e3513d90e401a1f74eb1d7384fb00d5760c6a0f`  
		Last Modified: Wed, 25 Oct 2017 15:09:42 GMT  
		Size: 34.2 MB (34200033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8637f8f0f5975ff54e2e3b51cee81222b9b8cc345bf0473f762b5a265fa601`  
		Last Modified: Wed, 25 Oct 2017 15:09:39 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe140ad124fa5c174e38b24e5671dc263a77b246942e5e48eaf2aea89b8b92e1`  
		Last Modified: Wed, 25 Oct 2017 15:09:39 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:latest`

```console
$ docker pull elasticsearch@sha256:600d4557b64ab8a1c6b50d4224d4bb67a50c5901de5170ab1aa6194cb1e4f460
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:latest` - linux; amd64

```console
$ docker pull elasticsearch@sha256:9518bb3603fda1652f5f454d05187bc4ac4b85587693f08743d69c077909ac83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.7 MB (263722963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaac8f2572dbec372f6fe4472e3a7293dbfcdf85f885057ca6167454d5b9cd0b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 25 Oct 2017 15:07:15 GMT
ENV GOSU_VERSION=1.10
# Wed, 25 Oct 2017 15:07:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 25 Oct 2017 15:08:36 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 25 Oct 2017 17:46:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 25 Oct 2017 17:46:48 GMT
ENV ELASTICSEARCH_VERSION=5.6.3
# Wed, 25 Oct 2017 17:46:48 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.6.3
# Wed, 25 Oct 2017 17:46:54 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 25 Oct 2017 17:46:54 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Oct 2017 17:46:55 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 25 Oct 2017 17:46:55 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 25 Oct 2017 17:46:56 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Wed, 25 Oct 2017 17:46:56 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 25 Oct 2017 17:46:56 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Wed, 25 Oct 2017 17:46:56 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 25 Oct 2017 17:46:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 25 Oct 2017 17:46:57 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67da81c75392c43da0a6e29b4fc8beb7a673da0489b1f583f1e14f10e32d674`  
		Last Modified: Wed, 25 Oct 2017 15:10:48 GMT  
		Size: 500.9 KB (500905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85a015301f2ff324283a0a76415b7eae76b767fb53a7f2bc15e9333e8a9bd29`  
		Last Modified: Wed, 25 Oct 2017 15:10:49 GMT  
		Size: 1.4 KB (1445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b99f45d383084761d4f8313fe075c9478be8894dedc7e434ebe8af856dc9166`  
		Last Modified: Wed, 25 Oct 2017 17:47:14 GMT  
		Size: 936.5 KB (936478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85d9f5153e3718b515c71635f26e35124082ce98a3a8b19ed625f908f503a237`  
		Last Modified: Wed, 25 Oct 2017 17:47:18 GMT  
		Size: 34.1 MB (34118271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04f4eddfc63d3944307a293f3dd0b9e8d41c109156ecd9cf0ab850dc04b0ab11`  
		Last Modified: Wed, 25 Oct 2017 17:47:14 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d642fb07a7c5ec1d5a540b367648f2f1a740525848536200982f6ab3e11229c3`  
		Last Modified: Wed, 25 Oct 2017 17:47:14 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a040dcbfdfdab9fa5db076623c3e2ff68e790e99a54b329ed2c623f67e0f51da`  
		Last Modified: Wed, 25 Oct 2017 17:47:14 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
