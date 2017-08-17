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
$ docker pull rabbitmq@sha256:31cc94e5e0bd57bcbbdf1e2779ddf812c09497e0517c4e008c9ca2a85f22e637
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.11` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62656628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88b79c465d96ab0280b6d9cdf909a8c11c8e7aa4042b768e00a3ed82facecf8b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:05 GMT
ADD file:fa8dd9a679f473a9082dac89603a1ed7b6ad4cd20e8e996f0ac7b412d379761e in / 
# Mon, 24 Jul 2017 16:53:06 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 09:08:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 09:08:15 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 26 Jul 2017 09:08:16 GMT
ENV GOSU_VERSION=1.10
# Wed, 26 Jul 2017 09:08:27 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 09:08:47 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 09:08:47 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 26 Jul 2017 09:08:50 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 09:08:51 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Thu, 17 Aug 2017 18:48:35 GMT
ENV RABBITMQ_VERSION=3.6.11
# Thu, 17 Aug 2017 18:48:36 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.11-1
# Thu, 17 Aug 2017 18:48:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 17 Aug 2017 18:48:50 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Aug 2017 18:48:50 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 17 Aug 2017 18:48:52 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 17 Aug 2017 18:48:52 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 17 Aug 2017 18:48:53 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 17 Aug 2017 18:48:54 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Thu, 17 Aug 2017 18:48:55 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Thu, 17 Aug 2017 18:48:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 17 Aug 2017 18:48:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Aug 2017 18:48:57 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 17 Aug 2017 18:48:57 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:94ed0c431eb58b1c824715ac158d102bc78b5eb9d690579da5d8bc96b190eb67`  
		Last Modified: Mon, 24 Jul 2017 17:00:05 GMT  
		Size: 22.5 MB (22491744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecab2d521afa730d497092c8a05df7f598ecc8205fd51ca06c0bfed72e17638`  
		Last Modified: Wed, 26 Jul 2017 09:09:16 GMT  
		Size: 4.3 MB (4311817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f2fa34a0bae8728ab33be7200f23e264e43ecfbc254d64fc3945c278b59e3d`  
		Last Modified: Wed, 26 Jul 2017 09:09:14 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06d3b56ae43299298bdd3bc0a0c2284ec1b6f303fa19babb7188e8f1410d1a7`  
		Last Modified: Wed, 26 Jul 2017 09:09:14 GMT  
		Size: 951.9 KB (951893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210ab29dcdfe406f4d3ef599250963b2d9539242c8087b96f0cb3a9ce3ea178c`  
		Last Modified: Wed, 26 Jul 2017 09:09:17 GMT  
		Size: 27.7 MB (27696712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3917c93893a59eabdc25d0cf1b22fd05642fd25c9bccf66195d773b536a034ca`  
		Last Modified: Wed, 26 Jul 2017 09:09:14 GMT  
		Size: 3.1 KB (3094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee922bf953e11f03f04962128cf7fc03b290990716c757c23474d33aeaf1a5a4`  
		Last Modified: Wed, 26 Jul 2017 09:09:13 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dab6bd81fdb89538db6646b37f897221bec0362bb352b7666796c1cdcd708ee`  
		Last Modified: Thu, 17 Aug 2017 18:49:53 GMT  
		Size: 7.2 MB (7190409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b4504dcd8bc823ab8816a34eaa014afa84ef284f9cd47803bcee45d8b7ce15`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:670dea9fa5e8d4ca55f9ee4293c8f0982d1c6b7686ae0836e66e04fb7b8c01e0`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41713395954d148412bc548a6e3f12dcaf866e7ef74d33cdb1077a7f7bce5b24`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2442299bf13f0411441d132403dc1329f68b98a362333cdbe022868e23a99b9f`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 4.1 KB (4063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d73cddbdbd07f39787585391ea12d8b1bdd9cdcaf30d09299be257cfd464df`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6`

```console
$ docker pull rabbitmq@sha256:31cc94e5e0bd57bcbbdf1e2779ddf812c09497e0517c4e008c9ca2a85f22e637
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62656628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88b79c465d96ab0280b6d9cdf909a8c11c8e7aa4042b768e00a3ed82facecf8b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:05 GMT
ADD file:fa8dd9a679f473a9082dac89603a1ed7b6ad4cd20e8e996f0ac7b412d379761e in / 
# Mon, 24 Jul 2017 16:53:06 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 09:08:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 09:08:15 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 26 Jul 2017 09:08:16 GMT
ENV GOSU_VERSION=1.10
# Wed, 26 Jul 2017 09:08:27 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 09:08:47 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 09:08:47 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 26 Jul 2017 09:08:50 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 09:08:51 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Thu, 17 Aug 2017 18:48:35 GMT
ENV RABBITMQ_VERSION=3.6.11
# Thu, 17 Aug 2017 18:48:36 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.11-1
# Thu, 17 Aug 2017 18:48:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 17 Aug 2017 18:48:50 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Aug 2017 18:48:50 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 17 Aug 2017 18:48:52 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 17 Aug 2017 18:48:52 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 17 Aug 2017 18:48:53 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 17 Aug 2017 18:48:54 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Thu, 17 Aug 2017 18:48:55 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Thu, 17 Aug 2017 18:48:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 17 Aug 2017 18:48:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Aug 2017 18:48:57 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 17 Aug 2017 18:48:57 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:94ed0c431eb58b1c824715ac158d102bc78b5eb9d690579da5d8bc96b190eb67`  
		Last Modified: Mon, 24 Jul 2017 17:00:05 GMT  
		Size: 22.5 MB (22491744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecab2d521afa730d497092c8a05df7f598ecc8205fd51ca06c0bfed72e17638`  
		Last Modified: Wed, 26 Jul 2017 09:09:16 GMT  
		Size: 4.3 MB (4311817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f2fa34a0bae8728ab33be7200f23e264e43ecfbc254d64fc3945c278b59e3d`  
		Last Modified: Wed, 26 Jul 2017 09:09:14 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06d3b56ae43299298bdd3bc0a0c2284ec1b6f303fa19babb7188e8f1410d1a7`  
		Last Modified: Wed, 26 Jul 2017 09:09:14 GMT  
		Size: 951.9 KB (951893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210ab29dcdfe406f4d3ef599250963b2d9539242c8087b96f0cb3a9ce3ea178c`  
		Last Modified: Wed, 26 Jul 2017 09:09:17 GMT  
		Size: 27.7 MB (27696712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3917c93893a59eabdc25d0cf1b22fd05642fd25c9bccf66195d773b536a034ca`  
		Last Modified: Wed, 26 Jul 2017 09:09:14 GMT  
		Size: 3.1 KB (3094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee922bf953e11f03f04962128cf7fc03b290990716c757c23474d33aeaf1a5a4`  
		Last Modified: Wed, 26 Jul 2017 09:09:13 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dab6bd81fdb89538db6646b37f897221bec0362bb352b7666796c1cdcd708ee`  
		Last Modified: Thu, 17 Aug 2017 18:49:53 GMT  
		Size: 7.2 MB (7190409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b4504dcd8bc823ab8816a34eaa014afa84ef284f9cd47803bcee45d8b7ce15`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:670dea9fa5e8d4ca55f9ee4293c8f0982d1c6b7686ae0836e66e04fb7b8c01e0`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41713395954d148412bc548a6e3f12dcaf866e7ef74d33cdb1077a7f7bce5b24`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2442299bf13f0411441d132403dc1329f68b98a362333cdbe022868e23a99b9f`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 4.1 KB (4063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d73cddbdbd07f39787585391ea12d8b1bdd9cdcaf30d09299be257cfd464df`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3`

```console
$ docker pull rabbitmq@sha256:31cc94e5e0bd57bcbbdf1e2779ddf812c09497e0517c4e008c9ca2a85f22e637
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62656628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88b79c465d96ab0280b6d9cdf909a8c11c8e7aa4042b768e00a3ed82facecf8b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:05 GMT
ADD file:fa8dd9a679f473a9082dac89603a1ed7b6ad4cd20e8e996f0ac7b412d379761e in / 
# Mon, 24 Jul 2017 16:53:06 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 09:08:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 09:08:15 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 26 Jul 2017 09:08:16 GMT
ENV GOSU_VERSION=1.10
# Wed, 26 Jul 2017 09:08:27 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 09:08:47 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 09:08:47 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 26 Jul 2017 09:08:50 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 09:08:51 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Thu, 17 Aug 2017 18:48:35 GMT
ENV RABBITMQ_VERSION=3.6.11
# Thu, 17 Aug 2017 18:48:36 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.11-1
# Thu, 17 Aug 2017 18:48:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 17 Aug 2017 18:48:50 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Aug 2017 18:48:50 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 17 Aug 2017 18:48:52 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 17 Aug 2017 18:48:52 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 17 Aug 2017 18:48:53 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 17 Aug 2017 18:48:54 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Thu, 17 Aug 2017 18:48:55 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Thu, 17 Aug 2017 18:48:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 17 Aug 2017 18:48:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Aug 2017 18:48:57 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 17 Aug 2017 18:48:57 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:94ed0c431eb58b1c824715ac158d102bc78b5eb9d690579da5d8bc96b190eb67`  
		Last Modified: Mon, 24 Jul 2017 17:00:05 GMT  
		Size: 22.5 MB (22491744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecab2d521afa730d497092c8a05df7f598ecc8205fd51ca06c0bfed72e17638`  
		Last Modified: Wed, 26 Jul 2017 09:09:16 GMT  
		Size: 4.3 MB (4311817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f2fa34a0bae8728ab33be7200f23e264e43ecfbc254d64fc3945c278b59e3d`  
		Last Modified: Wed, 26 Jul 2017 09:09:14 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06d3b56ae43299298bdd3bc0a0c2284ec1b6f303fa19babb7188e8f1410d1a7`  
		Last Modified: Wed, 26 Jul 2017 09:09:14 GMT  
		Size: 951.9 KB (951893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210ab29dcdfe406f4d3ef599250963b2d9539242c8087b96f0cb3a9ce3ea178c`  
		Last Modified: Wed, 26 Jul 2017 09:09:17 GMT  
		Size: 27.7 MB (27696712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3917c93893a59eabdc25d0cf1b22fd05642fd25c9bccf66195d773b536a034ca`  
		Last Modified: Wed, 26 Jul 2017 09:09:14 GMT  
		Size: 3.1 KB (3094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee922bf953e11f03f04962128cf7fc03b290990716c757c23474d33aeaf1a5a4`  
		Last Modified: Wed, 26 Jul 2017 09:09:13 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dab6bd81fdb89538db6646b37f897221bec0362bb352b7666796c1cdcd708ee`  
		Last Modified: Thu, 17 Aug 2017 18:49:53 GMT  
		Size: 7.2 MB (7190409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b4504dcd8bc823ab8816a34eaa014afa84ef284f9cd47803bcee45d8b7ce15`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:670dea9fa5e8d4ca55f9ee4293c8f0982d1c6b7686ae0836e66e04fb7b8c01e0`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41713395954d148412bc548a6e3f12dcaf866e7ef74d33cdb1077a7f7bce5b24`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2442299bf13f0411441d132403dc1329f68b98a362333cdbe022868e23a99b9f`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 4.1 KB (4063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d73cddbdbd07f39787585391ea12d8b1bdd9cdcaf30d09299be257cfd464df`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:latest`

```console
$ docker pull rabbitmq@sha256:31cc94e5e0bd57bcbbdf1e2779ddf812c09497e0517c4e008c9ca2a85f22e637
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62656628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88b79c465d96ab0280b6d9cdf909a8c11c8e7aa4042b768e00a3ed82facecf8b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:05 GMT
ADD file:fa8dd9a679f473a9082dac89603a1ed7b6ad4cd20e8e996f0ac7b412d379761e in / 
# Mon, 24 Jul 2017 16:53:06 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 09:08:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 09:08:15 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 26 Jul 2017 09:08:16 GMT
ENV GOSU_VERSION=1.10
# Wed, 26 Jul 2017 09:08:27 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 09:08:47 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 09:08:47 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 26 Jul 2017 09:08:50 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 09:08:51 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Thu, 17 Aug 2017 18:48:35 GMT
ENV RABBITMQ_VERSION=3.6.11
# Thu, 17 Aug 2017 18:48:36 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.11-1
# Thu, 17 Aug 2017 18:48:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 17 Aug 2017 18:48:50 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Aug 2017 18:48:50 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 17 Aug 2017 18:48:52 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 17 Aug 2017 18:48:52 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 17 Aug 2017 18:48:53 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 17 Aug 2017 18:48:54 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Thu, 17 Aug 2017 18:48:55 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Thu, 17 Aug 2017 18:48:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 17 Aug 2017 18:48:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Aug 2017 18:48:57 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 17 Aug 2017 18:48:57 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:94ed0c431eb58b1c824715ac158d102bc78b5eb9d690579da5d8bc96b190eb67`  
		Last Modified: Mon, 24 Jul 2017 17:00:05 GMT  
		Size: 22.5 MB (22491744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecab2d521afa730d497092c8a05df7f598ecc8205fd51ca06c0bfed72e17638`  
		Last Modified: Wed, 26 Jul 2017 09:09:16 GMT  
		Size: 4.3 MB (4311817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f2fa34a0bae8728ab33be7200f23e264e43ecfbc254d64fc3945c278b59e3d`  
		Last Modified: Wed, 26 Jul 2017 09:09:14 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06d3b56ae43299298bdd3bc0a0c2284ec1b6f303fa19babb7188e8f1410d1a7`  
		Last Modified: Wed, 26 Jul 2017 09:09:14 GMT  
		Size: 951.9 KB (951893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210ab29dcdfe406f4d3ef599250963b2d9539242c8087b96f0cb3a9ce3ea178c`  
		Last Modified: Wed, 26 Jul 2017 09:09:17 GMT  
		Size: 27.7 MB (27696712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3917c93893a59eabdc25d0cf1b22fd05642fd25c9bccf66195d773b536a034ca`  
		Last Modified: Wed, 26 Jul 2017 09:09:14 GMT  
		Size: 3.1 KB (3094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee922bf953e11f03f04962128cf7fc03b290990716c757c23474d33aeaf1a5a4`  
		Last Modified: Wed, 26 Jul 2017 09:09:13 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dab6bd81fdb89538db6646b37f897221bec0362bb352b7666796c1cdcd708ee`  
		Last Modified: Thu, 17 Aug 2017 18:49:53 GMT  
		Size: 7.2 MB (7190409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b4504dcd8bc823ab8816a34eaa014afa84ef284f9cd47803bcee45d8b7ce15`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:670dea9fa5e8d4ca55f9ee4293c8f0982d1c6b7686ae0836e66e04fb7b8c01e0`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41713395954d148412bc548a6e3f12dcaf866e7ef74d33cdb1077a7f7bce5b24`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2442299bf13f0411441d132403dc1329f68b98a362333cdbe022868e23a99b9f`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 4.1 KB (4063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d73cddbdbd07f39787585391ea12d8b1bdd9cdcaf30d09299be257cfd464df`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.11-management`

```console
$ docker pull rabbitmq@sha256:2d8c4e82023e4cbe76ebfc1695d849854678fbe8faa8d7f22c0bc49efce4bfdd
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.11-management` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62656817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb11f4e0a6b6fa0d04d5a997ac9ad91c3950dfe8954e30f541fae35de7a02cc6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:05 GMT
ADD file:fa8dd9a679f473a9082dac89603a1ed7b6ad4cd20e8e996f0ac7b412d379761e in / 
# Mon, 24 Jul 2017 16:53:06 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 09:08:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 09:08:15 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 26 Jul 2017 09:08:16 GMT
ENV GOSU_VERSION=1.10
# Wed, 26 Jul 2017 09:08:27 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 09:08:47 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 09:08:47 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 26 Jul 2017 09:08:50 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 09:08:51 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Thu, 17 Aug 2017 18:48:35 GMT
ENV RABBITMQ_VERSION=3.6.11
# Thu, 17 Aug 2017 18:48:36 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.11-1
# Thu, 17 Aug 2017 18:48:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 17 Aug 2017 18:48:50 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Aug 2017 18:48:50 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 17 Aug 2017 18:48:52 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 17 Aug 2017 18:48:52 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 17 Aug 2017 18:48:53 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 17 Aug 2017 18:48:54 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Thu, 17 Aug 2017 18:48:55 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Thu, 17 Aug 2017 18:48:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 17 Aug 2017 18:48:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Aug 2017 18:48:57 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 17 Aug 2017 18:48:57 GMT
CMD ["rabbitmq-server"]
# Thu, 17 Aug 2017 18:49:06 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 17 Aug 2017 18:49:07 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:94ed0c431eb58b1c824715ac158d102bc78b5eb9d690579da5d8bc96b190eb67`  
		Last Modified: Mon, 24 Jul 2017 17:00:05 GMT  
		Size: 22.5 MB (22491744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecab2d521afa730d497092c8a05df7f598ecc8205fd51ca06c0bfed72e17638`  
		Last Modified: Wed, 26 Jul 2017 09:09:16 GMT  
		Size: 4.3 MB (4311817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f2fa34a0bae8728ab33be7200f23e264e43ecfbc254d64fc3945c278b59e3d`  
		Last Modified: Wed, 26 Jul 2017 09:09:14 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06d3b56ae43299298bdd3bc0a0c2284ec1b6f303fa19babb7188e8f1410d1a7`  
		Last Modified: Wed, 26 Jul 2017 09:09:14 GMT  
		Size: 951.9 KB (951893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210ab29dcdfe406f4d3ef599250963b2d9539242c8087b96f0cb3a9ce3ea178c`  
		Last Modified: Wed, 26 Jul 2017 09:09:17 GMT  
		Size: 27.7 MB (27696712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3917c93893a59eabdc25d0cf1b22fd05642fd25c9bccf66195d773b536a034ca`  
		Last Modified: Wed, 26 Jul 2017 09:09:14 GMT  
		Size: 3.1 KB (3094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee922bf953e11f03f04962128cf7fc03b290990716c757c23474d33aeaf1a5a4`  
		Last Modified: Wed, 26 Jul 2017 09:09:13 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dab6bd81fdb89538db6646b37f897221bec0362bb352b7666796c1cdcd708ee`  
		Last Modified: Thu, 17 Aug 2017 18:49:53 GMT  
		Size: 7.2 MB (7190409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b4504dcd8bc823ab8816a34eaa014afa84ef284f9cd47803bcee45d8b7ce15`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:670dea9fa5e8d4ca55f9ee4293c8f0982d1c6b7686ae0836e66e04fb7b8c01e0`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41713395954d148412bc548a6e3f12dcaf866e7ef74d33cdb1077a7f7bce5b24`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2442299bf13f0411441d132403dc1329f68b98a362333cdbe022868e23a99b9f`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 4.1 KB (4063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d73cddbdbd07f39787585391ea12d8b1bdd9cdcaf30d09299be257cfd464df`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2694c0d87540041de4f1930c78f71c86c342a304a92cfe82989d5b44c6b8460d`  
		Last Modified: Thu, 17 Aug 2017 18:50:39 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management`

```console
$ docker pull rabbitmq@sha256:2d8c4e82023e4cbe76ebfc1695d849854678fbe8faa8d7f22c0bc49efce4bfdd
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-management` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62656817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb11f4e0a6b6fa0d04d5a997ac9ad91c3950dfe8954e30f541fae35de7a02cc6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:05 GMT
ADD file:fa8dd9a679f473a9082dac89603a1ed7b6ad4cd20e8e996f0ac7b412d379761e in / 
# Mon, 24 Jul 2017 16:53:06 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 09:08:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 09:08:15 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 26 Jul 2017 09:08:16 GMT
ENV GOSU_VERSION=1.10
# Wed, 26 Jul 2017 09:08:27 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 09:08:47 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 09:08:47 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 26 Jul 2017 09:08:50 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 09:08:51 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Thu, 17 Aug 2017 18:48:35 GMT
ENV RABBITMQ_VERSION=3.6.11
# Thu, 17 Aug 2017 18:48:36 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.11-1
# Thu, 17 Aug 2017 18:48:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 17 Aug 2017 18:48:50 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Aug 2017 18:48:50 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 17 Aug 2017 18:48:52 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 17 Aug 2017 18:48:52 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 17 Aug 2017 18:48:53 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 17 Aug 2017 18:48:54 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Thu, 17 Aug 2017 18:48:55 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Thu, 17 Aug 2017 18:48:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 17 Aug 2017 18:48:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Aug 2017 18:48:57 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 17 Aug 2017 18:48:57 GMT
CMD ["rabbitmq-server"]
# Thu, 17 Aug 2017 18:49:06 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 17 Aug 2017 18:49:07 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:94ed0c431eb58b1c824715ac158d102bc78b5eb9d690579da5d8bc96b190eb67`  
		Last Modified: Mon, 24 Jul 2017 17:00:05 GMT  
		Size: 22.5 MB (22491744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecab2d521afa730d497092c8a05df7f598ecc8205fd51ca06c0bfed72e17638`  
		Last Modified: Wed, 26 Jul 2017 09:09:16 GMT  
		Size: 4.3 MB (4311817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f2fa34a0bae8728ab33be7200f23e264e43ecfbc254d64fc3945c278b59e3d`  
		Last Modified: Wed, 26 Jul 2017 09:09:14 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06d3b56ae43299298bdd3bc0a0c2284ec1b6f303fa19babb7188e8f1410d1a7`  
		Last Modified: Wed, 26 Jul 2017 09:09:14 GMT  
		Size: 951.9 KB (951893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210ab29dcdfe406f4d3ef599250963b2d9539242c8087b96f0cb3a9ce3ea178c`  
		Last Modified: Wed, 26 Jul 2017 09:09:17 GMT  
		Size: 27.7 MB (27696712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3917c93893a59eabdc25d0cf1b22fd05642fd25c9bccf66195d773b536a034ca`  
		Last Modified: Wed, 26 Jul 2017 09:09:14 GMT  
		Size: 3.1 KB (3094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee922bf953e11f03f04962128cf7fc03b290990716c757c23474d33aeaf1a5a4`  
		Last Modified: Wed, 26 Jul 2017 09:09:13 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dab6bd81fdb89538db6646b37f897221bec0362bb352b7666796c1cdcd708ee`  
		Last Modified: Thu, 17 Aug 2017 18:49:53 GMT  
		Size: 7.2 MB (7190409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b4504dcd8bc823ab8816a34eaa014afa84ef284f9cd47803bcee45d8b7ce15`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:670dea9fa5e8d4ca55f9ee4293c8f0982d1c6b7686ae0836e66e04fb7b8c01e0`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41713395954d148412bc548a6e3f12dcaf866e7ef74d33cdb1077a7f7bce5b24`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2442299bf13f0411441d132403dc1329f68b98a362333cdbe022868e23a99b9f`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 4.1 KB (4063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d73cddbdbd07f39787585391ea12d8b1bdd9cdcaf30d09299be257cfd464df`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2694c0d87540041de4f1930c78f71c86c342a304a92cfe82989d5b44c6b8460d`  
		Last Modified: Thu, 17 Aug 2017 18:50:39 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management`

```console
$ docker pull rabbitmq@sha256:2d8c4e82023e4cbe76ebfc1695d849854678fbe8faa8d7f22c0bc49efce4bfdd
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-management` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62656817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb11f4e0a6b6fa0d04d5a997ac9ad91c3950dfe8954e30f541fae35de7a02cc6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:05 GMT
ADD file:fa8dd9a679f473a9082dac89603a1ed7b6ad4cd20e8e996f0ac7b412d379761e in / 
# Mon, 24 Jul 2017 16:53:06 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 09:08:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 09:08:15 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 26 Jul 2017 09:08:16 GMT
ENV GOSU_VERSION=1.10
# Wed, 26 Jul 2017 09:08:27 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 09:08:47 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 09:08:47 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 26 Jul 2017 09:08:50 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 09:08:51 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Thu, 17 Aug 2017 18:48:35 GMT
ENV RABBITMQ_VERSION=3.6.11
# Thu, 17 Aug 2017 18:48:36 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.11-1
# Thu, 17 Aug 2017 18:48:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 17 Aug 2017 18:48:50 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Aug 2017 18:48:50 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 17 Aug 2017 18:48:52 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 17 Aug 2017 18:48:52 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 17 Aug 2017 18:48:53 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 17 Aug 2017 18:48:54 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Thu, 17 Aug 2017 18:48:55 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Thu, 17 Aug 2017 18:48:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 17 Aug 2017 18:48:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Aug 2017 18:48:57 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 17 Aug 2017 18:48:57 GMT
CMD ["rabbitmq-server"]
# Thu, 17 Aug 2017 18:49:06 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 17 Aug 2017 18:49:07 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:94ed0c431eb58b1c824715ac158d102bc78b5eb9d690579da5d8bc96b190eb67`  
		Last Modified: Mon, 24 Jul 2017 17:00:05 GMT  
		Size: 22.5 MB (22491744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecab2d521afa730d497092c8a05df7f598ecc8205fd51ca06c0bfed72e17638`  
		Last Modified: Wed, 26 Jul 2017 09:09:16 GMT  
		Size: 4.3 MB (4311817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f2fa34a0bae8728ab33be7200f23e264e43ecfbc254d64fc3945c278b59e3d`  
		Last Modified: Wed, 26 Jul 2017 09:09:14 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06d3b56ae43299298bdd3bc0a0c2284ec1b6f303fa19babb7188e8f1410d1a7`  
		Last Modified: Wed, 26 Jul 2017 09:09:14 GMT  
		Size: 951.9 KB (951893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210ab29dcdfe406f4d3ef599250963b2d9539242c8087b96f0cb3a9ce3ea178c`  
		Last Modified: Wed, 26 Jul 2017 09:09:17 GMT  
		Size: 27.7 MB (27696712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3917c93893a59eabdc25d0cf1b22fd05642fd25c9bccf66195d773b536a034ca`  
		Last Modified: Wed, 26 Jul 2017 09:09:14 GMT  
		Size: 3.1 KB (3094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee922bf953e11f03f04962128cf7fc03b290990716c757c23474d33aeaf1a5a4`  
		Last Modified: Wed, 26 Jul 2017 09:09:13 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dab6bd81fdb89538db6646b37f897221bec0362bb352b7666796c1cdcd708ee`  
		Last Modified: Thu, 17 Aug 2017 18:49:53 GMT  
		Size: 7.2 MB (7190409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b4504dcd8bc823ab8816a34eaa014afa84ef284f9cd47803bcee45d8b7ce15`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:670dea9fa5e8d4ca55f9ee4293c8f0982d1c6b7686ae0836e66e04fb7b8c01e0`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41713395954d148412bc548a6e3f12dcaf866e7ef74d33cdb1077a7f7bce5b24`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2442299bf13f0411441d132403dc1329f68b98a362333cdbe022868e23a99b9f`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 4.1 KB (4063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d73cddbdbd07f39787585391ea12d8b1bdd9cdcaf30d09299be257cfd464df`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2694c0d87540041de4f1930c78f71c86c342a304a92cfe82989d5b44c6b8460d`  
		Last Modified: Thu, 17 Aug 2017 18:50:39 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management`

```console
$ docker pull rabbitmq@sha256:2d8c4e82023e4cbe76ebfc1695d849854678fbe8faa8d7f22c0bc49efce4bfdd
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:management` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62656817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb11f4e0a6b6fa0d04d5a997ac9ad91c3950dfe8954e30f541fae35de7a02cc6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:05 GMT
ADD file:fa8dd9a679f473a9082dac89603a1ed7b6ad4cd20e8e996f0ac7b412d379761e in / 
# Mon, 24 Jul 2017 16:53:06 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 09:08:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 09:08:15 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 26 Jul 2017 09:08:16 GMT
ENV GOSU_VERSION=1.10
# Wed, 26 Jul 2017 09:08:27 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 09:08:47 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 09:08:47 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 26 Jul 2017 09:08:50 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 09:08:51 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Thu, 17 Aug 2017 18:48:35 GMT
ENV RABBITMQ_VERSION=3.6.11
# Thu, 17 Aug 2017 18:48:36 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.11-1
# Thu, 17 Aug 2017 18:48:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 17 Aug 2017 18:48:50 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Aug 2017 18:48:50 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 17 Aug 2017 18:48:52 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 17 Aug 2017 18:48:52 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 17 Aug 2017 18:48:53 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 17 Aug 2017 18:48:54 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Thu, 17 Aug 2017 18:48:55 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Thu, 17 Aug 2017 18:48:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 17 Aug 2017 18:48:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Aug 2017 18:48:57 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 17 Aug 2017 18:48:57 GMT
CMD ["rabbitmq-server"]
# Thu, 17 Aug 2017 18:49:06 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 17 Aug 2017 18:49:07 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:94ed0c431eb58b1c824715ac158d102bc78b5eb9d690579da5d8bc96b190eb67`  
		Last Modified: Mon, 24 Jul 2017 17:00:05 GMT  
		Size: 22.5 MB (22491744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecab2d521afa730d497092c8a05df7f598ecc8205fd51ca06c0bfed72e17638`  
		Last Modified: Wed, 26 Jul 2017 09:09:16 GMT  
		Size: 4.3 MB (4311817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f2fa34a0bae8728ab33be7200f23e264e43ecfbc254d64fc3945c278b59e3d`  
		Last Modified: Wed, 26 Jul 2017 09:09:14 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06d3b56ae43299298bdd3bc0a0c2284ec1b6f303fa19babb7188e8f1410d1a7`  
		Last Modified: Wed, 26 Jul 2017 09:09:14 GMT  
		Size: 951.9 KB (951893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210ab29dcdfe406f4d3ef599250963b2d9539242c8087b96f0cb3a9ce3ea178c`  
		Last Modified: Wed, 26 Jul 2017 09:09:17 GMT  
		Size: 27.7 MB (27696712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3917c93893a59eabdc25d0cf1b22fd05642fd25c9bccf66195d773b536a034ca`  
		Last Modified: Wed, 26 Jul 2017 09:09:14 GMT  
		Size: 3.1 KB (3094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee922bf953e11f03f04962128cf7fc03b290990716c757c23474d33aeaf1a5a4`  
		Last Modified: Wed, 26 Jul 2017 09:09:13 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dab6bd81fdb89538db6646b37f897221bec0362bb352b7666796c1cdcd708ee`  
		Last Modified: Thu, 17 Aug 2017 18:49:53 GMT  
		Size: 7.2 MB (7190409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b4504dcd8bc823ab8816a34eaa014afa84ef284f9cd47803bcee45d8b7ce15`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 2.2 KB (2249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:670dea9fa5e8d4ca55f9ee4293c8f0982d1c6b7686ae0836e66e04fb7b8c01e0`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41713395954d148412bc548a6e3f12dcaf866e7ef74d33cdb1077a7f7bce5b24`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2442299bf13f0411441d132403dc1329f68b98a362333cdbe022868e23a99b9f`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 4.1 KB (4063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d73cddbdbd07f39787585391ea12d8b1bdd9cdcaf30d09299be257cfd464df`  
		Last Modified: Thu, 17 Aug 2017 18:49:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2694c0d87540041de4f1930c78f71c86c342a304a92cfe82989d5b44c6b8460d`  
		Last Modified: Thu, 17 Aug 2017 18:50:39 GMT  
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
