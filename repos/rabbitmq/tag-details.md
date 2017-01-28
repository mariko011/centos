<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rabbitmq`

-	[`rabbitmq:3.6.6`](#rabbitmq366)
-	[`rabbitmq:3.6`](#rabbitmq36)
-	[`rabbitmq:3`](#rabbitmq3)
-	[`rabbitmq:latest`](#rabbitmqlatest)
-	[`rabbitmq:3.6.6-management`](#rabbitmq366-management)
-	[`rabbitmq:3.6-management`](#rabbitmq36-management)
-	[`rabbitmq:3-management`](#rabbitmq3-management)
-	[`rabbitmq:management`](#rabbitmqmanagement)
-	[`rabbitmq:3.6.6-alpine`](#rabbitmq366-alpine)
-	[`rabbitmq:3.6-alpine`](#rabbitmq36-alpine)
-	[`rabbitmq:3-alpine`](#rabbitmq3-alpine)
-	[`rabbitmq:alpine`](#rabbitmqalpine)
-	[`rabbitmq:3.6.6-management-alpine`](#rabbitmq366-management-alpine)
-	[`rabbitmq:3.6-management-alpine`](#rabbitmq36-management-alpine)
-	[`rabbitmq:3-management-alpine`](#rabbitmq3-management-alpine)
-	[`rabbitmq:management-alpine`](#rabbitmqmanagement-alpine)

## `rabbitmq:3.6.6`

```console
$ docker pull rabbitmq@sha256:0f4e5cddb1b7b16ea10ab699acfa210db827795b06e3c1bd40ec10dd3070eee0
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.7 MB (86650363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec798eba2c56853d5f4ef9d06d6772736ae3a988f0326926780125d30e889f6f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 19:56:26 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 17 Jan 2017 19:56:27 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 19:56:42 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 19:56:43 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 19:56:44 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Tue, 17 Jan 2017 19:57:11 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:57:11 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 17 Jan 2017 19:57:13 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 19:57:13 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 17 Jan 2017 19:57:14 GMT
ENV RABBITMQ_VERSION=3.6.6
# Tue, 17 Jan 2017 19:57:14 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.6-1
# Tue, 17 Jan 2017 19:57:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:57:21 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 19:57:22 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 17 Jan 2017 19:57:23 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 17 Jan 2017 19:57:23 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 17 Jan 2017 19:57:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 17 Jan 2017 19:57:25 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 17 Jan 2017 19:57:26 GMT
COPY file:aea0de868079820b38523daba3301f9d1b03f85139fbcab491d2bc10c2540046 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:57:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jan 2017 19:57:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 19:57:27 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 17 Jan 2017 19:57:28 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7b82d8198435dd01be9039d9bb74d49c8b9f17a2e06921d12df6ec4821b02c`  
		Last Modified: Wed, 18 Jan 2017 07:10:44 GMT  
		Size: 4.3 KB (4340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ab6dd6c03b4c38c9ace317e210f49e7efa15033ca7742e48475fb819f6c756`  
		Last Modified: Wed, 18 Jan 2017 07:10:43 GMT  
		Size: 1.2 MB (1216695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6050e2330077ea06601cf29a494919674567dc5122ae8723f751bcd01ebaf1a`  
		Last Modified: Wed, 18 Jan 2017 07:10:43 GMT  
		Size: 2.5 KB (2497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5a4ffc5983a831d73fd424dbf7332f36f1536549c2e4a4103c2ec58112eaaf`  
		Last Modified: Wed, 18 Jan 2017 07:10:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92026084ce6335164ccf42d6ea47fe54042608461a3263bc4fafbb0b0884c5e`  
		Last Modified: Wed, 18 Jan 2017 07:10:49 GMT  
		Size: 27.8 MB (27823511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fda192079733c24aedb92fec1dae6f0444a871fefa0eb9b6da845056529b131`  
		Last Modified: Wed, 18 Jan 2017 07:10:40 GMT  
		Size: 3.1 KB (3097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b8b3646e05ea588b993d8e9dbe29c2822060bbd45224e2def4f0348d0c165be`  
		Last Modified: Wed, 18 Jan 2017 07:10:40 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2dd1208708b783f126d520b793a01be604b4bb2b02c229fa4a70dc0f9cffc7`  
		Last Modified: Wed, 18 Jan 2017 07:10:41 GMT  
		Size: 6.2 MB (6233182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c415542c01a3139b0076ea8c2349128a04b1dcb10928e59de3b57ea20d258a`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a03442472f09cba739e8c1392e754dd4b8a89ff9560fa1b10fd1de8ef7832cb`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079759849dae861ccd88a4e1534cba84c9297822320b5e5a5df609db2e054a74`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9467c0f6f3833ce7817cb36980739ba5a0ee9570def6d20c971c712174d541`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 2.7 KB (2711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17a6fe72ed5aa853c3a54a710d33825eeecb27fb3508969953ab7f9125190d8`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6`

```console
$ docker pull rabbitmq@sha256:0f4e5cddb1b7b16ea10ab699acfa210db827795b06e3c1bd40ec10dd3070eee0
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.7 MB (86650363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec798eba2c56853d5f4ef9d06d6772736ae3a988f0326926780125d30e889f6f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 19:56:26 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 17 Jan 2017 19:56:27 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 19:56:42 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 19:56:43 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 19:56:44 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Tue, 17 Jan 2017 19:57:11 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:57:11 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 17 Jan 2017 19:57:13 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 19:57:13 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 17 Jan 2017 19:57:14 GMT
ENV RABBITMQ_VERSION=3.6.6
# Tue, 17 Jan 2017 19:57:14 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.6-1
# Tue, 17 Jan 2017 19:57:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:57:21 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 19:57:22 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 17 Jan 2017 19:57:23 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 17 Jan 2017 19:57:23 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 17 Jan 2017 19:57:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 17 Jan 2017 19:57:25 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 17 Jan 2017 19:57:26 GMT
COPY file:aea0de868079820b38523daba3301f9d1b03f85139fbcab491d2bc10c2540046 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:57:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jan 2017 19:57:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 19:57:27 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 17 Jan 2017 19:57:28 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7b82d8198435dd01be9039d9bb74d49c8b9f17a2e06921d12df6ec4821b02c`  
		Last Modified: Wed, 18 Jan 2017 07:10:44 GMT  
		Size: 4.3 KB (4340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ab6dd6c03b4c38c9ace317e210f49e7efa15033ca7742e48475fb819f6c756`  
		Last Modified: Wed, 18 Jan 2017 07:10:43 GMT  
		Size: 1.2 MB (1216695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6050e2330077ea06601cf29a494919674567dc5122ae8723f751bcd01ebaf1a`  
		Last Modified: Wed, 18 Jan 2017 07:10:43 GMT  
		Size: 2.5 KB (2497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5a4ffc5983a831d73fd424dbf7332f36f1536549c2e4a4103c2ec58112eaaf`  
		Last Modified: Wed, 18 Jan 2017 07:10:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92026084ce6335164ccf42d6ea47fe54042608461a3263bc4fafbb0b0884c5e`  
		Last Modified: Wed, 18 Jan 2017 07:10:49 GMT  
		Size: 27.8 MB (27823511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fda192079733c24aedb92fec1dae6f0444a871fefa0eb9b6da845056529b131`  
		Last Modified: Wed, 18 Jan 2017 07:10:40 GMT  
		Size: 3.1 KB (3097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b8b3646e05ea588b993d8e9dbe29c2822060bbd45224e2def4f0348d0c165be`  
		Last Modified: Wed, 18 Jan 2017 07:10:40 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2dd1208708b783f126d520b793a01be604b4bb2b02c229fa4a70dc0f9cffc7`  
		Last Modified: Wed, 18 Jan 2017 07:10:41 GMT  
		Size: 6.2 MB (6233182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c415542c01a3139b0076ea8c2349128a04b1dcb10928e59de3b57ea20d258a`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a03442472f09cba739e8c1392e754dd4b8a89ff9560fa1b10fd1de8ef7832cb`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079759849dae861ccd88a4e1534cba84c9297822320b5e5a5df609db2e054a74`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9467c0f6f3833ce7817cb36980739ba5a0ee9570def6d20c971c712174d541`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 2.7 KB (2711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17a6fe72ed5aa853c3a54a710d33825eeecb27fb3508969953ab7f9125190d8`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3`

```console
$ docker pull rabbitmq@sha256:0f4e5cddb1b7b16ea10ab699acfa210db827795b06e3c1bd40ec10dd3070eee0
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.7 MB (86650363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec798eba2c56853d5f4ef9d06d6772736ae3a988f0326926780125d30e889f6f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 19:56:26 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 17 Jan 2017 19:56:27 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 19:56:42 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 19:56:43 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 19:56:44 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Tue, 17 Jan 2017 19:57:11 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:57:11 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 17 Jan 2017 19:57:13 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 19:57:13 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 17 Jan 2017 19:57:14 GMT
ENV RABBITMQ_VERSION=3.6.6
# Tue, 17 Jan 2017 19:57:14 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.6-1
# Tue, 17 Jan 2017 19:57:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:57:21 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 19:57:22 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 17 Jan 2017 19:57:23 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 17 Jan 2017 19:57:23 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 17 Jan 2017 19:57:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 17 Jan 2017 19:57:25 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 17 Jan 2017 19:57:26 GMT
COPY file:aea0de868079820b38523daba3301f9d1b03f85139fbcab491d2bc10c2540046 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:57:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jan 2017 19:57:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 19:57:27 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 17 Jan 2017 19:57:28 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7b82d8198435dd01be9039d9bb74d49c8b9f17a2e06921d12df6ec4821b02c`  
		Last Modified: Wed, 18 Jan 2017 07:10:44 GMT  
		Size: 4.3 KB (4340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ab6dd6c03b4c38c9ace317e210f49e7efa15033ca7742e48475fb819f6c756`  
		Last Modified: Wed, 18 Jan 2017 07:10:43 GMT  
		Size: 1.2 MB (1216695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6050e2330077ea06601cf29a494919674567dc5122ae8723f751bcd01ebaf1a`  
		Last Modified: Wed, 18 Jan 2017 07:10:43 GMT  
		Size: 2.5 KB (2497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5a4ffc5983a831d73fd424dbf7332f36f1536549c2e4a4103c2ec58112eaaf`  
		Last Modified: Wed, 18 Jan 2017 07:10:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92026084ce6335164ccf42d6ea47fe54042608461a3263bc4fafbb0b0884c5e`  
		Last Modified: Wed, 18 Jan 2017 07:10:49 GMT  
		Size: 27.8 MB (27823511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fda192079733c24aedb92fec1dae6f0444a871fefa0eb9b6da845056529b131`  
		Last Modified: Wed, 18 Jan 2017 07:10:40 GMT  
		Size: 3.1 KB (3097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b8b3646e05ea588b993d8e9dbe29c2822060bbd45224e2def4f0348d0c165be`  
		Last Modified: Wed, 18 Jan 2017 07:10:40 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2dd1208708b783f126d520b793a01be604b4bb2b02c229fa4a70dc0f9cffc7`  
		Last Modified: Wed, 18 Jan 2017 07:10:41 GMT  
		Size: 6.2 MB (6233182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c415542c01a3139b0076ea8c2349128a04b1dcb10928e59de3b57ea20d258a`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a03442472f09cba739e8c1392e754dd4b8a89ff9560fa1b10fd1de8ef7832cb`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079759849dae861ccd88a4e1534cba84c9297822320b5e5a5df609db2e054a74`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9467c0f6f3833ce7817cb36980739ba5a0ee9570def6d20c971c712174d541`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 2.7 KB (2711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17a6fe72ed5aa853c3a54a710d33825eeecb27fb3508969953ab7f9125190d8`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:latest`

```console
$ docker pull rabbitmq@sha256:0f4e5cddb1b7b16ea10ab699acfa210db827795b06e3c1bd40ec10dd3070eee0
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.7 MB (86650363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec798eba2c56853d5f4ef9d06d6772736ae3a988f0326926780125d30e889f6f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 19:56:26 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 17 Jan 2017 19:56:27 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 19:56:42 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 19:56:43 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 19:56:44 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Tue, 17 Jan 2017 19:57:11 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:57:11 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 17 Jan 2017 19:57:13 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 19:57:13 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 17 Jan 2017 19:57:14 GMT
ENV RABBITMQ_VERSION=3.6.6
# Tue, 17 Jan 2017 19:57:14 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.6-1
# Tue, 17 Jan 2017 19:57:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:57:21 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 19:57:22 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 17 Jan 2017 19:57:23 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 17 Jan 2017 19:57:23 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 17 Jan 2017 19:57:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 17 Jan 2017 19:57:25 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 17 Jan 2017 19:57:26 GMT
COPY file:aea0de868079820b38523daba3301f9d1b03f85139fbcab491d2bc10c2540046 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:57:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jan 2017 19:57:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 19:57:27 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 17 Jan 2017 19:57:28 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7b82d8198435dd01be9039d9bb74d49c8b9f17a2e06921d12df6ec4821b02c`  
		Last Modified: Wed, 18 Jan 2017 07:10:44 GMT  
		Size: 4.3 KB (4340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ab6dd6c03b4c38c9ace317e210f49e7efa15033ca7742e48475fb819f6c756`  
		Last Modified: Wed, 18 Jan 2017 07:10:43 GMT  
		Size: 1.2 MB (1216695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6050e2330077ea06601cf29a494919674567dc5122ae8723f751bcd01ebaf1a`  
		Last Modified: Wed, 18 Jan 2017 07:10:43 GMT  
		Size: 2.5 KB (2497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5a4ffc5983a831d73fd424dbf7332f36f1536549c2e4a4103c2ec58112eaaf`  
		Last Modified: Wed, 18 Jan 2017 07:10:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92026084ce6335164ccf42d6ea47fe54042608461a3263bc4fafbb0b0884c5e`  
		Last Modified: Wed, 18 Jan 2017 07:10:49 GMT  
		Size: 27.8 MB (27823511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fda192079733c24aedb92fec1dae6f0444a871fefa0eb9b6da845056529b131`  
		Last Modified: Wed, 18 Jan 2017 07:10:40 GMT  
		Size: 3.1 KB (3097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b8b3646e05ea588b993d8e9dbe29c2822060bbd45224e2def4f0348d0c165be`  
		Last Modified: Wed, 18 Jan 2017 07:10:40 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2dd1208708b783f126d520b793a01be604b4bb2b02c229fa4a70dc0f9cffc7`  
		Last Modified: Wed, 18 Jan 2017 07:10:41 GMT  
		Size: 6.2 MB (6233182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c415542c01a3139b0076ea8c2349128a04b1dcb10928e59de3b57ea20d258a`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a03442472f09cba739e8c1392e754dd4b8a89ff9560fa1b10fd1de8ef7832cb`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079759849dae861ccd88a4e1534cba84c9297822320b5e5a5df609db2e054a74`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9467c0f6f3833ce7817cb36980739ba5a0ee9570def6d20c971c712174d541`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 2.7 KB (2711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17a6fe72ed5aa853c3a54a710d33825eeecb27fb3508969953ab7f9125190d8`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.6-management`

```console
$ docker pull rabbitmq@sha256:84f30ff7e45816519b19922deaa552298556dafd13dfec6ebf6b6af2bbc78d79
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.6-management` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.7 MB (86650550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cda8025c010bd2d7b42b31e3c1fa3b28e4717c92a38bc91e7a31ca7ccc24e197`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 19:56:26 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 17 Jan 2017 19:56:27 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 19:56:42 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 19:56:43 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 19:56:44 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Tue, 17 Jan 2017 19:57:11 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:57:11 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 17 Jan 2017 19:57:13 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 19:57:13 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 17 Jan 2017 19:57:14 GMT
ENV RABBITMQ_VERSION=3.6.6
# Tue, 17 Jan 2017 19:57:14 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.6-1
# Tue, 17 Jan 2017 19:57:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:57:21 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 19:57:22 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 17 Jan 2017 19:57:23 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 17 Jan 2017 19:57:23 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 17 Jan 2017 19:57:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 17 Jan 2017 19:57:25 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 17 Jan 2017 19:57:26 GMT
COPY file:aea0de868079820b38523daba3301f9d1b03f85139fbcab491d2bc10c2540046 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:57:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jan 2017 19:57:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 19:57:27 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 17 Jan 2017 19:57:28 GMT
CMD ["rabbitmq-server"]
# Tue, 17 Jan 2017 19:57:30 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 17 Jan 2017 19:57:30 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7b82d8198435dd01be9039d9bb74d49c8b9f17a2e06921d12df6ec4821b02c`  
		Last Modified: Wed, 18 Jan 2017 07:10:44 GMT  
		Size: 4.3 KB (4340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ab6dd6c03b4c38c9ace317e210f49e7efa15033ca7742e48475fb819f6c756`  
		Last Modified: Wed, 18 Jan 2017 07:10:43 GMT  
		Size: 1.2 MB (1216695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6050e2330077ea06601cf29a494919674567dc5122ae8723f751bcd01ebaf1a`  
		Last Modified: Wed, 18 Jan 2017 07:10:43 GMT  
		Size: 2.5 KB (2497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5a4ffc5983a831d73fd424dbf7332f36f1536549c2e4a4103c2ec58112eaaf`  
		Last Modified: Wed, 18 Jan 2017 07:10:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92026084ce6335164ccf42d6ea47fe54042608461a3263bc4fafbb0b0884c5e`  
		Last Modified: Wed, 18 Jan 2017 07:10:49 GMT  
		Size: 27.8 MB (27823511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fda192079733c24aedb92fec1dae6f0444a871fefa0eb9b6da845056529b131`  
		Last Modified: Wed, 18 Jan 2017 07:10:40 GMT  
		Size: 3.1 KB (3097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b8b3646e05ea588b993d8e9dbe29c2822060bbd45224e2def4f0348d0c165be`  
		Last Modified: Wed, 18 Jan 2017 07:10:40 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2dd1208708b783f126d520b793a01be604b4bb2b02c229fa4a70dc0f9cffc7`  
		Last Modified: Wed, 18 Jan 2017 07:10:41 GMT  
		Size: 6.2 MB (6233182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c415542c01a3139b0076ea8c2349128a04b1dcb10928e59de3b57ea20d258a`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a03442472f09cba739e8c1392e754dd4b8a89ff9560fa1b10fd1de8ef7832cb`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079759849dae861ccd88a4e1534cba84c9297822320b5e5a5df609db2e054a74`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9467c0f6f3833ce7817cb36980739ba5a0ee9570def6d20c971c712174d541`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 2.7 KB (2711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17a6fe72ed5aa853c3a54a710d33825eeecb27fb3508969953ab7f9125190d8`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f288cff519afa42a5f381437dbe809aef2a6486e207d794c178ec42b2cb6cc`  
		Last Modified: Wed, 18 Jan 2017 07:11:55 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management`

```console
$ docker pull rabbitmq@sha256:84f30ff7e45816519b19922deaa552298556dafd13dfec6ebf6b6af2bbc78d79
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-management` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.7 MB (86650550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cda8025c010bd2d7b42b31e3c1fa3b28e4717c92a38bc91e7a31ca7ccc24e197`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 19:56:26 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 17 Jan 2017 19:56:27 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 19:56:42 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 19:56:43 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 19:56:44 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Tue, 17 Jan 2017 19:57:11 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:57:11 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 17 Jan 2017 19:57:13 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 19:57:13 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 17 Jan 2017 19:57:14 GMT
ENV RABBITMQ_VERSION=3.6.6
# Tue, 17 Jan 2017 19:57:14 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.6-1
# Tue, 17 Jan 2017 19:57:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:57:21 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 19:57:22 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 17 Jan 2017 19:57:23 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 17 Jan 2017 19:57:23 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 17 Jan 2017 19:57:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 17 Jan 2017 19:57:25 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 17 Jan 2017 19:57:26 GMT
COPY file:aea0de868079820b38523daba3301f9d1b03f85139fbcab491d2bc10c2540046 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:57:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jan 2017 19:57:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 19:57:27 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 17 Jan 2017 19:57:28 GMT
CMD ["rabbitmq-server"]
# Tue, 17 Jan 2017 19:57:30 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 17 Jan 2017 19:57:30 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7b82d8198435dd01be9039d9bb74d49c8b9f17a2e06921d12df6ec4821b02c`  
		Last Modified: Wed, 18 Jan 2017 07:10:44 GMT  
		Size: 4.3 KB (4340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ab6dd6c03b4c38c9ace317e210f49e7efa15033ca7742e48475fb819f6c756`  
		Last Modified: Wed, 18 Jan 2017 07:10:43 GMT  
		Size: 1.2 MB (1216695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6050e2330077ea06601cf29a494919674567dc5122ae8723f751bcd01ebaf1a`  
		Last Modified: Wed, 18 Jan 2017 07:10:43 GMT  
		Size: 2.5 KB (2497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5a4ffc5983a831d73fd424dbf7332f36f1536549c2e4a4103c2ec58112eaaf`  
		Last Modified: Wed, 18 Jan 2017 07:10:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92026084ce6335164ccf42d6ea47fe54042608461a3263bc4fafbb0b0884c5e`  
		Last Modified: Wed, 18 Jan 2017 07:10:49 GMT  
		Size: 27.8 MB (27823511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fda192079733c24aedb92fec1dae6f0444a871fefa0eb9b6da845056529b131`  
		Last Modified: Wed, 18 Jan 2017 07:10:40 GMT  
		Size: 3.1 KB (3097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b8b3646e05ea588b993d8e9dbe29c2822060bbd45224e2def4f0348d0c165be`  
		Last Modified: Wed, 18 Jan 2017 07:10:40 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2dd1208708b783f126d520b793a01be604b4bb2b02c229fa4a70dc0f9cffc7`  
		Last Modified: Wed, 18 Jan 2017 07:10:41 GMT  
		Size: 6.2 MB (6233182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c415542c01a3139b0076ea8c2349128a04b1dcb10928e59de3b57ea20d258a`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a03442472f09cba739e8c1392e754dd4b8a89ff9560fa1b10fd1de8ef7832cb`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079759849dae861ccd88a4e1534cba84c9297822320b5e5a5df609db2e054a74`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9467c0f6f3833ce7817cb36980739ba5a0ee9570def6d20c971c712174d541`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 2.7 KB (2711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17a6fe72ed5aa853c3a54a710d33825eeecb27fb3508969953ab7f9125190d8`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f288cff519afa42a5f381437dbe809aef2a6486e207d794c178ec42b2cb6cc`  
		Last Modified: Wed, 18 Jan 2017 07:11:55 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management`

```console
$ docker pull rabbitmq@sha256:84f30ff7e45816519b19922deaa552298556dafd13dfec6ebf6b6af2bbc78d79
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-management` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.7 MB (86650550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cda8025c010bd2d7b42b31e3c1fa3b28e4717c92a38bc91e7a31ca7ccc24e197`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 19:56:26 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 17 Jan 2017 19:56:27 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 19:56:42 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 19:56:43 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 19:56:44 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Tue, 17 Jan 2017 19:57:11 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:57:11 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 17 Jan 2017 19:57:13 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 19:57:13 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 17 Jan 2017 19:57:14 GMT
ENV RABBITMQ_VERSION=3.6.6
# Tue, 17 Jan 2017 19:57:14 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.6-1
# Tue, 17 Jan 2017 19:57:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:57:21 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 19:57:22 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 17 Jan 2017 19:57:23 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 17 Jan 2017 19:57:23 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 17 Jan 2017 19:57:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 17 Jan 2017 19:57:25 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 17 Jan 2017 19:57:26 GMT
COPY file:aea0de868079820b38523daba3301f9d1b03f85139fbcab491d2bc10c2540046 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:57:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jan 2017 19:57:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 19:57:27 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 17 Jan 2017 19:57:28 GMT
CMD ["rabbitmq-server"]
# Tue, 17 Jan 2017 19:57:30 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 17 Jan 2017 19:57:30 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7b82d8198435dd01be9039d9bb74d49c8b9f17a2e06921d12df6ec4821b02c`  
		Last Modified: Wed, 18 Jan 2017 07:10:44 GMT  
		Size: 4.3 KB (4340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ab6dd6c03b4c38c9ace317e210f49e7efa15033ca7742e48475fb819f6c756`  
		Last Modified: Wed, 18 Jan 2017 07:10:43 GMT  
		Size: 1.2 MB (1216695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6050e2330077ea06601cf29a494919674567dc5122ae8723f751bcd01ebaf1a`  
		Last Modified: Wed, 18 Jan 2017 07:10:43 GMT  
		Size: 2.5 KB (2497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5a4ffc5983a831d73fd424dbf7332f36f1536549c2e4a4103c2ec58112eaaf`  
		Last Modified: Wed, 18 Jan 2017 07:10:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92026084ce6335164ccf42d6ea47fe54042608461a3263bc4fafbb0b0884c5e`  
		Last Modified: Wed, 18 Jan 2017 07:10:49 GMT  
		Size: 27.8 MB (27823511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fda192079733c24aedb92fec1dae6f0444a871fefa0eb9b6da845056529b131`  
		Last Modified: Wed, 18 Jan 2017 07:10:40 GMT  
		Size: 3.1 KB (3097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b8b3646e05ea588b993d8e9dbe29c2822060bbd45224e2def4f0348d0c165be`  
		Last Modified: Wed, 18 Jan 2017 07:10:40 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2dd1208708b783f126d520b793a01be604b4bb2b02c229fa4a70dc0f9cffc7`  
		Last Modified: Wed, 18 Jan 2017 07:10:41 GMT  
		Size: 6.2 MB (6233182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c415542c01a3139b0076ea8c2349128a04b1dcb10928e59de3b57ea20d258a`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a03442472f09cba739e8c1392e754dd4b8a89ff9560fa1b10fd1de8ef7832cb`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079759849dae861ccd88a4e1534cba84c9297822320b5e5a5df609db2e054a74`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9467c0f6f3833ce7817cb36980739ba5a0ee9570def6d20c971c712174d541`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 2.7 KB (2711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17a6fe72ed5aa853c3a54a710d33825eeecb27fb3508969953ab7f9125190d8`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f288cff519afa42a5f381437dbe809aef2a6486e207d794c178ec42b2cb6cc`  
		Last Modified: Wed, 18 Jan 2017 07:11:55 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management`

```console
$ docker pull rabbitmq@sha256:84f30ff7e45816519b19922deaa552298556dafd13dfec6ebf6b6af2bbc78d79
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:management` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.7 MB (86650550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cda8025c010bd2d7b42b31e3c1fa3b28e4717c92a38bc91e7a31ca7ccc24e197`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 19:56:26 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 17 Jan 2017 19:56:27 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 19:56:42 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 19:56:43 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 19:56:44 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Tue, 17 Jan 2017 19:57:11 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:57:11 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 17 Jan 2017 19:57:13 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 19:57:13 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 17 Jan 2017 19:57:14 GMT
ENV RABBITMQ_VERSION=3.6.6
# Tue, 17 Jan 2017 19:57:14 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.6-1
# Tue, 17 Jan 2017 19:57:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:57:21 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jan 2017 19:57:22 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 17 Jan 2017 19:57:23 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 17 Jan 2017 19:57:23 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 17 Jan 2017 19:57:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 17 Jan 2017 19:57:25 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 17 Jan 2017 19:57:26 GMT
COPY file:aea0de868079820b38523daba3301f9d1b03f85139fbcab491d2bc10c2540046 in /usr/local/bin/ 
# Tue, 17 Jan 2017 19:57:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jan 2017 19:57:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 19:57:27 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 17 Jan 2017 19:57:28 GMT
CMD ["rabbitmq-server"]
# Tue, 17 Jan 2017 19:57:30 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 17 Jan 2017 19:57:30 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7b82d8198435dd01be9039d9bb74d49c8b9f17a2e06921d12df6ec4821b02c`  
		Last Modified: Wed, 18 Jan 2017 07:10:44 GMT  
		Size: 4.3 KB (4340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ab6dd6c03b4c38c9ace317e210f49e7efa15033ca7742e48475fb819f6c756`  
		Last Modified: Wed, 18 Jan 2017 07:10:43 GMT  
		Size: 1.2 MB (1216695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6050e2330077ea06601cf29a494919674567dc5122ae8723f751bcd01ebaf1a`  
		Last Modified: Wed, 18 Jan 2017 07:10:43 GMT  
		Size: 2.5 KB (2497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5a4ffc5983a831d73fd424dbf7332f36f1536549c2e4a4103c2ec58112eaaf`  
		Last Modified: Wed, 18 Jan 2017 07:10:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92026084ce6335164ccf42d6ea47fe54042608461a3263bc4fafbb0b0884c5e`  
		Last Modified: Wed, 18 Jan 2017 07:10:49 GMT  
		Size: 27.8 MB (27823511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fda192079733c24aedb92fec1dae6f0444a871fefa0eb9b6da845056529b131`  
		Last Modified: Wed, 18 Jan 2017 07:10:40 GMT  
		Size: 3.1 KB (3097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b8b3646e05ea588b993d8e9dbe29c2822060bbd45224e2def4f0348d0c165be`  
		Last Modified: Wed, 18 Jan 2017 07:10:40 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2dd1208708b783f126d520b793a01be604b4bb2b02c229fa4a70dc0f9cffc7`  
		Last Modified: Wed, 18 Jan 2017 07:10:41 GMT  
		Size: 6.2 MB (6233182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c415542c01a3139b0076ea8c2349128a04b1dcb10928e59de3b57ea20d258a`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a03442472f09cba739e8c1392e754dd4b8a89ff9560fa1b10fd1de8ef7832cb`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079759849dae861ccd88a4e1534cba84c9297822320b5e5a5df609db2e054a74`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9467c0f6f3833ce7817cb36980739ba5a0ee9570def6d20c971c712174d541`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 2.7 KB (2711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17a6fe72ed5aa853c3a54a710d33825eeecb27fb3508969953ab7f9125190d8`  
		Last Modified: Wed, 18 Jan 2017 07:10:37 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f288cff519afa42a5f381437dbe809aef2a6486e207d794c178ec42b2cb6cc`  
		Last Modified: Wed, 18 Jan 2017 07:11:55 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.6-alpine`

```console
$ docker pull rabbitmq@sha256:30fec4870b3e59ae2799ce26197599a1c47a93319346d614e98ea2a7b4f736a1
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.6-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.2 MB (23233838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9df9494650e1e8d62ffc2710550796122ad4f178d4e22efd3955f77e963875c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Fri, 27 Jan 2017 23:50:32 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 27 Jan 2017 23:50:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 27 Jan 2017 23:50:40 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 27 Jan 2017 23:50:40 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 27 Jan 2017 23:50:41 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 27 Jan 2017 23:50:41 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 23:50:42 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 27 Jan 2017 23:50:42 GMT
ENV RABBITMQ_VERSION=3.6.6
# Fri, 27 Jan 2017 23:50:48 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 27 Jan 2017 23:50:49 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 27 Jan 2017 23:50:50 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 27 Jan 2017 23:50:51 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 27 Jan 2017 23:50:52 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 27 Jan 2017 23:50:53 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 27 Jan 2017 23:50:54 GMT
COPY file:889db2c162130c516814ed2e12887ebedfe5494e2392df66a67bc436655833fa in /usr/local/bin/ 
# Fri, 27 Jan 2017 23:50:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jan 2017 23:50:55 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 27 Jan 2017 23:50:55 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e408ffa16ea99adde6c8dacbc6218ff71a60d96968a163ea53807819be5d4297`  
		Last Modified: Fri, 27 Jan 2017 23:53:19 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cde1b2078584249681db19212d20c7fc763d72f81fa61c41ea475d1bb417ff9`  
		Last Modified: Fri, 27 Jan 2017 23:53:19 GMT  
		Size: 7.7 KB (7678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a04075234d11673acd505abdc240be382cea957a4f2638e9bf8cea2ea65bccc`  
		Last Modified: Fri, 27 Jan 2017 23:53:21 GMT  
		Size: 15.8 MB (15804072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1e74241d86499d0c3e67ec7660174a0b2f290c56451e208ddd64d95afdd8ef`  
		Last Modified: Fri, 27 Jan 2017 23:53:19 GMT  
		Size: 5.5 MB (5515563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8a0b0c81806e6f91fb53cd2d51fc1e7bd7bea126f6cd6e491ad697b97861f1`  
		Last Modified: Fri, 27 Jan 2017 23:53:17 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53c23677e125be2a5cbd642e5df64e60e83235b88fabe84d9f3e1bb9ac7eb0e`  
		Last Modified: Fri, 27 Jan 2017 23:53:16 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b852e69dee8f5c56a206e28636e02e58a226dbd9457238bafd57f7665ed44d04`  
		Last Modified: Fri, 27 Jan 2017 23:53:16 GMT  
		Size: 106.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:623e468184f695cf25698f8497ddcf430295634e0a3127311f7d7bb7b0085fbb`  
		Last Modified: Fri, 27 Jan 2017 23:53:17 GMT  
		Size: 2.7 KB (2698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-alpine`

```console
$ docker pull rabbitmq@sha256:30fec4870b3e59ae2799ce26197599a1c47a93319346d614e98ea2a7b4f736a1
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.2 MB (23233838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9df9494650e1e8d62ffc2710550796122ad4f178d4e22efd3955f77e963875c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Fri, 27 Jan 2017 23:50:32 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 27 Jan 2017 23:50:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 27 Jan 2017 23:50:40 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 27 Jan 2017 23:50:40 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 27 Jan 2017 23:50:41 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 27 Jan 2017 23:50:41 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 23:50:42 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 27 Jan 2017 23:50:42 GMT
ENV RABBITMQ_VERSION=3.6.6
# Fri, 27 Jan 2017 23:50:48 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 27 Jan 2017 23:50:49 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 27 Jan 2017 23:50:50 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 27 Jan 2017 23:50:51 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 27 Jan 2017 23:50:52 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 27 Jan 2017 23:50:53 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 27 Jan 2017 23:50:54 GMT
COPY file:889db2c162130c516814ed2e12887ebedfe5494e2392df66a67bc436655833fa in /usr/local/bin/ 
# Fri, 27 Jan 2017 23:50:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jan 2017 23:50:55 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 27 Jan 2017 23:50:55 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e408ffa16ea99adde6c8dacbc6218ff71a60d96968a163ea53807819be5d4297`  
		Last Modified: Fri, 27 Jan 2017 23:53:19 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cde1b2078584249681db19212d20c7fc763d72f81fa61c41ea475d1bb417ff9`  
		Last Modified: Fri, 27 Jan 2017 23:53:19 GMT  
		Size: 7.7 KB (7678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a04075234d11673acd505abdc240be382cea957a4f2638e9bf8cea2ea65bccc`  
		Last Modified: Fri, 27 Jan 2017 23:53:21 GMT  
		Size: 15.8 MB (15804072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1e74241d86499d0c3e67ec7660174a0b2f290c56451e208ddd64d95afdd8ef`  
		Last Modified: Fri, 27 Jan 2017 23:53:19 GMT  
		Size: 5.5 MB (5515563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8a0b0c81806e6f91fb53cd2d51fc1e7bd7bea126f6cd6e491ad697b97861f1`  
		Last Modified: Fri, 27 Jan 2017 23:53:17 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53c23677e125be2a5cbd642e5df64e60e83235b88fabe84d9f3e1bb9ac7eb0e`  
		Last Modified: Fri, 27 Jan 2017 23:53:16 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b852e69dee8f5c56a206e28636e02e58a226dbd9457238bafd57f7665ed44d04`  
		Last Modified: Fri, 27 Jan 2017 23:53:16 GMT  
		Size: 106.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:623e468184f695cf25698f8497ddcf430295634e0a3127311f7d7bb7b0085fbb`  
		Last Modified: Fri, 27 Jan 2017 23:53:17 GMT  
		Size: 2.7 KB (2698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-alpine`

```console
$ docker pull rabbitmq@sha256:30fec4870b3e59ae2799ce26197599a1c47a93319346d614e98ea2a7b4f736a1
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.2 MB (23233838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9df9494650e1e8d62ffc2710550796122ad4f178d4e22efd3955f77e963875c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Fri, 27 Jan 2017 23:50:32 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 27 Jan 2017 23:50:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 27 Jan 2017 23:50:40 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 27 Jan 2017 23:50:40 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 27 Jan 2017 23:50:41 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 27 Jan 2017 23:50:41 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 23:50:42 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 27 Jan 2017 23:50:42 GMT
ENV RABBITMQ_VERSION=3.6.6
# Fri, 27 Jan 2017 23:50:48 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 27 Jan 2017 23:50:49 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 27 Jan 2017 23:50:50 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 27 Jan 2017 23:50:51 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 27 Jan 2017 23:50:52 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 27 Jan 2017 23:50:53 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 27 Jan 2017 23:50:54 GMT
COPY file:889db2c162130c516814ed2e12887ebedfe5494e2392df66a67bc436655833fa in /usr/local/bin/ 
# Fri, 27 Jan 2017 23:50:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jan 2017 23:50:55 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 27 Jan 2017 23:50:55 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e408ffa16ea99adde6c8dacbc6218ff71a60d96968a163ea53807819be5d4297`  
		Last Modified: Fri, 27 Jan 2017 23:53:19 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cde1b2078584249681db19212d20c7fc763d72f81fa61c41ea475d1bb417ff9`  
		Last Modified: Fri, 27 Jan 2017 23:53:19 GMT  
		Size: 7.7 KB (7678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a04075234d11673acd505abdc240be382cea957a4f2638e9bf8cea2ea65bccc`  
		Last Modified: Fri, 27 Jan 2017 23:53:21 GMT  
		Size: 15.8 MB (15804072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1e74241d86499d0c3e67ec7660174a0b2f290c56451e208ddd64d95afdd8ef`  
		Last Modified: Fri, 27 Jan 2017 23:53:19 GMT  
		Size: 5.5 MB (5515563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8a0b0c81806e6f91fb53cd2d51fc1e7bd7bea126f6cd6e491ad697b97861f1`  
		Last Modified: Fri, 27 Jan 2017 23:53:17 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53c23677e125be2a5cbd642e5df64e60e83235b88fabe84d9f3e1bb9ac7eb0e`  
		Last Modified: Fri, 27 Jan 2017 23:53:16 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b852e69dee8f5c56a206e28636e02e58a226dbd9457238bafd57f7665ed44d04`  
		Last Modified: Fri, 27 Jan 2017 23:53:16 GMT  
		Size: 106.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:623e468184f695cf25698f8497ddcf430295634e0a3127311f7d7bb7b0085fbb`  
		Last Modified: Fri, 27 Jan 2017 23:53:17 GMT  
		Size: 2.7 KB (2698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:alpine`

```console
$ docker pull rabbitmq@sha256:30fec4870b3e59ae2799ce26197599a1c47a93319346d614e98ea2a7b4f736a1
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.2 MB (23233838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9df9494650e1e8d62ffc2710550796122ad4f178d4e22efd3955f77e963875c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Fri, 27 Jan 2017 23:50:32 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 27 Jan 2017 23:50:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 27 Jan 2017 23:50:40 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 27 Jan 2017 23:50:40 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 27 Jan 2017 23:50:41 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 27 Jan 2017 23:50:41 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 23:50:42 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 27 Jan 2017 23:50:42 GMT
ENV RABBITMQ_VERSION=3.6.6
# Fri, 27 Jan 2017 23:50:48 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 27 Jan 2017 23:50:49 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 27 Jan 2017 23:50:50 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 27 Jan 2017 23:50:51 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 27 Jan 2017 23:50:52 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 27 Jan 2017 23:50:53 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 27 Jan 2017 23:50:54 GMT
COPY file:889db2c162130c516814ed2e12887ebedfe5494e2392df66a67bc436655833fa in /usr/local/bin/ 
# Fri, 27 Jan 2017 23:50:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jan 2017 23:50:55 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 27 Jan 2017 23:50:55 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e408ffa16ea99adde6c8dacbc6218ff71a60d96968a163ea53807819be5d4297`  
		Last Modified: Fri, 27 Jan 2017 23:53:19 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cde1b2078584249681db19212d20c7fc763d72f81fa61c41ea475d1bb417ff9`  
		Last Modified: Fri, 27 Jan 2017 23:53:19 GMT  
		Size: 7.7 KB (7678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a04075234d11673acd505abdc240be382cea957a4f2638e9bf8cea2ea65bccc`  
		Last Modified: Fri, 27 Jan 2017 23:53:21 GMT  
		Size: 15.8 MB (15804072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1e74241d86499d0c3e67ec7660174a0b2f290c56451e208ddd64d95afdd8ef`  
		Last Modified: Fri, 27 Jan 2017 23:53:19 GMT  
		Size: 5.5 MB (5515563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8a0b0c81806e6f91fb53cd2d51fc1e7bd7bea126f6cd6e491ad697b97861f1`  
		Last Modified: Fri, 27 Jan 2017 23:53:17 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53c23677e125be2a5cbd642e5df64e60e83235b88fabe84d9f3e1bb9ac7eb0e`  
		Last Modified: Fri, 27 Jan 2017 23:53:16 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b852e69dee8f5c56a206e28636e02e58a226dbd9457238bafd57f7665ed44d04`  
		Last Modified: Fri, 27 Jan 2017 23:53:16 GMT  
		Size: 106.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:623e468184f695cf25698f8497ddcf430295634e0a3127311f7d7bb7b0085fbb`  
		Last Modified: Fri, 27 Jan 2017 23:53:17 GMT  
		Size: 2.7 KB (2698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.6-management-alpine`

```console
$ docker pull rabbitmq@sha256:a41822b13503317dbdf322ad734f62db848edf97b78be3bade84fd0a4270589a
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.6-management-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.2 MB (23234029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c30fd9a28ed4bdcd35d295a138d87019bfc876b8c4622c7e22822a3bf18a451`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Fri, 27 Jan 2017 23:50:32 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 27 Jan 2017 23:50:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 27 Jan 2017 23:50:40 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 27 Jan 2017 23:50:40 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 27 Jan 2017 23:50:41 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 27 Jan 2017 23:50:41 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 23:50:42 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 27 Jan 2017 23:50:42 GMT
ENV RABBITMQ_VERSION=3.6.6
# Fri, 27 Jan 2017 23:50:48 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 27 Jan 2017 23:50:49 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 27 Jan 2017 23:50:50 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 27 Jan 2017 23:50:51 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 27 Jan 2017 23:50:52 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 27 Jan 2017 23:50:53 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 27 Jan 2017 23:50:54 GMT
COPY file:889db2c162130c516814ed2e12887ebedfe5494e2392df66a67bc436655833fa in /usr/local/bin/ 
# Fri, 27 Jan 2017 23:50:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jan 2017 23:50:55 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 27 Jan 2017 23:50:55 GMT
CMD ["rabbitmq-server"]
# Fri, 27 Jan 2017 23:50:57 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 27 Jan 2017 23:50:58 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e408ffa16ea99adde6c8dacbc6218ff71a60d96968a163ea53807819be5d4297`  
		Last Modified: Fri, 27 Jan 2017 23:53:19 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cde1b2078584249681db19212d20c7fc763d72f81fa61c41ea475d1bb417ff9`  
		Last Modified: Fri, 27 Jan 2017 23:53:19 GMT  
		Size: 7.7 KB (7678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a04075234d11673acd505abdc240be382cea957a4f2638e9bf8cea2ea65bccc`  
		Last Modified: Fri, 27 Jan 2017 23:53:21 GMT  
		Size: 15.8 MB (15804072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1e74241d86499d0c3e67ec7660174a0b2f290c56451e208ddd64d95afdd8ef`  
		Last Modified: Fri, 27 Jan 2017 23:53:19 GMT  
		Size: 5.5 MB (5515563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8a0b0c81806e6f91fb53cd2d51fc1e7bd7bea126f6cd6e491ad697b97861f1`  
		Last Modified: Fri, 27 Jan 2017 23:53:17 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53c23677e125be2a5cbd642e5df64e60e83235b88fabe84d9f3e1bb9ac7eb0e`  
		Last Modified: Fri, 27 Jan 2017 23:53:16 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b852e69dee8f5c56a206e28636e02e58a226dbd9457238bafd57f7665ed44d04`  
		Last Modified: Fri, 27 Jan 2017 23:53:16 GMT  
		Size: 106.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:623e468184f695cf25698f8497ddcf430295634e0a3127311f7d7bb7b0085fbb`  
		Last Modified: Fri, 27 Jan 2017 23:53:17 GMT  
		Size: 2.7 KB (2698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9973ac85d9d1cf2298feddfb84c95084ea86900d904473750d4a80e8c97ae370`  
		Last Modified: Fri, 27 Jan 2017 23:54:25 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management-alpine`

```console
$ docker pull rabbitmq@sha256:a41822b13503317dbdf322ad734f62db848edf97b78be3bade84fd0a4270589a
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-management-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.2 MB (23234029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c30fd9a28ed4bdcd35d295a138d87019bfc876b8c4622c7e22822a3bf18a451`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Fri, 27 Jan 2017 23:50:32 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 27 Jan 2017 23:50:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 27 Jan 2017 23:50:40 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 27 Jan 2017 23:50:40 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 27 Jan 2017 23:50:41 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 27 Jan 2017 23:50:41 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 23:50:42 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 27 Jan 2017 23:50:42 GMT
ENV RABBITMQ_VERSION=3.6.6
# Fri, 27 Jan 2017 23:50:48 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 27 Jan 2017 23:50:49 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 27 Jan 2017 23:50:50 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 27 Jan 2017 23:50:51 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 27 Jan 2017 23:50:52 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 27 Jan 2017 23:50:53 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 27 Jan 2017 23:50:54 GMT
COPY file:889db2c162130c516814ed2e12887ebedfe5494e2392df66a67bc436655833fa in /usr/local/bin/ 
# Fri, 27 Jan 2017 23:50:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jan 2017 23:50:55 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 27 Jan 2017 23:50:55 GMT
CMD ["rabbitmq-server"]
# Fri, 27 Jan 2017 23:50:57 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 27 Jan 2017 23:50:58 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e408ffa16ea99adde6c8dacbc6218ff71a60d96968a163ea53807819be5d4297`  
		Last Modified: Fri, 27 Jan 2017 23:53:19 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cde1b2078584249681db19212d20c7fc763d72f81fa61c41ea475d1bb417ff9`  
		Last Modified: Fri, 27 Jan 2017 23:53:19 GMT  
		Size: 7.7 KB (7678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a04075234d11673acd505abdc240be382cea957a4f2638e9bf8cea2ea65bccc`  
		Last Modified: Fri, 27 Jan 2017 23:53:21 GMT  
		Size: 15.8 MB (15804072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1e74241d86499d0c3e67ec7660174a0b2f290c56451e208ddd64d95afdd8ef`  
		Last Modified: Fri, 27 Jan 2017 23:53:19 GMT  
		Size: 5.5 MB (5515563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8a0b0c81806e6f91fb53cd2d51fc1e7bd7bea126f6cd6e491ad697b97861f1`  
		Last Modified: Fri, 27 Jan 2017 23:53:17 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53c23677e125be2a5cbd642e5df64e60e83235b88fabe84d9f3e1bb9ac7eb0e`  
		Last Modified: Fri, 27 Jan 2017 23:53:16 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b852e69dee8f5c56a206e28636e02e58a226dbd9457238bafd57f7665ed44d04`  
		Last Modified: Fri, 27 Jan 2017 23:53:16 GMT  
		Size: 106.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:623e468184f695cf25698f8497ddcf430295634e0a3127311f7d7bb7b0085fbb`  
		Last Modified: Fri, 27 Jan 2017 23:53:17 GMT  
		Size: 2.7 KB (2698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9973ac85d9d1cf2298feddfb84c95084ea86900d904473750d4a80e8c97ae370`  
		Last Modified: Fri, 27 Jan 2017 23:54:25 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management-alpine`

```console
$ docker pull rabbitmq@sha256:a41822b13503317dbdf322ad734f62db848edf97b78be3bade84fd0a4270589a
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-management-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.2 MB (23234029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c30fd9a28ed4bdcd35d295a138d87019bfc876b8c4622c7e22822a3bf18a451`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Fri, 27 Jan 2017 23:50:32 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 27 Jan 2017 23:50:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 27 Jan 2017 23:50:40 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 27 Jan 2017 23:50:40 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 27 Jan 2017 23:50:41 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 27 Jan 2017 23:50:41 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 23:50:42 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 27 Jan 2017 23:50:42 GMT
ENV RABBITMQ_VERSION=3.6.6
# Fri, 27 Jan 2017 23:50:48 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 27 Jan 2017 23:50:49 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 27 Jan 2017 23:50:50 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 27 Jan 2017 23:50:51 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 27 Jan 2017 23:50:52 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 27 Jan 2017 23:50:53 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 27 Jan 2017 23:50:54 GMT
COPY file:889db2c162130c516814ed2e12887ebedfe5494e2392df66a67bc436655833fa in /usr/local/bin/ 
# Fri, 27 Jan 2017 23:50:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jan 2017 23:50:55 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 27 Jan 2017 23:50:55 GMT
CMD ["rabbitmq-server"]
# Fri, 27 Jan 2017 23:50:57 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 27 Jan 2017 23:50:58 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e408ffa16ea99adde6c8dacbc6218ff71a60d96968a163ea53807819be5d4297`  
		Last Modified: Fri, 27 Jan 2017 23:53:19 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cde1b2078584249681db19212d20c7fc763d72f81fa61c41ea475d1bb417ff9`  
		Last Modified: Fri, 27 Jan 2017 23:53:19 GMT  
		Size: 7.7 KB (7678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a04075234d11673acd505abdc240be382cea957a4f2638e9bf8cea2ea65bccc`  
		Last Modified: Fri, 27 Jan 2017 23:53:21 GMT  
		Size: 15.8 MB (15804072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1e74241d86499d0c3e67ec7660174a0b2f290c56451e208ddd64d95afdd8ef`  
		Last Modified: Fri, 27 Jan 2017 23:53:19 GMT  
		Size: 5.5 MB (5515563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8a0b0c81806e6f91fb53cd2d51fc1e7bd7bea126f6cd6e491ad697b97861f1`  
		Last Modified: Fri, 27 Jan 2017 23:53:17 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53c23677e125be2a5cbd642e5df64e60e83235b88fabe84d9f3e1bb9ac7eb0e`  
		Last Modified: Fri, 27 Jan 2017 23:53:16 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b852e69dee8f5c56a206e28636e02e58a226dbd9457238bafd57f7665ed44d04`  
		Last Modified: Fri, 27 Jan 2017 23:53:16 GMT  
		Size: 106.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:623e468184f695cf25698f8497ddcf430295634e0a3127311f7d7bb7b0085fbb`  
		Last Modified: Fri, 27 Jan 2017 23:53:17 GMT  
		Size: 2.7 KB (2698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9973ac85d9d1cf2298feddfb84c95084ea86900d904473750d4a80e8c97ae370`  
		Last Modified: Fri, 27 Jan 2017 23:54:25 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management-alpine`

```console
$ docker pull rabbitmq@sha256:a41822b13503317dbdf322ad734f62db848edf97b78be3bade84fd0a4270589a
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:management-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.2 MB (23234029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c30fd9a28ed4bdcd35d295a138d87019bfc876b8c4622c7e22822a3bf18a451`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Fri, 27 Jan 2017 23:50:32 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 27 Jan 2017 23:50:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 27 Jan 2017 23:50:40 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 27 Jan 2017 23:50:40 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 27 Jan 2017 23:50:41 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 27 Jan 2017 23:50:41 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 23:50:42 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 27 Jan 2017 23:50:42 GMT
ENV RABBITMQ_VERSION=3.6.6
# Fri, 27 Jan 2017 23:50:48 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 27 Jan 2017 23:50:49 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 27 Jan 2017 23:50:50 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 27 Jan 2017 23:50:51 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 27 Jan 2017 23:50:52 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 27 Jan 2017 23:50:53 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 27 Jan 2017 23:50:54 GMT
COPY file:889db2c162130c516814ed2e12887ebedfe5494e2392df66a67bc436655833fa in /usr/local/bin/ 
# Fri, 27 Jan 2017 23:50:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jan 2017 23:50:55 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 27 Jan 2017 23:50:55 GMT
CMD ["rabbitmq-server"]
# Fri, 27 Jan 2017 23:50:57 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 27 Jan 2017 23:50:58 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e408ffa16ea99adde6c8dacbc6218ff71a60d96968a163ea53807819be5d4297`  
		Last Modified: Fri, 27 Jan 2017 23:53:19 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cde1b2078584249681db19212d20c7fc763d72f81fa61c41ea475d1bb417ff9`  
		Last Modified: Fri, 27 Jan 2017 23:53:19 GMT  
		Size: 7.7 KB (7678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a04075234d11673acd505abdc240be382cea957a4f2638e9bf8cea2ea65bccc`  
		Last Modified: Fri, 27 Jan 2017 23:53:21 GMT  
		Size: 15.8 MB (15804072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1e74241d86499d0c3e67ec7660174a0b2f290c56451e208ddd64d95afdd8ef`  
		Last Modified: Fri, 27 Jan 2017 23:53:19 GMT  
		Size: 5.5 MB (5515563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8a0b0c81806e6f91fb53cd2d51fc1e7bd7bea126f6cd6e491ad697b97861f1`  
		Last Modified: Fri, 27 Jan 2017 23:53:17 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53c23677e125be2a5cbd642e5df64e60e83235b88fabe84d9f3e1bb9ac7eb0e`  
		Last Modified: Fri, 27 Jan 2017 23:53:16 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b852e69dee8f5c56a206e28636e02e58a226dbd9457238bafd57f7665ed44d04`  
		Last Modified: Fri, 27 Jan 2017 23:53:16 GMT  
		Size: 106.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:623e468184f695cf25698f8497ddcf430295634e0a3127311f7d7bb7b0085fbb`  
		Last Modified: Fri, 27 Jan 2017 23:53:17 GMT  
		Size: 2.7 KB (2698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9973ac85d9d1cf2298feddfb84c95084ea86900d904473750d4a80e8c97ae370`  
		Last Modified: Fri, 27 Jan 2017 23:54:25 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
