<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rabbitmq`

-	[`rabbitmq:3.6.11`](#rabbitmq3611)
-	[`rabbitmq:3.6`](#rabbitmq36)
-	[`rabbitmq:3`](#rabbitmq3)
-	[`rabbitmq:latest`](#rabbitmqlatest)
-	[`rabbitmq:3.6.11-management`](#rabbitmq3611-management)
-	[`rabbitmq:3.6-management`](#rabbitmq36-management)
-	[`rabbitmq:3-management`](#rabbitmq3-management)
-	[`rabbitmq:management`](#rabbitmqmanagement)
-	[`rabbitmq:3.6.11-alpine`](#rabbitmq3611-alpine)
-	[`rabbitmq:3.6-alpine`](#rabbitmq36-alpine)
-	[`rabbitmq:3-alpine`](#rabbitmq3-alpine)
-	[`rabbitmq:alpine`](#rabbitmqalpine)
-	[`rabbitmq:3.6.11-management-alpine`](#rabbitmq3611-management-alpine)
-	[`rabbitmq:3.6-management-alpine`](#rabbitmq36-management-alpine)
-	[`rabbitmq:3-management-alpine`](#rabbitmq3-management-alpine)
-	[`rabbitmq:management-alpine`](#rabbitmqmanagement-alpine)

## `rabbitmq:3.6.11`

```console
$ docker pull rabbitmq@sha256:1ca98b0ef5738750ae688f182bc2ed75c91202d530a78624223fea2588a3bad6
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.11` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62660426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a8dd7a46666cd5d72e37fbe9f510c62a77fbdd13465029c1abb1313b0278a70`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:45 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Thu, 07 Sep 2017 23:07:45 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 09:43:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 09:43:33 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 08 Sep 2017 09:43:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 09:43:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 09:44:11 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 09:44:11 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 08 Sep 2017 09:44:14 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 09:44:15 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Fri, 08 Sep 2017 09:44:15 GMT
ENV RABBITMQ_VERSION=3.6.11
# Fri, 08 Sep 2017 09:44:16 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.11-1
# Fri, 08 Sep 2017 09:44:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 09:44:21 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 09:44:21 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 08 Sep 2017 09:44:22 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 08 Sep 2017 09:44:23 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 08 Sep 2017 09:44:23 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 08 Sep 2017 09:44:24 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Fri, 08 Sep 2017 09:44:25 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Fri, 08 Sep 2017 09:44:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 09:44:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 09:44:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 08 Sep 2017 09:44:27 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2f1391435da0463d1ba97d396738b7a023f487e1b1277246b564d9c2c96e30`  
		Last Modified: Sat, 09 Sep 2017 01:37:02 GMT  
		Size: 4.3 MB (4312301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44332adbfb1dd24aa90f90ac7035b45862f5458da08efbe0a9cf732e022f92e7`  
		Last Modified: Sat, 09 Sep 2017 01:37:00 GMT  
		Size: 4.0 KB (4035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31429e3dcdee95d53d985948f2e239e3760c68efa50b066406cc6d824bac57b8`  
		Last Modified: Sat, 09 Sep 2017 01:37:00 GMT  
		Size: 951.9 KB (951923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb2f7ba5a0d8cd38c4fec0a0c9bec477750fb837a7a05a5c0d9789125a24976b`  
		Last Modified: Sat, 09 Sep 2017 01:37:04 GMT  
		Size: 27.7 MB (27703673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01bfa529738707cab32251540fb8d2060f9654d2128e9a0357605457aa84566f`  
		Last Modified: Sat, 09 Sep 2017 01:36:59 GMT  
		Size: 3.1 KB (3095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da20dafe91d486824a9e5e51b3cd9925a81f153bb56f73abd3e24c0ff8d8265`  
		Last Modified: Sat, 09 Sep 2017 01:36:59 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aa5362ddf76420567ddf204a65ff6c7d588e7b30f66d7c0845c368822d60d9d`  
		Last Modified: Sat, 09 Sep 2017 01:36:58 GMT  
		Size: 7.2 MB (7190422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50e7bc28f2abc742dab7f5fa35f0af9237c96c83b938cb2c3f635a954bbfed3b`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 2.3 KB (2252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4276115c1b2bb4881962f6c410ce5b107103df6b26c2f952b775f9839717f1b0`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a94a7f98bfe2f975dcffb0b07bda40311ea1679e3661fbfa51a2a1b42d37bc`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0055e6f40198620019bd2c78d7c8c03921083decd31fdb499619bd661d57ed`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 4.1 KB (4062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4e7beac3ad088690a6af0e542412405b5369f05a643cb7343e92105a4109c48`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6`

```console
$ docker pull rabbitmq@sha256:1ca98b0ef5738750ae688f182bc2ed75c91202d530a78624223fea2588a3bad6
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62660426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a8dd7a46666cd5d72e37fbe9f510c62a77fbdd13465029c1abb1313b0278a70`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:45 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Thu, 07 Sep 2017 23:07:45 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 09:43:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 09:43:33 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 08 Sep 2017 09:43:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 09:43:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 09:44:11 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 09:44:11 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 08 Sep 2017 09:44:14 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 09:44:15 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Fri, 08 Sep 2017 09:44:15 GMT
ENV RABBITMQ_VERSION=3.6.11
# Fri, 08 Sep 2017 09:44:16 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.11-1
# Fri, 08 Sep 2017 09:44:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 09:44:21 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 09:44:21 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 08 Sep 2017 09:44:22 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 08 Sep 2017 09:44:23 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 08 Sep 2017 09:44:23 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 08 Sep 2017 09:44:24 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Fri, 08 Sep 2017 09:44:25 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Fri, 08 Sep 2017 09:44:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 09:44:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 09:44:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 08 Sep 2017 09:44:27 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2f1391435da0463d1ba97d396738b7a023f487e1b1277246b564d9c2c96e30`  
		Last Modified: Sat, 09 Sep 2017 01:37:02 GMT  
		Size: 4.3 MB (4312301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44332adbfb1dd24aa90f90ac7035b45862f5458da08efbe0a9cf732e022f92e7`  
		Last Modified: Sat, 09 Sep 2017 01:37:00 GMT  
		Size: 4.0 KB (4035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31429e3dcdee95d53d985948f2e239e3760c68efa50b066406cc6d824bac57b8`  
		Last Modified: Sat, 09 Sep 2017 01:37:00 GMT  
		Size: 951.9 KB (951923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb2f7ba5a0d8cd38c4fec0a0c9bec477750fb837a7a05a5c0d9789125a24976b`  
		Last Modified: Sat, 09 Sep 2017 01:37:04 GMT  
		Size: 27.7 MB (27703673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01bfa529738707cab32251540fb8d2060f9654d2128e9a0357605457aa84566f`  
		Last Modified: Sat, 09 Sep 2017 01:36:59 GMT  
		Size: 3.1 KB (3095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da20dafe91d486824a9e5e51b3cd9925a81f153bb56f73abd3e24c0ff8d8265`  
		Last Modified: Sat, 09 Sep 2017 01:36:59 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aa5362ddf76420567ddf204a65ff6c7d588e7b30f66d7c0845c368822d60d9d`  
		Last Modified: Sat, 09 Sep 2017 01:36:58 GMT  
		Size: 7.2 MB (7190422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50e7bc28f2abc742dab7f5fa35f0af9237c96c83b938cb2c3f635a954bbfed3b`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 2.3 KB (2252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4276115c1b2bb4881962f6c410ce5b107103df6b26c2f952b775f9839717f1b0`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a94a7f98bfe2f975dcffb0b07bda40311ea1679e3661fbfa51a2a1b42d37bc`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0055e6f40198620019bd2c78d7c8c03921083decd31fdb499619bd661d57ed`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 4.1 KB (4062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4e7beac3ad088690a6af0e542412405b5369f05a643cb7343e92105a4109c48`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3`

```console
$ docker pull rabbitmq@sha256:1ca98b0ef5738750ae688f182bc2ed75c91202d530a78624223fea2588a3bad6
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62660426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a8dd7a46666cd5d72e37fbe9f510c62a77fbdd13465029c1abb1313b0278a70`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:45 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Thu, 07 Sep 2017 23:07:45 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 09:43:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 09:43:33 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 08 Sep 2017 09:43:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 09:43:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 09:44:11 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 09:44:11 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 08 Sep 2017 09:44:14 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 09:44:15 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Fri, 08 Sep 2017 09:44:15 GMT
ENV RABBITMQ_VERSION=3.6.11
# Fri, 08 Sep 2017 09:44:16 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.11-1
# Fri, 08 Sep 2017 09:44:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 09:44:21 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 09:44:21 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 08 Sep 2017 09:44:22 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 08 Sep 2017 09:44:23 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 08 Sep 2017 09:44:23 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 08 Sep 2017 09:44:24 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Fri, 08 Sep 2017 09:44:25 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Fri, 08 Sep 2017 09:44:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 09:44:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 09:44:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 08 Sep 2017 09:44:27 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2f1391435da0463d1ba97d396738b7a023f487e1b1277246b564d9c2c96e30`  
		Last Modified: Sat, 09 Sep 2017 01:37:02 GMT  
		Size: 4.3 MB (4312301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44332adbfb1dd24aa90f90ac7035b45862f5458da08efbe0a9cf732e022f92e7`  
		Last Modified: Sat, 09 Sep 2017 01:37:00 GMT  
		Size: 4.0 KB (4035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31429e3dcdee95d53d985948f2e239e3760c68efa50b066406cc6d824bac57b8`  
		Last Modified: Sat, 09 Sep 2017 01:37:00 GMT  
		Size: 951.9 KB (951923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb2f7ba5a0d8cd38c4fec0a0c9bec477750fb837a7a05a5c0d9789125a24976b`  
		Last Modified: Sat, 09 Sep 2017 01:37:04 GMT  
		Size: 27.7 MB (27703673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01bfa529738707cab32251540fb8d2060f9654d2128e9a0357605457aa84566f`  
		Last Modified: Sat, 09 Sep 2017 01:36:59 GMT  
		Size: 3.1 KB (3095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da20dafe91d486824a9e5e51b3cd9925a81f153bb56f73abd3e24c0ff8d8265`  
		Last Modified: Sat, 09 Sep 2017 01:36:59 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aa5362ddf76420567ddf204a65ff6c7d588e7b30f66d7c0845c368822d60d9d`  
		Last Modified: Sat, 09 Sep 2017 01:36:58 GMT  
		Size: 7.2 MB (7190422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50e7bc28f2abc742dab7f5fa35f0af9237c96c83b938cb2c3f635a954bbfed3b`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 2.3 KB (2252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4276115c1b2bb4881962f6c410ce5b107103df6b26c2f952b775f9839717f1b0`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a94a7f98bfe2f975dcffb0b07bda40311ea1679e3661fbfa51a2a1b42d37bc`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0055e6f40198620019bd2c78d7c8c03921083decd31fdb499619bd661d57ed`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 4.1 KB (4062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4e7beac3ad088690a6af0e542412405b5369f05a643cb7343e92105a4109c48`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:latest`

```console
$ docker pull rabbitmq@sha256:1ca98b0ef5738750ae688f182bc2ed75c91202d530a78624223fea2588a3bad6
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62660426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a8dd7a46666cd5d72e37fbe9f510c62a77fbdd13465029c1abb1313b0278a70`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:45 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Thu, 07 Sep 2017 23:07:45 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 09:43:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 09:43:33 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 08 Sep 2017 09:43:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 09:43:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 09:44:11 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 09:44:11 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 08 Sep 2017 09:44:14 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 09:44:15 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Fri, 08 Sep 2017 09:44:15 GMT
ENV RABBITMQ_VERSION=3.6.11
# Fri, 08 Sep 2017 09:44:16 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.11-1
# Fri, 08 Sep 2017 09:44:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 09:44:21 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 09:44:21 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 08 Sep 2017 09:44:22 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 08 Sep 2017 09:44:23 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 08 Sep 2017 09:44:23 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 08 Sep 2017 09:44:24 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Fri, 08 Sep 2017 09:44:25 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Fri, 08 Sep 2017 09:44:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 09:44:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 09:44:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 08 Sep 2017 09:44:27 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2f1391435da0463d1ba97d396738b7a023f487e1b1277246b564d9c2c96e30`  
		Last Modified: Sat, 09 Sep 2017 01:37:02 GMT  
		Size: 4.3 MB (4312301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44332adbfb1dd24aa90f90ac7035b45862f5458da08efbe0a9cf732e022f92e7`  
		Last Modified: Sat, 09 Sep 2017 01:37:00 GMT  
		Size: 4.0 KB (4035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31429e3dcdee95d53d985948f2e239e3760c68efa50b066406cc6d824bac57b8`  
		Last Modified: Sat, 09 Sep 2017 01:37:00 GMT  
		Size: 951.9 KB (951923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb2f7ba5a0d8cd38c4fec0a0c9bec477750fb837a7a05a5c0d9789125a24976b`  
		Last Modified: Sat, 09 Sep 2017 01:37:04 GMT  
		Size: 27.7 MB (27703673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01bfa529738707cab32251540fb8d2060f9654d2128e9a0357605457aa84566f`  
		Last Modified: Sat, 09 Sep 2017 01:36:59 GMT  
		Size: 3.1 KB (3095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da20dafe91d486824a9e5e51b3cd9925a81f153bb56f73abd3e24c0ff8d8265`  
		Last Modified: Sat, 09 Sep 2017 01:36:59 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aa5362ddf76420567ddf204a65ff6c7d588e7b30f66d7c0845c368822d60d9d`  
		Last Modified: Sat, 09 Sep 2017 01:36:58 GMT  
		Size: 7.2 MB (7190422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50e7bc28f2abc742dab7f5fa35f0af9237c96c83b938cb2c3f635a954bbfed3b`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 2.3 KB (2252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4276115c1b2bb4881962f6c410ce5b107103df6b26c2f952b775f9839717f1b0`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a94a7f98bfe2f975dcffb0b07bda40311ea1679e3661fbfa51a2a1b42d37bc`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0055e6f40198620019bd2c78d7c8c03921083decd31fdb499619bd661d57ed`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 4.1 KB (4062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4e7beac3ad088690a6af0e542412405b5369f05a643cb7343e92105a4109c48`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.11-management`

```console
$ docker pull rabbitmq@sha256:45f8594b491e0944d6aee9f750b879ba8fe804c58609d09aa4818e62c9ee41df
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.11-management` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62660615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f7e219c2f1d084cd2a90adc2c9396bffe3042878b1ca43b4b608428912a9e17`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:45 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Thu, 07 Sep 2017 23:07:45 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 09:43:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 09:43:33 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 08 Sep 2017 09:43:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 09:43:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 09:44:11 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 09:44:11 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 08 Sep 2017 09:44:14 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 09:44:15 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Fri, 08 Sep 2017 09:44:15 GMT
ENV RABBITMQ_VERSION=3.6.11
# Fri, 08 Sep 2017 09:44:16 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.11-1
# Fri, 08 Sep 2017 09:44:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 09:44:21 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 09:44:21 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 08 Sep 2017 09:44:22 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 08 Sep 2017 09:44:23 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 08 Sep 2017 09:44:23 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 08 Sep 2017 09:44:24 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Fri, 08 Sep 2017 09:44:25 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Fri, 08 Sep 2017 09:44:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 09:44:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 09:44:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 08 Sep 2017 09:44:27 GMT
CMD ["rabbitmq-server"]
# Fri, 08 Sep 2017 09:44:34 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 08 Sep 2017 09:44:35 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2f1391435da0463d1ba97d396738b7a023f487e1b1277246b564d9c2c96e30`  
		Last Modified: Sat, 09 Sep 2017 01:37:02 GMT  
		Size: 4.3 MB (4312301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44332adbfb1dd24aa90f90ac7035b45862f5458da08efbe0a9cf732e022f92e7`  
		Last Modified: Sat, 09 Sep 2017 01:37:00 GMT  
		Size: 4.0 KB (4035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31429e3dcdee95d53d985948f2e239e3760c68efa50b066406cc6d824bac57b8`  
		Last Modified: Sat, 09 Sep 2017 01:37:00 GMT  
		Size: 951.9 KB (951923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb2f7ba5a0d8cd38c4fec0a0c9bec477750fb837a7a05a5c0d9789125a24976b`  
		Last Modified: Sat, 09 Sep 2017 01:37:04 GMT  
		Size: 27.7 MB (27703673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01bfa529738707cab32251540fb8d2060f9654d2128e9a0357605457aa84566f`  
		Last Modified: Sat, 09 Sep 2017 01:36:59 GMT  
		Size: 3.1 KB (3095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da20dafe91d486824a9e5e51b3cd9925a81f153bb56f73abd3e24c0ff8d8265`  
		Last Modified: Sat, 09 Sep 2017 01:36:59 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aa5362ddf76420567ddf204a65ff6c7d588e7b30f66d7c0845c368822d60d9d`  
		Last Modified: Sat, 09 Sep 2017 01:36:58 GMT  
		Size: 7.2 MB (7190422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50e7bc28f2abc742dab7f5fa35f0af9237c96c83b938cb2c3f635a954bbfed3b`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 2.3 KB (2252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4276115c1b2bb4881962f6c410ce5b107103df6b26c2f952b775f9839717f1b0`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a94a7f98bfe2f975dcffb0b07bda40311ea1679e3661fbfa51a2a1b42d37bc`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0055e6f40198620019bd2c78d7c8c03921083decd31fdb499619bd661d57ed`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 4.1 KB (4062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4e7beac3ad088690a6af0e542412405b5369f05a643cb7343e92105a4109c48`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79d9cf37d7308f51aba7adffee99021b77d4085c4765fcdf76dfc2b085c4e45a`  
		Last Modified: Sat, 09 Sep 2017 01:37:41 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management`

```console
$ docker pull rabbitmq@sha256:45f8594b491e0944d6aee9f750b879ba8fe804c58609d09aa4818e62c9ee41df
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-management` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62660615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f7e219c2f1d084cd2a90adc2c9396bffe3042878b1ca43b4b608428912a9e17`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:45 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Thu, 07 Sep 2017 23:07:45 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 09:43:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 09:43:33 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 08 Sep 2017 09:43:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 09:43:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 09:44:11 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 09:44:11 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 08 Sep 2017 09:44:14 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 09:44:15 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Fri, 08 Sep 2017 09:44:15 GMT
ENV RABBITMQ_VERSION=3.6.11
# Fri, 08 Sep 2017 09:44:16 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.11-1
# Fri, 08 Sep 2017 09:44:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 09:44:21 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 09:44:21 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 08 Sep 2017 09:44:22 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 08 Sep 2017 09:44:23 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 08 Sep 2017 09:44:23 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 08 Sep 2017 09:44:24 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Fri, 08 Sep 2017 09:44:25 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Fri, 08 Sep 2017 09:44:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 09:44:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 09:44:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 08 Sep 2017 09:44:27 GMT
CMD ["rabbitmq-server"]
# Fri, 08 Sep 2017 09:44:34 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 08 Sep 2017 09:44:35 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2f1391435da0463d1ba97d396738b7a023f487e1b1277246b564d9c2c96e30`  
		Last Modified: Sat, 09 Sep 2017 01:37:02 GMT  
		Size: 4.3 MB (4312301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44332adbfb1dd24aa90f90ac7035b45862f5458da08efbe0a9cf732e022f92e7`  
		Last Modified: Sat, 09 Sep 2017 01:37:00 GMT  
		Size: 4.0 KB (4035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31429e3dcdee95d53d985948f2e239e3760c68efa50b066406cc6d824bac57b8`  
		Last Modified: Sat, 09 Sep 2017 01:37:00 GMT  
		Size: 951.9 KB (951923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb2f7ba5a0d8cd38c4fec0a0c9bec477750fb837a7a05a5c0d9789125a24976b`  
		Last Modified: Sat, 09 Sep 2017 01:37:04 GMT  
		Size: 27.7 MB (27703673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01bfa529738707cab32251540fb8d2060f9654d2128e9a0357605457aa84566f`  
		Last Modified: Sat, 09 Sep 2017 01:36:59 GMT  
		Size: 3.1 KB (3095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da20dafe91d486824a9e5e51b3cd9925a81f153bb56f73abd3e24c0ff8d8265`  
		Last Modified: Sat, 09 Sep 2017 01:36:59 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aa5362ddf76420567ddf204a65ff6c7d588e7b30f66d7c0845c368822d60d9d`  
		Last Modified: Sat, 09 Sep 2017 01:36:58 GMT  
		Size: 7.2 MB (7190422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50e7bc28f2abc742dab7f5fa35f0af9237c96c83b938cb2c3f635a954bbfed3b`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 2.3 KB (2252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4276115c1b2bb4881962f6c410ce5b107103df6b26c2f952b775f9839717f1b0`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a94a7f98bfe2f975dcffb0b07bda40311ea1679e3661fbfa51a2a1b42d37bc`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0055e6f40198620019bd2c78d7c8c03921083decd31fdb499619bd661d57ed`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 4.1 KB (4062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4e7beac3ad088690a6af0e542412405b5369f05a643cb7343e92105a4109c48`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79d9cf37d7308f51aba7adffee99021b77d4085c4765fcdf76dfc2b085c4e45a`  
		Last Modified: Sat, 09 Sep 2017 01:37:41 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management`

```console
$ docker pull rabbitmq@sha256:45f8594b491e0944d6aee9f750b879ba8fe804c58609d09aa4818e62c9ee41df
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-management` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62660615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f7e219c2f1d084cd2a90adc2c9396bffe3042878b1ca43b4b608428912a9e17`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:45 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Thu, 07 Sep 2017 23:07:45 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 09:43:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 09:43:33 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 08 Sep 2017 09:43:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 09:43:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 09:44:11 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 09:44:11 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 08 Sep 2017 09:44:14 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 09:44:15 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Fri, 08 Sep 2017 09:44:15 GMT
ENV RABBITMQ_VERSION=3.6.11
# Fri, 08 Sep 2017 09:44:16 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.11-1
# Fri, 08 Sep 2017 09:44:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 09:44:21 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 09:44:21 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 08 Sep 2017 09:44:22 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 08 Sep 2017 09:44:23 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 08 Sep 2017 09:44:23 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 08 Sep 2017 09:44:24 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Fri, 08 Sep 2017 09:44:25 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Fri, 08 Sep 2017 09:44:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 09:44:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 09:44:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 08 Sep 2017 09:44:27 GMT
CMD ["rabbitmq-server"]
# Fri, 08 Sep 2017 09:44:34 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 08 Sep 2017 09:44:35 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2f1391435da0463d1ba97d396738b7a023f487e1b1277246b564d9c2c96e30`  
		Last Modified: Sat, 09 Sep 2017 01:37:02 GMT  
		Size: 4.3 MB (4312301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44332adbfb1dd24aa90f90ac7035b45862f5458da08efbe0a9cf732e022f92e7`  
		Last Modified: Sat, 09 Sep 2017 01:37:00 GMT  
		Size: 4.0 KB (4035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31429e3dcdee95d53d985948f2e239e3760c68efa50b066406cc6d824bac57b8`  
		Last Modified: Sat, 09 Sep 2017 01:37:00 GMT  
		Size: 951.9 KB (951923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb2f7ba5a0d8cd38c4fec0a0c9bec477750fb837a7a05a5c0d9789125a24976b`  
		Last Modified: Sat, 09 Sep 2017 01:37:04 GMT  
		Size: 27.7 MB (27703673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01bfa529738707cab32251540fb8d2060f9654d2128e9a0357605457aa84566f`  
		Last Modified: Sat, 09 Sep 2017 01:36:59 GMT  
		Size: 3.1 KB (3095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da20dafe91d486824a9e5e51b3cd9925a81f153bb56f73abd3e24c0ff8d8265`  
		Last Modified: Sat, 09 Sep 2017 01:36:59 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aa5362ddf76420567ddf204a65ff6c7d588e7b30f66d7c0845c368822d60d9d`  
		Last Modified: Sat, 09 Sep 2017 01:36:58 GMT  
		Size: 7.2 MB (7190422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50e7bc28f2abc742dab7f5fa35f0af9237c96c83b938cb2c3f635a954bbfed3b`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 2.3 KB (2252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4276115c1b2bb4881962f6c410ce5b107103df6b26c2f952b775f9839717f1b0`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a94a7f98bfe2f975dcffb0b07bda40311ea1679e3661fbfa51a2a1b42d37bc`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0055e6f40198620019bd2c78d7c8c03921083decd31fdb499619bd661d57ed`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 4.1 KB (4062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4e7beac3ad088690a6af0e542412405b5369f05a643cb7343e92105a4109c48`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79d9cf37d7308f51aba7adffee99021b77d4085c4765fcdf76dfc2b085c4e45a`  
		Last Modified: Sat, 09 Sep 2017 01:37:41 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management`

```console
$ docker pull rabbitmq@sha256:45f8594b491e0944d6aee9f750b879ba8fe804c58609d09aa4818e62c9ee41df
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:management` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62660615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f7e219c2f1d084cd2a90adc2c9396bffe3042878b1ca43b4b608428912a9e17`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:45 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Thu, 07 Sep 2017 23:07:45 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 09:43:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 09:43:33 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 08 Sep 2017 09:43:34 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 09:43:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 09:44:11 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 09:44:11 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 08 Sep 2017 09:44:14 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 09:44:15 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Fri, 08 Sep 2017 09:44:15 GMT
ENV RABBITMQ_VERSION=3.6.11
# Fri, 08 Sep 2017 09:44:16 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.11-1
# Fri, 08 Sep 2017 09:44:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 09:44:21 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 09:44:21 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 08 Sep 2017 09:44:22 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 08 Sep 2017 09:44:23 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 08 Sep 2017 09:44:23 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 08 Sep 2017 09:44:24 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Fri, 08 Sep 2017 09:44:25 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Fri, 08 Sep 2017 09:44:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 09:44:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 09:44:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 08 Sep 2017 09:44:27 GMT
CMD ["rabbitmq-server"]
# Fri, 08 Sep 2017 09:44:34 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 08 Sep 2017 09:44:35 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2f1391435da0463d1ba97d396738b7a023f487e1b1277246b564d9c2c96e30`  
		Last Modified: Sat, 09 Sep 2017 01:37:02 GMT  
		Size: 4.3 MB (4312301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44332adbfb1dd24aa90f90ac7035b45862f5458da08efbe0a9cf732e022f92e7`  
		Last Modified: Sat, 09 Sep 2017 01:37:00 GMT  
		Size: 4.0 KB (4035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31429e3dcdee95d53d985948f2e239e3760c68efa50b066406cc6d824bac57b8`  
		Last Modified: Sat, 09 Sep 2017 01:37:00 GMT  
		Size: 951.9 KB (951923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb2f7ba5a0d8cd38c4fec0a0c9bec477750fb837a7a05a5c0d9789125a24976b`  
		Last Modified: Sat, 09 Sep 2017 01:37:04 GMT  
		Size: 27.7 MB (27703673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01bfa529738707cab32251540fb8d2060f9654d2128e9a0357605457aa84566f`  
		Last Modified: Sat, 09 Sep 2017 01:36:59 GMT  
		Size: 3.1 KB (3095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da20dafe91d486824a9e5e51b3cd9925a81f153bb56f73abd3e24c0ff8d8265`  
		Last Modified: Sat, 09 Sep 2017 01:36:59 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aa5362ddf76420567ddf204a65ff6c7d588e7b30f66d7c0845c368822d60d9d`  
		Last Modified: Sat, 09 Sep 2017 01:36:58 GMT  
		Size: 7.2 MB (7190422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50e7bc28f2abc742dab7f5fa35f0af9237c96c83b938cb2c3f635a954bbfed3b`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 2.3 KB (2252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4276115c1b2bb4881962f6c410ce5b107103df6b26c2f952b775f9839717f1b0`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a94a7f98bfe2f975dcffb0b07bda40311ea1679e3661fbfa51a2a1b42d37bc`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0055e6f40198620019bd2c78d7c8c03921083decd31fdb499619bd661d57ed`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 4.1 KB (4062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4e7beac3ad088690a6af0e542412405b5369f05a643cb7343e92105a4109c48`  
		Last Modified: Sat, 09 Sep 2017 01:36:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79d9cf37d7308f51aba7adffee99021b77d4085c4765fcdf76dfc2b085c4e45a`  
		Last Modified: Sat, 09 Sep 2017 01:37:41 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.11-alpine`

```console
$ docker pull rabbitmq@sha256:109570cf2ede004fcc5374f8cf35ad26308b393591f5e05736073ed0c264cac2
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.11-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23555576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83d27bccd2fac3239fd5ef465ff1ba781ba7b427f3d7a30cb4d16af674a47559`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:12:27 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 28 Jun 2017 22:12:31 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 28 Jun 2017 22:12:41 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 28 Jun 2017 22:12:42 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 28 Jun 2017 22:12:43 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 28 Jun 2017 22:12:44 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Jun 2017 22:12:44 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 17 Aug 2017 18:49:13 GMT
ENV RABBITMQ_VERSION=3.6.11
# Thu, 17 Aug 2017 18:49:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 17 Aug 2017 18:49:22 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 17 Aug 2017 18:49:23 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 17 Aug 2017 18:49:23 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 17 Aug 2017 18:49:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 17 Aug 2017 18:49:25 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 17 Aug 2017 18:49:26 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Thu, 17 Aug 2017 18:49:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Aug 2017 18:49:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 17 Aug 2017 18:49:27 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37b1a2424b372f996179868a278be3230143b93c679750e13cd52eb674e0e44`  
		Last Modified: Fri, 30 Jun 2017 00:38:07 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2799929042f7ada2eec6ec6ea4af2c39539f544d6c1b36e92195bb3cd83a0c7d`  
		Last Modified: Fri, 30 Jun 2017 00:38:07 GMT  
		Size: 8.2 KB (8166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0ac93c08db37625c342fe9a65b6eb0369722c8a0441b0bf3bf4a33e8a3fa3d`  
		Last Modified: Fri, 30 Jun 2017 00:38:10 GMT  
		Size: 16.5 MB (16540741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc18c248a7b09c595ed915b59b5d2be03d29241d17ca4566cd38a9e4852a482`  
		Last Modified: Thu, 17 Aug 2017 18:51:24 GMT  
		Size: 5.0 MB (5010522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9085838e09d844d015cb78f2c302c143e24f95d5dec56858a99a84179e4a1e3c`  
		Last Modified: Thu, 17 Aug 2017 18:51:23 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f793b591a3ec7956472c1cc21d47c78da72c735460d4fef6f98566ea23e41d3`  
		Last Modified: Thu, 17 Aug 2017 18:51:24 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42da39c9c3ca8d1398006da3a5bb40a46b1e4976bccacd2f471c64f2913db233`  
		Last Modified: Thu, 17 Aug 2017 18:51:23 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a442df563426000498edd37bd6fa44c62e2dc7485517535bbd19fbc00cc2843`  
		Last Modified: Thu, 17 Aug 2017 18:51:23 GMT  
		Size: 4.1 KB (4051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-alpine`

```console
$ docker pull rabbitmq@sha256:109570cf2ede004fcc5374f8cf35ad26308b393591f5e05736073ed0c264cac2
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23555576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83d27bccd2fac3239fd5ef465ff1ba781ba7b427f3d7a30cb4d16af674a47559`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:12:27 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 28 Jun 2017 22:12:31 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 28 Jun 2017 22:12:41 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 28 Jun 2017 22:12:42 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 28 Jun 2017 22:12:43 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 28 Jun 2017 22:12:44 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Jun 2017 22:12:44 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 17 Aug 2017 18:49:13 GMT
ENV RABBITMQ_VERSION=3.6.11
# Thu, 17 Aug 2017 18:49:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 17 Aug 2017 18:49:22 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 17 Aug 2017 18:49:23 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 17 Aug 2017 18:49:23 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 17 Aug 2017 18:49:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 17 Aug 2017 18:49:25 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 17 Aug 2017 18:49:26 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Thu, 17 Aug 2017 18:49:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Aug 2017 18:49:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 17 Aug 2017 18:49:27 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37b1a2424b372f996179868a278be3230143b93c679750e13cd52eb674e0e44`  
		Last Modified: Fri, 30 Jun 2017 00:38:07 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2799929042f7ada2eec6ec6ea4af2c39539f544d6c1b36e92195bb3cd83a0c7d`  
		Last Modified: Fri, 30 Jun 2017 00:38:07 GMT  
		Size: 8.2 KB (8166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0ac93c08db37625c342fe9a65b6eb0369722c8a0441b0bf3bf4a33e8a3fa3d`  
		Last Modified: Fri, 30 Jun 2017 00:38:10 GMT  
		Size: 16.5 MB (16540741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc18c248a7b09c595ed915b59b5d2be03d29241d17ca4566cd38a9e4852a482`  
		Last Modified: Thu, 17 Aug 2017 18:51:24 GMT  
		Size: 5.0 MB (5010522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9085838e09d844d015cb78f2c302c143e24f95d5dec56858a99a84179e4a1e3c`  
		Last Modified: Thu, 17 Aug 2017 18:51:23 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f793b591a3ec7956472c1cc21d47c78da72c735460d4fef6f98566ea23e41d3`  
		Last Modified: Thu, 17 Aug 2017 18:51:24 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42da39c9c3ca8d1398006da3a5bb40a46b1e4976bccacd2f471c64f2913db233`  
		Last Modified: Thu, 17 Aug 2017 18:51:23 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a442df563426000498edd37bd6fa44c62e2dc7485517535bbd19fbc00cc2843`  
		Last Modified: Thu, 17 Aug 2017 18:51:23 GMT  
		Size: 4.1 KB (4051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-alpine`

```console
$ docker pull rabbitmq@sha256:109570cf2ede004fcc5374f8cf35ad26308b393591f5e05736073ed0c264cac2
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23555576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83d27bccd2fac3239fd5ef465ff1ba781ba7b427f3d7a30cb4d16af674a47559`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:12:27 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 28 Jun 2017 22:12:31 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 28 Jun 2017 22:12:41 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 28 Jun 2017 22:12:42 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 28 Jun 2017 22:12:43 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 28 Jun 2017 22:12:44 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Jun 2017 22:12:44 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 17 Aug 2017 18:49:13 GMT
ENV RABBITMQ_VERSION=3.6.11
# Thu, 17 Aug 2017 18:49:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 17 Aug 2017 18:49:22 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 17 Aug 2017 18:49:23 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 17 Aug 2017 18:49:23 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 17 Aug 2017 18:49:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 17 Aug 2017 18:49:25 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 17 Aug 2017 18:49:26 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Thu, 17 Aug 2017 18:49:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Aug 2017 18:49:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 17 Aug 2017 18:49:27 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37b1a2424b372f996179868a278be3230143b93c679750e13cd52eb674e0e44`  
		Last Modified: Fri, 30 Jun 2017 00:38:07 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2799929042f7ada2eec6ec6ea4af2c39539f544d6c1b36e92195bb3cd83a0c7d`  
		Last Modified: Fri, 30 Jun 2017 00:38:07 GMT  
		Size: 8.2 KB (8166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0ac93c08db37625c342fe9a65b6eb0369722c8a0441b0bf3bf4a33e8a3fa3d`  
		Last Modified: Fri, 30 Jun 2017 00:38:10 GMT  
		Size: 16.5 MB (16540741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc18c248a7b09c595ed915b59b5d2be03d29241d17ca4566cd38a9e4852a482`  
		Last Modified: Thu, 17 Aug 2017 18:51:24 GMT  
		Size: 5.0 MB (5010522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9085838e09d844d015cb78f2c302c143e24f95d5dec56858a99a84179e4a1e3c`  
		Last Modified: Thu, 17 Aug 2017 18:51:23 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f793b591a3ec7956472c1cc21d47c78da72c735460d4fef6f98566ea23e41d3`  
		Last Modified: Thu, 17 Aug 2017 18:51:24 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42da39c9c3ca8d1398006da3a5bb40a46b1e4976bccacd2f471c64f2913db233`  
		Last Modified: Thu, 17 Aug 2017 18:51:23 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a442df563426000498edd37bd6fa44c62e2dc7485517535bbd19fbc00cc2843`  
		Last Modified: Thu, 17 Aug 2017 18:51:23 GMT  
		Size: 4.1 KB (4051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:alpine`

```console
$ docker pull rabbitmq@sha256:109570cf2ede004fcc5374f8cf35ad26308b393591f5e05736073ed0c264cac2
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23555576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83d27bccd2fac3239fd5ef465ff1ba781ba7b427f3d7a30cb4d16af674a47559`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:12:27 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 28 Jun 2017 22:12:31 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 28 Jun 2017 22:12:41 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 28 Jun 2017 22:12:42 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 28 Jun 2017 22:12:43 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 28 Jun 2017 22:12:44 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Jun 2017 22:12:44 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 17 Aug 2017 18:49:13 GMT
ENV RABBITMQ_VERSION=3.6.11
# Thu, 17 Aug 2017 18:49:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 17 Aug 2017 18:49:22 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 17 Aug 2017 18:49:23 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 17 Aug 2017 18:49:23 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 17 Aug 2017 18:49:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 17 Aug 2017 18:49:25 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 17 Aug 2017 18:49:26 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Thu, 17 Aug 2017 18:49:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Aug 2017 18:49:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 17 Aug 2017 18:49:27 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37b1a2424b372f996179868a278be3230143b93c679750e13cd52eb674e0e44`  
		Last Modified: Fri, 30 Jun 2017 00:38:07 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2799929042f7ada2eec6ec6ea4af2c39539f544d6c1b36e92195bb3cd83a0c7d`  
		Last Modified: Fri, 30 Jun 2017 00:38:07 GMT  
		Size: 8.2 KB (8166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0ac93c08db37625c342fe9a65b6eb0369722c8a0441b0bf3bf4a33e8a3fa3d`  
		Last Modified: Fri, 30 Jun 2017 00:38:10 GMT  
		Size: 16.5 MB (16540741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc18c248a7b09c595ed915b59b5d2be03d29241d17ca4566cd38a9e4852a482`  
		Last Modified: Thu, 17 Aug 2017 18:51:24 GMT  
		Size: 5.0 MB (5010522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9085838e09d844d015cb78f2c302c143e24f95d5dec56858a99a84179e4a1e3c`  
		Last Modified: Thu, 17 Aug 2017 18:51:23 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f793b591a3ec7956472c1cc21d47c78da72c735460d4fef6f98566ea23e41d3`  
		Last Modified: Thu, 17 Aug 2017 18:51:24 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42da39c9c3ca8d1398006da3a5bb40a46b1e4976bccacd2f471c64f2913db233`  
		Last Modified: Thu, 17 Aug 2017 18:51:23 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a442df563426000498edd37bd6fa44c62e2dc7485517535bbd19fbc00cc2843`  
		Last Modified: Thu, 17 Aug 2017 18:51:23 GMT  
		Size: 4.1 KB (4051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.11-management-alpine`

```console
$ docker pull rabbitmq@sha256:40d33c7c08d47433412ff1b16acd9762e11e2da0ed99359524623e892ab52190
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.11-management-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23555765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3af958ea2e6fb9cc4cf9a933b204668d818715463ce56b3401b721ced2e2e1af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:12:27 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 28 Jun 2017 22:12:31 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 28 Jun 2017 22:12:41 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 28 Jun 2017 22:12:42 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 28 Jun 2017 22:12:43 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 28 Jun 2017 22:12:44 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Jun 2017 22:12:44 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 17 Aug 2017 18:49:13 GMT
ENV RABBITMQ_VERSION=3.6.11
# Thu, 17 Aug 2017 18:49:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 17 Aug 2017 18:49:22 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 17 Aug 2017 18:49:23 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 17 Aug 2017 18:49:23 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 17 Aug 2017 18:49:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 17 Aug 2017 18:49:25 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 17 Aug 2017 18:49:26 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Thu, 17 Aug 2017 18:49:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Aug 2017 18:49:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 17 Aug 2017 18:49:27 GMT
CMD ["rabbitmq-server"]
# Thu, 17 Aug 2017 18:49:38 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 17 Aug 2017 18:49:38 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37b1a2424b372f996179868a278be3230143b93c679750e13cd52eb674e0e44`  
		Last Modified: Fri, 30 Jun 2017 00:38:07 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2799929042f7ada2eec6ec6ea4af2c39539f544d6c1b36e92195bb3cd83a0c7d`  
		Last Modified: Fri, 30 Jun 2017 00:38:07 GMT  
		Size: 8.2 KB (8166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0ac93c08db37625c342fe9a65b6eb0369722c8a0441b0bf3bf4a33e8a3fa3d`  
		Last Modified: Fri, 30 Jun 2017 00:38:10 GMT  
		Size: 16.5 MB (16540741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc18c248a7b09c595ed915b59b5d2be03d29241d17ca4566cd38a9e4852a482`  
		Last Modified: Thu, 17 Aug 2017 18:51:24 GMT  
		Size: 5.0 MB (5010522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9085838e09d844d015cb78f2c302c143e24f95d5dec56858a99a84179e4a1e3c`  
		Last Modified: Thu, 17 Aug 2017 18:51:23 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f793b591a3ec7956472c1cc21d47c78da72c735460d4fef6f98566ea23e41d3`  
		Last Modified: Thu, 17 Aug 2017 18:51:24 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42da39c9c3ca8d1398006da3a5bb40a46b1e4976bccacd2f471c64f2913db233`  
		Last Modified: Thu, 17 Aug 2017 18:51:23 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a442df563426000498edd37bd6fa44c62e2dc7485517535bbd19fbc00cc2843`  
		Last Modified: Thu, 17 Aug 2017 18:51:23 GMT  
		Size: 4.1 KB (4051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f3876b0e0cbea02972afb64eff8eb29eb97a64337bd1693d2ca40c9f6d3211`  
		Last Modified: Thu, 17 Aug 2017 18:52:03 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management-alpine`

```console
$ docker pull rabbitmq@sha256:40d33c7c08d47433412ff1b16acd9762e11e2da0ed99359524623e892ab52190
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-management-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23555765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3af958ea2e6fb9cc4cf9a933b204668d818715463ce56b3401b721ced2e2e1af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:12:27 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 28 Jun 2017 22:12:31 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 28 Jun 2017 22:12:41 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 28 Jun 2017 22:12:42 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 28 Jun 2017 22:12:43 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 28 Jun 2017 22:12:44 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Jun 2017 22:12:44 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 17 Aug 2017 18:49:13 GMT
ENV RABBITMQ_VERSION=3.6.11
# Thu, 17 Aug 2017 18:49:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 17 Aug 2017 18:49:22 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 17 Aug 2017 18:49:23 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 17 Aug 2017 18:49:23 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 17 Aug 2017 18:49:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 17 Aug 2017 18:49:25 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 17 Aug 2017 18:49:26 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Thu, 17 Aug 2017 18:49:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Aug 2017 18:49:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 17 Aug 2017 18:49:27 GMT
CMD ["rabbitmq-server"]
# Thu, 17 Aug 2017 18:49:38 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 17 Aug 2017 18:49:38 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37b1a2424b372f996179868a278be3230143b93c679750e13cd52eb674e0e44`  
		Last Modified: Fri, 30 Jun 2017 00:38:07 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2799929042f7ada2eec6ec6ea4af2c39539f544d6c1b36e92195bb3cd83a0c7d`  
		Last Modified: Fri, 30 Jun 2017 00:38:07 GMT  
		Size: 8.2 KB (8166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0ac93c08db37625c342fe9a65b6eb0369722c8a0441b0bf3bf4a33e8a3fa3d`  
		Last Modified: Fri, 30 Jun 2017 00:38:10 GMT  
		Size: 16.5 MB (16540741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc18c248a7b09c595ed915b59b5d2be03d29241d17ca4566cd38a9e4852a482`  
		Last Modified: Thu, 17 Aug 2017 18:51:24 GMT  
		Size: 5.0 MB (5010522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9085838e09d844d015cb78f2c302c143e24f95d5dec56858a99a84179e4a1e3c`  
		Last Modified: Thu, 17 Aug 2017 18:51:23 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f793b591a3ec7956472c1cc21d47c78da72c735460d4fef6f98566ea23e41d3`  
		Last Modified: Thu, 17 Aug 2017 18:51:24 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42da39c9c3ca8d1398006da3a5bb40a46b1e4976bccacd2f471c64f2913db233`  
		Last Modified: Thu, 17 Aug 2017 18:51:23 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a442df563426000498edd37bd6fa44c62e2dc7485517535bbd19fbc00cc2843`  
		Last Modified: Thu, 17 Aug 2017 18:51:23 GMT  
		Size: 4.1 KB (4051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f3876b0e0cbea02972afb64eff8eb29eb97a64337bd1693d2ca40c9f6d3211`  
		Last Modified: Thu, 17 Aug 2017 18:52:03 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management-alpine`

```console
$ docker pull rabbitmq@sha256:40d33c7c08d47433412ff1b16acd9762e11e2da0ed99359524623e892ab52190
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-management-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23555765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3af958ea2e6fb9cc4cf9a933b204668d818715463ce56b3401b721ced2e2e1af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:12:27 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 28 Jun 2017 22:12:31 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 28 Jun 2017 22:12:41 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 28 Jun 2017 22:12:42 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 28 Jun 2017 22:12:43 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 28 Jun 2017 22:12:44 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Jun 2017 22:12:44 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 17 Aug 2017 18:49:13 GMT
ENV RABBITMQ_VERSION=3.6.11
# Thu, 17 Aug 2017 18:49:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 17 Aug 2017 18:49:22 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 17 Aug 2017 18:49:23 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 17 Aug 2017 18:49:23 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 17 Aug 2017 18:49:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 17 Aug 2017 18:49:25 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 17 Aug 2017 18:49:26 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Thu, 17 Aug 2017 18:49:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Aug 2017 18:49:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 17 Aug 2017 18:49:27 GMT
CMD ["rabbitmq-server"]
# Thu, 17 Aug 2017 18:49:38 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 17 Aug 2017 18:49:38 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37b1a2424b372f996179868a278be3230143b93c679750e13cd52eb674e0e44`  
		Last Modified: Fri, 30 Jun 2017 00:38:07 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2799929042f7ada2eec6ec6ea4af2c39539f544d6c1b36e92195bb3cd83a0c7d`  
		Last Modified: Fri, 30 Jun 2017 00:38:07 GMT  
		Size: 8.2 KB (8166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0ac93c08db37625c342fe9a65b6eb0369722c8a0441b0bf3bf4a33e8a3fa3d`  
		Last Modified: Fri, 30 Jun 2017 00:38:10 GMT  
		Size: 16.5 MB (16540741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc18c248a7b09c595ed915b59b5d2be03d29241d17ca4566cd38a9e4852a482`  
		Last Modified: Thu, 17 Aug 2017 18:51:24 GMT  
		Size: 5.0 MB (5010522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9085838e09d844d015cb78f2c302c143e24f95d5dec56858a99a84179e4a1e3c`  
		Last Modified: Thu, 17 Aug 2017 18:51:23 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f793b591a3ec7956472c1cc21d47c78da72c735460d4fef6f98566ea23e41d3`  
		Last Modified: Thu, 17 Aug 2017 18:51:24 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42da39c9c3ca8d1398006da3a5bb40a46b1e4976bccacd2f471c64f2913db233`  
		Last Modified: Thu, 17 Aug 2017 18:51:23 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a442df563426000498edd37bd6fa44c62e2dc7485517535bbd19fbc00cc2843`  
		Last Modified: Thu, 17 Aug 2017 18:51:23 GMT  
		Size: 4.1 KB (4051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f3876b0e0cbea02972afb64eff8eb29eb97a64337bd1693d2ca40c9f6d3211`  
		Last Modified: Thu, 17 Aug 2017 18:52:03 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management-alpine`

```console
$ docker pull rabbitmq@sha256:40d33c7c08d47433412ff1b16acd9762e11e2da0ed99359524623e892ab52190
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:management-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23555765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3af958ea2e6fb9cc4cf9a933b204668d818715463ce56b3401b721ced2e2e1af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:12:27 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 28 Jun 2017 22:12:31 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 28 Jun 2017 22:12:41 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 28 Jun 2017 22:12:42 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 28 Jun 2017 22:12:43 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 28 Jun 2017 22:12:44 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Jun 2017 22:12:44 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 17 Aug 2017 18:49:13 GMT
ENV RABBITMQ_VERSION=3.6.11
# Thu, 17 Aug 2017 18:49:22 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 17 Aug 2017 18:49:22 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 17 Aug 2017 18:49:23 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 17 Aug 2017 18:49:23 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 17 Aug 2017 18:49:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 17 Aug 2017 18:49:25 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 17 Aug 2017 18:49:26 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Thu, 17 Aug 2017 18:49:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Aug 2017 18:49:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 17 Aug 2017 18:49:27 GMT
CMD ["rabbitmq-server"]
# Thu, 17 Aug 2017 18:49:38 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 17 Aug 2017 18:49:38 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37b1a2424b372f996179868a278be3230143b93c679750e13cd52eb674e0e44`  
		Last Modified: Fri, 30 Jun 2017 00:38:07 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2799929042f7ada2eec6ec6ea4af2c39539f544d6c1b36e92195bb3cd83a0c7d`  
		Last Modified: Fri, 30 Jun 2017 00:38:07 GMT  
		Size: 8.2 KB (8166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0ac93c08db37625c342fe9a65b6eb0369722c8a0441b0bf3bf4a33e8a3fa3d`  
		Last Modified: Fri, 30 Jun 2017 00:38:10 GMT  
		Size: 16.5 MB (16540741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc18c248a7b09c595ed915b59b5d2be03d29241d17ca4566cd38a9e4852a482`  
		Last Modified: Thu, 17 Aug 2017 18:51:24 GMT  
		Size: 5.0 MB (5010522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9085838e09d844d015cb78f2c302c143e24f95d5dec56858a99a84179e4a1e3c`  
		Last Modified: Thu, 17 Aug 2017 18:51:23 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f793b591a3ec7956472c1cc21d47c78da72c735460d4fef6f98566ea23e41d3`  
		Last Modified: Thu, 17 Aug 2017 18:51:24 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42da39c9c3ca8d1398006da3a5bb40a46b1e4976bccacd2f471c64f2913db233`  
		Last Modified: Thu, 17 Aug 2017 18:51:23 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a442df563426000498edd37bd6fa44c62e2dc7485517535bbd19fbc00cc2843`  
		Last Modified: Thu, 17 Aug 2017 18:51:23 GMT  
		Size: 4.1 KB (4051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f3876b0e0cbea02972afb64eff8eb29eb97a64337bd1693d2ca40c9f6d3211`  
		Last Modified: Thu, 17 Aug 2017 18:52:03 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
