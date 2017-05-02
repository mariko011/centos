<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:5.3.2`](#kibana532)
-	[`kibana:5.3`](#kibana53)
-	[`kibana:5`](#kibana5)
-	[`kibana:latest`](#kibanalatest)
-	[`kibana:4.6.4`](#kibana464)
-	[`kibana:4.6`](#kibana46)
-	[`kibana:4`](#kibana4)
-	[`kibana:4.1.11`](#kibana4111)
-	[`kibana:4.1`](#kibana41)

## `kibana:5.3.2`

```console
$ docker pull kibana@sha256:6daa5c381553bf4707b240096f0f2b5f899b5e12e05c94a0b3e1606177175fa8
```

-	Platforms:
	-	linux; amd64

### `kibana:5.3.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.2 MB (115152939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1a447f330310d03e8cf5f43989875ea3e5cc6806b8b6a7eaece2939100829ef`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:41:44 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 24 Apr 2017 23:43:37 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:43:38 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Apr 2017 23:43:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 24 Apr 2017 23:43:43 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 24 Apr 2017 23:43:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 24 Apr 2017 23:43:49 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 24 Apr 2017 23:43:50 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Mon, 01 May 2017 18:22:30 GMT
ENV KIBANA_VERSION=5.3.2
# Mon, 01 May 2017 18:22:48 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Mon, 01 May 2017 18:22:49 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 May 2017 18:22:50 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Mon, 01 May 2017 18:22:51 GMT
EXPOSE 5601/tcp
# Mon, 01 May 2017 18:22:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 01 May 2017 18:22:52 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4d610dc758e0e1ae9052920ca6e8a638697da5d9cc38b419d7a047a2a47f5f`  
		Last Modified: Tue, 25 Apr 2017 00:10:41 GMT  
		Size: 4.4 KB (4372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53721949fb074e2d5501e598da30037ca7e7743d907816d04379885242374be3`  
		Last Modified: Tue, 25 Apr 2017 00:10:47 GMT  
		Size: 22.4 MB (22408103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3954bd443eccabd3dd6ade7adf73857c25182f52b5f085045d5ebfb839acb221`  
		Last Modified: Tue, 25 Apr 2017 00:10:42 GMT  
		Size: 818.8 KB (818812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fdcf440153c1fccdff1ac2e7f3754169d45cf783e398943e6eb1db953300e1`  
		Last Modified: Tue, 25 Apr 2017 00:10:39 GMT  
		Size: 7.3 KB (7293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5fb5110d97e1dedc446d5b167ba15c3c114a2bbfb7e170ba5ee71855cbb583`  
		Last Modified: Tue, 25 Apr 2017 00:10:39 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793f0796505462bc40f71174c119c9a2449a4942865b885de6d1be541ea0e1c4`  
		Last Modified: Tue, 25 Apr 2017 00:10:39 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a3a9ae6dfb1e182491c5548d4fb0da654a759f51d91392b82fc1fb080cde79d`  
		Last Modified: Mon, 01 May 2017 18:23:23 GMT  
		Size: 39.4 MB (39362074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d5b82fbb210ef11a0961c44cb841b8f6fe03112e7bff2a4ae7f61d8da0c681`  
		Last Modified: Mon, 01 May 2017 18:23:15 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.3`

```console
$ docker pull kibana@sha256:6daa5c381553bf4707b240096f0f2b5f899b5e12e05c94a0b3e1606177175fa8
```

-	Platforms:
	-	linux; amd64

### `kibana:5.3` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.2 MB (115152939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1a447f330310d03e8cf5f43989875ea3e5cc6806b8b6a7eaece2939100829ef`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:41:44 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 24 Apr 2017 23:43:37 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:43:38 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Apr 2017 23:43:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 24 Apr 2017 23:43:43 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 24 Apr 2017 23:43:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 24 Apr 2017 23:43:49 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 24 Apr 2017 23:43:50 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Mon, 01 May 2017 18:22:30 GMT
ENV KIBANA_VERSION=5.3.2
# Mon, 01 May 2017 18:22:48 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Mon, 01 May 2017 18:22:49 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 May 2017 18:22:50 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Mon, 01 May 2017 18:22:51 GMT
EXPOSE 5601/tcp
# Mon, 01 May 2017 18:22:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 01 May 2017 18:22:52 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4d610dc758e0e1ae9052920ca6e8a638697da5d9cc38b419d7a047a2a47f5f`  
		Last Modified: Tue, 25 Apr 2017 00:10:41 GMT  
		Size: 4.4 KB (4372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53721949fb074e2d5501e598da30037ca7e7743d907816d04379885242374be3`  
		Last Modified: Tue, 25 Apr 2017 00:10:47 GMT  
		Size: 22.4 MB (22408103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3954bd443eccabd3dd6ade7adf73857c25182f52b5f085045d5ebfb839acb221`  
		Last Modified: Tue, 25 Apr 2017 00:10:42 GMT  
		Size: 818.8 KB (818812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fdcf440153c1fccdff1ac2e7f3754169d45cf783e398943e6eb1db953300e1`  
		Last Modified: Tue, 25 Apr 2017 00:10:39 GMT  
		Size: 7.3 KB (7293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5fb5110d97e1dedc446d5b167ba15c3c114a2bbfb7e170ba5ee71855cbb583`  
		Last Modified: Tue, 25 Apr 2017 00:10:39 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793f0796505462bc40f71174c119c9a2449a4942865b885de6d1be541ea0e1c4`  
		Last Modified: Tue, 25 Apr 2017 00:10:39 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a3a9ae6dfb1e182491c5548d4fb0da654a759f51d91392b82fc1fb080cde79d`  
		Last Modified: Mon, 01 May 2017 18:23:23 GMT  
		Size: 39.4 MB (39362074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d5b82fbb210ef11a0961c44cb841b8f6fe03112e7bff2a4ae7f61d8da0c681`  
		Last Modified: Mon, 01 May 2017 18:23:15 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5`

```console
$ docker pull kibana@sha256:6daa5c381553bf4707b240096f0f2b5f899b5e12e05c94a0b3e1606177175fa8
```

-	Platforms:
	-	linux; amd64

### `kibana:5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.2 MB (115152939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1a447f330310d03e8cf5f43989875ea3e5cc6806b8b6a7eaece2939100829ef`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:41:44 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 24 Apr 2017 23:43:37 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:43:38 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Apr 2017 23:43:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 24 Apr 2017 23:43:43 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 24 Apr 2017 23:43:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 24 Apr 2017 23:43:49 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 24 Apr 2017 23:43:50 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Mon, 01 May 2017 18:22:30 GMT
ENV KIBANA_VERSION=5.3.2
# Mon, 01 May 2017 18:22:48 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Mon, 01 May 2017 18:22:49 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 May 2017 18:22:50 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Mon, 01 May 2017 18:22:51 GMT
EXPOSE 5601/tcp
# Mon, 01 May 2017 18:22:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 01 May 2017 18:22:52 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4d610dc758e0e1ae9052920ca6e8a638697da5d9cc38b419d7a047a2a47f5f`  
		Last Modified: Tue, 25 Apr 2017 00:10:41 GMT  
		Size: 4.4 KB (4372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53721949fb074e2d5501e598da30037ca7e7743d907816d04379885242374be3`  
		Last Modified: Tue, 25 Apr 2017 00:10:47 GMT  
		Size: 22.4 MB (22408103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3954bd443eccabd3dd6ade7adf73857c25182f52b5f085045d5ebfb839acb221`  
		Last Modified: Tue, 25 Apr 2017 00:10:42 GMT  
		Size: 818.8 KB (818812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fdcf440153c1fccdff1ac2e7f3754169d45cf783e398943e6eb1db953300e1`  
		Last Modified: Tue, 25 Apr 2017 00:10:39 GMT  
		Size: 7.3 KB (7293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5fb5110d97e1dedc446d5b167ba15c3c114a2bbfb7e170ba5ee71855cbb583`  
		Last Modified: Tue, 25 Apr 2017 00:10:39 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793f0796505462bc40f71174c119c9a2449a4942865b885de6d1be541ea0e1c4`  
		Last Modified: Tue, 25 Apr 2017 00:10:39 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a3a9ae6dfb1e182491c5548d4fb0da654a759f51d91392b82fc1fb080cde79d`  
		Last Modified: Mon, 01 May 2017 18:23:23 GMT  
		Size: 39.4 MB (39362074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d5b82fbb210ef11a0961c44cb841b8f6fe03112e7bff2a4ae7f61d8da0c681`  
		Last Modified: Mon, 01 May 2017 18:23:15 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:latest`

```console
$ docker pull kibana@sha256:6daa5c381553bf4707b240096f0f2b5f899b5e12e05c94a0b3e1606177175fa8
```

-	Platforms:
	-	linux; amd64

### `kibana:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.2 MB (115152939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1a447f330310d03e8cf5f43989875ea3e5cc6806b8b6a7eaece2939100829ef`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:41:44 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 24 Apr 2017 23:43:37 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:43:38 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Apr 2017 23:43:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 24 Apr 2017 23:43:43 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 24 Apr 2017 23:43:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 24 Apr 2017 23:43:49 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 24 Apr 2017 23:43:50 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Mon, 01 May 2017 18:22:30 GMT
ENV KIBANA_VERSION=5.3.2
# Mon, 01 May 2017 18:22:48 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Mon, 01 May 2017 18:22:49 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 May 2017 18:22:50 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Mon, 01 May 2017 18:22:51 GMT
EXPOSE 5601/tcp
# Mon, 01 May 2017 18:22:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 01 May 2017 18:22:52 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4d610dc758e0e1ae9052920ca6e8a638697da5d9cc38b419d7a047a2a47f5f`  
		Last Modified: Tue, 25 Apr 2017 00:10:41 GMT  
		Size: 4.4 KB (4372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53721949fb074e2d5501e598da30037ca7e7743d907816d04379885242374be3`  
		Last Modified: Tue, 25 Apr 2017 00:10:47 GMT  
		Size: 22.4 MB (22408103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3954bd443eccabd3dd6ade7adf73857c25182f52b5f085045d5ebfb839acb221`  
		Last Modified: Tue, 25 Apr 2017 00:10:42 GMT  
		Size: 818.8 KB (818812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fdcf440153c1fccdff1ac2e7f3754169d45cf783e398943e6eb1db953300e1`  
		Last Modified: Tue, 25 Apr 2017 00:10:39 GMT  
		Size: 7.3 KB (7293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5fb5110d97e1dedc446d5b167ba15c3c114a2bbfb7e170ba5ee71855cbb583`  
		Last Modified: Tue, 25 Apr 2017 00:10:39 GMT  
		Size: 1.4 KB (1447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793f0796505462bc40f71174c119c9a2449a4942865b885de6d1be541ea0e1c4`  
		Last Modified: Tue, 25 Apr 2017 00:10:39 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a3a9ae6dfb1e182491c5548d4fb0da654a759f51d91392b82fc1fb080cde79d`  
		Last Modified: Mon, 01 May 2017 18:23:23 GMT  
		Size: 39.4 MB (39362074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d5b82fbb210ef11a0961c44cb841b8f6fe03112e7bff2a4ae7f61d8da0c681`  
		Last Modified: Mon, 01 May 2017 18:23:15 GMT  
		Size: 338.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.6.4`

```console
$ docker pull kibana@sha256:33f85fded4b93232c777e25173e95078649b742bca75ded18efe34cb1115c57b
```

-	Platforms:
	-	linux; amd64

### `kibana:4.6.4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.2 MB (110219659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d842b15aad46be2d845876c678862ec2e6f5e03037183e51f78df86d4abe9cf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:41:44 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 24 Apr 2017 23:42:01 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:42:02 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Apr 2017 23:42:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 24 Apr 2017 23:42:07 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 24 Apr 2017 23:42:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 24 Apr 2017 23:42:12 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 24 Apr 2017 23:42:13 GMT
ENV KIBANA_MAJOR=4.6
# Mon, 24 Apr 2017 23:42:14 GMT
ENV KIBANA_VERSION=4.6.4
# Mon, 24 Apr 2017 23:42:15 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Mon, 24 Apr 2017 23:42:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Mon, 24 Apr 2017 23:42:32 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Apr 2017 23:42:33 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Mon, 24 Apr 2017 23:42:34 GMT
EXPOSE 5601/tcp
# Mon, 24 Apr 2017 23:42:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 24 Apr 2017 23:42:35 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4d610dc758e0e1ae9052920ca6e8a638697da5d9cc38b419d7a047a2a47f5f`  
		Last Modified: Tue, 25 Apr 2017 00:10:41 GMT  
		Size: 4.4 KB (4372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d304e18ae550f212812d0abb50694aa3da764db611b3b2c0ba7fb2e2984f5a9`  
		Last Modified: Tue, 25 Apr 2017 00:12:30 GMT  
		Size: 20.5 MB (20526073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f8ff42297fe09c618ff19fc3fc4815a2675bc9c87176d938be1fb2340ddeeee`  
		Last Modified: Tue, 25 Apr 2017 00:12:25 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391080deeaa8a93d6532b176ab1c6a3459d027977e299d0bbb2f5945d00cb2e9`  
		Last Modified: Tue, 25 Apr 2017 00:12:22 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f002649005e6771747d436e2c160c8c82679ea8e5ab70ee4a0c54fc8081d01f`  
		Last Modified: Tue, 25 Apr 2017 00:12:23 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f73e5330ed6a0d7ecdaa66d9c1a246e02b762f60844bbcb7530908ddfdbeb03`  
		Last Modified: Tue, 25 Apr 2017 00:12:23 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23c17d542cb762a25b64f990938041218fb463c9831ead6595a8792ad518c28`  
		Last Modified: Tue, 25 Apr 2017 00:12:47 GMT  
		Size: 36.3 MB (36310823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6a920055ee3102bf5046d8638f3c5812ec7ca5130ad680812d1ec13b9a8ee0`  
		Last Modified: Tue, 25 Apr 2017 00:12:22 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.6`

```console
$ docker pull kibana@sha256:33f85fded4b93232c777e25173e95078649b742bca75ded18efe34cb1115c57b
```

-	Platforms:
	-	linux; amd64

### `kibana:4.6` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.2 MB (110219659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d842b15aad46be2d845876c678862ec2e6f5e03037183e51f78df86d4abe9cf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:41:44 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 24 Apr 2017 23:42:01 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:42:02 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Apr 2017 23:42:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 24 Apr 2017 23:42:07 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 24 Apr 2017 23:42:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 24 Apr 2017 23:42:12 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 24 Apr 2017 23:42:13 GMT
ENV KIBANA_MAJOR=4.6
# Mon, 24 Apr 2017 23:42:14 GMT
ENV KIBANA_VERSION=4.6.4
# Mon, 24 Apr 2017 23:42:15 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Mon, 24 Apr 2017 23:42:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Mon, 24 Apr 2017 23:42:32 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Apr 2017 23:42:33 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Mon, 24 Apr 2017 23:42:34 GMT
EXPOSE 5601/tcp
# Mon, 24 Apr 2017 23:42:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 24 Apr 2017 23:42:35 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4d610dc758e0e1ae9052920ca6e8a638697da5d9cc38b419d7a047a2a47f5f`  
		Last Modified: Tue, 25 Apr 2017 00:10:41 GMT  
		Size: 4.4 KB (4372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d304e18ae550f212812d0abb50694aa3da764db611b3b2c0ba7fb2e2984f5a9`  
		Last Modified: Tue, 25 Apr 2017 00:12:30 GMT  
		Size: 20.5 MB (20526073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f8ff42297fe09c618ff19fc3fc4815a2675bc9c87176d938be1fb2340ddeeee`  
		Last Modified: Tue, 25 Apr 2017 00:12:25 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391080deeaa8a93d6532b176ab1c6a3459d027977e299d0bbb2f5945d00cb2e9`  
		Last Modified: Tue, 25 Apr 2017 00:12:22 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f002649005e6771747d436e2c160c8c82679ea8e5ab70ee4a0c54fc8081d01f`  
		Last Modified: Tue, 25 Apr 2017 00:12:23 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f73e5330ed6a0d7ecdaa66d9c1a246e02b762f60844bbcb7530908ddfdbeb03`  
		Last Modified: Tue, 25 Apr 2017 00:12:23 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23c17d542cb762a25b64f990938041218fb463c9831ead6595a8792ad518c28`  
		Last Modified: Tue, 25 Apr 2017 00:12:47 GMT  
		Size: 36.3 MB (36310823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6a920055ee3102bf5046d8638f3c5812ec7ca5130ad680812d1ec13b9a8ee0`  
		Last Modified: Tue, 25 Apr 2017 00:12:22 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4`

```console
$ docker pull kibana@sha256:33f85fded4b93232c777e25173e95078649b742bca75ded18efe34cb1115c57b
```

-	Platforms:
	-	linux; amd64

### `kibana:4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.2 MB (110219659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d842b15aad46be2d845876c678862ec2e6f5e03037183e51f78df86d4abe9cf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:41:44 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 24 Apr 2017 23:42:01 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:42:02 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Apr 2017 23:42:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 24 Apr 2017 23:42:07 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 24 Apr 2017 23:42:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 24 Apr 2017 23:42:12 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 24 Apr 2017 23:42:13 GMT
ENV KIBANA_MAJOR=4.6
# Mon, 24 Apr 2017 23:42:14 GMT
ENV KIBANA_VERSION=4.6.4
# Mon, 24 Apr 2017 23:42:15 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Mon, 24 Apr 2017 23:42:31 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Mon, 24 Apr 2017 23:42:32 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Apr 2017 23:42:33 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Mon, 24 Apr 2017 23:42:34 GMT
EXPOSE 5601/tcp
# Mon, 24 Apr 2017 23:42:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 24 Apr 2017 23:42:35 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4d610dc758e0e1ae9052920ca6e8a638697da5d9cc38b419d7a047a2a47f5f`  
		Last Modified: Tue, 25 Apr 2017 00:10:41 GMT  
		Size: 4.4 KB (4372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d304e18ae550f212812d0abb50694aa3da764db611b3b2c0ba7fb2e2984f5a9`  
		Last Modified: Tue, 25 Apr 2017 00:12:30 GMT  
		Size: 20.5 MB (20526073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f8ff42297fe09c618ff19fc3fc4815a2675bc9c87176d938be1fb2340ddeeee`  
		Last Modified: Tue, 25 Apr 2017 00:12:25 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391080deeaa8a93d6532b176ab1c6a3459d027977e299d0bbb2f5945d00cb2e9`  
		Last Modified: Tue, 25 Apr 2017 00:12:22 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f002649005e6771747d436e2c160c8c82679ea8e5ab70ee4a0c54fc8081d01f`  
		Last Modified: Tue, 25 Apr 2017 00:12:23 GMT  
		Size: 1.4 KB (1449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f73e5330ed6a0d7ecdaa66d9c1a246e02b762f60844bbcb7530908ddfdbeb03`  
		Last Modified: Tue, 25 Apr 2017 00:12:23 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23c17d542cb762a25b64f990938041218fb463c9831ead6595a8792ad518c28`  
		Last Modified: Tue, 25 Apr 2017 00:12:47 GMT  
		Size: 36.3 MB (36310823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6a920055ee3102bf5046d8638f3c5812ec7ca5130ad680812d1ec13b9a8ee0`  
		Last Modified: Tue, 25 Apr 2017 00:12:22 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.1.11`

```console
$ docker pull kibana@sha256:425ac348011aac3dd2b7c0a011dc4606bc40509a75c607f1832523972bf92025
```

-	Platforms:
	-	linux; amd64

### `kibana:4.1.11` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.3 MB (93270059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f38248506357c7181cfc2ddbba0327a7dc3fd0423d1da616c7d5d7bdfdc1ec6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:41:44 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 24 Apr 2017 23:42:01 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:42:02 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Apr 2017 23:42:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 24 Apr 2017 23:42:07 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 24 Apr 2017 23:42:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 24 Apr 2017 23:42:52 GMT
ENV KIBANA_VERSION=4.1.11
# Mon, 24 Apr 2017 23:42:53 GMT
ENV KIBANA_SHA1=13655cf94f5c47e8ab4d94c8170128f63be46ad5
# Mon, 24 Apr 2017 23:42:58 GMT
RUN set -x 	&& wget -O kibana.tar.gz "https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz" 	&& echo "${KIBANA_SHA1} *kibana.tar.gz" | sha1sum -c - 	&& mkdir -p /opt/kibana 	&& tar -xz --strip-components=1 -C /opt/kibana -f kibana.tar.gz 	&& chown -R kibana:kibana /opt/kibana 	&& rm kibana.tar.gz 		&& sed -ri "s!^(\#\s*)?(elasticsearch_url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Mon, 24 Apr 2017 23:42:58 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Apr 2017 23:42:59 GMT
COPY file:1ad4c14d23fc99eff1a91bced98f992e275b430cc6f63f5ad27bf5e6b929be00 in / 
# Mon, 24 Apr 2017 23:43:00 GMT
EXPOSE 5601/tcp
# Mon, 24 Apr 2017 23:43:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 24 Apr 2017 23:43:01 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4d610dc758e0e1ae9052920ca6e8a638697da5d9cc38b419d7a047a2a47f5f`  
		Last Modified: Tue, 25 Apr 2017 00:10:41 GMT  
		Size: 4.4 KB (4372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d304e18ae550f212812d0abb50694aa3da764db611b3b2c0ba7fb2e2984f5a9`  
		Last Modified: Tue, 25 Apr 2017 00:12:30 GMT  
		Size: 20.5 MB (20526073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f8ff42297fe09c618ff19fc3fc4815a2675bc9c87176d938be1fb2340ddeeee`  
		Last Modified: Tue, 25 Apr 2017 00:12:25 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391080deeaa8a93d6532b176ab1c6a3459d027977e299d0bbb2f5945d00cb2e9`  
		Last Modified: Tue, 25 Apr 2017 00:12:22 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20d19a8c1c56d069a16219f47c811bfcc06fd7912a80f68c637536075229de0`  
		Last Modified: Tue, 25 Apr 2017 00:14:10 GMT  
		Size: 19.4 MB (19362894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b827178b1f91d4e440893a88369a71aa84f633e00dae4e482fcd9e34c6f7ca`  
		Last Modified: Tue, 25 Apr 2017 00:14:01 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.1`

```console
$ docker pull kibana@sha256:425ac348011aac3dd2b7c0a011dc4606bc40509a75c607f1832523972bf92025
```

-	Platforms:
	-	linux; amd64

### `kibana:4.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.3 MB (93270059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f38248506357c7181cfc2ddbba0327a7dc3fd0423d1da616c7d5d7bdfdc1ec6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:41:44 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Mon, 24 Apr 2017 23:42:01 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:42:02 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Apr 2017 23:42:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 24 Apr 2017 23:42:07 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 24 Apr 2017 23:42:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 24 Apr 2017 23:42:52 GMT
ENV KIBANA_VERSION=4.1.11
# Mon, 24 Apr 2017 23:42:53 GMT
ENV KIBANA_SHA1=13655cf94f5c47e8ab4d94c8170128f63be46ad5
# Mon, 24 Apr 2017 23:42:58 GMT
RUN set -x 	&& wget -O kibana.tar.gz "https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz" 	&& echo "${KIBANA_SHA1} *kibana.tar.gz" | sha1sum -c - 	&& mkdir -p /opt/kibana 	&& tar -xz --strip-components=1 -C /opt/kibana -f kibana.tar.gz 	&& chown -R kibana:kibana /opt/kibana 	&& rm kibana.tar.gz 		&& sed -ri "s!^(\#\s*)?(elasticsearch_url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Mon, 24 Apr 2017 23:42:58 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Apr 2017 23:42:59 GMT
COPY file:1ad4c14d23fc99eff1a91bced98f992e275b430cc6f63f5ad27bf5e6b929be00 in / 
# Mon, 24 Apr 2017 23:43:00 GMT
EXPOSE 5601/tcp
# Mon, 24 Apr 2017 23:43:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 24 Apr 2017 23:43:01 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4d610dc758e0e1ae9052920ca6e8a638697da5d9cc38b419d7a047a2a47f5f`  
		Last Modified: Tue, 25 Apr 2017 00:10:41 GMT  
		Size: 4.4 KB (4372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d304e18ae550f212812d0abb50694aa3da764db611b3b2c0ba7fb2e2984f5a9`  
		Last Modified: Tue, 25 Apr 2017 00:12:30 GMT  
		Size: 20.5 MB (20526073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f8ff42297fe09c618ff19fc3fc4815a2675bc9c87176d938be1fb2340ddeeee`  
		Last Modified: Tue, 25 Apr 2017 00:12:25 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391080deeaa8a93d6532b176ab1c6a3459d027977e299d0bbb2f5945d00cb2e9`  
		Last Modified: Tue, 25 Apr 2017 00:12:22 GMT  
		Size: 7.3 KB (7294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20d19a8c1c56d069a16219f47c811bfcc06fd7912a80f68c637536075229de0`  
		Last Modified: Tue, 25 Apr 2017 00:14:10 GMT  
		Size: 19.4 MB (19362894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b827178b1f91d4e440893a88369a71aa84f633e00dae4e482fcd9e34c6f7ca`  
		Last Modified: Tue, 25 Apr 2017 00:14:01 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
