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
$ docker pull rabbitmq@sha256:d5f7f976f2dc3ff05d356d05a64ae833518312dfba0c7149517991712d0e3c84
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.9` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86339066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8195b14048ead89561521870d13bd638c7cade41cc2ff4c0985d88399c9fcaaf`
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
# Fri, 07 Apr 2017 19:47:23 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 07 Apr 2017 19:47:24 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 07 Apr 2017 19:47:25 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 07 Apr 2017 19:47:26 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Fri, 07 Apr 2017 19:47:27 GMT
COPY file:ef9a20c1b4d0b8d26ba932beefc211d3560f3d1bb346c22ed4d73dfa6bb14be5 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:47:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 07 Apr 2017 19:47:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:47:30 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 07 Apr 2017 19:47:31 GMT
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
	-	`sha256:c26318044f824fd82affc93cebb96c25eecba30c01e4e666b2b8b10970f5924c`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 2.2 KB (2236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a7dc1a393fb4ed52f57f9b15d022faf4b20bfd6282431b3158349ec1fd1a81`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ac40b7ecec0a2b788bfede2cd98d490d00fd6f37e3d528a1b4d54edd3ca52b`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33152bc5e7aed390a375704dc1c08b0695dde5b452cdb3b9a9b6ab726827a83`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 3.9 KB (3881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a660e9f52bf80de39e7ba5d77bf02fe7b56678c0840dbc580997fbf3f51db674`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6`

```console
$ docker pull rabbitmq@sha256:d5f7f976f2dc3ff05d356d05a64ae833518312dfba0c7149517991712d0e3c84
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86339066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8195b14048ead89561521870d13bd638c7cade41cc2ff4c0985d88399c9fcaaf`
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
# Fri, 07 Apr 2017 19:47:23 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 07 Apr 2017 19:47:24 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 07 Apr 2017 19:47:25 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 07 Apr 2017 19:47:26 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Fri, 07 Apr 2017 19:47:27 GMT
COPY file:ef9a20c1b4d0b8d26ba932beefc211d3560f3d1bb346c22ed4d73dfa6bb14be5 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:47:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 07 Apr 2017 19:47:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:47:30 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 07 Apr 2017 19:47:31 GMT
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
	-	`sha256:c26318044f824fd82affc93cebb96c25eecba30c01e4e666b2b8b10970f5924c`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 2.2 KB (2236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a7dc1a393fb4ed52f57f9b15d022faf4b20bfd6282431b3158349ec1fd1a81`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ac40b7ecec0a2b788bfede2cd98d490d00fd6f37e3d528a1b4d54edd3ca52b`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33152bc5e7aed390a375704dc1c08b0695dde5b452cdb3b9a9b6ab726827a83`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 3.9 KB (3881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a660e9f52bf80de39e7ba5d77bf02fe7b56678c0840dbc580997fbf3f51db674`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3`

```console
$ docker pull rabbitmq@sha256:d5f7f976f2dc3ff05d356d05a64ae833518312dfba0c7149517991712d0e3c84
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86339066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8195b14048ead89561521870d13bd638c7cade41cc2ff4c0985d88399c9fcaaf`
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
# Fri, 07 Apr 2017 19:47:23 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 07 Apr 2017 19:47:24 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 07 Apr 2017 19:47:25 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 07 Apr 2017 19:47:26 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Fri, 07 Apr 2017 19:47:27 GMT
COPY file:ef9a20c1b4d0b8d26ba932beefc211d3560f3d1bb346c22ed4d73dfa6bb14be5 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:47:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 07 Apr 2017 19:47:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:47:30 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 07 Apr 2017 19:47:31 GMT
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
	-	`sha256:c26318044f824fd82affc93cebb96c25eecba30c01e4e666b2b8b10970f5924c`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 2.2 KB (2236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a7dc1a393fb4ed52f57f9b15d022faf4b20bfd6282431b3158349ec1fd1a81`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ac40b7ecec0a2b788bfede2cd98d490d00fd6f37e3d528a1b4d54edd3ca52b`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33152bc5e7aed390a375704dc1c08b0695dde5b452cdb3b9a9b6ab726827a83`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 3.9 KB (3881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a660e9f52bf80de39e7ba5d77bf02fe7b56678c0840dbc580997fbf3f51db674`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:latest`

```console
$ docker pull rabbitmq@sha256:d5f7f976f2dc3ff05d356d05a64ae833518312dfba0c7149517991712d0e3c84
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86339066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8195b14048ead89561521870d13bd638c7cade41cc2ff4c0985d88399c9fcaaf`
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
# Fri, 07 Apr 2017 19:47:23 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 07 Apr 2017 19:47:24 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 07 Apr 2017 19:47:25 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 07 Apr 2017 19:47:26 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Fri, 07 Apr 2017 19:47:27 GMT
COPY file:ef9a20c1b4d0b8d26ba932beefc211d3560f3d1bb346c22ed4d73dfa6bb14be5 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:47:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 07 Apr 2017 19:47:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:47:30 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 07 Apr 2017 19:47:31 GMT
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
	-	`sha256:c26318044f824fd82affc93cebb96c25eecba30c01e4e666b2b8b10970f5924c`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 2.2 KB (2236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a7dc1a393fb4ed52f57f9b15d022faf4b20bfd6282431b3158349ec1fd1a81`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ac40b7ecec0a2b788bfede2cd98d490d00fd6f37e3d528a1b4d54edd3ca52b`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33152bc5e7aed390a375704dc1c08b0695dde5b452cdb3b9a9b6ab726827a83`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 3.9 KB (3881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a660e9f52bf80de39e7ba5d77bf02fe7b56678c0840dbc580997fbf3f51db674`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.9-management`

```console
$ docker pull rabbitmq@sha256:c909c93436339e88903c448b01272c836d1a1348c65bfc0198588928a33e210d
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.9-management` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86339254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57c6648d09d0af2dc8c391001c64e1b2118593b7a816652681209241287fe89a`
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
# Fri, 07 Apr 2017 19:47:23 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 07 Apr 2017 19:47:24 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 07 Apr 2017 19:47:25 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 07 Apr 2017 19:47:26 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Fri, 07 Apr 2017 19:47:27 GMT
COPY file:ef9a20c1b4d0b8d26ba932beefc211d3560f3d1bb346c22ed4d73dfa6bb14be5 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:47:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 07 Apr 2017 19:47:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:47:30 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 07 Apr 2017 19:47:31 GMT
CMD ["rabbitmq-server"]
# Fri, 07 Apr 2017 19:47:35 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 07 Apr 2017 19:47:36 GMT
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
	-	`sha256:c26318044f824fd82affc93cebb96c25eecba30c01e4e666b2b8b10970f5924c`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 2.2 KB (2236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a7dc1a393fb4ed52f57f9b15d022faf4b20bfd6282431b3158349ec1fd1a81`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ac40b7ecec0a2b788bfede2cd98d490d00fd6f37e3d528a1b4d54edd3ca52b`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33152bc5e7aed390a375704dc1c08b0695dde5b452cdb3b9a9b6ab726827a83`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 3.9 KB (3881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a660e9f52bf80de39e7ba5d77bf02fe7b56678c0840dbc580997fbf3f51db674`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26220a45624c2a939f580ccdd72409b8d5545d97cddaf1369d2fca9e54010df9`  
		Last Modified: Fri, 07 Apr 2017 19:49:34 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management`

```console
$ docker pull rabbitmq@sha256:c909c93436339e88903c448b01272c836d1a1348c65bfc0198588928a33e210d
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-management` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86339254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57c6648d09d0af2dc8c391001c64e1b2118593b7a816652681209241287fe89a`
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
# Fri, 07 Apr 2017 19:47:23 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 07 Apr 2017 19:47:24 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 07 Apr 2017 19:47:25 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 07 Apr 2017 19:47:26 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Fri, 07 Apr 2017 19:47:27 GMT
COPY file:ef9a20c1b4d0b8d26ba932beefc211d3560f3d1bb346c22ed4d73dfa6bb14be5 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:47:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 07 Apr 2017 19:47:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:47:30 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 07 Apr 2017 19:47:31 GMT
CMD ["rabbitmq-server"]
# Fri, 07 Apr 2017 19:47:35 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 07 Apr 2017 19:47:36 GMT
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
	-	`sha256:c26318044f824fd82affc93cebb96c25eecba30c01e4e666b2b8b10970f5924c`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 2.2 KB (2236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a7dc1a393fb4ed52f57f9b15d022faf4b20bfd6282431b3158349ec1fd1a81`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ac40b7ecec0a2b788bfede2cd98d490d00fd6f37e3d528a1b4d54edd3ca52b`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33152bc5e7aed390a375704dc1c08b0695dde5b452cdb3b9a9b6ab726827a83`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 3.9 KB (3881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a660e9f52bf80de39e7ba5d77bf02fe7b56678c0840dbc580997fbf3f51db674`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26220a45624c2a939f580ccdd72409b8d5545d97cddaf1369d2fca9e54010df9`  
		Last Modified: Fri, 07 Apr 2017 19:49:34 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management`

```console
$ docker pull rabbitmq@sha256:c909c93436339e88903c448b01272c836d1a1348c65bfc0198588928a33e210d
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-management` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86339254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57c6648d09d0af2dc8c391001c64e1b2118593b7a816652681209241287fe89a`
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
# Fri, 07 Apr 2017 19:47:23 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 07 Apr 2017 19:47:24 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 07 Apr 2017 19:47:25 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 07 Apr 2017 19:47:26 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Fri, 07 Apr 2017 19:47:27 GMT
COPY file:ef9a20c1b4d0b8d26ba932beefc211d3560f3d1bb346c22ed4d73dfa6bb14be5 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:47:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 07 Apr 2017 19:47:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:47:30 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 07 Apr 2017 19:47:31 GMT
CMD ["rabbitmq-server"]
# Fri, 07 Apr 2017 19:47:35 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 07 Apr 2017 19:47:36 GMT
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
	-	`sha256:c26318044f824fd82affc93cebb96c25eecba30c01e4e666b2b8b10970f5924c`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 2.2 KB (2236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a7dc1a393fb4ed52f57f9b15d022faf4b20bfd6282431b3158349ec1fd1a81`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ac40b7ecec0a2b788bfede2cd98d490d00fd6f37e3d528a1b4d54edd3ca52b`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33152bc5e7aed390a375704dc1c08b0695dde5b452cdb3b9a9b6ab726827a83`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 3.9 KB (3881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a660e9f52bf80de39e7ba5d77bf02fe7b56678c0840dbc580997fbf3f51db674`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26220a45624c2a939f580ccdd72409b8d5545d97cddaf1369d2fca9e54010df9`  
		Last Modified: Fri, 07 Apr 2017 19:49:34 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management`

```console
$ docker pull rabbitmq@sha256:c909c93436339e88903c448b01272c836d1a1348c65bfc0198588928a33e210d
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:management` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86339254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57c6648d09d0af2dc8c391001c64e1b2118593b7a816652681209241287fe89a`
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
# Fri, 07 Apr 2017 19:47:23 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 07 Apr 2017 19:47:24 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 07 Apr 2017 19:47:25 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 07 Apr 2017 19:47:26 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Fri, 07 Apr 2017 19:47:27 GMT
COPY file:ef9a20c1b4d0b8d26ba932beefc211d3560f3d1bb346c22ed4d73dfa6bb14be5 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:47:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 07 Apr 2017 19:47:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:47:30 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 07 Apr 2017 19:47:31 GMT
CMD ["rabbitmq-server"]
# Fri, 07 Apr 2017 19:47:35 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 07 Apr 2017 19:47:36 GMT
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
	-	`sha256:c26318044f824fd82affc93cebb96c25eecba30c01e4e666b2b8b10970f5924c`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 2.2 KB (2236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a7dc1a393fb4ed52f57f9b15d022faf4b20bfd6282431b3158349ec1fd1a81`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ac40b7ecec0a2b788bfede2cd98d490d00fd6f37e3d528a1b4d54edd3ca52b`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33152bc5e7aed390a375704dc1c08b0695dde5b452cdb3b9a9b6ab726827a83`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 3.9 KB (3881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a660e9f52bf80de39e7ba5d77bf02fe7b56678c0840dbc580997fbf3f51db674`  
		Last Modified: Fri, 07 Apr 2017 19:48:09 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26220a45624c2a939f580ccdd72409b8d5545d97cddaf1369d2fca9e54010df9`  
		Last Modified: Fri, 07 Apr 2017 19:49:34 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.9-alpine`

```console
$ docker pull rabbitmq@sha256:53e3421cac1d14504641a87dcf55511a4f892f7c1a3e50b77cae34ce39fdac69
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.9-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22671869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b122efa32403c025fb568b670ce60d0866573b3fc5e88472dab78a29b333286f`
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
# Fri, 07 Apr 2017 19:47:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 07 Apr 2017 19:47:38 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 07 Apr 2017 19:47:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 07 Apr 2017 19:47:41 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 07 Apr 2017 19:47:41 GMT
COPY file:72656785d362cb2edb9aa764898779a62747df7f3841cc8913fef554fb2fb2d8 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:47:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:47:43 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 07 Apr 2017 19:47:43 GMT
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
	-	`sha256:2164371d799459096747eb878d43c6ee1b81e00e8274c487254b73f63ebd846c`  
		Last Modified: Fri, 07 Apr 2017 19:50:58 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745d1c233b06b4093bc4158b3b8120480c654d46cb426c26aff0d5a28f811a18`  
		Last Modified: Fri, 07 Apr 2017 19:50:59 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651c09e87f380a1abf443c583bc053e1dfd56262126e1b458a0e68d3f8106367`  
		Last Modified: Fri, 07 Apr 2017 19:50:59 GMT  
		Size: 106.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dbd318458a7441c770b81f3b944c8fccd22eff439586b2be2096376a345a42`  
		Last Modified: Fri, 07 Apr 2017 19:50:58 GMT  
		Size: 3.9 KB (3873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-alpine`

```console
$ docker pull rabbitmq@sha256:53e3421cac1d14504641a87dcf55511a4f892f7c1a3e50b77cae34ce39fdac69
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22671869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b122efa32403c025fb568b670ce60d0866573b3fc5e88472dab78a29b333286f`
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
# Fri, 07 Apr 2017 19:47:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 07 Apr 2017 19:47:38 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 07 Apr 2017 19:47:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 07 Apr 2017 19:47:41 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 07 Apr 2017 19:47:41 GMT
COPY file:72656785d362cb2edb9aa764898779a62747df7f3841cc8913fef554fb2fb2d8 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:47:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:47:43 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 07 Apr 2017 19:47:43 GMT
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
	-	`sha256:2164371d799459096747eb878d43c6ee1b81e00e8274c487254b73f63ebd846c`  
		Last Modified: Fri, 07 Apr 2017 19:50:58 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745d1c233b06b4093bc4158b3b8120480c654d46cb426c26aff0d5a28f811a18`  
		Last Modified: Fri, 07 Apr 2017 19:50:59 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651c09e87f380a1abf443c583bc053e1dfd56262126e1b458a0e68d3f8106367`  
		Last Modified: Fri, 07 Apr 2017 19:50:59 GMT  
		Size: 106.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dbd318458a7441c770b81f3b944c8fccd22eff439586b2be2096376a345a42`  
		Last Modified: Fri, 07 Apr 2017 19:50:58 GMT  
		Size: 3.9 KB (3873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-alpine`

```console
$ docker pull rabbitmq@sha256:53e3421cac1d14504641a87dcf55511a4f892f7c1a3e50b77cae34ce39fdac69
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22671869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b122efa32403c025fb568b670ce60d0866573b3fc5e88472dab78a29b333286f`
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
# Fri, 07 Apr 2017 19:47:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 07 Apr 2017 19:47:38 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 07 Apr 2017 19:47:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 07 Apr 2017 19:47:41 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 07 Apr 2017 19:47:41 GMT
COPY file:72656785d362cb2edb9aa764898779a62747df7f3841cc8913fef554fb2fb2d8 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:47:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:47:43 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 07 Apr 2017 19:47:43 GMT
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
	-	`sha256:2164371d799459096747eb878d43c6ee1b81e00e8274c487254b73f63ebd846c`  
		Last Modified: Fri, 07 Apr 2017 19:50:58 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745d1c233b06b4093bc4158b3b8120480c654d46cb426c26aff0d5a28f811a18`  
		Last Modified: Fri, 07 Apr 2017 19:50:59 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651c09e87f380a1abf443c583bc053e1dfd56262126e1b458a0e68d3f8106367`  
		Last Modified: Fri, 07 Apr 2017 19:50:59 GMT  
		Size: 106.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dbd318458a7441c770b81f3b944c8fccd22eff439586b2be2096376a345a42`  
		Last Modified: Fri, 07 Apr 2017 19:50:58 GMT  
		Size: 3.9 KB (3873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:alpine`

```console
$ docker pull rabbitmq@sha256:53e3421cac1d14504641a87dcf55511a4f892f7c1a3e50b77cae34ce39fdac69
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22671869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b122efa32403c025fb568b670ce60d0866573b3fc5e88472dab78a29b333286f`
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
# Fri, 07 Apr 2017 19:47:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 07 Apr 2017 19:47:38 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 07 Apr 2017 19:47:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 07 Apr 2017 19:47:41 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 07 Apr 2017 19:47:41 GMT
COPY file:72656785d362cb2edb9aa764898779a62747df7f3841cc8913fef554fb2fb2d8 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:47:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:47:43 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 07 Apr 2017 19:47:43 GMT
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
	-	`sha256:2164371d799459096747eb878d43c6ee1b81e00e8274c487254b73f63ebd846c`  
		Last Modified: Fri, 07 Apr 2017 19:50:58 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745d1c233b06b4093bc4158b3b8120480c654d46cb426c26aff0d5a28f811a18`  
		Last Modified: Fri, 07 Apr 2017 19:50:59 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651c09e87f380a1abf443c583bc053e1dfd56262126e1b458a0e68d3f8106367`  
		Last Modified: Fri, 07 Apr 2017 19:50:59 GMT  
		Size: 106.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dbd318458a7441c770b81f3b944c8fccd22eff439586b2be2096376a345a42`  
		Last Modified: Fri, 07 Apr 2017 19:50:58 GMT  
		Size: 3.9 KB (3873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.9-management-alpine`

```console
$ docker pull rabbitmq@sha256:3770b80682eed823c6a2e4fe4c943a81495dc73382ce2d903851dfe5df9d8913
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.9-management-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22672060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:758cc906ba575afb937880ffcfa52b0538285aba6c766b4bc8a12b45f929f372`
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
# Fri, 07 Apr 2017 19:47:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 07 Apr 2017 19:47:38 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 07 Apr 2017 19:47:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 07 Apr 2017 19:47:41 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 07 Apr 2017 19:47:41 GMT
COPY file:72656785d362cb2edb9aa764898779a62747df7f3841cc8913fef554fb2fb2d8 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:47:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:47:43 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 07 Apr 2017 19:47:43 GMT
CMD ["rabbitmq-server"]
# Fri, 07 Apr 2017 19:47:46 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 07 Apr 2017 19:47:47 GMT
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
	-	`sha256:2164371d799459096747eb878d43c6ee1b81e00e8274c487254b73f63ebd846c`  
		Last Modified: Fri, 07 Apr 2017 19:50:58 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745d1c233b06b4093bc4158b3b8120480c654d46cb426c26aff0d5a28f811a18`  
		Last Modified: Fri, 07 Apr 2017 19:50:59 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651c09e87f380a1abf443c583bc053e1dfd56262126e1b458a0e68d3f8106367`  
		Last Modified: Fri, 07 Apr 2017 19:50:59 GMT  
		Size: 106.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dbd318458a7441c770b81f3b944c8fccd22eff439586b2be2096376a345a42`  
		Last Modified: Fri, 07 Apr 2017 19:50:58 GMT  
		Size: 3.9 KB (3873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54b990e5fbc67a6fcf7e6fca3a5ba60fca613aad677c154da15b7ae9456699c`  
		Last Modified: Fri, 07 Apr 2017 19:52:25 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management-alpine`

```console
$ docker pull rabbitmq@sha256:3770b80682eed823c6a2e4fe4c943a81495dc73382ce2d903851dfe5df9d8913
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-management-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22672060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:758cc906ba575afb937880ffcfa52b0538285aba6c766b4bc8a12b45f929f372`
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
# Fri, 07 Apr 2017 19:47:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 07 Apr 2017 19:47:38 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 07 Apr 2017 19:47:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 07 Apr 2017 19:47:41 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 07 Apr 2017 19:47:41 GMT
COPY file:72656785d362cb2edb9aa764898779a62747df7f3841cc8913fef554fb2fb2d8 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:47:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:47:43 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 07 Apr 2017 19:47:43 GMT
CMD ["rabbitmq-server"]
# Fri, 07 Apr 2017 19:47:46 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 07 Apr 2017 19:47:47 GMT
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
	-	`sha256:2164371d799459096747eb878d43c6ee1b81e00e8274c487254b73f63ebd846c`  
		Last Modified: Fri, 07 Apr 2017 19:50:58 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745d1c233b06b4093bc4158b3b8120480c654d46cb426c26aff0d5a28f811a18`  
		Last Modified: Fri, 07 Apr 2017 19:50:59 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651c09e87f380a1abf443c583bc053e1dfd56262126e1b458a0e68d3f8106367`  
		Last Modified: Fri, 07 Apr 2017 19:50:59 GMT  
		Size: 106.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dbd318458a7441c770b81f3b944c8fccd22eff439586b2be2096376a345a42`  
		Last Modified: Fri, 07 Apr 2017 19:50:58 GMT  
		Size: 3.9 KB (3873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54b990e5fbc67a6fcf7e6fca3a5ba60fca613aad677c154da15b7ae9456699c`  
		Last Modified: Fri, 07 Apr 2017 19:52:25 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management-alpine`

```console
$ docker pull rabbitmq@sha256:3770b80682eed823c6a2e4fe4c943a81495dc73382ce2d903851dfe5df9d8913
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-management-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22672060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:758cc906ba575afb937880ffcfa52b0538285aba6c766b4bc8a12b45f929f372`
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
# Fri, 07 Apr 2017 19:47:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 07 Apr 2017 19:47:38 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 07 Apr 2017 19:47:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 07 Apr 2017 19:47:41 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 07 Apr 2017 19:47:41 GMT
COPY file:72656785d362cb2edb9aa764898779a62747df7f3841cc8913fef554fb2fb2d8 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:47:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:47:43 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 07 Apr 2017 19:47:43 GMT
CMD ["rabbitmq-server"]
# Fri, 07 Apr 2017 19:47:46 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 07 Apr 2017 19:47:47 GMT
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
	-	`sha256:2164371d799459096747eb878d43c6ee1b81e00e8274c487254b73f63ebd846c`  
		Last Modified: Fri, 07 Apr 2017 19:50:58 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745d1c233b06b4093bc4158b3b8120480c654d46cb426c26aff0d5a28f811a18`  
		Last Modified: Fri, 07 Apr 2017 19:50:59 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651c09e87f380a1abf443c583bc053e1dfd56262126e1b458a0e68d3f8106367`  
		Last Modified: Fri, 07 Apr 2017 19:50:59 GMT  
		Size: 106.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dbd318458a7441c770b81f3b944c8fccd22eff439586b2be2096376a345a42`  
		Last Modified: Fri, 07 Apr 2017 19:50:58 GMT  
		Size: 3.9 KB (3873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54b990e5fbc67a6fcf7e6fca3a5ba60fca613aad677c154da15b7ae9456699c`  
		Last Modified: Fri, 07 Apr 2017 19:52:25 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management-alpine`

```console
$ docker pull rabbitmq@sha256:3770b80682eed823c6a2e4fe4c943a81495dc73382ce2d903851dfe5df9d8913
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:management-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22672060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:758cc906ba575afb937880ffcfa52b0538285aba6c766b4bc8a12b45f929f372`
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
# Fri, 07 Apr 2017 19:47:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 07 Apr 2017 19:47:38 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 07 Apr 2017 19:47:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 07 Apr 2017 19:47:41 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 07 Apr 2017 19:47:41 GMT
COPY file:72656785d362cb2edb9aa764898779a62747df7f3841cc8913fef554fb2fb2d8 in /usr/local/bin/ 
# Fri, 07 Apr 2017 19:47:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Apr 2017 19:47:43 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 07 Apr 2017 19:47:43 GMT
CMD ["rabbitmq-server"]
# Fri, 07 Apr 2017 19:47:46 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 07 Apr 2017 19:47:47 GMT
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
	-	`sha256:2164371d799459096747eb878d43c6ee1b81e00e8274c487254b73f63ebd846c`  
		Last Modified: Fri, 07 Apr 2017 19:50:58 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745d1c233b06b4093bc4158b3b8120480c654d46cb426c26aff0d5a28f811a18`  
		Last Modified: Fri, 07 Apr 2017 19:50:59 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651c09e87f380a1abf443c583bc053e1dfd56262126e1b458a0e68d3f8106367`  
		Last Modified: Fri, 07 Apr 2017 19:50:59 GMT  
		Size: 106.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dbd318458a7441c770b81f3b944c8fccd22eff439586b2be2096376a345a42`  
		Last Modified: Fri, 07 Apr 2017 19:50:58 GMT  
		Size: 3.9 KB (3873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54b990e5fbc67a6fcf7e6fca3a5ba60fca613aad677c154da15b7ae9456699c`  
		Last Modified: Fri, 07 Apr 2017 19:52:25 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
