<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:5.4.1`](#kibana541)
-	[`kibana:5.4`](#kibana54)
-	[`kibana:5`](#kibana5)
-	[`kibana:latest`](#kibanalatest)
-	[`kibana:4.6.4`](#kibana464)
-	[`kibana:4.6`](#kibana46)
-	[`kibana:4`](#kibana4)
-	[`kibana:4.1.11`](#kibana4111)
-	[`kibana:4.1`](#kibana41)

## `kibana:5.4.1`

```console
$ docker pull kibana@sha256:4139adc143608396c79d6dd55c15ef55d7c882357c276f62920773ed1dbd19a8
```

-	Platforms:
	-	linux; amd64

### `kibana:5.4.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.4 MB (130413043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dec65f4e714d8fa51b7d530e75b725dfdec91a682e6fd14e33fd7031610c1f54`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:23:06 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 09 May 2017 17:25:08 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:25:09 GMT
ENV GOSU_VERSION=1.7
# Tue, 09 May 2017 17:25:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 09 May 2017 17:25:15 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 09 May 2017 17:25:17 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 09 May 2017 17:25:20 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 09 May 2017 17:25:22 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Fri, 02 Jun 2017 18:04:54 GMT
ENV KIBANA_VERSION=5.4.1
# Fri, 02 Jun 2017 18:05:40 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Fri, 02 Jun 2017 18:05:47 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Jun 2017 18:05:49 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Fri, 02 Jun 2017 18:05:50 GMT
EXPOSE 5601/tcp
# Fri, 02 Jun 2017 18:05:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 02 Jun 2017 18:05:51 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f004acd9be75e1fe6015c3db9e3d4b944628025bfd5e4f95e5b00484b8597b9`  
		Last Modified: Sat, 13 May 2017 06:54:41 GMT  
		Size: 4.4 KB (4379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e52b88e93cfb7062d1b4273a0bb4a65732727df3f510595623e1c190f4aa5ea2`  
		Last Modified: Sat, 13 May 2017 06:57:26 GMT  
		Size: 22.4 MB (22408647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f704e3534272f4a0768eaf9a5d1fa0102c2e253a6e948a2175c2c36acfca962`  
		Last Modified: Sat, 13 May 2017 06:57:19 GMT  
		Size: 818.8 KB (818818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8edd09fd6ffb6748469da5a9c4b86e180cfa968bd1f6588ab3f73cfe10fbc`  
		Last Modified: Sat, 13 May 2017 06:57:19 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0256fe2d7c04fc6725a79c0f97398a8f4cda67ba25dc0f035490186becb65ff4`  
		Last Modified: Sat, 13 May 2017 06:57:18 GMT  
		Size: 1.4 KB (1450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a2cb1666626c07e11b8d5b42a86b9fd28da135d18f207c5dc7b9a426f49ef7`  
		Last Modified: Sat, 13 May 2017 06:57:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5db898d27c514a56acd63420176d00279112950697ebcc6779061cc48ec48c`  
		Last Modified: Fri, 02 Jun 2017 18:07:06 GMT  
		Size: 54.6 MB (54587879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb0ad9b8529d74bff956a0d537961797353019f3d970ba157955d0222995d83`  
		Last Modified: Fri, 02 Jun 2017 18:06:25 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.4`

```console
$ docker pull kibana@sha256:4139adc143608396c79d6dd55c15ef55d7c882357c276f62920773ed1dbd19a8
```

-	Platforms:
	-	linux; amd64

### `kibana:5.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.4 MB (130413043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dec65f4e714d8fa51b7d530e75b725dfdec91a682e6fd14e33fd7031610c1f54`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:23:06 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 09 May 2017 17:25:08 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:25:09 GMT
ENV GOSU_VERSION=1.7
# Tue, 09 May 2017 17:25:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 09 May 2017 17:25:15 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 09 May 2017 17:25:17 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 09 May 2017 17:25:20 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 09 May 2017 17:25:22 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Fri, 02 Jun 2017 18:04:54 GMT
ENV KIBANA_VERSION=5.4.1
# Fri, 02 Jun 2017 18:05:40 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Fri, 02 Jun 2017 18:05:47 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Jun 2017 18:05:49 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Fri, 02 Jun 2017 18:05:50 GMT
EXPOSE 5601/tcp
# Fri, 02 Jun 2017 18:05:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 02 Jun 2017 18:05:51 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f004acd9be75e1fe6015c3db9e3d4b944628025bfd5e4f95e5b00484b8597b9`  
		Last Modified: Sat, 13 May 2017 06:54:41 GMT  
		Size: 4.4 KB (4379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e52b88e93cfb7062d1b4273a0bb4a65732727df3f510595623e1c190f4aa5ea2`  
		Last Modified: Sat, 13 May 2017 06:57:26 GMT  
		Size: 22.4 MB (22408647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f704e3534272f4a0768eaf9a5d1fa0102c2e253a6e948a2175c2c36acfca962`  
		Last Modified: Sat, 13 May 2017 06:57:19 GMT  
		Size: 818.8 KB (818818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8edd09fd6ffb6748469da5a9c4b86e180cfa968bd1f6588ab3f73cfe10fbc`  
		Last Modified: Sat, 13 May 2017 06:57:19 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0256fe2d7c04fc6725a79c0f97398a8f4cda67ba25dc0f035490186becb65ff4`  
		Last Modified: Sat, 13 May 2017 06:57:18 GMT  
		Size: 1.4 KB (1450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a2cb1666626c07e11b8d5b42a86b9fd28da135d18f207c5dc7b9a426f49ef7`  
		Last Modified: Sat, 13 May 2017 06:57:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5db898d27c514a56acd63420176d00279112950697ebcc6779061cc48ec48c`  
		Last Modified: Fri, 02 Jun 2017 18:07:06 GMT  
		Size: 54.6 MB (54587879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb0ad9b8529d74bff956a0d537961797353019f3d970ba157955d0222995d83`  
		Last Modified: Fri, 02 Jun 2017 18:06:25 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5`

```console
$ docker pull kibana@sha256:4139adc143608396c79d6dd55c15ef55d7c882357c276f62920773ed1dbd19a8
```

-	Platforms:
	-	linux; amd64

### `kibana:5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.4 MB (130413043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dec65f4e714d8fa51b7d530e75b725dfdec91a682e6fd14e33fd7031610c1f54`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:23:06 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 09 May 2017 17:25:08 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:25:09 GMT
ENV GOSU_VERSION=1.7
# Tue, 09 May 2017 17:25:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 09 May 2017 17:25:15 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 09 May 2017 17:25:17 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 09 May 2017 17:25:20 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 09 May 2017 17:25:22 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Fri, 02 Jun 2017 18:04:54 GMT
ENV KIBANA_VERSION=5.4.1
# Fri, 02 Jun 2017 18:05:40 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Fri, 02 Jun 2017 18:05:47 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Jun 2017 18:05:49 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Fri, 02 Jun 2017 18:05:50 GMT
EXPOSE 5601/tcp
# Fri, 02 Jun 2017 18:05:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 02 Jun 2017 18:05:51 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f004acd9be75e1fe6015c3db9e3d4b944628025bfd5e4f95e5b00484b8597b9`  
		Last Modified: Sat, 13 May 2017 06:54:41 GMT  
		Size: 4.4 KB (4379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e52b88e93cfb7062d1b4273a0bb4a65732727df3f510595623e1c190f4aa5ea2`  
		Last Modified: Sat, 13 May 2017 06:57:26 GMT  
		Size: 22.4 MB (22408647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f704e3534272f4a0768eaf9a5d1fa0102c2e253a6e948a2175c2c36acfca962`  
		Last Modified: Sat, 13 May 2017 06:57:19 GMT  
		Size: 818.8 KB (818818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8edd09fd6ffb6748469da5a9c4b86e180cfa968bd1f6588ab3f73cfe10fbc`  
		Last Modified: Sat, 13 May 2017 06:57:19 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0256fe2d7c04fc6725a79c0f97398a8f4cda67ba25dc0f035490186becb65ff4`  
		Last Modified: Sat, 13 May 2017 06:57:18 GMT  
		Size: 1.4 KB (1450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a2cb1666626c07e11b8d5b42a86b9fd28da135d18f207c5dc7b9a426f49ef7`  
		Last Modified: Sat, 13 May 2017 06:57:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5db898d27c514a56acd63420176d00279112950697ebcc6779061cc48ec48c`  
		Last Modified: Fri, 02 Jun 2017 18:07:06 GMT  
		Size: 54.6 MB (54587879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb0ad9b8529d74bff956a0d537961797353019f3d970ba157955d0222995d83`  
		Last Modified: Fri, 02 Jun 2017 18:06:25 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:latest`

```console
$ docker pull kibana@sha256:4139adc143608396c79d6dd55c15ef55d7c882357c276f62920773ed1dbd19a8
```

-	Platforms:
	-	linux; amd64

### `kibana:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.4 MB (130413043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dec65f4e714d8fa51b7d530e75b725dfdec91a682e6fd14e33fd7031610c1f54`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:23:06 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 09 May 2017 17:25:08 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:25:09 GMT
ENV GOSU_VERSION=1.7
# Tue, 09 May 2017 17:25:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 09 May 2017 17:25:15 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 09 May 2017 17:25:17 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 09 May 2017 17:25:20 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 09 May 2017 17:25:22 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Fri, 02 Jun 2017 18:04:54 GMT
ENV KIBANA_VERSION=5.4.1
# Fri, 02 Jun 2017 18:05:40 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Fri, 02 Jun 2017 18:05:47 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Jun 2017 18:05:49 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Fri, 02 Jun 2017 18:05:50 GMT
EXPOSE 5601/tcp
# Fri, 02 Jun 2017 18:05:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 02 Jun 2017 18:05:51 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f004acd9be75e1fe6015c3db9e3d4b944628025bfd5e4f95e5b00484b8597b9`  
		Last Modified: Sat, 13 May 2017 06:54:41 GMT  
		Size: 4.4 KB (4379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e52b88e93cfb7062d1b4273a0bb4a65732727df3f510595623e1c190f4aa5ea2`  
		Last Modified: Sat, 13 May 2017 06:57:26 GMT  
		Size: 22.4 MB (22408647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f704e3534272f4a0768eaf9a5d1fa0102c2e253a6e948a2175c2c36acfca962`  
		Last Modified: Sat, 13 May 2017 06:57:19 GMT  
		Size: 818.8 KB (818818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8edd09fd6ffb6748469da5a9c4b86e180cfa968bd1f6588ab3f73cfe10fbc`  
		Last Modified: Sat, 13 May 2017 06:57:19 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0256fe2d7c04fc6725a79c0f97398a8f4cda67ba25dc0f035490186becb65ff4`  
		Last Modified: Sat, 13 May 2017 06:57:18 GMT  
		Size: 1.4 KB (1450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a2cb1666626c07e11b8d5b42a86b9fd28da135d18f207c5dc7b9a426f49ef7`  
		Last Modified: Sat, 13 May 2017 06:57:18 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5db898d27c514a56acd63420176d00279112950697ebcc6779061cc48ec48c`  
		Last Modified: Fri, 02 Jun 2017 18:07:06 GMT  
		Size: 54.6 MB (54587879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb0ad9b8529d74bff956a0d537961797353019f3d970ba157955d0222995d83`  
		Last Modified: Fri, 02 Jun 2017 18:06:25 GMT  
		Size: 336.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.6.4`

```console
$ docker pull kibana@sha256:96f61c755d3fc53c9d95f53262bc373f89311394559bfc8df7d74191ce57767d
```

-	Platforms:
	-	linux; amd64

### `kibana:4.6.4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.3 MB (110253759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6d229c142c69f6166ddedc1b4949c63858e3bb125c9ff395383871e1706b49f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:23:06 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 09 May 2017 17:23:23 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:23:24 GMT
ENV GOSU_VERSION=1.7
# Tue, 09 May 2017 17:23:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 09 May 2017 17:23:30 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 09 May 2017 17:23:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 09 May 2017 17:23:36 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 09 May 2017 17:23:36 GMT
ENV KIBANA_MAJOR=4.6
# Tue, 09 May 2017 17:23:37 GMT
ENV KIBANA_VERSION=4.6.4
# Tue, 09 May 2017 17:23:39 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Tue, 09 May 2017 17:23:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 09 May 2017 17:23:56 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 09 May 2017 17:23:57 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Tue, 09 May 2017 17:23:58 GMT
EXPOSE 5601/tcp
# Tue, 09 May 2017 17:23:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 May 2017 17:23:59 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f004acd9be75e1fe6015c3db9e3d4b944628025bfd5e4f95e5b00484b8597b9`  
		Last Modified: Sat, 13 May 2017 06:54:41 GMT  
		Size: 4.4 KB (4379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbdf8f6bd9d3b2e43fbfd1fd28fdba956d4eb4b4d58d0d9fb0d352d9948901b2`  
		Last Modified: Sat, 13 May 2017 06:54:45 GMT  
		Size: 20.5 MB (20526661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191a37723088d54b1c9226e92383d5aad46aab1c43e9f6caa1a1a74e1b104103`  
		Last Modified: Sat, 13 May 2017 06:54:41 GMT  
		Size: 818.8 KB (818815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c951ad6b4fd7a3aff2a7bdeb10085622d8718659ded64e30a7c1d779e37bae`  
		Last Modified: Sat, 13 May 2017 06:54:41 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:180471970acf8b4892d426ded86d240de87ee5bbee8eb00eaef6fbf0ec5492d0`  
		Last Modified: Sat, 13 May 2017 06:55:41 GMT  
		Size: 1.4 KB (1448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307fb08d9fadbb7f2d3d9122b23cb5f08cb525cc4d31c4b45d6a57143aea4293`  
		Last Modified: Sat, 13 May 2017 06:55:41 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97845bf380d952b4a39dd9c6ef96c73202a15a786fb0b2e83829203b4964e38`  
		Last Modified: Sat, 13 May 2017 06:56:03 GMT  
		Size: 36.3 MB (36310586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5ed131daca9219ef11af3410a4a921350c55182c13ae95de250c213a61f407`  
		Last Modified: Sat, 13 May 2017 06:55:41 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.6`

```console
$ docker pull kibana@sha256:96f61c755d3fc53c9d95f53262bc373f89311394559bfc8df7d74191ce57767d
```

-	Platforms:
	-	linux; amd64

### `kibana:4.6` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.3 MB (110253759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6d229c142c69f6166ddedc1b4949c63858e3bb125c9ff395383871e1706b49f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:23:06 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 09 May 2017 17:23:23 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:23:24 GMT
ENV GOSU_VERSION=1.7
# Tue, 09 May 2017 17:23:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 09 May 2017 17:23:30 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 09 May 2017 17:23:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 09 May 2017 17:23:36 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 09 May 2017 17:23:36 GMT
ENV KIBANA_MAJOR=4.6
# Tue, 09 May 2017 17:23:37 GMT
ENV KIBANA_VERSION=4.6.4
# Tue, 09 May 2017 17:23:39 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Tue, 09 May 2017 17:23:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 09 May 2017 17:23:56 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 09 May 2017 17:23:57 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Tue, 09 May 2017 17:23:58 GMT
EXPOSE 5601/tcp
# Tue, 09 May 2017 17:23:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 May 2017 17:23:59 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f004acd9be75e1fe6015c3db9e3d4b944628025bfd5e4f95e5b00484b8597b9`  
		Last Modified: Sat, 13 May 2017 06:54:41 GMT  
		Size: 4.4 KB (4379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbdf8f6bd9d3b2e43fbfd1fd28fdba956d4eb4b4d58d0d9fb0d352d9948901b2`  
		Last Modified: Sat, 13 May 2017 06:54:45 GMT  
		Size: 20.5 MB (20526661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191a37723088d54b1c9226e92383d5aad46aab1c43e9f6caa1a1a74e1b104103`  
		Last Modified: Sat, 13 May 2017 06:54:41 GMT  
		Size: 818.8 KB (818815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c951ad6b4fd7a3aff2a7bdeb10085622d8718659ded64e30a7c1d779e37bae`  
		Last Modified: Sat, 13 May 2017 06:54:41 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:180471970acf8b4892d426ded86d240de87ee5bbee8eb00eaef6fbf0ec5492d0`  
		Last Modified: Sat, 13 May 2017 06:55:41 GMT  
		Size: 1.4 KB (1448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307fb08d9fadbb7f2d3d9122b23cb5f08cb525cc4d31c4b45d6a57143aea4293`  
		Last Modified: Sat, 13 May 2017 06:55:41 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97845bf380d952b4a39dd9c6ef96c73202a15a786fb0b2e83829203b4964e38`  
		Last Modified: Sat, 13 May 2017 06:56:03 GMT  
		Size: 36.3 MB (36310586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5ed131daca9219ef11af3410a4a921350c55182c13ae95de250c213a61f407`  
		Last Modified: Sat, 13 May 2017 06:55:41 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4`

```console
$ docker pull kibana@sha256:96f61c755d3fc53c9d95f53262bc373f89311394559bfc8df7d74191ce57767d
```

-	Platforms:
	-	linux; amd64

### `kibana:4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.3 MB (110253759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6d229c142c69f6166ddedc1b4949c63858e3bb125c9ff395383871e1706b49f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:23:06 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 09 May 2017 17:23:23 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:23:24 GMT
ENV GOSU_VERSION=1.7
# Tue, 09 May 2017 17:23:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 09 May 2017 17:23:30 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 09 May 2017 17:23:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 09 May 2017 17:23:36 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 09 May 2017 17:23:36 GMT
ENV KIBANA_MAJOR=4.6
# Tue, 09 May 2017 17:23:37 GMT
ENV KIBANA_VERSION=4.6.4
# Tue, 09 May 2017 17:23:39 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Tue, 09 May 2017 17:23:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 09 May 2017 17:23:56 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 09 May 2017 17:23:57 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Tue, 09 May 2017 17:23:58 GMT
EXPOSE 5601/tcp
# Tue, 09 May 2017 17:23:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 May 2017 17:23:59 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f004acd9be75e1fe6015c3db9e3d4b944628025bfd5e4f95e5b00484b8597b9`  
		Last Modified: Sat, 13 May 2017 06:54:41 GMT  
		Size: 4.4 KB (4379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbdf8f6bd9d3b2e43fbfd1fd28fdba956d4eb4b4d58d0d9fb0d352d9948901b2`  
		Last Modified: Sat, 13 May 2017 06:54:45 GMT  
		Size: 20.5 MB (20526661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191a37723088d54b1c9226e92383d5aad46aab1c43e9f6caa1a1a74e1b104103`  
		Last Modified: Sat, 13 May 2017 06:54:41 GMT  
		Size: 818.8 KB (818815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c951ad6b4fd7a3aff2a7bdeb10085622d8718659ded64e30a7c1d779e37bae`  
		Last Modified: Sat, 13 May 2017 06:54:41 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:180471970acf8b4892d426ded86d240de87ee5bbee8eb00eaef6fbf0ec5492d0`  
		Last Modified: Sat, 13 May 2017 06:55:41 GMT  
		Size: 1.4 KB (1448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307fb08d9fadbb7f2d3d9122b23cb5f08cb525cc4d31c4b45d6a57143aea4293`  
		Last Modified: Sat, 13 May 2017 06:55:41 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97845bf380d952b4a39dd9c6ef96c73202a15a786fb0b2e83829203b4964e38`  
		Last Modified: Sat, 13 May 2017 06:56:03 GMT  
		Size: 36.3 MB (36310586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5ed131daca9219ef11af3410a4a921350c55182c13ae95de250c213a61f407`  
		Last Modified: Sat, 13 May 2017 06:55:41 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.1.11`

```console
$ docker pull kibana@sha256:3d11f761b38c2a9d89be6021c03edf88fe21aabc7c590c00ecc8c349c75d6cfa
```

-	Platforms:
	-	linux; amd64

### `kibana:4.1.11` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.3 MB (93304335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7428dc962f298f57b10850d3e127be14a3c44e273cc00693f130b2b1a9d2da4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:23:06 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 09 May 2017 17:23:23 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:23:24 GMT
ENV GOSU_VERSION=1.7
# Tue, 09 May 2017 17:23:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 09 May 2017 17:23:30 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 09 May 2017 17:23:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 09 May 2017 17:24:19 GMT
ENV KIBANA_VERSION=4.1.11
# Tue, 09 May 2017 17:24:20 GMT
ENV KIBANA_SHA1=13655cf94f5c47e8ab4d94c8170128f63be46ad5
# Tue, 09 May 2017 17:24:24 GMT
RUN set -x 	&& wget -O kibana.tar.gz "https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz" 	&& echo "${KIBANA_SHA1} *kibana.tar.gz" | sha1sum -c - 	&& mkdir -p /opt/kibana 	&& tar -xz --strip-components=1 -C /opt/kibana -f kibana.tar.gz 	&& chown -R kibana:kibana /opt/kibana 	&& rm kibana.tar.gz 		&& sed -ri "s!^(\#\s*)?(elasticsearch_url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 09 May 2017 17:24:25 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 09 May 2017 17:24:26 GMT
COPY file:1ad4c14d23fc99eff1a91bced98f992e275b430cc6f63f5ad27bf5e6b929be00 in / 
# Tue, 09 May 2017 17:24:27 GMT
EXPOSE 5601/tcp
# Tue, 09 May 2017 17:24:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 May 2017 17:24:28 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f004acd9be75e1fe6015c3db9e3d4b944628025bfd5e4f95e5b00484b8597b9`  
		Last Modified: Sat, 13 May 2017 06:54:41 GMT  
		Size: 4.4 KB (4379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbdf8f6bd9d3b2e43fbfd1fd28fdba956d4eb4b4d58d0d9fb0d352d9948901b2`  
		Last Modified: Sat, 13 May 2017 06:54:45 GMT  
		Size: 20.5 MB (20526661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191a37723088d54b1c9226e92383d5aad46aab1c43e9f6caa1a1a74e1b104103`  
		Last Modified: Sat, 13 May 2017 06:54:41 GMT  
		Size: 818.8 KB (818815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c951ad6b4fd7a3aff2a7bdeb10085622d8718659ded64e30a7c1d779e37bae`  
		Last Modified: Sat, 13 May 2017 06:54:41 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a567dee69635a00c5a9ff224e4eddf7e31dcdcf953c1cfee0575fae01f60a658`  
		Last Modified: Sat, 13 May 2017 06:54:53 GMT  
		Size: 19.4 MB (19362830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98c1c3090784732e30c643dc001ee221d2fbd74dc4c199bd43243adb75d92575`  
		Last Modified: Sat, 13 May 2017 06:54:43 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.1`

```console
$ docker pull kibana@sha256:3d11f761b38c2a9d89be6021c03edf88fe21aabc7c590c00ecc8c349c75d6cfa
```

-	Platforms:
	-	linux; amd64

### `kibana:4.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.3 MB (93304335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7428dc962f298f57b10850d3e127be14a3c44e273cc00693f130b2b1a9d2da4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:23:06 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 09 May 2017 17:23:23 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:23:24 GMT
ENV GOSU_VERSION=1.7
# Tue, 09 May 2017 17:23:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 09 May 2017 17:23:30 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 09 May 2017 17:23:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 09 May 2017 17:24:19 GMT
ENV KIBANA_VERSION=4.1.11
# Tue, 09 May 2017 17:24:20 GMT
ENV KIBANA_SHA1=13655cf94f5c47e8ab4d94c8170128f63be46ad5
# Tue, 09 May 2017 17:24:24 GMT
RUN set -x 	&& wget -O kibana.tar.gz "https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz" 	&& echo "${KIBANA_SHA1} *kibana.tar.gz" | sha1sum -c - 	&& mkdir -p /opt/kibana 	&& tar -xz --strip-components=1 -C /opt/kibana -f kibana.tar.gz 	&& chown -R kibana:kibana /opt/kibana 	&& rm kibana.tar.gz 		&& sed -ri "s!^(\#\s*)?(elasticsearch_url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 09 May 2017 17:24:25 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 09 May 2017 17:24:26 GMT
COPY file:1ad4c14d23fc99eff1a91bced98f992e275b430cc6f63f5ad27bf5e6b929be00 in / 
# Tue, 09 May 2017 17:24:27 GMT
EXPOSE 5601/tcp
# Tue, 09 May 2017 17:24:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 May 2017 17:24:28 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f004acd9be75e1fe6015c3db9e3d4b944628025bfd5e4f95e5b00484b8597b9`  
		Last Modified: Sat, 13 May 2017 06:54:41 GMT  
		Size: 4.4 KB (4379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbdf8f6bd9d3b2e43fbfd1fd28fdba956d4eb4b4d58d0d9fb0d352d9948901b2`  
		Last Modified: Sat, 13 May 2017 06:54:45 GMT  
		Size: 20.5 MB (20526661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191a37723088d54b1c9226e92383d5aad46aab1c43e9f6caa1a1a74e1b104103`  
		Last Modified: Sat, 13 May 2017 06:54:41 GMT  
		Size: 818.8 KB (818815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c951ad6b4fd7a3aff2a7bdeb10085622d8718659ded64e30a7c1d779e37bae`  
		Last Modified: Sat, 13 May 2017 06:54:41 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a567dee69635a00c5a9ff224e4eddf7e31dcdcf953c1cfee0575fae01f60a658`  
		Last Modified: Sat, 13 May 2017 06:54:53 GMT  
		Size: 19.4 MB (19362830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98c1c3090784732e30c643dc001ee221d2fbd74dc4c199bd43243adb75d92575`  
		Last Modified: Sat, 13 May 2017 06:54:43 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
