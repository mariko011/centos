## `kibana:latest`

```console
$ docker pull kibana@sha256:6932f5a5edd2f47df1ba7b49115ad0b2b02cab15668d1e6baf9ae208f486942d
```

-	Platforms:
	-	linux; amd64

### `kibana:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.4 MB (130387312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dfc1de100f14c4698772801247f940a752cc41160dd2657a38d472a76d7ea50`
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
# Tue, 09 May 2017 17:25:23 GMT
ENV KIBANA_VERSION=5.4.0
# Tue, 09 May 2017 17:25:55 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Tue, 09 May 2017 17:25:59 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 09 May 2017 17:26:00 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Tue, 09 May 2017 17:26:00 GMT
EXPOSE 5601/tcp
# Tue, 09 May 2017 17:26:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 May 2017 17:26:02 GMT
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
	-	`sha256:5f30dea7f99df182eded0056bf4fe8c5f9813727af0e7278574ce605e6e5a3a5`  
		Last Modified: Sat, 13 May 2017 06:58:09 GMT  
		Size: 54.6 MB (54562147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0be91dd3ebcffa87368c5e07ee40c3cc62a6ee1befa41ab16694c4fdc4cde3`  
		Last Modified: Sat, 13 May 2017 06:57:18 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
