<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rabbitmq`

-	[`rabbitmq:3.6.10`](#rabbitmq3610)
-	[`rabbitmq:3.6`](#rabbitmq36)
-	[`rabbitmq:3`](#rabbitmq3)
-	[`rabbitmq:latest`](#rabbitmqlatest)
-	[`rabbitmq:3.6.10-management`](#rabbitmq3610-management)
-	[`rabbitmq:3.6-management`](#rabbitmq36-management)
-	[`rabbitmq:3-management`](#rabbitmq3-management)
-	[`rabbitmq:management`](#rabbitmqmanagement)
-	[`rabbitmq:3.6.10-alpine`](#rabbitmq3610-alpine)
-	[`rabbitmq:3.6-alpine`](#rabbitmq36-alpine)
-	[`rabbitmq:3-alpine`](#rabbitmq3-alpine)
-	[`rabbitmq:alpine`](#rabbitmqalpine)
-	[`rabbitmq:3.6.10-management-alpine`](#rabbitmq3610-management-alpine)
-	[`rabbitmq:3.6-management-alpine`](#rabbitmq36-management-alpine)
-	[`rabbitmq:3-management-alpine`](#rabbitmq3-management-alpine)
-	[`rabbitmq:management-alpine`](#rabbitmqmanagement-alpine)

## `rabbitmq:3.6.10`

```console
$ docker pull rabbitmq@sha256:24eb64ff04174afada4861fe9c2c7a028bd5fc7d83a555592a9e296352002626
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.10` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.2 MB (87194991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512d5b54863ccde50ef035c9554961e25353e756203a436eb8f8a92bd66d350a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 20:26:27 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 08 Jun 2017 20:26:27 GMT
ENV GOSU_VERSION=1.7
# Thu, 08 Jun 2017 20:26:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 08 Jun 2017 20:26:48 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 08 Jun 2017 20:26:50 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Thu, 08 Jun 2017 20:27:20 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 20:27:21 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 08 Jun 2017 20:27:24 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 08 Jun 2017 20:27:25 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Thu, 08 Jun 2017 20:27:26 GMT
ENV RABBITMQ_VERSION=3.6.10
# Thu, 08 Jun 2017 20:27:27 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.10-1
# Thu, 08 Jun 2017 20:27:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 20:27:38 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 20:27:39 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 08 Jun 2017 20:27:40 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 08 Jun 2017 20:27:41 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 08 Jun 2017 20:27:43 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 08 Jun 2017 20:27:45 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Thu, 08 Jun 2017 20:27:46 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Thu, 08 Jun 2017 20:27:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 08 Jun 2017 20:27:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 20:27:50 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 08 Jun 2017 20:27:51 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2209eb8a2c64e41fb630c7a26ace023968f446b2da6786890ef038a547dca9`  
		Last Modified: Thu, 08 Jun 2017 20:29:42 GMT  
		Size: 4.4 KB (4372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4fc6d72325ba733f93aab61bbe21fde15e802fce6b9ae717643f03e0ec2725`  
		Last Modified: Thu, 08 Jun 2017 20:29:42 GMT  
		Size: 1.3 MB (1302705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef042a4c5822ac0920f5c45a8f6aa67ba5af03bb5cffb1c8e602a145189c7cfa`  
		Last Modified: Thu, 08 Jun 2017 20:29:40 GMT  
		Size: 2.5 KB (2502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e69a1354d946ec97f545354e6753ff30f2553349d72ff3af36698f55ba2b007`  
		Last Modified: Thu, 08 Jun 2017 20:29:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99afaf0214824776ba0b6334c2293bcbe7b6f9063c5a10e90a6427c190ab175`  
		Last Modified: Thu, 08 Jun 2017 20:29:43 GMT  
		Size: 27.6 MB (27610104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9ba686a7f090f1f008b77675d26fa542be51b563803f103abba35ad46836cf`  
		Last Modified: Thu, 08 Jun 2017 20:29:39 GMT  
		Size: 3.1 KB (3099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f28a9332842d3ced28881ad7719026f5fa3e77591035b6b8db2be9a90993b2e`  
		Last Modified: Thu, 08 Jun 2017 20:29:39 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c904ad62140ffdf87e785b50fe6cbef092366de39d27194f06829eca659348e6`  
		Last Modified: Thu, 08 Jun 2017 20:29:38 GMT  
		Size: 5.7 MB (5696812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593857ac4cd8009c35bbd445a426299cc92dd99ebd12f2e782fe1aaefbbe7e0`  
		Last Modified: Thu, 08 Jun 2017 20:29:38 GMT  
		Size: 2.2 KB (2232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33cc68b498cc8cd1ef552ce1e090d086a50c898bd4008ab924bbfd74ff882db2`  
		Last Modified: Thu, 08 Jun 2017 20:29:37 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ee17d31177170908a7c9947fa789b5b7d3686a47e7582d2970da49183ae565`  
		Last Modified: Thu, 08 Jun 2017 20:29:37 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15bd871e004577cdda6c391e91e959f1a1e75bff38df8d1653911dae59972dc0`  
		Last Modified: Thu, 08 Jun 2017 20:29:37 GMT  
		Size: 4.1 KB (4065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9882a51b391a9f56934cf74f113164fe3b0c63bd80826d541a8ba77b22d6f4`  
		Last Modified: Thu, 08 Jun 2017 20:29:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6`

```console
$ docker pull rabbitmq@sha256:24eb64ff04174afada4861fe9c2c7a028bd5fc7d83a555592a9e296352002626
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.2 MB (87194991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512d5b54863ccde50ef035c9554961e25353e756203a436eb8f8a92bd66d350a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 20:26:27 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 08 Jun 2017 20:26:27 GMT
ENV GOSU_VERSION=1.7
# Thu, 08 Jun 2017 20:26:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 08 Jun 2017 20:26:48 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 08 Jun 2017 20:26:50 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Thu, 08 Jun 2017 20:27:20 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 20:27:21 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 08 Jun 2017 20:27:24 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 08 Jun 2017 20:27:25 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Thu, 08 Jun 2017 20:27:26 GMT
ENV RABBITMQ_VERSION=3.6.10
# Thu, 08 Jun 2017 20:27:27 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.10-1
# Thu, 08 Jun 2017 20:27:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 20:27:38 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 20:27:39 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 08 Jun 2017 20:27:40 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 08 Jun 2017 20:27:41 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 08 Jun 2017 20:27:43 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 08 Jun 2017 20:27:45 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Thu, 08 Jun 2017 20:27:46 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Thu, 08 Jun 2017 20:27:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 08 Jun 2017 20:27:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 20:27:50 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 08 Jun 2017 20:27:51 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2209eb8a2c64e41fb630c7a26ace023968f446b2da6786890ef038a547dca9`  
		Last Modified: Thu, 08 Jun 2017 20:29:42 GMT  
		Size: 4.4 KB (4372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4fc6d72325ba733f93aab61bbe21fde15e802fce6b9ae717643f03e0ec2725`  
		Last Modified: Thu, 08 Jun 2017 20:29:42 GMT  
		Size: 1.3 MB (1302705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef042a4c5822ac0920f5c45a8f6aa67ba5af03bb5cffb1c8e602a145189c7cfa`  
		Last Modified: Thu, 08 Jun 2017 20:29:40 GMT  
		Size: 2.5 KB (2502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e69a1354d946ec97f545354e6753ff30f2553349d72ff3af36698f55ba2b007`  
		Last Modified: Thu, 08 Jun 2017 20:29:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99afaf0214824776ba0b6334c2293bcbe7b6f9063c5a10e90a6427c190ab175`  
		Last Modified: Thu, 08 Jun 2017 20:29:43 GMT  
		Size: 27.6 MB (27610104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9ba686a7f090f1f008b77675d26fa542be51b563803f103abba35ad46836cf`  
		Last Modified: Thu, 08 Jun 2017 20:29:39 GMT  
		Size: 3.1 KB (3099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f28a9332842d3ced28881ad7719026f5fa3e77591035b6b8db2be9a90993b2e`  
		Last Modified: Thu, 08 Jun 2017 20:29:39 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c904ad62140ffdf87e785b50fe6cbef092366de39d27194f06829eca659348e6`  
		Last Modified: Thu, 08 Jun 2017 20:29:38 GMT  
		Size: 5.7 MB (5696812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593857ac4cd8009c35bbd445a426299cc92dd99ebd12f2e782fe1aaefbbe7e0`  
		Last Modified: Thu, 08 Jun 2017 20:29:38 GMT  
		Size: 2.2 KB (2232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33cc68b498cc8cd1ef552ce1e090d086a50c898bd4008ab924bbfd74ff882db2`  
		Last Modified: Thu, 08 Jun 2017 20:29:37 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ee17d31177170908a7c9947fa789b5b7d3686a47e7582d2970da49183ae565`  
		Last Modified: Thu, 08 Jun 2017 20:29:37 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15bd871e004577cdda6c391e91e959f1a1e75bff38df8d1653911dae59972dc0`  
		Last Modified: Thu, 08 Jun 2017 20:29:37 GMT  
		Size: 4.1 KB (4065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9882a51b391a9f56934cf74f113164fe3b0c63bd80826d541a8ba77b22d6f4`  
		Last Modified: Thu, 08 Jun 2017 20:29:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3`

```console
$ docker pull rabbitmq@sha256:24eb64ff04174afada4861fe9c2c7a028bd5fc7d83a555592a9e296352002626
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.2 MB (87194991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512d5b54863ccde50ef035c9554961e25353e756203a436eb8f8a92bd66d350a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 20:26:27 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 08 Jun 2017 20:26:27 GMT
ENV GOSU_VERSION=1.7
# Thu, 08 Jun 2017 20:26:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 08 Jun 2017 20:26:48 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 08 Jun 2017 20:26:50 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Thu, 08 Jun 2017 20:27:20 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 20:27:21 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 08 Jun 2017 20:27:24 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 08 Jun 2017 20:27:25 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Thu, 08 Jun 2017 20:27:26 GMT
ENV RABBITMQ_VERSION=3.6.10
# Thu, 08 Jun 2017 20:27:27 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.10-1
# Thu, 08 Jun 2017 20:27:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 20:27:38 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 20:27:39 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 08 Jun 2017 20:27:40 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 08 Jun 2017 20:27:41 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 08 Jun 2017 20:27:43 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 08 Jun 2017 20:27:45 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Thu, 08 Jun 2017 20:27:46 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Thu, 08 Jun 2017 20:27:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 08 Jun 2017 20:27:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 20:27:50 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 08 Jun 2017 20:27:51 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2209eb8a2c64e41fb630c7a26ace023968f446b2da6786890ef038a547dca9`  
		Last Modified: Thu, 08 Jun 2017 20:29:42 GMT  
		Size: 4.4 KB (4372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4fc6d72325ba733f93aab61bbe21fde15e802fce6b9ae717643f03e0ec2725`  
		Last Modified: Thu, 08 Jun 2017 20:29:42 GMT  
		Size: 1.3 MB (1302705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef042a4c5822ac0920f5c45a8f6aa67ba5af03bb5cffb1c8e602a145189c7cfa`  
		Last Modified: Thu, 08 Jun 2017 20:29:40 GMT  
		Size: 2.5 KB (2502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e69a1354d946ec97f545354e6753ff30f2553349d72ff3af36698f55ba2b007`  
		Last Modified: Thu, 08 Jun 2017 20:29:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99afaf0214824776ba0b6334c2293bcbe7b6f9063c5a10e90a6427c190ab175`  
		Last Modified: Thu, 08 Jun 2017 20:29:43 GMT  
		Size: 27.6 MB (27610104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9ba686a7f090f1f008b77675d26fa542be51b563803f103abba35ad46836cf`  
		Last Modified: Thu, 08 Jun 2017 20:29:39 GMT  
		Size: 3.1 KB (3099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f28a9332842d3ced28881ad7719026f5fa3e77591035b6b8db2be9a90993b2e`  
		Last Modified: Thu, 08 Jun 2017 20:29:39 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c904ad62140ffdf87e785b50fe6cbef092366de39d27194f06829eca659348e6`  
		Last Modified: Thu, 08 Jun 2017 20:29:38 GMT  
		Size: 5.7 MB (5696812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593857ac4cd8009c35bbd445a426299cc92dd99ebd12f2e782fe1aaefbbe7e0`  
		Last Modified: Thu, 08 Jun 2017 20:29:38 GMT  
		Size: 2.2 KB (2232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33cc68b498cc8cd1ef552ce1e090d086a50c898bd4008ab924bbfd74ff882db2`  
		Last Modified: Thu, 08 Jun 2017 20:29:37 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ee17d31177170908a7c9947fa789b5b7d3686a47e7582d2970da49183ae565`  
		Last Modified: Thu, 08 Jun 2017 20:29:37 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15bd871e004577cdda6c391e91e959f1a1e75bff38df8d1653911dae59972dc0`  
		Last Modified: Thu, 08 Jun 2017 20:29:37 GMT  
		Size: 4.1 KB (4065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9882a51b391a9f56934cf74f113164fe3b0c63bd80826d541a8ba77b22d6f4`  
		Last Modified: Thu, 08 Jun 2017 20:29:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:latest`

```console
$ docker pull rabbitmq@sha256:24eb64ff04174afada4861fe9c2c7a028bd5fc7d83a555592a9e296352002626
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.2 MB (87194991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512d5b54863ccde50ef035c9554961e25353e756203a436eb8f8a92bd66d350a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 20:26:27 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 08 Jun 2017 20:26:27 GMT
ENV GOSU_VERSION=1.7
# Thu, 08 Jun 2017 20:26:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 08 Jun 2017 20:26:48 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 08 Jun 2017 20:26:50 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Thu, 08 Jun 2017 20:27:20 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 20:27:21 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 08 Jun 2017 20:27:24 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 08 Jun 2017 20:27:25 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Thu, 08 Jun 2017 20:27:26 GMT
ENV RABBITMQ_VERSION=3.6.10
# Thu, 08 Jun 2017 20:27:27 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.10-1
# Thu, 08 Jun 2017 20:27:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 20:27:38 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 20:27:39 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 08 Jun 2017 20:27:40 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 08 Jun 2017 20:27:41 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 08 Jun 2017 20:27:43 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 08 Jun 2017 20:27:45 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Thu, 08 Jun 2017 20:27:46 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Thu, 08 Jun 2017 20:27:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 08 Jun 2017 20:27:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 20:27:50 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 08 Jun 2017 20:27:51 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2209eb8a2c64e41fb630c7a26ace023968f446b2da6786890ef038a547dca9`  
		Last Modified: Thu, 08 Jun 2017 20:29:42 GMT  
		Size: 4.4 KB (4372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4fc6d72325ba733f93aab61bbe21fde15e802fce6b9ae717643f03e0ec2725`  
		Last Modified: Thu, 08 Jun 2017 20:29:42 GMT  
		Size: 1.3 MB (1302705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef042a4c5822ac0920f5c45a8f6aa67ba5af03bb5cffb1c8e602a145189c7cfa`  
		Last Modified: Thu, 08 Jun 2017 20:29:40 GMT  
		Size: 2.5 KB (2502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e69a1354d946ec97f545354e6753ff30f2553349d72ff3af36698f55ba2b007`  
		Last Modified: Thu, 08 Jun 2017 20:29:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99afaf0214824776ba0b6334c2293bcbe7b6f9063c5a10e90a6427c190ab175`  
		Last Modified: Thu, 08 Jun 2017 20:29:43 GMT  
		Size: 27.6 MB (27610104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9ba686a7f090f1f008b77675d26fa542be51b563803f103abba35ad46836cf`  
		Last Modified: Thu, 08 Jun 2017 20:29:39 GMT  
		Size: 3.1 KB (3099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f28a9332842d3ced28881ad7719026f5fa3e77591035b6b8db2be9a90993b2e`  
		Last Modified: Thu, 08 Jun 2017 20:29:39 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c904ad62140ffdf87e785b50fe6cbef092366de39d27194f06829eca659348e6`  
		Last Modified: Thu, 08 Jun 2017 20:29:38 GMT  
		Size: 5.7 MB (5696812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593857ac4cd8009c35bbd445a426299cc92dd99ebd12f2e782fe1aaefbbe7e0`  
		Last Modified: Thu, 08 Jun 2017 20:29:38 GMT  
		Size: 2.2 KB (2232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33cc68b498cc8cd1ef552ce1e090d086a50c898bd4008ab924bbfd74ff882db2`  
		Last Modified: Thu, 08 Jun 2017 20:29:37 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ee17d31177170908a7c9947fa789b5b7d3686a47e7582d2970da49183ae565`  
		Last Modified: Thu, 08 Jun 2017 20:29:37 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15bd871e004577cdda6c391e91e959f1a1e75bff38df8d1653911dae59972dc0`  
		Last Modified: Thu, 08 Jun 2017 20:29:37 GMT  
		Size: 4.1 KB (4065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9882a51b391a9f56934cf74f113164fe3b0c63bd80826d541a8ba77b22d6f4`  
		Last Modified: Thu, 08 Jun 2017 20:29:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.10-management`

```console
$ docker pull rabbitmq@sha256:d3be6b4a2d7f003a04bd081a31d997f2f1c5be7a9a540c83a756cf471c522fa7
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.10-management` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.2 MB (87195177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25a76721e8047a1709f20d90546c0b1d8c25db67fdd08781ecc9c8f9664021a0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 20:26:27 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 08 Jun 2017 20:26:27 GMT
ENV GOSU_VERSION=1.7
# Thu, 08 Jun 2017 20:26:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 08 Jun 2017 20:26:48 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 08 Jun 2017 20:26:50 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Thu, 08 Jun 2017 20:27:20 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 20:27:21 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 08 Jun 2017 20:27:24 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 08 Jun 2017 20:27:25 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Thu, 08 Jun 2017 20:27:26 GMT
ENV RABBITMQ_VERSION=3.6.10
# Thu, 08 Jun 2017 20:27:27 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.10-1
# Thu, 08 Jun 2017 20:27:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 20:27:38 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 20:27:39 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 08 Jun 2017 20:27:40 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 08 Jun 2017 20:27:41 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 08 Jun 2017 20:27:43 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 08 Jun 2017 20:27:45 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Thu, 08 Jun 2017 20:27:46 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Thu, 08 Jun 2017 20:27:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 08 Jun 2017 20:27:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 20:27:50 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 08 Jun 2017 20:27:51 GMT
CMD ["rabbitmq-server"]
# Thu, 08 Jun 2017 20:28:17 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 08 Jun 2017 20:28:18 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2209eb8a2c64e41fb630c7a26ace023968f446b2da6786890ef038a547dca9`  
		Last Modified: Thu, 08 Jun 2017 20:29:42 GMT  
		Size: 4.4 KB (4372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4fc6d72325ba733f93aab61bbe21fde15e802fce6b9ae717643f03e0ec2725`  
		Last Modified: Thu, 08 Jun 2017 20:29:42 GMT  
		Size: 1.3 MB (1302705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef042a4c5822ac0920f5c45a8f6aa67ba5af03bb5cffb1c8e602a145189c7cfa`  
		Last Modified: Thu, 08 Jun 2017 20:29:40 GMT  
		Size: 2.5 KB (2502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e69a1354d946ec97f545354e6753ff30f2553349d72ff3af36698f55ba2b007`  
		Last Modified: Thu, 08 Jun 2017 20:29:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99afaf0214824776ba0b6334c2293bcbe7b6f9063c5a10e90a6427c190ab175`  
		Last Modified: Thu, 08 Jun 2017 20:29:43 GMT  
		Size: 27.6 MB (27610104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9ba686a7f090f1f008b77675d26fa542be51b563803f103abba35ad46836cf`  
		Last Modified: Thu, 08 Jun 2017 20:29:39 GMT  
		Size: 3.1 KB (3099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f28a9332842d3ced28881ad7719026f5fa3e77591035b6b8db2be9a90993b2e`  
		Last Modified: Thu, 08 Jun 2017 20:29:39 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c904ad62140ffdf87e785b50fe6cbef092366de39d27194f06829eca659348e6`  
		Last Modified: Thu, 08 Jun 2017 20:29:38 GMT  
		Size: 5.7 MB (5696812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593857ac4cd8009c35bbd445a426299cc92dd99ebd12f2e782fe1aaefbbe7e0`  
		Last Modified: Thu, 08 Jun 2017 20:29:38 GMT  
		Size: 2.2 KB (2232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33cc68b498cc8cd1ef552ce1e090d086a50c898bd4008ab924bbfd74ff882db2`  
		Last Modified: Thu, 08 Jun 2017 20:29:37 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ee17d31177170908a7c9947fa789b5b7d3686a47e7582d2970da49183ae565`  
		Last Modified: Thu, 08 Jun 2017 20:29:37 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15bd871e004577cdda6c391e91e959f1a1e75bff38df8d1653911dae59972dc0`  
		Last Modified: Thu, 08 Jun 2017 20:29:37 GMT  
		Size: 4.1 KB (4065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9882a51b391a9f56934cf74f113164fe3b0c63bd80826d541a8ba77b22d6f4`  
		Last Modified: Thu, 08 Jun 2017 20:29:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096a9b1c850b0a560fd5ab222969a240ef327fb6b7665e062db22248d80b590e`  
		Last Modified: Thu, 08 Jun 2017 20:31:24 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management`

```console
$ docker pull rabbitmq@sha256:d3be6b4a2d7f003a04bd081a31d997f2f1c5be7a9a540c83a756cf471c522fa7
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-management` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.2 MB (87195177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25a76721e8047a1709f20d90546c0b1d8c25db67fdd08781ecc9c8f9664021a0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 20:26:27 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 08 Jun 2017 20:26:27 GMT
ENV GOSU_VERSION=1.7
# Thu, 08 Jun 2017 20:26:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 08 Jun 2017 20:26:48 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 08 Jun 2017 20:26:50 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Thu, 08 Jun 2017 20:27:20 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 20:27:21 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 08 Jun 2017 20:27:24 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 08 Jun 2017 20:27:25 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Thu, 08 Jun 2017 20:27:26 GMT
ENV RABBITMQ_VERSION=3.6.10
# Thu, 08 Jun 2017 20:27:27 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.10-1
# Thu, 08 Jun 2017 20:27:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 20:27:38 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 20:27:39 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 08 Jun 2017 20:27:40 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 08 Jun 2017 20:27:41 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 08 Jun 2017 20:27:43 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 08 Jun 2017 20:27:45 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Thu, 08 Jun 2017 20:27:46 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Thu, 08 Jun 2017 20:27:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 08 Jun 2017 20:27:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 20:27:50 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 08 Jun 2017 20:27:51 GMT
CMD ["rabbitmq-server"]
# Thu, 08 Jun 2017 20:28:17 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 08 Jun 2017 20:28:18 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2209eb8a2c64e41fb630c7a26ace023968f446b2da6786890ef038a547dca9`  
		Last Modified: Thu, 08 Jun 2017 20:29:42 GMT  
		Size: 4.4 KB (4372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4fc6d72325ba733f93aab61bbe21fde15e802fce6b9ae717643f03e0ec2725`  
		Last Modified: Thu, 08 Jun 2017 20:29:42 GMT  
		Size: 1.3 MB (1302705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef042a4c5822ac0920f5c45a8f6aa67ba5af03bb5cffb1c8e602a145189c7cfa`  
		Last Modified: Thu, 08 Jun 2017 20:29:40 GMT  
		Size: 2.5 KB (2502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e69a1354d946ec97f545354e6753ff30f2553349d72ff3af36698f55ba2b007`  
		Last Modified: Thu, 08 Jun 2017 20:29:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99afaf0214824776ba0b6334c2293bcbe7b6f9063c5a10e90a6427c190ab175`  
		Last Modified: Thu, 08 Jun 2017 20:29:43 GMT  
		Size: 27.6 MB (27610104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9ba686a7f090f1f008b77675d26fa542be51b563803f103abba35ad46836cf`  
		Last Modified: Thu, 08 Jun 2017 20:29:39 GMT  
		Size: 3.1 KB (3099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f28a9332842d3ced28881ad7719026f5fa3e77591035b6b8db2be9a90993b2e`  
		Last Modified: Thu, 08 Jun 2017 20:29:39 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c904ad62140ffdf87e785b50fe6cbef092366de39d27194f06829eca659348e6`  
		Last Modified: Thu, 08 Jun 2017 20:29:38 GMT  
		Size: 5.7 MB (5696812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593857ac4cd8009c35bbd445a426299cc92dd99ebd12f2e782fe1aaefbbe7e0`  
		Last Modified: Thu, 08 Jun 2017 20:29:38 GMT  
		Size: 2.2 KB (2232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33cc68b498cc8cd1ef552ce1e090d086a50c898bd4008ab924bbfd74ff882db2`  
		Last Modified: Thu, 08 Jun 2017 20:29:37 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ee17d31177170908a7c9947fa789b5b7d3686a47e7582d2970da49183ae565`  
		Last Modified: Thu, 08 Jun 2017 20:29:37 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15bd871e004577cdda6c391e91e959f1a1e75bff38df8d1653911dae59972dc0`  
		Last Modified: Thu, 08 Jun 2017 20:29:37 GMT  
		Size: 4.1 KB (4065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9882a51b391a9f56934cf74f113164fe3b0c63bd80826d541a8ba77b22d6f4`  
		Last Modified: Thu, 08 Jun 2017 20:29:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096a9b1c850b0a560fd5ab222969a240ef327fb6b7665e062db22248d80b590e`  
		Last Modified: Thu, 08 Jun 2017 20:31:24 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management`

```console
$ docker pull rabbitmq@sha256:d3be6b4a2d7f003a04bd081a31d997f2f1c5be7a9a540c83a756cf471c522fa7
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-management` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.2 MB (87195177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25a76721e8047a1709f20d90546c0b1d8c25db67fdd08781ecc9c8f9664021a0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 20:26:27 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 08 Jun 2017 20:26:27 GMT
ENV GOSU_VERSION=1.7
# Thu, 08 Jun 2017 20:26:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 08 Jun 2017 20:26:48 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 08 Jun 2017 20:26:50 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Thu, 08 Jun 2017 20:27:20 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 20:27:21 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 08 Jun 2017 20:27:24 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 08 Jun 2017 20:27:25 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Thu, 08 Jun 2017 20:27:26 GMT
ENV RABBITMQ_VERSION=3.6.10
# Thu, 08 Jun 2017 20:27:27 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.10-1
# Thu, 08 Jun 2017 20:27:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 20:27:38 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 20:27:39 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 08 Jun 2017 20:27:40 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 08 Jun 2017 20:27:41 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 08 Jun 2017 20:27:43 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 08 Jun 2017 20:27:45 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Thu, 08 Jun 2017 20:27:46 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Thu, 08 Jun 2017 20:27:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 08 Jun 2017 20:27:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 20:27:50 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 08 Jun 2017 20:27:51 GMT
CMD ["rabbitmq-server"]
# Thu, 08 Jun 2017 20:28:17 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 08 Jun 2017 20:28:18 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2209eb8a2c64e41fb630c7a26ace023968f446b2da6786890ef038a547dca9`  
		Last Modified: Thu, 08 Jun 2017 20:29:42 GMT  
		Size: 4.4 KB (4372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4fc6d72325ba733f93aab61bbe21fde15e802fce6b9ae717643f03e0ec2725`  
		Last Modified: Thu, 08 Jun 2017 20:29:42 GMT  
		Size: 1.3 MB (1302705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef042a4c5822ac0920f5c45a8f6aa67ba5af03bb5cffb1c8e602a145189c7cfa`  
		Last Modified: Thu, 08 Jun 2017 20:29:40 GMT  
		Size: 2.5 KB (2502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e69a1354d946ec97f545354e6753ff30f2553349d72ff3af36698f55ba2b007`  
		Last Modified: Thu, 08 Jun 2017 20:29:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99afaf0214824776ba0b6334c2293bcbe7b6f9063c5a10e90a6427c190ab175`  
		Last Modified: Thu, 08 Jun 2017 20:29:43 GMT  
		Size: 27.6 MB (27610104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9ba686a7f090f1f008b77675d26fa542be51b563803f103abba35ad46836cf`  
		Last Modified: Thu, 08 Jun 2017 20:29:39 GMT  
		Size: 3.1 KB (3099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f28a9332842d3ced28881ad7719026f5fa3e77591035b6b8db2be9a90993b2e`  
		Last Modified: Thu, 08 Jun 2017 20:29:39 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c904ad62140ffdf87e785b50fe6cbef092366de39d27194f06829eca659348e6`  
		Last Modified: Thu, 08 Jun 2017 20:29:38 GMT  
		Size: 5.7 MB (5696812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593857ac4cd8009c35bbd445a426299cc92dd99ebd12f2e782fe1aaefbbe7e0`  
		Last Modified: Thu, 08 Jun 2017 20:29:38 GMT  
		Size: 2.2 KB (2232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33cc68b498cc8cd1ef552ce1e090d086a50c898bd4008ab924bbfd74ff882db2`  
		Last Modified: Thu, 08 Jun 2017 20:29:37 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ee17d31177170908a7c9947fa789b5b7d3686a47e7582d2970da49183ae565`  
		Last Modified: Thu, 08 Jun 2017 20:29:37 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15bd871e004577cdda6c391e91e959f1a1e75bff38df8d1653911dae59972dc0`  
		Last Modified: Thu, 08 Jun 2017 20:29:37 GMT  
		Size: 4.1 KB (4065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9882a51b391a9f56934cf74f113164fe3b0c63bd80826d541a8ba77b22d6f4`  
		Last Modified: Thu, 08 Jun 2017 20:29:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096a9b1c850b0a560fd5ab222969a240ef327fb6b7665e062db22248d80b590e`  
		Last Modified: Thu, 08 Jun 2017 20:31:24 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management`

```console
$ docker pull rabbitmq@sha256:d3be6b4a2d7f003a04bd081a31d997f2f1c5be7a9a540c83a756cf471c522fa7
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:management` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.2 MB (87195177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25a76721e8047a1709f20d90546c0b1d8c25db67fdd08781ecc9c8f9664021a0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 20:26:27 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 08 Jun 2017 20:26:27 GMT
ENV GOSU_VERSION=1.7
# Thu, 08 Jun 2017 20:26:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 08 Jun 2017 20:26:48 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 08 Jun 2017 20:26:50 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Thu, 08 Jun 2017 20:27:20 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 20:27:21 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 08 Jun 2017 20:27:24 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 08 Jun 2017 20:27:25 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Thu, 08 Jun 2017 20:27:26 GMT
ENV RABBITMQ_VERSION=3.6.10
# Thu, 08 Jun 2017 20:27:27 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.10-1
# Thu, 08 Jun 2017 20:27:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 20:27:38 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 20:27:39 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 08 Jun 2017 20:27:40 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 08 Jun 2017 20:27:41 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 08 Jun 2017 20:27:43 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 08 Jun 2017 20:27:45 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Thu, 08 Jun 2017 20:27:46 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Thu, 08 Jun 2017 20:27:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 08 Jun 2017 20:27:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 20:27:50 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 08 Jun 2017 20:27:51 GMT
CMD ["rabbitmq-server"]
# Thu, 08 Jun 2017 20:28:17 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 08 Jun 2017 20:28:18 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2209eb8a2c64e41fb630c7a26ace023968f446b2da6786890ef038a547dca9`  
		Last Modified: Thu, 08 Jun 2017 20:29:42 GMT  
		Size: 4.4 KB (4372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4fc6d72325ba733f93aab61bbe21fde15e802fce6b9ae717643f03e0ec2725`  
		Last Modified: Thu, 08 Jun 2017 20:29:42 GMT  
		Size: 1.3 MB (1302705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef042a4c5822ac0920f5c45a8f6aa67ba5af03bb5cffb1c8e602a145189c7cfa`  
		Last Modified: Thu, 08 Jun 2017 20:29:40 GMT  
		Size: 2.5 KB (2502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e69a1354d946ec97f545354e6753ff30f2553349d72ff3af36698f55ba2b007`  
		Last Modified: Thu, 08 Jun 2017 20:29:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99afaf0214824776ba0b6334c2293bcbe7b6f9063c5a10e90a6427c190ab175`  
		Last Modified: Thu, 08 Jun 2017 20:29:43 GMT  
		Size: 27.6 MB (27610104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9ba686a7f090f1f008b77675d26fa542be51b563803f103abba35ad46836cf`  
		Last Modified: Thu, 08 Jun 2017 20:29:39 GMT  
		Size: 3.1 KB (3099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f28a9332842d3ced28881ad7719026f5fa3e77591035b6b8db2be9a90993b2e`  
		Last Modified: Thu, 08 Jun 2017 20:29:39 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c904ad62140ffdf87e785b50fe6cbef092366de39d27194f06829eca659348e6`  
		Last Modified: Thu, 08 Jun 2017 20:29:38 GMT  
		Size: 5.7 MB (5696812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593857ac4cd8009c35bbd445a426299cc92dd99ebd12f2e782fe1aaefbbe7e0`  
		Last Modified: Thu, 08 Jun 2017 20:29:38 GMT  
		Size: 2.2 KB (2232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33cc68b498cc8cd1ef552ce1e090d086a50c898bd4008ab924bbfd74ff882db2`  
		Last Modified: Thu, 08 Jun 2017 20:29:37 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ee17d31177170908a7c9947fa789b5b7d3686a47e7582d2970da49183ae565`  
		Last Modified: Thu, 08 Jun 2017 20:29:37 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15bd871e004577cdda6c391e91e959f1a1e75bff38df8d1653911dae59972dc0`  
		Last Modified: Thu, 08 Jun 2017 20:29:37 GMT  
		Size: 4.1 KB (4065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9882a51b391a9f56934cf74f113164fe3b0c63bd80826d541a8ba77b22d6f4`  
		Last Modified: Thu, 08 Jun 2017 20:29:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096a9b1c850b0a560fd5ab222969a240ef327fb6b7665e062db22248d80b590e`  
		Last Modified: Thu, 08 Jun 2017 20:31:24 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.10-alpine`

```console
$ docker pull rabbitmq@sha256:2156ae3a1e02a02c463e50952e3c6fda38384d412230d3744b8c5059b3939a78
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.10-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.0 MB (23034466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdbab8d40d012aa2fd8698313887da66a22254106973e719736a72ade86c0cc5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 17:42:37 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 30 May 2017 17:43:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 30 May 2017 17:44:08 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 30 May 2017 17:45:04 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 30 May 2017 17:45:46 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 30 May 2017 17:49:22 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 May 2017 17:49:43 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 30 May 2017 17:50:25 GMT
ENV RABBITMQ_VERSION=3.6.10
# Tue, 30 May 2017 17:51:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 30 May 2017 17:51:29 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 30 May 2017 17:52:12 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 30 May 2017 17:52:53 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 30 May 2017 17:53:14 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 30 May 2017 17:53:56 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 08 Jun 2017 20:28:41 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Thu, 08 Jun 2017 20:28:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 20:28:43 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 08 Jun 2017 20:28:44 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4d31626b4cc745fecb44d4f4d9a435c813c2c849dbcc9a49b2d73e9c23390d`  
		Last Modified: Tue, 30 May 2017 18:05:31 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0a1c444efd570c63e3c0c5b587c3b3dfbca3b87e8ac33431710097d1d953bb`  
		Last Modified: Tue, 30 May 2017 18:05:31 GMT  
		Size: 7.8 KB (7765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7f26d2e4ea099641ab2db1f9cfd0351bf750c1d79a1e861cf1d194f2ec36ed`  
		Last Modified: Tue, 30 May 2017 18:05:33 GMT  
		Size: 16.1 MB (16079815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0afcdcde06c8cd2c5a071e6a2e7bf0e992c0d811562dbd4e82bfa7d20dcab3c`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 5.0 MB (4973215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eded4c951133b1f8158c790221e9fb1490ac62f68951956c55f773718d6193a`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a28c54e2118bd2a706249cf67ef231a617e2b950fc03c0756ea98f00879faa6`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c33ede5ed226518f7d19e45e5520b867820f2daf7a70a373d4f9813d0d33bb`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be01c51e9ebf647f0491819a09217c8e6626f8954e72cba79dec832e0d8decb3`  
		Last Modified: Thu, 08 Jun 2017 20:33:07 GMT  
		Size: 4.1 KB (4054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-alpine`

```console
$ docker pull rabbitmq@sha256:2156ae3a1e02a02c463e50952e3c6fda38384d412230d3744b8c5059b3939a78
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.0 MB (23034466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdbab8d40d012aa2fd8698313887da66a22254106973e719736a72ade86c0cc5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 17:42:37 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 30 May 2017 17:43:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 30 May 2017 17:44:08 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 30 May 2017 17:45:04 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 30 May 2017 17:45:46 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 30 May 2017 17:49:22 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 May 2017 17:49:43 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 30 May 2017 17:50:25 GMT
ENV RABBITMQ_VERSION=3.6.10
# Tue, 30 May 2017 17:51:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 30 May 2017 17:51:29 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 30 May 2017 17:52:12 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 30 May 2017 17:52:53 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 30 May 2017 17:53:14 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 30 May 2017 17:53:56 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 08 Jun 2017 20:28:41 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Thu, 08 Jun 2017 20:28:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 20:28:43 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 08 Jun 2017 20:28:44 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4d31626b4cc745fecb44d4f4d9a435c813c2c849dbcc9a49b2d73e9c23390d`  
		Last Modified: Tue, 30 May 2017 18:05:31 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0a1c444efd570c63e3c0c5b587c3b3dfbca3b87e8ac33431710097d1d953bb`  
		Last Modified: Tue, 30 May 2017 18:05:31 GMT  
		Size: 7.8 KB (7765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7f26d2e4ea099641ab2db1f9cfd0351bf750c1d79a1e861cf1d194f2ec36ed`  
		Last Modified: Tue, 30 May 2017 18:05:33 GMT  
		Size: 16.1 MB (16079815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0afcdcde06c8cd2c5a071e6a2e7bf0e992c0d811562dbd4e82bfa7d20dcab3c`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 5.0 MB (4973215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eded4c951133b1f8158c790221e9fb1490ac62f68951956c55f773718d6193a`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a28c54e2118bd2a706249cf67ef231a617e2b950fc03c0756ea98f00879faa6`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c33ede5ed226518f7d19e45e5520b867820f2daf7a70a373d4f9813d0d33bb`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be01c51e9ebf647f0491819a09217c8e6626f8954e72cba79dec832e0d8decb3`  
		Last Modified: Thu, 08 Jun 2017 20:33:07 GMT  
		Size: 4.1 KB (4054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-alpine`

```console
$ docker pull rabbitmq@sha256:2156ae3a1e02a02c463e50952e3c6fda38384d412230d3744b8c5059b3939a78
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.0 MB (23034466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdbab8d40d012aa2fd8698313887da66a22254106973e719736a72ade86c0cc5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 17:42:37 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 30 May 2017 17:43:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 30 May 2017 17:44:08 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 30 May 2017 17:45:04 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 30 May 2017 17:45:46 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 30 May 2017 17:49:22 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 May 2017 17:49:43 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 30 May 2017 17:50:25 GMT
ENV RABBITMQ_VERSION=3.6.10
# Tue, 30 May 2017 17:51:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 30 May 2017 17:51:29 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 30 May 2017 17:52:12 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 30 May 2017 17:52:53 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 30 May 2017 17:53:14 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 30 May 2017 17:53:56 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 08 Jun 2017 20:28:41 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Thu, 08 Jun 2017 20:28:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 20:28:43 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 08 Jun 2017 20:28:44 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4d31626b4cc745fecb44d4f4d9a435c813c2c849dbcc9a49b2d73e9c23390d`  
		Last Modified: Tue, 30 May 2017 18:05:31 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0a1c444efd570c63e3c0c5b587c3b3dfbca3b87e8ac33431710097d1d953bb`  
		Last Modified: Tue, 30 May 2017 18:05:31 GMT  
		Size: 7.8 KB (7765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7f26d2e4ea099641ab2db1f9cfd0351bf750c1d79a1e861cf1d194f2ec36ed`  
		Last Modified: Tue, 30 May 2017 18:05:33 GMT  
		Size: 16.1 MB (16079815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0afcdcde06c8cd2c5a071e6a2e7bf0e992c0d811562dbd4e82bfa7d20dcab3c`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 5.0 MB (4973215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eded4c951133b1f8158c790221e9fb1490ac62f68951956c55f773718d6193a`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a28c54e2118bd2a706249cf67ef231a617e2b950fc03c0756ea98f00879faa6`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c33ede5ed226518f7d19e45e5520b867820f2daf7a70a373d4f9813d0d33bb`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be01c51e9ebf647f0491819a09217c8e6626f8954e72cba79dec832e0d8decb3`  
		Last Modified: Thu, 08 Jun 2017 20:33:07 GMT  
		Size: 4.1 KB (4054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:alpine`

```console
$ docker pull rabbitmq@sha256:2156ae3a1e02a02c463e50952e3c6fda38384d412230d3744b8c5059b3939a78
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.0 MB (23034466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdbab8d40d012aa2fd8698313887da66a22254106973e719736a72ade86c0cc5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 17:42:37 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 30 May 2017 17:43:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 30 May 2017 17:44:08 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 30 May 2017 17:45:04 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 30 May 2017 17:45:46 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 30 May 2017 17:49:22 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 May 2017 17:49:43 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 30 May 2017 17:50:25 GMT
ENV RABBITMQ_VERSION=3.6.10
# Tue, 30 May 2017 17:51:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 30 May 2017 17:51:29 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 30 May 2017 17:52:12 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 30 May 2017 17:52:53 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 30 May 2017 17:53:14 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 30 May 2017 17:53:56 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 08 Jun 2017 20:28:41 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Thu, 08 Jun 2017 20:28:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 20:28:43 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 08 Jun 2017 20:28:44 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4d31626b4cc745fecb44d4f4d9a435c813c2c849dbcc9a49b2d73e9c23390d`  
		Last Modified: Tue, 30 May 2017 18:05:31 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0a1c444efd570c63e3c0c5b587c3b3dfbca3b87e8ac33431710097d1d953bb`  
		Last Modified: Tue, 30 May 2017 18:05:31 GMT  
		Size: 7.8 KB (7765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7f26d2e4ea099641ab2db1f9cfd0351bf750c1d79a1e861cf1d194f2ec36ed`  
		Last Modified: Tue, 30 May 2017 18:05:33 GMT  
		Size: 16.1 MB (16079815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0afcdcde06c8cd2c5a071e6a2e7bf0e992c0d811562dbd4e82bfa7d20dcab3c`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 5.0 MB (4973215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eded4c951133b1f8158c790221e9fb1490ac62f68951956c55f773718d6193a`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a28c54e2118bd2a706249cf67ef231a617e2b950fc03c0756ea98f00879faa6`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c33ede5ed226518f7d19e45e5520b867820f2daf7a70a373d4f9813d0d33bb`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be01c51e9ebf647f0491819a09217c8e6626f8954e72cba79dec832e0d8decb3`  
		Last Modified: Thu, 08 Jun 2017 20:33:07 GMT  
		Size: 4.1 KB (4054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.10-management-alpine`

```console
$ docker pull rabbitmq@sha256:dec88b02cd31cce903d86532b694165df4841d3b70aadd1a3f1ee960a90e1147
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.10-management-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.0 MB (23034655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a64a1404786a5386d66648233325243f094ff459f1496719fcc18f3e124a781`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 17:42:37 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 30 May 2017 17:43:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 30 May 2017 17:44:08 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 30 May 2017 17:45:04 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 30 May 2017 17:45:46 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 30 May 2017 17:49:22 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 May 2017 17:49:43 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 30 May 2017 17:50:25 GMT
ENV RABBITMQ_VERSION=3.6.10
# Tue, 30 May 2017 17:51:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 30 May 2017 17:51:29 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 30 May 2017 17:52:12 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 30 May 2017 17:52:53 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 30 May 2017 17:53:14 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 30 May 2017 17:53:56 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 08 Jun 2017 20:28:41 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Thu, 08 Jun 2017 20:28:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 20:28:43 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 08 Jun 2017 20:28:44 GMT
CMD ["rabbitmq-server"]
# Thu, 08 Jun 2017 20:29:09 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 08 Jun 2017 20:29:10 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4d31626b4cc745fecb44d4f4d9a435c813c2c849dbcc9a49b2d73e9c23390d`  
		Last Modified: Tue, 30 May 2017 18:05:31 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0a1c444efd570c63e3c0c5b587c3b3dfbca3b87e8ac33431710097d1d953bb`  
		Last Modified: Tue, 30 May 2017 18:05:31 GMT  
		Size: 7.8 KB (7765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7f26d2e4ea099641ab2db1f9cfd0351bf750c1d79a1e861cf1d194f2ec36ed`  
		Last Modified: Tue, 30 May 2017 18:05:33 GMT  
		Size: 16.1 MB (16079815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0afcdcde06c8cd2c5a071e6a2e7bf0e992c0d811562dbd4e82bfa7d20dcab3c`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 5.0 MB (4973215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eded4c951133b1f8158c790221e9fb1490ac62f68951956c55f773718d6193a`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a28c54e2118bd2a706249cf67ef231a617e2b950fc03c0756ea98f00879faa6`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c33ede5ed226518f7d19e45e5520b867820f2daf7a70a373d4f9813d0d33bb`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be01c51e9ebf647f0491819a09217c8e6626f8954e72cba79dec832e0d8decb3`  
		Last Modified: Thu, 08 Jun 2017 20:33:07 GMT  
		Size: 4.1 KB (4054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c052124a6bda2b9a73a0a24a994bb6fcace8594d862dd32c9e83040770a992a`  
		Last Modified: Thu, 08 Jun 2017 20:34:46 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management-alpine`

```console
$ docker pull rabbitmq@sha256:dec88b02cd31cce903d86532b694165df4841d3b70aadd1a3f1ee960a90e1147
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-management-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.0 MB (23034655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a64a1404786a5386d66648233325243f094ff459f1496719fcc18f3e124a781`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 17:42:37 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 30 May 2017 17:43:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 30 May 2017 17:44:08 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 30 May 2017 17:45:04 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 30 May 2017 17:45:46 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 30 May 2017 17:49:22 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 May 2017 17:49:43 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 30 May 2017 17:50:25 GMT
ENV RABBITMQ_VERSION=3.6.10
# Tue, 30 May 2017 17:51:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 30 May 2017 17:51:29 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 30 May 2017 17:52:12 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 30 May 2017 17:52:53 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 30 May 2017 17:53:14 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 30 May 2017 17:53:56 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 08 Jun 2017 20:28:41 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Thu, 08 Jun 2017 20:28:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 20:28:43 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 08 Jun 2017 20:28:44 GMT
CMD ["rabbitmq-server"]
# Thu, 08 Jun 2017 20:29:09 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 08 Jun 2017 20:29:10 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4d31626b4cc745fecb44d4f4d9a435c813c2c849dbcc9a49b2d73e9c23390d`  
		Last Modified: Tue, 30 May 2017 18:05:31 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0a1c444efd570c63e3c0c5b587c3b3dfbca3b87e8ac33431710097d1d953bb`  
		Last Modified: Tue, 30 May 2017 18:05:31 GMT  
		Size: 7.8 KB (7765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7f26d2e4ea099641ab2db1f9cfd0351bf750c1d79a1e861cf1d194f2ec36ed`  
		Last Modified: Tue, 30 May 2017 18:05:33 GMT  
		Size: 16.1 MB (16079815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0afcdcde06c8cd2c5a071e6a2e7bf0e992c0d811562dbd4e82bfa7d20dcab3c`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 5.0 MB (4973215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eded4c951133b1f8158c790221e9fb1490ac62f68951956c55f773718d6193a`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a28c54e2118bd2a706249cf67ef231a617e2b950fc03c0756ea98f00879faa6`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c33ede5ed226518f7d19e45e5520b867820f2daf7a70a373d4f9813d0d33bb`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be01c51e9ebf647f0491819a09217c8e6626f8954e72cba79dec832e0d8decb3`  
		Last Modified: Thu, 08 Jun 2017 20:33:07 GMT  
		Size: 4.1 KB (4054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c052124a6bda2b9a73a0a24a994bb6fcace8594d862dd32c9e83040770a992a`  
		Last Modified: Thu, 08 Jun 2017 20:34:46 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management-alpine`

```console
$ docker pull rabbitmq@sha256:dec88b02cd31cce903d86532b694165df4841d3b70aadd1a3f1ee960a90e1147
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-management-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.0 MB (23034655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a64a1404786a5386d66648233325243f094ff459f1496719fcc18f3e124a781`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 17:42:37 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 30 May 2017 17:43:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 30 May 2017 17:44:08 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 30 May 2017 17:45:04 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 30 May 2017 17:45:46 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 30 May 2017 17:49:22 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 May 2017 17:49:43 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 30 May 2017 17:50:25 GMT
ENV RABBITMQ_VERSION=3.6.10
# Tue, 30 May 2017 17:51:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 30 May 2017 17:51:29 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 30 May 2017 17:52:12 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 30 May 2017 17:52:53 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 30 May 2017 17:53:14 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 30 May 2017 17:53:56 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 08 Jun 2017 20:28:41 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Thu, 08 Jun 2017 20:28:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 20:28:43 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 08 Jun 2017 20:28:44 GMT
CMD ["rabbitmq-server"]
# Thu, 08 Jun 2017 20:29:09 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 08 Jun 2017 20:29:10 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4d31626b4cc745fecb44d4f4d9a435c813c2c849dbcc9a49b2d73e9c23390d`  
		Last Modified: Tue, 30 May 2017 18:05:31 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0a1c444efd570c63e3c0c5b587c3b3dfbca3b87e8ac33431710097d1d953bb`  
		Last Modified: Tue, 30 May 2017 18:05:31 GMT  
		Size: 7.8 KB (7765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7f26d2e4ea099641ab2db1f9cfd0351bf750c1d79a1e861cf1d194f2ec36ed`  
		Last Modified: Tue, 30 May 2017 18:05:33 GMT  
		Size: 16.1 MB (16079815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0afcdcde06c8cd2c5a071e6a2e7bf0e992c0d811562dbd4e82bfa7d20dcab3c`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 5.0 MB (4973215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eded4c951133b1f8158c790221e9fb1490ac62f68951956c55f773718d6193a`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a28c54e2118bd2a706249cf67ef231a617e2b950fc03c0756ea98f00879faa6`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c33ede5ed226518f7d19e45e5520b867820f2daf7a70a373d4f9813d0d33bb`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be01c51e9ebf647f0491819a09217c8e6626f8954e72cba79dec832e0d8decb3`  
		Last Modified: Thu, 08 Jun 2017 20:33:07 GMT  
		Size: 4.1 KB (4054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c052124a6bda2b9a73a0a24a994bb6fcace8594d862dd32c9e83040770a992a`  
		Last Modified: Thu, 08 Jun 2017 20:34:46 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management-alpine`

```console
$ docker pull rabbitmq@sha256:dec88b02cd31cce903d86532b694165df4841d3b70aadd1a3f1ee960a90e1147
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:management-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.0 MB (23034655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a64a1404786a5386d66648233325243f094ff459f1496719fcc18f3e124a781`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 17:42:37 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 30 May 2017 17:43:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 30 May 2017 17:44:08 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 30 May 2017 17:45:04 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 30 May 2017 17:45:46 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 30 May 2017 17:49:22 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 May 2017 17:49:43 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 30 May 2017 17:50:25 GMT
ENV RABBITMQ_VERSION=3.6.10
# Tue, 30 May 2017 17:51:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 30 May 2017 17:51:29 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 30 May 2017 17:52:12 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 30 May 2017 17:52:53 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 30 May 2017 17:53:14 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 30 May 2017 17:53:56 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 08 Jun 2017 20:28:41 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Thu, 08 Jun 2017 20:28:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 20:28:43 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 08 Jun 2017 20:28:44 GMT
CMD ["rabbitmq-server"]
# Thu, 08 Jun 2017 20:29:09 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 08 Jun 2017 20:29:10 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4d31626b4cc745fecb44d4f4d9a435c813c2c849dbcc9a49b2d73e9c23390d`  
		Last Modified: Tue, 30 May 2017 18:05:31 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0a1c444efd570c63e3c0c5b587c3b3dfbca3b87e8ac33431710097d1d953bb`  
		Last Modified: Tue, 30 May 2017 18:05:31 GMT  
		Size: 7.8 KB (7765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7f26d2e4ea099641ab2db1f9cfd0351bf750c1d79a1e861cf1d194f2ec36ed`  
		Last Modified: Tue, 30 May 2017 18:05:33 GMT  
		Size: 16.1 MB (16079815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0afcdcde06c8cd2c5a071e6a2e7bf0e992c0d811562dbd4e82bfa7d20dcab3c`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 5.0 MB (4973215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eded4c951133b1f8158c790221e9fb1490ac62f68951956c55f773718d6193a`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a28c54e2118bd2a706249cf67ef231a617e2b950fc03c0756ea98f00879faa6`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c33ede5ed226518f7d19e45e5520b867820f2daf7a70a373d4f9813d0d33bb`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be01c51e9ebf647f0491819a09217c8e6626f8954e72cba79dec832e0d8decb3`  
		Last Modified: Thu, 08 Jun 2017 20:33:07 GMT  
		Size: 4.1 KB (4054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c052124a6bda2b9a73a0a24a994bb6fcace8594d862dd32c9e83040770a992a`  
		Last Modified: Thu, 08 Jun 2017 20:34:46 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
