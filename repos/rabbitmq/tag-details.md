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

```console
$ docker pull rabbitmq@sha256:1f0f2e7f04c86682ce8ef23de3a763d0f064bee36b6970357a3fde38efa5415a
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.9` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86338246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ab25c6f1df5ad44a8b014f83c0fc05c486a50b158996c52ddddfe3f51fd49c9`
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
# Thu, 30 Mar 2017 22:06:44 GMT
ENV RABBITMQ_VERSION=3.6.9
# Thu, 30 Mar 2017 22:06:44 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.9-1
# Thu, 30 Mar 2017 22:06:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 30 Mar 2017 22:06:53 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Mar 2017 22:06:53 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 30 Mar 2017 22:06:55 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 30 Mar 2017 22:06:55 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 30 Mar 2017 22:06:57 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 30 Mar 2017 22:06:58 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Thu, 30 Mar 2017 22:06:59 GMT
COPY file:d113d7e85a6c3d8fcb33e2c1d33a5fa7e3335c73501b8e577c53c0462198a3ff in /usr/local/bin/ 
# Thu, 30 Mar 2017 22:07:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 30 Mar 2017 22:07:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 22:07:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 30 Mar 2017 22:07:03 GMT
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
	-	`sha256:043dd583fc3ed60ee63b2d1d3653d587e16971825aea72862f83ce784368353c`  
		Last Modified: Thu, 30 Mar 2017 22:07:51 GMT  
		Size: 5.7 MB (5664781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd466083e3a045869f712113b9158b5aaa4e9957e7f96487044824d3c8307a5`  
		Last Modified: Thu, 30 Mar 2017 22:07:48 GMT  
		Size: 2.3 KB (2288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83499077ade59140ca1a64f12aa9c4d35597bb66ff3a306d5e7a8bab91bfb22d`  
		Last Modified: Thu, 30 Mar 2017 22:07:47 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab70d372f4d78a57c77879d913dd6e152eecf00062e3aee9c7a9d1d3cc34fe0`  
		Last Modified: Thu, 30 Mar 2017 22:07:48 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8f395dedd39ae17421733f0cfca74404d5e3852d900a1265c4dd9de9afe324`  
		Last Modified: Thu, 30 Mar 2017 22:07:48 GMT  
		Size: 3.0 KB (3008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837e26ae94ed786c8f3d9a10368095dc8dc9a7d44dad9fe14674d418003ded85`  
		Last Modified: Thu, 30 Mar 2017 22:07:48 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6`

```console
$ docker pull rabbitmq@sha256:1f0f2e7f04c86682ce8ef23de3a763d0f064bee36b6970357a3fde38efa5415a
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86338246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ab25c6f1df5ad44a8b014f83c0fc05c486a50b158996c52ddddfe3f51fd49c9`
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
# Thu, 30 Mar 2017 22:06:44 GMT
ENV RABBITMQ_VERSION=3.6.9
# Thu, 30 Mar 2017 22:06:44 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.9-1
# Thu, 30 Mar 2017 22:06:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 30 Mar 2017 22:06:53 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Mar 2017 22:06:53 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 30 Mar 2017 22:06:55 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 30 Mar 2017 22:06:55 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 30 Mar 2017 22:06:57 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 30 Mar 2017 22:06:58 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Thu, 30 Mar 2017 22:06:59 GMT
COPY file:d113d7e85a6c3d8fcb33e2c1d33a5fa7e3335c73501b8e577c53c0462198a3ff in /usr/local/bin/ 
# Thu, 30 Mar 2017 22:07:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 30 Mar 2017 22:07:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 22:07:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 30 Mar 2017 22:07:03 GMT
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
	-	`sha256:043dd583fc3ed60ee63b2d1d3653d587e16971825aea72862f83ce784368353c`  
		Last Modified: Thu, 30 Mar 2017 22:07:51 GMT  
		Size: 5.7 MB (5664781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd466083e3a045869f712113b9158b5aaa4e9957e7f96487044824d3c8307a5`  
		Last Modified: Thu, 30 Mar 2017 22:07:48 GMT  
		Size: 2.3 KB (2288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83499077ade59140ca1a64f12aa9c4d35597bb66ff3a306d5e7a8bab91bfb22d`  
		Last Modified: Thu, 30 Mar 2017 22:07:47 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab70d372f4d78a57c77879d913dd6e152eecf00062e3aee9c7a9d1d3cc34fe0`  
		Last Modified: Thu, 30 Mar 2017 22:07:48 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8f395dedd39ae17421733f0cfca74404d5e3852d900a1265c4dd9de9afe324`  
		Last Modified: Thu, 30 Mar 2017 22:07:48 GMT  
		Size: 3.0 KB (3008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837e26ae94ed786c8f3d9a10368095dc8dc9a7d44dad9fe14674d418003ded85`  
		Last Modified: Thu, 30 Mar 2017 22:07:48 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3`

```console
$ docker pull rabbitmq@sha256:1f0f2e7f04c86682ce8ef23de3a763d0f064bee36b6970357a3fde38efa5415a
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86338246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ab25c6f1df5ad44a8b014f83c0fc05c486a50b158996c52ddddfe3f51fd49c9`
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
# Thu, 30 Mar 2017 22:06:44 GMT
ENV RABBITMQ_VERSION=3.6.9
# Thu, 30 Mar 2017 22:06:44 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.9-1
# Thu, 30 Mar 2017 22:06:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 30 Mar 2017 22:06:53 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Mar 2017 22:06:53 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 30 Mar 2017 22:06:55 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 30 Mar 2017 22:06:55 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 30 Mar 2017 22:06:57 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 30 Mar 2017 22:06:58 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Thu, 30 Mar 2017 22:06:59 GMT
COPY file:d113d7e85a6c3d8fcb33e2c1d33a5fa7e3335c73501b8e577c53c0462198a3ff in /usr/local/bin/ 
# Thu, 30 Mar 2017 22:07:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 30 Mar 2017 22:07:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 22:07:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 30 Mar 2017 22:07:03 GMT
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
	-	`sha256:043dd583fc3ed60ee63b2d1d3653d587e16971825aea72862f83ce784368353c`  
		Last Modified: Thu, 30 Mar 2017 22:07:51 GMT  
		Size: 5.7 MB (5664781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd466083e3a045869f712113b9158b5aaa4e9957e7f96487044824d3c8307a5`  
		Last Modified: Thu, 30 Mar 2017 22:07:48 GMT  
		Size: 2.3 KB (2288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83499077ade59140ca1a64f12aa9c4d35597bb66ff3a306d5e7a8bab91bfb22d`  
		Last Modified: Thu, 30 Mar 2017 22:07:47 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab70d372f4d78a57c77879d913dd6e152eecf00062e3aee9c7a9d1d3cc34fe0`  
		Last Modified: Thu, 30 Mar 2017 22:07:48 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8f395dedd39ae17421733f0cfca74404d5e3852d900a1265c4dd9de9afe324`  
		Last Modified: Thu, 30 Mar 2017 22:07:48 GMT  
		Size: 3.0 KB (3008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837e26ae94ed786c8f3d9a10368095dc8dc9a7d44dad9fe14674d418003ded85`  
		Last Modified: Thu, 30 Mar 2017 22:07:48 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:latest`

```console
$ docker pull rabbitmq@sha256:1f0f2e7f04c86682ce8ef23de3a763d0f064bee36b6970357a3fde38efa5415a
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86338246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ab25c6f1df5ad44a8b014f83c0fc05c486a50b158996c52ddddfe3f51fd49c9`
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
# Thu, 30 Mar 2017 22:06:44 GMT
ENV RABBITMQ_VERSION=3.6.9
# Thu, 30 Mar 2017 22:06:44 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.9-1
# Thu, 30 Mar 2017 22:06:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 30 Mar 2017 22:06:53 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Mar 2017 22:06:53 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 30 Mar 2017 22:06:55 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 30 Mar 2017 22:06:55 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 30 Mar 2017 22:06:57 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 30 Mar 2017 22:06:58 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Thu, 30 Mar 2017 22:06:59 GMT
COPY file:d113d7e85a6c3d8fcb33e2c1d33a5fa7e3335c73501b8e577c53c0462198a3ff in /usr/local/bin/ 
# Thu, 30 Mar 2017 22:07:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 30 Mar 2017 22:07:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 22:07:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 30 Mar 2017 22:07:03 GMT
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
	-	`sha256:043dd583fc3ed60ee63b2d1d3653d587e16971825aea72862f83ce784368353c`  
		Last Modified: Thu, 30 Mar 2017 22:07:51 GMT  
		Size: 5.7 MB (5664781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd466083e3a045869f712113b9158b5aaa4e9957e7f96487044824d3c8307a5`  
		Last Modified: Thu, 30 Mar 2017 22:07:48 GMT  
		Size: 2.3 KB (2288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83499077ade59140ca1a64f12aa9c4d35597bb66ff3a306d5e7a8bab91bfb22d`  
		Last Modified: Thu, 30 Mar 2017 22:07:47 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab70d372f4d78a57c77879d913dd6e152eecf00062e3aee9c7a9d1d3cc34fe0`  
		Last Modified: Thu, 30 Mar 2017 22:07:48 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8f395dedd39ae17421733f0cfca74404d5e3852d900a1265c4dd9de9afe324`  
		Last Modified: Thu, 30 Mar 2017 22:07:48 GMT  
		Size: 3.0 KB (3008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837e26ae94ed786c8f3d9a10368095dc8dc9a7d44dad9fe14674d418003ded85`  
		Last Modified: Thu, 30 Mar 2017 22:07:48 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.9-management`

```console
$ docker pull rabbitmq@sha256:b592bfd7047ec18aaaef6cfebde0a76909ac6fedfb90ed1fec2cfe2fe84dc958
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.9-management` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86338434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f349336a0a49296091c4c82369bcd67533afb51391ba3e622579aeacc97d0bdf`
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
# Thu, 30 Mar 2017 22:06:44 GMT
ENV RABBITMQ_VERSION=3.6.9
# Thu, 30 Mar 2017 22:06:44 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.9-1
# Thu, 30 Mar 2017 22:06:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 30 Mar 2017 22:06:53 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Mar 2017 22:06:53 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 30 Mar 2017 22:06:55 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 30 Mar 2017 22:06:55 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 30 Mar 2017 22:06:57 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 30 Mar 2017 22:06:58 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Thu, 30 Mar 2017 22:06:59 GMT
COPY file:d113d7e85a6c3d8fcb33e2c1d33a5fa7e3335c73501b8e577c53c0462198a3ff in /usr/local/bin/ 
# Thu, 30 Mar 2017 22:07:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 30 Mar 2017 22:07:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 22:07:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 30 Mar 2017 22:07:03 GMT
CMD ["rabbitmq-server"]
# Thu, 30 Mar 2017 22:07:06 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 30 Mar 2017 22:07:07 GMT
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
	-	`sha256:043dd583fc3ed60ee63b2d1d3653d587e16971825aea72862f83ce784368353c`  
		Last Modified: Thu, 30 Mar 2017 22:07:51 GMT  
		Size: 5.7 MB (5664781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd466083e3a045869f712113b9158b5aaa4e9957e7f96487044824d3c8307a5`  
		Last Modified: Thu, 30 Mar 2017 22:07:48 GMT  
		Size: 2.3 KB (2288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83499077ade59140ca1a64f12aa9c4d35597bb66ff3a306d5e7a8bab91bfb22d`  
		Last Modified: Thu, 30 Mar 2017 22:07:47 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab70d372f4d78a57c77879d913dd6e152eecf00062e3aee9c7a9d1d3cc34fe0`  
		Last Modified: Thu, 30 Mar 2017 22:07:48 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8f395dedd39ae17421733f0cfca74404d5e3852d900a1265c4dd9de9afe324`  
		Last Modified: Thu, 30 Mar 2017 22:07:48 GMT  
		Size: 3.0 KB (3008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837e26ae94ed786c8f3d9a10368095dc8dc9a7d44dad9fe14674d418003ded85`  
		Last Modified: Thu, 30 Mar 2017 22:07:48 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c696706a5280b74dfeb06c4bddc294fc7c500ed4fed7b9dcffc9dfd086ddc09`  
		Last Modified: Thu, 30 Mar 2017 22:09:20 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management`

```console
$ docker pull rabbitmq@sha256:b592bfd7047ec18aaaef6cfebde0a76909ac6fedfb90ed1fec2cfe2fe84dc958
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-management` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86338434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f349336a0a49296091c4c82369bcd67533afb51391ba3e622579aeacc97d0bdf`
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
# Thu, 30 Mar 2017 22:06:44 GMT
ENV RABBITMQ_VERSION=3.6.9
# Thu, 30 Mar 2017 22:06:44 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.9-1
# Thu, 30 Mar 2017 22:06:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 30 Mar 2017 22:06:53 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Mar 2017 22:06:53 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 30 Mar 2017 22:06:55 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 30 Mar 2017 22:06:55 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 30 Mar 2017 22:06:57 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 30 Mar 2017 22:06:58 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Thu, 30 Mar 2017 22:06:59 GMT
COPY file:d113d7e85a6c3d8fcb33e2c1d33a5fa7e3335c73501b8e577c53c0462198a3ff in /usr/local/bin/ 
# Thu, 30 Mar 2017 22:07:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 30 Mar 2017 22:07:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 22:07:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 30 Mar 2017 22:07:03 GMT
CMD ["rabbitmq-server"]
# Thu, 30 Mar 2017 22:07:06 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 30 Mar 2017 22:07:07 GMT
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
	-	`sha256:043dd583fc3ed60ee63b2d1d3653d587e16971825aea72862f83ce784368353c`  
		Last Modified: Thu, 30 Mar 2017 22:07:51 GMT  
		Size: 5.7 MB (5664781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd466083e3a045869f712113b9158b5aaa4e9957e7f96487044824d3c8307a5`  
		Last Modified: Thu, 30 Mar 2017 22:07:48 GMT  
		Size: 2.3 KB (2288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83499077ade59140ca1a64f12aa9c4d35597bb66ff3a306d5e7a8bab91bfb22d`  
		Last Modified: Thu, 30 Mar 2017 22:07:47 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab70d372f4d78a57c77879d913dd6e152eecf00062e3aee9c7a9d1d3cc34fe0`  
		Last Modified: Thu, 30 Mar 2017 22:07:48 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8f395dedd39ae17421733f0cfca74404d5e3852d900a1265c4dd9de9afe324`  
		Last Modified: Thu, 30 Mar 2017 22:07:48 GMT  
		Size: 3.0 KB (3008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837e26ae94ed786c8f3d9a10368095dc8dc9a7d44dad9fe14674d418003ded85`  
		Last Modified: Thu, 30 Mar 2017 22:07:48 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c696706a5280b74dfeb06c4bddc294fc7c500ed4fed7b9dcffc9dfd086ddc09`  
		Last Modified: Thu, 30 Mar 2017 22:09:20 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management`

```console
$ docker pull rabbitmq@sha256:b592bfd7047ec18aaaef6cfebde0a76909ac6fedfb90ed1fec2cfe2fe84dc958
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-management` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86338434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f349336a0a49296091c4c82369bcd67533afb51391ba3e622579aeacc97d0bdf`
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
# Thu, 30 Mar 2017 22:06:44 GMT
ENV RABBITMQ_VERSION=3.6.9
# Thu, 30 Mar 2017 22:06:44 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.9-1
# Thu, 30 Mar 2017 22:06:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 30 Mar 2017 22:06:53 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Mar 2017 22:06:53 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 30 Mar 2017 22:06:55 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 30 Mar 2017 22:06:55 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 30 Mar 2017 22:06:57 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 30 Mar 2017 22:06:58 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Thu, 30 Mar 2017 22:06:59 GMT
COPY file:d113d7e85a6c3d8fcb33e2c1d33a5fa7e3335c73501b8e577c53c0462198a3ff in /usr/local/bin/ 
# Thu, 30 Mar 2017 22:07:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 30 Mar 2017 22:07:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 22:07:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 30 Mar 2017 22:07:03 GMT
CMD ["rabbitmq-server"]
# Thu, 30 Mar 2017 22:07:06 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 30 Mar 2017 22:07:07 GMT
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
	-	`sha256:043dd583fc3ed60ee63b2d1d3653d587e16971825aea72862f83ce784368353c`  
		Last Modified: Thu, 30 Mar 2017 22:07:51 GMT  
		Size: 5.7 MB (5664781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd466083e3a045869f712113b9158b5aaa4e9957e7f96487044824d3c8307a5`  
		Last Modified: Thu, 30 Mar 2017 22:07:48 GMT  
		Size: 2.3 KB (2288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83499077ade59140ca1a64f12aa9c4d35597bb66ff3a306d5e7a8bab91bfb22d`  
		Last Modified: Thu, 30 Mar 2017 22:07:47 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab70d372f4d78a57c77879d913dd6e152eecf00062e3aee9c7a9d1d3cc34fe0`  
		Last Modified: Thu, 30 Mar 2017 22:07:48 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8f395dedd39ae17421733f0cfca74404d5e3852d900a1265c4dd9de9afe324`  
		Last Modified: Thu, 30 Mar 2017 22:07:48 GMT  
		Size: 3.0 KB (3008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837e26ae94ed786c8f3d9a10368095dc8dc9a7d44dad9fe14674d418003ded85`  
		Last Modified: Thu, 30 Mar 2017 22:07:48 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c696706a5280b74dfeb06c4bddc294fc7c500ed4fed7b9dcffc9dfd086ddc09`  
		Last Modified: Thu, 30 Mar 2017 22:09:20 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management`

```console
$ docker pull rabbitmq@sha256:b592bfd7047ec18aaaef6cfebde0a76909ac6fedfb90ed1fec2cfe2fe84dc958
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:management` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86338434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f349336a0a49296091c4c82369bcd67533afb51391ba3e622579aeacc97d0bdf`
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
# Thu, 30 Mar 2017 22:06:44 GMT
ENV RABBITMQ_VERSION=3.6.9
# Thu, 30 Mar 2017 22:06:44 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.9-1
# Thu, 30 Mar 2017 22:06:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 30 Mar 2017 22:06:53 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 Mar 2017 22:06:53 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 30 Mar 2017 22:06:55 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 30 Mar 2017 22:06:55 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 30 Mar 2017 22:06:57 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 30 Mar 2017 22:06:58 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Thu, 30 Mar 2017 22:06:59 GMT
COPY file:d113d7e85a6c3d8fcb33e2c1d33a5fa7e3335c73501b8e577c53c0462198a3ff in /usr/local/bin/ 
# Thu, 30 Mar 2017 22:07:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 30 Mar 2017 22:07:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 22:07:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 30 Mar 2017 22:07:03 GMT
CMD ["rabbitmq-server"]
# Thu, 30 Mar 2017 22:07:06 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 30 Mar 2017 22:07:07 GMT
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
	-	`sha256:043dd583fc3ed60ee63b2d1d3653d587e16971825aea72862f83ce784368353c`  
		Last Modified: Thu, 30 Mar 2017 22:07:51 GMT  
		Size: 5.7 MB (5664781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd466083e3a045869f712113b9158b5aaa4e9957e7f96487044824d3c8307a5`  
		Last Modified: Thu, 30 Mar 2017 22:07:48 GMT  
		Size: 2.3 KB (2288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83499077ade59140ca1a64f12aa9c4d35597bb66ff3a306d5e7a8bab91bfb22d`  
		Last Modified: Thu, 30 Mar 2017 22:07:47 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab70d372f4d78a57c77879d913dd6e152eecf00062e3aee9c7a9d1d3cc34fe0`  
		Last Modified: Thu, 30 Mar 2017 22:07:48 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f8f395dedd39ae17421733f0cfca74404d5e3852d900a1265c4dd9de9afe324`  
		Last Modified: Thu, 30 Mar 2017 22:07:48 GMT  
		Size: 3.0 KB (3008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837e26ae94ed786c8f3d9a10368095dc8dc9a7d44dad9fe14674d418003ded85`  
		Last Modified: Thu, 30 Mar 2017 22:07:48 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c696706a5280b74dfeb06c4bddc294fc7c500ed4fed7b9dcffc9dfd086ddc09`  
		Last Modified: Thu, 30 Mar 2017 22:09:20 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.9-alpine`

```console
$ docker pull rabbitmq@sha256:c9cbf523a26d61f9db67cdb64dd474ef444ae62b394e9f9f8c7652765fed0b38
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.9-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22671069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c25e3977f1ba4a423a31d969436b6ff4f6c00600edd3d9747180da6f405805ca`
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
# Thu, 30 Mar 2017 22:07:08 GMT
ENV RABBITMQ_VERSION=3.6.9
# Thu, 30 Mar 2017 22:07:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 30 Mar 2017 22:07:15 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 30 Mar 2017 22:07:16 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 30 Mar 2017 22:07:17 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 30 Mar 2017 22:07:18 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 30 Mar 2017 22:07:19 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 30 Mar 2017 22:07:20 GMT
COPY file:6cb4b3fb38376fc7af493014423bc9000d6477ca944b52677c1338b4c0e3e2ab in /usr/local/bin/ 
# Thu, 30 Mar 2017 22:07:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 22:07:21 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 30 Mar 2017 22:07:22 GMT
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
	-	`sha256:7135a346decf8b4702d300b6cb9ec9736cd58df68e4f4b2c63d3ef4f058ef7d9`  
		Last Modified: Thu, 30 Mar 2017 22:10:45 GMT  
		Size: 4.9 MB (4949335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf7c356704c8f21571d6fdd9186378ae209262242d3dcae2eb3ed5811ef3e98`  
		Last Modified: Thu, 30 Mar 2017 22:10:44 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77d8db7a4fb800e7e234e7c3e722b30240b2337d0a2033527be7db43190aa1e`  
		Last Modified: Thu, 30 Mar 2017 22:10:44 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9fd3558f620bcfe305a1b65a86ca958ef74e205827faea898fe104a231b003`  
		Last Modified: Thu, 30 Mar 2017 22:10:47 GMT  
		Size: 106.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ff5b22a6738bad6e497730d4e23aca71c563383ba25b15531cb45dbca2eb58`  
		Last Modified: Thu, 30 Mar 2017 22:10:44 GMT  
		Size: 3.0 KB (2998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-alpine`

```console
$ docker pull rabbitmq@sha256:c9cbf523a26d61f9db67cdb64dd474ef444ae62b394e9f9f8c7652765fed0b38
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22671069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c25e3977f1ba4a423a31d969436b6ff4f6c00600edd3d9747180da6f405805ca`
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
# Thu, 30 Mar 2017 22:07:08 GMT
ENV RABBITMQ_VERSION=3.6.9
# Thu, 30 Mar 2017 22:07:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 30 Mar 2017 22:07:15 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 30 Mar 2017 22:07:16 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 30 Mar 2017 22:07:17 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 30 Mar 2017 22:07:18 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 30 Mar 2017 22:07:19 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 30 Mar 2017 22:07:20 GMT
COPY file:6cb4b3fb38376fc7af493014423bc9000d6477ca944b52677c1338b4c0e3e2ab in /usr/local/bin/ 
# Thu, 30 Mar 2017 22:07:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 22:07:21 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 30 Mar 2017 22:07:22 GMT
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
	-	`sha256:7135a346decf8b4702d300b6cb9ec9736cd58df68e4f4b2c63d3ef4f058ef7d9`  
		Last Modified: Thu, 30 Mar 2017 22:10:45 GMT  
		Size: 4.9 MB (4949335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf7c356704c8f21571d6fdd9186378ae209262242d3dcae2eb3ed5811ef3e98`  
		Last Modified: Thu, 30 Mar 2017 22:10:44 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77d8db7a4fb800e7e234e7c3e722b30240b2337d0a2033527be7db43190aa1e`  
		Last Modified: Thu, 30 Mar 2017 22:10:44 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9fd3558f620bcfe305a1b65a86ca958ef74e205827faea898fe104a231b003`  
		Last Modified: Thu, 30 Mar 2017 22:10:47 GMT  
		Size: 106.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ff5b22a6738bad6e497730d4e23aca71c563383ba25b15531cb45dbca2eb58`  
		Last Modified: Thu, 30 Mar 2017 22:10:44 GMT  
		Size: 3.0 KB (2998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-alpine`

```console
$ docker pull rabbitmq@sha256:c9cbf523a26d61f9db67cdb64dd474ef444ae62b394e9f9f8c7652765fed0b38
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22671069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c25e3977f1ba4a423a31d969436b6ff4f6c00600edd3d9747180da6f405805ca`
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
# Thu, 30 Mar 2017 22:07:08 GMT
ENV RABBITMQ_VERSION=3.6.9
# Thu, 30 Mar 2017 22:07:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 30 Mar 2017 22:07:15 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 30 Mar 2017 22:07:16 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 30 Mar 2017 22:07:17 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 30 Mar 2017 22:07:18 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 30 Mar 2017 22:07:19 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 30 Mar 2017 22:07:20 GMT
COPY file:6cb4b3fb38376fc7af493014423bc9000d6477ca944b52677c1338b4c0e3e2ab in /usr/local/bin/ 
# Thu, 30 Mar 2017 22:07:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 22:07:21 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 30 Mar 2017 22:07:22 GMT
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
	-	`sha256:7135a346decf8b4702d300b6cb9ec9736cd58df68e4f4b2c63d3ef4f058ef7d9`  
		Last Modified: Thu, 30 Mar 2017 22:10:45 GMT  
		Size: 4.9 MB (4949335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf7c356704c8f21571d6fdd9186378ae209262242d3dcae2eb3ed5811ef3e98`  
		Last Modified: Thu, 30 Mar 2017 22:10:44 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77d8db7a4fb800e7e234e7c3e722b30240b2337d0a2033527be7db43190aa1e`  
		Last Modified: Thu, 30 Mar 2017 22:10:44 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9fd3558f620bcfe305a1b65a86ca958ef74e205827faea898fe104a231b003`  
		Last Modified: Thu, 30 Mar 2017 22:10:47 GMT  
		Size: 106.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ff5b22a6738bad6e497730d4e23aca71c563383ba25b15531cb45dbca2eb58`  
		Last Modified: Thu, 30 Mar 2017 22:10:44 GMT  
		Size: 3.0 KB (2998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:alpine`

```console
$ docker pull rabbitmq@sha256:c9cbf523a26d61f9db67cdb64dd474ef444ae62b394e9f9f8c7652765fed0b38
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22671069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c25e3977f1ba4a423a31d969436b6ff4f6c00600edd3d9747180da6f405805ca`
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
# Thu, 30 Mar 2017 22:07:08 GMT
ENV RABBITMQ_VERSION=3.6.9
# Thu, 30 Mar 2017 22:07:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 30 Mar 2017 22:07:15 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 30 Mar 2017 22:07:16 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 30 Mar 2017 22:07:17 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 30 Mar 2017 22:07:18 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 30 Mar 2017 22:07:19 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 30 Mar 2017 22:07:20 GMT
COPY file:6cb4b3fb38376fc7af493014423bc9000d6477ca944b52677c1338b4c0e3e2ab in /usr/local/bin/ 
# Thu, 30 Mar 2017 22:07:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 22:07:21 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 30 Mar 2017 22:07:22 GMT
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
	-	`sha256:7135a346decf8b4702d300b6cb9ec9736cd58df68e4f4b2c63d3ef4f058ef7d9`  
		Last Modified: Thu, 30 Mar 2017 22:10:45 GMT  
		Size: 4.9 MB (4949335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf7c356704c8f21571d6fdd9186378ae209262242d3dcae2eb3ed5811ef3e98`  
		Last Modified: Thu, 30 Mar 2017 22:10:44 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77d8db7a4fb800e7e234e7c3e722b30240b2337d0a2033527be7db43190aa1e`  
		Last Modified: Thu, 30 Mar 2017 22:10:44 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9fd3558f620bcfe305a1b65a86ca958ef74e205827faea898fe104a231b003`  
		Last Modified: Thu, 30 Mar 2017 22:10:47 GMT  
		Size: 106.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ff5b22a6738bad6e497730d4e23aca71c563383ba25b15531cb45dbca2eb58`  
		Last Modified: Thu, 30 Mar 2017 22:10:44 GMT  
		Size: 3.0 KB (2998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.9-management-alpine`

```console
$ docker pull rabbitmq@sha256:117a7cff2b7c896e66100ccf31e876532d1e263ec5d624f3eb8aeb253ded18b6
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.9-management-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22671260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:783a0bf50441544acd699b3572ae8fa42530a44b36f020f098c49b9d99cfd6bd`
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
# Thu, 30 Mar 2017 22:07:08 GMT
ENV RABBITMQ_VERSION=3.6.9
# Thu, 30 Mar 2017 22:07:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 30 Mar 2017 22:07:15 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 30 Mar 2017 22:07:16 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 30 Mar 2017 22:07:17 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 30 Mar 2017 22:07:18 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 30 Mar 2017 22:07:19 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 30 Mar 2017 22:07:20 GMT
COPY file:6cb4b3fb38376fc7af493014423bc9000d6477ca944b52677c1338b4c0e3e2ab in /usr/local/bin/ 
# Thu, 30 Mar 2017 22:07:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 22:07:21 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 30 Mar 2017 22:07:22 GMT
CMD ["rabbitmq-server"]
# Thu, 30 Mar 2017 22:07:25 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 30 Mar 2017 22:07:25 GMT
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
	-	`sha256:7135a346decf8b4702d300b6cb9ec9736cd58df68e4f4b2c63d3ef4f058ef7d9`  
		Last Modified: Thu, 30 Mar 2017 22:10:45 GMT  
		Size: 4.9 MB (4949335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf7c356704c8f21571d6fdd9186378ae209262242d3dcae2eb3ed5811ef3e98`  
		Last Modified: Thu, 30 Mar 2017 22:10:44 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77d8db7a4fb800e7e234e7c3e722b30240b2337d0a2033527be7db43190aa1e`  
		Last Modified: Thu, 30 Mar 2017 22:10:44 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9fd3558f620bcfe305a1b65a86ca958ef74e205827faea898fe104a231b003`  
		Last Modified: Thu, 30 Mar 2017 22:10:47 GMT  
		Size: 106.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ff5b22a6738bad6e497730d4e23aca71c563383ba25b15531cb45dbca2eb58`  
		Last Modified: Thu, 30 Mar 2017 22:10:44 GMT  
		Size: 3.0 KB (2998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c0d58f27a18b1348122da9f5a2744a9004fb01c39e9065bbf51c9cb8020a2a`  
		Last Modified: Thu, 30 Mar 2017 22:12:09 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management-alpine`

```console
$ docker pull rabbitmq@sha256:117a7cff2b7c896e66100ccf31e876532d1e263ec5d624f3eb8aeb253ded18b6
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-management-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22671260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:783a0bf50441544acd699b3572ae8fa42530a44b36f020f098c49b9d99cfd6bd`
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
# Thu, 30 Mar 2017 22:07:08 GMT
ENV RABBITMQ_VERSION=3.6.9
# Thu, 30 Mar 2017 22:07:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 30 Mar 2017 22:07:15 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 30 Mar 2017 22:07:16 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 30 Mar 2017 22:07:17 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 30 Mar 2017 22:07:18 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 30 Mar 2017 22:07:19 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 30 Mar 2017 22:07:20 GMT
COPY file:6cb4b3fb38376fc7af493014423bc9000d6477ca944b52677c1338b4c0e3e2ab in /usr/local/bin/ 
# Thu, 30 Mar 2017 22:07:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 22:07:21 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 30 Mar 2017 22:07:22 GMT
CMD ["rabbitmq-server"]
# Thu, 30 Mar 2017 22:07:25 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 30 Mar 2017 22:07:25 GMT
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
	-	`sha256:7135a346decf8b4702d300b6cb9ec9736cd58df68e4f4b2c63d3ef4f058ef7d9`  
		Last Modified: Thu, 30 Mar 2017 22:10:45 GMT  
		Size: 4.9 MB (4949335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf7c356704c8f21571d6fdd9186378ae209262242d3dcae2eb3ed5811ef3e98`  
		Last Modified: Thu, 30 Mar 2017 22:10:44 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77d8db7a4fb800e7e234e7c3e722b30240b2337d0a2033527be7db43190aa1e`  
		Last Modified: Thu, 30 Mar 2017 22:10:44 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9fd3558f620bcfe305a1b65a86ca958ef74e205827faea898fe104a231b003`  
		Last Modified: Thu, 30 Mar 2017 22:10:47 GMT  
		Size: 106.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ff5b22a6738bad6e497730d4e23aca71c563383ba25b15531cb45dbca2eb58`  
		Last Modified: Thu, 30 Mar 2017 22:10:44 GMT  
		Size: 3.0 KB (2998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c0d58f27a18b1348122da9f5a2744a9004fb01c39e9065bbf51c9cb8020a2a`  
		Last Modified: Thu, 30 Mar 2017 22:12:09 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management-alpine`

```console
$ docker pull rabbitmq@sha256:117a7cff2b7c896e66100ccf31e876532d1e263ec5d624f3eb8aeb253ded18b6
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-management-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22671260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:783a0bf50441544acd699b3572ae8fa42530a44b36f020f098c49b9d99cfd6bd`
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
# Thu, 30 Mar 2017 22:07:08 GMT
ENV RABBITMQ_VERSION=3.6.9
# Thu, 30 Mar 2017 22:07:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 30 Mar 2017 22:07:15 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 30 Mar 2017 22:07:16 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 30 Mar 2017 22:07:17 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 30 Mar 2017 22:07:18 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 30 Mar 2017 22:07:19 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 30 Mar 2017 22:07:20 GMT
COPY file:6cb4b3fb38376fc7af493014423bc9000d6477ca944b52677c1338b4c0e3e2ab in /usr/local/bin/ 
# Thu, 30 Mar 2017 22:07:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 22:07:21 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 30 Mar 2017 22:07:22 GMT
CMD ["rabbitmq-server"]
# Thu, 30 Mar 2017 22:07:25 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 30 Mar 2017 22:07:25 GMT
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
	-	`sha256:7135a346decf8b4702d300b6cb9ec9736cd58df68e4f4b2c63d3ef4f058ef7d9`  
		Last Modified: Thu, 30 Mar 2017 22:10:45 GMT  
		Size: 4.9 MB (4949335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf7c356704c8f21571d6fdd9186378ae209262242d3dcae2eb3ed5811ef3e98`  
		Last Modified: Thu, 30 Mar 2017 22:10:44 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77d8db7a4fb800e7e234e7c3e722b30240b2337d0a2033527be7db43190aa1e`  
		Last Modified: Thu, 30 Mar 2017 22:10:44 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9fd3558f620bcfe305a1b65a86ca958ef74e205827faea898fe104a231b003`  
		Last Modified: Thu, 30 Mar 2017 22:10:47 GMT  
		Size: 106.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ff5b22a6738bad6e497730d4e23aca71c563383ba25b15531cb45dbca2eb58`  
		Last Modified: Thu, 30 Mar 2017 22:10:44 GMT  
		Size: 3.0 KB (2998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c0d58f27a18b1348122da9f5a2744a9004fb01c39e9065bbf51c9cb8020a2a`  
		Last Modified: Thu, 30 Mar 2017 22:12:09 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management-alpine`

```console
$ docker pull rabbitmq@sha256:117a7cff2b7c896e66100ccf31e876532d1e263ec5d624f3eb8aeb253ded18b6
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:management-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22671260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:783a0bf50441544acd699b3572ae8fa42530a44b36f020f098c49b9d99cfd6bd`
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
# Thu, 30 Mar 2017 22:07:08 GMT
ENV RABBITMQ_VERSION=3.6.9
# Thu, 30 Mar 2017 22:07:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 30 Mar 2017 22:07:15 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 30 Mar 2017 22:07:16 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 30 Mar 2017 22:07:17 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 30 Mar 2017 22:07:18 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 30 Mar 2017 22:07:19 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 30 Mar 2017 22:07:20 GMT
COPY file:6cb4b3fb38376fc7af493014423bc9000d6477ca944b52677c1338b4c0e3e2ab in /usr/local/bin/ 
# Thu, 30 Mar 2017 22:07:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Mar 2017 22:07:21 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 30 Mar 2017 22:07:22 GMT
CMD ["rabbitmq-server"]
# Thu, 30 Mar 2017 22:07:25 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 30 Mar 2017 22:07:25 GMT
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
	-	`sha256:7135a346decf8b4702d300b6cb9ec9736cd58df68e4f4b2c63d3ef4f058ef7d9`  
		Last Modified: Thu, 30 Mar 2017 22:10:45 GMT  
		Size: 4.9 MB (4949335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf7c356704c8f21571d6fdd9186378ae209262242d3dcae2eb3ed5811ef3e98`  
		Last Modified: Thu, 30 Mar 2017 22:10:44 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77d8db7a4fb800e7e234e7c3e722b30240b2337d0a2033527be7db43190aa1e`  
		Last Modified: Thu, 30 Mar 2017 22:10:44 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9fd3558f620bcfe305a1b65a86ca958ef74e205827faea898fe104a231b003`  
		Last Modified: Thu, 30 Mar 2017 22:10:47 GMT  
		Size: 106.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ff5b22a6738bad6e497730d4e23aca71c563383ba25b15531cb45dbca2eb58`  
		Last Modified: Thu, 30 Mar 2017 22:10:44 GMT  
		Size: 3.0 KB (2998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09c0d58f27a18b1348122da9f5a2744a9004fb01c39e9065bbf51c9cb8020a2a`  
		Last Modified: Thu, 30 Mar 2017 22:12:09 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
