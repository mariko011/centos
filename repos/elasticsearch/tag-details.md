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
-	[`elasticsearch:5.6.5`](#elasticsearch565)
-	[`elasticsearch:5.6.5-alpine`](#elasticsearch565-alpine)
-	[`elasticsearch:5.6-alpine`](#elasticsearch56-alpine)
-	[`elasticsearch:5-alpine`](#elasticsearch5-alpine)
-	[`elasticsearch:alpine`](#elasticsearchalpine)
-	[`elasticsearch:latest`](#elasticsearchlatest)

## `elasticsearch:2`

```console
$ docker pull elasticsearch@sha256:113177ccc1afc403c805c6339367d15f126a980ae8e1637a063aa8eb026cfbda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:2` - linux; amd64

```console
$ docker pull elasticsearch@sha256:b3b5a3250c94229b064f91a78db7e05aa5ccb2f3ff07d4b62fe2b7b27d0e0320
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.2 MB (256211687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:705cb8c5336cb82b6b6bc11c0dfdde48af7ac1e410f727974808a9bcbe0f303a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:53:28 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:53:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:53:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:54:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:54:40 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Nov 2017 16:07:36 GMT
ENV GOSU_VERSION=1.10
# Tue, 07 Nov 2017 16:07:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 07 Nov 2017 16:07:57 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 07 Nov 2017 16:08:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/2.x/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 07 Nov 2017 16:08:39 GMT
ENV ELASTICSEARCH_VERSION=2.4.6
# Tue, 07 Nov 2017 16:08:39 GMT
ENV ELASTICSEARCH_DEB_VERSION=2.4.6
# Tue, 07 Nov 2017 16:08:48 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 Nov 2017 16:08:48 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Nov 2017 16:08:48 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 07 Nov 2017 16:08:49 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 07 Nov 2017 16:08:50 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Tue, 07 Nov 2017 16:08:50 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 07 Nov 2017 16:08:51 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Tue, 07 Nov 2017 16:08:51 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 07 Nov 2017 16:08:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 07 Nov 2017 16:08:52 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5161d2a139e23531bd57da2c4efcfb995ffc259cb71fe294d5c596cb7ed56820`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 852.2 KB (852248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7659b327f9ec020ee056493b2430bdeefef64099838c800336b961e86dd1d062`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce47e69f11aded41391731e054540d166020a44cfbc33c59dfff8093c954ca5d`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d946df3a3d8d91f5878e3c2b324f9590e8541f62300e0ec727306b572b6660a`  
		Last Modified: Sat, 04 Nov 2017 19:01:48 GMT  
		Size: 165.4 MB (165392972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57cba73d7977ca47d248fab866c392b2aae43508f8649dd0c515b12d5bd7dcf`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 272.1 KB (272085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f013c56f74b9eeb8ae530f9fd548d4e81fb82ad5e45291f1ea96d4c258b1eca`  
		Last Modified: Tue, 07 Nov 2017 16:09:12 GMT  
		Size: 500.9 KB (500912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b753648bdd795930bf03f5238219cb30163f7088f1429ecc758556c61e403377`  
		Last Modified: Tue, 07 Nov 2017 16:09:12 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16fb58505303b33780b7455267946f74f525d75640a3a6593280ac1b5417ca85`  
		Last Modified: Tue, 07 Nov 2017 16:09:59 GMT  
		Size: 936.1 KB (936094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4414a137aa434939ac35169f27fb41bf027abe805f643021b5bdd0de846160b6`  
		Last Modified: Tue, 07 Nov 2017 16:10:02 GMT  
		Size: 27.7 MB (27682953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7279499f9ea8e1c48344eb078f204fa8f652b3a006c8e8e4ccbda0ab41031c39`  
		Last Modified: Tue, 07 Nov 2017 16:09:58 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c40c67f345285852f10ff15835a404e54c872542e426b38219a8335aeef1a4`  
		Last Modified: Tue, 07 Nov 2017 16:09:59 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f736e4a676d7b78c56620c0673365cef52f6258a1ba6aedae8808b71d93463`  
		Last Modified: Tue, 07 Nov 2017 16:09:59 GMT  
		Size: 504.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.4`

```console
$ docker pull elasticsearch@sha256:113177ccc1afc403c805c6339367d15f126a980ae8e1637a063aa8eb026cfbda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:2.4` - linux; amd64

```console
$ docker pull elasticsearch@sha256:b3b5a3250c94229b064f91a78db7e05aa5ccb2f3ff07d4b62fe2b7b27d0e0320
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.2 MB (256211687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:705cb8c5336cb82b6b6bc11c0dfdde48af7ac1e410f727974808a9bcbe0f303a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:53:28 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:53:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:53:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:54:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:54:40 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Nov 2017 16:07:36 GMT
ENV GOSU_VERSION=1.10
# Tue, 07 Nov 2017 16:07:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 07 Nov 2017 16:07:57 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 07 Nov 2017 16:08:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/2.x/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 07 Nov 2017 16:08:39 GMT
ENV ELASTICSEARCH_VERSION=2.4.6
# Tue, 07 Nov 2017 16:08:39 GMT
ENV ELASTICSEARCH_DEB_VERSION=2.4.6
# Tue, 07 Nov 2017 16:08:48 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 Nov 2017 16:08:48 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Nov 2017 16:08:48 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 07 Nov 2017 16:08:49 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 07 Nov 2017 16:08:50 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Tue, 07 Nov 2017 16:08:50 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 07 Nov 2017 16:08:51 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Tue, 07 Nov 2017 16:08:51 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 07 Nov 2017 16:08:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 07 Nov 2017 16:08:52 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5161d2a139e23531bd57da2c4efcfb995ffc259cb71fe294d5c596cb7ed56820`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 852.2 KB (852248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7659b327f9ec020ee056493b2430bdeefef64099838c800336b961e86dd1d062`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce47e69f11aded41391731e054540d166020a44cfbc33c59dfff8093c954ca5d`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d946df3a3d8d91f5878e3c2b324f9590e8541f62300e0ec727306b572b6660a`  
		Last Modified: Sat, 04 Nov 2017 19:01:48 GMT  
		Size: 165.4 MB (165392972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57cba73d7977ca47d248fab866c392b2aae43508f8649dd0c515b12d5bd7dcf`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 272.1 KB (272085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f013c56f74b9eeb8ae530f9fd548d4e81fb82ad5e45291f1ea96d4c258b1eca`  
		Last Modified: Tue, 07 Nov 2017 16:09:12 GMT  
		Size: 500.9 KB (500912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b753648bdd795930bf03f5238219cb30163f7088f1429ecc758556c61e403377`  
		Last Modified: Tue, 07 Nov 2017 16:09:12 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16fb58505303b33780b7455267946f74f525d75640a3a6593280ac1b5417ca85`  
		Last Modified: Tue, 07 Nov 2017 16:09:59 GMT  
		Size: 936.1 KB (936094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4414a137aa434939ac35169f27fb41bf027abe805f643021b5bdd0de846160b6`  
		Last Modified: Tue, 07 Nov 2017 16:10:02 GMT  
		Size: 27.7 MB (27682953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7279499f9ea8e1c48344eb078f204fa8f652b3a006c8e8e4ccbda0ab41031c39`  
		Last Modified: Tue, 07 Nov 2017 16:09:58 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c40c67f345285852f10ff15835a404e54c872542e426b38219a8335aeef1a4`  
		Last Modified: Tue, 07 Nov 2017 16:09:59 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f736e4a676d7b78c56620c0673365cef52f6258a1ba6aedae8808b71d93463`  
		Last Modified: Tue, 07 Nov 2017 16:09:59 GMT  
		Size: 504.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.4.6`

```console
$ docker pull elasticsearch@sha256:113177ccc1afc403c805c6339367d15f126a980ae8e1637a063aa8eb026cfbda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:2.4.6` - linux; amd64

```console
$ docker pull elasticsearch@sha256:b3b5a3250c94229b064f91a78db7e05aa5ccb2f3ff07d4b62fe2b7b27d0e0320
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.2 MB (256211687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:705cb8c5336cb82b6b6bc11c0dfdde48af7ac1e410f727974808a9bcbe0f303a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:53:28 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:53:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:53:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:54:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:54:40 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Nov 2017 16:07:36 GMT
ENV GOSU_VERSION=1.10
# Tue, 07 Nov 2017 16:07:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 07 Nov 2017 16:07:57 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 07 Nov 2017 16:08:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb http://packages.elasticsearch.org/elasticsearch/2.x/debian stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Tue, 07 Nov 2017 16:08:39 GMT
ENV ELASTICSEARCH_VERSION=2.4.6
# Tue, 07 Nov 2017 16:08:39 GMT
ENV ELASTICSEARCH_DEB_VERSION=2.4.6
# Tue, 07 Nov 2017 16:08:48 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 Nov 2017 16:08:48 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Nov 2017 16:08:48 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 07 Nov 2017 16:08:49 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Tue, 07 Nov 2017 16:08:50 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Tue, 07 Nov 2017 16:08:50 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 07 Nov 2017 16:08:51 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Tue, 07 Nov 2017 16:08:51 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 07 Nov 2017 16:08:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 07 Nov 2017 16:08:52 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5161d2a139e23531bd57da2c4efcfb995ffc259cb71fe294d5c596cb7ed56820`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 852.2 KB (852248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7659b327f9ec020ee056493b2430bdeefef64099838c800336b961e86dd1d062`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce47e69f11aded41391731e054540d166020a44cfbc33c59dfff8093c954ca5d`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d946df3a3d8d91f5878e3c2b324f9590e8541f62300e0ec727306b572b6660a`  
		Last Modified: Sat, 04 Nov 2017 19:01:48 GMT  
		Size: 165.4 MB (165392972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57cba73d7977ca47d248fab866c392b2aae43508f8649dd0c515b12d5bd7dcf`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 272.1 KB (272085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f013c56f74b9eeb8ae530f9fd548d4e81fb82ad5e45291f1ea96d4c258b1eca`  
		Last Modified: Tue, 07 Nov 2017 16:09:12 GMT  
		Size: 500.9 KB (500912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b753648bdd795930bf03f5238219cb30163f7088f1429ecc758556c61e403377`  
		Last Modified: Tue, 07 Nov 2017 16:09:12 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16fb58505303b33780b7455267946f74f525d75640a3a6593280ac1b5417ca85`  
		Last Modified: Tue, 07 Nov 2017 16:09:59 GMT  
		Size: 936.1 KB (936094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4414a137aa434939ac35169f27fb41bf027abe805f643021b5bdd0de846160b6`  
		Last Modified: Tue, 07 Nov 2017 16:10:02 GMT  
		Size: 27.7 MB (27682953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7279499f9ea8e1c48344eb078f204fa8f652b3a006c8e8e4ccbda0ab41031c39`  
		Last Modified: Tue, 07 Nov 2017 16:09:58 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c40c67f345285852f10ff15835a404e54c872542e426b38219a8335aeef1a4`  
		Last Modified: Tue, 07 Nov 2017 16:09:59 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f736e4a676d7b78c56620c0673365cef52f6258a1ba6aedae8808b71d93463`  
		Last Modified: Tue, 07 Nov 2017 16:09:59 GMT  
		Size: 504.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.4.6-alpine`

```console
$ docker pull elasticsearch@sha256:dca53d7b9a1686cb5262be7cb0c3d1578d1ca9f2f740a6881ab0074a89a86029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:2.4.6-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:665551b0eaaa0d7d3a8b9b2f254518828b1d3b6811baf6112de1866574019d15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.5 MB (85546091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a9e6c1db61fc4eb46619e31b167bfc58ca774d877e814dd771bf56b95f29be4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 03:42:44 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 03:42:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 03:43:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 03:43:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 03:43:46 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 03:43:46 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 03:43:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 04:11:50 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Tue, 05 Dec 2017 04:11:53 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Tue, 05 Dec 2017 04:11:53 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 05 Dec 2017 04:11:53 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 05 Dec 2017 04:11:54 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 04:12:18 GMT
ENV ELASTICSEARCH_VERSION=2.4.6
# Tue, 05 Dec 2017 04:12:18 GMT
ENV ELASTICSEARCH_TARBALL=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.6.tar.gz ELASTICSEARCH_TARBALL_ASC=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.6.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=c3441bef89cd91206edf3cf3bd5c4b62550e60a9
# Tue, 05 Dec 2017 04:12:28 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Tue, 05 Dec 2017 04:12:29 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Tue, 05 Dec 2017 04:12:29 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 05 Dec 2017 04:12:29 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Tue, 05 Dec 2017 04:12:29 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 05 Dec 2017 04:12:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Dec 2017 04:12:30 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82630fd6e5ba7225587bd7986c7b6245801f8c7b001c9db318aecbb7fcb188a4`  
		Last Modified: Tue, 05 Dec 2017 03:44:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d364c885d49cacd5587d152fc93747a1758e1cfdd3d10d627c00091c5b365`  
		Last Modified: Tue, 05 Dec 2017 03:46:37 GMT  
		Size: 54.5 MB (54453882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f7346969177f709d56b0b250e6bde52fd089b71284562b4877579808ffad83`  
		Last Modified: Tue, 05 Dec 2017 04:12:44 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2eca4725a30af126babcbcbf1bf55e80a2e3ff26b86c32961ea1735eb33dea`  
		Last Modified: Tue, 05 Dec 2017 04:12:42 GMT  
		Size: 1.3 MB (1292719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be14496cc3504215fdf19d66db698d2284b4b22bb156b09f64edc2a35711689a`  
		Last Modified: Tue, 05 Dec 2017 04:12:42 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579b667e1ba59e4ae940f34f11e8730f9ae663a09cfc7381019f92c9bc5103e9`  
		Last Modified: Tue, 05 Dec 2017 04:13:22 GMT  
		Size: 27.7 MB (27731888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e660dba8cb105d328311ffb3dcb6afab8286f611279099bff5736ff1326ecbd7`  
		Last Modified: Tue, 05 Dec 2017 04:13:19 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d82bc0ed021673635a052184be437a9f497d1e6a188899c2c7ec160801fa98e`  
		Last Modified: Tue, 05 Dec 2017 04:13:20 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2.4-alpine`

```console
$ docker pull elasticsearch@sha256:dca53d7b9a1686cb5262be7cb0c3d1578d1ca9f2f740a6881ab0074a89a86029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:2.4-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:665551b0eaaa0d7d3a8b9b2f254518828b1d3b6811baf6112de1866574019d15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.5 MB (85546091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a9e6c1db61fc4eb46619e31b167bfc58ca774d877e814dd771bf56b95f29be4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 03:42:44 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 03:42:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 03:43:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 03:43:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 03:43:46 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 03:43:46 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 03:43:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 04:11:50 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Tue, 05 Dec 2017 04:11:53 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Tue, 05 Dec 2017 04:11:53 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 05 Dec 2017 04:11:53 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 05 Dec 2017 04:11:54 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 04:12:18 GMT
ENV ELASTICSEARCH_VERSION=2.4.6
# Tue, 05 Dec 2017 04:12:18 GMT
ENV ELASTICSEARCH_TARBALL=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.6.tar.gz ELASTICSEARCH_TARBALL_ASC=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.6.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=c3441bef89cd91206edf3cf3bd5c4b62550e60a9
# Tue, 05 Dec 2017 04:12:28 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Tue, 05 Dec 2017 04:12:29 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Tue, 05 Dec 2017 04:12:29 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 05 Dec 2017 04:12:29 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Tue, 05 Dec 2017 04:12:29 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 05 Dec 2017 04:12:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Dec 2017 04:12:30 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82630fd6e5ba7225587bd7986c7b6245801f8c7b001c9db318aecbb7fcb188a4`  
		Last Modified: Tue, 05 Dec 2017 03:44:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d364c885d49cacd5587d152fc93747a1758e1cfdd3d10d627c00091c5b365`  
		Last Modified: Tue, 05 Dec 2017 03:46:37 GMT  
		Size: 54.5 MB (54453882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f7346969177f709d56b0b250e6bde52fd089b71284562b4877579808ffad83`  
		Last Modified: Tue, 05 Dec 2017 04:12:44 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2eca4725a30af126babcbcbf1bf55e80a2e3ff26b86c32961ea1735eb33dea`  
		Last Modified: Tue, 05 Dec 2017 04:12:42 GMT  
		Size: 1.3 MB (1292719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be14496cc3504215fdf19d66db698d2284b4b22bb156b09f64edc2a35711689a`  
		Last Modified: Tue, 05 Dec 2017 04:12:42 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579b667e1ba59e4ae940f34f11e8730f9ae663a09cfc7381019f92c9bc5103e9`  
		Last Modified: Tue, 05 Dec 2017 04:13:22 GMT  
		Size: 27.7 MB (27731888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e660dba8cb105d328311ffb3dcb6afab8286f611279099bff5736ff1326ecbd7`  
		Last Modified: Tue, 05 Dec 2017 04:13:19 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d82bc0ed021673635a052184be437a9f497d1e6a188899c2c7ec160801fa98e`  
		Last Modified: Tue, 05 Dec 2017 04:13:20 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:2-alpine`

```console
$ docker pull elasticsearch@sha256:dca53d7b9a1686cb5262be7cb0c3d1578d1ca9f2f740a6881ab0074a89a86029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:2-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:665551b0eaaa0d7d3a8b9b2f254518828b1d3b6811baf6112de1866574019d15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.5 MB (85546091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a9e6c1db61fc4eb46619e31b167bfc58ca774d877e814dd771bf56b95f29be4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 03:42:44 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 03:42:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 03:43:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 03:43:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 03:43:46 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 03:43:46 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 03:43:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 04:11:50 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Tue, 05 Dec 2017 04:11:53 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Tue, 05 Dec 2017 04:11:53 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 05 Dec 2017 04:11:53 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 05 Dec 2017 04:11:54 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 04:12:18 GMT
ENV ELASTICSEARCH_VERSION=2.4.6
# Tue, 05 Dec 2017 04:12:18 GMT
ENV ELASTICSEARCH_TARBALL=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.6.tar.gz ELASTICSEARCH_TARBALL_ASC=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.6.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=c3441bef89cd91206edf3cf3bd5c4b62550e60a9
# Tue, 05 Dec 2017 04:12:28 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Tue, 05 Dec 2017 04:12:29 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Tue, 05 Dec 2017 04:12:29 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 05 Dec 2017 04:12:29 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Tue, 05 Dec 2017 04:12:29 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 05 Dec 2017 04:12:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Dec 2017 04:12:30 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82630fd6e5ba7225587bd7986c7b6245801f8c7b001c9db318aecbb7fcb188a4`  
		Last Modified: Tue, 05 Dec 2017 03:44:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d364c885d49cacd5587d152fc93747a1758e1cfdd3d10d627c00091c5b365`  
		Last Modified: Tue, 05 Dec 2017 03:46:37 GMT  
		Size: 54.5 MB (54453882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f7346969177f709d56b0b250e6bde52fd089b71284562b4877579808ffad83`  
		Last Modified: Tue, 05 Dec 2017 04:12:44 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2eca4725a30af126babcbcbf1bf55e80a2e3ff26b86c32961ea1735eb33dea`  
		Last Modified: Tue, 05 Dec 2017 04:12:42 GMT  
		Size: 1.3 MB (1292719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be14496cc3504215fdf19d66db698d2284b4b22bb156b09f64edc2a35711689a`  
		Last Modified: Tue, 05 Dec 2017 04:12:42 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579b667e1ba59e4ae940f34f11e8730f9ae663a09cfc7381019f92c9bc5103e9`  
		Last Modified: Tue, 05 Dec 2017 04:13:22 GMT  
		Size: 27.7 MB (27731888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e660dba8cb105d328311ffb3dcb6afab8286f611279099bff5736ff1326ecbd7`  
		Last Modified: Tue, 05 Dec 2017 04:13:19 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d82bc0ed021673635a052184be437a9f497d1e6a188899c2c7ec160801fa98e`  
		Last Modified: Tue, 05 Dec 2017 04:13:20 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5`

```console
$ docker pull elasticsearch@sha256:7b33d96a30ab8446ab8e4311edced9a122251296326e89aac40edaae1b2845b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5` - linux; amd64

```console
$ docker pull elasticsearch@sha256:f8a535e39e0dec2bcfc64d4832af3bb718827740289f66f4108f229ec3e9bd00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.7 MB (262654502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a047c21aa48891c1b22b12525dd9f3a721b6f5e36d8f19d3478ab88847f726c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:53:28 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:53:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:53:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:54:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:54:40 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Nov 2017 16:07:36 GMT
ENV GOSU_VERSION=1.10
# Tue, 07 Nov 2017 16:07:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 07 Nov 2017 16:07:57 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 07 Nov 2017 16:08:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 08 Nov 2017 04:46:28 GMT
ENV ELASTICSEARCH_VERSION=5.6.4
# Wed, 08 Nov 2017 04:46:28 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.6.4
# Wed, 08 Nov 2017 04:46:37 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 04:46:38 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 Nov 2017 04:46:38 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 08 Nov 2017 04:46:38 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 08 Nov 2017 04:46:39 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Wed, 08 Nov 2017 04:46:39 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 08 Nov 2017 04:46:39 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Wed, 08 Nov 2017 04:46:39 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 08 Nov 2017 04:46:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 Nov 2017 04:46:40 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5161d2a139e23531bd57da2c4efcfb995ffc259cb71fe294d5c596cb7ed56820`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 852.2 KB (852248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7659b327f9ec020ee056493b2430bdeefef64099838c800336b961e86dd1d062`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce47e69f11aded41391731e054540d166020a44cfbc33c59dfff8093c954ca5d`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d946df3a3d8d91f5878e3c2b324f9590e8541f62300e0ec727306b572b6660a`  
		Last Modified: Sat, 04 Nov 2017 19:01:48 GMT  
		Size: 165.4 MB (165392972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57cba73d7977ca47d248fab866c392b2aae43508f8649dd0c515b12d5bd7dcf`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 272.1 KB (272085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f013c56f74b9eeb8ae530f9fd548d4e81fb82ad5e45291f1ea96d4c258b1eca`  
		Last Modified: Tue, 07 Nov 2017 16:09:12 GMT  
		Size: 500.9 KB (500912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b753648bdd795930bf03f5238219cb30163f7088f1429ecc758556c61e403377`  
		Last Modified: Tue, 07 Nov 2017 16:09:12 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78ec13ec3028b794cee740ad47e3ee71b86f33b4d5ae677286c0e9c9468de1d`  
		Last Modified: Tue, 07 Nov 2017 16:09:10 GMT  
		Size: 936.1 KB (936124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:954df46610915e4d5d0a3d422b4ddc7298201d53d679a5ed6b8636b154a26a42`  
		Last Modified: Wed, 08 Nov 2017 04:47:34 GMT  
		Size: 34.1 MB (34125789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010b7ef0943e101aa7ea42bfaa918268e8bf417644d43bde3bff24b453cea9a4`  
		Last Modified: Wed, 08 Nov 2017 04:47:28 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f7f3d2643e78d1ea1ea1dea48b61db30ecbf15643deaa99bc53869f73d4aa22`  
		Last Modified: Wed, 08 Nov 2017 04:47:28 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daacc011a06585cbaf5ad855798455c5aa5e85c4e57dcf965bd43e6fa9cb2a81`  
		Last Modified: Wed, 08 Nov 2017 04:47:28 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.6`

```console
$ docker pull elasticsearch@sha256:7b33d96a30ab8446ab8e4311edced9a122251296326e89aac40edaae1b2845b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5.6` - linux; amd64

```console
$ docker pull elasticsearch@sha256:f8a535e39e0dec2bcfc64d4832af3bb718827740289f66f4108f229ec3e9bd00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.7 MB (262654502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a047c21aa48891c1b22b12525dd9f3a721b6f5e36d8f19d3478ab88847f726c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:53:28 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:53:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:53:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:54:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:54:40 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Nov 2017 16:07:36 GMT
ENV GOSU_VERSION=1.10
# Tue, 07 Nov 2017 16:07:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 07 Nov 2017 16:07:57 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 07 Nov 2017 16:08:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 08 Nov 2017 04:46:28 GMT
ENV ELASTICSEARCH_VERSION=5.6.4
# Wed, 08 Nov 2017 04:46:28 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.6.4
# Wed, 08 Nov 2017 04:46:37 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 04:46:38 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 Nov 2017 04:46:38 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 08 Nov 2017 04:46:38 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 08 Nov 2017 04:46:39 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Wed, 08 Nov 2017 04:46:39 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 08 Nov 2017 04:46:39 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Wed, 08 Nov 2017 04:46:39 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 08 Nov 2017 04:46:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 Nov 2017 04:46:40 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5161d2a139e23531bd57da2c4efcfb995ffc259cb71fe294d5c596cb7ed56820`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 852.2 KB (852248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7659b327f9ec020ee056493b2430bdeefef64099838c800336b961e86dd1d062`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce47e69f11aded41391731e054540d166020a44cfbc33c59dfff8093c954ca5d`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d946df3a3d8d91f5878e3c2b324f9590e8541f62300e0ec727306b572b6660a`  
		Last Modified: Sat, 04 Nov 2017 19:01:48 GMT  
		Size: 165.4 MB (165392972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57cba73d7977ca47d248fab866c392b2aae43508f8649dd0c515b12d5bd7dcf`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 272.1 KB (272085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f013c56f74b9eeb8ae530f9fd548d4e81fb82ad5e45291f1ea96d4c258b1eca`  
		Last Modified: Tue, 07 Nov 2017 16:09:12 GMT  
		Size: 500.9 KB (500912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b753648bdd795930bf03f5238219cb30163f7088f1429ecc758556c61e403377`  
		Last Modified: Tue, 07 Nov 2017 16:09:12 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78ec13ec3028b794cee740ad47e3ee71b86f33b4d5ae677286c0e9c9468de1d`  
		Last Modified: Tue, 07 Nov 2017 16:09:10 GMT  
		Size: 936.1 KB (936124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:954df46610915e4d5d0a3d422b4ddc7298201d53d679a5ed6b8636b154a26a42`  
		Last Modified: Wed, 08 Nov 2017 04:47:34 GMT  
		Size: 34.1 MB (34125789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010b7ef0943e101aa7ea42bfaa918268e8bf417644d43bde3bff24b453cea9a4`  
		Last Modified: Wed, 08 Nov 2017 04:47:28 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f7f3d2643e78d1ea1ea1dea48b61db30ecbf15643deaa99bc53869f73d4aa22`  
		Last Modified: Wed, 08 Nov 2017 04:47:28 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daacc011a06585cbaf5ad855798455c5aa5e85c4e57dcf965bd43e6fa9cb2a81`  
		Last Modified: Wed, 08 Nov 2017 04:47:28 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5.6.5`

**does not exist** (yet?)

## `elasticsearch:5.6.5-alpine`

**does not exist** (yet?)

## `elasticsearch:5.6-alpine`

```console
$ docker pull elasticsearch@sha256:78ac240533587a48eb34cc52cf30ce8a7df2b7b3993f903caf47c90bcfcdd64e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5.6-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:502fff8ab2c08a30e8c59d88dbfc99bf3070bd249fd4246bc6e9f4dad213968f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.0 MB (91983793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4fa6cad1be1f4cbe5e4f12c081b5aedb295e4011e8627d52c530c1f951567da`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 03:42:44 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 03:42:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 03:43:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 03:43:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 03:43:46 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 03:43:46 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 03:43:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 04:11:50 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Tue, 05 Dec 2017 04:11:53 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Tue, 05 Dec 2017 04:11:53 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 05 Dec 2017 04:11:53 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 05 Dec 2017 04:11:54 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 04:11:54 GMT
ENV ELASTICSEARCH_VERSION=5.6.4
# Tue, 05 Dec 2017 04:11:54 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.4.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.4.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=6e97b8edc2c5d06b6d0343de44bc5bb750224233
# Tue, 05 Dec 2017 04:12:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Tue, 05 Dec 2017 04:12:10 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Tue, 05 Dec 2017 04:12:10 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 05 Dec 2017 04:12:10 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Tue, 05 Dec 2017 04:12:11 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 05 Dec 2017 04:12:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Dec 2017 04:12:11 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82630fd6e5ba7225587bd7986c7b6245801f8c7b001c9db318aecbb7fcb188a4`  
		Last Modified: Tue, 05 Dec 2017 03:44:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d364c885d49cacd5587d152fc93747a1758e1cfdd3d10d627c00091c5b365`  
		Last Modified: Tue, 05 Dec 2017 03:46:37 GMT  
		Size: 54.5 MB (54453882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f7346969177f709d56b0b250e6bde52fd089b71284562b4877579808ffad83`  
		Last Modified: Tue, 05 Dec 2017 04:12:44 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2eca4725a30af126babcbcbf1bf55e80a2e3ff26b86c32961ea1735eb33dea`  
		Last Modified: Tue, 05 Dec 2017 04:12:42 GMT  
		Size: 1.3 MB (1292719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be14496cc3504215fdf19d66db698d2284b4b22bb156b09f64edc2a35711689a`  
		Last Modified: Tue, 05 Dec 2017 04:12:42 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f514e62aba585bab3bc2eacdf8c4211ca4900bd489290de24547f9b413b55c68`  
		Last Modified: Tue, 05 Dec 2017 04:12:44 GMT  
		Size: 34.2 MB (34169648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee681128e0eaf9b63cbce01b4a9e6c03c08be322e0ea481e3141d972f4c8fa8`  
		Last Modified: Tue, 05 Dec 2017 04:12:42 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1bfffbbf059a6bdbfd55e2494406da08473c006275749f078cbc05ddc049ac`  
		Last Modified: Tue, 05 Dec 2017 04:12:42 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:5-alpine`

```console
$ docker pull elasticsearch@sha256:78ac240533587a48eb34cc52cf30ce8a7df2b7b3993f903caf47c90bcfcdd64e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:502fff8ab2c08a30e8c59d88dbfc99bf3070bd249fd4246bc6e9f4dad213968f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.0 MB (91983793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4fa6cad1be1f4cbe5e4f12c081b5aedb295e4011e8627d52c530c1f951567da`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 03:42:44 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 03:42:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 03:43:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 03:43:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 03:43:46 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 03:43:46 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 03:43:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 04:11:50 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Tue, 05 Dec 2017 04:11:53 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Tue, 05 Dec 2017 04:11:53 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 05 Dec 2017 04:11:53 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 05 Dec 2017 04:11:54 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 04:11:54 GMT
ENV ELASTICSEARCH_VERSION=5.6.4
# Tue, 05 Dec 2017 04:11:54 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.4.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.4.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=6e97b8edc2c5d06b6d0343de44bc5bb750224233
# Tue, 05 Dec 2017 04:12:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Tue, 05 Dec 2017 04:12:10 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Tue, 05 Dec 2017 04:12:10 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 05 Dec 2017 04:12:10 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Tue, 05 Dec 2017 04:12:11 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 05 Dec 2017 04:12:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Dec 2017 04:12:11 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82630fd6e5ba7225587bd7986c7b6245801f8c7b001c9db318aecbb7fcb188a4`  
		Last Modified: Tue, 05 Dec 2017 03:44:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d364c885d49cacd5587d152fc93747a1758e1cfdd3d10d627c00091c5b365`  
		Last Modified: Tue, 05 Dec 2017 03:46:37 GMT  
		Size: 54.5 MB (54453882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f7346969177f709d56b0b250e6bde52fd089b71284562b4877579808ffad83`  
		Last Modified: Tue, 05 Dec 2017 04:12:44 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2eca4725a30af126babcbcbf1bf55e80a2e3ff26b86c32961ea1735eb33dea`  
		Last Modified: Tue, 05 Dec 2017 04:12:42 GMT  
		Size: 1.3 MB (1292719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be14496cc3504215fdf19d66db698d2284b4b22bb156b09f64edc2a35711689a`  
		Last Modified: Tue, 05 Dec 2017 04:12:42 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f514e62aba585bab3bc2eacdf8c4211ca4900bd489290de24547f9b413b55c68`  
		Last Modified: Tue, 05 Dec 2017 04:12:44 GMT  
		Size: 34.2 MB (34169648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee681128e0eaf9b63cbce01b4a9e6c03c08be322e0ea481e3141d972f4c8fa8`  
		Last Modified: Tue, 05 Dec 2017 04:12:42 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1bfffbbf059a6bdbfd55e2494406da08473c006275749f078cbc05ddc049ac`  
		Last Modified: Tue, 05 Dec 2017 04:12:42 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:alpine`

```console
$ docker pull elasticsearch@sha256:78ac240533587a48eb34cc52cf30ce8a7df2b7b3993f903caf47c90bcfcdd64e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:502fff8ab2c08a30e8c59d88dbfc99bf3070bd249fd4246bc6e9f4dad213968f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.0 MB (91983793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4fa6cad1be1f4cbe5e4f12c081b5aedb295e4011e8627d52c530c1f951567da`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 03:42:44 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 03:42:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 03:43:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 03:43:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 03:43:46 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 03:43:46 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 03:43:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 04:11:50 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Tue, 05 Dec 2017 04:11:53 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Tue, 05 Dec 2017 04:11:53 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 05 Dec 2017 04:11:53 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 05 Dec 2017 04:11:54 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 04:11:54 GMT
ENV ELASTICSEARCH_VERSION=5.6.4
# Tue, 05 Dec 2017 04:11:54 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.4.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.4.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=6e97b8edc2c5d06b6d0343de44bc5bb750224233
# Tue, 05 Dec 2017 04:12:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Tue, 05 Dec 2017 04:12:10 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Tue, 05 Dec 2017 04:12:10 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 05 Dec 2017 04:12:10 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Tue, 05 Dec 2017 04:12:11 GMT
EXPOSE 9200/tcp 9300/tcp
# Tue, 05 Dec 2017 04:12:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Dec 2017 04:12:11 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82630fd6e5ba7225587bd7986c7b6245801f8c7b001c9db318aecbb7fcb188a4`  
		Last Modified: Tue, 05 Dec 2017 03:44:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d364c885d49cacd5587d152fc93747a1758e1cfdd3d10d627c00091c5b365`  
		Last Modified: Tue, 05 Dec 2017 03:46:37 GMT  
		Size: 54.5 MB (54453882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f7346969177f709d56b0b250e6bde52fd089b71284562b4877579808ffad83`  
		Last Modified: Tue, 05 Dec 2017 04:12:44 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2eca4725a30af126babcbcbf1bf55e80a2e3ff26b86c32961ea1735eb33dea`  
		Last Modified: Tue, 05 Dec 2017 04:12:42 GMT  
		Size: 1.3 MB (1292719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be14496cc3504215fdf19d66db698d2284b4b22bb156b09f64edc2a35711689a`  
		Last Modified: Tue, 05 Dec 2017 04:12:42 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f514e62aba585bab3bc2eacdf8c4211ca4900bd489290de24547f9b413b55c68`  
		Last Modified: Tue, 05 Dec 2017 04:12:44 GMT  
		Size: 34.2 MB (34169648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee681128e0eaf9b63cbce01b4a9e6c03c08be322e0ea481e3141d972f4c8fa8`  
		Last Modified: Tue, 05 Dec 2017 04:12:42 GMT  
		Size: 485.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1bfffbbf059a6bdbfd55e2494406da08473c006275749f078cbc05ddc049ac`  
		Last Modified: Tue, 05 Dec 2017 04:12:42 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:latest`

```console
$ docker pull elasticsearch@sha256:7b33d96a30ab8446ab8e4311edced9a122251296326e89aac40edaae1b2845b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:latest` - linux; amd64

```console
$ docker pull elasticsearch@sha256:f8a535e39e0dec2bcfc64d4832af3bb718827740289f66f4108f229ec3e9bd00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.7 MB (262654502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a047c21aa48891c1b22b12525dd9f3a721b6f5e36d8f19d3478ab88847f726c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:53:28 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:53:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:53:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:54:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:54:40 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Nov 2017 16:07:36 GMT
ENV GOSU_VERSION=1.10
# Tue, 07 Nov 2017 16:07:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 07 Nov 2017 16:07:57 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 07 Nov 2017 16:08:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends apt-transport-https && rm -rf /var/lib/apt/lists/* 	&& echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/elasticsearch.list
# Wed, 08 Nov 2017 04:46:28 GMT
ENV ELASTICSEARCH_VERSION=5.6.4
# Wed, 08 Nov 2017 04:46:28 GMT
ENV ELASTICSEARCH_DEB_VERSION=5.6.4
# Wed, 08 Nov 2017 04:46:37 GMT
RUN set -x 		&& dpkg-divert --rename /usr/lib/sysctl.d/elasticsearch.conf 		&& apt-get update 	&& apt-get install -y --no-install-recommends "elasticsearch=$ELASTICSEARCH_DEB_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 04:46:38 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 Nov 2017 04:46:38 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 08 Nov 2017 04:46:38 GMT
RUN set -ex 	&& for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done
# Wed, 08 Nov 2017 04:46:39 GMT
COPY dir:c3faa196a3b1c87063ffe0be6ee20b5f2b36a9589fd93336acab4ba1aa6f6855 in ./config 
# Wed, 08 Nov 2017 04:46:39 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 08 Nov 2017 04:46:39 GMT
COPY file:251082110c6dbdf83c7e443f9451d18e88f56dde65a4e4cbf7b58db1440ef558 in / 
# Wed, 08 Nov 2017 04:46:39 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 08 Nov 2017 04:46:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 Nov 2017 04:46:40 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5161d2a139e23531bd57da2c4efcfb995ffc259cb71fe294d5c596cb7ed56820`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 852.2 KB (852248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7659b327f9ec020ee056493b2430bdeefef64099838c800336b961e86dd1d062`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce47e69f11aded41391731e054540d166020a44cfbc33c59dfff8093c954ca5d`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d946df3a3d8d91f5878e3c2b324f9590e8541f62300e0ec727306b572b6660a`  
		Last Modified: Sat, 04 Nov 2017 19:01:48 GMT  
		Size: 165.4 MB (165392972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57cba73d7977ca47d248fab866c392b2aae43508f8649dd0c515b12d5bd7dcf`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 272.1 KB (272085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f013c56f74b9eeb8ae530f9fd548d4e81fb82ad5e45291f1ea96d4c258b1eca`  
		Last Modified: Tue, 07 Nov 2017 16:09:12 GMT  
		Size: 500.9 KB (500912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b753648bdd795930bf03f5238219cb30163f7088f1429ecc758556c61e403377`  
		Last Modified: Tue, 07 Nov 2017 16:09:12 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78ec13ec3028b794cee740ad47e3ee71b86f33b4d5ae677286c0e9c9468de1d`  
		Last Modified: Tue, 07 Nov 2017 16:09:10 GMT  
		Size: 936.1 KB (936124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:954df46610915e4d5d0a3d422b4ddc7298201d53d679a5ed6b8636b154a26a42`  
		Last Modified: Wed, 08 Nov 2017 04:47:34 GMT  
		Size: 34.1 MB (34125789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010b7ef0943e101aa7ea42bfaa918268e8bf417644d43bde3bff24b453cea9a4`  
		Last Modified: Wed, 08 Nov 2017 04:47:28 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f7f3d2643e78d1ea1ea1dea48b61db30ecbf15643deaa99bc53869f73d4aa22`  
		Last Modified: Wed, 08 Nov 2017 04:47:28 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daacc011a06585cbaf5ad855798455c5aa5e85c4e57dcf965bd43e6fa9cb2a81`  
		Last Modified: Wed, 08 Nov 2017 04:47:28 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
