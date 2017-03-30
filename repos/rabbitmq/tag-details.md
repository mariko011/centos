<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rabbitmq`

-	[`rabbitmq:3.6.9`](#rabbitmq369)
-	[`rabbitmq:3.6`](#rabbitmq36)
-	[`rabbitmq:3`](#rabbitmq3)
-	[`rabbitmq:latest`](#rabbitmqlatest)
-	[`rabbitmq:3.6.9-management`](#rabbitmq369-management)
-	[`rabbitmq:3.6-management`](#rabbitmq36-management)
-	[`rabbitmq:3-management`](#rabbitmq3-management)
-	[`rabbitmq:management`](#rabbitmqmanagement)
-	[`rabbitmq:3.6.9-alpine`](#rabbitmq369-alpine)
-	[`rabbitmq:3.6-alpine`](#rabbitmq36-alpine)
-	[`rabbitmq:3-alpine`](#rabbitmq3-alpine)
-	[`rabbitmq:alpine`](#rabbitmqalpine)
-	[`rabbitmq:3.6.9-management-alpine`](#rabbitmq369-management-alpine)
-	[`rabbitmq:3.6-management-alpine`](#rabbitmq36-management-alpine)
-	[`rabbitmq:3-management-alpine`](#rabbitmq3-management-alpine)
-	[`rabbitmq:management-alpine`](#rabbitmqmanagement-alpine)

## `rabbitmq:3.6.9`

**does not exist** (yet?)

## `rabbitmq:3.6`

```console
$ docker pull rabbitmq@sha256:a9f4923559bbcd00b93b02e61615aef5eb6f1d1c98db51053bab0fa6b680db26
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86334551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cdcbee37f622c52f2b8a572577c4aa94daed06ffe8c3292c93141ed50bef248`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 23:55:41 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 21 Mar 2017 23:55:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 23:55:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 23:55:58 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 23:55:59 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Tue, 21 Mar 2017 23:56:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:56:27 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 21 Mar 2017 23:56:28 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 23:56:29 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 21 Mar 2017 23:56:29 GMT
ENV RABBITMQ_VERSION=3.6.8
# Tue, 21 Mar 2017 23:56:30 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.8-1
# Tue, 21 Mar 2017 23:56:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:56:37 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 23:56:37 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 21 Mar 2017 23:56:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 21 Mar 2017 23:56:38 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 21 Mar 2017 23:56:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 21 Mar 2017 23:56:40 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 21 Mar 2017 23:56:41 GMT
COPY file:aea0de868079820b38523daba3301f9d1b03f85139fbcab491d2bc10c2540046 in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:56:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 23:56:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 23:56:43 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 21 Mar 2017 23:56:44 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd4bdc20139db8db58fec0f4a518b99398d45daf9441718486d45d9db598433`  
		Last Modified: Fri, 24 Mar 2017 00:24:05 GMT  
		Size: 4.3 KB (4339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf7e941d26a17bc9c96b6a521a3158cbaaf2ea3aca820b592c48a3f161e00ad4`  
		Last Modified: Fri, 24 Mar 2017 00:24:06 GMT  
		Size: 1.3 MB (1288976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3820e0134b494cc49b4021fbf5a3e96585cbda482c3000eb7a3daaca0fea1b`  
		Last Modified: Fri, 24 Mar 2017 00:24:05 GMT  
		Size: 2.5 KB (2502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2faf50c361a52b8fe4a1278089842b2366cc93ff43cd62f59c9008d80538e619`  
		Last Modified: Fri, 24 Mar 2017 00:24:03 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfbe921a0db61127d93a2f75076ac5157d71720477ff223fcee62b2bd09f4a1d`  
		Last Modified: Fri, 24 Mar 2017 00:24:10 GMT  
		Size: 27.9 MB (27929946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45725958e87d117a7c30ad77199e3e9d9d3b1cfa1ee05478f77891e1eb875bf`  
		Last Modified: Fri, 24 Mar 2017 00:24:03 GMT  
		Size: 3.1 KB (3101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e6d2a1c35119945183bdbb31c9333c34193bad77e51981547853c07dfdb73f`  
		Last Modified: Fri, 24 Mar 2017 00:24:03 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfbb8f792445256197b18dcb319eb37b48d699ca5bb9fd47ee64baad376db68`  
		Last Modified: Fri, 24 Mar 2017 00:24:04 GMT  
		Size: 5.7 MB (5661382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:027017c5d811fa4c4a8c0715865331971b8cdeac548fccd7fd6224db27e5e1bd`  
		Last Modified: Fri, 24 Mar 2017 00:24:00 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595dcf5ef5b8731d062b1c394bad195dfef3faad27fa1d324a12b51497701886`  
		Last Modified: Fri, 24 Mar 2017 00:24:00 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c68f3099fad650866f1fb5d983db9e5f7683d08b02f7ef6e3f24969de39442ed`  
		Last Modified: Fri, 24 Mar 2017 00:24:00 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee6ac98e3fcce8a1d6d4ba0bd56dd41592394ccf683eec05521bd6b92e84251`  
		Last Modified: Fri, 24 Mar 2017 00:24:00 GMT  
		Size: 2.7 KB (2712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0760bbc38031312fa51d5a56ca6a652db328731de74adcdf1f73ab89939b0de`  
		Last Modified: Fri, 24 Mar 2017 00:24:00 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3`

```console
$ docker pull rabbitmq@sha256:a9f4923559bbcd00b93b02e61615aef5eb6f1d1c98db51053bab0fa6b680db26
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86334551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cdcbee37f622c52f2b8a572577c4aa94daed06ffe8c3292c93141ed50bef248`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 23:55:41 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 21 Mar 2017 23:55:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 23:55:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 23:55:58 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 23:55:59 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Tue, 21 Mar 2017 23:56:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:56:27 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 21 Mar 2017 23:56:28 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 23:56:29 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 21 Mar 2017 23:56:29 GMT
ENV RABBITMQ_VERSION=3.6.8
# Tue, 21 Mar 2017 23:56:30 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.8-1
# Tue, 21 Mar 2017 23:56:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:56:37 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 23:56:37 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 21 Mar 2017 23:56:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 21 Mar 2017 23:56:38 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 21 Mar 2017 23:56:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 21 Mar 2017 23:56:40 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 21 Mar 2017 23:56:41 GMT
COPY file:aea0de868079820b38523daba3301f9d1b03f85139fbcab491d2bc10c2540046 in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:56:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 23:56:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 23:56:43 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 21 Mar 2017 23:56:44 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd4bdc20139db8db58fec0f4a518b99398d45daf9441718486d45d9db598433`  
		Last Modified: Fri, 24 Mar 2017 00:24:05 GMT  
		Size: 4.3 KB (4339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf7e941d26a17bc9c96b6a521a3158cbaaf2ea3aca820b592c48a3f161e00ad4`  
		Last Modified: Fri, 24 Mar 2017 00:24:06 GMT  
		Size: 1.3 MB (1288976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3820e0134b494cc49b4021fbf5a3e96585cbda482c3000eb7a3daaca0fea1b`  
		Last Modified: Fri, 24 Mar 2017 00:24:05 GMT  
		Size: 2.5 KB (2502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2faf50c361a52b8fe4a1278089842b2366cc93ff43cd62f59c9008d80538e619`  
		Last Modified: Fri, 24 Mar 2017 00:24:03 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfbe921a0db61127d93a2f75076ac5157d71720477ff223fcee62b2bd09f4a1d`  
		Last Modified: Fri, 24 Mar 2017 00:24:10 GMT  
		Size: 27.9 MB (27929946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45725958e87d117a7c30ad77199e3e9d9d3b1cfa1ee05478f77891e1eb875bf`  
		Last Modified: Fri, 24 Mar 2017 00:24:03 GMT  
		Size: 3.1 KB (3101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e6d2a1c35119945183bdbb31c9333c34193bad77e51981547853c07dfdb73f`  
		Last Modified: Fri, 24 Mar 2017 00:24:03 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfbb8f792445256197b18dcb319eb37b48d699ca5bb9fd47ee64baad376db68`  
		Last Modified: Fri, 24 Mar 2017 00:24:04 GMT  
		Size: 5.7 MB (5661382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:027017c5d811fa4c4a8c0715865331971b8cdeac548fccd7fd6224db27e5e1bd`  
		Last Modified: Fri, 24 Mar 2017 00:24:00 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595dcf5ef5b8731d062b1c394bad195dfef3faad27fa1d324a12b51497701886`  
		Last Modified: Fri, 24 Mar 2017 00:24:00 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c68f3099fad650866f1fb5d983db9e5f7683d08b02f7ef6e3f24969de39442ed`  
		Last Modified: Fri, 24 Mar 2017 00:24:00 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee6ac98e3fcce8a1d6d4ba0bd56dd41592394ccf683eec05521bd6b92e84251`  
		Last Modified: Fri, 24 Mar 2017 00:24:00 GMT  
		Size: 2.7 KB (2712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0760bbc38031312fa51d5a56ca6a652db328731de74adcdf1f73ab89939b0de`  
		Last Modified: Fri, 24 Mar 2017 00:24:00 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:latest`

```console
$ docker pull rabbitmq@sha256:a9f4923559bbcd00b93b02e61615aef5eb6f1d1c98db51053bab0fa6b680db26
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86334551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cdcbee37f622c52f2b8a572577c4aa94daed06ffe8c3292c93141ed50bef248`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 23:55:41 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 21 Mar 2017 23:55:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 23:55:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 23:55:58 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 23:55:59 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Tue, 21 Mar 2017 23:56:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:56:27 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 21 Mar 2017 23:56:28 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 23:56:29 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 21 Mar 2017 23:56:29 GMT
ENV RABBITMQ_VERSION=3.6.8
# Tue, 21 Mar 2017 23:56:30 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.8-1
# Tue, 21 Mar 2017 23:56:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:56:37 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 23:56:37 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 21 Mar 2017 23:56:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 21 Mar 2017 23:56:38 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 21 Mar 2017 23:56:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 21 Mar 2017 23:56:40 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 21 Mar 2017 23:56:41 GMT
COPY file:aea0de868079820b38523daba3301f9d1b03f85139fbcab491d2bc10c2540046 in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:56:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 23:56:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 23:56:43 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 21 Mar 2017 23:56:44 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd4bdc20139db8db58fec0f4a518b99398d45daf9441718486d45d9db598433`  
		Last Modified: Fri, 24 Mar 2017 00:24:05 GMT  
		Size: 4.3 KB (4339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf7e941d26a17bc9c96b6a521a3158cbaaf2ea3aca820b592c48a3f161e00ad4`  
		Last Modified: Fri, 24 Mar 2017 00:24:06 GMT  
		Size: 1.3 MB (1288976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3820e0134b494cc49b4021fbf5a3e96585cbda482c3000eb7a3daaca0fea1b`  
		Last Modified: Fri, 24 Mar 2017 00:24:05 GMT  
		Size: 2.5 KB (2502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2faf50c361a52b8fe4a1278089842b2366cc93ff43cd62f59c9008d80538e619`  
		Last Modified: Fri, 24 Mar 2017 00:24:03 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfbe921a0db61127d93a2f75076ac5157d71720477ff223fcee62b2bd09f4a1d`  
		Last Modified: Fri, 24 Mar 2017 00:24:10 GMT  
		Size: 27.9 MB (27929946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45725958e87d117a7c30ad77199e3e9d9d3b1cfa1ee05478f77891e1eb875bf`  
		Last Modified: Fri, 24 Mar 2017 00:24:03 GMT  
		Size: 3.1 KB (3101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e6d2a1c35119945183bdbb31c9333c34193bad77e51981547853c07dfdb73f`  
		Last Modified: Fri, 24 Mar 2017 00:24:03 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfbb8f792445256197b18dcb319eb37b48d699ca5bb9fd47ee64baad376db68`  
		Last Modified: Fri, 24 Mar 2017 00:24:04 GMT  
		Size: 5.7 MB (5661382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:027017c5d811fa4c4a8c0715865331971b8cdeac548fccd7fd6224db27e5e1bd`  
		Last Modified: Fri, 24 Mar 2017 00:24:00 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595dcf5ef5b8731d062b1c394bad195dfef3faad27fa1d324a12b51497701886`  
		Last Modified: Fri, 24 Mar 2017 00:24:00 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c68f3099fad650866f1fb5d983db9e5f7683d08b02f7ef6e3f24969de39442ed`  
		Last Modified: Fri, 24 Mar 2017 00:24:00 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee6ac98e3fcce8a1d6d4ba0bd56dd41592394ccf683eec05521bd6b92e84251`  
		Last Modified: Fri, 24 Mar 2017 00:24:00 GMT  
		Size: 2.7 KB (2712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0760bbc38031312fa51d5a56ca6a652db328731de74adcdf1f73ab89939b0de`  
		Last Modified: Fri, 24 Mar 2017 00:24:00 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.9-management`

**does not exist** (yet?)

## `rabbitmq:3.6-management`

```console
$ docker pull rabbitmq@sha256:0297618bd60270f03665448b02b3b1110dfc51fae60a3c6804005169f0904dad
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-management` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86334737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33edb7eb2389c78e53173e184169740ebea79b6bca11d4766a2e83db75a69d6b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 23:55:41 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 21 Mar 2017 23:55:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 23:55:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 23:55:58 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 23:55:59 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Tue, 21 Mar 2017 23:56:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:56:27 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 21 Mar 2017 23:56:28 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 23:56:29 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 21 Mar 2017 23:56:29 GMT
ENV RABBITMQ_VERSION=3.6.8
# Tue, 21 Mar 2017 23:56:30 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.8-1
# Tue, 21 Mar 2017 23:56:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:56:37 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 23:56:37 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 21 Mar 2017 23:56:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 21 Mar 2017 23:56:38 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 21 Mar 2017 23:56:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 21 Mar 2017 23:56:40 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 21 Mar 2017 23:56:41 GMT
COPY file:aea0de868079820b38523daba3301f9d1b03f85139fbcab491d2bc10c2540046 in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:56:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 23:56:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 23:56:43 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 21 Mar 2017 23:56:44 GMT
CMD ["rabbitmq-server"]
# Tue, 21 Mar 2017 23:56:46 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 21 Mar 2017 23:56:46 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd4bdc20139db8db58fec0f4a518b99398d45daf9441718486d45d9db598433`  
		Last Modified: Fri, 24 Mar 2017 00:24:05 GMT  
		Size: 4.3 KB (4339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf7e941d26a17bc9c96b6a521a3158cbaaf2ea3aca820b592c48a3f161e00ad4`  
		Last Modified: Fri, 24 Mar 2017 00:24:06 GMT  
		Size: 1.3 MB (1288976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3820e0134b494cc49b4021fbf5a3e96585cbda482c3000eb7a3daaca0fea1b`  
		Last Modified: Fri, 24 Mar 2017 00:24:05 GMT  
		Size: 2.5 KB (2502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2faf50c361a52b8fe4a1278089842b2366cc93ff43cd62f59c9008d80538e619`  
		Last Modified: Fri, 24 Mar 2017 00:24:03 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfbe921a0db61127d93a2f75076ac5157d71720477ff223fcee62b2bd09f4a1d`  
		Last Modified: Fri, 24 Mar 2017 00:24:10 GMT  
		Size: 27.9 MB (27929946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45725958e87d117a7c30ad77199e3e9d9d3b1cfa1ee05478f77891e1eb875bf`  
		Last Modified: Fri, 24 Mar 2017 00:24:03 GMT  
		Size: 3.1 KB (3101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e6d2a1c35119945183bdbb31c9333c34193bad77e51981547853c07dfdb73f`  
		Last Modified: Fri, 24 Mar 2017 00:24:03 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfbb8f792445256197b18dcb319eb37b48d699ca5bb9fd47ee64baad376db68`  
		Last Modified: Fri, 24 Mar 2017 00:24:04 GMT  
		Size: 5.7 MB (5661382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:027017c5d811fa4c4a8c0715865331971b8cdeac548fccd7fd6224db27e5e1bd`  
		Last Modified: Fri, 24 Mar 2017 00:24:00 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595dcf5ef5b8731d062b1c394bad195dfef3faad27fa1d324a12b51497701886`  
		Last Modified: Fri, 24 Mar 2017 00:24:00 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c68f3099fad650866f1fb5d983db9e5f7683d08b02f7ef6e3f24969de39442ed`  
		Last Modified: Fri, 24 Mar 2017 00:24:00 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee6ac98e3fcce8a1d6d4ba0bd56dd41592394ccf683eec05521bd6b92e84251`  
		Last Modified: Fri, 24 Mar 2017 00:24:00 GMT  
		Size: 2.7 KB (2712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0760bbc38031312fa51d5a56ca6a652db328731de74adcdf1f73ab89939b0de`  
		Last Modified: Fri, 24 Mar 2017 00:24:00 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38e08926f9e91259cb825afdf61a01ebdab52d615bbc4fb73fa6246a02473229`  
		Last Modified: Fri, 24 Mar 2017 00:25:32 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management`

```console
$ docker pull rabbitmq@sha256:0297618bd60270f03665448b02b3b1110dfc51fae60a3c6804005169f0904dad
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-management` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86334737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33edb7eb2389c78e53173e184169740ebea79b6bca11d4766a2e83db75a69d6b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 23:55:41 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 21 Mar 2017 23:55:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 23:55:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 23:55:58 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 23:55:59 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Tue, 21 Mar 2017 23:56:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:56:27 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 21 Mar 2017 23:56:28 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 23:56:29 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 21 Mar 2017 23:56:29 GMT
ENV RABBITMQ_VERSION=3.6.8
# Tue, 21 Mar 2017 23:56:30 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.8-1
# Tue, 21 Mar 2017 23:56:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:56:37 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 23:56:37 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 21 Mar 2017 23:56:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 21 Mar 2017 23:56:38 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 21 Mar 2017 23:56:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 21 Mar 2017 23:56:40 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 21 Mar 2017 23:56:41 GMT
COPY file:aea0de868079820b38523daba3301f9d1b03f85139fbcab491d2bc10c2540046 in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:56:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 23:56:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 23:56:43 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 21 Mar 2017 23:56:44 GMT
CMD ["rabbitmq-server"]
# Tue, 21 Mar 2017 23:56:46 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 21 Mar 2017 23:56:46 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd4bdc20139db8db58fec0f4a518b99398d45daf9441718486d45d9db598433`  
		Last Modified: Fri, 24 Mar 2017 00:24:05 GMT  
		Size: 4.3 KB (4339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf7e941d26a17bc9c96b6a521a3158cbaaf2ea3aca820b592c48a3f161e00ad4`  
		Last Modified: Fri, 24 Mar 2017 00:24:06 GMT  
		Size: 1.3 MB (1288976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3820e0134b494cc49b4021fbf5a3e96585cbda482c3000eb7a3daaca0fea1b`  
		Last Modified: Fri, 24 Mar 2017 00:24:05 GMT  
		Size: 2.5 KB (2502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2faf50c361a52b8fe4a1278089842b2366cc93ff43cd62f59c9008d80538e619`  
		Last Modified: Fri, 24 Mar 2017 00:24:03 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfbe921a0db61127d93a2f75076ac5157d71720477ff223fcee62b2bd09f4a1d`  
		Last Modified: Fri, 24 Mar 2017 00:24:10 GMT  
		Size: 27.9 MB (27929946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45725958e87d117a7c30ad77199e3e9d9d3b1cfa1ee05478f77891e1eb875bf`  
		Last Modified: Fri, 24 Mar 2017 00:24:03 GMT  
		Size: 3.1 KB (3101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e6d2a1c35119945183bdbb31c9333c34193bad77e51981547853c07dfdb73f`  
		Last Modified: Fri, 24 Mar 2017 00:24:03 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfbb8f792445256197b18dcb319eb37b48d699ca5bb9fd47ee64baad376db68`  
		Last Modified: Fri, 24 Mar 2017 00:24:04 GMT  
		Size: 5.7 MB (5661382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:027017c5d811fa4c4a8c0715865331971b8cdeac548fccd7fd6224db27e5e1bd`  
		Last Modified: Fri, 24 Mar 2017 00:24:00 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595dcf5ef5b8731d062b1c394bad195dfef3faad27fa1d324a12b51497701886`  
		Last Modified: Fri, 24 Mar 2017 00:24:00 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c68f3099fad650866f1fb5d983db9e5f7683d08b02f7ef6e3f24969de39442ed`  
		Last Modified: Fri, 24 Mar 2017 00:24:00 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee6ac98e3fcce8a1d6d4ba0bd56dd41592394ccf683eec05521bd6b92e84251`  
		Last Modified: Fri, 24 Mar 2017 00:24:00 GMT  
		Size: 2.7 KB (2712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0760bbc38031312fa51d5a56ca6a652db328731de74adcdf1f73ab89939b0de`  
		Last Modified: Fri, 24 Mar 2017 00:24:00 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38e08926f9e91259cb825afdf61a01ebdab52d615bbc4fb73fa6246a02473229`  
		Last Modified: Fri, 24 Mar 2017 00:25:32 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management`

```console
$ docker pull rabbitmq@sha256:0297618bd60270f03665448b02b3b1110dfc51fae60a3c6804005169f0904dad
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:management` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86334737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33edb7eb2389c78e53173e184169740ebea79b6bca11d4766a2e83db75a69d6b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 23:55:41 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 21 Mar 2017 23:55:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 23:55:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 23:55:58 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 23:55:59 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Tue, 21 Mar 2017 23:56:26 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:56:27 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 21 Mar 2017 23:56:28 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 23:56:29 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 21 Mar 2017 23:56:29 GMT
ENV RABBITMQ_VERSION=3.6.8
# Tue, 21 Mar 2017 23:56:30 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.8-1
# Tue, 21 Mar 2017 23:56:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:56:37 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 23:56:37 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 21 Mar 2017 23:56:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 21 Mar 2017 23:56:38 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 21 Mar 2017 23:56:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 21 Mar 2017 23:56:40 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 21 Mar 2017 23:56:41 GMT
COPY file:aea0de868079820b38523daba3301f9d1b03f85139fbcab491d2bc10c2540046 in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:56:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 23:56:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 23:56:43 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 21 Mar 2017 23:56:44 GMT
CMD ["rabbitmq-server"]
# Tue, 21 Mar 2017 23:56:46 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 21 Mar 2017 23:56:46 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd4bdc20139db8db58fec0f4a518b99398d45daf9441718486d45d9db598433`  
		Last Modified: Fri, 24 Mar 2017 00:24:05 GMT  
		Size: 4.3 KB (4339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf7e941d26a17bc9c96b6a521a3158cbaaf2ea3aca820b592c48a3f161e00ad4`  
		Last Modified: Fri, 24 Mar 2017 00:24:06 GMT  
		Size: 1.3 MB (1288976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3820e0134b494cc49b4021fbf5a3e96585cbda482c3000eb7a3daaca0fea1b`  
		Last Modified: Fri, 24 Mar 2017 00:24:05 GMT  
		Size: 2.5 KB (2502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2faf50c361a52b8fe4a1278089842b2366cc93ff43cd62f59c9008d80538e619`  
		Last Modified: Fri, 24 Mar 2017 00:24:03 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfbe921a0db61127d93a2f75076ac5157d71720477ff223fcee62b2bd09f4a1d`  
		Last Modified: Fri, 24 Mar 2017 00:24:10 GMT  
		Size: 27.9 MB (27929946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45725958e87d117a7c30ad77199e3e9d9d3b1cfa1ee05478f77891e1eb875bf`  
		Last Modified: Fri, 24 Mar 2017 00:24:03 GMT  
		Size: 3.1 KB (3101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e6d2a1c35119945183bdbb31c9333c34193bad77e51981547853c07dfdb73f`  
		Last Modified: Fri, 24 Mar 2017 00:24:03 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfbb8f792445256197b18dcb319eb37b48d699ca5bb9fd47ee64baad376db68`  
		Last Modified: Fri, 24 Mar 2017 00:24:04 GMT  
		Size: 5.7 MB (5661382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:027017c5d811fa4c4a8c0715865331971b8cdeac548fccd7fd6224db27e5e1bd`  
		Last Modified: Fri, 24 Mar 2017 00:24:00 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595dcf5ef5b8731d062b1c394bad195dfef3faad27fa1d324a12b51497701886`  
		Last Modified: Fri, 24 Mar 2017 00:24:00 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c68f3099fad650866f1fb5d983db9e5f7683d08b02f7ef6e3f24969de39442ed`  
		Last Modified: Fri, 24 Mar 2017 00:24:00 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee6ac98e3fcce8a1d6d4ba0bd56dd41592394ccf683eec05521bd6b92e84251`  
		Last Modified: Fri, 24 Mar 2017 00:24:00 GMT  
		Size: 2.7 KB (2712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0760bbc38031312fa51d5a56ca6a652db328731de74adcdf1f73ab89939b0de`  
		Last Modified: Fri, 24 Mar 2017 00:24:00 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38e08926f9e91259cb825afdf61a01ebdab52d615bbc4fb73fa6246a02473229`  
		Last Modified: Fri, 24 Mar 2017 00:25:32 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.9-alpine`

**does not exist** (yet?)

## `rabbitmq:3.6-alpine`

```console
$ docker pull rabbitmq@sha256:61efa1d549e53a6c47c109b5d64b27f9711b640170642a5469d47957c118d509
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22667086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a4b5e026afe0f09eaa3999c103f9735dd1030d8eb39b626531c7a05f836b5a3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:32:01 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 03 Mar 2017 23:32:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 03 Mar 2017 23:32:05 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 03 Mar 2017 23:32:05 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Mar 2017 23:32:06 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 03 Mar 2017 23:32:06 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:32:06 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 17 Mar 2017 23:30:10 GMT
ENV RABBITMQ_VERSION=3.6.8
# Fri, 17 Mar 2017 23:30:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 17 Mar 2017 23:30:16 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 17 Mar 2017 23:30:17 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 17 Mar 2017 23:30:18 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 17 Mar 2017 23:30:19 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 17 Mar 2017 23:30:20 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 17 Mar 2017 23:30:21 GMT
COPY file:889db2c162130c516814ed2e12887ebedfe5494e2392df66a67bc436655833fa in /usr/local/bin/ 
# Fri, 17 Mar 2017 23:30:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Mar 2017 23:30:22 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 17 Mar 2017 23:30:23 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079ada2a602c1ceaf39dc585062270ab61a3a9ddec06591747a49b6ea44225d9`  
		Last Modified: Sat, 04 Mar 2017 05:44:12 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b76ba05073a2d714307ed2d601b2fdbc7d1a27cef1447f42a4c1402cdc5cd3`  
		Last Modified: Sat, 04 Mar 2017 05:44:08 GMT  
		Size: 7.7 KB (7686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca62166aad96f21722a89caed6c44a27f9ec61f3c5dead7e8dcef77086ab8da`  
		Last Modified: Sat, 04 Mar 2017 05:44:17 GMT  
		Size: 15.8 MB (15804017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010d9b0166c6144826f6973e950f81f8301fc261e974a234b13b4a04ee98237c`  
		Last Modified: Fri, 17 Mar 2017 23:33:29 GMT  
		Size: 4.9 MB (4945650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2491e862df7e634a5f7ca875c0413ad296211e5b135b1eb3c5a57e79a2bec70`  
		Last Modified: Fri, 17 Mar 2017 23:33:27 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98ce04c2bc090943b79497818e6bddad13657ebeb66a19237eca35f7b3704fa`  
		Last Modified: Fri, 17 Mar 2017 23:33:28 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb354d1958ecfce9f9b8cbf44ae6905687e01578f4e1ed1babb24923ae5fd7f2`  
		Last Modified: Fri, 17 Mar 2017 23:33:28 GMT  
		Size: 106.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab9b96578e03f0647f01cfc7d05c68437c95681bf68a86058dda253cf5b006c`  
		Last Modified: Fri, 17 Mar 2017 23:33:27 GMT  
		Size: 2.7 KB (2700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-alpine`

```console
$ docker pull rabbitmq@sha256:61efa1d549e53a6c47c109b5d64b27f9711b640170642a5469d47957c118d509
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22667086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a4b5e026afe0f09eaa3999c103f9735dd1030d8eb39b626531c7a05f836b5a3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:32:01 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 03 Mar 2017 23:32:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 03 Mar 2017 23:32:05 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 03 Mar 2017 23:32:05 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Mar 2017 23:32:06 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 03 Mar 2017 23:32:06 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:32:06 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 17 Mar 2017 23:30:10 GMT
ENV RABBITMQ_VERSION=3.6.8
# Fri, 17 Mar 2017 23:30:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 17 Mar 2017 23:30:16 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 17 Mar 2017 23:30:17 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 17 Mar 2017 23:30:18 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 17 Mar 2017 23:30:19 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 17 Mar 2017 23:30:20 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 17 Mar 2017 23:30:21 GMT
COPY file:889db2c162130c516814ed2e12887ebedfe5494e2392df66a67bc436655833fa in /usr/local/bin/ 
# Fri, 17 Mar 2017 23:30:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Mar 2017 23:30:22 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 17 Mar 2017 23:30:23 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079ada2a602c1ceaf39dc585062270ab61a3a9ddec06591747a49b6ea44225d9`  
		Last Modified: Sat, 04 Mar 2017 05:44:12 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b76ba05073a2d714307ed2d601b2fdbc7d1a27cef1447f42a4c1402cdc5cd3`  
		Last Modified: Sat, 04 Mar 2017 05:44:08 GMT  
		Size: 7.7 KB (7686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca62166aad96f21722a89caed6c44a27f9ec61f3c5dead7e8dcef77086ab8da`  
		Last Modified: Sat, 04 Mar 2017 05:44:17 GMT  
		Size: 15.8 MB (15804017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010d9b0166c6144826f6973e950f81f8301fc261e974a234b13b4a04ee98237c`  
		Last Modified: Fri, 17 Mar 2017 23:33:29 GMT  
		Size: 4.9 MB (4945650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2491e862df7e634a5f7ca875c0413ad296211e5b135b1eb3c5a57e79a2bec70`  
		Last Modified: Fri, 17 Mar 2017 23:33:27 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98ce04c2bc090943b79497818e6bddad13657ebeb66a19237eca35f7b3704fa`  
		Last Modified: Fri, 17 Mar 2017 23:33:28 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb354d1958ecfce9f9b8cbf44ae6905687e01578f4e1ed1babb24923ae5fd7f2`  
		Last Modified: Fri, 17 Mar 2017 23:33:28 GMT  
		Size: 106.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab9b96578e03f0647f01cfc7d05c68437c95681bf68a86058dda253cf5b006c`  
		Last Modified: Fri, 17 Mar 2017 23:33:27 GMT  
		Size: 2.7 KB (2700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:alpine`

```console
$ docker pull rabbitmq@sha256:61efa1d549e53a6c47c109b5d64b27f9711b640170642a5469d47957c118d509
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22667086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a4b5e026afe0f09eaa3999c103f9735dd1030d8eb39b626531c7a05f836b5a3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:32:01 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 03 Mar 2017 23:32:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 03 Mar 2017 23:32:05 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 03 Mar 2017 23:32:05 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Mar 2017 23:32:06 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 03 Mar 2017 23:32:06 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:32:06 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 17 Mar 2017 23:30:10 GMT
ENV RABBITMQ_VERSION=3.6.8
# Fri, 17 Mar 2017 23:30:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 17 Mar 2017 23:30:16 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 17 Mar 2017 23:30:17 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 17 Mar 2017 23:30:18 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 17 Mar 2017 23:30:19 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 17 Mar 2017 23:30:20 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 17 Mar 2017 23:30:21 GMT
COPY file:889db2c162130c516814ed2e12887ebedfe5494e2392df66a67bc436655833fa in /usr/local/bin/ 
# Fri, 17 Mar 2017 23:30:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Mar 2017 23:30:22 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 17 Mar 2017 23:30:23 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079ada2a602c1ceaf39dc585062270ab61a3a9ddec06591747a49b6ea44225d9`  
		Last Modified: Sat, 04 Mar 2017 05:44:12 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b76ba05073a2d714307ed2d601b2fdbc7d1a27cef1447f42a4c1402cdc5cd3`  
		Last Modified: Sat, 04 Mar 2017 05:44:08 GMT  
		Size: 7.7 KB (7686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca62166aad96f21722a89caed6c44a27f9ec61f3c5dead7e8dcef77086ab8da`  
		Last Modified: Sat, 04 Mar 2017 05:44:17 GMT  
		Size: 15.8 MB (15804017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010d9b0166c6144826f6973e950f81f8301fc261e974a234b13b4a04ee98237c`  
		Last Modified: Fri, 17 Mar 2017 23:33:29 GMT  
		Size: 4.9 MB (4945650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2491e862df7e634a5f7ca875c0413ad296211e5b135b1eb3c5a57e79a2bec70`  
		Last Modified: Fri, 17 Mar 2017 23:33:27 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98ce04c2bc090943b79497818e6bddad13657ebeb66a19237eca35f7b3704fa`  
		Last Modified: Fri, 17 Mar 2017 23:33:28 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb354d1958ecfce9f9b8cbf44ae6905687e01578f4e1ed1babb24923ae5fd7f2`  
		Last Modified: Fri, 17 Mar 2017 23:33:28 GMT  
		Size: 106.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab9b96578e03f0647f01cfc7d05c68437c95681bf68a86058dda253cf5b006c`  
		Last Modified: Fri, 17 Mar 2017 23:33:27 GMT  
		Size: 2.7 KB (2700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.9-management-alpine`

**does not exist** (yet?)

## `rabbitmq:3.6-management-alpine`

```console
$ docker pull rabbitmq@sha256:cc6eadabb48e0eed0ff14d77837addd8cc8a1c83494ec1010266f54e5a0f3645
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-management-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22667276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e590dd48cafa44d52ed71fb5921394592ed51c3784647fd9e88839ea69ed6fa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:32:01 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 03 Mar 2017 23:32:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 03 Mar 2017 23:32:05 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 03 Mar 2017 23:32:05 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Mar 2017 23:32:06 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 03 Mar 2017 23:32:06 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:32:06 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 17 Mar 2017 23:30:10 GMT
ENV RABBITMQ_VERSION=3.6.8
# Fri, 17 Mar 2017 23:30:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 17 Mar 2017 23:30:16 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 17 Mar 2017 23:30:17 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 17 Mar 2017 23:30:18 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 17 Mar 2017 23:30:19 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 17 Mar 2017 23:30:20 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 17 Mar 2017 23:30:21 GMT
COPY file:889db2c162130c516814ed2e12887ebedfe5494e2392df66a67bc436655833fa in /usr/local/bin/ 
# Fri, 17 Mar 2017 23:30:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Mar 2017 23:30:22 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 17 Mar 2017 23:30:23 GMT
CMD ["rabbitmq-server"]
# Fri, 17 Mar 2017 23:30:26 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 17 Mar 2017 23:30:26 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079ada2a602c1ceaf39dc585062270ab61a3a9ddec06591747a49b6ea44225d9`  
		Last Modified: Sat, 04 Mar 2017 05:44:12 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b76ba05073a2d714307ed2d601b2fdbc7d1a27cef1447f42a4c1402cdc5cd3`  
		Last Modified: Sat, 04 Mar 2017 05:44:08 GMT  
		Size: 7.7 KB (7686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca62166aad96f21722a89caed6c44a27f9ec61f3c5dead7e8dcef77086ab8da`  
		Last Modified: Sat, 04 Mar 2017 05:44:17 GMT  
		Size: 15.8 MB (15804017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010d9b0166c6144826f6973e950f81f8301fc261e974a234b13b4a04ee98237c`  
		Last Modified: Fri, 17 Mar 2017 23:33:29 GMT  
		Size: 4.9 MB (4945650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2491e862df7e634a5f7ca875c0413ad296211e5b135b1eb3c5a57e79a2bec70`  
		Last Modified: Fri, 17 Mar 2017 23:33:27 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98ce04c2bc090943b79497818e6bddad13657ebeb66a19237eca35f7b3704fa`  
		Last Modified: Fri, 17 Mar 2017 23:33:28 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb354d1958ecfce9f9b8cbf44ae6905687e01578f4e1ed1babb24923ae5fd7f2`  
		Last Modified: Fri, 17 Mar 2017 23:33:28 GMT  
		Size: 106.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab9b96578e03f0647f01cfc7d05c68437c95681bf68a86058dda253cf5b006c`  
		Last Modified: Fri, 17 Mar 2017 23:33:27 GMT  
		Size: 2.7 KB (2700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4597af31939f908008fdbcfeec671e9e5f9ada713e4e97273365140e60dc407a`  
		Last Modified: Fri, 17 Mar 2017 23:34:45 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management-alpine`

```console
$ docker pull rabbitmq@sha256:cc6eadabb48e0eed0ff14d77837addd8cc8a1c83494ec1010266f54e5a0f3645
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-management-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22667276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e590dd48cafa44d52ed71fb5921394592ed51c3784647fd9e88839ea69ed6fa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:32:01 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 03 Mar 2017 23:32:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 03 Mar 2017 23:32:05 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 03 Mar 2017 23:32:05 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Mar 2017 23:32:06 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 03 Mar 2017 23:32:06 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:32:06 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 17 Mar 2017 23:30:10 GMT
ENV RABBITMQ_VERSION=3.6.8
# Fri, 17 Mar 2017 23:30:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 17 Mar 2017 23:30:16 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 17 Mar 2017 23:30:17 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 17 Mar 2017 23:30:18 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 17 Mar 2017 23:30:19 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 17 Mar 2017 23:30:20 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 17 Mar 2017 23:30:21 GMT
COPY file:889db2c162130c516814ed2e12887ebedfe5494e2392df66a67bc436655833fa in /usr/local/bin/ 
# Fri, 17 Mar 2017 23:30:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Mar 2017 23:30:22 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 17 Mar 2017 23:30:23 GMT
CMD ["rabbitmq-server"]
# Fri, 17 Mar 2017 23:30:26 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 17 Mar 2017 23:30:26 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079ada2a602c1ceaf39dc585062270ab61a3a9ddec06591747a49b6ea44225d9`  
		Last Modified: Sat, 04 Mar 2017 05:44:12 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b76ba05073a2d714307ed2d601b2fdbc7d1a27cef1447f42a4c1402cdc5cd3`  
		Last Modified: Sat, 04 Mar 2017 05:44:08 GMT  
		Size: 7.7 KB (7686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca62166aad96f21722a89caed6c44a27f9ec61f3c5dead7e8dcef77086ab8da`  
		Last Modified: Sat, 04 Mar 2017 05:44:17 GMT  
		Size: 15.8 MB (15804017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010d9b0166c6144826f6973e950f81f8301fc261e974a234b13b4a04ee98237c`  
		Last Modified: Fri, 17 Mar 2017 23:33:29 GMT  
		Size: 4.9 MB (4945650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2491e862df7e634a5f7ca875c0413ad296211e5b135b1eb3c5a57e79a2bec70`  
		Last Modified: Fri, 17 Mar 2017 23:33:27 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98ce04c2bc090943b79497818e6bddad13657ebeb66a19237eca35f7b3704fa`  
		Last Modified: Fri, 17 Mar 2017 23:33:28 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb354d1958ecfce9f9b8cbf44ae6905687e01578f4e1ed1babb24923ae5fd7f2`  
		Last Modified: Fri, 17 Mar 2017 23:33:28 GMT  
		Size: 106.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab9b96578e03f0647f01cfc7d05c68437c95681bf68a86058dda253cf5b006c`  
		Last Modified: Fri, 17 Mar 2017 23:33:27 GMT  
		Size: 2.7 KB (2700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4597af31939f908008fdbcfeec671e9e5f9ada713e4e97273365140e60dc407a`  
		Last Modified: Fri, 17 Mar 2017 23:34:45 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management-alpine`

```console
$ docker pull rabbitmq@sha256:cc6eadabb48e0eed0ff14d77837addd8cc8a1c83494ec1010266f54e5a0f3645
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:management-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22667276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e590dd48cafa44d52ed71fb5921394592ed51c3784647fd9e88839ea69ed6fa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:32:01 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 03 Mar 2017 23:32:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 03 Mar 2017 23:32:05 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 03 Mar 2017 23:32:05 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Mar 2017 23:32:06 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 03 Mar 2017 23:32:06 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:32:06 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 17 Mar 2017 23:30:10 GMT
ENV RABBITMQ_VERSION=3.6.8
# Fri, 17 Mar 2017 23:30:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 17 Mar 2017 23:30:16 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 17 Mar 2017 23:30:17 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 17 Mar 2017 23:30:18 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 17 Mar 2017 23:30:19 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 17 Mar 2017 23:30:20 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 17 Mar 2017 23:30:21 GMT
COPY file:889db2c162130c516814ed2e12887ebedfe5494e2392df66a67bc436655833fa in /usr/local/bin/ 
# Fri, 17 Mar 2017 23:30:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Mar 2017 23:30:22 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 17 Mar 2017 23:30:23 GMT
CMD ["rabbitmq-server"]
# Fri, 17 Mar 2017 23:30:26 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 17 Mar 2017 23:30:26 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079ada2a602c1ceaf39dc585062270ab61a3a9ddec06591747a49b6ea44225d9`  
		Last Modified: Sat, 04 Mar 2017 05:44:12 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b76ba05073a2d714307ed2d601b2fdbc7d1a27cef1447f42a4c1402cdc5cd3`  
		Last Modified: Sat, 04 Mar 2017 05:44:08 GMT  
		Size: 7.7 KB (7686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca62166aad96f21722a89caed6c44a27f9ec61f3c5dead7e8dcef77086ab8da`  
		Last Modified: Sat, 04 Mar 2017 05:44:17 GMT  
		Size: 15.8 MB (15804017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010d9b0166c6144826f6973e950f81f8301fc261e974a234b13b4a04ee98237c`  
		Last Modified: Fri, 17 Mar 2017 23:33:29 GMT  
		Size: 4.9 MB (4945650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2491e862df7e634a5f7ca875c0413ad296211e5b135b1eb3c5a57e79a2bec70`  
		Last Modified: Fri, 17 Mar 2017 23:33:27 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98ce04c2bc090943b79497818e6bddad13657ebeb66a19237eca35f7b3704fa`  
		Last Modified: Fri, 17 Mar 2017 23:33:28 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb354d1958ecfce9f9b8cbf44ae6905687e01578f4e1ed1babb24923ae5fd7f2`  
		Last Modified: Fri, 17 Mar 2017 23:33:28 GMT  
		Size: 106.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab9b96578e03f0647f01cfc7d05c68437c95681bf68a86058dda253cf5b006c`  
		Last Modified: Fri, 17 Mar 2017 23:33:27 GMT  
		Size: 2.7 KB (2700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4597af31939f908008fdbcfeec671e9e5f9ada713e4e97273365140e60dc407a`  
		Last Modified: Fri, 17 Mar 2017 23:34:45 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
