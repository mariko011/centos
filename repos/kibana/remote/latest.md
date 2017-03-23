## `kibana:latest`

```console
$ docker pull kibana@sha256:ebae4125a4bf5b8482bf2fddb9a28010ff089eb11161cd9d3ea6226b32b13ff0
```

-	Platforms:
	-	linux; amd64

### `kibana:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113110167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:724639b7091546477937ee0e4cc035c68d785aeef1ef9a55c9e2051e37ccc2f4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["kibana"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 20:55:30 GMT
RUN groupadd -r kibana && useradd -r -m -g kibana kibana
# Tue, 21 Mar 2017 20:56:37 GMT
RUN apt-get update && apt-get install -y 		apt-transport-https 		ca-certificates 		wget 		libfontconfig 		libfreetype6 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:56:37 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 20:56:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 21 Mar 2017 20:56:43 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 21 Mar 2017 20:56:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 21 Mar 2017 20:56:46 GMT
RUN set -ex; 	key='46095ACC8548582C1A2699A9D27D666CD88E42B4'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/elastic.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 20:56:47 GMT
RUN echo 'deb https://artifacts.elastic.co/packages/5.x/apt stable main' > /etc/apt/sources.list.d/kibana.list
# Tue, 21 Mar 2017 20:56:48 GMT
ENV KIBANA_VERSION=5.2.2
# Tue, 21 Mar 2017 20:57:03 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends kibana=$KIBANA_VERSION 	&& rm -rf /var/lib/apt/lists/* 		&& sed -ri "s!^(\#\s*)?(server\.host:).*!\2 '0.0.0.0'!" /etc/kibana/kibana.yml 	&& grep -q "^server\.host: '0.0.0.0'\$" /etc/kibana/kibana.yml 		&& sed -ri "s!^(\#\s*)?(elasticsearch\.url:).*!\2 'http://elasticsearch:9200'!" /etc/kibana/kibana.yml 	&& grep -q "^elasticsearch\.url: 'http://elasticsearch:9200'\$" /etc/kibana/kibana.yml
# Tue, 21 Mar 2017 20:57:04 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 20:57:05 GMT
COPY file:9a3ed3a1655d5afa631fded5211f1c33f5f49f1d1e0e0d9a031c9e8601111f05 in / 
# Tue, 21 Mar 2017 20:57:05 GMT
EXPOSE 5601/tcp
# Tue, 21 Mar 2017 20:57:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 21 Mar 2017 20:57:06 GMT
CMD ["kibana"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da41a38ea23917f9f37673d2c2acd2d08129ab37f09123586a1c72343a99aef9`  
		Last Modified: Thu, 23 Mar 2017 21:53:26 GMT  
		Size: 4.3 KB (4349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:562680f0f3bffdbee6b127731fd1ad8fd63c87062bfee8beac2fd2d92779579f`  
		Last Modified: Thu, 23 Mar 2017 21:55:54 GMT  
		Size: 21.7 MB (21710183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cade4f7688ac7c74f1ec84141cc184d9514f547ee92bd6c76d9fad84c27698b5`  
		Last Modified: Thu, 23 Mar 2017 21:55:47 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccbabfdc37b0c3ebc6623ef62252adb33a70ccd697a598af75823f45abcd724d`  
		Last Modified: Thu, 23 Mar 2017 21:55:45 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67946bcc50478e087d7c553ed0cd6c1ac8dcad99b34c981ae462488db20b3a5`  
		Last Modified: Thu, 23 Mar 2017 21:55:45 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6f8a274410c056ae9da6b2586fdd9ee35891ed0a5a4f48f4edc5b74affb1d5`  
		Last Modified: Thu, 23 Mar 2017 21:55:45 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6472b61fde7b36352c0358633b67699e9d057a1cd68988939b782530a786661e`  
		Last Modified: Thu, 23 Mar 2017 21:56:09 GMT  
		Size: 39.1 MB (39140094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b363a7b91fccf8fc17eaa076e735e26b8611dc5ab218212b898f71da3a736b`  
		Last Modified: Thu, 23 Mar 2017 21:55:45 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
