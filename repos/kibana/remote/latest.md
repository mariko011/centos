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
