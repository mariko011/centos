<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:5.2.2`](#kibana522)
-	[`kibana:5.2`](#kibana52)
-	[`kibana:5`](#kibana5)
-	[`kibana:latest`](#kibanalatest)
-	[`kibana:4.6.4`](#kibana464)
-	[`kibana:4.6`](#kibana46)
-	[`kibana:4`](#kibana4)
-	[`kibana:4.1.11`](#kibana4111)
-	[`kibana:4.1`](#kibana41)

## `kibana:5.2.2`

```console
$ docker pull kibana@sha256:6fa687d02a6b6a88da853375c3baf1f08a4ddc2c88016f3862af4b317d4228df
```

-	Platforms:
	-	linux; amd64

### `kibana:5.2.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.0 MB (112959808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:815950a52a6e2786b375f43b49029857ceeab1348b2ff78a3d47e7d2c838473e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 05:48:24 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 28 Feb 2017 05:51:34 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:51:46 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 05:51:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 28 Feb 2017 05:51:53 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 28 Feb 2017 05:51:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 28 Feb 2017 05:52:13 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 05:52:14 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Thu, 02 Mar 2017 00:33:15 GMT
ENV KIBANA_VERSION=5.2.2
# Thu, 02 Mar 2017 00:33:34 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Thu, 02 Mar 2017 00:33:35 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Mar 2017 00:33:36 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Thu, 02 Mar 2017 00:33:37 GMT
EXPOSE 5601/tcp
# Thu, 02 Mar 2017 00:33:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Mar 2017 00:33:38 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46dcaf926b8d03d6ac3133438ed31ac5dd9a4416e69ea82429ccfc6d6a28b5cb`  
		Last Modified: Thu, 02 Mar 2017 00:34:05 GMT  
		Size: 4.3 KB (4343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ef5ce70ffc650d2fda5a4f7d7b2cb61a1534831b20945923490de2a821475d`  
		Last Modified: Thu, 02 Mar 2017 00:34:11 GMT  
		Size: 21.6 MB (21638738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a73112e393d600717fd9b7ce3f41cee072983f0a8f7f9c7f9c987e379dd6ee98`  
		Last Modified: Thu, 02 Mar 2017 00:34:03 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1aa6b7c0d17c9b60728eef4a1aadeebd2980aa5f1ff5a6abb5e0396c5d1776`  
		Last Modified: Thu, 02 Mar 2017 00:34:02 GMT  
		Size: 7.1 KB (7120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2854962781690df6d8899fc4a8ac2195f5c9bc4ac9bec9fff4cea93d70d5cf2`  
		Last Modified: Thu, 02 Mar 2017 00:34:00 GMT  
		Size: 1.4 KB (1439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14bb097a15b89e0e6bb7b834ce7524ff9dcc71638a5aaf83e4c597d96324d55f`  
		Last Modified: Thu, 02 Mar 2017 00:34:00 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f23e0df1dd92dd610b493f75c8ccdc3f38fcd6db5f566366b487b9c6b703295`  
		Last Modified: Thu, 02 Mar 2017 00:34:16 GMT  
		Size: 39.1 MB (39136301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c1b834750836bac22d8624d8ba6009386baf83e4c0f3e8a7b2ea3c1ca3bdb3`  
		Last Modified: Thu, 02 Mar 2017 00:34:01 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5.2`

```console
$ docker pull kibana@sha256:6fa687d02a6b6a88da853375c3baf1f08a4ddc2c88016f3862af4b317d4228df
```

-	Platforms:
	-	linux; amd64

### `kibana:5.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.0 MB (112959808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:815950a52a6e2786b375f43b49029857ceeab1348b2ff78a3d47e7d2c838473e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 05:48:24 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 28 Feb 2017 05:51:34 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:51:46 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 05:51:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 28 Feb 2017 05:51:53 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 28 Feb 2017 05:51:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 28 Feb 2017 05:52:13 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 05:52:14 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Thu, 02 Mar 2017 00:33:15 GMT
ENV KIBANA_VERSION=5.2.2
# Thu, 02 Mar 2017 00:33:34 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Thu, 02 Mar 2017 00:33:35 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Mar 2017 00:33:36 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Thu, 02 Mar 2017 00:33:37 GMT
EXPOSE 5601/tcp
# Thu, 02 Mar 2017 00:33:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Mar 2017 00:33:38 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46dcaf926b8d03d6ac3133438ed31ac5dd9a4416e69ea82429ccfc6d6a28b5cb`  
		Last Modified: Thu, 02 Mar 2017 00:34:05 GMT  
		Size: 4.3 KB (4343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ef5ce70ffc650d2fda5a4f7d7b2cb61a1534831b20945923490de2a821475d`  
		Last Modified: Thu, 02 Mar 2017 00:34:11 GMT  
		Size: 21.6 MB (21638738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a73112e393d600717fd9b7ce3f41cee072983f0a8f7f9c7f9c987e379dd6ee98`  
		Last Modified: Thu, 02 Mar 2017 00:34:03 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1aa6b7c0d17c9b60728eef4a1aadeebd2980aa5f1ff5a6abb5e0396c5d1776`  
		Last Modified: Thu, 02 Mar 2017 00:34:02 GMT  
		Size: 7.1 KB (7120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2854962781690df6d8899fc4a8ac2195f5c9bc4ac9bec9fff4cea93d70d5cf2`  
		Last Modified: Thu, 02 Mar 2017 00:34:00 GMT  
		Size: 1.4 KB (1439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14bb097a15b89e0e6bb7b834ce7524ff9dcc71638a5aaf83e4c597d96324d55f`  
		Last Modified: Thu, 02 Mar 2017 00:34:00 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f23e0df1dd92dd610b493f75c8ccdc3f38fcd6db5f566366b487b9c6b703295`  
		Last Modified: Thu, 02 Mar 2017 00:34:16 GMT  
		Size: 39.1 MB (39136301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c1b834750836bac22d8624d8ba6009386baf83e4c0f3e8a7b2ea3c1ca3bdb3`  
		Last Modified: Thu, 02 Mar 2017 00:34:01 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:5`

```console
$ docker pull kibana@sha256:6fa687d02a6b6a88da853375c3baf1f08a4ddc2c88016f3862af4b317d4228df
```

-	Platforms:
	-	linux; amd64

### `kibana:5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.0 MB (112959808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:815950a52a6e2786b375f43b49029857ceeab1348b2ff78a3d47e7d2c838473e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 05:48:24 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 28 Feb 2017 05:51:34 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:51:46 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 05:51:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 28 Feb 2017 05:51:53 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 28 Feb 2017 05:51:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 28 Feb 2017 05:52:13 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 05:52:14 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Thu, 02 Mar 2017 00:33:15 GMT
ENV KIBANA_VERSION=5.2.2
# Thu, 02 Mar 2017 00:33:34 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Thu, 02 Mar 2017 00:33:35 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Mar 2017 00:33:36 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Thu, 02 Mar 2017 00:33:37 GMT
EXPOSE 5601/tcp
# Thu, 02 Mar 2017 00:33:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Mar 2017 00:33:38 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46dcaf926b8d03d6ac3133438ed31ac5dd9a4416e69ea82429ccfc6d6a28b5cb`  
		Last Modified: Thu, 02 Mar 2017 00:34:05 GMT  
		Size: 4.3 KB (4343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ef5ce70ffc650d2fda5a4f7d7b2cb61a1534831b20945923490de2a821475d`  
		Last Modified: Thu, 02 Mar 2017 00:34:11 GMT  
		Size: 21.6 MB (21638738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a73112e393d600717fd9b7ce3f41cee072983f0a8f7f9c7f9c987e379dd6ee98`  
		Last Modified: Thu, 02 Mar 2017 00:34:03 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1aa6b7c0d17c9b60728eef4a1aadeebd2980aa5f1ff5a6abb5e0396c5d1776`  
		Last Modified: Thu, 02 Mar 2017 00:34:02 GMT  
		Size: 7.1 KB (7120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2854962781690df6d8899fc4a8ac2195f5c9bc4ac9bec9fff4cea93d70d5cf2`  
		Last Modified: Thu, 02 Mar 2017 00:34:00 GMT  
		Size: 1.4 KB (1439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14bb097a15b89e0e6bb7b834ce7524ff9dcc71638a5aaf83e4c597d96324d55f`  
		Last Modified: Thu, 02 Mar 2017 00:34:00 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f23e0df1dd92dd610b493f75c8ccdc3f38fcd6db5f566366b487b9c6b703295`  
		Last Modified: Thu, 02 Mar 2017 00:34:16 GMT  
		Size: 39.1 MB (39136301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c1b834750836bac22d8624d8ba6009386baf83e4c0f3e8a7b2ea3c1ca3bdb3`  
		Last Modified: Thu, 02 Mar 2017 00:34:01 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:latest`

```console
$ docker pull kibana@sha256:6fa687d02a6b6a88da853375c3baf1f08a4ddc2c88016f3862af4b317d4228df
```

-	Platforms:
	-	linux; amd64

### `kibana:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.0 MB (112959808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:815950a52a6e2786b375f43b49029857ceeab1348b2ff78a3d47e7d2c838473e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 05:48:24 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 28 Feb 2017 05:51:34 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:51:46 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 05:51:53 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 28 Feb 2017 05:51:53 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 28 Feb 2017 05:51:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 28 Feb 2017 05:52:13 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 05:52:14 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Thu, 02 Mar 2017 00:33:15 GMT
ENV KIBANA_VERSION=5.2.2
# Thu, 02 Mar 2017 00:33:34 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Thu, 02 Mar 2017 00:33:35 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Mar 2017 00:33:36 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Thu, 02 Mar 2017 00:33:37 GMT
EXPOSE 5601/tcp
# Thu, 02 Mar 2017 00:33:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Mar 2017 00:33:38 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46dcaf926b8d03d6ac3133438ed31ac5dd9a4416e69ea82429ccfc6d6a28b5cb`  
		Last Modified: Thu, 02 Mar 2017 00:34:05 GMT  
		Size: 4.3 KB (4343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ef5ce70ffc650d2fda5a4f7d7b2cb61a1534831b20945923490de2a821475d`  
		Last Modified: Thu, 02 Mar 2017 00:34:11 GMT  
		Size: 21.6 MB (21638738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a73112e393d600717fd9b7ce3f41cee072983f0a8f7f9c7f9c987e379dd6ee98`  
		Last Modified: Thu, 02 Mar 2017 00:34:03 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1aa6b7c0d17c9b60728eef4a1aadeebd2980aa5f1ff5a6abb5e0396c5d1776`  
		Last Modified: Thu, 02 Mar 2017 00:34:02 GMT  
		Size: 7.1 KB (7120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2854962781690df6d8899fc4a8ac2195f5c9bc4ac9bec9fff4cea93d70d5cf2`  
		Last Modified: Thu, 02 Mar 2017 00:34:00 GMT  
		Size: 1.4 KB (1439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14bb097a15b89e0e6bb7b834ce7524ff9dcc71638a5aaf83e4c597d96324d55f`  
		Last Modified: Thu, 02 Mar 2017 00:34:00 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f23e0df1dd92dd610b493f75c8ccdc3f38fcd6db5f566366b487b9c6b703295`  
		Last Modified: Thu, 02 Mar 2017 00:34:16 GMT  
		Size: 39.1 MB (39136301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c1b834750836bac22d8624d8ba6009386baf83e4c0f3e8a7b2ea3c1ca3bdb3`  
		Last Modified: Thu, 02 Mar 2017 00:34:01 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.6.4`

```console
$ docker pull kibana@sha256:5d3ac48266ad60bc6327a6e7821f0467b8b4bee5f8b813b5b7ff19b81243eb40
```

-	Platforms:
	-	linux; amd64

### `kibana:4.6.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.9 MB (107907919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55dd0ecbd4f3a9ebd4f1d0e3cd6c2ee6f1177af922db718eb19db6a60e5fb1f7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 05:48:24 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 28 Feb 2017 05:49:09 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:49:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 05:49:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 28 Feb 2017 05:49:28 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 28 Feb 2017 05:49:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 28 Feb 2017 05:49:33 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 05:49:33 GMT
ENV KIBANA_MAJOR=4.6
# Tue, 28 Feb 2017 05:49:34 GMT
ENV KIBANA_VERSION=4.6.4
# Tue, 28 Feb 2017 05:49:35 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Tue, 28 Feb 2017 05:50:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 28 Feb 2017 05:50:18 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 05:50:19 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Tue, 28 Feb 2017 05:50:19 GMT
EXPOSE 5601/tcp
# Tue, 28 Feb 2017 05:50:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Feb 2017 05:50:20 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46dcaf926b8d03d6ac3133438ed31ac5dd9a4416e69ea82429ccfc6d6a28b5cb`  
		Last Modified: Thu, 02 Mar 2017 00:34:05 GMT  
		Size: 4.3 KB (4343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f9f38a3c508af658d7f141e8ed6f2a4d9bd46d9c3af265d8f271c9f5866359b`  
		Last Modified: Thu, 02 Mar 2017 00:36:19 GMT  
		Size: 19.8 MB (19797654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c2981aa5cbdc5dd9cc55fac06eddf16984380312e9c00d14985f003c5b9fb5`  
		Last Modified: Thu, 02 Mar 2017 00:36:12 GMT  
		Size: 807.9 KB (807932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91693f5490425d767cebee7396954e20861a1f8e6fcb805c0393799ea1af0a56`  
		Last Modified: Thu, 02 Mar 2017 00:36:09 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edaee6d9b26c2afd122445857c9e542272e7ad57581f66b948d33e85b532a672`  
		Last Modified: Thu, 02 Mar 2017 00:36:09 GMT  
		Size: 1.4 KB (1439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7067c92e85775c46907542d349a8e6262dc0040126532eb66c6672c401b59b64`  
		Last Modified: Thu, 02 Mar 2017 00:36:09 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3078d270ef4dad019c1108a004acc95aa40c8ecd611f4947aafd5da64194c0`  
		Last Modified: Thu, 02 Mar 2017 00:36:37 GMT  
		Size: 35.9 MB (35925495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8176bfba164032c808f96ca8861fa46a5cf56c7ccc602f6ffe691e883f8be2`  
		Last Modified: Thu, 02 Mar 2017 00:36:09 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.6`

```console
$ docker pull kibana@sha256:5d3ac48266ad60bc6327a6e7821f0467b8b4bee5f8b813b5b7ff19b81243eb40
```

-	Platforms:
	-	linux; amd64

### `kibana:4.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.9 MB (107907919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55dd0ecbd4f3a9ebd4f1d0e3cd6c2ee6f1177af922db718eb19db6a60e5fb1f7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 05:48:24 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 28 Feb 2017 05:49:09 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:49:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 05:49:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 28 Feb 2017 05:49:28 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 28 Feb 2017 05:49:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 28 Feb 2017 05:49:33 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 05:49:33 GMT
ENV KIBANA_MAJOR=4.6
# Tue, 28 Feb 2017 05:49:34 GMT
ENV KIBANA_VERSION=4.6.4
# Tue, 28 Feb 2017 05:49:35 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Tue, 28 Feb 2017 05:50:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 28 Feb 2017 05:50:18 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 05:50:19 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Tue, 28 Feb 2017 05:50:19 GMT
EXPOSE 5601/tcp
# Tue, 28 Feb 2017 05:50:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Feb 2017 05:50:20 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46dcaf926b8d03d6ac3133438ed31ac5dd9a4416e69ea82429ccfc6d6a28b5cb`  
		Last Modified: Thu, 02 Mar 2017 00:34:05 GMT  
		Size: 4.3 KB (4343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f9f38a3c508af658d7f141e8ed6f2a4d9bd46d9c3af265d8f271c9f5866359b`  
		Last Modified: Thu, 02 Mar 2017 00:36:19 GMT  
		Size: 19.8 MB (19797654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c2981aa5cbdc5dd9cc55fac06eddf16984380312e9c00d14985f003c5b9fb5`  
		Last Modified: Thu, 02 Mar 2017 00:36:12 GMT  
		Size: 807.9 KB (807932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91693f5490425d767cebee7396954e20861a1f8e6fcb805c0393799ea1af0a56`  
		Last Modified: Thu, 02 Mar 2017 00:36:09 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edaee6d9b26c2afd122445857c9e542272e7ad57581f66b948d33e85b532a672`  
		Last Modified: Thu, 02 Mar 2017 00:36:09 GMT  
		Size: 1.4 KB (1439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7067c92e85775c46907542d349a8e6262dc0040126532eb66c6672c401b59b64`  
		Last Modified: Thu, 02 Mar 2017 00:36:09 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3078d270ef4dad019c1108a004acc95aa40c8ecd611f4947aafd5da64194c0`  
		Last Modified: Thu, 02 Mar 2017 00:36:37 GMT  
		Size: 35.9 MB (35925495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8176bfba164032c808f96ca8861fa46a5cf56c7ccc602f6ffe691e883f8be2`  
		Last Modified: Thu, 02 Mar 2017 00:36:09 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4`

```console
$ docker pull kibana@sha256:5d3ac48266ad60bc6327a6e7821f0467b8b4bee5f8b813b5b7ff19b81243eb40
```

-	Platforms:
	-	linux; amd64

### `kibana:4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.9 MB (107907919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55dd0ecbd4f3a9ebd4f1d0e3cd6c2ee6f1177af922db718eb19db6a60e5fb1f7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 05:48:24 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 28 Feb 2017 05:49:09 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:49:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 05:49:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 28 Feb 2017 05:49:28 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 28 Feb 2017 05:49:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 28 Feb 2017 05:49:33 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 05:49:33 GMT
ENV KIBANA_MAJOR=4.6
# Tue, 28 Feb 2017 05:49:34 GMT
ENV KIBANA_VERSION=4.6.4
# Tue, 28 Feb 2017 05:49:35 GMT
RUN echo "deb http://packages.elastic.co/kibana/${KIBANA_MAJOR}/debian stable main" > /etc/apt/sources.list.d/kibana.list
# Tue, 28 Feb 2017 05:50:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& chown -R kibana:kibana /opt/kibana 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 28 Feb 2017 05:50:18 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 05:50:19 GMT
COPY file:1afe35294cf65766b0d19e7df5bfc671213b2d4cffe59decdc1cb601f7387d43 in / 
# Tue, 28 Feb 2017 05:50:19 GMT
EXPOSE 5601/tcp
# Tue, 28 Feb 2017 05:50:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Feb 2017 05:50:20 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46dcaf926b8d03d6ac3133438ed31ac5dd9a4416e69ea82429ccfc6d6a28b5cb`  
		Last Modified: Thu, 02 Mar 2017 00:34:05 GMT  
		Size: 4.3 KB (4343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f9f38a3c508af658d7f141e8ed6f2a4d9bd46d9c3af265d8f271c9f5866359b`  
		Last Modified: Thu, 02 Mar 2017 00:36:19 GMT  
		Size: 19.8 MB (19797654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c2981aa5cbdc5dd9cc55fac06eddf16984380312e9c00d14985f003c5b9fb5`  
		Last Modified: Thu, 02 Mar 2017 00:36:12 GMT  
		Size: 807.9 KB (807932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91693f5490425d767cebee7396954e20861a1f8e6fcb805c0393799ea1af0a56`  
		Last Modified: Thu, 02 Mar 2017 00:36:09 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edaee6d9b26c2afd122445857c9e542272e7ad57581f66b948d33e85b532a672`  
		Last Modified: Thu, 02 Mar 2017 00:36:09 GMT  
		Size: 1.4 KB (1439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7067c92e85775c46907542d349a8e6262dc0040126532eb66c6672c401b59b64`  
		Last Modified: Thu, 02 Mar 2017 00:36:09 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3078d270ef4dad019c1108a004acc95aa40c8ecd611f4947aafd5da64194c0`  
		Last Modified: Thu, 02 Mar 2017 00:36:37 GMT  
		Size: 35.9 MB (35925495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8176bfba164032c808f96ca8861fa46a5cf56c7ccc602f6ffe691e883f8be2`  
		Last Modified: Thu, 02 Mar 2017 00:36:09 GMT  
		Size: 345.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.1.11`

```console
$ docker pull kibana@sha256:7739086d1dde376d6c922443cb8b01b036ded685e9e142a96b4212d986538bb5
```

-	Platforms:
	-	linux; amd64

### `kibana:4.1.11` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.0 MB (90986763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9dd44a82f2dbb026372d825f668dafa80ca5e48bfccc3f7d5c5a879890fc522`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 05:48:24 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 28 Feb 2017 05:49:09 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:49:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 05:49:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 28 Feb 2017 05:49:28 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 28 Feb 2017 05:49:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 28 Feb 2017 05:50:21 GMT
ENV KIBANA_VERSION=4.1.11
# Tue, 28 Feb 2017 05:50:38 GMT
ENV KIBANA_SHA1=13655cf94f5c47e8ab4d94c8170128f63be46ad5
# Tue, 28 Feb 2017 05:50:46 GMT
RUN set -x 	&& wget -O kibana.tar.gz "https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz" 	&& echo "${KIBANA_SHA1} *kibana.tar.gz" | sha1sum -c - 	&& mkdir -p /opt/kibana 	&& tar -xz --strip-components=1 -C /opt/kibana -f kibana.tar.gz 	&& chown -R kibana:kibana /opt/kibana 	&& rm kibana.tar.gz 		&& sed -ri "s!^(\#\s*)?(elasticsearch_url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 28 Feb 2017 05:51:02 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 05:51:03 GMT
COPY file:1ad4c14d23fc99eff1a91bced98f992e275b430cc6f63f5ad27bf5e6b929be00 in / 
# Tue, 28 Feb 2017 05:51:04 GMT
EXPOSE 5601/tcp
# Tue, 28 Feb 2017 05:51:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Feb 2017 05:51:06 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46dcaf926b8d03d6ac3133438ed31ac5dd9a4416e69ea82429ccfc6d6a28b5cb`  
		Last Modified: Thu, 02 Mar 2017 00:34:05 GMT  
		Size: 4.3 KB (4343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f9f38a3c508af658d7f141e8ed6f2a4d9bd46d9c3af265d8f271c9f5866359b`  
		Last Modified: Thu, 02 Mar 2017 00:36:19 GMT  
		Size: 19.8 MB (19797654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c2981aa5cbdc5dd9cc55fac06eddf16984380312e9c00d14985f003c5b9fb5`  
		Last Modified: Thu, 02 Mar 2017 00:36:12 GMT  
		Size: 807.9 KB (807932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91693f5490425d767cebee7396954e20861a1f8e6fcb805c0393799ea1af0a56`  
		Last Modified: Thu, 02 Mar 2017 00:36:09 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fadc9bac4cf1be0bb603289cacb7c1bef1c56f6bdd30fbe52bbbe3ee2b9f318`  
		Last Modified: Thu, 02 Mar 2017 00:38:22 GMT  
		Size: 19.0 MB (19005999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:decf9bf45dd9ee4b3e9bfe052eb0eefb14bf0bc586475fd8750478a5db849058`  
		Last Modified: Thu, 02 Mar 2017 00:38:10 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:4.1`

```console
$ docker pull kibana@sha256:7739086d1dde376d6c922443cb8b01b036ded685e9e142a96b4212d986538bb5
```

-	Platforms:
	-	linux; amd64

### `kibana:4.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.0 MB (90986763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9dd44a82f2dbb026372d825f668dafa80ca5e48bfccc3f7d5c5a879890fc522`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 05:48:24 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 28 Feb 2017 05:49:09 GMT
RUN apt-get update && apt-get install -y 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:49:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 05:49:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 28 Feb 2017 05:49:28 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 28 Feb 2017 05:49:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 28 Feb 2017 05:50:21 GMT
ENV KIBANA_VERSION=4.1.11
# Tue, 28 Feb 2017 05:50:38 GMT
ENV KIBANA_SHA1=13655cf94f5c47e8ab4d94c8170128f63be46ad5
# Tue, 28 Feb 2017 05:50:46 GMT
RUN set -x 	&& wget -O kibana.tar.gz "https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz" 	&& echo "${KIBANA_SHA1} *kibana.tar.gz" | sha1sum -c - 	&& mkdir -p /opt/kibana 	&& tar -xz --strip-components=1 -C /opt/kibana -f kibana.tar.gz 	&& chown -R kibana:kibana /opt/kibana 	&& rm kibana.tar.gz 		&& sed -ri "s!^(\#\s*)?(elasticsearch_url:).*!\2 'http://elasticsearch:9200'!" /opt/kibana/config/kibana.yml 	&& grep -q 'elasticsearch:9200' /opt/kibana/config/kibana.yml
# Tue, 28 Feb 2017 05:51:02 GMT
ENV PATH=/opt/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 05:51:03 GMT
COPY file:1ad4c14d23fc99eff1a91bced98f992e275b430cc6f63f5ad27bf5e6b929be00 in / 
# Tue, 28 Feb 2017 05:51:04 GMT
EXPOSE 5601/tcp
# Tue, 28 Feb 2017 05:51:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 Feb 2017 05:51:06 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46dcaf926b8d03d6ac3133438ed31ac5dd9a4416e69ea82429ccfc6d6a28b5cb`  
		Last Modified: Thu, 02 Mar 2017 00:34:05 GMT  
		Size: 4.3 KB (4343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f9f38a3c508af658d7f141e8ed6f2a4d9bd46d9c3af265d8f271c9f5866359b`  
		Last Modified: Thu, 02 Mar 2017 00:36:19 GMT  
		Size: 19.8 MB (19797654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c2981aa5cbdc5dd9cc55fac06eddf16984380312e9c00d14985f003c5b9fb5`  
		Last Modified: Thu, 02 Mar 2017 00:36:12 GMT  
		Size: 807.9 KB (807932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91693f5490425d767cebee7396954e20861a1f8e6fcb805c0393799ea1af0a56`  
		Last Modified: Thu, 02 Mar 2017 00:36:09 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fadc9bac4cf1be0bb603289cacb7c1bef1c56f6bdd30fbe52bbbe3ee2b9f318`  
		Last Modified: Thu, 02 Mar 2017 00:38:22 GMT  
		Size: 19.0 MB (19005999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:decf9bf45dd9ee4b3e9bfe052eb0eefb14bf0bc586475fd8750478a5db849058`  
		Last Modified: Thu, 02 Mar 2017 00:38:10 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
