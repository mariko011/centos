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
-	[`logstash:5.6.3`](#logstash563)
-	[`logstash:5.6.3-alpine`](#logstash563-alpine)
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
$ docker pull logstash@sha256:6b9f7211b1f17649833a1c488a23869024278c47c6a01583cc66e5ec118a2d9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:2.4.1-alpine` - linux; amd64

```console
$ docker pull logstash@sha256:a8bf720619774d70cdc03486f33d8df8f2d20437c73bb6b22f90da784faa209b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.4 MB (143388995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aab4a46f1cb2128e0996c2f39e5cd0b4a4d96c491db5fba84bddae4a9b1c95ba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 04 Nov 2017 05:50:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_VERSION=8u131
# Sat, 04 Nov 2017 05:50:53 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 04 Nov 2017 05:51:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 16:49:06 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Sat, 04 Nov 2017 16:49:11 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Sat, 04 Nov 2017 16:49:14 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Nov 2017 16:49:14 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Sat, 04 Nov 2017 16:50:13 GMT
ENV LOGSTASH_PATH=/opt/logstash/bin
# Sat, 04 Nov 2017 16:50:14 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 16:50:14 GMT
ENV LOGSTASH_VERSION=2.4.1
# Sat, 04 Nov 2017 16:50:14 GMT
ENV LOGSTASH_TARBALL=https://download.elastic.co/logstash/logstash/logstash-2.4.1.tar.gz LOGSTASH_TARBALL_ASC= LOGSTASH_TARBALL_SHA1=5ee4f3fa0ad4b182b3f00b4181a20c4e31a907b4
# Sat, 04 Nov 2017 16:50:37 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Sat, 04 Nov 2017 16:50:38 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Sat, 04 Nov 2017 16:50:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 16:50:38 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b27fd892ecb54137910751102dfb835b185276f359a85b2ba953ce4436a4773`  
		Last Modified: Sat, 04 Nov 2017 06:04:34 GMT  
		Size: 54.3 MB (54286387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3357508d26ddca43bea2522de0fdbf00d7a58d5464d258a6f01944ac83578321`  
		Last Modified: Sat, 04 Nov 2017 16:51:25 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58342654a5a24a796c687177aa31104d36748ba0e8ec4e77589e5ab1cb79736`  
		Last Modified: Sat, 04 Nov 2017 16:51:26 GMT  
		Size: 1.5 MB (1506187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa7fa729ec3c240994186ad6c95297fb9130ab834c931fc0d0e88d59e431dce`  
		Last Modified: Sat, 04 Nov 2017 16:51:25 GMT  
		Size: 94.4 KB (94402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96b6a80019f9ea864b396e0cce03c219f0c77750b2d40fdad265caff34bcd95`  
		Last Modified: Sat, 04 Nov 2017 16:52:51 GMT  
		Size: 85.5 MB (85508780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2360bb8af59028d2465de87fb0689843896fc4a593da8a937a199c3d28866d41`  
		Last Modified: Sat, 04 Nov 2017 16:52:36 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2.4-alpine`

```console
$ docker pull logstash@sha256:6b9f7211b1f17649833a1c488a23869024278c47c6a01583cc66e5ec118a2d9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:2.4-alpine` - linux; amd64

```console
$ docker pull logstash@sha256:a8bf720619774d70cdc03486f33d8df8f2d20437c73bb6b22f90da784faa209b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.4 MB (143388995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aab4a46f1cb2128e0996c2f39e5cd0b4a4d96c491db5fba84bddae4a9b1c95ba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 04 Nov 2017 05:50:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_VERSION=8u131
# Sat, 04 Nov 2017 05:50:53 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 04 Nov 2017 05:51:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 16:49:06 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Sat, 04 Nov 2017 16:49:11 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Sat, 04 Nov 2017 16:49:14 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Nov 2017 16:49:14 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Sat, 04 Nov 2017 16:50:13 GMT
ENV LOGSTASH_PATH=/opt/logstash/bin
# Sat, 04 Nov 2017 16:50:14 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 16:50:14 GMT
ENV LOGSTASH_VERSION=2.4.1
# Sat, 04 Nov 2017 16:50:14 GMT
ENV LOGSTASH_TARBALL=https://download.elastic.co/logstash/logstash/logstash-2.4.1.tar.gz LOGSTASH_TARBALL_ASC= LOGSTASH_TARBALL_SHA1=5ee4f3fa0ad4b182b3f00b4181a20c4e31a907b4
# Sat, 04 Nov 2017 16:50:37 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Sat, 04 Nov 2017 16:50:38 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Sat, 04 Nov 2017 16:50:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 16:50:38 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b27fd892ecb54137910751102dfb835b185276f359a85b2ba953ce4436a4773`  
		Last Modified: Sat, 04 Nov 2017 06:04:34 GMT  
		Size: 54.3 MB (54286387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3357508d26ddca43bea2522de0fdbf00d7a58d5464d258a6f01944ac83578321`  
		Last Modified: Sat, 04 Nov 2017 16:51:25 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58342654a5a24a796c687177aa31104d36748ba0e8ec4e77589e5ab1cb79736`  
		Last Modified: Sat, 04 Nov 2017 16:51:26 GMT  
		Size: 1.5 MB (1506187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa7fa729ec3c240994186ad6c95297fb9130ab834c931fc0d0e88d59e431dce`  
		Last Modified: Sat, 04 Nov 2017 16:51:25 GMT  
		Size: 94.4 KB (94402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96b6a80019f9ea864b396e0cce03c219f0c77750b2d40fdad265caff34bcd95`  
		Last Modified: Sat, 04 Nov 2017 16:52:51 GMT  
		Size: 85.5 MB (85508780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2360bb8af59028d2465de87fb0689843896fc4a593da8a937a199c3d28866d41`  
		Last Modified: Sat, 04 Nov 2017 16:52:36 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:2-alpine`

```console
$ docker pull logstash@sha256:6b9f7211b1f17649833a1c488a23869024278c47c6a01583cc66e5ec118a2d9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:2-alpine` - linux; amd64

```console
$ docker pull logstash@sha256:a8bf720619774d70cdc03486f33d8df8f2d20437c73bb6b22f90da784faa209b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.4 MB (143388995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aab4a46f1cb2128e0996c2f39e5cd0b4a4d96c491db5fba84bddae4a9b1c95ba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 04 Nov 2017 05:50:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_VERSION=8u131
# Sat, 04 Nov 2017 05:50:53 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 04 Nov 2017 05:51:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 16:49:06 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Sat, 04 Nov 2017 16:49:11 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Sat, 04 Nov 2017 16:49:14 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Nov 2017 16:49:14 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Sat, 04 Nov 2017 16:50:13 GMT
ENV LOGSTASH_PATH=/opt/logstash/bin
# Sat, 04 Nov 2017 16:50:14 GMT
ENV PATH=/opt/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 16:50:14 GMT
ENV LOGSTASH_VERSION=2.4.1
# Sat, 04 Nov 2017 16:50:14 GMT
ENV LOGSTASH_TARBALL=https://download.elastic.co/logstash/logstash/logstash-2.4.1.tar.gz LOGSTASH_TARBALL_ASC= LOGSTASH_TARBALL_SHA1=5ee4f3fa0ad4b182b3f00b4181a20c4e31a907b4
# Sat, 04 Nov 2017 16:50:37 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Sat, 04 Nov 2017 16:50:38 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Sat, 04 Nov 2017 16:50:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 16:50:38 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b27fd892ecb54137910751102dfb835b185276f359a85b2ba953ce4436a4773`  
		Last Modified: Sat, 04 Nov 2017 06:04:34 GMT  
		Size: 54.3 MB (54286387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3357508d26ddca43bea2522de0fdbf00d7a58d5464d258a6f01944ac83578321`  
		Last Modified: Sat, 04 Nov 2017 16:51:25 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58342654a5a24a796c687177aa31104d36748ba0e8ec4e77589e5ab1cb79736`  
		Last Modified: Sat, 04 Nov 2017 16:51:26 GMT  
		Size: 1.5 MB (1506187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa7fa729ec3c240994186ad6c95297fb9130ab834c931fc0d0e88d59e431dce`  
		Last Modified: Sat, 04 Nov 2017 16:51:25 GMT  
		Size: 94.4 KB (94402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96b6a80019f9ea864b396e0cce03c219f0c77750b2d40fdad265caff34bcd95`  
		Last Modified: Sat, 04 Nov 2017 16:52:51 GMT  
		Size: 85.5 MB (85508780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2360bb8af59028d2465de87fb0689843896fc4a593da8a937a199c3d28866d41`  
		Last Modified: Sat, 04 Nov 2017 16:52:36 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5`

```console
$ docker pull logstash@sha256:54ca110f5f86ec71c64b96356a538b4ef80dbbeb0189564f1d5d271e4b5cdd7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5` - linux; amd64

```console
$ docker pull logstash@sha256:3100b697224604d64cd44a6707c51385384731a8756f57f7bc8d4fcdb722f39e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.9 MB (334908531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7de830f3604d22261555d3938f62db7b0b806b39167e18f0c797c2f32fefd023`
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
# Tue, 07 Nov 2017 18:36:36 GMT
ENV LOGSTASH_VERSION=5.6.3
# Tue, 07 Nov 2017 18:36:37 GMT
ENV LOGSTASH_DEB_VERSION=1:5.6.3-1
# Tue, 07 Nov 2017 18:37:07 GMT
RUN set -ex; 	case "$LOGSTASH_VERSION" in 		2.*) apt-get update -o 'APT::Hashes::SHA1::Weak=yes' ;; 		*) apt-get update ;; 	esac; 	apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION"; 	rm -rf /var/lib/apt/lists/*
# Tue, 07 Nov 2017 18:37:07 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Nov 2017 18:37:08 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 07 Nov 2017 18:37:09 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 07 Nov 2017 18:37:09 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Tue, 07 Nov 2017 18:37:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 07 Nov 2017 18:37:10 GMT
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
	-	`sha256:895c0f5c237db710dafbb094ef70394233b5834161656765abd65d209331f545`  
		Last Modified: Tue, 07 Nov 2017 18:38:29 GMT  
		Size: 105.7 MB (105725426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:673f322a711de9c33f2c74e633af980aa8086b8484a9792984db015ca6cc6660`  
		Last Modified: Tue, 07 Nov 2017 18:38:09 GMT  
		Size: 2.7 KB (2661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b14031db4014b3f26fc9e46b83ac08f471b490daad199d6794d57768e90b695`  
		Last Modified: Tue, 07 Nov 2017 18:38:09 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.6`

```console
$ docker pull logstash@sha256:54ca110f5f86ec71c64b96356a538b4ef80dbbeb0189564f1d5d271e4b5cdd7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5.6` - linux; amd64

```console
$ docker pull logstash@sha256:3100b697224604d64cd44a6707c51385384731a8756f57f7bc8d4fcdb722f39e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.9 MB (334908531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7de830f3604d22261555d3938f62db7b0b806b39167e18f0c797c2f32fefd023`
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
# Tue, 07 Nov 2017 18:36:36 GMT
ENV LOGSTASH_VERSION=5.6.3
# Tue, 07 Nov 2017 18:36:37 GMT
ENV LOGSTASH_DEB_VERSION=1:5.6.3-1
# Tue, 07 Nov 2017 18:37:07 GMT
RUN set -ex; 	case "$LOGSTASH_VERSION" in 		2.*) apt-get update -o 'APT::Hashes::SHA1::Weak=yes' ;; 		*) apt-get update ;; 	esac; 	apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION"; 	rm -rf /var/lib/apt/lists/*
# Tue, 07 Nov 2017 18:37:07 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Nov 2017 18:37:08 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 07 Nov 2017 18:37:09 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 07 Nov 2017 18:37:09 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Tue, 07 Nov 2017 18:37:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 07 Nov 2017 18:37:10 GMT
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
	-	`sha256:895c0f5c237db710dafbb094ef70394233b5834161656765abd65d209331f545`  
		Last Modified: Tue, 07 Nov 2017 18:38:29 GMT  
		Size: 105.7 MB (105725426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:673f322a711de9c33f2c74e633af980aa8086b8484a9792984db015ca6cc6660`  
		Last Modified: Tue, 07 Nov 2017 18:38:09 GMT  
		Size: 2.7 KB (2661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b14031db4014b3f26fc9e46b83ac08f471b490daad199d6794d57768e90b695`  
		Last Modified: Tue, 07 Nov 2017 18:38:09 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.6.3`

```console
$ docker pull logstash@sha256:54ca110f5f86ec71c64b96356a538b4ef80dbbeb0189564f1d5d271e4b5cdd7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5.6.3` - linux; amd64

```console
$ docker pull logstash@sha256:3100b697224604d64cd44a6707c51385384731a8756f57f7bc8d4fcdb722f39e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.9 MB (334908531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7de830f3604d22261555d3938f62db7b0b806b39167e18f0c797c2f32fefd023`
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
# Tue, 07 Nov 2017 18:36:36 GMT
ENV LOGSTASH_VERSION=5.6.3
# Tue, 07 Nov 2017 18:36:37 GMT
ENV LOGSTASH_DEB_VERSION=1:5.6.3-1
# Tue, 07 Nov 2017 18:37:07 GMT
RUN set -ex; 	case "$LOGSTASH_VERSION" in 		2.*) apt-get update -o 'APT::Hashes::SHA1::Weak=yes' ;; 		*) apt-get update ;; 	esac; 	apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION"; 	rm -rf /var/lib/apt/lists/*
# Tue, 07 Nov 2017 18:37:07 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Nov 2017 18:37:08 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 07 Nov 2017 18:37:09 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 07 Nov 2017 18:37:09 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Tue, 07 Nov 2017 18:37:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 07 Nov 2017 18:37:10 GMT
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
	-	`sha256:895c0f5c237db710dafbb094ef70394233b5834161656765abd65d209331f545`  
		Last Modified: Tue, 07 Nov 2017 18:38:29 GMT  
		Size: 105.7 MB (105725426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:673f322a711de9c33f2c74e633af980aa8086b8484a9792984db015ca6cc6660`  
		Last Modified: Tue, 07 Nov 2017 18:38:09 GMT  
		Size: 2.7 KB (2661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b14031db4014b3f26fc9e46b83ac08f471b490daad199d6794d57768e90b695`  
		Last Modified: Tue, 07 Nov 2017 18:38:09 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.6.3-alpine`

```console
$ docker pull logstash@sha256:c478eb9500f38a72aea9a035c6e90b0e2e294b74802a0de383cac8a4abc7ae74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5.6.3-alpine` - linux; amd64

```console
$ docker pull logstash@sha256:4964ca72b2930c752480b1c4a6fc992710b2d62baa240364df7d59a324971faf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.2 MB (163174427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca42b958262e87f9fa6a295478c21d47169244df31f92bb58582b3023869b6d5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 04 Nov 2017 05:50:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_VERSION=8u131
# Sat, 04 Nov 2017 05:50:53 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 04 Nov 2017 05:51:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 16:49:06 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Sat, 04 Nov 2017 16:49:11 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Sat, 04 Nov 2017 16:49:14 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Nov 2017 16:49:14 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Sat, 04 Nov 2017 16:49:15 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Sat, 04 Nov 2017 16:49:15 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 16:49:15 GMT
ENV LOGSTASH_VERSION=5.6.3
# Sat, 04 Nov 2017 16:49:15 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.3.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.3.tar.gz.asc LOGSTASH_TARBALL_SHA1=9a47baec72e76eef23d908fae8b94ff3497e569f
# Sat, 04 Nov 2017 16:49:45 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Sat, 04 Nov 2017 16:49:46 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Sat, 04 Nov 2017 16:49:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 16:49:46 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b27fd892ecb54137910751102dfb835b185276f359a85b2ba953ce4436a4773`  
		Last Modified: Sat, 04 Nov 2017 06:04:34 GMT  
		Size: 54.3 MB (54286387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3357508d26ddca43bea2522de0fdbf00d7a58d5464d258a6f01944ac83578321`  
		Last Modified: Sat, 04 Nov 2017 16:51:25 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58342654a5a24a796c687177aa31104d36748ba0e8ec4e77589e5ab1cb79736`  
		Last Modified: Sat, 04 Nov 2017 16:51:26 GMT  
		Size: 1.5 MB (1506187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa7fa729ec3c240994186ad6c95297fb9130ab834c931fc0d0e88d59e431dce`  
		Last Modified: Sat, 04 Nov 2017 16:51:25 GMT  
		Size: 94.4 KB (94402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f0a697e40f8ea2f9b867f11cacaa763ce890c080c5e66f5dae453e860f7d67`  
		Last Modified: Sat, 04 Nov 2017 16:51:38 GMT  
		Size: 105.3 MB (105294211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd41f73635e0eb8ac73d5a8bc4b01cc792bf586c1b0704dea1c0eca266cb6b8a`  
		Last Modified: Sat, 04 Nov 2017 16:51:25 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5.6-alpine`

```console
$ docker pull logstash@sha256:c478eb9500f38a72aea9a035c6e90b0e2e294b74802a0de383cac8a4abc7ae74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5.6-alpine` - linux; amd64

```console
$ docker pull logstash@sha256:4964ca72b2930c752480b1c4a6fc992710b2d62baa240364df7d59a324971faf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.2 MB (163174427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca42b958262e87f9fa6a295478c21d47169244df31f92bb58582b3023869b6d5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 04 Nov 2017 05:50:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_VERSION=8u131
# Sat, 04 Nov 2017 05:50:53 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 04 Nov 2017 05:51:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 16:49:06 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Sat, 04 Nov 2017 16:49:11 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Sat, 04 Nov 2017 16:49:14 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Nov 2017 16:49:14 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Sat, 04 Nov 2017 16:49:15 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Sat, 04 Nov 2017 16:49:15 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 16:49:15 GMT
ENV LOGSTASH_VERSION=5.6.3
# Sat, 04 Nov 2017 16:49:15 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.3.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.3.tar.gz.asc LOGSTASH_TARBALL_SHA1=9a47baec72e76eef23d908fae8b94ff3497e569f
# Sat, 04 Nov 2017 16:49:45 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Sat, 04 Nov 2017 16:49:46 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Sat, 04 Nov 2017 16:49:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 16:49:46 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b27fd892ecb54137910751102dfb835b185276f359a85b2ba953ce4436a4773`  
		Last Modified: Sat, 04 Nov 2017 06:04:34 GMT  
		Size: 54.3 MB (54286387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3357508d26ddca43bea2522de0fdbf00d7a58d5464d258a6f01944ac83578321`  
		Last Modified: Sat, 04 Nov 2017 16:51:25 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58342654a5a24a796c687177aa31104d36748ba0e8ec4e77589e5ab1cb79736`  
		Last Modified: Sat, 04 Nov 2017 16:51:26 GMT  
		Size: 1.5 MB (1506187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa7fa729ec3c240994186ad6c95297fb9130ab834c931fc0d0e88d59e431dce`  
		Last Modified: Sat, 04 Nov 2017 16:51:25 GMT  
		Size: 94.4 KB (94402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f0a697e40f8ea2f9b867f11cacaa763ce890c080c5e66f5dae453e860f7d67`  
		Last Modified: Sat, 04 Nov 2017 16:51:38 GMT  
		Size: 105.3 MB (105294211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd41f73635e0eb8ac73d5a8bc4b01cc792bf586c1b0704dea1c0eca266cb6b8a`  
		Last Modified: Sat, 04 Nov 2017 16:51:25 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:5-alpine`

```console
$ docker pull logstash@sha256:c478eb9500f38a72aea9a035c6e90b0e2e294b74802a0de383cac8a4abc7ae74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5-alpine` - linux; amd64

```console
$ docker pull logstash@sha256:4964ca72b2930c752480b1c4a6fc992710b2d62baa240364df7d59a324971faf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.2 MB (163174427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca42b958262e87f9fa6a295478c21d47169244df31f92bb58582b3023869b6d5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 04 Nov 2017 05:50:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_VERSION=8u131
# Sat, 04 Nov 2017 05:50:53 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 04 Nov 2017 05:51:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 16:49:06 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Sat, 04 Nov 2017 16:49:11 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Sat, 04 Nov 2017 16:49:14 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Nov 2017 16:49:14 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Sat, 04 Nov 2017 16:49:15 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Sat, 04 Nov 2017 16:49:15 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 16:49:15 GMT
ENV LOGSTASH_VERSION=5.6.3
# Sat, 04 Nov 2017 16:49:15 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.3.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.3.tar.gz.asc LOGSTASH_TARBALL_SHA1=9a47baec72e76eef23d908fae8b94ff3497e569f
# Sat, 04 Nov 2017 16:49:45 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Sat, 04 Nov 2017 16:49:46 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Sat, 04 Nov 2017 16:49:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 16:49:46 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b27fd892ecb54137910751102dfb835b185276f359a85b2ba953ce4436a4773`  
		Last Modified: Sat, 04 Nov 2017 06:04:34 GMT  
		Size: 54.3 MB (54286387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3357508d26ddca43bea2522de0fdbf00d7a58d5464d258a6f01944ac83578321`  
		Last Modified: Sat, 04 Nov 2017 16:51:25 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58342654a5a24a796c687177aa31104d36748ba0e8ec4e77589e5ab1cb79736`  
		Last Modified: Sat, 04 Nov 2017 16:51:26 GMT  
		Size: 1.5 MB (1506187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa7fa729ec3c240994186ad6c95297fb9130ab834c931fc0d0e88d59e431dce`  
		Last Modified: Sat, 04 Nov 2017 16:51:25 GMT  
		Size: 94.4 KB (94402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f0a697e40f8ea2f9b867f11cacaa763ce890c080c5e66f5dae453e860f7d67`  
		Last Modified: Sat, 04 Nov 2017 16:51:38 GMT  
		Size: 105.3 MB (105294211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd41f73635e0eb8ac73d5a8bc4b01cc792bf586c1b0704dea1c0eca266cb6b8a`  
		Last Modified: Sat, 04 Nov 2017 16:51:25 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:alpine`

```console
$ docker pull logstash@sha256:c478eb9500f38a72aea9a035c6e90b0e2e294b74802a0de383cac8a4abc7ae74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:alpine` - linux; amd64

```console
$ docker pull logstash@sha256:4964ca72b2930c752480b1c4a6fc992710b2d62baa240364df7d59a324971faf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.2 MB (163174427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca42b958262e87f9fa6a295478c21d47169244df31f92bb58582b3023869b6d5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 04 Nov 2017 05:50:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_VERSION=8u131
# Sat, 04 Nov 2017 05:50:53 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 04 Nov 2017 05:51:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 16:49:06 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Sat, 04 Nov 2017 16:49:11 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Sat, 04 Nov 2017 16:49:14 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Nov 2017 16:49:14 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Sat, 04 Nov 2017 16:49:15 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Sat, 04 Nov 2017 16:49:15 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 16:49:15 GMT
ENV LOGSTASH_VERSION=5.6.3
# Sat, 04 Nov 2017 16:49:15 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.3.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.3.tar.gz.asc LOGSTASH_TARBALL_SHA1=9a47baec72e76eef23d908fae8b94ff3497e569f
# Sat, 04 Nov 2017 16:49:45 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Sat, 04 Nov 2017 16:49:46 GMT
COPY file:5073cf67fe0dccc616d2ced3f7df597d906363dd3dc278d0395d780f89073ce8 in / 
# Sat, 04 Nov 2017 16:49:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 16:49:46 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b27fd892ecb54137910751102dfb835b185276f359a85b2ba953ce4436a4773`  
		Last Modified: Sat, 04 Nov 2017 06:04:34 GMT  
		Size: 54.3 MB (54286387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3357508d26ddca43bea2522de0fdbf00d7a58d5464d258a6f01944ac83578321`  
		Last Modified: Sat, 04 Nov 2017 16:51:25 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58342654a5a24a796c687177aa31104d36748ba0e8ec4e77589e5ab1cb79736`  
		Last Modified: Sat, 04 Nov 2017 16:51:26 GMT  
		Size: 1.5 MB (1506187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa7fa729ec3c240994186ad6c95297fb9130ab834c931fc0d0e88d59e431dce`  
		Last Modified: Sat, 04 Nov 2017 16:51:25 GMT  
		Size: 94.4 KB (94402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f0a697e40f8ea2f9b867f11cacaa763ce890c080c5e66f5dae453e860f7d67`  
		Last Modified: Sat, 04 Nov 2017 16:51:38 GMT  
		Size: 105.3 MB (105294211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd41f73635e0eb8ac73d5a8bc4b01cc792bf586c1b0704dea1c0eca266cb6b8a`  
		Last Modified: Sat, 04 Nov 2017 16:51:25 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:latest`

```console
$ docker pull logstash@sha256:54ca110f5f86ec71c64b96356a538b4ef80dbbeb0189564f1d5d271e4b5cdd7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:latest` - linux; amd64

```console
$ docker pull logstash@sha256:3100b697224604d64cd44a6707c51385384731a8756f57f7bc8d4fcdb722f39e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.9 MB (334908531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7de830f3604d22261555d3938f62db7b0b806b39167e18f0c797c2f32fefd023`
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
# Tue, 07 Nov 2017 18:36:36 GMT
ENV LOGSTASH_VERSION=5.6.3
# Tue, 07 Nov 2017 18:36:37 GMT
ENV LOGSTASH_DEB_VERSION=1:5.6.3-1
# Tue, 07 Nov 2017 18:37:07 GMT
RUN set -ex; 	case "$LOGSTASH_VERSION" in 		2.*) apt-get update -o 'APT::Hashes::SHA1::Weak=yes' ;; 		*) apt-get update ;; 	esac; 	apt-get install -y --no-install-recommends "logstash=$LOGSTASH_DEB_VERSION"; 	rm -rf /var/lib/apt/lists/*
# Tue, 07 Nov 2017 18:37:07 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Nov 2017 18:37:08 GMT
ENV LS_SETTINGS_DIR=/etc/logstash
# Tue, 07 Nov 2017 18:37:09 GMT
RUN set -ex; 	if [ -f "$LS_SETTINGS_DIR/logstash.yml" ]; then 		sed -ri 's!^path\.config:!#&!g' "$LS_SETTINGS_DIR/logstash.yml"; 	fi; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate --size=0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi
# Tue, 07 Nov 2017 18:37:09 GMT
COPY file:b540f903cdce9f3c92d22e6ec1673d5185797f0f604d4ddc9fdeb6fab1050a8f in / 
# Tue, 07 Nov 2017 18:37:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 07 Nov 2017 18:37:10 GMT
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
	-	`sha256:895c0f5c237db710dafbb094ef70394233b5834161656765abd65d209331f545`  
		Last Modified: Tue, 07 Nov 2017 18:38:29 GMT  
		Size: 105.7 MB (105725426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:673f322a711de9c33f2c74e633af980aa8086b8484a9792984db015ca6cc6660`  
		Last Modified: Tue, 07 Nov 2017 18:38:09 GMT  
		Size: 2.7 KB (2661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b14031db4014b3f26fc9e46b83ac08f471b490daad199d6794d57768e90b695`  
		Last Modified: Tue, 07 Nov 2017 18:38:09 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
