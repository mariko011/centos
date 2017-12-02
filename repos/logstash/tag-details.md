<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `logstash`

-	[`logstash:2`](#logstash2)
-	[`logstash:2.4`](#logstash24)
-	[`logstash:2.4.1`](#logstash241)
-	[`logstash:2.4.1-alpine`](#logstash241-alpine)
-	[`logstash:2.4-alpine`](#logstash24-alpine)
-	[`logstash:2-alpine`](#logstash2-alpine)
-	[`logstash:5`](#logstash5)
-	[`logstash:5.6`](#logstash56)
-	[`logstash:5.6.4`](#logstash564)
-	[`logstash:5.6.4-alpine`](#logstash564-alpine)
-	[`logstash:5.6-alpine`](#logstash56-alpine)
-	[`logstash:5-alpine`](#logstash5-alpine)
-	[`logstash:alpine`](#logstashalpine)
-	[`logstash:latest`](#logstashlatest)

## `logstash:2`

```console
$ docker pull logstash@sha256:a39a1bec418754742804bc3f091a4449f6dd118c8884e01162099b5b02ee02d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:2` - linux; amd64

```console
$ docker pull logstash@sha256:2f5b60377be25ec1bd618eecb4aba1212058d5d040fa19b3c176847e9654fa44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315333517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:641125861c2e1e0c541158649586e7536399bfdc94616e8f3e97698893502fc5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Tue, 07 Nov 2017 18:36:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 Nov 2017 18:36:15 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 07 Nov 2017 18:36:15 GMT
ENV GOSU_VERSION=1.10
# Tue, 07 Nov 2017 18:36:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 07 Nov 2017 18:36:35 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 07 Nov 2017 18:37:27 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.4/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Tue, 07 Nov 2017 18:37:27 GMT
ENV LOGSTASH_VERSION=2.4.1
# Tue, 07 Nov 2017 18:37:28 GMT
ENV LOGSTASH_DEB_VERSION=1:2.4.1-1
# Tue, 07 Nov 2017 18:37:48 GMT
RUN set -ex; 	case "$LOGSTASH_VERSION" in 		2.*) apt-get update -o 'APT::Hashes::SHA1::Weak=yes' ;; 		*) apt-get update ;; 	esac; 	apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION"; 	rm -rf /var/lib/apt/lists/*
# Tue, 07 Nov 2017 18:37:49 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Nov 2017 18:37:49 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 07 Nov 2017 18:37:50 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 07 Nov 2017 18:37:50 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Tue, 07 Nov 2017 18:37:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 07 Nov 2017 18:37:51 GMT
CMD ["-e" ""]
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
	-	`sha256:b388120c7c530dc5cb4ca99426fd55c3e3c421dbd3dce639e068148b6e2964e8`  
		Last Modified: Tue, 07 Nov 2017 18:38:12 GMT  
		Size: 1.6 MB (1588364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:296cd8b530def2635ae29fbc14b7f5ddf5ef7a03eaf336c22bb34d1dacc2666b`  
		Last Modified: Tue, 07 Nov 2017 18:38:11 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b464fb45511bcfbb793a63c667fb202d43d6cd88c188405b574308383fc22d27`  
		Last Modified: Tue, 07 Nov 2017 18:38:11 GMT  
		Size: 500.9 KB (500906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ba4cff5000e2f4bcfcc3a5102ff375db467f6e6168ad951657cb3a5acd6822`  
		Last Modified: Tue, 07 Nov 2017 18:38:09 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1037afed8370701d45ef04634f47191f3bbc1aa7fbd587d759fe7f3b7b53ff`  
		Last Modified: Tue, 07 Nov 2017 18:39:10 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae12c74ecd557ff3ba65f5c28fa1cb046a62f79424fb3327a0fe466159ab700`  
		Last Modified: Tue, 07 Nov 2017 18:39:24 GMT  
		Size: 86.2 MB (86153073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b36522e2e98d1ec7ac518da149b78810f0f9aeee026f3f52d1e76ba6bbcfa03b`  
		Last Modified: Tue, 07 Nov 2017 18:39:10 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.4`

```console
$ docker pull logstash@sha256:a39a1bec418754742804bc3f091a4449f6dd118c8884e01162099b5b02ee02d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:2.4` - linux; amd64

```console
$ docker pull logstash@sha256:2f5b60377be25ec1bd618eecb4aba1212058d5d040fa19b3c176847e9654fa44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315333517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:641125861c2e1e0c541158649586e7536399bfdc94616e8f3e97698893502fc5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Tue, 07 Nov 2017 18:36:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 Nov 2017 18:36:15 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 07 Nov 2017 18:36:15 GMT
ENV GOSU_VERSION=1.10
# Tue, 07 Nov 2017 18:36:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 07 Nov 2017 18:36:35 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 07 Nov 2017 18:37:27 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.4/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Tue, 07 Nov 2017 18:37:27 GMT
ENV LOGSTASH_VERSION=2.4.1
# Tue, 07 Nov 2017 18:37:28 GMT
ENV LOGSTASH_DEB_VERSION=1:2.4.1-1
# Tue, 07 Nov 2017 18:37:48 GMT
RUN set -ex; 	case "$LOGSTASH_VERSION" in 		2.*) apt-get update -o 'APT::Hashes::SHA1::Weak=yes' ;; 		*) apt-get update ;; 	esac; 	apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION"; 	rm -rf /var/lib/apt/lists/*
# Tue, 07 Nov 2017 18:37:49 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Nov 2017 18:37:49 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 07 Nov 2017 18:37:50 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 07 Nov 2017 18:37:50 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Tue, 07 Nov 2017 18:37:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 07 Nov 2017 18:37:51 GMT
CMD ["-e" ""]
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
	-	`sha256:b388120c7c530dc5cb4ca99426fd55c3e3c421dbd3dce639e068148b6e2964e8`  
		Last Modified: Tue, 07 Nov 2017 18:38:12 GMT  
		Size: 1.6 MB (1588364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:296cd8b530def2635ae29fbc14b7f5ddf5ef7a03eaf336c22bb34d1dacc2666b`  
		Last Modified: Tue, 07 Nov 2017 18:38:11 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b464fb45511bcfbb793a63c667fb202d43d6cd88c188405b574308383fc22d27`  
		Last Modified: Tue, 07 Nov 2017 18:38:11 GMT  
		Size: 500.9 KB (500906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ba4cff5000e2f4bcfcc3a5102ff375db467f6e6168ad951657cb3a5acd6822`  
		Last Modified: Tue, 07 Nov 2017 18:38:09 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1037afed8370701d45ef04634f47191f3bbc1aa7fbd587d759fe7f3b7b53ff`  
		Last Modified: Tue, 07 Nov 2017 18:39:10 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae12c74ecd557ff3ba65f5c28fa1cb046a62f79424fb3327a0fe466159ab700`  
		Last Modified: Tue, 07 Nov 2017 18:39:24 GMT  
		Size: 86.2 MB (86153073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b36522e2e98d1ec7ac518da149b78810f0f9aeee026f3f52d1e76ba6bbcfa03b`  
		Last Modified: Tue, 07 Nov 2017 18:39:10 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.4.1`

```console
$ docker pull logstash@sha256:a39a1bec418754742804bc3f091a4449f6dd118c8884e01162099b5b02ee02d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:2.4.1` - linux; amd64

```console
$ docker pull logstash@sha256:2f5b60377be25ec1bd618eecb4aba1212058d5d040fa19b3c176847e9654fa44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.3 MB (315333517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:641125861c2e1e0c541158649586e7536399bfdc94616e8f3e97698893502fc5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Tue, 07 Nov 2017 18:36:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 Nov 2017 18:36:15 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 07 Nov 2017 18:36:15 GMT
ENV GOSU_VERSION=1.10
# Tue, 07 Nov 2017 18:36:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 07 Nov 2017 18:36:35 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 07 Nov 2017 18:37:27 GMT
RUN echo 'deb http://packages.elastic.co/logstash/2.4/debian stable main' > /etc/apt/sources.list.d/logstash.list
# Tue, 07 Nov 2017 18:37:27 GMT
ENV LOGSTASH_VERSION=2.4.1
# Tue, 07 Nov 2017 18:37:28 GMT
ENV LOGSTASH_DEB_VERSION=1:2.4.1-1
# Tue, 07 Nov 2017 18:37:48 GMT
RUN set -ex; 	case "$LOGSTASH_VERSION" in 		2.*) apt-get update -o 'APT::Hashes::SHA1::Weak=yes' ;; 		*) apt-get update ;; 	esac; 	apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION"; 	rm -rf /var/lib/apt/lists/*
# Tue, 07 Nov 2017 18:37:49 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Nov 2017 18:37:49 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 07 Nov 2017 18:37:50 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 07 Nov 2017 18:37:50 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Tue, 07 Nov 2017 18:37:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 07 Nov 2017 18:37:51 GMT
CMD ["-e" ""]
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
	-	`sha256:b388120c7c530dc5cb4ca99426fd55c3e3c421dbd3dce639e068148b6e2964e8`  
		Last Modified: Tue, 07 Nov 2017 18:38:12 GMT  
		Size: 1.6 MB (1588364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:296cd8b530def2635ae29fbc14b7f5ddf5ef7a03eaf336c22bb34d1dacc2666b`  
		Last Modified: Tue, 07 Nov 2017 18:38:11 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b464fb45511bcfbb793a63c667fb202d43d6cd88c188405b574308383fc22d27`  
		Last Modified: Tue, 07 Nov 2017 18:38:11 GMT  
		Size: 500.9 KB (500906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ba4cff5000e2f4bcfcc3a5102ff375db467f6e6168ad951657cb3a5acd6822`  
		Last Modified: Tue, 07 Nov 2017 18:38:09 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1037afed8370701d45ef04634f47191f3bbc1aa7fbd587d759fe7f3b7b53ff`  
		Last Modified: Tue, 07 Nov 2017 18:39:10 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae12c74ecd557ff3ba65f5c28fa1cb046a62f79424fb3327a0fe466159ab700`  
		Last Modified: Tue, 07 Nov 2017 18:39:24 GMT  
		Size: 86.2 MB (86153073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b36522e2e98d1ec7ac518da149b78810f0f9aeee026f3f52d1e76ba6bbcfa03b`  
		Last Modified: Tue, 07 Nov 2017 18:39:10 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.4.1-alpine`

```console
$ docker pull logstash@sha256:956ba720b98b8c964b54dda5825375d00d22a0e4d0e1cc107d0f5d930bec2db6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:2.4.1-alpine` - linux; amd64

```console
$ docker pull logstash@sha256:87baf36fb9817da102d9dffd0158f30f0ab865a21934b88da045d0c18d9a90ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.4 MB (143389215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d1a0b7396cfd2b94cb7f0ebaa53be5f1deb3891283d4d32f46631fcd1e2caf3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:10:23 GMT
ENV LANG=C.UTF-8
# Fri, 01 Dec 2017 22:10:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 01 Dec 2017 22:11:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 01 Dec 2017 22:11:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 01 Dec 2017 22:11:39 GMT
ENV JAVA_VERSION=8u131
# Fri, 01 Dec 2017 22:11:40 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Fri, 01 Dec 2017 22:11:46 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 02 Dec 2017 00:08:45 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Sat, 02 Dec 2017 00:08:48 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Sat, 02 Dec 2017 00:08:51 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 02 Dec 2017 00:08:51 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Sat, 02 Dec 2017 00:09:43 GMT
ENV LOGSTASH_PATH=/opt/logstash/bin
# Sat, 02 Dec 2017 00:09:44 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 02 Dec 2017 00:09:44 GMT
ENV LOGSTASH_VERSION=2.4.1
# Sat, 02 Dec 2017 00:09:44 GMT
ENV LOGSTASH_TARBALL=https://download.elastic.co/logstash/logstash/logstash-2.4.1.tar.gz LOGSTASH_TARBALL_ASC= LOGSTASH_TARBALL_SHA1=5ee4f3fa0ad4b182b3f00b4181a20c4e31a907b4
# Sat, 02 Dec 2017 00:10:08 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Sat, 02 Dec 2017 00:10:14 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Sat, 02 Dec 2017 00:10:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 02 Dec 2017 00:10:14 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b3e089ad5bb56a471216d30899b22b6cc9887cb8a4f49e5ada714fd21a8c8e`  
		Last Modified: Fri, 01 Dec 2017 22:12:17 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5d0518dcc562a8559548d9d491d56cd22e51ebfdb1e1a772648b3252a3af65`  
		Last Modified: Fri, 01 Dec 2017 22:14:45 GMT  
		Size: 54.3 MB (54286409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887ef636f67880f2da8d5372a0ef2b9fdfba0ce1c051b349578e4914e2e5f616`  
		Last Modified: Sat, 02 Dec 2017 00:10:32 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32e92443dcbbe6e7b17e3637dcd7b0a5ed9a56ae0468967c80d5b33a74fbb4c`  
		Last Modified: Sat, 02 Dec 2017 00:10:31 GMT  
		Size: 1.5 MB (1506217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96956b20dcf40b4d3f9ea694615f4e858abeaeddee54aad815676be0cd724a2`  
		Last Modified: Sat, 02 Dec 2017 00:10:29 GMT  
		Size: 94.4 KB (94406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3bde5e8c0336ee28c7e2aa628f6bb6637adececc391b12077ee67f12eb40f8`  
		Last Modified: Sat, 02 Dec 2017 00:12:31 GMT  
		Size: 85.5 MB (85508885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02c60294805869b71efceca599dd027adc90129bcade2e3ec4d0f7b2ffc84e6`  
		Last Modified: Sat, 02 Dec 2017 00:12:17 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.4-alpine`

```console
$ docker pull logstash@sha256:956ba720b98b8c964b54dda5825375d00d22a0e4d0e1cc107d0f5d930bec2db6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:2.4-alpine` - linux; amd64

```console
$ docker pull logstash@sha256:87baf36fb9817da102d9dffd0158f30f0ab865a21934b88da045d0c18d9a90ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.4 MB (143389215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d1a0b7396cfd2b94cb7f0ebaa53be5f1deb3891283d4d32f46631fcd1e2caf3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:10:23 GMT
ENV LANG=C.UTF-8
# Fri, 01 Dec 2017 22:10:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 01 Dec 2017 22:11:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 01 Dec 2017 22:11:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 01 Dec 2017 22:11:39 GMT
ENV JAVA_VERSION=8u131
# Fri, 01 Dec 2017 22:11:40 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Fri, 01 Dec 2017 22:11:46 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 02 Dec 2017 00:08:45 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Sat, 02 Dec 2017 00:08:48 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Sat, 02 Dec 2017 00:08:51 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 02 Dec 2017 00:08:51 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Sat, 02 Dec 2017 00:09:43 GMT
ENV LOGSTASH_PATH=/opt/logstash/bin
# Sat, 02 Dec 2017 00:09:44 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 02 Dec 2017 00:09:44 GMT
ENV LOGSTASH_VERSION=2.4.1
# Sat, 02 Dec 2017 00:09:44 GMT
ENV LOGSTASH_TARBALL=https://download.elastic.co/logstash/logstash/logstash-2.4.1.tar.gz LOGSTASH_TARBALL_ASC= LOGSTASH_TARBALL_SHA1=5ee4f3fa0ad4b182b3f00b4181a20c4e31a907b4
# Sat, 02 Dec 2017 00:10:08 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Sat, 02 Dec 2017 00:10:14 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Sat, 02 Dec 2017 00:10:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 02 Dec 2017 00:10:14 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b3e089ad5bb56a471216d30899b22b6cc9887cb8a4f49e5ada714fd21a8c8e`  
		Last Modified: Fri, 01 Dec 2017 22:12:17 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5d0518dcc562a8559548d9d491d56cd22e51ebfdb1e1a772648b3252a3af65`  
		Last Modified: Fri, 01 Dec 2017 22:14:45 GMT  
		Size: 54.3 MB (54286409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887ef636f67880f2da8d5372a0ef2b9fdfba0ce1c051b349578e4914e2e5f616`  
		Last Modified: Sat, 02 Dec 2017 00:10:32 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32e92443dcbbe6e7b17e3637dcd7b0a5ed9a56ae0468967c80d5b33a74fbb4c`  
		Last Modified: Sat, 02 Dec 2017 00:10:31 GMT  
		Size: 1.5 MB (1506217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96956b20dcf40b4d3f9ea694615f4e858abeaeddee54aad815676be0cd724a2`  
		Last Modified: Sat, 02 Dec 2017 00:10:29 GMT  
		Size: 94.4 KB (94406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3bde5e8c0336ee28c7e2aa628f6bb6637adececc391b12077ee67f12eb40f8`  
		Last Modified: Sat, 02 Dec 2017 00:12:31 GMT  
		Size: 85.5 MB (85508885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02c60294805869b71efceca599dd027adc90129bcade2e3ec4d0f7b2ffc84e6`  
		Last Modified: Sat, 02 Dec 2017 00:12:17 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2-alpine`

```console
$ docker pull logstash@sha256:956ba720b98b8c964b54dda5825375d00d22a0e4d0e1cc107d0f5d930bec2db6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:2-alpine` - linux; amd64

```console
$ docker pull logstash@sha256:87baf36fb9817da102d9dffd0158f30f0ab865a21934b88da045d0c18d9a90ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.4 MB (143389215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d1a0b7396cfd2b94cb7f0ebaa53be5f1deb3891283d4d32f46631fcd1e2caf3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:10:23 GMT
ENV LANG=C.UTF-8
# Fri, 01 Dec 2017 22:10:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 01 Dec 2017 22:11:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 01 Dec 2017 22:11:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 01 Dec 2017 22:11:39 GMT
ENV JAVA_VERSION=8u131
# Fri, 01 Dec 2017 22:11:40 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Fri, 01 Dec 2017 22:11:46 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 02 Dec 2017 00:08:45 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Sat, 02 Dec 2017 00:08:48 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Sat, 02 Dec 2017 00:08:51 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 02 Dec 2017 00:08:51 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Sat, 02 Dec 2017 00:09:43 GMT
ENV LOGSTASH_PATH=/opt/logstash/bin
# Sat, 02 Dec 2017 00:09:44 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 02 Dec 2017 00:09:44 GMT
ENV LOGSTASH_VERSION=2.4.1
# Sat, 02 Dec 2017 00:09:44 GMT
ENV LOGSTASH_TARBALL=https://download.elastic.co/logstash/logstash/logstash-2.4.1.tar.gz LOGSTASH_TARBALL_ASC= LOGSTASH_TARBALL_SHA1=5ee4f3fa0ad4b182b3f00b4181a20c4e31a907b4
# Sat, 02 Dec 2017 00:10:08 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Sat, 02 Dec 2017 00:10:14 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Sat, 02 Dec 2017 00:10:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 02 Dec 2017 00:10:14 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b3e089ad5bb56a471216d30899b22b6cc9887cb8a4f49e5ada714fd21a8c8e`  
		Last Modified: Fri, 01 Dec 2017 22:12:17 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5d0518dcc562a8559548d9d491d56cd22e51ebfdb1e1a772648b3252a3af65`  
		Last Modified: Fri, 01 Dec 2017 22:14:45 GMT  
		Size: 54.3 MB (54286409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887ef636f67880f2da8d5372a0ef2b9fdfba0ce1c051b349578e4914e2e5f616`  
		Last Modified: Sat, 02 Dec 2017 00:10:32 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32e92443dcbbe6e7b17e3637dcd7b0a5ed9a56ae0468967c80d5b33a74fbb4c`  
		Last Modified: Sat, 02 Dec 2017 00:10:31 GMT  
		Size: 1.5 MB (1506217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96956b20dcf40b4d3f9ea694615f4e858abeaeddee54aad815676be0cd724a2`  
		Last Modified: Sat, 02 Dec 2017 00:10:29 GMT  
		Size: 94.4 KB (94406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3bde5e8c0336ee28c7e2aa628f6bb6637adececc391b12077ee67f12eb40f8`  
		Last Modified: Sat, 02 Dec 2017 00:12:31 GMT  
		Size: 85.5 MB (85508885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02c60294805869b71efceca599dd027adc90129bcade2e3ec4d0f7b2ffc84e6`  
		Last Modified: Sat, 02 Dec 2017 00:12:17 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5`

```console
$ docker pull logstash@sha256:fd55b224a8985474bbb12c61bd17bbe8d226fd2860adb8ac200f4a34878903b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5` - linux; amd64

```console
$ docker pull logstash@sha256:9b92eae25b71f6c6c570de5e41bd445e23b55d0305185403f787c9d6b799cf4e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.0 MB (334975290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:237fefafdf2b1a13113616590bb72a7cc0e1242b6974d2b0f8b58fd45d3627c8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Tue, 07 Nov 2017 18:36:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 Nov 2017 18:36:15 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 07 Nov 2017 18:36:15 GMT
ENV GOSU_VERSION=1.10
# Tue, 07 Nov 2017 18:36:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 07 Nov 2017 18:36:35 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 07 Nov 2017 18:36:36 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/logstash.list
# Wed, 08 Nov 2017 05:37:28 GMT
ENV LOGSTASH_VERSION=5.6.4
# Wed, 08 Nov 2017 05:37:28 GMT
ENV LOGSTASH_DEB_VERSION=1:5.6.4-1
# Wed, 08 Nov 2017 05:37:50 GMT
RUN set -ex; 	case "$LOGSTASH_VERSION" in 		2.*) apt-get update -o 'APT::Hashes::SHA1::Weak=yes' ;; 		*) apt-get update ;; 	esac; 	apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION"; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 05:37:50 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 Nov 2017 05:37:50 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 08 Nov 2017 05:37:51 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Wed, 08 Nov 2017 05:37:52 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Wed, 08 Nov 2017 05:37:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 Nov 2017 05:37:52 GMT
CMD ["-e" ""]
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
	-	`sha256:b388120c7c530dc5cb4ca99426fd55c3e3c421dbd3dce639e068148b6e2964e8`  
		Last Modified: Tue, 07 Nov 2017 18:38:12 GMT  
		Size: 1.6 MB (1588364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:296cd8b530def2635ae29fbc14b7f5ddf5ef7a03eaf336c22bb34d1dacc2666b`  
		Last Modified: Tue, 07 Nov 2017 18:38:11 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b464fb45511bcfbb793a63c667fb202d43d6cd88c188405b574308383fc22d27`  
		Last Modified: Tue, 07 Nov 2017 18:38:11 GMT  
		Size: 500.9 KB (500906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ba4cff5000e2f4bcfcc3a5102ff375db467f6e6168ad951657cb3a5acd6822`  
		Last Modified: Tue, 07 Nov 2017 18:38:09 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ea6dba01b54502b1daad92e6fe95a556178203e1998c18fbca299647f33dfd`  
		Last Modified: Tue, 07 Nov 2017 18:38:09 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bba3a693ef70d06394a4b7764b24279a557c1185def8fd0e54e3b1666e13fbd`  
		Last Modified: Wed, 08 Nov 2017 05:38:38 GMT  
		Size: 105.8 MB (105792181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90104e86fc163a7fb2a05e5a27e4dd3fed5d7e8ef98915ed8dd4180510abf92c`  
		Last Modified: Wed, 08 Nov 2017 05:38:26 GMT  
		Size: 2.7 KB (2664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1070a30fd44d30bd33645e83649f92e7cd0c5ec13d8e5540c6fc7500cb8079a`  
		Last Modified: Wed, 08 Nov 2017 05:38:27 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.6`

```console
$ docker pull logstash@sha256:fd55b224a8985474bbb12c61bd17bbe8d226fd2860adb8ac200f4a34878903b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5.6` - linux; amd64

```console
$ docker pull logstash@sha256:9b92eae25b71f6c6c570de5e41bd445e23b55d0305185403f787c9d6b799cf4e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.0 MB (334975290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:237fefafdf2b1a13113616590bb72a7cc0e1242b6974d2b0f8b58fd45d3627c8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Tue, 07 Nov 2017 18:36:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 Nov 2017 18:36:15 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 07 Nov 2017 18:36:15 GMT
ENV GOSU_VERSION=1.10
# Tue, 07 Nov 2017 18:36:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 07 Nov 2017 18:36:35 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 07 Nov 2017 18:36:36 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/logstash.list
# Wed, 08 Nov 2017 05:37:28 GMT
ENV LOGSTASH_VERSION=5.6.4
# Wed, 08 Nov 2017 05:37:28 GMT
ENV LOGSTASH_DEB_VERSION=1:5.6.4-1
# Wed, 08 Nov 2017 05:37:50 GMT
RUN set -ex; 	case "$LOGSTASH_VERSION" in 		2.*) apt-get update -o 'APT::Hashes::SHA1::Weak=yes' ;; 		*) apt-get update ;; 	esac; 	apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION"; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 05:37:50 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 Nov 2017 05:37:50 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 08 Nov 2017 05:37:51 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Wed, 08 Nov 2017 05:37:52 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Wed, 08 Nov 2017 05:37:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 Nov 2017 05:37:52 GMT
CMD ["-e" ""]
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
	-	`sha256:b388120c7c530dc5cb4ca99426fd55c3e3c421dbd3dce639e068148b6e2964e8`  
		Last Modified: Tue, 07 Nov 2017 18:38:12 GMT  
		Size: 1.6 MB (1588364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:296cd8b530def2635ae29fbc14b7f5ddf5ef7a03eaf336c22bb34d1dacc2666b`  
		Last Modified: Tue, 07 Nov 2017 18:38:11 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b464fb45511bcfbb793a63c667fb202d43d6cd88c188405b574308383fc22d27`  
		Last Modified: Tue, 07 Nov 2017 18:38:11 GMT  
		Size: 500.9 KB (500906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ba4cff5000e2f4bcfcc3a5102ff375db467f6e6168ad951657cb3a5acd6822`  
		Last Modified: Tue, 07 Nov 2017 18:38:09 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ea6dba01b54502b1daad92e6fe95a556178203e1998c18fbca299647f33dfd`  
		Last Modified: Tue, 07 Nov 2017 18:38:09 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bba3a693ef70d06394a4b7764b24279a557c1185def8fd0e54e3b1666e13fbd`  
		Last Modified: Wed, 08 Nov 2017 05:38:38 GMT  
		Size: 105.8 MB (105792181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90104e86fc163a7fb2a05e5a27e4dd3fed5d7e8ef98915ed8dd4180510abf92c`  
		Last Modified: Wed, 08 Nov 2017 05:38:26 GMT  
		Size: 2.7 KB (2664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1070a30fd44d30bd33645e83649f92e7cd0c5ec13d8e5540c6fc7500cb8079a`  
		Last Modified: Wed, 08 Nov 2017 05:38:27 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.6.4`

```console
$ docker pull logstash@sha256:fd55b224a8985474bbb12c61bd17bbe8d226fd2860adb8ac200f4a34878903b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5.6.4` - linux; amd64

```console
$ docker pull logstash@sha256:9b92eae25b71f6c6c570de5e41bd445e23b55d0305185403f787c9d6b799cf4e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.0 MB (334975290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:237fefafdf2b1a13113616590bb72a7cc0e1242b6974d2b0f8b58fd45d3627c8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Tue, 07 Nov 2017 18:36:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 Nov 2017 18:36:15 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 07 Nov 2017 18:36:15 GMT
ENV GOSU_VERSION=1.10
# Tue, 07 Nov 2017 18:36:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 07 Nov 2017 18:36:35 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 07 Nov 2017 18:36:36 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/logstash.list
# Wed, 08 Nov 2017 05:37:28 GMT
ENV LOGSTASH_VERSION=5.6.4
# Wed, 08 Nov 2017 05:37:28 GMT
ENV LOGSTASH_DEB_VERSION=1:5.6.4-1
# Wed, 08 Nov 2017 05:37:50 GMT
RUN set -ex; 	case "$LOGSTASH_VERSION" in 		2.*) apt-get update -o 'APT::Hashes::SHA1::Weak=yes' ;; 		*) apt-get update ;; 	esac; 	apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION"; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 05:37:50 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 Nov 2017 05:37:50 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 08 Nov 2017 05:37:51 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Wed, 08 Nov 2017 05:37:52 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Wed, 08 Nov 2017 05:37:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 Nov 2017 05:37:52 GMT
CMD ["-e" ""]
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
	-	`sha256:b388120c7c530dc5cb4ca99426fd55c3e3c421dbd3dce639e068148b6e2964e8`  
		Last Modified: Tue, 07 Nov 2017 18:38:12 GMT  
		Size: 1.6 MB (1588364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:296cd8b530def2635ae29fbc14b7f5ddf5ef7a03eaf336c22bb34d1dacc2666b`  
		Last Modified: Tue, 07 Nov 2017 18:38:11 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b464fb45511bcfbb793a63c667fb202d43d6cd88c188405b574308383fc22d27`  
		Last Modified: Tue, 07 Nov 2017 18:38:11 GMT  
		Size: 500.9 KB (500906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ba4cff5000e2f4bcfcc3a5102ff375db467f6e6168ad951657cb3a5acd6822`  
		Last Modified: Tue, 07 Nov 2017 18:38:09 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ea6dba01b54502b1daad92e6fe95a556178203e1998c18fbca299647f33dfd`  
		Last Modified: Tue, 07 Nov 2017 18:38:09 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bba3a693ef70d06394a4b7764b24279a557c1185def8fd0e54e3b1666e13fbd`  
		Last Modified: Wed, 08 Nov 2017 05:38:38 GMT  
		Size: 105.8 MB (105792181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90104e86fc163a7fb2a05e5a27e4dd3fed5d7e8ef98915ed8dd4180510abf92c`  
		Last Modified: Wed, 08 Nov 2017 05:38:26 GMT  
		Size: 2.7 KB (2664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1070a30fd44d30bd33645e83649f92e7cd0c5ec13d8e5540c6fc7500cb8079a`  
		Last Modified: Wed, 08 Nov 2017 05:38:27 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.6.4-alpine`

```console
$ docker pull logstash@sha256:b754acede32286d42e5ab93aabacd8ab3e8e860e1d33af2bacfb78b1ef38dd8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5.6.4-alpine` - linux; amd64

```console
$ docker pull logstash@sha256:9873310b445e9f4432b5af693c3f7a735e486545a4b45cce6a91dcdff25a5c91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.2 MB (163241092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9df509d254a22094d468e3f76eec1f2a0f9732a04a42ac6def06ebb1040b764d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:10:23 GMT
ENV LANG=C.UTF-8
# Fri, 01 Dec 2017 22:10:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 01 Dec 2017 22:11:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 01 Dec 2017 22:11:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 01 Dec 2017 22:11:39 GMT
ENV JAVA_VERSION=8u131
# Fri, 01 Dec 2017 22:11:40 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Fri, 01 Dec 2017 22:11:46 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 02 Dec 2017 00:08:45 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Sat, 02 Dec 2017 00:08:48 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Sat, 02 Dec 2017 00:08:51 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 02 Dec 2017 00:08:51 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Sat, 02 Dec 2017 00:08:51 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Sat, 02 Dec 2017 00:08:51 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 02 Dec 2017 00:08:51 GMT
ENV LOGSTASH_VERSION=5.6.4
# Sat, 02 Dec 2017 00:08:52 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.4.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.4.tar.gz.asc LOGSTASH_TARBALL_SHA1=e50bf4ec506c4172ef269a353c62e69441d1119d
# Sat, 02 Dec 2017 00:09:27 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Sat, 02 Dec 2017 00:09:31 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Sat, 02 Dec 2017 00:09:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 02 Dec 2017 00:09:32 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b3e089ad5bb56a471216d30899b22b6cc9887cb8a4f49e5ada714fd21a8c8e`  
		Last Modified: Fri, 01 Dec 2017 22:12:17 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5d0518dcc562a8559548d9d491d56cd22e51ebfdb1e1a772648b3252a3af65`  
		Last Modified: Fri, 01 Dec 2017 22:14:45 GMT  
		Size: 54.3 MB (54286409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887ef636f67880f2da8d5372a0ef2b9fdfba0ce1c051b349578e4914e2e5f616`  
		Last Modified: Sat, 02 Dec 2017 00:10:32 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32e92443dcbbe6e7b17e3637dcd7b0a5ed9a56ae0468967c80d5b33a74fbb4c`  
		Last Modified: Sat, 02 Dec 2017 00:10:31 GMT  
		Size: 1.5 MB (1506217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96956b20dcf40b4d3f9ea694615f4e858abeaeddee54aad815676be0cd724a2`  
		Last Modified: Sat, 02 Dec 2017 00:10:29 GMT  
		Size: 94.4 KB (94406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eeaaa29d624d91c83408cdd6766b4943bc6c7b2959ff12d7cf7362c1bd89a9c`  
		Last Modified: Sat, 02 Dec 2017 00:10:43 GMT  
		Size: 105.4 MB (105360762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07109a0fe802e1bf88f59a8eb228edc79ce4dbdce637af7df95ee63966c48f9a`  
		Last Modified: Sat, 02 Dec 2017 00:10:29 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.6-alpine`

```console
$ docker pull logstash@sha256:b754acede32286d42e5ab93aabacd8ab3e8e860e1d33af2bacfb78b1ef38dd8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5.6-alpine` - linux; amd64

```console
$ docker pull logstash@sha256:9873310b445e9f4432b5af693c3f7a735e486545a4b45cce6a91dcdff25a5c91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.2 MB (163241092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9df509d254a22094d468e3f76eec1f2a0f9732a04a42ac6def06ebb1040b764d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:10:23 GMT
ENV LANG=C.UTF-8
# Fri, 01 Dec 2017 22:10:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 01 Dec 2017 22:11:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 01 Dec 2017 22:11:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 01 Dec 2017 22:11:39 GMT
ENV JAVA_VERSION=8u131
# Fri, 01 Dec 2017 22:11:40 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Fri, 01 Dec 2017 22:11:46 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 02 Dec 2017 00:08:45 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Sat, 02 Dec 2017 00:08:48 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Sat, 02 Dec 2017 00:08:51 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 02 Dec 2017 00:08:51 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Sat, 02 Dec 2017 00:08:51 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Sat, 02 Dec 2017 00:08:51 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 02 Dec 2017 00:08:51 GMT
ENV LOGSTASH_VERSION=5.6.4
# Sat, 02 Dec 2017 00:08:52 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.4.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.4.tar.gz.asc LOGSTASH_TARBALL_SHA1=e50bf4ec506c4172ef269a353c62e69441d1119d
# Sat, 02 Dec 2017 00:09:27 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Sat, 02 Dec 2017 00:09:31 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Sat, 02 Dec 2017 00:09:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 02 Dec 2017 00:09:32 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b3e089ad5bb56a471216d30899b22b6cc9887cb8a4f49e5ada714fd21a8c8e`  
		Last Modified: Fri, 01 Dec 2017 22:12:17 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5d0518dcc562a8559548d9d491d56cd22e51ebfdb1e1a772648b3252a3af65`  
		Last Modified: Fri, 01 Dec 2017 22:14:45 GMT  
		Size: 54.3 MB (54286409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887ef636f67880f2da8d5372a0ef2b9fdfba0ce1c051b349578e4914e2e5f616`  
		Last Modified: Sat, 02 Dec 2017 00:10:32 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32e92443dcbbe6e7b17e3637dcd7b0a5ed9a56ae0468967c80d5b33a74fbb4c`  
		Last Modified: Sat, 02 Dec 2017 00:10:31 GMT  
		Size: 1.5 MB (1506217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96956b20dcf40b4d3f9ea694615f4e858abeaeddee54aad815676be0cd724a2`  
		Last Modified: Sat, 02 Dec 2017 00:10:29 GMT  
		Size: 94.4 KB (94406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eeaaa29d624d91c83408cdd6766b4943bc6c7b2959ff12d7cf7362c1bd89a9c`  
		Last Modified: Sat, 02 Dec 2017 00:10:43 GMT  
		Size: 105.4 MB (105360762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07109a0fe802e1bf88f59a8eb228edc79ce4dbdce637af7df95ee63966c48f9a`  
		Last Modified: Sat, 02 Dec 2017 00:10:29 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5-alpine`

```console
$ docker pull logstash@sha256:b754acede32286d42e5ab93aabacd8ab3e8e860e1d33af2bacfb78b1ef38dd8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5-alpine` - linux; amd64

```console
$ docker pull logstash@sha256:9873310b445e9f4432b5af693c3f7a735e486545a4b45cce6a91dcdff25a5c91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.2 MB (163241092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9df509d254a22094d468e3f76eec1f2a0f9732a04a42ac6def06ebb1040b764d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:10:23 GMT
ENV LANG=C.UTF-8
# Fri, 01 Dec 2017 22:10:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 01 Dec 2017 22:11:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 01 Dec 2017 22:11:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 01 Dec 2017 22:11:39 GMT
ENV JAVA_VERSION=8u131
# Fri, 01 Dec 2017 22:11:40 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Fri, 01 Dec 2017 22:11:46 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 02 Dec 2017 00:08:45 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Sat, 02 Dec 2017 00:08:48 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Sat, 02 Dec 2017 00:08:51 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 02 Dec 2017 00:08:51 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Sat, 02 Dec 2017 00:08:51 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Sat, 02 Dec 2017 00:08:51 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 02 Dec 2017 00:08:51 GMT
ENV LOGSTASH_VERSION=5.6.4
# Sat, 02 Dec 2017 00:08:52 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.4.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.4.tar.gz.asc LOGSTASH_TARBALL_SHA1=e50bf4ec506c4172ef269a353c62e69441d1119d
# Sat, 02 Dec 2017 00:09:27 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Sat, 02 Dec 2017 00:09:31 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Sat, 02 Dec 2017 00:09:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 02 Dec 2017 00:09:32 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b3e089ad5bb56a471216d30899b22b6cc9887cb8a4f49e5ada714fd21a8c8e`  
		Last Modified: Fri, 01 Dec 2017 22:12:17 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5d0518dcc562a8559548d9d491d56cd22e51ebfdb1e1a772648b3252a3af65`  
		Last Modified: Fri, 01 Dec 2017 22:14:45 GMT  
		Size: 54.3 MB (54286409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887ef636f67880f2da8d5372a0ef2b9fdfba0ce1c051b349578e4914e2e5f616`  
		Last Modified: Sat, 02 Dec 2017 00:10:32 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32e92443dcbbe6e7b17e3637dcd7b0a5ed9a56ae0468967c80d5b33a74fbb4c`  
		Last Modified: Sat, 02 Dec 2017 00:10:31 GMT  
		Size: 1.5 MB (1506217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96956b20dcf40b4d3f9ea694615f4e858abeaeddee54aad815676be0cd724a2`  
		Last Modified: Sat, 02 Dec 2017 00:10:29 GMT  
		Size: 94.4 KB (94406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eeaaa29d624d91c83408cdd6766b4943bc6c7b2959ff12d7cf7362c1bd89a9c`  
		Last Modified: Sat, 02 Dec 2017 00:10:43 GMT  
		Size: 105.4 MB (105360762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07109a0fe802e1bf88f59a8eb228edc79ce4dbdce637af7df95ee63966c48f9a`  
		Last Modified: Sat, 02 Dec 2017 00:10:29 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:alpine`

```console
$ docker pull logstash@sha256:b754acede32286d42e5ab93aabacd8ab3e8e860e1d33af2bacfb78b1ef38dd8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:alpine` - linux; amd64

```console
$ docker pull logstash@sha256:9873310b445e9f4432b5af693c3f7a735e486545a4b45cce6a91dcdff25a5c91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.2 MB (163241092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9df509d254a22094d468e3f76eec1f2a0f9732a04a42ac6def06ebb1040b764d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:10:23 GMT
ENV LANG=C.UTF-8
# Fri, 01 Dec 2017 22:10:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 01 Dec 2017 22:11:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 01 Dec 2017 22:11:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 01 Dec 2017 22:11:39 GMT
ENV JAVA_VERSION=8u131
# Fri, 01 Dec 2017 22:11:40 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Fri, 01 Dec 2017 22:11:46 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 02 Dec 2017 00:08:45 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Sat, 02 Dec 2017 00:08:48 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Sat, 02 Dec 2017 00:08:51 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 02 Dec 2017 00:08:51 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Sat, 02 Dec 2017 00:08:51 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Sat, 02 Dec 2017 00:08:51 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 02 Dec 2017 00:08:51 GMT
ENV LOGSTASH_VERSION=5.6.4
# Sat, 02 Dec 2017 00:08:52 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.4.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.4.tar.gz.asc LOGSTASH_TARBALL_SHA1=e50bf4ec506c4172ef269a353c62e69441d1119d
# Sat, 02 Dec 2017 00:09:27 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Sat, 02 Dec 2017 00:09:31 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Sat, 02 Dec 2017 00:09:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 02 Dec 2017 00:09:32 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b3e089ad5bb56a471216d30899b22b6cc9887cb8a4f49e5ada714fd21a8c8e`  
		Last Modified: Fri, 01 Dec 2017 22:12:17 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5d0518dcc562a8559548d9d491d56cd22e51ebfdb1e1a772648b3252a3af65`  
		Last Modified: Fri, 01 Dec 2017 22:14:45 GMT  
		Size: 54.3 MB (54286409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887ef636f67880f2da8d5372a0ef2b9fdfba0ce1c051b349578e4914e2e5f616`  
		Last Modified: Sat, 02 Dec 2017 00:10:32 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32e92443dcbbe6e7b17e3637dcd7b0a5ed9a56ae0468967c80d5b33a74fbb4c`  
		Last Modified: Sat, 02 Dec 2017 00:10:31 GMT  
		Size: 1.5 MB (1506217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96956b20dcf40b4d3f9ea694615f4e858abeaeddee54aad815676be0cd724a2`  
		Last Modified: Sat, 02 Dec 2017 00:10:29 GMT  
		Size: 94.4 KB (94406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eeaaa29d624d91c83408cdd6766b4943bc6c7b2959ff12d7cf7362c1bd89a9c`  
		Last Modified: Sat, 02 Dec 2017 00:10:43 GMT  
		Size: 105.4 MB (105360762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07109a0fe802e1bf88f59a8eb228edc79ce4dbdce637af7df95ee63966c48f9a`  
		Last Modified: Sat, 02 Dec 2017 00:10:29 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:latest`

```console
$ docker pull logstash@sha256:fd55b224a8985474bbb12c61bd17bbe8d226fd2860adb8ac200f4a34878903b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:latest` - linux; amd64

```console
$ docker pull logstash@sha256:9b92eae25b71f6c6c570de5e41bd445e23b55d0305185403f787c9d6b799cf4e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.0 MB (334975290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:237fefafdf2b1a13113616590bb72a7cc0e1242b6974d2b0f8b58fd45d3627c8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

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
# Tue, 07 Nov 2017 18:36:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https 		libzmq5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 Nov 2017 18:36:15 GMT
RUN mkdir -p /usr/local/lib 	&& ln -s /usr/lib/*/libzmq.so.3 /usr/local/lib/libzmq.so
# Tue, 07 Nov 2017 18:36:15 GMT
ENV GOSU_VERSION=1.10
# Tue, 07 Nov 2017 18:36:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 07 Nov 2017 18:36:35 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 07 Nov 2017 18:36:36 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/logstash.list
# Wed, 08 Nov 2017 05:37:28 GMT
ENV LOGSTASH_VERSION=5.6.4
# Wed, 08 Nov 2017 05:37:28 GMT
ENV LOGSTASH_DEB_VERSION=1:5.6.4-1
# Wed, 08 Nov 2017 05:37:50 GMT
RUN set -ex; 	case "$LOGSTASH_VERSION" in 		2.*) apt-get update -o 'APT::Hashes::SHA1::Weak=yes' ;; 		*) apt-get update ;; 	esac; 	apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION"; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 05:37:50 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 Nov 2017 05:37:50 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Wed, 08 Nov 2017 05:37:51 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Wed, 08 Nov 2017 05:37:52 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Wed, 08 Nov 2017 05:37:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 08 Nov 2017 05:37:52 GMT
CMD ["-e" ""]
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
	-	`sha256:b388120c7c530dc5cb4ca99426fd55c3e3c421dbd3dce639e068148b6e2964e8`  
		Last Modified: Tue, 07 Nov 2017 18:38:12 GMT  
		Size: 1.6 MB (1588364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:296cd8b530def2635ae29fbc14b7f5ddf5ef7a03eaf336c22bb34d1dacc2666b`  
		Last Modified: Tue, 07 Nov 2017 18:38:11 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b464fb45511bcfbb793a63c667fb202d43d6cd88c188405b574308383fc22d27`  
		Last Modified: Tue, 07 Nov 2017 18:38:11 GMT  
		Size: 500.9 KB (500906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ba4cff5000e2f4bcfcc3a5102ff375db467f6e6168ad951657cb3a5acd6822`  
		Last Modified: Tue, 07 Nov 2017 18:38:09 GMT  
		Size: 1.4 KB (1446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ea6dba01b54502b1daad92e6fe95a556178203e1998c18fbca299647f33dfd`  
		Last Modified: Tue, 07 Nov 2017 18:38:09 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bba3a693ef70d06394a4b7764b24279a557c1185def8fd0e54e3b1666e13fbd`  
		Last Modified: Wed, 08 Nov 2017 05:38:38 GMT  
		Size: 105.8 MB (105792181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90104e86fc163a7fb2a05e5a27e4dd3fed5d7e8ef98915ed8dd4180510abf92c`  
		Last Modified: Wed, 08 Nov 2017 05:38:26 GMT  
		Size: 2.7 KB (2664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1070a30fd44d30bd33645e83649f92e7cd0c5ec13d8e5540c6fc7500cb8079a`  
		Last Modified: Wed, 08 Nov 2017 05:38:27 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
