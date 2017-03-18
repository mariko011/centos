<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rabbitmq`

-	[`rabbitmq:3.6.8`](#rabbitmq368)
-	[`rabbitmq:3.6`](#rabbitmq36)
-	[`rabbitmq:3`](#rabbitmq3)
-	[`rabbitmq:latest`](#rabbitmqlatest)
-	[`rabbitmq:3.6.8-management`](#rabbitmq368-management)
-	[`rabbitmq:3.6-management`](#rabbitmq36-management)
-	[`rabbitmq:3-management`](#rabbitmq3-management)
-	[`rabbitmq:management`](#rabbitmqmanagement)
-	[`rabbitmq:3.6.8-alpine`](#rabbitmq368-alpine)
-	[`rabbitmq:3.6-alpine`](#rabbitmq36-alpine)
-	[`rabbitmq:3-alpine`](#rabbitmq3-alpine)
-	[`rabbitmq:alpine`](#rabbitmqalpine)
-	[`rabbitmq:3.6.8-management-alpine`](#rabbitmq368-management-alpine)
-	[`rabbitmq:3.6-management-alpine`](#rabbitmq36-management-alpine)
-	[`rabbitmq:3-management-alpine`](#rabbitmq3-management-alpine)
-	[`rabbitmq:management-alpine`](#rabbitmqmanagement-alpine)

## `rabbitmq:3.6.8`

```console
$ docker pull rabbitmq@sha256:6b0fe7a3a89f29e4ec21b159a8a39590886872c8ba5fb8447b4eb4d42a45617d
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.1 MB (86081078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d452bc9055a1c8cd749287bfc6737008c03a1d48236894108e13c56669f0aa86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 22:41:06 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 28 Feb 2017 22:41:07 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 22:41:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 28 Feb 2017 22:41:21 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 22:41:22 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Tue, 28 Feb 2017 22:41:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 22:41:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 28 Feb 2017 22:41:51 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 22:41:52 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Fri, 17 Mar 2017 23:29:46 GMT
ENV RABBITMQ_VERSION=3.6.8
# Fri, 17 Mar 2017 23:29:46 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.8-1
# Fri, 17 Mar 2017 23:29:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Mar 2017 23:29:55 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Mar 2017 23:29:56 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 17 Mar 2017 23:29:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 17 Mar 2017 23:29:58 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 17 Mar 2017 23:29:59 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 17 Mar 2017 23:30:00 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Fri, 17 Mar 2017 23:30:01 GMT
COPY file:aea0de868079820b38523daba3301f9d1b03f85139fbcab491d2bc10c2540046 in /usr/local/bin/ 
# Fri, 17 Mar 2017 23:30:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 17 Mar 2017 23:30:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Mar 2017 23:30:04 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 17 Mar 2017 23:30:05 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb18686cc4689922b4c163307e9b8858bf524d63cebf6de1095266ef32a07dc`  
		Last Modified: Thu, 02 Mar 2017 03:33:12 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae00e0021d4f4536d0170d615a009107db87a8adf42b095a63418b181667c7d8`  
		Last Modified: Thu, 02 Mar 2017 03:33:08 GMT  
		Size: 1.2 MB (1216851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c40b0d0b2a9eda9c873e116e61276f084cde49109eeb634f96beafb89811b31`  
		Last Modified: Thu, 02 Mar 2017 03:33:10 GMT  
		Size: 2.5 KB (2497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb8e146207ab4eb7c881a48d5d94f52c76c74154afcc5d8a1a945c0ea12fb78`  
		Last Modified: Thu, 02 Mar 2017 03:33:08 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d218990416b505e468dacd33f81026177387047c261de79b7fc980e1931e4fd`  
		Last Modified: Thu, 02 Mar 2017 03:33:12 GMT  
		Size: 27.8 MB (27823799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6a2b2fe78c09ea4468a9533b6364979eab630b97002e679bf3f17090f3470f0`  
		Last Modified: Thu, 02 Mar 2017 03:33:05 GMT  
		Size: 3.1 KB (3096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9045f6bf09cdd5946d05d3280e45ddf0188910531da96500c9c0a51d2b928c`  
		Last Modified: Thu, 02 Mar 2017 03:33:05 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b063d3c60aac24bffdf0d017f16fa1d2c141298eaece2cda52fa7adf70e6fca8`  
		Last Modified: Fri, 17 Mar 2017 23:30:50 GMT  
		Size: 5.7 MB (5661293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c1d9c96a23f58ae741cff40d6bf07258f72b7d075992236d2c67e5c21eefccb`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dfe2ef6e8c6f58ea48ff4bd2755e01540f9a98e7acd5c8b82af2d05341be129`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:897d826fab8efd8b50b0e422c95509d8c52732a004ebc991e1bb6fefe95e861e`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb0f9140447764de96c1bf270b7054e4988c79db5e9b79906d4ff32e1eb7b00`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 2.7 KB (2708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f288a0eb4a3117432080ef5ba57bdd89b2c31fc070a90e5424c894a89b283a60`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6`

```console
$ docker pull rabbitmq@sha256:6b0fe7a3a89f29e4ec21b159a8a39590886872c8ba5fb8447b4eb4d42a45617d
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.1 MB (86081078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d452bc9055a1c8cd749287bfc6737008c03a1d48236894108e13c56669f0aa86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 22:41:06 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 28 Feb 2017 22:41:07 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 22:41:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 28 Feb 2017 22:41:21 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 22:41:22 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Tue, 28 Feb 2017 22:41:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 22:41:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 28 Feb 2017 22:41:51 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 22:41:52 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Fri, 17 Mar 2017 23:29:46 GMT
ENV RABBITMQ_VERSION=3.6.8
# Fri, 17 Mar 2017 23:29:46 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.8-1
# Fri, 17 Mar 2017 23:29:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Mar 2017 23:29:55 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Mar 2017 23:29:56 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 17 Mar 2017 23:29:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 17 Mar 2017 23:29:58 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 17 Mar 2017 23:29:59 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 17 Mar 2017 23:30:00 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Fri, 17 Mar 2017 23:30:01 GMT
COPY file:aea0de868079820b38523daba3301f9d1b03f85139fbcab491d2bc10c2540046 in /usr/local/bin/ 
# Fri, 17 Mar 2017 23:30:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 17 Mar 2017 23:30:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Mar 2017 23:30:04 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 17 Mar 2017 23:30:05 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb18686cc4689922b4c163307e9b8858bf524d63cebf6de1095266ef32a07dc`  
		Last Modified: Thu, 02 Mar 2017 03:33:12 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae00e0021d4f4536d0170d615a009107db87a8adf42b095a63418b181667c7d8`  
		Last Modified: Thu, 02 Mar 2017 03:33:08 GMT  
		Size: 1.2 MB (1216851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c40b0d0b2a9eda9c873e116e61276f084cde49109eeb634f96beafb89811b31`  
		Last Modified: Thu, 02 Mar 2017 03:33:10 GMT  
		Size: 2.5 KB (2497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb8e146207ab4eb7c881a48d5d94f52c76c74154afcc5d8a1a945c0ea12fb78`  
		Last Modified: Thu, 02 Mar 2017 03:33:08 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d218990416b505e468dacd33f81026177387047c261de79b7fc980e1931e4fd`  
		Last Modified: Thu, 02 Mar 2017 03:33:12 GMT  
		Size: 27.8 MB (27823799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6a2b2fe78c09ea4468a9533b6364979eab630b97002e679bf3f17090f3470f0`  
		Last Modified: Thu, 02 Mar 2017 03:33:05 GMT  
		Size: 3.1 KB (3096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9045f6bf09cdd5946d05d3280e45ddf0188910531da96500c9c0a51d2b928c`  
		Last Modified: Thu, 02 Mar 2017 03:33:05 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b063d3c60aac24bffdf0d017f16fa1d2c141298eaece2cda52fa7adf70e6fca8`  
		Last Modified: Fri, 17 Mar 2017 23:30:50 GMT  
		Size: 5.7 MB (5661293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c1d9c96a23f58ae741cff40d6bf07258f72b7d075992236d2c67e5c21eefccb`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dfe2ef6e8c6f58ea48ff4bd2755e01540f9a98e7acd5c8b82af2d05341be129`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:897d826fab8efd8b50b0e422c95509d8c52732a004ebc991e1bb6fefe95e861e`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb0f9140447764de96c1bf270b7054e4988c79db5e9b79906d4ff32e1eb7b00`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 2.7 KB (2708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f288a0eb4a3117432080ef5ba57bdd89b2c31fc070a90e5424c894a89b283a60`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3`

```console
$ docker pull rabbitmq@sha256:6b0fe7a3a89f29e4ec21b159a8a39590886872c8ba5fb8447b4eb4d42a45617d
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.1 MB (86081078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d452bc9055a1c8cd749287bfc6737008c03a1d48236894108e13c56669f0aa86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 22:41:06 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 28 Feb 2017 22:41:07 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 22:41:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 28 Feb 2017 22:41:21 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 22:41:22 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Tue, 28 Feb 2017 22:41:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 22:41:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 28 Feb 2017 22:41:51 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 22:41:52 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Fri, 17 Mar 2017 23:29:46 GMT
ENV RABBITMQ_VERSION=3.6.8
# Fri, 17 Mar 2017 23:29:46 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.8-1
# Fri, 17 Mar 2017 23:29:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Mar 2017 23:29:55 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Mar 2017 23:29:56 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 17 Mar 2017 23:29:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 17 Mar 2017 23:29:58 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 17 Mar 2017 23:29:59 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 17 Mar 2017 23:30:00 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Fri, 17 Mar 2017 23:30:01 GMT
COPY file:aea0de868079820b38523daba3301f9d1b03f85139fbcab491d2bc10c2540046 in /usr/local/bin/ 
# Fri, 17 Mar 2017 23:30:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 17 Mar 2017 23:30:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Mar 2017 23:30:04 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 17 Mar 2017 23:30:05 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb18686cc4689922b4c163307e9b8858bf524d63cebf6de1095266ef32a07dc`  
		Last Modified: Thu, 02 Mar 2017 03:33:12 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae00e0021d4f4536d0170d615a009107db87a8adf42b095a63418b181667c7d8`  
		Last Modified: Thu, 02 Mar 2017 03:33:08 GMT  
		Size: 1.2 MB (1216851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c40b0d0b2a9eda9c873e116e61276f084cde49109eeb634f96beafb89811b31`  
		Last Modified: Thu, 02 Mar 2017 03:33:10 GMT  
		Size: 2.5 KB (2497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb8e146207ab4eb7c881a48d5d94f52c76c74154afcc5d8a1a945c0ea12fb78`  
		Last Modified: Thu, 02 Mar 2017 03:33:08 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d218990416b505e468dacd33f81026177387047c261de79b7fc980e1931e4fd`  
		Last Modified: Thu, 02 Mar 2017 03:33:12 GMT  
		Size: 27.8 MB (27823799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6a2b2fe78c09ea4468a9533b6364979eab630b97002e679bf3f17090f3470f0`  
		Last Modified: Thu, 02 Mar 2017 03:33:05 GMT  
		Size: 3.1 KB (3096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9045f6bf09cdd5946d05d3280e45ddf0188910531da96500c9c0a51d2b928c`  
		Last Modified: Thu, 02 Mar 2017 03:33:05 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b063d3c60aac24bffdf0d017f16fa1d2c141298eaece2cda52fa7adf70e6fca8`  
		Last Modified: Fri, 17 Mar 2017 23:30:50 GMT  
		Size: 5.7 MB (5661293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c1d9c96a23f58ae741cff40d6bf07258f72b7d075992236d2c67e5c21eefccb`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dfe2ef6e8c6f58ea48ff4bd2755e01540f9a98e7acd5c8b82af2d05341be129`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:897d826fab8efd8b50b0e422c95509d8c52732a004ebc991e1bb6fefe95e861e`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb0f9140447764de96c1bf270b7054e4988c79db5e9b79906d4ff32e1eb7b00`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 2.7 KB (2708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f288a0eb4a3117432080ef5ba57bdd89b2c31fc070a90e5424c894a89b283a60`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:latest`

```console
$ docker pull rabbitmq@sha256:6b0fe7a3a89f29e4ec21b159a8a39590886872c8ba5fb8447b4eb4d42a45617d
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.1 MB (86081078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d452bc9055a1c8cd749287bfc6737008c03a1d48236894108e13c56669f0aa86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 22:41:06 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 28 Feb 2017 22:41:07 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 22:41:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 28 Feb 2017 22:41:21 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 22:41:22 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Tue, 28 Feb 2017 22:41:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 22:41:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 28 Feb 2017 22:41:51 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 22:41:52 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Fri, 17 Mar 2017 23:29:46 GMT
ENV RABBITMQ_VERSION=3.6.8
# Fri, 17 Mar 2017 23:29:46 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.8-1
# Fri, 17 Mar 2017 23:29:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Mar 2017 23:29:55 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Mar 2017 23:29:56 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 17 Mar 2017 23:29:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 17 Mar 2017 23:29:58 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 17 Mar 2017 23:29:59 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 17 Mar 2017 23:30:00 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Fri, 17 Mar 2017 23:30:01 GMT
COPY file:aea0de868079820b38523daba3301f9d1b03f85139fbcab491d2bc10c2540046 in /usr/local/bin/ 
# Fri, 17 Mar 2017 23:30:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 17 Mar 2017 23:30:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Mar 2017 23:30:04 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 17 Mar 2017 23:30:05 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb18686cc4689922b4c163307e9b8858bf524d63cebf6de1095266ef32a07dc`  
		Last Modified: Thu, 02 Mar 2017 03:33:12 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae00e0021d4f4536d0170d615a009107db87a8adf42b095a63418b181667c7d8`  
		Last Modified: Thu, 02 Mar 2017 03:33:08 GMT  
		Size: 1.2 MB (1216851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c40b0d0b2a9eda9c873e116e61276f084cde49109eeb634f96beafb89811b31`  
		Last Modified: Thu, 02 Mar 2017 03:33:10 GMT  
		Size: 2.5 KB (2497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb8e146207ab4eb7c881a48d5d94f52c76c74154afcc5d8a1a945c0ea12fb78`  
		Last Modified: Thu, 02 Mar 2017 03:33:08 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d218990416b505e468dacd33f81026177387047c261de79b7fc980e1931e4fd`  
		Last Modified: Thu, 02 Mar 2017 03:33:12 GMT  
		Size: 27.8 MB (27823799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6a2b2fe78c09ea4468a9533b6364979eab630b97002e679bf3f17090f3470f0`  
		Last Modified: Thu, 02 Mar 2017 03:33:05 GMT  
		Size: 3.1 KB (3096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9045f6bf09cdd5946d05d3280e45ddf0188910531da96500c9c0a51d2b928c`  
		Last Modified: Thu, 02 Mar 2017 03:33:05 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b063d3c60aac24bffdf0d017f16fa1d2c141298eaece2cda52fa7adf70e6fca8`  
		Last Modified: Fri, 17 Mar 2017 23:30:50 GMT  
		Size: 5.7 MB (5661293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c1d9c96a23f58ae741cff40d6bf07258f72b7d075992236d2c67e5c21eefccb`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dfe2ef6e8c6f58ea48ff4bd2755e01540f9a98e7acd5c8b82af2d05341be129`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:897d826fab8efd8b50b0e422c95509d8c52732a004ebc991e1bb6fefe95e861e`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb0f9140447764de96c1bf270b7054e4988c79db5e9b79906d4ff32e1eb7b00`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 2.7 KB (2708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f288a0eb4a3117432080ef5ba57bdd89b2c31fc070a90e5424c894a89b283a60`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.8-management`

```console
$ docker pull rabbitmq@sha256:fbb8916974d21f3d90edf5a3a9623c9c006c8dada86a57ed2dd48b344554e64c
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.8-management` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.1 MB (86081263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af7e137081656913c5ad739a55310f1eb37123f4013efff71fac0887bfd8f848`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 22:41:06 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 28 Feb 2017 22:41:07 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 22:41:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 28 Feb 2017 22:41:21 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 22:41:22 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Tue, 28 Feb 2017 22:41:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 22:41:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 28 Feb 2017 22:41:51 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 22:41:52 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Fri, 17 Mar 2017 23:29:46 GMT
ENV RABBITMQ_VERSION=3.6.8
# Fri, 17 Mar 2017 23:29:46 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.8-1
# Fri, 17 Mar 2017 23:29:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Mar 2017 23:29:55 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Mar 2017 23:29:56 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 17 Mar 2017 23:29:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 17 Mar 2017 23:29:58 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 17 Mar 2017 23:29:59 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 17 Mar 2017 23:30:00 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Fri, 17 Mar 2017 23:30:01 GMT
COPY file:aea0de868079820b38523daba3301f9d1b03f85139fbcab491d2bc10c2540046 in /usr/local/bin/ 
# Fri, 17 Mar 2017 23:30:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 17 Mar 2017 23:30:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Mar 2017 23:30:04 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 17 Mar 2017 23:30:05 GMT
CMD ["rabbitmq-server"]
# Fri, 17 Mar 2017 23:30:08 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 17 Mar 2017 23:30:09 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb18686cc4689922b4c163307e9b8858bf524d63cebf6de1095266ef32a07dc`  
		Last Modified: Thu, 02 Mar 2017 03:33:12 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae00e0021d4f4536d0170d615a009107db87a8adf42b095a63418b181667c7d8`  
		Last Modified: Thu, 02 Mar 2017 03:33:08 GMT  
		Size: 1.2 MB (1216851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c40b0d0b2a9eda9c873e116e61276f084cde49109eeb634f96beafb89811b31`  
		Last Modified: Thu, 02 Mar 2017 03:33:10 GMT  
		Size: 2.5 KB (2497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb8e146207ab4eb7c881a48d5d94f52c76c74154afcc5d8a1a945c0ea12fb78`  
		Last Modified: Thu, 02 Mar 2017 03:33:08 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d218990416b505e468dacd33f81026177387047c261de79b7fc980e1931e4fd`  
		Last Modified: Thu, 02 Mar 2017 03:33:12 GMT  
		Size: 27.8 MB (27823799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6a2b2fe78c09ea4468a9533b6364979eab630b97002e679bf3f17090f3470f0`  
		Last Modified: Thu, 02 Mar 2017 03:33:05 GMT  
		Size: 3.1 KB (3096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9045f6bf09cdd5946d05d3280e45ddf0188910531da96500c9c0a51d2b928c`  
		Last Modified: Thu, 02 Mar 2017 03:33:05 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b063d3c60aac24bffdf0d017f16fa1d2c141298eaece2cda52fa7adf70e6fca8`  
		Last Modified: Fri, 17 Mar 2017 23:30:50 GMT  
		Size: 5.7 MB (5661293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c1d9c96a23f58ae741cff40d6bf07258f72b7d075992236d2c67e5c21eefccb`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dfe2ef6e8c6f58ea48ff4bd2755e01540f9a98e7acd5c8b82af2d05341be129`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:897d826fab8efd8b50b0e422c95509d8c52732a004ebc991e1bb6fefe95e861e`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb0f9140447764de96c1bf270b7054e4988c79db5e9b79906d4ff32e1eb7b00`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 2.7 KB (2708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f288a0eb4a3117432080ef5ba57bdd89b2c31fc070a90e5424c894a89b283a60`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1821571ce3f52d9f7453620127d63afd06c09cbc3cec8ca68e432e3da501542`  
		Last Modified: Fri, 17 Mar 2017 23:32:10 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management`

```console
$ docker pull rabbitmq@sha256:fbb8916974d21f3d90edf5a3a9623c9c006c8dada86a57ed2dd48b344554e64c
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-management` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.1 MB (86081263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af7e137081656913c5ad739a55310f1eb37123f4013efff71fac0887bfd8f848`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 22:41:06 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 28 Feb 2017 22:41:07 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 22:41:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 28 Feb 2017 22:41:21 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 22:41:22 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Tue, 28 Feb 2017 22:41:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 22:41:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 28 Feb 2017 22:41:51 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 22:41:52 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Fri, 17 Mar 2017 23:29:46 GMT
ENV RABBITMQ_VERSION=3.6.8
# Fri, 17 Mar 2017 23:29:46 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.8-1
# Fri, 17 Mar 2017 23:29:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Mar 2017 23:29:55 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Mar 2017 23:29:56 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 17 Mar 2017 23:29:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 17 Mar 2017 23:29:58 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 17 Mar 2017 23:29:59 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 17 Mar 2017 23:30:00 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Fri, 17 Mar 2017 23:30:01 GMT
COPY file:aea0de868079820b38523daba3301f9d1b03f85139fbcab491d2bc10c2540046 in /usr/local/bin/ 
# Fri, 17 Mar 2017 23:30:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 17 Mar 2017 23:30:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Mar 2017 23:30:04 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 17 Mar 2017 23:30:05 GMT
CMD ["rabbitmq-server"]
# Fri, 17 Mar 2017 23:30:08 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 17 Mar 2017 23:30:09 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb18686cc4689922b4c163307e9b8858bf524d63cebf6de1095266ef32a07dc`  
		Last Modified: Thu, 02 Mar 2017 03:33:12 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae00e0021d4f4536d0170d615a009107db87a8adf42b095a63418b181667c7d8`  
		Last Modified: Thu, 02 Mar 2017 03:33:08 GMT  
		Size: 1.2 MB (1216851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c40b0d0b2a9eda9c873e116e61276f084cde49109eeb634f96beafb89811b31`  
		Last Modified: Thu, 02 Mar 2017 03:33:10 GMT  
		Size: 2.5 KB (2497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb8e146207ab4eb7c881a48d5d94f52c76c74154afcc5d8a1a945c0ea12fb78`  
		Last Modified: Thu, 02 Mar 2017 03:33:08 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d218990416b505e468dacd33f81026177387047c261de79b7fc980e1931e4fd`  
		Last Modified: Thu, 02 Mar 2017 03:33:12 GMT  
		Size: 27.8 MB (27823799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6a2b2fe78c09ea4468a9533b6364979eab630b97002e679bf3f17090f3470f0`  
		Last Modified: Thu, 02 Mar 2017 03:33:05 GMT  
		Size: 3.1 KB (3096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9045f6bf09cdd5946d05d3280e45ddf0188910531da96500c9c0a51d2b928c`  
		Last Modified: Thu, 02 Mar 2017 03:33:05 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b063d3c60aac24bffdf0d017f16fa1d2c141298eaece2cda52fa7adf70e6fca8`  
		Last Modified: Fri, 17 Mar 2017 23:30:50 GMT  
		Size: 5.7 MB (5661293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c1d9c96a23f58ae741cff40d6bf07258f72b7d075992236d2c67e5c21eefccb`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dfe2ef6e8c6f58ea48ff4bd2755e01540f9a98e7acd5c8b82af2d05341be129`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:897d826fab8efd8b50b0e422c95509d8c52732a004ebc991e1bb6fefe95e861e`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb0f9140447764de96c1bf270b7054e4988c79db5e9b79906d4ff32e1eb7b00`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 2.7 KB (2708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f288a0eb4a3117432080ef5ba57bdd89b2c31fc070a90e5424c894a89b283a60`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1821571ce3f52d9f7453620127d63afd06c09cbc3cec8ca68e432e3da501542`  
		Last Modified: Fri, 17 Mar 2017 23:32:10 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management`

```console
$ docker pull rabbitmq@sha256:fbb8916974d21f3d90edf5a3a9623c9c006c8dada86a57ed2dd48b344554e64c
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-management` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.1 MB (86081263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af7e137081656913c5ad739a55310f1eb37123f4013efff71fac0887bfd8f848`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 22:41:06 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 28 Feb 2017 22:41:07 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 22:41:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 28 Feb 2017 22:41:21 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 22:41:22 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Tue, 28 Feb 2017 22:41:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 22:41:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 28 Feb 2017 22:41:51 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 22:41:52 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Fri, 17 Mar 2017 23:29:46 GMT
ENV RABBITMQ_VERSION=3.6.8
# Fri, 17 Mar 2017 23:29:46 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.8-1
# Fri, 17 Mar 2017 23:29:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Mar 2017 23:29:55 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Mar 2017 23:29:56 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 17 Mar 2017 23:29:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 17 Mar 2017 23:29:58 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 17 Mar 2017 23:29:59 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 17 Mar 2017 23:30:00 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Fri, 17 Mar 2017 23:30:01 GMT
COPY file:aea0de868079820b38523daba3301f9d1b03f85139fbcab491d2bc10c2540046 in /usr/local/bin/ 
# Fri, 17 Mar 2017 23:30:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 17 Mar 2017 23:30:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Mar 2017 23:30:04 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 17 Mar 2017 23:30:05 GMT
CMD ["rabbitmq-server"]
# Fri, 17 Mar 2017 23:30:08 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 17 Mar 2017 23:30:09 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb18686cc4689922b4c163307e9b8858bf524d63cebf6de1095266ef32a07dc`  
		Last Modified: Thu, 02 Mar 2017 03:33:12 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae00e0021d4f4536d0170d615a009107db87a8adf42b095a63418b181667c7d8`  
		Last Modified: Thu, 02 Mar 2017 03:33:08 GMT  
		Size: 1.2 MB (1216851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c40b0d0b2a9eda9c873e116e61276f084cde49109eeb634f96beafb89811b31`  
		Last Modified: Thu, 02 Mar 2017 03:33:10 GMT  
		Size: 2.5 KB (2497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb8e146207ab4eb7c881a48d5d94f52c76c74154afcc5d8a1a945c0ea12fb78`  
		Last Modified: Thu, 02 Mar 2017 03:33:08 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d218990416b505e468dacd33f81026177387047c261de79b7fc980e1931e4fd`  
		Last Modified: Thu, 02 Mar 2017 03:33:12 GMT  
		Size: 27.8 MB (27823799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6a2b2fe78c09ea4468a9533b6364979eab630b97002e679bf3f17090f3470f0`  
		Last Modified: Thu, 02 Mar 2017 03:33:05 GMT  
		Size: 3.1 KB (3096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9045f6bf09cdd5946d05d3280e45ddf0188910531da96500c9c0a51d2b928c`  
		Last Modified: Thu, 02 Mar 2017 03:33:05 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b063d3c60aac24bffdf0d017f16fa1d2c141298eaece2cda52fa7adf70e6fca8`  
		Last Modified: Fri, 17 Mar 2017 23:30:50 GMT  
		Size: 5.7 MB (5661293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c1d9c96a23f58ae741cff40d6bf07258f72b7d075992236d2c67e5c21eefccb`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dfe2ef6e8c6f58ea48ff4bd2755e01540f9a98e7acd5c8b82af2d05341be129`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:897d826fab8efd8b50b0e422c95509d8c52732a004ebc991e1bb6fefe95e861e`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb0f9140447764de96c1bf270b7054e4988c79db5e9b79906d4ff32e1eb7b00`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 2.7 KB (2708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f288a0eb4a3117432080ef5ba57bdd89b2c31fc070a90e5424c894a89b283a60`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1821571ce3f52d9f7453620127d63afd06c09cbc3cec8ca68e432e3da501542`  
		Last Modified: Fri, 17 Mar 2017 23:32:10 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management`

```console
$ docker pull rabbitmq@sha256:fbb8916974d21f3d90edf5a3a9623c9c006c8dada86a57ed2dd48b344554e64c
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:management` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.1 MB (86081263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af7e137081656913c5ad739a55310f1eb37123f4013efff71fac0887bfd8f848`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 22:41:06 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 28 Feb 2017 22:41:07 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 22:41:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 28 Feb 2017 22:41:21 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 22:41:22 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Tue, 28 Feb 2017 22:41:49 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 22:41:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 28 Feb 2017 22:41:51 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 22:41:52 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Fri, 17 Mar 2017 23:29:46 GMT
ENV RABBITMQ_VERSION=3.6.8
# Fri, 17 Mar 2017 23:29:46 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.8-1
# Fri, 17 Mar 2017 23:29:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Mar 2017 23:29:55 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Mar 2017 23:29:56 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 17 Mar 2017 23:29:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& echo '[ { rabbit, [ { loopback_users, [ ] } ] } ].' > /etc/rabbitmq/rabbitmq.config 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 17 Mar 2017 23:29:58 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 17 Mar 2017 23:29:59 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 17 Mar 2017 23:30:00 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Fri, 17 Mar 2017 23:30:01 GMT
COPY file:aea0de868079820b38523daba3301f9d1b03f85139fbcab491d2bc10c2540046 in /usr/local/bin/ 
# Fri, 17 Mar 2017 23:30:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 17 Mar 2017 23:30:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Mar 2017 23:30:04 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 17 Mar 2017 23:30:05 GMT
CMD ["rabbitmq-server"]
# Fri, 17 Mar 2017 23:30:08 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 17 Mar 2017 23:30:09 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb18686cc4689922b4c163307e9b8858bf524d63cebf6de1095266ef32a07dc`  
		Last Modified: Thu, 02 Mar 2017 03:33:12 GMT  
		Size: 4.3 KB (4342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae00e0021d4f4536d0170d615a009107db87a8adf42b095a63418b181667c7d8`  
		Last Modified: Thu, 02 Mar 2017 03:33:08 GMT  
		Size: 1.2 MB (1216851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c40b0d0b2a9eda9c873e116e61276f084cde49109eeb634f96beafb89811b31`  
		Last Modified: Thu, 02 Mar 2017 03:33:10 GMT  
		Size: 2.5 KB (2497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb8e146207ab4eb7c881a48d5d94f52c76c74154afcc5d8a1a945c0ea12fb78`  
		Last Modified: Thu, 02 Mar 2017 03:33:08 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d218990416b505e468dacd33f81026177387047c261de79b7fc980e1931e4fd`  
		Last Modified: Thu, 02 Mar 2017 03:33:12 GMT  
		Size: 27.8 MB (27823799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6a2b2fe78c09ea4468a9533b6364979eab630b97002e679bf3f17090f3470f0`  
		Last Modified: Thu, 02 Mar 2017 03:33:05 GMT  
		Size: 3.1 KB (3096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9045f6bf09cdd5946d05d3280e45ddf0188910531da96500c9c0a51d2b928c`  
		Last Modified: Thu, 02 Mar 2017 03:33:05 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b063d3c60aac24bffdf0d017f16fa1d2c141298eaece2cda52fa7adf70e6fca8`  
		Last Modified: Fri, 17 Mar 2017 23:30:50 GMT  
		Size: 5.7 MB (5661293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c1d9c96a23f58ae741cff40d6bf07258f72b7d075992236d2c67e5c21eefccb`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dfe2ef6e8c6f58ea48ff4bd2755e01540f9a98e7acd5c8b82af2d05341be129`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:897d826fab8efd8b50b0e422c95509d8c52732a004ebc991e1bb6fefe95e861e`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb0f9140447764de96c1bf270b7054e4988c79db5e9b79906d4ff32e1eb7b00`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 2.7 KB (2708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f288a0eb4a3117432080ef5ba57bdd89b2c31fc070a90e5424c894a89b283a60`  
		Last Modified: Fri, 17 Mar 2017 23:30:47 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1821571ce3f52d9f7453620127d63afd06c09cbc3cec8ca68e432e3da501542`  
		Last Modified: Fri, 17 Mar 2017 23:32:10 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.8-alpine`

```console
$ docker pull rabbitmq@sha256:61efa1d549e53a6c47c109b5d64b27f9711b640170642a5469d47957c118d509
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.8-alpine` - linux; amd64

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

## `rabbitmq:3.6.8-management-alpine`

```console
$ docker pull rabbitmq@sha256:cc6eadabb48e0eed0ff14d77837addd8cc8a1c83494ec1010266f54e5a0f3645
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.8-management-alpine` - linux; amd64

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
