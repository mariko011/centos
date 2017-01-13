<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:5.1.2`](#kibana512)
-	[`kibana:5.1`](#kibana51)
-	[`kibana:5`](#kibana5)
-	[`kibana:latest`](#kibanalatest)
-	[`kibana:4.6.4`](#kibana464)
-	[`kibana:4.6`](#kibana46)
-	[`kibana:4`](#kibana4)
-	[`kibana:4.1.11`](#kibana4111)
-	[`kibana:4.1`](#kibana41)

## `kibana:5.1.2`

```console
$ docker pull kibana@sha256:66b12d27ce039540f11468226bc9ee31b084c86137f9b11c89bca05e42bf5424
```

-	Platforms:
	-	linux; amd64

### `kibana:5.1.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113119156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7d153e0924805f62db4c3e896c0bf71e57fa3cb79a8977875e611b63f367355`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 00:58:11 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Thu, 22 Dec 2016 20:28:53 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Dec 2016 20:28:54 GMT
ENV GOSU_VERSION=1.7
# Thu, 22 Dec 2016 20:28:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 22 Dec 2016 20:28:59 GMT
ENV TINI_VERSION=v0.9.0
# Thu, 22 Dec 2016 20:29:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 13 Jan 2017 18:04:20 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 13 Jan 2017 18:04:21 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Fri, 13 Jan 2017 22:56:35 GMT
ENV KIBANA_VERSION=5.1.2
# Fri, 13 Jan 2017 22:56:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Fri, 13 Jan 2017 22:56:55 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Jan 2017 22:56:56 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Fri, 13 Jan 2017 22:56:56 GMT
EXPOSE 5601/tcp
# Fri, 13 Jan 2017 22:56:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Jan 2017 22:56:57 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15c2734ed9fbeb3de25ae022e08681f89a40413292538b5181e16065a462308`  
		Last Modified: Mon, 19 Dec 2016 23:35:55 GMT  
		Size: 4.3 KB (4347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de15de0f8c7717803fbf24b23b1b2b473aee3b11a6957cf2e708e8c586f39a35`  
		Last Modified: Thu, 22 Dec 2016 20:32:10 GMT  
		Size: 21.6 MB (21631069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f17aed4151f4670883ecea66782a8de0f0acf39a5257b83c8e3360ead9fd2b1d`  
		Last Modified: Thu, 22 Dec 2016 20:32:02 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8231e7373febb5b8f88850573480f49080a4888590dfa84de87c09ef53143a67`  
		Last Modified: Thu, 22 Dec 2016 20:31:59 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cdadd313a7cc3e8d39dce5b5b9ea3cab4c3f64ea80139cacb9ae282c268161e`  
		Last Modified: Fri, 13 Jan 2017 22:57:38 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297939cd2f4812b0663656d2fa661220f8198ea4ea9ec88f7c6ba95e4af99545`  
		Last Modified: Fri, 13 Jan 2017 22:57:38 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9aeb52d5a469557fed5b1d1e3c8d383cce91d752c67ec050085fe8ad503ef79`  
		Last Modified: Fri, 13 Jan 2017 22:57:52 GMT  
		Size: 39.3 MB (39303551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4acfa3a29a6d6c5bfaee8279f37287ad2c1bb95b733502f6d6fb934fe1c8bc3a`  
		Last Modified: Fri, 13 Jan 2017 22:57:38 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.1`

```console
$ docker pull kibana@sha256:66b12d27ce039540f11468226bc9ee31b084c86137f9b11c89bca05e42bf5424
```

-	Platforms:
	-	linux; amd64

### `kibana:5.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113119156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7d153e0924805f62db4c3e896c0bf71e57fa3cb79a8977875e611b63f367355`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 00:58:11 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Thu, 22 Dec 2016 20:28:53 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Dec 2016 20:28:54 GMT
ENV GOSU_VERSION=1.7
# Thu, 22 Dec 2016 20:28:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 22 Dec 2016 20:28:59 GMT
ENV TINI_VERSION=v0.9.0
# Thu, 22 Dec 2016 20:29:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 13 Jan 2017 18:04:20 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 13 Jan 2017 18:04:21 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Fri, 13 Jan 2017 22:56:35 GMT
ENV KIBANA_VERSION=5.1.2
# Fri, 13 Jan 2017 22:56:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Fri, 13 Jan 2017 22:56:55 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Jan 2017 22:56:56 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Fri, 13 Jan 2017 22:56:56 GMT
EXPOSE 5601/tcp
# Fri, 13 Jan 2017 22:56:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Jan 2017 22:56:57 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15c2734ed9fbeb3de25ae022e08681f89a40413292538b5181e16065a462308`  
		Last Modified: Mon, 19 Dec 2016 23:35:55 GMT  
		Size: 4.3 KB (4347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de15de0f8c7717803fbf24b23b1b2b473aee3b11a6957cf2e708e8c586f39a35`  
		Last Modified: Thu, 22 Dec 2016 20:32:10 GMT  
		Size: 21.6 MB (21631069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f17aed4151f4670883ecea66782a8de0f0acf39a5257b83c8e3360ead9fd2b1d`  
		Last Modified: Thu, 22 Dec 2016 20:32:02 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8231e7373febb5b8f88850573480f49080a4888590dfa84de87c09ef53143a67`  
		Last Modified: Thu, 22 Dec 2016 20:31:59 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cdadd313a7cc3e8d39dce5b5b9ea3cab4c3f64ea80139cacb9ae282c268161e`  
		Last Modified: Fri, 13 Jan 2017 22:57:38 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297939cd2f4812b0663656d2fa661220f8198ea4ea9ec88f7c6ba95e4af99545`  
		Last Modified: Fri, 13 Jan 2017 22:57:38 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9aeb52d5a469557fed5b1d1e3c8d383cce91d752c67ec050085fe8ad503ef79`  
		Last Modified: Fri, 13 Jan 2017 22:57:52 GMT  
		Size: 39.3 MB (39303551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4acfa3a29a6d6c5bfaee8279f37287ad2c1bb95b733502f6d6fb934fe1c8bc3a`  
		Last Modified: Fri, 13 Jan 2017 22:57:38 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5`

```console
$ docker pull kibana@sha256:66b12d27ce039540f11468226bc9ee31b084c86137f9b11c89bca05e42bf5424
```

-	Platforms:
	-	linux; amd64

### `kibana:5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113119156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7d153e0924805f62db4c3e896c0bf71e57fa3cb79a8977875e611b63f367355`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 00:58:11 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Thu, 22 Dec 2016 20:28:53 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Dec 2016 20:28:54 GMT
ENV GOSU_VERSION=1.7
# Thu, 22 Dec 2016 20:28:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 22 Dec 2016 20:28:59 GMT
ENV TINI_VERSION=v0.9.0
# Thu, 22 Dec 2016 20:29:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 13 Jan 2017 18:04:20 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 13 Jan 2017 18:04:21 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Fri, 13 Jan 2017 22:56:35 GMT
ENV KIBANA_VERSION=5.1.2
# Fri, 13 Jan 2017 22:56:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Fri, 13 Jan 2017 22:56:55 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Jan 2017 22:56:56 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Fri, 13 Jan 2017 22:56:56 GMT
EXPOSE 5601/tcp
# Fri, 13 Jan 2017 22:56:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Jan 2017 22:56:57 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15c2734ed9fbeb3de25ae022e08681f89a40413292538b5181e16065a462308`  
		Last Modified: Mon, 19 Dec 2016 23:35:55 GMT  
		Size: 4.3 KB (4347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de15de0f8c7717803fbf24b23b1b2b473aee3b11a6957cf2e708e8c586f39a35`  
		Last Modified: Thu, 22 Dec 2016 20:32:10 GMT  
		Size: 21.6 MB (21631069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f17aed4151f4670883ecea66782a8de0f0acf39a5257b83c8e3360ead9fd2b1d`  
		Last Modified: Thu, 22 Dec 2016 20:32:02 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8231e7373febb5b8f88850573480f49080a4888590dfa84de87c09ef53143a67`  
		Last Modified: Thu, 22 Dec 2016 20:31:59 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cdadd313a7cc3e8d39dce5b5b9ea3cab4c3f64ea80139cacb9ae282c268161e`  
		Last Modified: Fri, 13 Jan 2017 22:57:38 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297939cd2f4812b0663656d2fa661220f8198ea4ea9ec88f7c6ba95e4af99545`  
		Last Modified: Fri, 13 Jan 2017 22:57:38 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9aeb52d5a469557fed5b1d1e3c8d383cce91d752c67ec050085fe8ad503ef79`  
		Last Modified: Fri, 13 Jan 2017 22:57:52 GMT  
		Size: 39.3 MB (39303551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4acfa3a29a6d6c5bfaee8279f37287ad2c1bb95b733502f6d6fb934fe1c8bc3a`  
		Last Modified: Fri, 13 Jan 2017 22:57:38 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:latest`

```console
$ docker pull kibana@sha256:66b12d27ce039540f11468226bc9ee31b084c86137f9b11c89bca05e42bf5424
```

-	Platforms:
	-	linux; amd64

### `kibana:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113119156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7d153e0924805f62db4c3e896c0bf71e57fa3cb79a8977875e611b63f367355`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 00:58:11 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Thu, 22 Dec 2016 20:28:53 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Dec 2016 20:28:54 GMT
ENV GOSU_VERSION=1.7
# Thu, 22 Dec 2016 20:28:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 22 Dec 2016 20:28:59 GMT
ENV TINI_VERSION=v0.9.0
# Thu, 22 Dec 2016 20:29:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 13 Jan 2017 18:04:20 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 13 Jan 2017 18:04:21 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Fri, 13 Jan 2017 22:56:35 GMT
ENV KIBANA_VERSION=5.1.2
# Fri, 13 Jan 2017 22:56:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Fri, 13 Jan 2017 22:56:55 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Jan 2017 22:56:56 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Fri, 13 Jan 2017 22:56:56 GMT
EXPOSE 5601/tcp
# Fri, 13 Jan 2017 22:56:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Jan 2017 22:56:57 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15c2734ed9fbeb3de25ae022e08681f89a40413292538b5181e16065a462308`  
		Last Modified: Mon, 19 Dec 2016 23:35:55 GMT  
		Size: 4.3 KB (4347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de15de0f8c7717803fbf24b23b1b2b473aee3b11a6957cf2e708e8c586f39a35`  
		Last Modified: Thu, 22 Dec 2016 20:32:10 GMT  
		Size: 21.6 MB (21631069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f17aed4151f4670883ecea66782a8de0f0acf39a5257b83c8e3360ead9fd2b1d`  
		Last Modified: Thu, 22 Dec 2016 20:32:02 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8231e7373febb5b8f88850573480f49080a4888590dfa84de87c09ef53143a67`  
		Last Modified: Thu, 22 Dec 2016 20:31:59 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cdadd313a7cc3e8d39dce5b5b9ea3cab4c3f64ea80139cacb9ae282c268161e`  
		Last Modified: Fri, 13 Jan 2017 22:57:38 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297939cd2f4812b0663656d2fa661220f8198ea4ea9ec88f7c6ba95e4af99545`  
		Last Modified: Fri, 13 Jan 2017 22:57:38 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9aeb52d5a469557fed5b1d1e3c8d383cce91d752c67ec050085fe8ad503ef79`  
		Last Modified: Fri, 13 Jan 2017 22:57:52 GMT  
		Size: 39.3 MB (39303551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4acfa3a29a6d6c5bfaee8279f37287ad2c1bb95b733502f6d6fb934fe1c8bc3a`  
		Last Modified: Fri, 13 Jan 2017 22:57:38 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.6.4`

```console
$ docker pull kibana@sha256:bdd6d915ab26627928796bc07de15ec6554514b762c7ce7fee357abc7171d6c3
```

-	Platforms:
	-	linux; amd64

### `kibana:4.6.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.9 MB (107896562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c06870dffda931e9cf8f80f771123d3a57eb70c8beb9e1d7965b9c7b2dc1da20`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 00:58:11 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Thu, 22 Dec 2016 20:29:58 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Dec 2016 20:29:59 GMT
ENV GOSU_VERSION=1.7
# Thu, 22 Dec 2016 20:30:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 22 Dec 2016 20:30:04 GMT
ENV TINI_VERSION=v0.9.0
# Thu, 22 Dec 2016 20:30:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 13 Jan 2017 22:56:59 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 13 Jan 2017 22:57:00 GMT
ENV KIBANA_MAJOR=4.6
# Fri, 13 Jan 2017 22:57:00 GMT
ENV KIBANA_VERSION=4.6.4
# Fri, 13 Jan 2017 22:57:02 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Fri, 13 Jan 2017 22:57:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Fri, 13 Jan 2017 22:57:20 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Jan 2017 22:57:20 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Fri, 13 Jan 2017 22:57:21 GMT
EXPOSE 5601/tcp
# Fri, 13 Jan 2017 22:57:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Jan 2017 22:57:22 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15c2734ed9fbeb3de25ae022e08681f89a40413292538b5181e16065a462308`  
		Last Modified: Mon, 19 Dec 2016 23:35:55 GMT  
		Size: 4.3 KB (4347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee76662fad28b02e53442bd3f2ec0fecd56e41280bb2be336c7796105e6cad8`  
		Last Modified: Thu, 22 Dec 2016 20:33:29 GMT  
		Size: 19.8 MB (19787275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce14b0332aa26ce43c84064f223c46b6200c6677764d2b9a3ad91aad5135a9e`  
		Last Modified: Thu, 22 Dec 2016 20:33:23 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15167202a249c5aad7c1ce6b544388c226511340610d7e717e0511e26c670e46`  
		Last Modified: Thu, 22 Dec 2016 20:33:21 GMT  
		Size: 7.1 KB (7125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78e440b29d9a437b44bf35f000b48a35b58c8cda0ee90d94de2d0120ede83ba`  
		Last Modified: Fri, 13 Jan 2017 22:58:53 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1cff7c716dc9e5cb39bdb0b5572b06a6b9896839bca939030b7f97d4497537`  
		Last Modified: Fri, 13 Jan 2017 22:58:53 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d13cc5a9c01aaf623033a5ee94ab7d4d70212f2911694c4ce59b219df1380e`  
		Last Modified: Fri, 13 Jan 2017 22:59:06 GMT  
		Size: 35.9 MB (35924749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:800f95d319334a206b3132c51a5fd0831a8eb081ddd05fc8f7a88ba4483c50fd`  
		Last Modified: Fri, 13 Jan 2017 22:58:53 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.6`

```console
$ docker pull kibana@sha256:bdd6d915ab26627928796bc07de15ec6554514b762c7ce7fee357abc7171d6c3
```

-	Platforms:
	-	linux; amd64

### `kibana:4.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.9 MB (107896562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c06870dffda931e9cf8f80f771123d3a57eb70c8beb9e1d7965b9c7b2dc1da20`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 00:58:11 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Thu, 22 Dec 2016 20:29:58 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Dec 2016 20:29:59 GMT
ENV GOSU_VERSION=1.7
# Thu, 22 Dec 2016 20:30:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 22 Dec 2016 20:30:04 GMT
ENV TINI_VERSION=v0.9.0
# Thu, 22 Dec 2016 20:30:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 13 Jan 2017 22:56:59 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 13 Jan 2017 22:57:00 GMT
ENV KIBANA_MAJOR=4.6
# Fri, 13 Jan 2017 22:57:00 GMT
ENV KIBANA_VERSION=4.6.4
# Fri, 13 Jan 2017 22:57:02 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Fri, 13 Jan 2017 22:57:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Fri, 13 Jan 2017 22:57:20 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Jan 2017 22:57:20 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Fri, 13 Jan 2017 22:57:21 GMT
EXPOSE 5601/tcp
# Fri, 13 Jan 2017 22:57:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Jan 2017 22:57:22 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15c2734ed9fbeb3de25ae022e08681f89a40413292538b5181e16065a462308`  
		Last Modified: Mon, 19 Dec 2016 23:35:55 GMT  
		Size: 4.3 KB (4347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee76662fad28b02e53442bd3f2ec0fecd56e41280bb2be336c7796105e6cad8`  
		Last Modified: Thu, 22 Dec 2016 20:33:29 GMT  
		Size: 19.8 MB (19787275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce14b0332aa26ce43c84064f223c46b6200c6677764d2b9a3ad91aad5135a9e`  
		Last Modified: Thu, 22 Dec 2016 20:33:23 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15167202a249c5aad7c1ce6b544388c226511340610d7e717e0511e26c670e46`  
		Last Modified: Thu, 22 Dec 2016 20:33:21 GMT  
		Size: 7.1 KB (7125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78e440b29d9a437b44bf35f000b48a35b58c8cda0ee90d94de2d0120ede83ba`  
		Last Modified: Fri, 13 Jan 2017 22:58:53 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1cff7c716dc9e5cb39bdb0b5572b06a6b9896839bca939030b7f97d4497537`  
		Last Modified: Fri, 13 Jan 2017 22:58:53 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d13cc5a9c01aaf623033a5ee94ab7d4d70212f2911694c4ce59b219df1380e`  
		Last Modified: Fri, 13 Jan 2017 22:59:06 GMT  
		Size: 35.9 MB (35924749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:800f95d319334a206b3132c51a5fd0831a8eb081ddd05fc8f7a88ba4483c50fd`  
		Last Modified: Fri, 13 Jan 2017 22:58:53 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4`

```console
$ docker pull kibana@sha256:bdd6d915ab26627928796bc07de15ec6554514b762c7ce7fee357abc7171d6c3
```

-	Platforms:
	-	linux; amd64

### `kibana:4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.9 MB (107896562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c06870dffda931e9cf8f80f771123d3a57eb70c8beb9e1d7965b9c7b2dc1da20`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 00:58:11 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Thu, 22 Dec 2016 20:29:58 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Dec 2016 20:29:59 GMT
ENV GOSU_VERSION=1.7
# Thu, 22 Dec 2016 20:30:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 22 Dec 2016 20:30:04 GMT
ENV TINI_VERSION=v0.9.0
# Thu, 22 Dec 2016 20:30:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 13 Jan 2017 22:56:59 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 13 Jan 2017 22:57:00 GMT
ENV KIBANA_MAJOR=4.6
# Fri, 13 Jan 2017 22:57:00 GMT
ENV KIBANA_VERSION=4.6.4
# Fri, 13 Jan 2017 22:57:02 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Fri, 13 Jan 2017 22:57:19 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Fri, 13 Jan 2017 22:57:20 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 13 Jan 2017 22:57:20 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Fri, 13 Jan 2017 22:57:21 GMT
EXPOSE 5601/tcp
# Fri, 13 Jan 2017 22:57:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Jan 2017 22:57:22 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15c2734ed9fbeb3de25ae022e08681f89a40413292538b5181e16065a462308`  
		Last Modified: Mon, 19 Dec 2016 23:35:55 GMT  
		Size: 4.3 KB (4347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee76662fad28b02e53442bd3f2ec0fecd56e41280bb2be336c7796105e6cad8`  
		Last Modified: Thu, 22 Dec 2016 20:33:29 GMT  
		Size: 19.8 MB (19787275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce14b0332aa26ce43c84064f223c46b6200c6677764d2b9a3ad91aad5135a9e`  
		Last Modified: Thu, 22 Dec 2016 20:33:23 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15167202a249c5aad7c1ce6b544388c226511340610d7e717e0511e26c670e46`  
		Last Modified: Thu, 22 Dec 2016 20:33:21 GMT  
		Size: 7.1 KB (7125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78e440b29d9a437b44bf35f000b48a35b58c8cda0ee90d94de2d0120ede83ba`  
		Last Modified: Fri, 13 Jan 2017 22:58:53 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1cff7c716dc9e5cb39bdb0b5572b06a6b9896839bca939030b7f97d4497537`  
		Last Modified: Fri, 13 Jan 2017 22:58:53 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d13cc5a9c01aaf623033a5ee94ab7d4d70212f2911694c4ce59b219df1380e`  
		Last Modified: Fri, 13 Jan 2017 22:59:06 GMT  
		Size: 35.9 MB (35924749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:800f95d319334a206b3132c51a5fd0831a8eb081ddd05fc8f7a88ba4483c50fd`  
		Last Modified: Fri, 13 Jan 2017 22:58:53 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.1.11`

```console
$ docker pull kibana@sha256:c1e8d1afba170a7078dc50e5229b502d88992592e2b2e8f23d5eba6f76b5b90e
```

-	Platforms:
	-	linux; amd64

### `kibana:4.1.11` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.0 MB (90976071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff9c4f267c8e68aeee04028a58e26490b8548ee83e2a03067615188737511501`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 00:58:11 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Thu, 22 Dec 2016 20:29:58 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Dec 2016 20:29:59 GMT
ENV GOSU_VERSION=1.7
# Thu, 22 Dec 2016 20:30:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 22 Dec 2016 20:30:04 GMT
ENV TINI_VERSION=v0.9.0
# Thu, 22 Dec 2016 20:30:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 22 Dec 2016 20:30:36 GMT
ENV KIBANA_VERSION=4.1.11
# Thu, 22 Dec 2016 20:30:36 GMT
ENV KIBANA_SHA1=13655cf94f5c47e8ab4d94c8170128f63be46ad5
# Thu, 22 Dec 2016 20:30:45 GMT
RUN set -x 	&& wget -O kibana.tar.gz "https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz" 	&& echo "${KIBANA_SHA1} *kibana.tar.gz" | sha1sum -c - 	&& mkdir -p /opt/kibana 	&& tar -xz --strip-components=1 -C /opt/kibana -f kibana.tar.gz 	&& chown -R kibana:kibana /opt/kibana 	&& rm kibana.tar.gz 		&& sed -ri "s!^(\#\s*)?(elasticsearch_url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Thu, 22 Dec 2016 20:30:46 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Dec 2016 20:30:47 GMT
COPY file:1ad4c14d23fc99eff1a91bced98f992e275b430cc6f63f5ad27bf5e6b929be00 in / 
# Thu, 22 Dec 2016 20:30:47 GMT
EXPOSE 5601/tcp
# Thu, 22 Dec 2016 20:30:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Dec 2016 20:30:49 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15c2734ed9fbeb3de25ae022e08681f89a40413292538b5181e16065a462308`  
		Last Modified: Mon, 19 Dec 2016 23:35:55 GMT  
		Size: 4.3 KB (4347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee76662fad28b02e53442bd3f2ec0fecd56e41280bb2be336c7796105e6cad8`  
		Last Modified: Thu, 22 Dec 2016 20:33:29 GMT  
		Size: 19.8 MB (19787275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce14b0332aa26ce43c84064f223c46b6200c6677764d2b9a3ad91aad5135a9e`  
		Last Modified: Thu, 22 Dec 2016 20:33:23 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15167202a249c5aad7c1ce6b544388c226511340610d7e717e0511e26c670e46`  
		Last Modified: Thu, 22 Dec 2016 20:33:21 GMT  
		Size: 7.1 KB (7125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1962b6467d3b94492fba27fed26c5f3eb2d6c42b83914fbbae12492d12f32e`  
		Last Modified: Thu, 22 Dec 2016 20:34:33 GMT  
		Size: 19.0 MB (19005921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b3886b49c9cfe70cbe872625330dcff3faeb37b4d7d3bc2c367f3307985a254`  
		Last Modified: Thu, 22 Dec 2016 20:34:27 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.1`

```console
$ docker pull kibana@sha256:c1e8d1afba170a7078dc50e5229b502d88992592e2b2e8f23d5eba6f76b5b90e
```

-	Platforms:
	-	linux; amd64

### `kibana:4.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.0 MB (90976071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff9c4f267c8e68aeee04028a58e26490b8548ee83e2a03067615188737511501`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 00:58:11 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Thu, 22 Dec 2016 20:29:58 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 22 Dec 2016 20:29:59 GMT
ENV GOSU_VERSION=1.7
# Thu, 22 Dec 2016 20:30:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 22 Dec 2016 20:30:04 GMT
ENV TINI_VERSION=v0.9.0
# Thu, 22 Dec 2016 20:30:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 22 Dec 2016 20:30:36 GMT
ENV KIBANA_VERSION=4.1.11
# Thu, 22 Dec 2016 20:30:36 GMT
ENV KIBANA_SHA1=13655cf94f5c47e8ab4d94c8170128f63be46ad5
# Thu, 22 Dec 2016 20:30:45 GMT
RUN set -x 	&& wget -O kibana.tar.gz "https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz" 	&& echo "${KIBANA_SHA1} *kibana.tar.gz" | sha1sum -c - 	&& mkdir -p /opt/kibana 	&& tar -xz --strip-components=1 -C /opt/kibana -f kibana.tar.gz 	&& chown -R kibana:kibana /opt/kibana 	&& rm kibana.tar.gz 		&& sed -ri "s!^(\#\s*)?(elasticsearch_url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Thu, 22 Dec 2016 20:30:46 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Dec 2016 20:30:47 GMT
COPY file:1ad4c14d23fc99eff1a91bced98f992e275b430cc6f63f5ad27bf5e6b929be00 in / 
# Thu, 22 Dec 2016 20:30:47 GMT
EXPOSE 5601/tcp
# Thu, 22 Dec 2016 20:30:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Dec 2016 20:30:49 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15c2734ed9fbeb3de25ae022e08681f89a40413292538b5181e16065a462308`  
		Last Modified: Mon, 19 Dec 2016 23:35:55 GMT  
		Size: 4.3 KB (4347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee76662fad28b02e53442bd3f2ec0fecd56e41280bb2be336c7796105e6cad8`  
		Last Modified: Thu, 22 Dec 2016 20:33:29 GMT  
		Size: 19.8 MB (19787275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce14b0332aa26ce43c84064f223c46b6200c6677764d2b9a3ad91aad5135a9e`  
		Last Modified: Thu, 22 Dec 2016 20:33:23 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15167202a249c5aad7c1ce6b544388c226511340610d7e717e0511e26c670e46`  
		Last Modified: Thu, 22 Dec 2016 20:33:21 GMT  
		Size: 7.1 KB (7125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1962b6467d3b94492fba27fed26c5f3eb2d6c42b83914fbbae12492d12f32e`  
		Last Modified: Thu, 22 Dec 2016 20:34:33 GMT  
		Size: 19.0 MB (19005921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b3886b49c9cfe70cbe872625330dcff3faeb37b4d7d3bc2c367f3307985a254`  
		Last Modified: Thu, 22 Dec 2016 20:34:27 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
