<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:4`](#kibana4)
-	[`kibana:4.6`](#kibana46)
-	[`kibana:4.6.6`](#kibana466)
-	[`kibana:5`](#kibana5)
-	[`kibana:5.6`](#kibana56)
-	[`kibana:5.6.3`](#kibana563)
-	[`kibana:latest`](#kibanalatest)

## `kibana:4`

```console
$ docker pull kibana@sha256:4a18c981ad1313d38666eb29b3a9e60607b3700bbb534465cba29d0e40baab40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:4` - linux; amd64

```console
$ docker pull kibana@sha256:acc32fe486a8ffb2498eaa248136da984eb63351abfe4f695399b47bb6343098
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110388037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:617ad10071a3ed02cb6e80710182e9db21b4166ce5c234456456f49f0ed507d6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:19:48 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Fri, 03 Nov 2017 22:21:48 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:21:48 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 22:21:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 03 Nov 2017 22:21:53 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 03 Nov 2017 22:21:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 03 Nov 2017 22:21:58 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:21:58 GMT
ENV KIBANA_MAJOR=4.6
# Fri, 03 Nov 2017 22:21:58 GMT
ENV KIBANA_VERSION=4.6.6
# Fri, 03 Nov 2017 22:21:59 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Fri, 03 Nov 2017 22:22:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Fri, 03 Nov 2017 22:22:21 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 22:22:21 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Fri, 03 Nov 2017 22:22:22 GMT
EXPOSE 5601/tcp
# Fri, 03 Nov 2017 22:22:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:22:22 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62aef9242ef2995a9956d041617f1b5004e15051913f7b43fdfeca4480173f9d`  
		Last Modified: Fri, 03 Nov 2017 22:22:40 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c844d2498604ef5957143015e64a2c9680e08cd6e46e52c378b4adb0129840`  
		Last Modified: Fri, 03 Nov 2017 22:23:15 GMT  
		Size: 20.5 MB (20524530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa114115da0655fd5dc799add1ede42f7f7b2860e14ef16625e78e4d5b61009`  
		Last Modified: Fri, 03 Nov 2017 22:23:09 GMT  
		Size: 500.7 KB (500661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7fd44a3d1e6c06fd169c2ffc49914421e90baf9cf68723229c27866e2a91dc`  
		Last Modified: Fri, 03 Nov 2017 22:23:06 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f852eb22bc3fba54c12a9fba73ffc67307f85352442f2060d3a71224cd25fdbf`  
		Last Modified: Fri, 03 Nov 2017 22:23:07 GMT  
		Size: 1.5 KB (1452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a27331a436181732deb94bea6f36513fada45a4190c7e9bc13820fc48da36d`  
		Last Modified: Fri, 03 Nov 2017 22:23:06 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3914f0176417266acd9599ef46ece6e39e56e7ac2b23ec42be508e6d18b41e6b`  
		Last Modified: Fri, 03 Nov 2017 22:23:18 GMT  
		Size: 36.8 MB (36753997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440b4e8193ce675fef34e850dee608c52f3b9c6a7379c309ff4ad2d9a9d7a193`  
		Last Modified: Fri, 03 Nov 2017 22:23:06 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.6`

```console
$ docker pull kibana@sha256:4a18c981ad1313d38666eb29b3a9e60607b3700bbb534465cba29d0e40baab40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:4.6` - linux; amd64

```console
$ docker pull kibana@sha256:acc32fe486a8ffb2498eaa248136da984eb63351abfe4f695399b47bb6343098
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110388037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:617ad10071a3ed02cb6e80710182e9db21b4166ce5c234456456f49f0ed507d6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:19:48 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Fri, 03 Nov 2017 22:21:48 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:21:48 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 22:21:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 03 Nov 2017 22:21:53 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 03 Nov 2017 22:21:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 03 Nov 2017 22:21:58 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:21:58 GMT
ENV KIBANA_MAJOR=4.6
# Fri, 03 Nov 2017 22:21:58 GMT
ENV KIBANA_VERSION=4.6.6
# Fri, 03 Nov 2017 22:21:59 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Fri, 03 Nov 2017 22:22:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Fri, 03 Nov 2017 22:22:21 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 22:22:21 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Fri, 03 Nov 2017 22:22:22 GMT
EXPOSE 5601/tcp
# Fri, 03 Nov 2017 22:22:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:22:22 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62aef9242ef2995a9956d041617f1b5004e15051913f7b43fdfeca4480173f9d`  
		Last Modified: Fri, 03 Nov 2017 22:22:40 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c844d2498604ef5957143015e64a2c9680e08cd6e46e52c378b4adb0129840`  
		Last Modified: Fri, 03 Nov 2017 22:23:15 GMT  
		Size: 20.5 MB (20524530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa114115da0655fd5dc799add1ede42f7f7b2860e14ef16625e78e4d5b61009`  
		Last Modified: Fri, 03 Nov 2017 22:23:09 GMT  
		Size: 500.7 KB (500661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7fd44a3d1e6c06fd169c2ffc49914421e90baf9cf68723229c27866e2a91dc`  
		Last Modified: Fri, 03 Nov 2017 22:23:06 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f852eb22bc3fba54c12a9fba73ffc67307f85352442f2060d3a71224cd25fdbf`  
		Last Modified: Fri, 03 Nov 2017 22:23:07 GMT  
		Size: 1.5 KB (1452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a27331a436181732deb94bea6f36513fada45a4190c7e9bc13820fc48da36d`  
		Last Modified: Fri, 03 Nov 2017 22:23:06 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3914f0176417266acd9599ef46ece6e39e56e7ac2b23ec42be508e6d18b41e6b`  
		Last Modified: Fri, 03 Nov 2017 22:23:18 GMT  
		Size: 36.8 MB (36753997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440b4e8193ce675fef34e850dee608c52f3b9c6a7379c309ff4ad2d9a9d7a193`  
		Last Modified: Fri, 03 Nov 2017 22:23:06 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.6.6`

```console
$ docker pull kibana@sha256:4a18c981ad1313d38666eb29b3a9e60607b3700bbb534465cba29d0e40baab40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:4.6.6` - linux; amd64

```console
$ docker pull kibana@sha256:acc32fe486a8ffb2498eaa248136da984eb63351abfe4f695399b47bb6343098
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110388037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:617ad10071a3ed02cb6e80710182e9db21b4166ce5c234456456f49f0ed507d6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:19:48 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Fri, 03 Nov 2017 22:21:48 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:21:48 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 22:21:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 03 Nov 2017 22:21:53 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 03 Nov 2017 22:21:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 03 Nov 2017 22:21:58 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:21:58 GMT
ENV KIBANA_MAJOR=4.6
# Fri, 03 Nov 2017 22:21:58 GMT
ENV KIBANA_VERSION=4.6.6
# Fri, 03 Nov 2017 22:21:59 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Fri, 03 Nov 2017 22:22:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Fri, 03 Nov 2017 22:22:21 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 22:22:21 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Fri, 03 Nov 2017 22:22:22 GMT
EXPOSE 5601/tcp
# Fri, 03 Nov 2017 22:22:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:22:22 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62aef9242ef2995a9956d041617f1b5004e15051913f7b43fdfeca4480173f9d`  
		Last Modified: Fri, 03 Nov 2017 22:22:40 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c844d2498604ef5957143015e64a2c9680e08cd6e46e52c378b4adb0129840`  
		Last Modified: Fri, 03 Nov 2017 22:23:15 GMT  
		Size: 20.5 MB (20524530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa114115da0655fd5dc799add1ede42f7f7b2860e14ef16625e78e4d5b61009`  
		Last Modified: Fri, 03 Nov 2017 22:23:09 GMT  
		Size: 500.7 KB (500661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7fd44a3d1e6c06fd169c2ffc49914421e90baf9cf68723229c27866e2a91dc`  
		Last Modified: Fri, 03 Nov 2017 22:23:06 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f852eb22bc3fba54c12a9fba73ffc67307f85352442f2060d3a71224cd25fdbf`  
		Last Modified: Fri, 03 Nov 2017 22:23:07 GMT  
		Size: 1.5 KB (1452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a27331a436181732deb94bea6f36513fada45a4190c7e9bc13820fc48da36d`  
		Last Modified: Fri, 03 Nov 2017 22:23:06 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3914f0176417266acd9599ef46ece6e39e56e7ac2b23ec42be508e6d18b41e6b`  
		Last Modified: Fri, 03 Nov 2017 22:23:18 GMT  
		Size: 36.8 MB (36753997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:440b4e8193ce675fef34e850dee608c52f3b9c6a7379c309ff4ad2d9a9d7a193`  
		Last Modified: Fri, 03 Nov 2017 22:23:06 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5`

```console
$ docker pull kibana@sha256:52dbb2bf1a257d65528796698a405c32b21117ce233426e569f66f2489d76b47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5` - linux; amd64

```console
$ docker pull kibana@sha256:8874e2b63f23a632ba665a5a5b971774b57560b5e597a2f9775a387e1a146577
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.2 MB (128232341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00956160abd7a02d80b21ad75b12bf0e264ca34bcaef342bc7adaeb5794cedbf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:19:48 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Fri, 03 Nov 2017 22:20:20 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:20:20 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 22:20:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 03 Nov 2017 22:20:24 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 03 Nov 2017 22:20:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 03 Nov 2017 22:20:44 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:20:45 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Fri, 03 Nov 2017 22:20:45 GMT
ENV KIBANA_VERSION=5.6.3
# Fri, 03 Nov 2017 22:21:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Fri, 03 Nov 2017 22:21:15 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 22:21:16 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Fri, 03 Nov 2017 22:21:16 GMT
EXPOSE 5601/tcp
# Fri, 03 Nov 2017 22:21:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:21:17 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62aef9242ef2995a9956d041617f1b5004e15051913f7b43fdfeca4480173f9d`  
		Last Modified: Fri, 03 Nov 2017 22:22:40 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66069dd74180d49d4bc52594f86c6cde724c9b7a020f0d492c1a485c377cc759`  
		Last Modified: Fri, 03 Nov 2017 22:22:44 GMT  
		Size: 22.4 MB (22404221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90ad1a72fd68f8887def6526e8fda995cd44742cd554be4b26731f365cb453e`  
		Last Modified: Fri, 03 Nov 2017 22:22:40 GMT  
		Size: 500.7 KB (500665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb3dd20049ef5f9ca31b3ac8ea3ec9108be28122bb7a01df9f185f6bceacb306`  
		Last Modified: Fri, 03 Nov 2017 22:22:37 GMT  
		Size: 7.3 KB (7296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebfdf96c93601670ab4df8b06a16158be07060c1949ba0a36a38d1e9f537cdc9`  
		Last Modified: Fri, 03 Nov 2017 22:22:38 GMT  
		Size: 1.5 KB (1451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fece5b9e1ad4bb3b87c5847de963ca6c0198aace0a2e048aeb0b783bcac51e1`  
		Last Modified: Fri, 03 Nov 2017 22:22:38 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a5007c36c210edbaa3c78b1a4e0ea9b64ced90ef127c1403bdb7dcacc09eef`  
		Last Modified: Fri, 03 Nov 2017 22:22:53 GMT  
		Size: 52.7 MB (52718605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f842d0207e2beee099d39736144a2c33e02912d769c6b33cecc2947465715e5f`  
		Last Modified: Fri, 03 Nov 2017 22:22:38 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.6`

```console
$ docker pull kibana@sha256:52dbb2bf1a257d65528796698a405c32b21117ce233426e569f66f2489d76b47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5.6` - linux; amd64

```console
$ docker pull kibana@sha256:8874e2b63f23a632ba665a5a5b971774b57560b5e597a2f9775a387e1a146577
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.2 MB (128232341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00956160abd7a02d80b21ad75b12bf0e264ca34bcaef342bc7adaeb5794cedbf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:19:48 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Fri, 03 Nov 2017 22:20:20 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:20:20 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 22:20:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 03 Nov 2017 22:20:24 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 03 Nov 2017 22:20:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 03 Nov 2017 22:20:44 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:20:45 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Fri, 03 Nov 2017 22:20:45 GMT
ENV KIBANA_VERSION=5.6.3
# Fri, 03 Nov 2017 22:21:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Fri, 03 Nov 2017 22:21:15 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 22:21:16 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Fri, 03 Nov 2017 22:21:16 GMT
EXPOSE 5601/tcp
# Fri, 03 Nov 2017 22:21:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:21:17 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62aef9242ef2995a9956d041617f1b5004e15051913f7b43fdfeca4480173f9d`  
		Last Modified: Fri, 03 Nov 2017 22:22:40 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66069dd74180d49d4bc52594f86c6cde724c9b7a020f0d492c1a485c377cc759`  
		Last Modified: Fri, 03 Nov 2017 22:22:44 GMT  
		Size: 22.4 MB (22404221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90ad1a72fd68f8887def6526e8fda995cd44742cd554be4b26731f365cb453e`  
		Last Modified: Fri, 03 Nov 2017 22:22:40 GMT  
		Size: 500.7 KB (500665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb3dd20049ef5f9ca31b3ac8ea3ec9108be28122bb7a01df9f185f6bceacb306`  
		Last Modified: Fri, 03 Nov 2017 22:22:37 GMT  
		Size: 7.3 KB (7296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebfdf96c93601670ab4df8b06a16158be07060c1949ba0a36a38d1e9f537cdc9`  
		Last Modified: Fri, 03 Nov 2017 22:22:38 GMT  
		Size: 1.5 KB (1451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fece5b9e1ad4bb3b87c5847de963ca6c0198aace0a2e048aeb0b783bcac51e1`  
		Last Modified: Fri, 03 Nov 2017 22:22:38 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a5007c36c210edbaa3c78b1a4e0ea9b64ced90ef127c1403bdb7dcacc09eef`  
		Last Modified: Fri, 03 Nov 2017 22:22:53 GMT  
		Size: 52.7 MB (52718605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f842d0207e2beee099d39736144a2c33e02912d769c6b33cecc2947465715e5f`  
		Last Modified: Fri, 03 Nov 2017 22:22:38 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.6.3`

```console
$ docker pull kibana@sha256:52dbb2bf1a257d65528796698a405c32b21117ce233426e569f66f2489d76b47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:5.6.3` - linux; amd64

```console
$ docker pull kibana@sha256:8874e2b63f23a632ba665a5a5b971774b57560b5e597a2f9775a387e1a146577
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.2 MB (128232341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00956160abd7a02d80b21ad75b12bf0e264ca34bcaef342bc7adaeb5794cedbf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:19:48 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Fri, 03 Nov 2017 22:20:20 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:20:20 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 22:20:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 03 Nov 2017 22:20:24 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 03 Nov 2017 22:20:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 03 Nov 2017 22:20:44 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:20:45 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Fri, 03 Nov 2017 22:20:45 GMT
ENV KIBANA_VERSION=5.6.3
# Fri, 03 Nov 2017 22:21:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Fri, 03 Nov 2017 22:21:15 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 22:21:16 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Fri, 03 Nov 2017 22:21:16 GMT
EXPOSE 5601/tcp
# Fri, 03 Nov 2017 22:21:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:21:17 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62aef9242ef2995a9956d041617f1b5004e15051913f7b43fdfeca4480173f9d`  
		Last Modified: Fri, 03 Nov 2017 22:22:40 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66069dd74180d49d4bc52594f86c6cde724c9b7a020f0d492c1a485c377cc759`  
		Last Modified: Fri, 03 Nov 2017 22:22:44 GMT  
		Size: 22.4 MB (22404221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90ad1a72fd68f8887def6526e8fda995cd44742cd554be4b26731f365cb453e`  
		Last Modified: Fri, 03 Nov 2017 22:22:40 GMT  
		Size: 500.7 KB (500665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb3dd20049ef5f9ca31b3ac8ea3ec9108be28122bb7a01df9f185f6bceacb306`  
		Last Modified: Fri, 03 Nov 2017 22:22:37 GMT  
		Size: 7.3 KB (7296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebfdf96c93601670ab4df8b06a16158be07060c1949ba0a36a38d1e9f537cdc9`  
		Last Modified: Fri, 03 Nov 2017 22:22:38 GMT  
		Size: 1.5 KB (1451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fece5b9e1ad4bb3b87c5847de963ca6c0198aace0a2e048aeb0b783bcac51e1`  
		Last Modified: Fri, 03 Nov 2017 22:22:38 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a5007c36c210edbaa3c78b1a4e0ea9b64ced90ef127c1403bdb7dcacc09eef`  
		Last Modified: Fri, 03 Nov 2017 22:22:53 GMT  
		Size: 52.7 MB (52718605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f842d0207e2beee099d39736144a2c33e02912d769c6b33cecc2947465715e5f`  
		Last Modified: Fri, 03 Nov 2017 22:22:38 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:latest`

```console
$ docker pull kibana@sha256:52dbb2bf1a257d65528796698a405c32b21117ce233426e569f66f2489d76b47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:latest` - linux; amd64

```console
$ docker pull kibana@sha256:8874e2b63f23a632ba665a5a5b971774b57560b5e597a2f9775a387e1a146577
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.2 MB (128232341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00956160abd7a02d80b21ad75b12bf0e264ca34bcaef342bc7adaeb5794cedbf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 22:19:48 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Fri, 03 Nov 2017 22:20:20 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 22:20:20 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 22:20:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 03 Nov 2017 22:20:24 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 03 Nov 2017 22:20:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -rf "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 03 Nov 2017 22:20:44 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 03 Nov 2017 22:20:45 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Fri, 03 Nov 2017 22:20:45 GMT
ENV KIBANA_VERSION=5.6.3
# Fri, 03 Nov 2017 22:21:13 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Fri, 03 Nov 2017 22:21:15 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 22:21:16 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Fri, 03 Nov 2017 22:21:16 GMT
EXPOSE 5601/tcp
# Fri, 03 Nov 2017 22:21:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 03 Nov 2017 22:21:17 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62aef9242ef2995a9956d041617f1b5004e15051913f7b43fdfeca4480173f9d`  
		Last Modified: Fri, 03 Nov 2017 22:22:40 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66069dd74180d49d4bc52594f86c6cde724c9b7a020f0d492c1a485c377cc759`  
		Last Modified: Fri, 03 Nov 2017 22:22:44 GMT  
		Size: 22.4 MB (22404221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90ad1a72fd68f8887def6526e8fda995cd44742cd554be4b26731f365cb453e`  
		Last Modified: Fri, 03 Nov 2017 22:22:40 GMT  
		Size: 500.7 KB (500665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb3dd20049ef5f9ca31b3ac8ea3ec9108be28122bb7a01df9f185f6bceacb306`  
		Last Modified: Fri, 03 Nov 2017 22:22:37 GMT  
		Size: 7.3 KB (7296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebfdf96c93601670ab4df8b06a16158be07060c1949ba0a36a38d1e9f537cdc9`  
		Last Modified: Fri, 03 Nov 2017 22:22:38 GMT  
		Size: 1.5 KB (1451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fece5b9e1ad4bb3b87c5847de963ca6c0198aace0a2e048aeb0b783bcac51e1`  
		Last Modified: Fri, 03 Nov 2017 22:22:38 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a5007c36c210edbaa3c78b1a4e0ea9b64ced90ef127c1403bdb7dcacc09eef`  
		Last Modified: Fri, 03 Nov 2017 22:22:53 GMT  
		Size: 52.7 MB (52718605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f842d0207e2beee099d39736144a2c33e02912d769c6b33cecc2947465715e5f`  
		Last Modified: Fri, 03 Nov 2017 22:22:38 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
