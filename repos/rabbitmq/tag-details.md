<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rabbitmq`

-	[`rabbitmq:3`](#rabbitmq3)
-	[`rabbitmq:3.6`](#rabbitmq36)
-	[`rabbitmq:3.6.14`](#rabbitmq3614)
-	[`rabbitmq:3.6.14-alpine`](#rabbitmq3614-alpine)
-	[`rabbitmq:3.6.14-management`](#rabbitmq3614-management)
-	[`rabbitmq:3.6.14-management-alpine`](#rabbitmq3614-management-alpine)
-	[`rabbitmq:3.6-alpine`](#rabbitmq36-alpine)
-	[`rabbitmq:3.6-management`](#rabbitmq36-management)
-	[`rabbitmq:3.6-management-alpine`](#rabbitmq36-management-alpine)
-	[`rabbitmq:3-alpine`](#rabbitmq3-alpine)
-	[`rabbitmq:3-management`](#rabbitmq3-management)
-	[`rabbitmq:3-management-alpine`](#rabbitmq3-management-alpine)
-	[`rabbitmq:alpine`](#rabbitmqalpine)
-	[`rabbitmq:latest`](#rabbitmqlatest)
-	[`rabbitmq:management`](#rabbitmqmanagement)
-	[`rabbitmq:management-alpine`](#rabbitmqmanagement-alpine)

## `rabbitmq:3`

```console
$ docker pull rabbitmq@sha256:2fa714203c287748b1d6526e6d15f6ee0cf252dc798149262f86c4d87b95f95b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `rabbitmq:3` - linux; amd64

```console
$ docker pull rabbitmq@sha256:5f14574f9caca83aeb84ac5fc705b000d9640e86e9edd24fff515a763fd1cfca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62945336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79a008b25962e1a143e02b37187f855cb224e2203b94cc9f87e81fe275660c9d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:48 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Sat, 04 Nov 2017 05:26:48 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 17:46:08 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 17:46:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Sat, 04 Nov 2017 17:46:09 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 17:46:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 17:46:49 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 17:46:50 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 04 Nov 2017 17:46:50 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 17:46:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 05:40:26 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 05:40:26 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 05:40:26 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 05:40:46 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 05:40:47 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 05:40:47 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 05:40:47 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 05:40:48 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 05:40:49 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 05:40:49 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 05:40:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 05:40:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 05:40:50 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 05:40:51 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a230aa37269c12703c5faa3deb792f9ad4b64056beb9bcbc1ae43c522a8040`  
		Last Modified: Sat, 04 Nov 2017 17:47:41 GMT  
		Size: 4.5 MB (4498370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9190ffbd22711342d4d9be34c22d639f1f0f3abfe997a5c93cf50107b7a58a81`  
		Last Modified: Sat, 04 Nov 2017 17:47:40 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e829d8f0d28e827108c1c6ff25405743e10cb6acb364dc1ab04670d23c45ee`  
		Last Modified: Sat, 04 Nov 2017 17:47:40 GMT  
		Size: 951.9 KB (951943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2404945c98d3c39a18e3d83787ade2526a1d476b140ad4ca470618135830f5a5`  
		Last Modified: Sat, 04 Nov 2017 17:47:43 GMT  
		Size: 27.7 MB (27703766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629c315aa810b2d8dc5043d457fb370693d1db5478cc2a281cbdf4fcec49ccc6`  
		Last Modified: Wed, 08 Nov 2017 05:41:51 GMT  
		Size: 7.3 MB (7288151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff2b1994ea218ef7f3e9cbd6e6d97ca7e0b7d37c195411073d8e12a823877ab`  
		Last Modified: Wed, 08 Nov 2017 05:41:49 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3246485e4a5d6ac4cbe7306d3fb38a69aa9f63c71821be31fa26b547129e1047`  
		Last Modified: Wed, 08 Nov 2017 05:41:48 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd004dbdde7c3128d1e918a1eb7b8558fb9818be79f618629f3b7cab3f9f2ecc`  
		Last Modified: Wed, 08 Nov 2017 05:41:48 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3f0c64cb0dc2c36ba3e1c9408cc2e006d720b781eaa64000bece26f2ec9e21`  
		Last Modified: Wed, 08 Nov 2017 05:41:48 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d9dcfb8c200f5fa4500f3be05357a6c03c424b5db612b821e76c60b4285093`  
		Last Modified: Wed, 08 Nov 2017 05:41:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:1b0591d0f62220463d8cfa170ec3c230bf0a9cb5f690b997e6cdad122900f956
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.5 MB (58525231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac9a45617cbd7697745465740045ee94c683ffd6bcee469f864ec984f3b14baa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:48 GMT
ADD file:ff9945b48b1ac236dcec24eb9dfaf52b7c151a3b11c8502391f0866dfb4e3ac3 in / 
# Mon, 09 Oct 2017 21:44:48 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 14:14:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 14:14:44 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 03 Nov 2017 14:14:44 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 14:15:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 14:15:50 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 14:15:50 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Nov 2017 14:15:50 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 14:15:51 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 15:14:29 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 15:14:29 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 15:14:29 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 15:14:57 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 15:14:57 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 15:14:58 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 15:14:58 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 15:14:59 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 15:15:00 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 15:15:00 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 15:15:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 15:15:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 15:15:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 15:15:02 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:836d5b6056a9815be79c76480a90299267f60201bd1e3396817003e6c14819cc`  
		Last Modified: Mon, 09 Oct 2017 21:50:56 GMT  
		Size: 21.2 MB (21166251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab996b3d7a101ba6bf42115b4f156db847e321da9af52d5d686d82aa736b585`  
		Last Modified: Sat, 04 Nov 2017 14:15:27 GMT  
		Size: 4.2 MB (4231333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17684896b3ee5196333b6fa48ce590caddf46e21d82a5c5ef0f1a171360a6e17`  
		Last Modified: Sat, 04 Nov 2017 14:15:26 GMT  
		Size: 4.1 KB (4082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:828368257290f3ec36ef92643180012d362674e933b84c2db3c17c07f71d2629`  
		Last Modified: Sat, 04 Nov 2017 14:15:26 GMT  
		Size: 942.5 KB (942454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2fd4a06dc148e5a9a0ca56e46f45a376b486ca2b6c2c542f69e1f95927a7347`  
		Last Modified: Sat, 04 Nov 2017 14:15:31 GMT  
		Size: 25.2 MB (25170644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:706d18646df60ed10159c755526d2bce681fc0af771bbf562b58a57c6512c6c9`  
		Last Modified: Wed, 08 Nov 2017 15:15:31 GMT  
		Size: 7.0 MB (7003775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff375a9d907798e49eb1be06c5009c4a67307bb6bd79e9fccd5b6a0f73f4f86f`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b17b1ed86927f886e17566b808e1906e805150a31f499d189c0f500e15e33f19`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffbb30b719bc8fd2f4fda42258907104a5aacb01efaa78a84b5c2f7115bb59d0`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d48d2b51e4f81a9e2887218e78e5127274b6b3f08216a8b3f8e9000f88b11b`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad332c481563702001f742604f7523dd29b563a34d9916885ccc763b0ae829d6`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:715f2ed3ae0a8e638b541ae46e41f10723c0f7504ac741e2f5251f25b03fa675
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.8 MB (55780373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97faed3cb8ec4b60935e545d61ef4cb2804977334e5738d9faaddb6e700dc7d0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 13:07:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 13:07:42 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 03 Nov 2017 13:07:42 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 13:07:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 13:08:17 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 13:08:17 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Nov 2017 13:08:17 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 13:08:18 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 14:07:33 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 14:07:33 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 14:07:33 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 14:07:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 14:07:56 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 14:07:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 14:07:58 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 14:07:59 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 14:08:00 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 14:08:00 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 14:08:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 14:08:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 14:08:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 14:08:02 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:59e81a3fde58ec8d4b8f2f58b98ef2f4d951d37dd9b99b016fd294a8e07d7796`  
		Last Modified: Mon, 09 Oct 2017 21:52:49 GMT  
		Size: 19.3 MB (19277135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2037b99f3c3dc51e8ace39aed9971155f34f325ac4f0a1e56a07c4d6c02f5ae6`  
		Last Modified: Fri, 03 Nov 2017 13:09:18 GMT  
		Size: 3.9 MB (3868347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f368172ea96bda944832762ad29b52dfe17ec5e6fae96eee37adc4e9d68674a5`  
		Last Modified: Fri, 03 Nov 2017 13:09:16 GMT  
		Size: 4.1 KB (4084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:893cc1ae60f8bf72ac3020ccc60b22d9e0ad0cb0647e15bc4847d08c8985eee2`  
		Last Modified: Fri, 03 Nov 2017 13:09:16 GMT  
		Size: 926.1 KB (926097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13220cc1a683014bda9cfae7f7ee7015a26b28048f90f5aa3ed8b6a96f4b2813`  
		Last Modified: Fri, 03 Nov 2017 13:09:20 GMT  
		Size: 24.8 MB (24785610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58a356878563ee7880f7ea397896a76cf556256188c064dfaa395c4eb8b307a`  
		Last Modified: Wed, 08 Nov 2017 14:08:36 GMT  
		Size: 6.9 MB (6912409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a84d7e484060abe56af99e3243e35870226baf3d464594649cde00b432409b`  
		Last Modified: Wed, 08 Nov 2017 14:08:32 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a4dda82cd90132fc6846f338ac824d01d2491a4dc9c7a2148e45dd36c1a07c1`  
		Last Modified: Wed, 08 Nov 2017 14:08:32 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb5a1bbcad31fe9218b4c700e6e6f49222b30383dd5d44e2f19ff528acf5779`  
		Last Modified: Wed, 08 Nov 2017 14:08:32 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6e3a0fc563c4eadf4b3e4275c74aad4341c977d1fbe0f7cb22c802371e0280`  
		Last Modified: Wed, 08 Nov 2017 14:08:34 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7566f7d60e14ccc8d5e2598242a25fe6b378d6777221884a5ee75ff2e99001c`  
		Last Modified: Wed, 08 Nov 2017 14:08:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:4168a3f7ea16661ae4f05ab9fd21c258d590041e233029cfb199a75d55a924c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57371113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af4cb3ee80c465ed6074b3ecddd1fe0ce3d801423e3017c5e77638f8bcc8fe42`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 13:53:20 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 13:53:22 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 03 Nov 2017 13:53:23 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 19:34:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 19:35:29 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:35:29 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 04 Nov 2017 19:35:30 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 19:35:31 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 14:53:01 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 14:53:02 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 14:53:02 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 14:55:19 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 14:55:19 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 14:55:21 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 14:55:22 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 14:55:23 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 14:55:25 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 14:55:26 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 14:55:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 14:55:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 14:55:30 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 14:55:30 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e907afd6e25615a4d3eb554d930cef57b87e79ec82413889c2eac38beb4eb8f7`  
		Last Modified: Mon, 09 Oct 2017 22:03:08 GMT  
		Size: 20.3 MB (20337143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f0e65f9ffb0e8a0344de3620c73aa9cd2d1ae973a3cf7588e6441034e9822e`  
		Last Modified: Sat, 04 Nov 2017 19:40:47 GMT  
		Size: 4.1 MB (4073213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bed6073dce4194deeccf2caa0ec9b97ec2177bc41b7b540c17cdf13fda94ff0`  
		Last Modified: Sat, 04 Nov 2017 19:40:45 GMT  
		Size: 4.1 KB (4084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0596ffaef28f501b64c44c84ad20044e9016acaa66310b575a15244c91f49e`  
		Last Modified: Sat, 04 Nov 2017 19:40:46 GMT  
		Size: 919.4 KB (919403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda14140ddcfb15fd8d4be24ae1356f497b7833c12233249de7016e1f2daf9f8`  
		Last Modified: Sat, 04 Nov 2017 19:40:51 GMT  
		Size: 25.0 MB (25042388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78ee2824b70d54b867b533443f6fd14f51e18f23759b80153c869a2968e569b`  
		Last Modified: Wed, 08 Nov 2017 14:57:26 GMT  
		Size: 7.0 MB (6988187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ca626918894c95f51ccc210a06699be77ca84210960cd18a30b55d87d56c73`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8571e229aa778383fbbbdb4c00374d68b5bfafdb419ab20b842307aab4fcedc7`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2bf9029e48f539b6a5f83c8b3d3dda09c821b3d219d121afa9217295dcde9dd`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e538834de5f58eecf0df7ac787b4c94167bd6a9866534400d2eb04acd9c32e85`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf4d77c8deac6d39c639b9f2446f4a57e2d71802b537e300a5d548c6ca98647`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3` - linux; 386

```console
$ docker pull rabbitmq@sha256:e6e6c680ab64fa4a4805ffdd3ac08340f63ee8747f6f40245f419fca5b6188c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.0 MB (63997016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3d401a69a599fb8e174505e97fdc1d89de6de3d5171e290f5f6d81f27157fe2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:36 GMT
ADD file:6582536277127947668f7bfdc1471a4e36170915b91a4cb841e7e1bfa1de6535 in / 
# Mon, 09 Oct 2017 21:45:36 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 10:45:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:45:12 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 03 Nov 2017 10:45:13 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 10:45:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 10:46:03 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:46:04 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Nov 2017 10:46:04 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 10:46:04 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 11:48:47 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 11:48:48 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 11:48:48 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 11:49:12 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 11:49:12 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 11:49:13 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 11:49:13 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 11:49:14 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 11:49:14 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 11:49:15 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 11:49:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 11:49:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 11:49:16 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 11:49:16 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:b2b52fe46b29fe5d0689f26449c2114e40f0731d4ce3eb8c3941397b74205432`  
		Last Modified: Mon, 09 Oct 2017 21:53:42 GMT  
		Size: 23.1 MB (23128678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d407b136da0731f5f38279001e9dd426217937443cad0f16e1f242366290773`  
		Last Modified: Fri, 03 Nov 2017 10:47:13 GMT  
		Size: 4.8 MB (4803637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c93817e78345b4b5070c81e5a37d02afc2b5fe347a1a4bf59e09f6084814fd2`  
		Last Modified: Fri, 03 Nov 2017 10:47:12 GMT  
		Size: 4.1 KB (4057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f97eae59c75f8f814ab781f5239ac2e132b7b65c77e75b35023c603c539ca54f`  
		Last Modified: Fri, 03 Nov 2017 10:47:12 GMT  
		Size: 931.5 KB (931524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aed670dee19fde6946658d7129e13520c1a0747f8b80b6f92dac5f6d974ae52`  
		Last Modified: Fri, 03 Nov 2017 10:47:24 GMT  
		Size: 27.8 MB (27818690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11406d3e0ee6652316aef307f374537466b83e9a8b039ac094bec9a91db51f0b`  
		Last Modified: Wed, 08 Nov 2017 11:50:31 GMT  
		Size: 7.3 MB (7303738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608b7a338130eaf9ca53ab8aae04dc703a6449fa58eba5be04558381ec57eaab`  
		Last Modified: Wed, 08 Nov 2017 11:50:29 GMT  
		Size: 2.3 KB (2258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9380c3d6a421026f3c7f6831ec07ffb5eb0aece161f5f828a30dec24044705`  
		Last Modified: Wed, 08 Nov 2017 11:50:30 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b5305e32a2ea4c0bfc2c36460511eb7875a23f38fdd44fa8fa2f50a02c2658`  
		Last Modified: Wed, 08 Nov 2017 11:50:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1f16767fe3e5b4874ee86ccb33504606a39510dad06040c122662771157998`  
		Last Modified: Wed, 08 Nov 2017 11:50:30 GMT  
		Size: 4.0 KB (4040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc67a88011d726ea1e2a91b28cbe29e7aa9ba1026baf0890e813ce685ae28368`  
		Last Modified: Wed, 08 Nov 2017 11:50:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3` - linux; s390x

```console
$ docker pull rabbitmq@sha256:d6270e1e222ebcb8c68988edbf05c72b930d7d7d4b886145c4bfd5480a177099
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60460358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:540087ce54199f47c40b065dfb0f638dc9bbae87d4958fdec63d30858e95fc83`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:35 GMT
ADD file:ae4aaa6affe22f36ab5478771d5c84917f72de7a8dac16345a035709a1a5edf4 in / 
# Mon, 09 Oct 2017 21:44:36 GMT
CMD ["bash"]
# Thu, 02 Nov 2017 17:06:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 17:06:41 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 02 Nov 2017 17:06:42 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 17:07:21 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 02 Nov 2017 17:07:43 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 17:07:44 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 02 Nov 2017 17:07:44 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 17:07:44 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 18:06:32 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 18:06:32 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 18:06:32 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 18:07:19 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 18:07:19 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 18:07:20 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 18:07:20 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 18:07:21 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 18:07:21 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 18:07:22 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 18:07:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 18:07:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 18:07:23 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 18:07:23 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:671716cc49517eef5f430c695ce344d63e390cb65f58d30939f2ba615c953686`  
		Last Modified: Mon, 09 Oct 2017 21:49:09 GMT  
		Size: 22.3 MB (22339951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cae61f12be6f01ba06573d9393712e91821cd5496302310f550fe5842dea557`  
		Last Modified: Fri, 03 Nov 2017 17:08:41 GMT  
		Size: 4.5 MB (4529879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca307103ce923e7e89d35185be4df8e54c3c0b54d259b8880aa7bae107d4952`  
		Last Modified: Fri, 03 Nov 2017 17:08:39 GMT  
		Size: 4.1 KB (4074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d16320f9fc35ea20ba7fb9b21f88e3f0f06c52d416682319f3b2a85a345a3d5`  
		Last Modified: Fri, 03 Nov 2017 17:08:39 GMT  
		Size: 938.0 KB (938019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801205b182b8d6f7acf36200b2ba07ed52ea224dfefe792b525224e4aacb4d4a`  
		Last Modified: Fri, 03 Nov 2017 17:08:48 GMT  
		Size: 25.6 MB (25619372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12ce67a630f123e36df054e0e90c31abb3d517dd984362eaa6cf7bc070304fe`  
		Last Modified: Wed, 08 Nov 2017 18:08:14 GMT  
		Size: 7.0 MB (7022368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f4dea1598011d081121e868c941bd695758683908030b52f8731656d62b8fc`  
		Last Modified: Wed, 08 Nov 2017 18:08:12 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1968b253d8ac805bf6188d47995cd6f0a576a4f34ccd66b9bc418a0dc94fa251`  
		Last Modified: Wed, 08 Nov 2017 18:08:12 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd7240ae1eb0726c11374653d1ea68694dd90bc2f2ae12d89158626f02ce3f8`  
		Last Modified: Wed, 08 Nov 2017 18:08:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:380b1c8ca0aabd89f393a15a64c185770c2628bf5299026d12eb21b8a1e293e0`  
		Last Modified: Wed, 08 Nov 2017 18:08:13 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee865b81bc6c91cba724881b543ca690115dd90710a4fa43a8eae27e136cfb4b`  
		Last Modified: Wed, 08 Nov 2017 18:08:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6`

```console
$ docker pull rabbitmq@sha256:2fa714203c287748b1d6526e6d15f6ee0cf252dc798149262f86c4d87b95f95b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `rabbitmq:3.6` - linux; amd64

```console
$ docker pull rabbitmq@sha256:5f14574f9caca83aeb84ac5fc705b000d9640e86e9edd24fff515a763fd1cfca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62945336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79a008b25962e1a143e02b37187f855cb224e2203b94cc9f87e81fe275660c9d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:48 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Sat, 04 Nov 2017 05:26:48 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 17:46:08 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 17:46:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Sat, 04 Nov 2017 17:46:09 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 17:46:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 17:46:49 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 17:46:50 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 04 Nov 2017 17:46:50 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 17:46:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 05:40:26 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 05:40:26 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 05:40:26 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 05:40:46 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 05:40:47 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 05:40:47 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 05:40:47 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 05:40:48 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 05:40:49 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 05:40:49 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 05:40:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 05:40:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 05:40:50 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 05:40:51 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a230aa37269c12703c5faa3deb792f9ad4b64056beb9bcbc1ae43c522a8040`  
		Last Modified: Sat, 04 Nov 2017 17:47:41 GMT  
		Size: 4.5 MB (4498370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9190ffbd22711342d4d9be34c22d639f1f0f3abfe997a5c93cf50107b7a58a81`  
		Last Modified: Sat, 04 Nov 2017 17:47:40 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e829d8f0d28e827108c1c6ff25405743e10cb6acb364dc1ab04670d23c45ee`  
		Last Modified: Sat, 04 Nov 2017 17:47:40 GMT  
		Size: 951.9 KB (951943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2404945c98d3c39a18e3d83787ade2526a1d476b140ad4ca470618135830f5a5`  
		Last Modified: Sat, 04 Nov 2017 17:47:43 GMT  
		Size: 27.7 MB (27703766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629c315aa810b2d8dc5043d457fb370693d1db5478cc2a281cbdf4fcec49ccc6`  
		Last Modified: Wed, 08 Nov 2017 05:41:51 GMT  
		Size: 7.3 MB (7288151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff2b1994ea218ef7f3e9cbd6e6d97ca7e0b7d37c195411073d8e12a823877ab`  
		Last Modified: Wed, 08 Nov 2017 05:41:49 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3246485e4a5d6ac4cbe7306d3fb38a69aa9f63c71821be31fa26b547129e1047`  
		Last Modified: Wed, 08 Nov 2017 05:41:48 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd004dbdde7c3128d1e918a1eb7b8558fb9818be79f618629f3b7cab3f9f2ecc`  
		Last Modified: Wed, 08 Nov 2017 05:41:48 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3f0c64cb0dc2c36ba3e1c9408cc2e006d720b781eaa64000bece26f2ec9e21`  
		Last Modified: Wed, 08 Nov 2017 05:41:48 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d9dcfb8c200f5fa4500f3be05357a6c03c424b5db612b821e76c60b4285093`  
		Last Modified: Wed, 08 Nov 2017 05:41:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:1b0591d0f62220463d8cfa170ec3c230bf0a9cb5f690b997e6cdad122900f956
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.5 MB (58525231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac9a45617cbd7697745465740045ee94c683ffd6bcee469f864ec984f3b14baa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:48 GMT
ADD file:ff9945b48b1ac236dcec24eb9dfaf52b7c151a3b11c8502391f0866dfb4e3ac3 in / 
# Mon, 09 Oct 2017 21:44:48 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 14:14:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 14:14:44 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 03 Nov 2017 14:14:44 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 14:15:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 14:15:50 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 14:15:50 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Nov 2017 14:15:50 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 14:15:51 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 15:14:29 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 15:14:29 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 15:14:29 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 15:14:57 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 15:14:57 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 15:14:58 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 15:14:58 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 15:14:59 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 15:15:00 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 15:15:00 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 15:15:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 15:15:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 15:15:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 15:15:02 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:836d5b6056a9815be79c76480a90299267f60201bd1e3396817003e6c14819cc`  
		Last Modified: Mon, 09 Oct 2017 21:50:56 GMT  
		Size: 21.2 MB (21166251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab996b3d7a101ba6bf42115b4f156db847e321da9af52d5d686d82aa736b585`  
		Last Modified: Sat, 04 Nov 2017 14:15:27 GMT  
		Size: 4.2 MB (4231333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17684896b3ee5196333b6fa48ce590caddf46e21d82a5c5ef0f1a171360a6e17`  
		Last Modified: Sat, 04 Nov 2017 14:15:26 GMT  
		Size: 4.1 KB (4082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:828368257290f3ec36ef92643180012d362674e933b84c2db3c17c07f71d2629`  
		Last Modified: Sat, 04 Nov 2017 14:15:26 GMT  
		Size: 942.5 KB (942454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2fd4a06dc148e5a9a0ca56e46f45a376b486ca2b6c2c542f69e1f95927a7347`  
		Last Modified: Sat, 04 Nov 2017 14:15:31 GMT  
		Size: 25.2 MB (25170644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:706d18646df60ed10159c755526d2bce681fc0af771bbf562b58a57c6512c6c9`  
		Last Modified: Wed, 08 Nov 2017 15:15:31 GMT  
		Size: 7.0 MB (7003775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff375a9d907798e49eb1be06c5009c4a67307bb6bd79e9fccd5b6a0f73f4f86f`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b17b1ed86927f886e17566b808e1906e805150a31f499d189c0f500e15e33f19`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffbb30b719bc8fd2f4fda42258907104a5aacb01efaa78a84b5c2f7115bb59d0`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d48d2b51e4f81a9e2887218e78e5127274b6b3f08216a8b3f8e9000f88b11b`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad332c481563702001f742604f7523dd29b563a34d9916885ccc763b0ae829d6`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:715f2ed3ae0a8e638b541ae46e41f10723c0f7504ac741e2f5251f25b03fa675
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.8 MB (55780373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97faed3cb8ec4b60935e545d61ef4cb2804977334e5738d9faaddb6e700dc7d0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 13:07:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 13:07:42 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 03 Nov 2017 13:07:42 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 13:07:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 13:08:17 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 13:08:17 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Nov 2017 13:08:17 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 13:08:18 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 14:07:33 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 14:07:33 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 14:07:33 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 14:07:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 14:07:56 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 14:07:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 14:07:58 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 14:07:59 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 14:08:00 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 14:08:00 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 14:08:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 14:08:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 14:08:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 14:08:02 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:59e81a3fde58ec8d4b8f2f58b98ef2f4d951d37dd9b99b016fd294a8e07d7796`  
		Last Modified: Mon, 09 Oct 2017 21:52:49 GMT  
		Size: 19.3 MB (19277135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2037b99f3c3dc51e8ace39aed9971155f34f325ac4f0a1e56a07c4d6c02f5ae6`  
		Last Modified: Fri, 03 Nov 2017 13:09:18 GMT  
		Size: 3.9 MB (3868347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f368172ea96bda944832762ad29b52dfe17ec5e6fae96eee37adc4e9d68674a5`  
		Last Modified: Fri, 03 Nov 2017 13:09:16 GMT  
		Size: 4.1 KB (4084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:893cc1ae60f8bf72ac3020ccc60b22d9e0ad0cb0647e15bc4847d08c8985eee2`  
		Last Modified: Fri, 03 Nov 2017 13:09:16 GMT  
		Size: 926.1 KB (926097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13220cc1a683014bda9cfae7f7ee7015a26b28048f90f5aa3ed8b6a96f4b2813`  
		Last Modified: Fri, 03 Nov 2017 13:09:20 GMT  
		Size: 24.8 MB (24785610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58a356878563ee7880f7ea397896a76cf556256188c064dfaa395c4eb8b307a`  
		Last Modified: Wed, 08 Nov 2017 14:08:36 GMT  
		Size: 6.9 MB (6912409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a84d7e484060abe56af99e3243e35870226baf3d464594649cde00b432409b`  
		Last Modified: Wed, 08 Nov 2017 14:08:32 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a4dda82cd90132fc6846f338ac824d01d2491a4dc9c7a2148e45dd36c1a07c1`  
		Last Modified: Wed, 08 Nov 2017 14:08:32 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb5a1bbcad31fe9218b4c700e6e6f49222b30383dd5d44e2f19ff528acf5779`  
		Last Modified: Wed, 08 Nov 2017 14:08:32 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6e3a0fc563c4eadf4b3e4275c74aad4341c977d1fbe0f7cb22c802371e0280`  
		Last Modified: Wed, 08 Nov 2017 14:08:34 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7566f7d60e14ccc8d5e2598242a25fe6b378d6777221884a5ee75ff2e99001c`  
		Last Modified: Wed, 08 Nov 2017 14:08:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:4168a3f7ea16661ae4f05ab9fd21c258d590041e233029cfb199a75d55a924c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57371113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af4cb3ee80c465ed6074b3ecddd1fe0ce3d801423e3017c5e77638f8bcc8fe42`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 13:53:20 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 13:53:22 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 03 Nov 2017 13:53:23 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 19:34:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 19:35:29 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:35:29 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 04 Nov 2017 19:35:30 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 19:35:31 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 14:53:01 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 14:53:02 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 14:53:02 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 14:55:19 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 14:55:19 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 14:55:21 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 14:55:22 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 14:55:23 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 14:55:25 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 14:55:26 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 14:55:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 14:55:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 14:55:30 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 14:55:30 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e907afd6e25615a4d3eb554d930cef57b87e79ec82413889c2eac38beb4eb8f7`  
		Last Modified: Mon, 09 Oct 2017 22:03:08 GMT  
		Size: 20.3 MB (20337143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f0e65f9ffb0e8a0344de3620c73aa9cd2d1ae973a3cf7588e6441034e9822e`  
		Last Modified: Sat, 04 Nov 2017 19:40:47 GMT  
		Size: 4.1 MB (4073213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bed6073dce4194deeccf2caa0ec9b97ec2177bc41b7b540c17cdf13fda94ff0`  
		Last Modified: Sat, 04 Nov 2017 19:40:45 GMT  
		Size: 4.1 KB (4084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0596ffaef28f501b64c44c84ad20044e9016acaa66310b575a15244c91f49e`  
		Last Modified: Sat, 04 Nov 2017 19:40:46 GMT  
		Size: 919.4 KB (919403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda14140ddcfb15fd8d4be24ae1356f497b7833c12233249de7016e1f2daf9f8`  
		Last Modified: Sat, 04 Nov 2017 19:40:51 GMT  
		Size: 25.0 MB (25042388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78ee2824b70d54b867b533443f6fd14f51e18f23759b80153c869a2968e569b`  
		Last Modified: Wed, 08 Nov 2017 14:57:26 GMT  
		Size: 7.0 MB (6988187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ca626918894c95f51ccc210a06699be77ca84210960cd18a30b55d87d56c73`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8571e229aa778383fbbbdb4c00374d68b5bfafdb419ab20b842307aab4fcedc7`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2bf9029e48f539b6a5f83c8b3d3dda09c821b3d219d121afa9217295dcde9dd`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e538834de5f58eecf0df7ac787b4c94167bd6a9866534400d2eb04acd9c32e85`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf4d77c8deac6d39c639b9f2446f4a57e2d71802b537e300a5d548c6ca98647`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; 386

```console
$ docker pull rabbitmq@sha256:e6e6c680ab64fa4a4805ffdd3ac08340f63ee8747f6f40245f419fca5b6188c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.0 MB (63997016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3d401a69a599fb8e174505e97fdc1d89de6de3d5171e290f5f6d81f27157fe2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:36 GMT
ADD file:6582536277127947668f7bfdc1471a4e36170915b91a4cb841e7e1bfa1de6535 in / 
# Mon, 09 Oct 2017 21:45:36 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 10:45:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:45:12 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 03 Nov 2017 10:45:13 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 10:45:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 10:46:03 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:46:04 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Nov 2017 10:46:04 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 10:46:04 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 11:48:47 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 11:48:48 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 11:48:48 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 11:49:12 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 11:49:12 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 11:49:13 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 11:49:13 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 11:49:14 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 11:49:14 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 11:49:15 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 11:49:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 11:49:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 11:49:16 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 11:49:16 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:b2b52fe46b29fe5d0689f26449c2114e40f0731d4ce3eb8c3941397b74205432`  
		Last Modified: Mon, 09 Oct 2017 21:53:42 GMT  
		Size: 23.1 MB (23128678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d407b136da0731f5f38279001e9dd426217937443cad0f16e1f242366290773`  
		Last Modified: Fri, 03 Nov 2017 10:47:13 GMT  
		Size: 4.8 MB (4803637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c93817e78345b4b5070c81e5a37d02afc2b5fe347a1a4bf59e09f6084814fd2`  
		Last Modified: Fri, 03 Nov 2017 10:47:12 GMT  
		Size: 4.1 KB (4057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f97eae59c75f8f814ab781f5239ac2e132b7b65c77e75b35023c603c539ca54f`  
		Last Modified: Fri, 03 Nov 2017 10:47:12 GMT  
		Size: 931.5 KB (931524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aed670dee19fde6946658d7129e13520c1a0747f8b80b6f92dac5f6d974ae52`  
		Last Modified: Fri, 03 Nov 2017 10:47:24 GMT  
		Size: 27.8 MB (27818690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11406d3e0ee6652316aef307f374537466b83e9a8b039ac094bec9a91db51f0b`  
		Last Modified: Wed, 08 Nov 2017 11:50:31 GMT  
		Size: 7.3 MB (7303738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608b7a338130eaf9ca53ab8aae04dc703a6449fa58eba5be04558381ec57eaab`  
		Last Modified: Wed, 08 Nov 2017 11:50:29 GMT  
		Size: 2.3 KB (2258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9380c3d6a421026f3c7f6831ec07ffb5eb0aece161f5f828a30dec24044705`  
		Last Modified: Wed, 08 Nov 2017 11:50:30 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b5305e32a2ea4c0bfc2c36460511eb7875a23f38fdd44fa8fa2f50a02c2658`  
		Last Modified: Wed, 08 Nov 2017 11:50:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1f16767fe3e5b4874ee86ccb33504606a39510dad06040c122662771157998`  
		Last Modified: Wed, 08 Nov 2017 11:50:30 GMT  
		Size: 4.0 KB (4040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc67a88011d726ea1e2a91b28cbe29e7aa9ba1026baf0890e813ce685ae28368`  
		Last Modified: Wed, 08 Nov 2017 11:50:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; s390x

```console
$ docker pull rabbitmq@sha256:d6270e1e222ebcb8c68988edbf05c72b930d7d7d4b886145c4bfd5480a177099
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60460358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:540087ce54199f47c40b065dfb0f638dc9bbae87d4958fdec63d30858e95fc83`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:35 GMT
ADD file:ae4aaa6affe22f36ab5478771d5c84917f72de7a8dac16345a035709a1a5edf4 in / 
# Mon, 09 Oct 2017 21:44:36 GMT
CMD ["bash"]
# Thu, 02 Nov 2017 17:06:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 17:06:41 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 02 Nov 2017 17:06:42 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 17:07:21 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 02 Nov 2017 17:07:43 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 17:07:44 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 02 Nov 2017 17:07:44 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 17:07:44 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 18:06:32 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 18:06:32 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 18:06:32 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 18:07:19 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 18:07:19 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 18:07:20 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 18:07:20 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 18:07:21 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 18:07:21 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 18:07:22 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 18:07:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 18:07:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 18:07:23 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 18:07:23 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:671716cc49517eef5f430c695ce344d63e390cb65f58d30939f2ba615c953686`  
		Last Modified: Mon, 09 Oct 2017 21:49:09 GMT  
		Size: 22.3 MB (22339951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cae61f12be6f01ba06573d9393712e91821cd5496302310f550fe5842dea557`  
		Last Modified: Fri, 03 Nov 2017 17:08:41 GMT  
		Size: 4.5 MB (4529879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca307103ce923e7e89d35185be4df8e54c3c0b54d259b8880aa7bae107d4952`  
		Last Modified: Fri, 03 Nov 2017 17:08:39 GMT  
		Size: 4.1 KB (4074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d16320f9fc35ea20ba7fb9b21f88e3f0f06c52d416682319f3b2a85a345a3d5`  
		Last Modified: Fri, 03 Nov 2017 17:08:39 GMT  
		Size: 938.0 KB (938019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801205b182b8d6f7acf36200b2ba07ed52ea224dfefe792b525224e4aacb4d4a`  
		Last Modified: Fri, 03 Nov 2017 17:08:48 GMT  
		Size: 25.6 MB (25619372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12ce67a630f123e36df054e0e90c31abb3d517dd984362eaa6cf7bc070304fe`  
		Last Modified: Wed, 08 Nov 2017 18:08:14 GMT  
		Size: 7.0 MB (7022368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f4dea1598011d081121e868c941bd695758683908030b52f8731656d62b8fc`  
		Last Modified: Wed, 08 Nov 2017 18:08:12 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1968b253d8ac805bf6188d47995cd6f0a576a4f34ccd66b9bc418a0dc94fa251`  
		Last Modified: Wed, 08 Nov 2017 18:08:12 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd7240ae1eb0726c11374653d1ea68694dd90bc2f2ae12d89158626f02ce3f8`  
		Last Modified: Wed, 08 Nov 2017 18:08:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:380b1c8ca0aabd89f393a15a64c185770c2628bf5299026d12eb21b8a1e293e0`  
		Last Modified: Wed, 08 Nov 2017 18:08:13 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee865b81bc6c91cba724881b543ca690115dd90710a4fa43a8eae27e136cfb4b`  
		Last Modified: Wed, 08 Nov 2017 18:08:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.14`

```console
$ docker pull rabbitmq@sha256:2fa714203c287748b1d6526e6d15f6ee0cf252dc798149262f86c4d87b95f95b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `rabbitmq:3.6.14` - linux; amd64

```console
$ docker pull rabbitmq@sha256:5f14574f9caca83aeb84ac5fc705b000d9640e86e9edd24fff515a763fd1cfca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62945336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79a008b25962e1a143e02b37187f855cb224e2203b94cc9f87e81fe275660c9d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:48 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Sat, 04 Nov 2017 05:26:48 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 17:46:08 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 17:46:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Sat, 04 Nov 2017 17:46:09 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 17:46:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 17:46:49 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 17:46:50 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 04 Nov 2017 17:46:50 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 17:46:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 05:40:26 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 05:40:26 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 05:40:26 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 05:40:46 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 05:40:47 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 05:40:47 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 05:40:47 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 05:40:48 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 05:40:49 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 05:40:49 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 05:40:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 05:40:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 05:40:50 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 05:40:51 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a230aa37269c12703c5faa3deb792f9ad4b64056beb9bcbc1ae43c522a8040`  
		Last Modified: Sat, 04 Nov 2017 17:47:41 GMT  
		Size: 4.5 MB (4498370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9190ffbd22711342d4d9be34c22d639f1f0f3abfe997a5c93cf50107b7a58a81`  
		Last Modified: Sat, 04 Nov 2017 17:47:40 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e829d8f0d28e827108c1c6ff25405743e10cb6acb364dc1ab04670d23c45ee`  
		Last Modified: Sat, 04 Nov 2017 17:47:40 GMT  
		Size: 951.9 KB (951943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2404945c98d3c39a18e3d83787ade2526a1d476b140ad4ca470618135830f5a5`  
		Last Modified: Sat, 04 Nov 2017 17:47:43 GMT  
		Size: 27.7 MB (27703766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629c315aa810b2d8dc5043d457fb370693d1db5478cc2a281cbdf4fcec49ccc6`  
		Last Modified: Wed, 08 Nov 2017 05:41:51 GMT  
		Size: 7.3 MB (7288151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff2b1994ea218ef7f3e9cbd6e6d97ca7e0b7d37c195411073d8e12a823877ab`  
		Last Modified: Wed, 08 Nov 2017 05:41:49 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3246485e4a5d6ac4cbe7306d3fb38a69aa9f63c71821be31fa26b547129e1047`  
		Last Modified: Wed, 08 Nov 2017 05:41:48 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd004dbdde7c3128d1e918a1eb7b8558fb9818be79f618629f3b7cab3f9f2ecc`  
		Last Modified: Wed, 08 Nov 2017 05:41:48 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3f0c64cb0dc2c36ba3e1c9408cc2e006d720b781eaa64000bece26f2ec9e21`  
		Last Modified: Wed, 08 Nov 2017 05:41:48 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d9dcfb8c200f5fa4500f3be05357a6c03c424b5db612b821e76c60b4285093`  
		Last Modified: Wed, 08 Nov 2017 05:41:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.14` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:1b0591d0f62220463d8cfa170ec3c230bf0a9cb5f690b997e6cdad122900f956
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.5 MB (58525231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac9a45617cbd7697745465740045ee94c683ffd6bcee469f864ec984f3b14baa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:48 GMT
ADD file:ff9945b48b1ac236dcec24eb9dfaf52b7c151a3b11c8502391f0866dfb4e3ac3 in / 
# Mon, 09 Oct 2017 21:44:48 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 14:14:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 14:14:44 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 03 Nov 2017 14:14:44 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 14:15:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 14:15:50 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 14:15:50 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Nov 2017 14:15:50 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 14:15:51 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 15:14:29 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 15:14:29 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 15:14:29 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 15:14:57 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 15:14:57 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 15:14:58 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 15:14:58 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 15:14:59 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 15:15:00 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 15:15:00 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 15:15:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 15:15:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 15:15:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 15:15:02 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:836d5b6056a9815be79c76480a90299267f60201bd1e3396817003e6c14819cc`  
		Last Modified: Mon, 09 Oct 2017 21:50:56 GMT  
		Size: 21.2 MB (21166251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab996b3d7a101ba6bf42115b4f156db847e321da9af52d5d686d82aa736b585`  
		Last Modified: Sat, 04 Nov 2017 14:15:27 GMT  
		Size: 4.2 MB (4231333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17684896b3ee5196333b6fa48ce590caddf46e21d82a5c5ef0f1a171360a6e17`  
		Last Modified: Sat, 04 Nov 2017 14:15:26 GMT  
		Size: 4.1 KB (4082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:828368257290f3ec36ef92643180012d362674e933b84c2db3c17c07f71d2629`  
		Last Modified: Sat, 04 Nov 2017 14:15:26 GMT  
		Size: 942.5 KB (942454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2fd4a06dc148e5a9a0ca56e46f45a376b486ca2b6c2c542f69e1f95927a7347`  
		Last Modified: Sat, 04 Nov 2017 14:15:31 GMT  
		Size: 25.2 MB (25170644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:706d18646df60ed10159c755526d2bce681fc0af771bbf562b58a57c6512c6c9`  
		Last Modified: Wed, 08 Nov 2017 15:15:31 GMT  
		Size: 7.0 MB (7003775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff375a9d907798e49eb1be06c5009c4a67307bb6bd79e9fccd5b6a0f73f4f86f`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b17b1ed86927f886e17566b808e1906e805150a31f499d189c0f500e15e33f19`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffbb30b719bc8fd2f4fda42258907104a5aacb01efaa78a84b5c2f7115bb59d0`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d48d2b51e4f81a9e2887218e78e5127274b6b3f08216a8b3f8e9000f88b11b`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad332c481563702001f742604f7523dd29b563a34d9916885ccc763b0ae829d6`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.14` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:715f2ed3ae0a8e638b541ae46e41f10723c0f7504ac741e2f5251f25b03fa675
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.8 MB (55780373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97faed3cb8ec4b60935e545d61ef4cb2804977334e5738d9faaddb6e700dc7d0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 13:07:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 13:07:42 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 03 Nov 2017 13:07:42 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 13:07:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 13:08:17 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 13:08:17 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Nov 2017 13:08:17 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 13:08:18 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 14:07:33 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 14:07:33 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 14:07:33 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 14:07:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 14:07:56 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 14:07:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 14:07:58 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 14:07:59 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 14:08:00 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 14:08:00 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 14:08:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 14:08:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 14:08:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 14:08:02 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:59e81a3fde58ec8d4b8f2f58b98ef2f4d951d37dd9b99b016fd294a8e07d7796`  
		Last Modified: Mon, 09 Oct 2017 21:52:49 GMT  
		Size: 19.3 MB (19277135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2037b99f3c3dc51e8ace39aed9971155f34f325ac4f0a1e56a07c4d6c02f5ae6`  
		Last Modified: Fri, 03 Nov 2017 13:09:18 GMT  
		Size: 3.9 MB (3868347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f368172ea96bda944832762ad29b52dfe17ec5e6fae96eee37adc4e9d68674a5`  
		Last Modified: Fri, 03 Nov 2017 13:09:16 GMT  
		Size: 4.1 KB (4084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:893cc1ae60f8bf72ac3020ccc60b22d9e0ad0cb0647e15bc4847d08c8985eee2`  
		Last Modified: Fri, 03 Nov 2017 13:09:16 GMT  
		Size: 926.1 KB (926097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13220cc1a683014bda9cfae7f7ee7015a26b28048f90f5aa3ed8b6a96f4b2813`  
		Last Modified: Fri, 03 Nov 2017 13:09:20 GMT  
		Size: 24.8 MB (24785610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58a356878563ee7880f7ea397896a76cf556256188c064dfaa395c4eb8b307a`  
		Last Modified: Wed, 08 Nov 2017 14:08:36 GMT  
		Size: 6.9 MB (6912409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a84d7e484060abe56af99e3243e35870226baf3d464594649cde00b432409b`  
		Last Modified: Wed, 08 Nov 2017 14:08:32 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a4dda82cd90132fc6846f338ac824d01d2491a4dc9c7a2148e45dd36c1a07c1`  
		Last Modified: Wed, 08 Nov 2017 14:08:32 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb5a1bbcad31fe9218b4c700e6e6f49222b30383dd5d44e2f19ff528acf5779`  
		Last Modified: Wed, 08 Nov 2017 14:08:32 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6e3a0fc563c4eadf4b3e4275c74aad4341c977d1fbe0f7cb22c802371e0280`  
		Last Modified: Wed, 08 Nov 2017 14:08:34 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7566f7d60e14ccc8d5e2598242a25fe6b378d6777221884a5ee75ff2e99001c`  
		Last Modified: Wed, 08 Nov 2017 14:08:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.14` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:4168a3f7ea16661ae4f05ab9fd21c258d590041e233029cfb199a75d55a924c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57371113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af4cb3ee80c465ed6074b3ecddd1fe0ce3d801423e3017c5e77638f8bcc8fe42`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 13:53:20 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 13:53:22 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 03 Nov 2017 13:53:23 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 19:34:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 19:35:29 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:35:29 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 04 Nov 2017 19:35:30 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 19:35:31 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 14:53:01 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 14:53:02 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 14:53:02 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 14:55:19 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 14:55:19 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 14:55:21 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 14:55:22 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 14:55:23 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 14:55:25 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 14:55:26 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 14:55:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 14:55:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 14:55:30 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 14:55:30 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e907afd6e25615a4d3eb554d930cef57b87e79ec82413889c2eac38beb4eb8f7`  
		Last Modified: Mon, 09 Oct 2017 22:03:08 GMT  
		Size: 20.3 MB (20337143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f0e65f9ffb0e8a0344de3620c73aa9cd2d1ae973a3cf7588e6441034e9822e`  
		Last Modified: Sat, 04 Nov 2017 19:40:47 GMT  
		Size: 4.1 MB (4073213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bed6073dce4194deeccf2caa0ec9b97ec2177bc41b7b540c17cdf13fda94ff0`  
		Last Modified: Sat, 04 Nov 2017 19:40:45 GMT  
		Size: 4.1 KB (4084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0596ffaef28f501b64c44c84ad20044e9016acaa66310b575a15244c91f49e`  
		Last Modified: Sat, 04 Nov 2017 19:40:46 GMT  
		Size: 919.4 KB (919403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda14140ddcfb15fd8d4be24ae1356f497b7833c12233249de7016e1f2daf9f8`  
		Last Modified: Sat, 04 Nov 2017 19:40:51 GMT  
		Size: 25.0 MB (25042388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78ee2824b70d54b867b533443f6fd14f51e18f23759b80153c869a2968e569b`  
		Last Modified: Wed, 08 Nov 2017 14:57:26 GMT  
		Size: 7.0 MB (6988187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ca626918894c95f51ccc210a06699be77ca84210960cd18a30b55d87d56c73`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8571e229aa778383fbbbdb4c00374d68b5bfafdb419ab20b842307aab4fcedc7`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2bf9029e48f539b6a5f83c8b3d3dda09c821b3d219d121afa9217295dcde9dd`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e538834de5f58eecf0df7ac787b4c94167bd6a9866534400d2eb04acd9c32e85`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf4d77c8deac6d39c639b9f2446f4a57e2d71802b537e300a5d548c6ca98647`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.14` - linux; 386

```console
$ docker pull rabbitmq@sha256:e6e6c680ab64fa4a4805ffdd3ac08340f63ee8747f6f40245f419fca5b6188c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.0 MB (63997016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3d401a69a599fb8e174505e97fdc1d89de6de3d5171e290f5f6d81f27157fe2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:36 GMT
ADD file:6582536277127947668f7bfdc1471a4e36170915b91a4cb841e7e1bfa1de6535 in / 
# Mon, 09 Oct 2017 21:45:36 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 10:45:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:45:12 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 03 Nov 2017 10:45:13 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 10:45:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 10:46:03 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:46:04 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Nov 2017 10:46:04 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 10:46:04 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 11:48:47 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 11:48:48 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 11:48:48 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 11:49:12 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 11:49:12 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 11:49:13 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 11:49:13 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 11:49:14 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 11:49:14 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 11:49:15 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 11:49:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 11:49:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 11:49:16 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 11:49:16 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:b2b52fe46b29fe5d0689f26449c2114e40f0731d4ce3eb8c3941397b74205432`  
		Last Modified: Mon, 09 Oct 2017 21:53:42 GMT  
		Size: 23.1 MB (23128678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d407b136da0731f5f38279001e9dd426217937443cad0f16e1f242366290773`  
		Last Modified: Fri, 03 Nov 2017 10:47:13 GMT  
		Size: 4.8 MB (4803637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c93817e78345b4b5070c81e5a37d02afc2b5fe347a1a4bf59e09f6084814fd2`  
		Last Modified: Fri, 03 Nov 2017 10:47:12 GMT  
		Size: 4.1 KB (4057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f97eae59c75f8f814ab781f5239ac2e132b7b65c77e75b35023c603c539ca54f`  
		Last Modified: Fri, 03 Nov 2017 10:47:12 GMT  
		Size: 931.5 KB (931524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aed670dee19fde6946658d7129e13520c1a0747f8b80b6f92dac5f6d974ae52`  
		Last Modified: Fri, 03 Nov 2017 10:47:24 GMT  
		Size: 27.8 MB (27818690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11406d3e0ee6652316aef307f374537466b83e9a8b039ac094bec9a91db51f0b`  
		Last Modified: Wed, 08 Nov 2017 11:50:31 GMT  
		Size: 7.3 MB (7303738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608b7a338130eaf9ca53ab8aae04dc703a6449fa58eba5be04558381ec57eaab`  
		Last Modified: Wed, 08 Nov 2017 11:50:29 GMT  
		Size: 2.3 KB (2258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9380c3d6a421026f3c7f6831ec07ffb5eb0aece161f5f828a30dec24044705`  
		Last Modified: Wed, 08 Nov 2017 11:50:30 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b5305e32a2ea4c0bfc2c36460511eb7875a23f38fdd44fa8fa2f50a02c2658`  
		Last Modified: Wed, 08 Nov 2017 11:50:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1f16767fe3e5b4874ee86ccb33504606a39510dad06040c122662771157998`  
		Last Modified: Wed, 08 Nov 2017 11:50:30 GMT  
		Size: 4.0 KB (4040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc67a88011d726ea1e2a91b28cbe29e7aa9ba1026baf0890e813ce685ae28368`  
		Last Modified: Wed, 08 Nov 2017 11:50:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.14` - linux; s390x

```console
$ docker pull rabbitmq@sha256:d6270e1e222ebcb8c68988edbf05c72b930d7d7d4b886145c4bfd5480a177099
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60460358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:540087ce54199f47c40b065dfb0f638dc9bbae87d4958fdec63d30858e95fc83`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:35 GMT
ADD file:ae4aaa6affe22f36ab5478771d5c84917f72de7a8dac16345a035709a1a5edf4 in / 
# Mon, 09 Oct 2017 21:44:36 GMT
CMD ["bash"]
# Thu, 02 Nov 2017 17:06:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 17:06:41 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 02 Nov 2017 17:06:42 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 17:07:21 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 02 Nov 2017 17:07:43 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 17:07:44 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 02 Nov 2017 17:07:44 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 17:07:44 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 18:06:32 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 18:06:32 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 18:06:32 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 18:07:19 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 18:07:19 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 18:07:20 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 18:07:20 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 18:07:21 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 18:07:21 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 18:07:22 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 18:07:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 18:07:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 18:07:23 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 18:07:23 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:671716cc49517eef5f430c695ce344d63e390cb65f58d30939f2ba615c953686`  
		Last Modified: Mon, 09 Oct 2017 21:49:09 GMT  
		Size: 22.3 MB (22339951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cae61f12be6f01ba06573d9393712e91821cd5496302310f550fe5842dea557`  
		Last Modified: Fri, 03 Nov 2017 17:08:41 GMT  
		Size: 4.5 MB (4529879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca307103ce923e7e89d35185be4df8e54c3c0b54d259b8880aa7bae107d4952`  
		Last Modified: Fri, 03 Nov 2017 17:08:39 GMT  
		Size: 4.1 KB (4074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d16320f9fc35ea20ba7fb9b21f88e3f0f06c52d416682319f3b2a85a345a3d5`  
		Last Modified: Fri, 03 Nov 2017 17:08:39 GMT  
		Size: 938.0 KB (938019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801205b182b8d6f7acf36200b2ba07ed52ea224dfefe792b525224e4aacb4d4a`  
		Last Modified: Fri, 03 Nov 2017 17:08:48 GMT  
		Size: 25.6 MB (25619372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12ce67a630f123e36df054e0e90c31abb3d517dd984362eaa6cf7bc070304fe`  
		Last Modified: Wed, 08 Nov 2017 18:08:14 GMT  
		Size: 7.0 MB (7022368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f4dea1598011d081121e868c941bd695758683908030b52f8731656d62b8fc`  
		Last Modified: Wed, 08 Nov 2017 18:08:12 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1968b253d8ac805bf6188d47995cd6f0a576a4f34ccd66b9bc418a0dc94fa251`  
		Last Modified: Wed, 08 Nov 2017 18:08:12 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd7240ae1eb0726c11374653d1ea68694dd90bc2f2ae12d89158626f02ce3f8`  
		Last Modified: Wed, 08 Nov 2017 18:08:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:380b1c8ca0aabd89f393a15a64c185770c2628bf5299026d12eb21b8a1e293e0`  
		Last Modified: Wed, 08 Nov 2017 18:08:13 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee865b81bc6c91cba724881b543ca690115dd90710a4fa43a8eae27e136cfb4b`  
		Last Modified: Wed, 08 Nov 2017 18:08:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.14-alpine`

```console
$ docker pull rabbitmq@sha256:7fdc09f8ba068b0d6838387c24fb2173060c362d35dbf546566e0e5bd9c7fb9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `rabbitmq:3.6.14-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:9faf517893217bcb672dda3372caf3731c3f8fd9b3c908b234f5d139fb71fde2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23675566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:275978bffb6379d6fc54fdc7874ea58e884ab5a227ec4138a707092112bafc2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:07:57 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Sat, 04 Nov 2017 05:08:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Nov 2017 05:08:11 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Sat, 04 Nov 2017 05:08:11 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 04 Nov 2017 05:08:11 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sat, 04 Nov 2017 05:08:11 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 05:08:12 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 05:41:03 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 05:41:03 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 05:41:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 05:41:27 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 05:41:28 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 05:41:28 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 05:41:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 05:41:29 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 05:41:30 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 05:41:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 05:41:30 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 05:41:30 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd931d2c14c5b5501527044a16e680c1b1111ba939bd17bbd06d73cf92976dc2`  
		Last Modified: Sat, 04 Nov 2017 05:09:49 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f3f2df337d68db6b507058eda830a8986efd4eb17efa8910edf383fb1e67c9`  
		Last Modified: Sat, 04 Nov 2017 05:09:49 GMT  
		Size: 8.2 KB (8181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7844869e4b5b7138207173247acaa8c055a4b34be2fd981dc153aa1d06d31861`  
		Last Modified: Sat, 04 Nov 2017 05:09:52 GMT  
		Size: 16.6 MB (16561780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18cccd03229e8d4e3b51b1776b63f584607b7154b95bfb9d2767dc63d2b94e6`  
		Last Modified: Wed, 08 Nov 2017 05:42:48 GMT  
		Size: 5.1 MB (5108427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b1a078564a2b7a12bb756228a5f2adc4d7d6d42b72cacd82aef74e27ef07a7`  
		Last Modified: Wed, 08 Nov 2017 05:42:48 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a05083963037f58105f5fda0a18ed7a88cf1308f9430c152f5d75e871fa29e0`  
		Last Modified: Wed, 08 Nov 2017 05:42:47 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:749e0123d4b8df67ecebb3ae52ec16d2202197ed19c292af307897c04686bb90`  
		Last Modified: Wed, 08 Nov 2017 05:42:48 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efecef2b5124d36f82ffa7552672508f9e59c59d548e2c74e6a33052a46025d`  
		Last Modified: Wed, 08 Nov 2017 05:42:47 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.14-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:1be6dc9852429ccdf7fe0f2b1bd9705b3aea72ade4ecc979b0836d83a71e540f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23413948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22bf2fe2713c63f306c2811fa08e0b24ea8f10774a886bdd647dd4dbeac173d3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 13:53:09 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 13:53:13 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 13:53:28 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 13:53:28 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 13:53:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 13:53:29 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 13:53:30 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 14:56:12 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 14:56:13 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 14:56:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 14:56:30 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 14:56:32 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 14:56:32 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 14:56:34 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 14:56:35 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 14:56:36 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 14:56:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 14:56:37 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 14:56:38 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05834eac152e30997eb4f1aa4ffe8e952bd759c1a1009bd183dec80dca24cf86`  
		Last Modified: Thu, 26 Oct 2017 13:55:11 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd88a23486b40755f2e1192cb35d4fdaec20831c18ce83da31df3f8aa2f7b45c`  
		Last Modified: Thu, 26 Oct 2017 13:55:11 GMT  
		Size: 8.3 KB (8297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f9ba1206e6e4bfba21cef7f235482b41868ec966d5ebc44a4c4ac432a5fe03`  
		Last Modified: Thu, 26 Oct 2017 13:55:16 GMT  
		Size: 16.4 MB (16376872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96467a3af759dd4d0c8e9dfd696a707eaa9c669b6d249c3e68a9fd8fc1e2be0b`  
		Last Modified: Wed, 08 Nov 2017 14:59:37 GMT  
		Size: 5.1 MB (5108108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e205c0c58f4d29c6e42fdf1c9ee424a884b20605fa3edad491d61393b620bc`  
		Last Modified: Wed, 08 Nov 2017 14:59:37 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ac11c13026eea7c9ea3de8e602b707ab2ec1d784eeac0768b5c3c114d8da53`  
		Last Modified: Wed, 08 Nov 2017 14:59:36 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e0267b7ac6617ceb8d53546896d0f88af55faf21e13a9df998452604170475`  
		Last Modified: Wed, 08 Nov 2017 14:59:37 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd69c177dca55f85ae172255c42fb1a1afc9098e0d9c90a2af3e9281a06355e8`  
		Last Modified: Wed, 08 Nov 2017 14:59:36 GMT  
		Size: 4.0 KB (4036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.14-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:63cc19e6634fdd94fda76219c8e4553474a0874f836001336a0db91f4a2bdd59
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23879056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cd51770818309e37697b99a0f4f192a68989a3a5404e638464843feb9785d00`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 10:44:24 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 10:44:28 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 10:44:50 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 10:44:50 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 10:44:50 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 10:44:50 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 10:44:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 11:49:36 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 11:49:36 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 11:50:03 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 11:50:04 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 11:50:04 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 11:50:04 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 11:50:05 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 11:50:06 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 11:50:06 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 11:50:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 11:50:06 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 11:50:07 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cf0f0a132c9bb882206147dffad08dc780f2bc82556cfbda9878a3218f1e7c`  
		Last Modified: Thu, 26 Oct 2017 10:45:28 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e00a9186496c6602ccd3efb4bb1780b42adb7028c8fa3cd3c1ff2f10bcfa33a3`  
		Last Modified: Thu, 26 Oct 2017 10:45:28 GMT  
		Size: 8.3 KB (8305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc19938c3bf2e858347a9c7add1beac38af5a4f83b99d80ddc004aa4ad51e596`  
		Last Modified: Thu, 26 Oct 2017 10:45:30 GMT  
		Size: 16.7 MB (16710838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fffae17dadc5d20f4dc949f407146594a7ca8aa4fb11be121519ef0a316dd05a`  
		Last Modified: Wed, 08 Nov 2017 11:51:38 GMT  
		Size: 5.1 MB (5108395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaef62ea46f71b0592807ef97d67f3649e3ccaea0059286442606ddfc96644d9`  
		Last Modified: Wed, 08 Nov 2017 11:51:37 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77474049fb515a920c7c001b111e29142426b6cb3e22416e6784819702461895`  
		Last Modified: Wed, 08 Nov 2017 11:51:36 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580eb2276815b19169a24cccdb63099175d34f275d9a3a0f07900e7966f0694e`  
		Last Modified: Wed, 08 Nov 2017 11:51:37 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5471bc4e5ffb070324baf533e92da1a68c5498041f178eb4a318449bb0e03bf`  
		Last Modified: Wed, 08 Nov 2017 11:51:37 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.14-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:cf9ca522739e6d09a7ee04600e67d63db1969a448eb3848a310e1b895711f09d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23915006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34f902caf1364f21f21bb55deec8ddc150623cb5c2835d2b19a09e82a556a272`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 17:06:39 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 17:06:42 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 17:06:55 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 17:06:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 17:06:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 17:06:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 17:06:56 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 18:07:41 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 18:07:41 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 18:07:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 18:07:49 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 18:07:50 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 18:07:50 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 18:07:51 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 18:07:51 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 18:07:52 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 18:07:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 18:07:52 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 18:07:52 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299a1fbc19bbea84dbf4d0b6e2e71fb847299b017209b1f9783faea14214c995`  
		Last Modified: Thu, 26 Oct 2017 17:07:31 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb76f2dd4162cae82233bc93ba436b63ca37e536d53c85a9f1d7343203e3c383`  
		Last Modified: Thu, 26 Oct 2017 17:07:31 GMT  
		Size: 8.6 KB (8604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac09bb55706d627cf6348c9d0bd891c2fe9a4155aee5d95264b92781371021db`  
		Last Modified: Thu, 26 Oct 2017 17:07:33 GMT  
		Size: 16.7 MB (16726549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d93907c5b4f4bc7a5481de6bb16c3f072a75e5527d3cfc3b9749b113cfae95f`  
		Last Modified: Wed, 08 Nov 2017 18:08:54 GMT  
		Size: 5.1 MB (5108471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35583f28b47cbc069cf7cd90f5e6424989326186e6d4eda16789f04b1a593292`  
		Last Modified: Wed, 08 Nov 2017 18:08:53 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5276afe58ea371107f544988a9e5123c638674f1af93bb6aabbb052a917ca221`  
		Last Modified: Wed, 08 Nov 2017 18:08:53 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2728c7344d2114e96e7f93f99acfaa5e41fd50018d5c58170bbb955c3f61b4`  
		Last Modified: Wed, 08 Nov 2017 18:08:53 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161b930d7a34fea6d9e836a0f286a8e3105160cdd36fa617d62997bd63388023`  
		Last Modified: Wed, 08 Nov 2017 18:08:53 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.14-management`

```console
$ docker pull rabbitmq@sha256:bbdb4cfe4e82d29684c6ad64538bf1a1070387073da24dd21e313c8f5bc8d994
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `rabbitmq:3.6.14-management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:6fb67294c552681b5396820099d380bf60a13aaa25bdc7d2cdcf31972e97bb04
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62945528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da97a9b91d4d4f9b930d5433e5c6148cff146d19cd5a0285a23dc85db691244c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:48 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Sat, 04 Nov 2017 05:26:48 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 17:46:08 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 17:46:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Sat, 04 Nov 2017 17:46:09 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 17:46:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 17:46:49 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 17:46:50 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 04 Nov 2017 17:46:50 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 17:46:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 05:40:26 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 05:40:26 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 05:40:26 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 05:40:46 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 05:40:47 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 05:40:47 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 05:40:47 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 05:40:48 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 05:40:49 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 05:40:49 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 05:40:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 05:40:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 05:40:50 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 05:40:51 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 05:40:58 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 05:40:58 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a230aa37269c12703c5faa3deb792f9ad4b64056beb9bcbc1ae43c522a8040`  
		Last Modified: Sat, 04 Nov 2017 17:47:41 GMT  
		Size: 4.5 MB (4498370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9190ffbd22711342d4d9be34c22d639f1f0f3abfe997a5c93cf50107b7a58a81`  
		Last Modified: Sat, 04 Nov 2017 17:47:40 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e829d8f0d28e827108c1c6ff25405743e10cb6acb364dc1ab04670d23c45ee`  
		Last Modified: Sat, 04 Nov 2017 17:47:40 GMT  
		Size: 951.9 KB (951943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2404945c98d3c39a18e3d83787ade2526a1d476b140ad4ca470618135830f5a5`  
		Last Modified: Sat, 04 Nov 2017 17:47:43 GMT  
		Size: 27.7 MB (27703766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629c315aa810b2d8dc5043d457fb370693d1db5478cc2a281cbdf4fcec49ccc6`  
		Last Modified: Wed, 08 Nov 2017 05:41:51 GMT  
		Size: 7.3 MB (7288151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff2b1994ea218ef7f3e9cbd6e6d97ca7e0b7d37c195411073d8e12a823877ab`  
		Last Modified: Wed, 08 Nov 2017 05:41:49 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3246485e4a5d6ac4cbe7306d3fb38a69aa9f63c71821be31fa26b547129e1047`  
		Last Modified: Wed, 08 Nov 2017 05:41:48 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd004dbdde7c3128d1e918a1eb7b8558fb9818be79f618629f3b7cab3f9f2ecc`  
		Last Modified: Wed, 08 Nov 2017 05:41:48 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3f0c64cb0dc2c36ba3e1c9408cc2e006d720b781eaa64000bece26f2ec9e21`  
		Last Modified: Wed, 08 Nov 2017 05:41:48 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d9dcfb8c200f5fa4500f3be05357a6c03c424b5db612b821e76c60b4285093`  
		Last Modified: Wed, 08 Nov 2017 05:41:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30545194ec5792ea8b54ad4af7d9f33182cce849accd89c368c1d2551797b994`  
		Last Modified: Wed, 08 Nov 2017 05:42:21 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.14-management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:5a3c32f0c1c512508d9d46506a52fb9c5336ef7af0035fedfbf8842a2408b25e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.5 MB (58525423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58e51335e25bad4d0846134aac011f587d6f9c079a4d53f981915811666ec653`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:48 GMT
ADD file:ff9945b48b1ac236dcec24eb9dfaf52b7c151a3b11c8502391f0866dfb4e3ac3 in / 
# Mon, 09 Oct 2017 21:44:48 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 14:14:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 14:14:44 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 03 Nov 2017 14:14:44 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 14:15:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 14:15:50 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 14:15:50 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Nov 2017 14:15:50 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 14:15:51 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 15:14:29 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 15:14:29 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 15:14:29 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 15:14:57 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 15:14:57 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 15:14:58 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 15:14:58 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 15:14:59 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 15:15:00 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 15:15:00 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 15:15:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 15:15:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 15:15:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 15:15:02 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 15:15:17 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 15:15:18 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:836d5b6056a9815be79c76480a90299267f60201bd1e3396817003e6c14819cc`  
		Last Modified: Mon, 09 Oct 2017 21:50:56 GMT  
		Size: 21.2 MB (21166251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab996b3d7a101ba6bf42115b4f156db847e321da9af52d5d686d82aa736b585`  
		Last Modified: Sat, 04 Nov 2017 14:15:27 GMT  
		Size: 4.2 MB (4231333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17684896b3ee5196333b6fa48ce590caddf46e21d82a5c5ef0f1a171360a6e17`  
		Last Modified: Sat, 04 Nov 2017 14:15:26 GMT  
		Size: 4.1 KB (4082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:828368257290f3ec36ef92643180012d362674e933b84c2db3c17c07f71d2629`  
		Last Modified: Sat, 04 Nov 2017 14:15:26 GMT  
		Size: 942.5 KB (942454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2fd4a06dc148e5a9a0ca56e46f45a376b486ca2b6c2c542f69e1f95927a7347`  
		Last Modified: Sat, 04 Nov 2017 14:15:31 GMT  
		Size: 25.2 MB (25170644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:706d18646df60ed10159c755526d2bce681fc0af771bbf562b58a57c6512c6c9`  
		Last Modified: Wed, 08 Nov 2017 15:15:31 GMT  
		Size: 7.0 MB (7003775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff375a9d907798e49eb1be06c5009c4a67307bb6bd79e9fccd5b6a0f73f4f86f`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b17b1ed86927f886e17566b808e1906e805150a31f499d189c0f500e15e33f19`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffbb30b719bc8fd2f4fda42258907104a5aacb01efaa78a84b5c2f7115bb59d0`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d48d2b51e4f81a9e2887218e78e5127274b6b3f08216a8b3f8e9000f88b11b`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad332c481563702001f742604f7523dd29b563a34d9916885ccc763b0ae829d6`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf7dac959a5fc4de2e5a096e907b1f06d71a3cc3a475811c85acfe1a846dc2e`  
		Last Modified: Wed, 08 Nov 2017 15:15:59 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.14-management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:5aeed246ab3e099bcc50cdb679a8cfb8f68f8da50670f7a4e79cda2e4d383f36
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.8 MB (55780565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:816c908a9f1f090d8c4b39e78f44e6740ad32a178987f0241e7b6a835ce21968`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 13:07:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 13:07:42 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 03 Nov 2017 13:07:42 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 13:07:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 13:08:17 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 13:08:17 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Nov 2017 13:08:17 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 13:08:18 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 14:07:33 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 14:07:33 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 14:07:33 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 14:07:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 14:07:56 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 14:07:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 14:07:58 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 14:07:59 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 14:08:00 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 14:08:00 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 14:08:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 14:08:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 14:08:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 14:08:02 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 14:08:18 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 14:08:18 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:59e81a3fde58ec8d4b8f2f58b98ef2f4d951d37dd9b99b016fd294a8e07d7796`  
		Last Modified: Mon, 09 Oct 2017 21:52:49 GMT  
		Size: 19.3 MB (19277135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2037b99f3c3dc51e8ace39aed9971155f34f325ac4f0a1e56a07c4d6c02f5ae6`  
		Last Modified: Fri, 03 Nov 2017 13:09:18 GMT  
		Size: 3.9 MB (3868347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f368172ea96bda944832762ad29b52dfe17ec5e6fae96eee37adc4e9d68674a5`  
		Last Modified: Fri, 03 Nov 2017 13:09:16 GMT  
		Size: 4.1 KB (4084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:893cc1ae60f8bf72ac3020ccc60b22d9e0ad0cb0647e15bc4847d08c8985eee2`  
		Last Modified: Fri, 03 Nov 2017 13:09:16 GMT  
		Size: 926.1 KB (926097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13220cc1a683014bda9cfae7f7ee7015a26b28048f90f5aa3ed8b6a96f4b2813`  
		Last Modified: Fri, 03 Nov 2017 13:09:20 GMT  
		Size: 24.8 MB (24785610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58a356878563ee7880f7ea397896a76cf556256188c064dfaa395c4eb8b307a`  
		Last Modified: Wed, 08 Nov 2017 14:08:36 GMT  
		Size: 6.9 MB (6912409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a84d7e484060abe56af99e3243e35870226baf3d464594649cde00b432409b`  
		Last Modified: Wed, 08 Nov 2017 14:08:32 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a4dda82cd90132fc6846f338ac824d01d2491a4dc9c7a2148e45dd36c1a07c1`  
		Last Modified: Wed, 08 Nov 2017 14:08:32 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb5a1bbcad31fe9218b4c700e6e6f49222b30383dd5d44e2f19ff528acf5779`  
		Last Modified: Wed, 08 Nov 2017 14:08:32 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6e3a0fc563c4eadf4b3e4275c74aad4341c977d1fbe0f7cb22c802371e0280`  
		Last Modified: Wed, 08 Nov 2017 14:08:34 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7566f7d60e14ccc8d5e2598242a25fe6b378d6777221884a5ee75ff2e99001c`  
		Last Modified: Wed, 08 Nov 2017 14:08:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73711d6f4f3b9cb591f9e5bae5b009927eeb8bf1a3079980b59ba0b8d5372547`  
		Last Modified: Wed, 08 Nov 2017 14:09:12 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.14-management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:f8baff2ff944fa142429cdab336e52ec4dd54324ac5ddb6fcf22de7e68fff040
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57371306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edaa34989d006bba2d07b9bcf8be85d266666cbc0cd117c5f344082626b0c0fa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 13:53:20 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 13:53:22 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 03 Nov 2017 13:53:23 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 19:34:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 19:35:29 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:35:29 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 04 Nov 2017 19:35:30 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 19:35:31 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 14:53:01 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 14:53:02 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 14:53:02 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 14:55:19 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 14:55:19 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 14:55:21 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 14:55:22 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 14:55:23 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 14:55:25 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 14:55:26 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 14:55:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 14:55:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 14:55:30 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 14:55:30 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 14:55:55 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 14:55:56 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:e907afd6e25615a4d3eb554d930cef57b87e79ec82413889c2eac38beb4eb8f7`  
		Last Modified: Mon, 09 Oct 2017 22:03:08 GMT  
		Size: 20.3 MB (20337143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f0e65f9ffb0e8a0344de3620c73aa9cd2d1ae973a3cf7588e6441034e9822e`  
		Last Modified: Sat, 04 Nov 2017 19:40:47 GMT  
		Size: 4.1 MB (4073213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bed6073dce4194deeccf2caa0ec9b97ec2177bc41b7b540c17cdf13fda94ff0`  
		Last Modified: Sat, 04 Nov 2017 19:40:45 GMT  
		Size: 4.1 KB (4084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0596ffaef28f501b64c44c84ad20044e9016acaa66310b575a15244c91f49e`  
		Last Modified: Sat, 04 Nov 2017 19:40:46 GMT  
		Size: 919.4 KB (919403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda14140ddcfb15fd8d4be24ae1356f497b7833c12233249de7016e1f2daf9f8`  
		Last Modified: Sat, 04 Nov 2017 19:40:51 GMT  
		Size: 25.0 MB (25042388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78ee2824b70d54b867b533443f6fd14f51e18f23759b80153c869a2968e569b`  
		Last Modified: Wed, 08 Nov 2017 14:57:26 GMT  
		Size: 7.0 MB (6988187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ca626918894c95f51ccc210a06699be77ca84210960cd18a30b55d87d56c73`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8571e229aa778383fbbbdb4c00374d68b5bfafdb419ab20b842307aab4fcedc7`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2bf9029e48f539b6a5f83c8b3d3dda09c821b3d219d121afa9217295dcde9dd`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e538834de5f58eecf0df7ac787b4c94167bd6a9866534400d2eb04acd9c32e85`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf4d77c8deac6d39c639b9f2446f4a57e2d71802b537e300a5d548c6ca98647`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fc97d0e8617141d030a4491d7f41ae04d794e6184b9f24a89ed7a5cebc6284`  
		Last Modified: Wed, 08 Nov 2017 14:58:31 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.14-management` - linux; 386

```console
$ docker pull rabbitmq@sha256:5771064a71db0cb94d2c2a7fad29dacb647e7d2ae79bf8eb5670bc5c53a2a377
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.0 MB (63997209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29311920186d6145a01465b520b28c79b06c90ff7f6253493d72ef5625e27f57`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:36 GMT
ADD file:6582536277127947668f7bfdc1471a4e36170915b91a4cb841e7e1bfa1de6535 in / 
# Mon, 09 Oct 2017 21:45:36 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 10:45:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:45:12 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 03 Nov 2017 10:45:13 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 10:45:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 10:46:03 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:46:04 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Nov 2017 10:46:04 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 10:46:04 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 11:48:47 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 11:48:48 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 11:48:48 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 11:49:12 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 11:49:12 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 11:49:13 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 11:49:13 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 11:49:14 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 11:49:14 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 11:49:15 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 11:49:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 11:49:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 11:49:16 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 11:49:16 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 11:49:30 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 11:49:30 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:b2b52fe46b29fe5d0689f26449c2114e40f0731d4ce3eb8c3941397b74205432`  
		Last Modified: Mon, 09 Oct 2017 21:53:42 GMT  
		Size: 23.1 MB (23128678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d407b136da0731f5f38279001e9dd426217937443cad0f16e1f242366290773`  
		Last Modified: Fri, 03 Nov 2017 10:47:13 GMT  
		Size: 4.8 MB (4803637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c93817e78345b4b5070c81e5a37d02afc2b5fe347a1a4bf59e09f6084814fd2`  
		Last Modified: Fri, 03 Nov 2017 10:47:12 GMT  
		Size: 4.1 KB (4057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f97eae59c75f8f814ab781f5239ac2e132b7b65c77e75b35023c603c539ca54f`  
		Last Modified: Fri, 03 Nov 2017 10:47:12 GMT  
		Size: 931.5 KB (931524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aed670dee19fde6946658d7129e13520c1a0747f8b80b6f92dac5f6d974ae52`  
		Last Modified: Fri, 03 Nov 2017 10:47:24 GMT  
		Size: 27.8 MB (27818690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11406d3e0ee6652316aef307f374537466b83e9a8b039ac094bec9a91db51f0b`  
		Last Modified: Wed, 08 Nov 2017 11:50:31 GMT  
		Size: 7.3 MB (7303738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608b7a338130eaf9ca53ab8aae04dc703a6449fa58eba5be04558381ec57eaab`  
		Last Modified: Wed, 08 Nov 2017 11:50:29 GMT  
		Size: 2.3 KB (2258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9380c3d6a421026f3c7f6831ec07ffb5eb0aece161f5f828a30dec24044705`  
		Last Modified: Wed, 08 Nov 2017 11:50:30 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b5305e32a2ea4c0bfc2c36460511eb7875a23f38fdd44fa8fa2f50a02c2658`  
		Last Modified: Wed, 08 Nov 2017 11:50:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1f16767fe3e5b4874ee86ccb33504606a39510dad06040c122662771157998`  
		Last Modified: Wed, 08 Nov 2017 11:50:30 GMT  
		Size: 4.0 KB (4040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc67a88011d726ea1e2a91b28cbe29e7aa9ba1026baf0890e813ce685ae28368`  
		Last Modified: Wed, 08 Nov 2017 11:50:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f06877666402272fcbd0aaa104c086e6b599d86cd1dc513b1240c92c55bbd5`  
		Last Modified: Wed, 08 Nov 2017 11:51:05 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.14-management` - linux; s390x

```console
$ docker pull rabbitmq@sha256:bd9dd8d582db968a260af3f807307d9706dc6072d9f3171ea8a230bd4e8a179c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60460553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b17152a9401a0ef3fd17369d282ba008a09e5c6cba66013c934af7accf533fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:35 GMT
ADD file:ae4aaa6affe22f36ab5478771d5c84917f72de7a8dac16345a035709a1a5edf4 in / 
# Mon, 09 Oct 2017 21:44:36 GMT
CMD ["bash"]
# Thu, 02 Nov 2017 17:06:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 17:06:41 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 02 Nov 2017 17:06:42 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 17:07:21 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 02 Nov 2017 17:07:43 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 17:07:44 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 02 Nov 2017 17:07:44 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 17:07:44 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 18:06:32 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 18:06:32 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 18:06:32 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 18:07:19 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 18:07:19 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 18:07:20 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 18:07:20 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 18:07:21 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 18:07:21 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 18:07:22 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 18:07:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 18:07:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 18:07:23 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 18:07:23 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 18:07:34 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 18:07:34 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:671716cc49517eef5f430c695ce344d63e390cb65f58d30939f2ba615c953686`  
		Last Modified: Mon, 09 Oct 2017 21:49:09 GMT  
		Size: 22.3 MB (22339951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cae61f12be6f01ba06573d9393712e91821cd5496302310f550fe5842dea557`  
		Last Modified: Fri, 03 Nov 2017 17:08:41 GMT  
		Size: 4.5 MB (4529879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca307103ce923e7e89d35185be4df8e54c3c0b54d259b8880aa7bae107d4952`  
		Last Modified: Fri, 03 Nov 2017 17:08:39 GMT  
		Size: 4.1 KB (4074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d16320f9fc35ea20ba7fb9b21f88e3f0f06c52d416682319f3b2a85a345a3d5`  
		Last Modified: Fri, 03 Nov 2017 17:08:39 GMT  
		Size: 938.0 KB (938019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801205b182b8d6f7acf36200b2ba07ed52ea224dfefe792b525224e4aacb4d4a`  
		Last Modified: Fri, 03 Nov 2017 17:08:48 GMT  
		Size: 25.6 MB (25619372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12ce67a630f123e36df054e0e90c31abb3d517dd984362eaa6cf7bc070304fe`  
		Last Modified: Wed, 08 Nov 2017 18:08:14 GMT  
		Size: 7.0 MB (7022368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f4dea1598011d081121e868c941bd695758683908030b52f8731656d62b8fc`  
		Last Modified: Wed, 08 Nov 2017 18:08:12 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1968b253d8ac805bf6188d47995cd6f0a576a4f34ccd66b9bc418a0dc94fa251`  
		Last Modified: Wed, 08 Nov 2017 18:08:12 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd7240ae1eb0726c11374653d1ea68694dd90bc2f2ae12d89158626f02ce3f8`  
		Last Modified: Wed, 08 Nov 2017 18:08:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:380b1c8ca0aabd89f393a15a64c185770c2628bf5299026d12eb21b8a1e293e0`  
		Last Modified: Wed, 08 Nov 2017 18:08:13 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee865b81bc6c91cba724881b543ca690115dd90710a4fa43a8eae27e136cfb4b`  
		Last Modified: Wed, 08 Nov 2017 18:08:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2405563deaf816f18368dc330c443de6ddc256bd008d497e4109303adb607851`  
		Last Modified: Wed, 08 Nov 2017 18:08:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.14-management-alpine`

```console
$ docker pull rabbitmq@sha256:6220affc4420dae7fd23257a6ead81e2fe71f60470ed61969f29458b8aca40c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `rabbitmq:3.6.14-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:b9bd8d394b9f406246d8a0259fc3914925bd99aa5eb7c2501eb8755777b16c2f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23675757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f7630631a89c10be15f7abbf23574da760f6b873ff37d1b8ebb0570b009aada`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:07:57 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Sat, 04 Nov 2017 05:08:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Nov 2017 05:08:11 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Sat, 04 Nov 2017 05:08:11 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 04 Nov 2017 05:08:11 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sat, 04 Nov 2017 05:08:11 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 05:08:12 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 05:41:03 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 05:41:03 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 05:41:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 05:41:27 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 05:41:28 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 05:41:28 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 05:41:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 05:41:29 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 05:41:30 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 05:41:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 05:41:30 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 05:41:30 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 05:41:38 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 05:41:38 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd931d2c14c5b5501527044a16e680c1b1111ba939bd17bbd06d73cf92976dc2`  
		Last Modified: Sat, 04 Nov 2017 05:09:49 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f3f2df337d68db6b507058eda830a8986efd4eb17efa8910edf383fb1e67c9`  
		Last Modified: Sat, 04 Nov 2017 05:09:49 GMT  
		Size: 8.2 KB (8181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7844869e4b5b7138207173247acaa8c055a4b34be2fd981dc153aa1d06d31861`  
		Last Modified: Sat, 04 Nov 2017 05:09:52 GMT  
		Size: 16.6 MB (16561780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18cccd03229e8d4e3b51b1776b63f584607b7154b95bfb9d2767dc63d2b94e6`  
		Last Modified: Wed, 08 Nov 2017 05:42:48 GMT  
		Size: 5.1 MB (5108427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b1a078564a2b7a12bb756228a5f2adc4d7d6d42b72cacd82aef74e27ef07a7`  
		Last Modified: Wed, 08 Nov 2017 05:42:48 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a05083963037f58105f5fda0a18ed7a88cf1308f9430c152f5d75e871fa29e0`  
		Last Modified: Wed, 08 Nov 2017 05:42:47 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:749e0123d4b8df67ecebb3ae52ec16d2202197ed19c292af307897c04686bb90`  
		Last Modified: Wed, 08 Nov 2017 05:42:48 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efecef2b5124d36f82ffa7552672508f9e59c59d548e2c74e6a33052a46025d`  
		Last Modified: Wed, 08 Nov 2017 05:42:47 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6feeecc743824f0b313a36169a718247ad0705095301913fe90305e3031bddcc`  
		Last Modified: Wed, 08 Nov 2017 05:43:14 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.14-management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:e8ed5cd9b245e266e484ca928e7737c0e2e586a425d1a35953b6eb95dee4dda1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23414140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95ad91096d26dce7523e8edcb959d25df4acb9a9ec30aa436b3efdf7447e6111`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 13:53:09 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 13:53:13 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 13:53:28 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 13:53:28 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 13:53:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 13:53:29 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 13:53:30 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 14:56:12 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 14:56:13 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 14:56:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 14:56:30 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 14:56:32 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 14:56:32 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 14:56:34 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 14:56:35 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 14:56:36 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 14:56:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 14:56:37 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 14:56:38 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 14:56:57 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 14:56:58 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05834eac152e30997eb4f1aa4ffe8e952bd759c1a1009bd183dec80dca24cf86`  
		Last Modified: Thu, 26 Oct 2017 13:55:11 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd88a23486b40755f2e1192cb35d4fdaec20831c18ce83da31df3f8aa2f7b45c`  
		Last Modified: Thu, 26 Oct 2017 13:55:11 GMT  
		Size: 8.3 KB (8297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f9ba1206e6e4bfba21cef7f235482b41868ec966d5ebc44a4c4ac432a5fe03`  
		Last Modified: Thu, 26 Oct 2017 13:55:16 GMT  
		Size: 16.4 MB (16376872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96467a3af759dd4d0c8e9dfd696a707eaa9c669b6d249c3e68a9fd8fc1e2be0b`  
		Last Modified: Wed, 08 Nov 2017 14:59:37 GMT  
		Size: 5.1 MB (5108108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e205c0c58f4d29c6e42fdf1c9ee424a884b20605fa3edad491d61393b620bc`  
		Last Modified: Wed, 08 Nov 2017 14:59:37 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ac11c13026eea7c9ea3de8e602b707ab2ec1d784eeac0768b5c3c114d8da53`  
		Last Modified: Wed, 08 Nov 2017 14:59:36 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e0267b7ac6617ceb8d53546896d0f88af55faf21e13a9df998452604170475`  
		Last Modified: Wed, 08 Nov 2017 14:59:37 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd69c177dca55f85ae172255c42fb1a1afc9098e0d9c90a2af3e9281a06355e8`  
		Last Modified: Wed, 08 Nov 2017 14:59:36 GMT  
		Size: 4.0 KB (4036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b418983d7e097bc55fc7ad055b5ce4b247a68a165ea5b7455d4e1b1ccef99afd`  
		Last Modified: Wed, 08 Nov 2017 15:00:47 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.14-management-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:7df18e5d24275cec2a0d6974a6f8554d63bad500dedcc90dbefaaf1049d2c689
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23879249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db93ff3b392669c3d72d83fb6b6c4efce88e00330eb9b1a50ac6e3952e38756a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 10:44:24 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 10:44:28 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 10:44:50 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 10:44:50 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 10:44:50 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 10:44:50 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 10:44:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 11:49:36 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 11:49:36 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 11:50:03 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 11:50:04 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 11:50:04 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 11:50:04 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 11:50:05 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 11:50:06 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 11:50:06 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 11:50:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 11:50:06 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 11:50:07 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 11:50:17 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 11:50:17 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cf0f0a132c9bb882206147dffad08dc780f2bc82556cfbda9878a3218f1e7c`  
		Last Modified: Thu, 26 Oct 2017 10:45:28 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e00a9186496c6602ccd3efb4bb1780b42adb7028c8fa3cd3c1ff2f10bcfa33a3`  
		Last Modified: Thu, 26 Oct 2017 10:45:28 GMT  
		Size: 8.3 KB (8305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc19938c3bf2e858347a9c7add1beac38af5a4f83b99d80ddc004aa4ad51e596`  
		Last Modified: Thu, 26 Oct 2017 10:45:30 GMT  
		Size: 16.7 MB (16710838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fffae17dadc5d20f4dc949f407146594a7ca8aa4fb11be121519ef0a316dd05a`  
		Last Modified: Wed, 08 Nov 2017 11:51:38 GMT  
		Size: 5.1 MB (5108395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaef62ea46f71b0592807ef97d67f3649e3ccaea0059286442606ddfc96644d9`  
		Last Modified: Wed, 08 Nov 2017 11:51:37 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77474049fb515a920c7c001b111e29142426b6cb3e22416e6784819702461895`  
		Last Modified: Wed, 08 Nov 2017 11:51:36 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580eb2276815b19169a24cccdb63099175d34f275d9a3a0f07900e7966f0694e`  
		Last Modified: Wed, 08 Nov 2017 11:51:37 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5471bc4e5ffb070324baf533e92da1a68c5498041f178eb4a318449bb0e03bf`  
		Last Modified: Wed, 08 Nov 2017 11:51:37 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0a51e0d41ab48801f44f6af1c41212776e01e94077bb83ae82ca64d6204c7e`  
		Last Modified: Wed, 08 Nov 2017 11:52:08 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.14-management-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:4a00b41bb7019e01f206e41b5aa7da165d05f371d9ebb8b77eb6a9b1c4cd5bd5
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23915197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b17ad4bb3464a088278244de58eab0831867b784c303c0f9be34cf90b8b3203e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 17:06:39 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 17:06:42 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 17:06:55 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 17:06:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 17:06:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 17:06:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 17:06:56 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 18:07:41 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 18:07:41 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 18:07:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 18:07:49 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 18:07:50 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 18:07:50 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 18:07:51 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 18:07:51 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 18:07:52 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 18:07:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 18:07:52 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 18:07:52 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 18:08:01 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 18:08:01 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299a1fbc19bbea84dbf4d0b6e2e71fb847299b017209b1f9783faea14214c995`  
		Last Modified: Thu, 26 Oct 2017 17:07:31 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb76f2dd4162cae82233bc93ba436b63ca37e536d53c85a9f1d7343203e3c383`  
		Last Modified: Thu, 26 Oct 2017 17:07:31 GMT  
		Size: 8.6 KB (8604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac09bb55706d627cf6348c9d0bd891c2fe9a4155aee5d95264b92781371021db`  
		Last Modified: Thu, 26 Oct 2017 17:07:33 GMT  
		Size: 16.7 MB (16726549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d93907c5b4f4bc7a5481de6bb16c3f072a75e5527d3cfc3b9749b113cfae95f`  
		Last Modified: Wed, 08 Nov 2017 18:08:54 GMT  
		Size: 5.1 MB (5108471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35583f28b47cbc069cf7cd90f5e6424989326186e6d4eda16789f04b1a593292`  
		Last Modified: Wed, 08 Nov 2017 18:08:53 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5276afe58ea371107f544988a9e5123c638674f1af93bb6aabbb052a917ca221`  
		Last Modified: Wed, 08 Nov 2017 18:08:53 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2728c7344d2114e96e7f93f99acfaa5e41fd50018d5c58170bbb955c3f61b4`  
		Last Modified: Wed, 08 Nov 2017 18:08:53 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161b930d7a34fea6d9e836a0f286a8e3105160cdd36fa617d62997bd63388023`  
		Last Modified: Wed, 08 Nov 2017 18:08:53 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fdeb2f56852f23d4e9898407b7b17157ff3198186456a4b0101e3223c199d1a`  
		Last Modified: Wed, 08 Nov 2017 18:09:12 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-alpine`

```console
$ docker pull rabbitmq@sha256:7fdc09f8ba068b0d6838387c24fb2173060c362d35dbf546566e0e5bd9c7fb9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `rabbitmq:3.6-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:9faf517893217bcb672dda3372caf3731c3f8fd9b3c908b234f5d139fb71fde2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23675566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:275978bffb6379d6fc54fdc7874ea58e884ab5a227ec4138a707092112bafc2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:07:57 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Sat, 04 Nov 2017 05:08:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Nov 2017 05:08:11 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Sat, 04 Nov 2017 05:08:11 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 04 Nov 2017 05:08:11 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sat, 04 Nov 2017 05:08:11 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 05:08:12 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 05:41:03 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 05:41:03 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 05:41:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 05:41:27 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 05:41:28 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 05:41:28 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 05:41:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 05:41:29 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 05:41:30 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 05:41:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 05:41:30 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 05:41:30 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd931d2c14c5b5501527044a16e680c1b1111ba939bd17bbd06d73cf92976dc2`  
		Last Modified: Sat, 04 Nov 2017 05:09:49 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f3f2df337d68db6b507058eda830a8986efd4eb17efa8910edf383fb1e67c9`  
		Last Modified: Sat, 04 Nov 2017 05:09:49 GMT  
		Size: 8.2 KB (8181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7844869e4b5b7138207173247acaa8c055a4b34be2fd981dc153aa1d06d31861`  
		Last Modified: Sat, 04 Nov 2017 05:09:52 GMT  
		Size: 16.6 MB (16561780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18cccd03229e8d4e3b51b1776b63f584607b7154b95bfb9d2767dc63d2b94e6`  
		Last Modified: Wed, 08 Nov 2017 05:42:48 GMT  
		Size: 5.1 MB (5108427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b1a078564a2b7a12bb756228a5f2adc4d7d6d42b72cacd82aef74e27ef07a7`  
		Last Modified: Wed, 08 Nov 2017 05:42:48 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a05083963037f58105f5fda0a18ed7a88cf1308f9430c152f5d75e871fa29e0`  
		Last Modified: Wed, 08 Nov 2017 05:42:47 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:749e0123d4b8df67ecebb3ae52ec16d2202197ed19c292af307897c04686bb90`  
		Last Modified: Wed, 08 Nov 2017 05:42:48 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efecef2b5124d36f82ffa7552672508f9e59c59d548e2c74e6a33052a46025d`  
		Last Modified: Wed, 08 Nov 2017 05:42:47 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:1be6dc9852429ccdf7fe0f2b1bd9705b3aea72ade4ecc979b0836d83a71e540f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23413948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22bf2fe2713c63f306c2811fa08e0b24ea8f10774a886bdd647dd4dbeac173d3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 13:53:09 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 13:53:13 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 13:53:28 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 13:53:28 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 13:53:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 13:53:29 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 13:53:30 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 14:56:12 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 14:56:13 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 14:56:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 14:56:30 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 14:56:32 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 14:56:32 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 14:56:34 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 14:56:35 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 14:56:36 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 14:56:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 14:56:37 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 14:56:38 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05834eac152e30997eb4f1aa4ffe8e952bd759c1a1009bd183dec80dca24cf86`  
		Last Modified: Thu, 26 Oct 2017 13:55:11 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd88a23486b40755f2e1192cb35d4fdaec20831c18ce83da31df3f8aa2f7b45c`  
		Last Modified: Thu, 26 Oct 2017 13:55:11 GMT  
		Size: 8.3 KB (8297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f9ba1206e6e4bfba21cef7f235482b41868ec966d5ebc44a4c4ac432a5fe03`  
		Last Modified: Thu, 26 Oct 2017 13:55:16 GMT  
		Size: 16.4 MB (16376872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96467a3af759dd4d0c8e9dfd696a707eaa9c669b6d249c3e68a9fd8fc1e2be0b`  
		Last Modified: Wed, 08 Nov 2017 14:59:37 GMT  
		Size: 5.1 MB (5108108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e205c0c58f4d29c6e42fdf1c9ee424a884b20605fa3edad491d61393b620bc`  
		Last Modified: Wed, 08 Nov 2017 14:59:37 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ac11c13026eea7c9ea3de8e602b707ab2ec1d784eeac0768b5c3c114d8da53`  
		Last Modified: Wed, 08 Nov 2017 14:59:36 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e0267b7ac6617ceb8d53546896d0f88af55faf21e13a9df998452604170475`  
		Last Modified: Wed, 08 Nov 2017 14:59:37 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd69c177dca55f85ae172255c42fb1a1afc9098e0d9c90a2af3e9281a06355e8`  
		Last Modified: Wed, 08 Nov 2017 14:59:36 GMT  
		Size: 4.0 KB (4036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:63cc19e6634fdd94fda76219c8e4553474a0874f836001336a0db91f4a2bdd59
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23879056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cd51770818309e37697b99a0f4f192a68989a3a5404e638464843feb9785d00`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 10:44:24 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 10:44:28 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 10:44:50 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 10:44:50 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 10:44:50 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 10:44:50 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 10:44:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 11:49:36 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 11:49:36 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 11:50:03 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 11:50:04 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 11:50:04 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 11:50:04 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 11:50:05 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 11:50:06 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 11:50:06 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 11:50:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 11:50:06 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 11:50:07 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cf0f0a132c9bb882206147dffad08dc780f2bc82556cfbda9878a3218f1e7c`  
		Last Modified: Thu, 26 Oct 2017 10:45:28 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e00a9186496c6602ccd3efb4bb1780b42adb7028c8fa3cd3c1ff2f10bcfa33a3`  
		Last Modified: Thu, 26 Oct 2017 10:45:28 GMT  
		Size: 8.3 KB (8305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc19938c3bf2e858347a9c7add1beac38af5a4f83b99d80ddc004aa4ad51e596`  
		Last Modified: Thu, 26 Oct 2017 10:45:30 GMT  
		Size: 16.7 MB (16710838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fffae17dadc5d20f4dc949f407146594a7ca8aa4fb11be121519ef0a316dd05a`  
		Last Modified: Wed, 08 Nov 2017 11:51:38 GMT  
		Size: 5.1 MB (5108395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaef62ea46f71b0592807ef97d67f3649e3ccaea0059286442606ddfc96644d9`  
		Last Modified: Wed, 08 Nov 2017 11:51:37 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77474049fb515a920c7c001b111e29142426b6cb3e22416e6784819702461895`  
		Last Modified: Wed, 08 Nov 2017 11:51:36 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580eb2276815b19169a24cccdb63099175d34f275d9a3a0f07900e7966f0694e`  
		Last Modified: Wed, 08 Nov 2017 11:51:37 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5471bc4e5ffb070324baf533e92da1a68c5498041f178eb4a318449bb0e03bf`  
		Last Modified: Wed, 08 Nov 2017 11:51:37 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:cf9ca522739e6d09a7ee04600e67d63db1969a448eb3848a310e1b895711f09d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23915006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34f902caf1364f21f21bb55deec8ddc150623cb5c2835d2b19a09e82a556a272`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 17:06:39 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 17:06:42 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 17:06:55 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 17:06:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 17:06:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 17:06:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 17:06:56 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 18:07:41 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 18:07:41 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 18:07:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 18:07:49 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 18:07:50 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 18:07:50 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 18:07:51 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 18:07:51 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 18:07:52 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 18:07:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 18:07:52 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 18:07:52 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299a1fbc19bbea84dbf4d0b6e2e71fb847299b017209b1f9783faea14214c995`  
		Last Modified: Thu, 26 Oct 2017 17:07:31 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb76f2dd4162cae82233bc93ba436b63ca37e536d53c85a9f1d7343203e3c383`  
		Last Modified: Thu, 26 Oct 2017 17:07:31 GMT  
		Size: 8.6 KB (8604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac09bb55706d627cf6348c9d0bd891c2fe9a4155aee5d95264b92781371021db`  
		Last Modified: Thu, 26 Oct 2017 17:07:33 GMT  
		Size: 16.7 MB (16726549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d93907c5b4f4bc7a5481de6bb16c3f072a75e5527d3cfc3b9749b113cfae95f`  
		Last Modified: Wed, 08 Nov 2017 18:08:54 GMT  
		Size: 5.1 MB (5108471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35583f28b47cbc069cf7cd90f5e6424989326186e6d4eda16789f04b1a593292`  
		Last Modified: Wed, 08 Nov 2017 18:08:53 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5276afe58ea371107f544988a9e5123c638674f1af93bb6aabbb052a917ca221`  
		Last Modified: Wed, 08 Nov 2017 18:08:53 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2728c7344d2114e96e7f93f99acfaa5e41fd50018d5c58170bbb955c3f61b4`  
		Last Modified: Wed, 08 Nov 2017 18:08:53 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161b930d7a34fea6d9e836a0f286a8e3105160cdd36fa617d62997bd63388023`  
		Last Modified: Wed, 08 Nov 2017 18:08:53 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management`

```console
$ docker pull rabbitmq@sha256:bbdb4cfe4e82d29684c6ad64538bf1a1070387073da24dd21e313c8f5bc8d994
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `rabbitmq:3.6-management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:6fb67294c552681b5396820099d380bf60a13aaa25bdc7d2cdcf31972e97bb04
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62945528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da97a9b91d4d4f9b930d5433e5c6148cff146d19cd5a0285a23dc85db691244c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:48 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Sat, 04 Nov 2017 05:26:48 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 17:46:08 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 17:46:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Sat, 04 Nov 2017 17:46:09 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 17:46:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 17:46:49 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 17:46:50 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 04 Nov 2017 17:46:50 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 17:46:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 05:40:26 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 05:40:26 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 05:40:26 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 05:40:46 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 05:40:47 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 05:40:47 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 05:40:47 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 05:40:48 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 05:40:49 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 05:40:49 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 05:40:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 05:40:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 05:40:50 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 05:40:51 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 05:40:58 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 05:40:58 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a230aa37269c12703c5faa3deb792f9ad4b64056beb9bcbc1ae43c522a8040`  
		Last Modified: Sat, 04 Nov 2017 17:47:41 GMT  
		Size: 4.5 MB (4498370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9190ffbd22711342d4d9be34c22d639f1f0f3abfe997a5c93cf50107b7a58a81`  
		Last Modified: Sat, 04 Nov 2017 17:47:40 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e829d8f0d28e827108c1c6ff25405743e10cb6acb364dc1ab04670d23c45ee`  
		Last Modified: Sat, 04 Nov 2017 17:47:40 GMT  
		Size: 951.9 KB (951943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2404945c98d3c39a18e3d83787ade2526a1d476b140ad4ca470618135830f5a5`  
		Last Modified: Sat, 04 Nov 2017 17:47:43 GMT  
		Size: 27.7 MB (27703766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629c315aa810b2d8dc5043d457fb370693d1db5478cc2a281cbdf4fcec49ccc6`  
		Last Modified: Wed, 08 Nov 2017 05:41:51 GMT  
		Size: 7.3 MB (7288151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff2b1994ea218ef7f3e9cbd6e6d97ca7e0b7d37c195411073d8e12a823877ab`  
		Last Modified: Wed, 08 Nov 2017 05:41:49 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3246485e4a5d6ac4cbe7306d3fb38a69aa9f63c71821be31fa26b547129e1047`  
		Last Modified: Wed, 08 Nov 2017 05:41:48 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd004dbdde7c3128d1e918a1eb7b8558fb9818be79f618629f3b7cab3f9f2ecc`  
		Last Modified: Wed, 08 Nov 2017 05:41:48 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3f0c64cb0dc2c36ba3e1c9408cc2e006d720b781eaa64000bece26f2ec9e21`  
		Last Modified: Wed, 08 Nov 2017 05:41:48 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d9dcfb8c200f5fa4500f3be05357a6c03c424b5db612b821e76c60b4285093`  
		Last Modified: Wed, 08 Nov 2017 05:41:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30545194ec5792ea8b54ad4af7d9f33182cce849accd89c368c1d2551797b994`  
		Last Modified: Wed, 08 Nov 2017 05:42:21 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:5a3c32f0c1c512508d9d46506a52fb9c5336ef7af0035fedfbf8842a2408b25e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.5 MB (58525423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58e51335e25bad4d0846134aac011f587d6f9c079a4d53f981915811666ec653`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:48 GMT
ADD file:ff9945b48b1ac236dcec24eb9dfaf52b7c151a3b11c8502391f0866dfb4e3ac3 in / 
# Mon, 09 Oct 2017 21:44:48 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 14:14:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 14:14:44 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 03 Nov 2017 14:14:44 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 14:15:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 14:15:50 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 14:15:50 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Nov 2017 14:15:50 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 14:15:51 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 15:14:29 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 15:14:29 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 15:14:29 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 15:14:57 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 15:14:57 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 15:14:58 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 15:14:58 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 15:14:59 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 15:15:00 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 15:15:00 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 15:15:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 15:15:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 15:15:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 15:15:02 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 15:15:17 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 15:15:18 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:836d5b6056a9815be79c76480a90299267f60201bd1e3396817003e6c14819cc`  
		Last Modified: Mon, 09 Oct 2017 21:50:56 GMT  
		Size: 21.2 MB (21166251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab996b3d7a101ba6bf42115b4f156db847e321da9af52d5d686d82aa736b585`  
		Last Modified: Sat, 04 Nov 2017 14:15:27 GMT  
		Size: 4.2 MB (4231333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17684896b3ee5196333b6fa48ce590caddf46e21d82a5c5ef0f1a171360a6e17`  
		Last Modified: Sat, 04 Nov 2017 14:15:26 GMT  
		Size: 4.1 KB (4082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:828368257290f3ec36ef92643180012d362674e933b84c2db3c17c07f71d2629`  
		Last Modified: Sat, 04 Nov 2017 14:15:26 GMT  
		Size: 942.5 KB (942454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2fd4a06dc148e5a9a0ca56e46f45a376b486ca2b6c2c542f69e1f95927a7347`  
		Last Modified: Sat, 04 Nov 2017 14:15:31 GMT  
		Size: 25.2 MB (25170644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:706d18646df60ed10159c755526d2bce681fc0af771bbf562b58a57c6512c6c9`  
		Last Modified: Wed, 08 Nov 2017 15:15:31 GMT  
		Size: 7.0 MB (7003775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff375a9d907798e49eb1be06c5009c4a67307bb6bd79e9fccd5b6a0f73f4f86f`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b17b1ed86927f886e17566b808e1906e805150a31f499d189c0f500e15e33f19`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffbb30b719bc8fd2f4fda42258907104a5aacb01efaa78a84b5c2f7115bb59d0`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d48d2b51e4f81a9e2887218e78e5127274b6b3f08216a8b3f8e9000f88b11b`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad332c481563702001f742604f7523dd29b563a34d9916885ccc763b0ae829d6`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf7dac959a5fc4de2e5a096e907b1f06d71a3cc3a475811c85acfe1a846dc2e`  
		Last Modified: Wed, 08 Nov 2017 15:15:59 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:5aeed246ab3e099bcc50cdb679a8cfb8f68f8da50670f7a4e79cda2e4d383f36
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.8 MB (55780565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:816c908a9f1f090d8c4b39e78f44e6740ad32a178987f0241e7b6a835ce21968`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 13:07:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 13:07:42 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 03 Nov 2017 13:07:42 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 13:07:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 13:08:17 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 13:08:17 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Nov 2017 13:08:17 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 13:08:18 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 14:07:33 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 14:07:33 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 14:07:33 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 14:07:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 14:07:56 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 14:07:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 14:07:58 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 14:07:59 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 14:08:00 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 14:08:00 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 14:08:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 14:08:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 14:08:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 14:08:02 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 14:08:18 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 14:08:18 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:59e81a3fde58ec8d4b8f2f58b98ef2f4d951d37dd9b99b016fd294a8e07d7796`  
		Last Modified: Mon, 09 Oct 2017 21:52:49 GMT  
		Size: 19.3 MB (19277135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2037b99f3c3dc51e8ace39aed9971155f34f325ac4f0a1e56a07c4d6c02f5ae6`  
		Last Modified: Fri, 03 Nov 2017 13:09:18 GMT  
		Size: 3.9 MB (3868347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f368172ea96bda944832762ad29b52dfe17ec5e6fae96eee37adc4e9d68674a5`  
		Last Modified: Fri, 03 Nov 2017 13:09:16 GMT  
		Size: 4.1 KB (4084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:893cc1ae60f8bf72ac3020ccc60b22d9e0ad0cb0647e15bc4847d08c8985eee2`  
		Last Modified: Fri, 03 Nov 2017 13:09:16 GMT  
		Size: 926.1 KB (926097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13220cc1a683014bda9cfae7f7ee7015a26b28048f90f5aa3ed8b6a96f4b2813`  
		Last Modified: Fri, 03 Nov 2017 13:09:20 GMT  
		Size: 24.8 MB (24785610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58a356878563ee7880f7ea397896a76cf556256188c064dfaa395c4eb8b307a`  
		Last Modified: Wed, 08 Nov 2017 14:08:36 GMT  
		Size: 6.9 MB (6912409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a84d7e484060abe56af99e3243e35870226baf3d464594649cde00b432409b`  
		Last Modified: Wed, 08 Nov 2017 14:08:32 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a4dda82cd90132fc6846f338ac824d01d2491a4dc9c7a2148e45dd36c1a07c1`  
		Last Modified: Wed, 08 Nov 2017 14:08:32 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb5a1bbcad31fe9218b4c700e6e6f49222b30383dd5d44e2f19ff528acf5779`  
		Last Modified: Wed, 08 Nov 2017 14:08:32 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6e3a0fc563c4eadf4b3e4275c74aad4341c977d1fbe0f7cb22c802371e0280`  
		Last Modified: Wed, 08 Nov 2017 14:08:34 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7566f7d60e14ccc8d5e2598242a25fe6b378d6777221884a5ee75ff2e99001c`  
		Last Modified: Wed, 08 Nov 2017 14:08:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73711d6f4f3b9cb591f9e5bae5b009927eeb8bf1a3079980b59ba0b8d5372547`  
		Last Modified: Wed, 08 Nov 2017 14:09:12 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:f8baff2ff944fa142429cdab336e52ec4dd54324ac5ddb6fcf22de7e68fff040
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57371306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edaa34989d006bba2d07b9bcf8be85d266666cbc0cd117c5f344082626b0c0fa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 13:53:20 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 13:53:22 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 03 Nov 2017 13:53:23 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 19:34:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 19:35:29 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:35:29 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 04 Nov 2017 19:35:30 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 19:35:31 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 14:53:01 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 14:53:02 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 14:53:02 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 14:55:19 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 14:55:19 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 14:55:21 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 14:55:22 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 14:55:23 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 14:55:25 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 14:55:26 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 14:55:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 14:55:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 14:55:30 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 14:55:30 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 14:55:55 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 14:55:56 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:e907afd6e25615a4d3eb554d930cef57b87e79ec82413889c2eac38beb4eb8f7`  
		Last Modified: Mon, 09 Oct 2017 22:03:08 GMT  
		Size: 20.3 MB (20337143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f0e65f9ffb0e8a0344de3620c73aa9cd2d1ae973a3cf7588e6441034e9822e`  
		Last Modified: Sat, 04 Nov 2017 19:40:47 GMT  
		Size: 4.1 MB (4073213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bed6073dce4194deeccf2caa0ec9b97ec2177bc41b7b540c17cdf13fda94ff0`  
		Last Modified: Sat, 04 Nov 2017 19:40:45 GMT  
		Size: 4.1 KB (4084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0596ffaef28f501b64c44c84ad20044e9016acaa66310b575a15244c91f49e`  
		Last Modified: Sat, 04 Nov 2017 19:40:46 GMT  
		Size: 919.4 KB (919403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda14140ddcfb15fd8d4be24ae1356f497b7833c12233249de7016e1f2daf9f8`  
		Last Modified: Sat, 04 Nov 2017 19:40:51 GMT  
		Size: 25.0 MB (25042388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78ee2824b70d54b867b533443f6fd14f51e18f23759b80153c869a2968e569b`  
		Last Modified: Wed, 08 Nov 2017 14:57:26 GMT  
		Size: 7.0 MB (6988187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ca626918894c95f51ccc210a06699be77ca84210960cd18a30b55d87d56c73`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8571e229aa778383fbbbdb4c00374d68b5bfafdb419ab20b842307aab4fcedc7`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2bf9029e48f539b6a5f83c8b3d3dda09c821b3d219d121afa9217295dcde9dd`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e538834de5f58eecf0df7ac787b4c94167bd6a9866534400d2eb04acd9c32e85`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf4d77c8deac6d39c639b9f2446f4a57e2d71802b537e300a5d548c6ca98647`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fc97d0e8617141d030a4491d7f41ae04d794e6184b9f24a89ed7a5cebc6284`  
		Last Modified: Wed, 08 Nov 2017 14:58:31 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; 386

```console
$ docker pull rabbitmq@sha256:5771064a71db0cb94d2c2a7fad29dacb647e7d2ae79bf8eb5670bc5c53a2a377
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.0 MB (63997209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29311920186d6145a01465b520b28c79b06c90ff7f6253493d72ef5625e27f57`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:36 GMT
ADD file:6582536277127947668f7bfdc1471a4e36170915b91a4cb841e7e1bfa1de6535 in / 
# Mon, 09 Oct 2017 21:45:36 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 10:45:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:45:12 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 03 Nov 2017 10:45:13 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 10:45:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 10:46:03 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:46:04 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Nov 2017 10:46:04 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 10:46:04 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 11:48:47 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 11:48:48 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 11:48:48 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 11:49:12 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 11:49:12 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 11:49:13 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 11:49:13 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 11:49:14 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 11:49:14 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 11:49:15 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 11:49:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 11:49:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 11:49:16 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 11:49:16 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 11:49:30 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 11:49:30 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:b2b52fe46b29fe5d0689f26449c2114e40f0731d4ce3eb8c3941397b74205432`  
		Last Modified: Mon, 09 Oct 2017 21:53:42 GMT  
		Size: 23.1 MB (23128678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d407b136da0731f5f38279001e9dd426217937443cad0f16e1f242366290773`  
		Last Modified: Fri, 03 Nov 2017 10:47:13 GMT  
		Size: 4.8 MB (4803637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c93817e78345b4b5070c81e5a37d02afc2b5fe347a1a4bf59e09f6084814fd2`  
		Last Modified: Fri, 03 Nov 2017 10:47:12 GMT  
		Size: 4.1 KB (4057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f97eae59c75f8f814ab781f5239ac2e132b7b65c77e75b35023c603c539ca54f`  
		Last Modified: Fri, 03 Nov 2017 10:47:12 GMT  
		Size: 931.5 KB (931524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aed670dee19fde6946658d7129e13520c1a0747f8b80b6f92dac5f6d974ae52`  
		Last Modified: Fri, 03 Nov 2017 10:47:24 GMT  
		Size: 27.8 MB (27818690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11406d3e0ee6652316aef307f374537466b83e9a8b039ac094bec9a91db51f0b`  
		Last Modified: Wed, 08 Nov 2017 11:50:31 GMT  
		Size: 7.3 MB (7303738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608b7a338130eaf9ca53ab8aae04dc703a6449fa58eba5be04558381ec57eaab`  
		Last Modified: Wed, 08 Nov 2017 11:50:29 GMT  
		Size: 2.3 KB (2258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9380c3d6a421026f3c7f6831ec07ffb5eb0aece161f5f828a30dec24044705`  
		Last Modified: Wed, 08 Nov 2017 11:50:30 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b5305e32a2ea4c0bfc2c36460511eb7875a23f38fdd44fa8fa2f50a02c2658`  
		Last Modified: Wed, 08 Nov 2017 11:50:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1f16767fe3e5b4874ee86ccb33504606a39510dad06040c122662771157998`  
		Last Modified: Wed, 08 Nov 2017 11:50:30 GMT  
		Size: 4.0 KB (4040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc67a88011d726ea1e2a91b28cbe29e7aa9ba1026baf0890e813ce685ae28368`  
		Last Modified: Wed, 08 Nov 2017 11:50:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f06877666402272fcbd0aaa104c086e6b599d86cd1dc513b1240c92c55bbd5`  
		Last Modified: Wed, 08 Nov 2017 11:51:05 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; s390x

```console
$ docker pull rabbitmq@sha256:bd9dd8d582db968a260af3f807307d9706dc6072d9f3171ea8a230bd4e8a179c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60460553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b17152a9401a0ef3fd17369d282ba008a09e5c6cba66013c934af7accf533fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:35 GMT
ADD file:ae4aaa6affe22f36ab5478771d5c84917f72de7a8dac16345a035709a1a5edf4 in / 
# Mon, 09 Oct 2017 21:44:36 GMT
CMD ["bash"]
# Thu, 02 Nov 2017 17:06:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 17:06:41 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 02 Nov 2017 17:06:42 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 17:07:21 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 02 Nov 2017 17:07:43 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 17:07:44 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 02 Nov 2017 17:07:44 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 17:07:44 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 18:06:32 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 18:06:32 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 18:06:32 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 18:07:19 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 18:07:19 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 18:07:20 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 18:07:20 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 18:07:21 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 18:07:21 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 18:07:22 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 18:07:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 18:07:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 18:07:23 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 18:07:23 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 18:07:34 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 18:07:34 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:671716cc49517eef5f430c695ce344d63e390cb65f58d30939f2ba615c953686`  
		Last Modified: Mon, 09 Oct 2017 21:49:09 GMT  
		Size: 22.3 MB (22339951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cae61f12be6f01ba06573d9393712e91821cd5496302310f550fe5842dea557`  
		Last Modified: Fri, 03 Nov 2017 17:08:41 GMT  
		Size: 4.5 MB (4529879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca307103ce923e7e89d35185be4df8e54c3c0b54d259b8880aa7bae107d4952`  
		Last Modified: Fri, 03 Nov 2017 17:08:39 GMT  
		Size: 4.1 KB (4074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d16320f9fc35ea20ba7fb9b21f88e3f0f06c52d416682319f3b2a85a345a3d5`  
		Last Modified: Fri, 03 Nov 2017 17:08:39 GMT  
		Size: 938.0 KB (938019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801205b182b8d6f7acf36200b2ba07ed52ea224dfefe792b525224e4aacb4d4a`  
		Last Modified: Fri, 03 Nov 2017 17:08:48 GMT  
		Size: 25.6 MB (25619372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12ce67a630f123e36df054e0e90c31abb3d517dd984362eaa6cf7bc070304fe`  
		Last Modified: Wed, 08 Nov 2017 18:08:14 GMT  
		Size: 7.0 MB (7022368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f4dea1598011d081121e868c941bd695758683908030b52f8731656d62b8fc`  
		Last Modified: Wed, 08 Nov 2017 18:08:12 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1968b253d8ac805bf6188d47995cd6f0a576a4f34ccd66b9bc418a0dc94fa251`  
		Last Modified: Wed, 08 Nov 2017 18:08:12 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd7240ae1eb0726c11374653d1ea68694dd90bc2f2ae12d89158626f02ce3f8`  
		Last Modified: Wed, 08 Nov 2017 18:08:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:380b1c8ca0aabd89f393a15a64c185770c2628bf5299026d12eb21b8a1e293e0`  
		Last Modified: Wed, 08 Nov 2017 18:08:13 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee865b81bc6c91cba724881b543ca690115dd90710a4fa43a8eae27e136cfb4b`  
		Last Modified: Wed, 08 Nov 2017 18:08:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2405563deaf816f18368dc330c443de6ddc256bd008d497e4109303adb607851`  
		Last Modified: Wed, 08 Nov 2017 18:08:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management-alpine`

```console
$ docker pull rabbitmq@sha256:6220affc4420dae7fd23257a6ead81e2fe71f60470ed61969f29458b8aca40c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `rabbitmq:3.6-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:b9bd8d394b9f406246d8a0259fc3914925bd99aa5eb7c2501eb8755777b16c2f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23675757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f7630631a89c10be15f7abbf23574da760f6b873ff37d1b8ebb0570b009aada`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:07:57 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Sat, 04 Nov 2017 05:08:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Nov 2017 05:08:11 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Sat, 04 Nov 2017 05:08:11 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 04 Nov 2017 05:08:11 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sat, 04 Nov 2017 05:08:11 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 05:08:12 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 05:41:03 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 05:41:03 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 05:41:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 05:41:27 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 05:41:28 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 05:41:28 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 05:41:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 05:41:29 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 05:41:30 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 05:41:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 05:41:30 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 05:41:30 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 05:41:38 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 05:41:38 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd931d2c14c5b5501527044a16e680c1b1111ba939bd17bbd06d73cf92976dc2`  
		Last Modified: Sat, 04 Nov 2017 05:09:49 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f3f2df337d68db6b507058eda830a8986efd4eb17efa8910edf383fb1e67c9`  
		Last Modified: Sat, 04 Nov 2017 05:09:49 GMT  
		Size: 8.2 KB (8181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7844869e4b5b7138207173247acaa8c055a4b34be2fd981dc153aa1d06d31861`  
		Last Modified: Sat, 04 Nov 2017 05:09:52 GMT  
		Size: 16.6 MB (16561780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18cccd03229e8d4e3b51b1776b63f584607b7154b95bfb9d2767dc63d2b94e6`  
		Last Modified: Wed, 08 Nov 2017 05:42:48 GMT  
		Size: 5.1 MB (5108427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b1a078564a2b7a12bb756228a5f2adc4d7d6d42b72cacd82aef74e27ef07a7`  
		Last Modified: Wed, 08 Nov 2017 05:42:48 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a05083963037f58105f5fda0a18ed7a88cf1308f9430c152f5d75e871fa29e0`  
		Last Modified: Wed, 08 Nov 2017 05:42:47 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:749e0123d4b8df67ecebb3ae52ec16d2202197ed19c292af307897c04686bb90`  
		Last Modified: Wed, 08 Nov 2017 05:42:48 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efecef2b5124d36f82ffa7552672508f9e59c59d548e2c74e6a33052a46025d`  
		Last Modified: Wed, 08 Nov 2017 05:42:47 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6feeecc743824f0b313a36169a718247ad0705095301913fe90305e3031bddcc`  
		Last Modified: Wed, 08 Nov 2017 05:43:14 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:e8ed5cd9b245e266e484ca928e7737c0e2e586a425d1a35953b6eb95dee4dda1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23414140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95ad91096d26dce7523e8edcb959d25df4acb9a9ec30aa436b3efdf7447e6111`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 13:53:09 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 13:53:13 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 13:53:28 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 13:53:28 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 13:53:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 13:53:29 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 13:53:30 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 14:56:12 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 14:56:13 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 14:56:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 14:56:30 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 14:56:32 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 14:56:32 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 14:56:34 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 14:56:35 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 14:56:36 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 14:56:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 14:56:37 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 14:56:38 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 14:56:57 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 14:56:58 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05834eac152e30997eb4f1aa4ffe8e952bd759c1a1009bd183dec80dca24cf86`  
		Last Modified: Thu, 26 Oct 2017 13:55:11 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd88a23486b40755f2e1192cb35d4fdaec20831c18ce83da31df3f8aa2f7b45c`  
		Last Modified: Thu, 26 Oct 2017 13:55:11 GMT  
		Size: 8.3 KB (8297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f9ba1206e6e4bfba21cef7f235482b41868ec966d5ebc44a4c4ac432a5fe03`  
		Last Modified: Thu, 26 Oct 2017 13:55:16 GMT  
		Size: 16.4 MB (16376872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96467a3af759dd4d0c8e9dfd696a707eaa9c669b6d249c3e68a9fd8fc1e2be0b`  
		Last Modified: Wed, 08 Nov 2017 14:59:37 GMT  
		Size: 5.1 MB (5108108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e205c0c58f4d29c6e42fdf1c9ee424a884b20605fa3edad491d61393b620bc`  
		Last Modified: Wed, 08 Nov 2017 14:59:37 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ac11c13026eea7c9ea3de8e602b707ab2ec1d784eeac0768b5c3c114d8da53`  
		Last Modified: Wed, 08 Nov 2017 14:59:36 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e0267b7ac6617ceb8d53546896d0f88af55faf21e13a9df998452604170475`  
		Last Modified: Wed, 08 Nov 2017 14:59:37 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd69c177dca55f85ae172255c42fb1a1afc9098e0d9c90a2af3e9281a06355e8`  
		Last Modified: Wed, 08 Nov 2017 14:59:36 GMT  
		Size: 4.0 KB (4036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b418983d7e097bc55fc7ad055b5ce4b247a68a165ea5b7455d4e1b1ccef99afd`  
		Last Modified: Wed, 08 Nov 2017 15:00:47 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:7df18e5d24275cec2a0d6974a6f8554d63bad500dedcc90dbefaaf1049d2c689
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23879249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db93ff3b392669c3d72d83fb6b6c4efce88e00330eb9b1a50ac6e3952e38756a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 10:44:24 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 10:44:28 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 10:44:50 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 10:44:50 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 10:44:50 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 10:44:50 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 10:44:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 11:49:36 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 11:49:36 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 11:50:03 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 11:50:04 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 11:50:04 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 11:50:04 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 11:50:05 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 11:50:06 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 11:50:06 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 11:50:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 11:50:06 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 11:50:07 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 11:50:17 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 11:50:17 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cf0f0a132c9bb882206147dffad08dc780f2bc82556cfbda9878a3218f1e7c`  
		Last Modified: Thu, 26 Oct 2017 10:45:28 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e00a9186496c6602ccd3efb4bb1780b42adb7028c8fa3cd3c1ff2f10bcfa33a3`  
		Last Modified: Thu, 26 Oct 2017 10:45:28 GMT  
		Size: 8.3 KB (8305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc19938c3bf2e858347a9c7add1beac38af5a4f83b99d80ddc004aa4ad51e596`  
		Last Modified: Thu, 26 Oct 2017 10:45:30 GMT  
		Size: 16.7 MB (16710838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fffae17dadc5d20f4dc949f407146594a7ca8aa4fb11be121519ef0a316dd05a`  
		Last Modified: Wed, 08 Nov 2017 11:51:38 GMT  
		Size: 5.1 MB (5108395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaef62ea46f71b0592807ef97d67f3649e3ccaea0059286442606ddfc96644d9`  
		Last Modified: Wed, 08 Nov 2017 11:51:37 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77474049fb515a920c7c001b111e29142426b6cb3e22416e6784819702461895`  
		Last Modified: Wed, 08 Nov 2017 11:51:36 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580eb2276815b19169a24cccdb63099175d34f275d9a3a0f07900e7966f0694e`  
		Last Modified: Wed, 08 Nov 2017 11:51:37 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5471bc4e5ffb070324baf533e92da1a68c5498041f178eb4a318449bb0e03bf`  
		Last Modified: Wed, 08 Nov 2017 11:51:37 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0a51e0d41ab48801f44f6af1c41212776e01e94077bb83ae82ca64d6204c7e`  
		Last Modified: Wed, 08 Nov 2017 11:52:08 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:4a00b41bb7019e01f206e41b5aa7da165d05f371d9ebb8b77eb6a9b1c4cd5bd5
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23915197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b17ad4bb3464a088278244de58eab0831867b784c303c0f9be34cf90b8b3203e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 17:06:39 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 17:06:42 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 17:06:55 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 17:06:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 17:06:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 17:06:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 17:06:56 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 18:07:41 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 18:07:41 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 18:07:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 18:07:49 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 18:07:50 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 18:07:50 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 18:07:51 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 18:07:51 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 18:07:52 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 18:07:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 18:07:52 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 18:07:52 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 18:08:01 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 18:08:01 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299a1fbc19bbea84dbf4d0b6e2e71fb847299b017209b1f9783faea14214c995`  
		Last Modified: Thu, 26 Oct 2017 17:07:31 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb76f2dd4162cae82233bc93ba436b63ca37e536d53c85a9f1d7343203e3c383`  
		Last Modified: Thu, 26 Oct 2017 17:07:31 GMT  
		Size: 8.6 KB (8604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac09bb55706d627cf6348c9d0bd891c2fe9a4155aee5d95264b92781371021db`  
		Last Modified: Thu, 26 Oct 2017 17:07:33 GMT  
		Size: 16.7 MB (16726549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d93907c5b4f4bc7a5481de6bb16c3f072a75e5527d3cfc3b9749b113cfae95f`  
		Last Modified: Wed, 08 Nov 2017 18:08:54 GMT  
		Size: 5.1 MB (5108471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35583f28b47cbc069cf7cd90f5e6424989326186e6d4eda16789f04b1a593292`  
		Last Modified: Wed, 08 Nov 2017 18:08:53 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5276afe58ea371107f544988a9e5123c638674f1af93bb6aabbb052a917ca221`  
		Last Modified: Wed, 08 Nov 2017 18:08:53 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2728c7344d2114e96e7f93f99acfaa5e41fd50018d5c58170bbb955c3f61b4`  
		Last Modified: Wed, 08 Nov 2017 18:08:53 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161b930d7a34fea6d9e836a0f286a8e3105160cdd36fa617d62997bd63388023`  
		Last Modified: Wed, 08 Nov 2017 18:08:53 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fdeb2f56852f23d4e9898407b7b17157ff3198186456a4b0101e3223c199d1a`  
		Last Modified: Wed, 08 Nov 2017 18:09:12 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-alpine`

```console
$ docker pull rabbitmq@sha256:7fdc09f8ba068b0d6838387c24fb2173060c362d35dbf546566e0e5bd9c7fb9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `rabbitmq:3-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:9faf517893217bcb672dda3372caf3731c3f8fd9b3c908b234f5d139fb71fde2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23675566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:275978bffb6379d6fc54fdc7874ea58e884ab5a227ec4138a707092112bafc2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:07:57 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Sat, 04 Nov 2017 05:08:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Nov 2017 05:08:11 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Sat, 04 Nov 2017 05:08:11 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 04 Nov 2017 05:08:11 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sat, 04 Nov 2017 05:08:11 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 05:08:12 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 05:41:03 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 05:41:03 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 05:41:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 05:41:27 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 05:41:28 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 05:41:28 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 05:41:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 05:41:29 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 05:41:30 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 05:41:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 05:41:30 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 05:41:30 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd931d2c14c5b5501527044a16e680c1b1111ba939bd17bbd06d73cf92976dc2`  
		Last Modified: Sat, 04 Nov 2017 05:09:49 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f3f2df337d68db6b507058eda830a8986efd4eb17efa8910edf383fb1e67c9`  
		Last Modified: Sat, 04 Nov 2017 05:09:49 GMT  
		Size: 8.2 KB (8181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7844869e4b5b7138207173247acaa8c055a4b34be2fd981dc153aa1d06d31861`  
		Last Modified: Sat, 04 Nov 2017 05:09:52 GMT  
		Size: 16.6 MB (16561780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18cccd03229e8d4e3b51b1776b63f584607b7154b95bfb9d2767dc63d2b94e6`  
		Last Modified: Wed, 08 Nov 2017 05:42:48 GMT  
		Size: 5.1 MB (5108427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b1a078564a2b7a12bb756228a5f2adc4d7d6d42b72cacd82aef74e27ef07a7`  
		Last Modified: Wed, 08 Nov 2017 05:42:48 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a05083963037f58105f5fda0a18ed7a88cf1308f9430c152f5d75e871fa29e0`  
		Last Modified: Wed, 08 Nov 2017 05:42:47 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:749e0123d4b8df67ecebb3ae52ec16d2202197ed19c292af307897c04686bb90`  
		Last Modified: Wed, 08 Nov 2017 05:42:48 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efecef2b5124d36f82ffa7552672508f9e59c59d548e2c74e6a33052a46025d`  
		Last Modified: Wed, 08 Nov 2017 05:42:47 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:1be6dc9852429ccdf7fe0f2b1bd9705b3aea72ade4ecc979b0836d83a71e540f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23413948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22bf2fe2713c63f306c2811fa08e0b24ea8f10774a886bdd647dd4dbeac173d3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 13:53:09 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 13:53:13 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 13:53:28 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 13:53:28 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 13:53:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 13:53:29 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 13:53:30 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 14:56:12 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 14:56:13 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 14:56:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 14:56:30 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 14:56:32 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 14:56:32 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 14:56:34 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 14:56:35 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 14:56:36 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 14:56:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 14:56:37 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 14:56:38 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05834eac152e30997eb4f1aa4ffe8e952bd759c1a1009bd183dec80dca24cf86`  
		Last Modified: Thu, 26 Oct 2017 13:55:11 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd88a23486b40755f2e1192cb35d4fdaec20831c18ce83da31df3f8aa2f7b45c`  
		Last Modified: Thu, 26 Oct 2017 13:55:11 GMT  
		Size: 8.3 KB (8297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f9ba1206e6e4bfba21cef7f235482b41868ec966d5ebc44a4c4ac432a5fe03`  
		Last Modified: Thu, 26 Oct 2017 13:55:16 GMT  
		Size: 16.4 MB (16376872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96467a3af759dd4d0c8e9dfd696a707eaa9c669b6d249c3e68a9fd8fc1e2be0b`  
		Last Modified: Wed, 08 Nov 2017 14:59:37 GMT  
		Size: 5.1 MB (5108108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e205c0c58f4d29c6e42fdf1c9ee424a884b20605fa3edad491d61393b620bc`  
		Last Modified: Wed, 08 Nov 2017 14:59:37 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ac11c13026eea7c9ea3de8e602b707ab2ec1d784eeac0768b5c3c114d8da53`  
		Last Modified: Wed, 08 Nov 2017 14:59:36 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e0267b7ac6617ceb8d53546896d0f88af55faf21e13a9df998452604170475`  
		Last Modified: Wed, 08 Nov 2017 14:59:37 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd69c177dca55f85ae172255c42fb1a1afc9098e0d9c90a2af3e9281a06355e8`  
		Last Modified: Wed, 08 Nov 2017 14:59:36 GMT  
		Size: 4.0 KB (4036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:63cc19e6634fdd94fda76219c8e4553474a0874f836001336a0db91f4a2bdd59
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23879056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cd51770818309e37697b99a0f4f192a68989a3a5404e638464843feb9785d00`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 10:44:24 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 10:44:28 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 10:44:50 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 10:44:50 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 10:44:50 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 10:44:50 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 10:44:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 11:49:36 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 11:49:36 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 11:50:03 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 11:50:04 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 11:50:04 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 11:50:04 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 11:50:05 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 11:50:06 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 11:50:06 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 11:50:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 11:50:06 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 11:50:07 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cf0f0a132c9bb882206147dffad08dc780f2bc82556cfbda9878a3218f1e7c`  
		Last Modified: Thu, 26 Oct 2017 10:45:28 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e00a9186496c6602ccd3efb4bb1780b42adb7028c8fa3cd3c1ff2f10bcfa33a3`  
		Last Modified: Thu, 26 Oct 2017 10:45:28 GMT  
		Size: 8.3 KB (8305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc19938c3bf2e858347a9c7add1beac38af5a4f83b99d80ddc004aa4ad51e596`  
		Last Modified: Thu, 26 Oct 2017 10:45:30 GMT  
		Size: 16.7 MB (16710838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fffae17dadc5d20f4dc949f407146594a7ca8aa4fb11be121519ef0a316dd05a`  
		Last Modified: Wed, 08 Nov 2017 11:51:38 GMT  
		Size: 5.1 MB (5108395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaef62ea46f71b0592807ef97d67f3649e3ccaea0059286442606ddfc96644d9`  
		Last Modified: Wed, 08 Nov 2017 11:51:37 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77474049fb515a920c7c001b111e29142426b6cb3e22416e6784819702461895`  
		Last Modified: Wed, 08 Nov 2017 11:51:36 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580eb2276815b19169a24cccdb63099175d34f275d9a3a0f07900e7966f0694e`  
		Last Modified: Wed, 08 Nov 2017 11:51:37 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5471bc4e5ffb070324baf533e92da1a68c5498041f178eb4a318449bb0e03bf`  
		Last Modified: Wed, 08 Nov 2017 11:51:37 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:cf9ca522739e6d09a7ee04600e67d63db1969a448eb3848a310e1b895711f09d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23915006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34f902caf1364f21f21bb55deec8ddc150623cb5c2835d2b19a09e82a556a272`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 17:06:39 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 17:06:42 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 17:06:55 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 17:06:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 17:06:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 17:06:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 17:06:56 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 18:07:41 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 18:07:41 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 18:07:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 18:07:49 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 18:07:50 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 18:07:50 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 18:07:51 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 18:07:51 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 18:07:52 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 18:07:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 18:07:52 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 18:07:52 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299a1fbc19bbea84dbf4d0b6e2e71fb847299b017209b1f9783faea14214c995`  
		Last Modified: Thu, 26 Oct 2017 17:07:31 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb76f2dd4162cae82233bc93ba436b63ca37e536d53c85a9f1d7343203e3c383`  
		Last Modified: Thu, 26 Oct 2017 17:07:31 GMT  
		Size: 8.6 KB (8604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac09bb55706d627cf6348c9d0bd891c2fe9a4155aee5d95264b92781371021db`  
		Last Modified: Thu, 26 Oct 2017 17:07:33 GMT  
		Size: 16.7 MB (16726549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d93907c5b4f4bc7a5481de6bb16c3f072a75e5527d3cfc3b9749b113cfae95f`  
		Last Modified: Wed, 08 Nov 2017 18:08:54 GMT  
		Size: 5.1 MB (5108471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35583f28b47cbc069cf7cd90f5e6424989326186e6d4eda16789f04b1a593292`  
		Last Modified: Wed, 08 Nov 2017 18:08:53 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5276afe58ea371107f544988a9e5123c638674f1af93bb6aabbb052a917ca221`  
		Last Modified: Wed, 08 Nov 2017 18:08:53 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2728c7344d2114e96e7f93f99acfaa5e41fd50018d5c58170bbb955c3f61b4`  
		Last Modified: Wed, 08 Nov 2017 18:08:53 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161b930d7a34fea6d9e836a0f286a8e3105160cdd36fa617d62997bd63388023`  
		Last Modified: Wed, 08 Nov 2017 18:08:53 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management`

```console
$ docker pull rabbitmq@sha256:bbdb4cfe4e82d29684c6ad64538bf1a1070387073da24dd21e313c8f5bc8d994
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `rabbitmq:3-management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:6fb67294c552681b5396820099d380bf60a13aaa25bdc7d2cdcf31972e97bb04
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62945528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da97a9b91d4d4f9b930d5433e5c6148cff146d19cd5a0285a23dc85db691244c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:48 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Sat, 04 Nov 2017 05:26:48 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 17:46:08 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 17:46:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Sat, 04 Nov 2017 17:46:09 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 17:46:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 17:46:49 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 17:46:50 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 04 Nov 2017 17:46:50 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 17:46:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 05:40:26 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 05:40:26 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 05:40:26 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 05:40:46 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 05:40:47 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 05:40:47 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 05:40:47 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 05:40:48 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 05:40:49 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 05:40:49 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 05:40:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 05:40:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 05:40:50 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 05:40:51 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 05:40:58 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 05:40:58 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a230aa37269c12703c5faa3deb792f9ad4b64056beb9bcbc1ae43c522a8040`  
		Last Modified: Sat, 04 Nov 2017 17:47:41 GMT  
		Size: 4.5 MB (4498370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9190ffbd22711342d4d9be34c22d639f1f0f3abfe997a5c93cf50107b7a58a81`  
		Last Modified: Sat, 04 Nov 2017 17:47:40 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e829d8f0d28e827108c1c6ff25405743e10cb6acb364dc1ab04670d23c45ee`  
		Last Modified: Sat, 04 Nov 2017 17:47:40 GMT  
		Size: 951.9 KB (951943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2404945c98d3c39a18e3d83787ade2526a1d476b140ad4ca470618135830f5a5`  
		Last Modified: Sat, 04 Nov 2017 17:47:43 GMT  
		Size: 27.7 MB (27703766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629c315aa810b2d8dc5043d457fb370693d1db5478cc2a281cbdf4fcec49ccc6`  
		Last Modified: Wed, 08 Nov 2017 05:41:51 GMT  
		Size: 7.3 MB (7288151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff2b1994ea218ef7f3e9cbd6e6d97ca7e0b7d37c195411073d8e12a823877ab`  
		Last Modified: Wed, 08 Nov 2017 05:41:49 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3246485e4a5d6ac4cbe7306d3fb38a69aa9f63c71821be31fa26b547129e1047`  
		Last Modified: Wed, 08 Nov 2017 05:41:48 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd004dbdde7c3128d1e918a1eb7b8558fb9818be79f618629f3b7cab3f9f2ecc`  
		Last Modified: Wed, 08 Nov 2017 05:41:48 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3f0c64cb0dc2c36ba3e1c9408cc2e006d720b781eaa64000bece26f2ec9e21`  
		Last Modified: Wed, 08 Nov 2017 05:41:48 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d9dcfb8c200f5fa4500f3be05357a6c03c424b5db612b821e76c60b4285093`  
		Last Modified: Wed, 08 Nov 2017 05:41:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30545194ec5792ea8b54ad4af7d9f33182cce849accd89c368c1d2551797b994`  
		Last Modified: Wed, 08 Nov 2017 05:42:21 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:5a3c32f0c1c512508d9d46506a52fb9c5336ef7af0035fedfbf8842a2408b25e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.5 MB (58525423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58e51335e25bad4d0846134aac011f587d6f9c079a4d53f981915811666ec653`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:48 GMT
ADD file:ff9945b48b1ac236dcec24eb9dfaf52b7c151a3b11c8502391f0866dfb4e3ac3 in / 
# Mon, 09 Oct 2017 21:44:48 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 14:14:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 14:14:44 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 03 Nov 2017 14:14:44 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 14:15:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 14:15:50 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 14:15:50 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Nov 2017 14:15:50 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 14:15:51 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 15:14:29 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 15:14:29 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 15:14:29 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 15:14:57 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 15:14:57 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 15:14:58 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 15:14:58 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 15:14:59 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 15:15:00 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 15:15:00 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 15:15:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 15:15:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 15:15:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 15:15:02 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 15:15:17 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 15:15:18 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:836d5b6056a9815be79c76480a90299267f60201bd1e3396817003e6c14819cc`  
		Last Modified: Mon, 09 Oct 2017 21:50:56 GMT  
		Size: 21.2 MB (21166251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab996b3d7a101ba6bf42115b4f156db847e321da9af52d5d686d82aa736b585`  
		Last Modified: Sat, 04 Nov 2017 14:15:27 GMT  
		Size: 4.2 MB (4231333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17684896b3ee5196333b6fa48ce590caddf46e21d82a5c5ef0f1a171360a6e17`  
		Last Modified: Sat, 04 Nov 2017 14:15:26 GMT  
		Size: 4.1 KB (4082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:828368257290f3ec36ef92643180012d362674e933b84c2db3c17c07f71d2629`  
		Last Modified: Sat, 04 Nov 2017 14:15:26 GMT  
		Size: 942.5 KB (942454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2fd4a06dc148e5a9a0ca56e46f45a376b486ca2b6c2c542f69e1f95927a7347`  
		Last Modified: Sat, 04 Nov 2017 14:15:31 GMT  
		Size: 25.2 MB (25170644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:706d18646df60ed10159c755526d2bce681fc0af771bbf562b58a57c6512c6c9`  
		Last Modified: Wed, 08 Nov 2017 15:15:31 GMT  
		Size: 7.0 MB (7003775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff375a9d907798e49eb1be06c5009c4a67307bb6bd79e9fccd5b6a0f73f4f86f`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b17b1ed86927f886e17566b808e1906e805150a31f499d189c0f500e15e33f19`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffbb30b719bc8fd2f4fda42258907104a5aacb01efaa78a84b5c2f7115bb59d0`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d48d2b51e4f81a9e2887218e78e5127274b6b3f08216a8b3f8e9000f88b11b`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad332c481563702001f742604f7523dd29b563a34d9916885ccc763b0ae829d6`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf7dac959a5fc4de2e5a096e907b1f06d71a3cc3a475811c85acfe1a846dc2e`  
		Last Modified: Wed, 08 Nov 2017 15:15:59 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:5aeed246ab3e099bcc50cdb679a8cfb8f68f8da50670f7a4e79cda2e4d383f36
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.8 MB (55780565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:816c908a9f1f090d8c4b39e78f44e6740ad32a178987f0241e7b6a835ce21968`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 13:07:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 13:07:42 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 03 Nov 2017 13:07:42 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 13:07:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 13:08:17 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 13:08:17 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Nov 2017 13:08:17 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 13:08:18 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 14:07:33 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 14:07:33 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 14:07:33 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 14:07:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 14:07:56 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 14:07:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 14:07:58 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 14:07:59 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 14:08:00 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 14:08:00 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 14:08:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 14:08:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 14:08:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 14:08:02 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 14:08:18 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 14:08:18 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:59e81a3fde58ec8d4b8f2f58b98ef2f4d951d37dd9b99b016fd294a8e07d7796`  
		Last Modified: Mon, 09 Oct 2017 21:52:49 GMT  
		Size: 19.3 MB (19277135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2037b99f3c3dc51e8ace39aed9971155f34f325ac4f0a1e56a07c4d6c02f5ae6`  
		Last Modified: Fri, 03 Nov 2017 13:09:18 GMT  
		Size: 3.9 MB (3868347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f368172ea96bda944832762ad29b52dfe17ec5e6fae96eee37adc4e9d68674a5`  
		Last Modified: Fri, 03 Nov 2017 13:09:16 GMT  
		Size: 4.1 KB (4084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:893cc1ae60f8bf72ac3020ccc60b22d9e0ad0cb0647e15bc4847d08c8985eee2`  
		Last Modified: Fri, 03 Nov 2017 13:09:16 GMT  
		Size: 926.1 KB (926097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13220cc1a683014bda9cfae7f7ee7015a26b28048f90f5aa3ed8b6a96f4b2813`  
		Last Modified: Fri, 03 Nov 2017 13:09:20 GMT  
		Size: 24.8 MB (24785610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58a356878563ee7880f7ea397896a76cf556256188c064dfaa395c4eb8b307a`  
		Last Modified: Wed, 08 Nov 2017 14:08:36 GMT  
		Size: 6.9 MB (6912409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a84d7e484060abe56af99e3243e35870226baf3d464594649cde00b432409b`  
		Last Modified: Wed, 08 Nov 2017 14:08:32 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a4dda82cd90132fc6846f338ac824d01d2491a4dc9c7a2148e45dd36c1a07c1`  
		Last Modified: Wed, 08 Nov 2017 14:08:32 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb5a1bbcad31fe9218b4c700e6e6f49222b30383dd5d44e2f19ff528acf5779`  
		Last Modified: Wed, 08 Nov 2017 14:08:32 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6e3a0fc563c4eadf4b3e4275c74aad4341c977d1fbe0f7cb22c802371e0280`  
		Last Modified: Wed, 08 Nov 2017 14:08:34 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7566f7d60e14ccc8d5e2598242a25fe6b378d6777221884a5ee75ff2e99001c`  
		Last Modified: Wed, 08 Nov 2017 14:08:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73711d6f4f3b9cb591f9e5bae5b009927eeb8bf1a3079980b59ba0b8d5372547`  
		Last Modified: Wed, 08 Nov 2017 14:09:12 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:f8baff2ff944fa142429cdab336e52ec4dd54324ac5ddb6fcf22de7e68fff040
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57371306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edaa34989d006bba2d07b9bcf8be85d266666cbc0cd117c5f344082626b0c0fa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 13:53:20 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 13:53:22 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 03 Nov 2017 13:53:23 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 19:34:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 19:35:29 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:35:29 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 04 Nov 2017 19:35:30 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 19:35:31 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 14:53:01 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 14:53:02 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 14:53:02 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 14:55:19 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 14:55:19 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 14:55:21 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 14:55:22 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 14:55:23 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 14:55:25 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 14:55:26 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 14:55:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 14:55:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 14:55:30 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 14:55:30 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 14:55:55 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 14:55:56 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:e907afd6e25615a4d3eb554d930cef57b87e79ec82413889c2eac38beb4eb8f7`  
		Last Modified: Mon, 09 Oct 2017 22:03:08 GMT  
		Size: 20.3 MB (20337143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f0e65f9ffb0e8a0344de3620c73aa9cd2d1ae973a3cf7588e6441034e9822e`  
		Last Modified: Sat, 04 Nov 2017 19:40:47 GMT  
		Size: 4.1 MB (4073213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bed6073dce4194deeccf2caa0ec9b97ec2177bc41b7b540c17cdf13fda94ff0`  
		Last Modified: Sat, 04 Nov 2017 19:40:45 GMT  
		Size: 4.1 KB (4084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0596ffaef28f501b64c44c84ad20044e9016acaa66310b575a15244c91f49e`  
		Last Modified: Sat, 04 Nov 2017 19:40:46 GMT  
		Size: 919.4 KB (919403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda14140ddcfb15fd8d4be24ae1356f497b7833c12233249de7016e1f2daf9f8`  
		Last Modified: Sat, 04 Nov 2017 19:40:51 GMT  
		Size: 25.0 MB (25042388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78ee2824b70d54b867b533443f6fd14f51e18f23759b80153c869a2968e569b`  
		Last Modified: Wed, 08 Nov 2017 14:57:26 GMT  
		Size: 7.0 MB (6988187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ca626918894c95f51ccc210a06699be77ca84210960cd18a30b55d87d56c73`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8571e229aa778383fbbbdb4c00374d68b5bfafdb419ab20b842307aab4fcedc7`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2bf9029e48f539b6a5f83c8b3d3dda09c821b3d219d121afa9217295dcde9dd`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e538834de5f58eecf0df7ac787b4c94167bd6a9866534400d2eb04acd9c32e85`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf4d77c8deac6d39c639b9f2446f4a57e2d71802b537e300a5d548c6ca98647`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fc97d0e8617141d030a4491d7f41ae04d794e6184b9f24a89ed7a5cebc6284`  
		Last Modified: Wed, 08 Nov 2017 14:58:31 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; 386

```console
$ docker pull rabbitmq@sha256:5771064a71db0cb94d2c2a7fad29dacb647e7d2ae79bf8eb5670bc5c53a2a377
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.0 MB (63997209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29311920186d6145a01465b520b28c79b06c90ff7f6253493d72ef5625e27f57`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:36 GMT
ADD file:6582536277127947668f7bfdc1471a4e36170915b91a4cb841e7e1bfa1de6535 in / 
# Mon, 09 Oct 2017 21:45:36 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 10:45:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:45:12 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 03 Nov 2017 10:45:13 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 10:45:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 10:46:03 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:46:04 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Nov 2017 10:46:04 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 10:46:04 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 11:48:47 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 11:48:48 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 11:48:48 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 11:49:12 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 11:49:12 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 11:49:13 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 11:49:13 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 11:49:14 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 11:49:14 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 11:49:15 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 11:49:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 11:49:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 11:49:16 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 11:49:16 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 11:49:30 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 11:49:30 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:b2b52fe46b29fe5d0689f26449c2114e40f0731d4ce3eb8c3941397b74205432`  
		Last Modified: Mon, 09 Oct 2017 21:53:42 GMT  
		Size: 23.1 MB (23128678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d407b136da0731f5f38279001e9dd426217937443cad0f16e1f242366290773`  
		Last Modified: Fri, 03 Nov 2017 10:47:13 GMT  
		Size: 4.8 MB (4803637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c93817e78345b4b5070c81e5a37d02afc2b5fe347a1a4bf59e09f6084814fd2`  
		Last Modified: Fri, 03 Nov 2017 10:47:12 GMT  
		Size: 4.1 KB (4057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f97eae59c75f8f814ab781f5239ac2e132b7b65c77e75b35023c603c539ca54f`  
		Last Modified: Fri, 03 Nov 2017 10:47:12 GMT  
		Size: 931.5 KB (931524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aed670dee19fde6946658d7129e13520c1a0747f8b80b6f92dac5f6d974ae52`  
		Last Modified: Fri, 03 Nov 2017 10:47:24 GMT  
		Size: 27.8 MB (27818690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11406d3e0ee6652316aef307f374537466b83e9a8b039ac094bec9a91db51f0b`  
		Last Modified: Wed, 08 Nov 2017 11:50:31 GMT  
		Size: 7.3 MB (7303738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608b7a338130eaf9ca53ab8aae04dc703a6449fa58eba5be04558381ec57eaab`  
		Last Modified: Wed, 08 Nov 2017 11:50:29 GMT  
		Size: 2.3 KB (2258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9380c3d6a421026f3c7f6831ec07ffb5eb0aece161f5f828a30dec24044705`  
		Last Modified: Wed, 08 Nov 2017 11:50:30 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b5305e32a2ea4c0bfc2c36460511eb7875a23f38fdd44fa8fa2f50a02c2658`  
		Last Modified: Wed, 08 Nov 2017 11:50:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1f16767fe3e5b4874ee86ccb33504606a39510dad06040c122662771157998`  
		Last Modified: Wed, 08 Nov 2017 11:50:30 GMT  
		Size: 4.0 KB (4040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc67a88011d726ea1e2a91b28cbe29e7aa9ba1026baf0890e813ce685ae28368`  
		Last Modified: Wed, 08 Nov 2017 11:50:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f06877666402272fcbd0aaa104c086e6b599d86cd1dc513b1240c92c55bbd5`  
		Last Modified: Wed, 08 Nov 2017 11:51:05 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; s390x

```console
$ docker pull rabbitmq@sha256:bd9dd8d582db968a260af3f807307d9706dc6072d9f3171ea8a230bd4e8a179c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60460553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b17152a9401a0ef3fd17369d282ba008a09e5c6cba66013c934af7accf533fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:35 GMT
ADD file:ae4aaa6affe22f36ab5478771d5c84917f72de7a8dac16345a035709a1a5edf4 in / 
# Mon, 09 Oct 2017 21:44:36 GMT
CMD ["bash"]
# Thu, 02 Nov 2017 17:06:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 17:06:41 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 02 Nov 2017 17:06:42 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 17:07:21 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 02 Nov 2017 17:07:43 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 17:07:44 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 02 Nov 2017 17:07:44 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 17:07:44 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 18:06:32 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 18:06:32 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 18:06:32 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 18:07:19 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 18:07:19 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 18:07:20 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 18:07:20 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 18:07:21 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 18:07:21 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 18:07:22 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 18:07:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 18:07:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 18:07:23 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 18:07:23 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 18:07:34 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 18:07:34 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:671716cc49517eef5f430c695ce344d63e390cb65f58d30939f2ba615c953686`  
		Last Modified: Mon, 09 Oct 2017 21:49:09 GMT  
		Size: 22.3 MB (22339951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cae61f12be6f01ba06573d9393712e91821cd5496302310f550fe5842dea557`  
		Last Modified: Fri, 03 Nov 2017 17:08:41 GMT  
		Size: 4.5 MB (4529879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca307103ce923e7e89d35185be4df8e54c3c0b54d259b8880aa7bae107d4952`  
		Last Modified: Fri, 03 Nov 2017 17:08:39 GMT  
		Size: 4.1 KB (4074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d16320f9fc35ea20ba7fb9b21f88e3f0f06c52d416682319f3b2a85a345a3d5`  
		Last Modified: Fri, 03 Nov 2017 17:08:39 GMT  
		Size: 938.0 KB (938019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801205b182b8d6f7acf36200b2ba07ed52ea224dfefe792b525224e4aacb4d4a`  
		Last Modified: Fri, 03 Nov 2017 17:08:48 GMT  
		Size: 25.6 MB (25619372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12ce67a630f123e36df054e0e90c31abb3d517dd984362eaa6cf7bc070304fe`  
		Last Modified: Wed, 08 Nov 2017 18:08:14 GMT  
		Size: 7.0 MB (7022368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f4dea1598011d081121e868c941bd695758683908030b52f8731656d62b8fc`  
		Last Modified: Wed, 08 Nov 2017 18:08:12 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1968b253d8ac805bf6188d47995cd6f0a576a4f34ccd66b9bc418a0dc94fa251`  
		Last Modified: Wed, 08 Nov 2017 18:08:12 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd7240ae1eb0726c11374653d1ea68694dd90bc2f2ae12d89158626f02ce3f8`  
		Last Modified: Wed, 08 Nov 2017 18:08:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:380b1c8ca0aabd89f393a15a64c185770c2628bf5299026d12eb21b8a1e293e0`  
		Last Modified: Wed, 08 Nov 2017 18:08:13 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee865b81bc6c91cba724881b543ca690115dd90710a4fa43a8eae27e136cfb4b`  
		Last Modified: Wed, 08 Nov 2017 18:08:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2405563deaf816f18368dc330c443de6ddc256bd008d497e4109303adb607851`  
		Last Modified: Wed, 08 Nov 2017 18:08:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management-alpine`

```console
$ docker pull rabbitmq@sha256:6220affc4420dae7fd23257a6ead81e2fe71f60470ed61969f29458b8aca40c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `rabbitmq:3-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:b9bd8d394b9f406246d8a0259fc3914925bd99aa5eb7c2501eb8755777b16c2f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23675757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f7630631a89c10be15f7abbf23574da760f6b873ff37d1b8ebb0570b009aada`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:07:57 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Sat, 04 Nov 2017 05:08:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Nov 2017 05:08:11 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Sat, 04 Nov 2017 05:08:11 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 04 Nov 2017 05:08:11 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sat, 04 Nov 2017 05:08:11 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 05:08:12 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 05:41:03 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 05:41:03 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 05:41:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 05:41:27 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 05:41:28 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 05:41:28 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 05:41:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 05:41:29 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 05:41:30 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 05:41:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 05:41:30 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 05:41:30 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 05:41:38 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 05:41:38 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd931d2c14c5b5501527044a16e680c1b1111ba939bd17bbd06d73cf92976dc2`  
		Last Modified: Sat, 04 Nov 2017 05:09:49 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f3f2df337d68db6b507058eda830a8986efd4eb17efa8910edf383fb1e67c9`  
		Last Modified: Sat, 04 Nov 2017 05:09:49 GMT  
		Size: 8.2 KB (8181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7844869e4b5b7138207173247acaa8c055a4b34be2fd981dc153aa1d06d31861`  
		Last Modified: Sat, 04 Nov 2017 05:09:52 GMT  
		Size: 16.6 MB (16561780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18cccd03229e8d4e3b51b1776b63f584607b7154b95bfb9d2767dc63d2b94e6`  
		Last Modified: Wed, 08 Nov 2017 05:42:48 GMT  
		Size: 5.1 MB (5108427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b1a078564a2b7a12bb756228a5f2adc4d7d6d42b72cacd82aef74e27ef07a7`  
		Last Modified: Wed, 08 Nov 2017 05:42:48 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a05083963037f58105f5fda0a18ed7a88cf1308f9430c152f5d75e871fa29e0`  
		Last Modified: Wed, 08 Nov 2017 05:42:47 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:749e0123d4b8df67ecebb3ae52ec16d2202197ed19c292af307897c04686bb90`  
		Last Modified: Wed, 08 Nov 2017 05:42:48 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efecef2b5124d36f82ffa7552672508f9e59c59d548e2c74e6a33052a46025d`  
		Last Modified: Wed, 08 Nov 2017 05:42:47 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6feeecc743824f0b313a36169a718247ad0705095301913fe90305e3031bddcc`  
		Last Modified: Wed, 08 Nov 2017 05:43:14 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:e8ed5cd9b245e266e484ca928e7737c0e2e586a425d1a35953b6eb95dee4dda1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23414140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95ad91096d26dce7523e8edcb959d25df4acb9a9ec30aa436b3efdf7447e6111`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 13:53:09 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 13:53:13 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 13:53:28 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 13:53:28 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 13:53:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 13:53:29 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 13:53:30 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 14:56:12 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 14:56:13 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 14:56:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 14:56:30 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 14:56:32 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 14:56:32 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 14:56:34 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 14:56:35 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 14:56:36 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 14:56:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 14:56:37 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 14:56:38 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 14:56:57 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 14:56:58 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05834eac152e30997eb4f1aa4ffe8e952bd759c1a1009bd183dec80dca24cf86`  
		Last Modified: Thu, 26 Oct 2017 13:55:11 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd88a23486b40755f2e1192cb35d4fdaec20831c18ce83da31df3f8aa2f7b45c`  
		Last Modified: Thu, 26 Oct 2017 13:55:11 GMT  
		Size: 8.3 KB (8297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f9ba1206e6e4bfba21cef7f235482b41868ec966d5ebc44a4c4ac432a5fe03`  
		Last Modified: Thu, 26 Oct 2017 13:55:16 GMT  
		Size: 16.4 MB (16376872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96467a3af759dd4d0c8e9dfd696a707eaa9c669b6d249c3e68a9fd8fc1e2be0b`  
		Last Modified: Wed, 08 Nov 2017 14:59:37 GMT  
		Size: 5.1 MB (5108108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e205c0c58f4d29c6e42fdf1c9ee424a884b20605fa3edad491d61393b620bc`  
		Last Modified: Wed, 08 Nov 2017 14:59:37 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ac11c13026eea7c9ea3de8e602b707ab2ec1d784eeac0768b5c3c114d8da53`  
		Last Modified: Wed, 08 Nov 2017 14:59:36 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e0267b7ac6617ceb8d53546896d0f88af55faf21e13a9df998452604170475`  
		Last Modified: Wed, 08 Nov 2017 14:59:37 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd69c177dca55f85ae172255c42fb1a1afc9098e0d9c90a2af3e9281a06355e8`  
		Last Modified: Wed, 08 Nov 2017 14:59:36 GMT  
		Size: 4.0 KB (4036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b418983d7e097bc55fc7ad055b5ce4b247a68a165ea5b7455d4e1b1ccef99afd`  
		Last Modified: Wed, 08 Nov 2017 15:00:47 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:7df18e5d24275cec2a0d6974a6f8554d63bad500dedcc90dbefaaf1049d2c689
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23879249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db93ff3b392669c3d72d83fb6b6c4efce88e00330eb9b1a50ac6e3952e38756a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 10:44:24 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 10:44:28 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 10:44:50 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 10:44:50 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 10:44:50 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 10:44:50 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 10:44:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 11:49:36 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 11:49:36 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 11:50:03 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 11:50:04 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 11:50:04 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 11:50:04 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 11:50:05 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 11:50:06 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 11:50:06 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 11:50:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 11:50:06 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 11:50:07 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 11:50:17 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 11:50:17 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cf0f0a132c9bb882206147dffad08dc780f2bc82556cfbda9878a3218f1e7c`  
		Last Modified: Thu, 26 Oct 2017 10:45:28 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e00a9186496c6602ccd3efb4bb1780b42adb7028c8fa3cd3c1ff2f10bcfa33a3`  
		Last Modified: Thu, 26 Oct 2017 10:45:28 GMT  
		Size: 8.3 KB (8305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc19938c3bf2e858347a9c7add1beac38af5a4f83b99d80ddc004aa4ad51e596`  
		Last Modified: Thu, 26 Oct 2017 10:45:30 GMT  
		Size: 16.7 MB (16710838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fffae17dadc5d20f4dc949f407146594a7ca8aa4fb11be121519ef0a316dd05a`  
		Last Modified: Wed, 08 Nov 2017 11:51:38 GMT  
		Size: 5.1 MB (5108395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaef62ea46f71b0592807ef97d67f3649e3ccaea0059286442606ddfc96644d9`  
		Last Modified: Wed, 08 Nov 2017 11:51:37 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77474049fb515a920c7c001b111e29142426b6cb3e22416e6784819702461895`  
		Last Modified: Wed, 08 Nov 2017 11:51:36 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580eb2276815b19169a24cccdb63099175d34f275d9a3a0f07900e7966f0694e`  
		Last Modified: Wed, 08 Nov 2017 11:51:37 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5471bc4e5ffb070324baf533e92da1a68c5498041f178eb4a318449bb0e03bf`  
		Last Modified: Wed, 08 Nov 2017 11:51:37 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0a51e0d41ab48801f44f6af1c41212776e01e94077bb83ae82ca64d6204c7e`  
		Last Modified: Wed, 08 Nov 2017 11:52:08 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:4a00b41bb7019e01f206e41b5aa7da165d05f371d9ebb8b77eb6a9b1c4cd5bd5
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23915197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b17ad4bb3464a088278244de58eab0831867b784c303c0f9be34cf90b8b3203e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 17:06:39 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 17:06:42 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 17:06:55 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 17:06:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 17:06:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 17:06:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 17:06:56 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 18:07:41 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 18:07:41 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 18:07:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 18:07:49 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 18:07:50 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 18:07:50 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 18:07:51 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 18:07:51 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 18:07:52 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 18:07:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 18:07:52 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 18:07:52 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 18:08:01 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 18:08:01 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299a1fbc19bbea84dbf4d0b6e2e71fb847299b017209b1f9783faea14214c995`  
		Last Modified: Thu, 26 Oct 2017 17:07:31 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb76f2dd4162cae82233bc93ba436b63ca37e536d53c85a9f1d7343203e3c383`  
		Last Modified: Thu, 26 Oct 2017 17:07:31 GMT  
		Size: 8.6 KB (8604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac09bb55706d627cf6348c9d0bd891c2fe9a4155aee5d95264b92781371021db`  
		Last Modified: Thu, 26 Oct 2017 17:07:33 GMT  
		Size: 16.7 MB (16726549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d93907c5b4f4bc7a5481de6bb16c3f072a75e5527d3cfc3b9749b113cfae95f`  
		Last Modified: Wed, 08 Nov 2017 18:08:54 GMT  
		Size: 5.1 MB (5108471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35583f28b47cbc069cf7cd90f5e6424989326186e6d4eda16789f04b1a593292`  
		Last Modified: Wed, 08 Nov 2017 18:08:53 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5276afe58ea371107f544988a9e5123c638674f1af93bb6aabbb052a917ca221`  
		Last Modified: Wed, 08 Nov 2017 18:08:53 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2728c7344d2114e96e7f93f99acfaa5e41fd50018d5c58170bbb955c3f61b4`  
		Last Modified: Wed, 08 Nov 2017 18:08:53 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161b930d7a34fea6d9e836a0f286a8e3105160cdd36fa617d62997bd63388023`  
		Last Modified: Wed, 08 Nov 2017 18:08:53 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fdeb2f56852f23d4e9898407b7b17157ff3198186456a4b0101e3223c199d1a`  
		Last Modified: Wed, 08 Nov 2017 18:09:12 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:alpine`

```console
$ docker pull rabbitmq@sha256:7fdc09f8ba068b0d6838387c24fb2173060c362d35dbf546566e0e5bd9c7fb9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `rabbitmq:alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:9faf517893217bcb672dda3372caf3731c3f8fd9b3c908b234f5d139fb71fde2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23675566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:275978bffb6379d6fc54fdc7874ea58e884ab5a227ec4138a707092112bafc2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:07:57 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Sat, 04 Nov 2017 05:08:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Nov 2017 05:08:11 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Sat, 04 Nov 2017 05:08:11 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 04 Nov 2017 05:08:11 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sat, 04 Nov 2017 05:08:11 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 05:08:12 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 05:41:03 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 05:41:03 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 05:41:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 05:41:27 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 05:41:28 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 05:41:28 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 05:41:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 05:41:29 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 05:41:30 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 05:41:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 05:41:30 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 05:41:30 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd931d2c14c5b5501527044a16e680c1b1111ba939bd17bbd06d73cf92976dc2`  
		Last Modified: Sat, 04 Nov 2017 05:09:49 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f3f2df337d68db6b507058eda830a8986efd4eb17efa8910edf383fb1e67c9`  
		Last Modified: Sat, 04 Nov 2017 05:09:49 GMT  
		Size: 8.2 KB (8181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7844869e4b5b7138207173247acaa8c055a4b34be2fd981dc153aa1d06d31861`  
		Last Modified: Sat, 04 Nov 2017 05:09:52 GMT  
		Size: 16.6 MB (16561780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18cccd03229e8d4e3b51b1776b63f584607b7154b95bfb9d2767dc63d2b94e6`  
		Last Modified: Wed, 08 Nov 2017 05:42:48 GMT  
		Size: 5.1 MB (5108427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b1a078564a2b7a12bb756228a5f2adc4d7d6d42b72cacd82aef74e27ef07a7`  
		Last Modified: Wed, 08 Nov 2017 05:42:48 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a05083963037f58105f5fda0a18ed7a88cf1308f9430c152f5d75e871fa29e0`  
		Last Modified: Wed, 08 Nov 2017 05:42:47 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:749e0123d4b8df67ecebb3ae52ec16d2202197ed19c292af307897c04686bb90`  
		Last Modified: Wed, 08 Nov 2017 05:42:48 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efecef2b5124d36f82ffa7552672508f9e59c59d548e2c74e6a33052a46025d`  
		Last Modified: Wed, 08 Nov 2017 05:42:47 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:1be6dc9852429ccdf7fe0f2b1bd9705b3aea72ade4ecc979b0836d83a71e540f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23413948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22bf2fe2713c63f306c2811fa08e0b24ea8f10774a886bdd647dd4dbeac173d3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 13:53:09 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 13:53:13 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 13:53:28 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 13:53:28 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 13:53:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 13:53:29 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 13:53:30 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 14:56:12 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 14:56:13 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 14:56:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 14:56:30 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 14:56:32 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 14:56:32 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 14:56:34 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 14:56:35 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 14:56:36 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 14:56:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 14:56:37 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 14:56:38 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05834eac152e30997eb4f1aa4ffe8e952bd759c1a1009bd183dec80dca24cf86`  
		Last Modified: Thu, 26 Oct 2017 13:55:11 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd88a23486b40755f2e1192cb35d4fdaec20831c18ce83da31df3f8aa2f7b45c`  
		Last Modified: Thu, 26 Oct 2017 13:55:11 GMT  
		Size: 8.3 KB (8297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f9ba1206e6e4bfba21cef7f235482b41868ec966d5ebc44a4c4ac432a5fe03`  
		Last Modified: Thu, 26 Oct 2017 13:55:16 GMT  
		Size: 16.4 MB (16376872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96467a3af759dd4d0c8e9dfd696a707eaa9c669b6d249c3e68a9fd8fc1e2be0b`  
		Last Modified: Wed, 08 Nov 2017 14:59:37 GMT  
		Size: 5.1 MB (5108108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e205c0c58f4d29c6e42fdf1c9ee424a884b20605fa3edad491d61393b620bc`  
		Last Modified: Wed, 08 Nov 2017 14:59:37 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ac11c13026eea7c9ea3de8e602b707ab2ec1d784eeac0768b5c3c114d8da53`  
		Last Modified: Wed, 08 Nov 2017 14:59:36 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e0267b7ac6617ceb8d53546896d0f88af55faf21e13a9df998452604170475`  
		Last Modified: Wed, 08 Nov 2017 14:59:37 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd69c177dca55f85ae172255c42fb1a1afc9098e0d9c90a2af3e9281a06355e8`  
		Last Modified: Wed, 08 Nov 2017 14:59:36 GMT  
		Size: 4.0 KB (4036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:63cc19e6634fdd94fda76219c8e4553474a0874f836001336a0db91f4a2bdd59
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23879056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cd51770818309e37697b99a0f4f192a68989a3a5404e638464843feb9785d00`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 10:44:24 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 10:44:28 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 10:44:50 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 10:44:50 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 10:44:50 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 10:44:50 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 10:44:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 11:49:36 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 11:49:36 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 11:50:03 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 11:50:04 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 11:50:04 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 11:50:04 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 11:50:05 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 11:50:06 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 11:50:06 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 11:50:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 11:50:06 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 11:50:07 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cf0f0a132c9bb882206147dffad08dc780f2bc82556cfbda9878a3218f1e7c`  
		Last Modified: Thu, 26 Oct 2017 10:45:28 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e00a9186496c6602ccd3efb4bb1780b42adb7028c8fa3cd3c1ff2f10bcfa33a3`  
		Last Modified: Thu, 26 Oct 2017 10:45:28 GMT  
		Size: 8.3 KB (8305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc19938c3bf2e858347a9c7add1beac38af5a4f83b99d80ddc004aa4ad51e596`  
		Last Modified: Thu, 26 Oct 2017 10:45:30 GMT  
		Size: 16.7 MB (16710838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fffae17dadc5d20f4dc949f407146594a7ca8aa4fb11be121519ef0a316dd05a`  
		Last Modified: Wed, 08 Nov 2017 11:51:38 GMT  
		Size: 5.1 MB (5108395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaef62ea46f71b0592807ef97d67f3649e3ccaea0059286442606ddfc96644d9`  
		Last Modified: Wed, 08 Nov 2017 11:51:37 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77474049fb515a920c7c001b111e29142426b6cb3e22416e6784819702461895`  
		Last Modified: Wed, 08 Nov 2017 11:51:36 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580eb2276815b19169a24cccdb63099175d34f275d9a3a0f07900e7966f0694e`  
		Last Modified: Wed, 08 Nov 2017 11:51:37 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5471bc4e5ffb070324baf533e92da1a68c5498041f178eb4a318449bb0e03bf`  
		Last Modified: Wed, 08 Nov 2017 11:51:37 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:cf9ca522739e6d09a7ee04600e67d63db1969a448eb3848a310e1b895711f09d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23915006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34f902caf1364f21f21bb55deec8ddc150623cb5c2835d2b19a09e82a556a272`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 17:06:39 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 17:06:42 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 17:06:55 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 17:06:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 17:06:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 17:06:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 17:06:56 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 18:07:41 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 18:07:41 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 18:07:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 18:07:49 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 18:07:50 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 18:07:50 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 18:07:51 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 18:07:51 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 18:07:52 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 18:07:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 18:07:52 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 18:07:52 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299a1fbc19bbea84dbf4d0b6e2e71fb847299b017209b1f9783faea14214c995`  
		Last Modified: Thu, 26 Oct 2017 17:07:31 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb76f2dd4162cae82233bc93ba436b63ca37e536d53c85a9f1d7343203e3c383`  
		Last Modified: Thu, 26 Oct 2017 17:07:31 GMT  
		Size: 8.6 KB (8604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac09bb55706d627cf6348c9d0bd891c2fe9a4155aee5d95264b92781371021db`  
		Last Modified: Thu, 26 Oct 2017 17:07:33 GMT  
		Size: 16.7 MB (16726549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d93907c5b4f4bc7a5481de6bb16c3f072a75e5527d3cfc3b9749b113cfae95f`  
		Last Modified: Wed, 08 Nov 2017 18:08:54 GMT  
		Size: 5.1 MB (5108471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35583f28b47cbc069cf7cd90f5e6424989326186e6d4eda16789f04b1a593292`  
		Last Modified: Wed, 08 Nov 2017 18:08:53 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5276afe58ea371107f544988a9e5123c638674f1af93bb6aabbb052a917ca221`  
		Last Modified: Wed, 08 Nov 2017 18:08:53 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2728c7344d2114e96e7f93f99acfaa5e41fd50018d5c58170bbb955c3f61b4`  
		Last Modified: Wed, 08 Nov 2017 18:08:53 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161b930d7a34fea6d9e836a0f286a8e3105160cdd36fa617d62997bd63388023`  
		Last Modified: Wed, 08 Nov 2017 18:08:53 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:latest`

```console
$ docker pull rabbitmq@sha256:2fa714203c287748b1d6526e6d15f6ee0cf252dc798149262f86c4d87b95f95b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `rabbitmq:latest` - linux; amd64

```console
$ docker pull rabbitmq@sha256:5f14574f9caca83aeb84ac5fc705b000d9640e86e9edd24fff515a763fd1cfca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62945336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79a008b25962e1a143e02b37187f855cb224e2203b94cc9f87e81fe275660c9d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:48 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Sat, 04 Nov 2017 05:26:48 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 17:46:08 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 17:46:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Sat, 04 Nov 2017 17:46:09 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 17:46:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 17:46:49 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 17:46:50 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 04 Nov 2017 17:46:50 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 17:46:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 05:40:26 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 05:40:26 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 05:40:26 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 05:40:46 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 05:40:47 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 05:40:47 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 05:40:47 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 05:40:48 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 05:40:49 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 05:40:49 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 05:40:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 05:40:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 05:40:50 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 05:40:51 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a230aa37269c12703c5faa3deb792f9ad4b64056beb9bcbc1ae43c522a8040`  
		Last Modified: Sat, 04 Nov 2017 17:47:41 GMT  
		Size: 4.5 MB (4498370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9190ffbd22711342d4d9be34c22d639f1f0f3abfe997a5c93cf50107b7a58a81`  
		Last Modified: Sat, 04 Nov 2017 17:47:40 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e829d8f0d28e827108c1c6ff25405743e10cb6acb364dc1ab04670d23c45ee`  
		Last Modified: Sat, 04 Nov 2017 17:47:40 GMT  
		Size: 951.9 KB (951943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2404945c98d3c39a18e3d83787ade2526a1d476b140ad4ca470618135830f5a5`  
		Last Modified: Sat, 04 Nov 2017 17:47:43 GMT  
		Size: 27.7 MB (27703766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629c315aa810b2d8dc5043d457fb370693d1db5478cc2a281cbdf4fcec49ccc6`  
		Last Modified: Wed, 08 Nov 2017 05:41:51 GMT  
		Size: 7.3 MB (7288151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff2b1994ea218ef7f3e9cbd6e6d97ca7e0b7d37c195411073d8e12a823877ab`  
		Last Modified: Wed, 08 Nov 2017 05:41:49 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3246485e4a5d6ac4cbe7306d3fb38a69aa9f63c71821be31fa26b547129e1047`  
		Last Modified: Wed, 08 Nov 2017 05:41:48 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd004dbdde7c3128d1e918a1eb7b8558fb9818be79f618629f3b7cab3f9f2ecc`  
		Last Modified: Wed, 08 Nov 2017 05:41:48 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3f0c64cb0dc2c36ba3e1c9408cc2e006d720b781eaa64000bece26f2ec9e21`  
		Last Modified: Wed, 08 Nov 2017 05:41:48 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d9dcfb8c200f5fa4500f3be05357a6c03c424b5db612b821e76c60b4285093`  
		Last Modified: Wed, 08 Nov 2017 05:41:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:1b0591d0f62220463d8cfa170ec3c230bf0a9cb5f690b997e6cdad122900f956
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.5 MB (58525231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac9a45617cbd7697745465740045ee94c683ffd6bcee469f864ec984f3b14baa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:48 GMT
ADD file:ff9945b48b1ac236dcec24eb9dfaf52b7c151a3b11c8502391f0866dfb4e3ac3 in / 
# Mon, 09 Oct 2017 21:44:48 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 14:14:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 14:14:44 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 03 Nov 2017 14:14:44 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 14:15:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 14:15:50 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 14:15:50 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Nov 2017 14:15:50 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 14:15:51 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 15:14:29 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 15:14:29 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 15:14:29 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 15:14:57 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 15:14:57 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 15:14:58 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 15:14:58 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 15:14:59 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 15:15:00 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 15:15:00 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 15:15:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 15:15:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 15:15:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 15:15:02 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:836d5b6056a9815be79c76480a90299267f60201bd1e3396817003e6c14819cc`  
		Last Modified: Mon, 09 Oct 2017 21:50:56 GMT  
		Size: 21.2 MB (21166251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab996b3d7a101ba6bf42115b4f156db847e321da9af52d5d686d82aa736b585`  
		Last Modified: Sat, 04 Nov 2017 14:15:27 GMT  
		Size: 4.2 MB (4231333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17684896b3ee5196333b6fa48ce590caddf46e21d82a5c5ef0f1a171360a6e17`  
		Last Modified: Sat, 04 Nov 2017 14:15:26 GMT  
		Size: 4.1 KB (4082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:828368257290f3ec36ef92643180012d362674e933b84c2db3c17c07f71d2629`  
		Last Modified: Sat, 04 Nov 2017 14:15:26 GMT  
		Size: 942.5 KB (942454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2fd4a06dc148e5a9a0ca56e46f45a376b486ca2b6c2c542f69e1f95927a7347`  
		Last Modified: Sat, 04 Nov 2017 14:15:31 GMT  
		Size: 25.2 MB (25170644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:706d18646df60ed10159c755526d2bce681fc0af771bbf562b58a57c6512c6c9`  
		Last Modified: Wed, 08 Nov 2017 15:15:31 GMT  
		Size: 7.0 MB (7003775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff375a9d907798e49eb1be06c5009c4a67307bb6bd79e9fccd5b6a0f73f4f86f`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b17b1ed86927f886e17566b808e1906e805150a31f499d189c0f500e15e33f19`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffbb30b719bc8fd2f4fda42258907104a5aacb01efaa78a84b5c2f7115bb59d0`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d48d2b51e4f81a9e2887218e78e5127274b6b3f08216a8b3f8e9000f88b11b`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad332c481563702001f742604f7523dd29b563a34d9916885ccc763b0ae829d6`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:715f2ed3ae0a8e638b541ae46e41f10723c0f7504ac741e2f5251f25b03fa675
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.8 MB (55780373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97faed3cb8ec4b60935e545d61ef4cb2804977334e5738d9faaddb6e700dc7d0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 13:07:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 13:07:42 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 03 Nov 2017 13:07:42 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 13:07:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 13:08:17 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 13:08:17 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Nov 2017 13:08:17 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 13:08:18 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 14:07:33 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 14:07:33 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 14:07:33 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 14:07:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 14:07:56 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 14:07:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 14:07:58 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 14:07:59 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 14:08:00 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 14:08:00 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 14:08:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 14:08:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 14:08:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 14:08:02 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:59e81a3fde58ec8d4b8f2f58b98ef2f4d951d37dd9b99b016fd294a8e07d7796`  
		Last Modified: Mon, 09 Oct 2017 21:52:49 GMT  
		Size: 19.3 MB (19277135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2037b99f3c3dc51e8ace39aed9971155f34f325ac4f0a1e56a07c4d6c02f5ae6`  
		Last Modified: Fri, 03 Nov 2017 13:09:18 GMT  
		Size: 3.9 MB (3868347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f368172ea96bda944832762ad29b52dfe17ec5e6fae96eee37adc4e9d68674a5`  
		Last Modified: Fri, 03 Nov 2017 13:09:16 GMT  
		Size: 4.1 KB (4084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:893cc1ae60f8bf72ac3020ccc60b22d9e0ad0cb0647e15bc4847d08c8985eee2`  
		Last Modified: Fri, 03 Nov 2017 13:09:16 GMT  
		Size: 926.1 KB (926097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13220cc1a683014bda9cfae7f7ee7015a26b28048f90f5aa3ed8b6a96f4b2813`  
		Last Modified: Fri, 03 Nov 2017 13:09:20 GMT  
		Size: 24.8 MB (24785610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58a356878563ee7880f7ea397896a76cf556256188c064dfaa395c4eb8b307a`  
		Last Modified: Wed, 08 Nov 2017 14:08:36 GMT  
		Size: 6.9 MB (6912409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a84d7e484060abe56af99e3243e35870226baf3d464594649cde00b432409b`  
		Last Modified: Wed, 08 Nov 2017 14:08:32 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a4dda82cd90132fc6846f338ac824d01d2491a4dc9c7a2148e45dd36c1a07c1`  
		Last Modified: Wed, 08 Nov 2017 14:08:32 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb5a1bbcad31fe9218b4c700e6e6f49222b30383dd5d44e2f19ff528acf5779`  
		Last Modified: Wed, 08 Nov 2017 14:08:32 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6e3a0fc563c4eadf4b3e4275c74aad4341c977d1fbe0f7cb22c802371e0280`  
		Last Modified: Wed, 08 Nov 2017 14:08:34 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7566f7d60e14ccc8d5e2598242a25fe6b378d6777221884a5ee75ff2e99001c`  
		Last Modified: Wed, 08 Nov 2017 14:08:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:4168a3f7ea16661ae4f05ab9fd21c258d590041e233029cfb199a75d55a924c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57371113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af4cb3ee80c465ed6074b3ecddd1fe0ce3d801423e3017c5e77638f8bcc8fe42`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 13:53:20 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 13:53:22 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 03 Nov 2017 13:53:23 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 19:34:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 19:35:29 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:35:29 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 04 Nov 2017 19:35:30 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 19:35:31 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 14:53:01 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 14:53:02 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 14:53:02 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 14:55:19 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 14:55:19 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 14:55:21 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 14:55:22 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 14:55:23 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 14:55:25 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 14:55:26 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 14:55:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 14:55:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 14:55:30 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 14:55:30 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e907afd6e25615a4d3eb554d930cef57b87e79ec82413889c2eac38beb4eb8f7`  
		Last Modified: Mon, 09 Oct 2017 22:03:08 GMT  
		Size: 20.3 MB (20337143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f0e65f9ffb0e8a0344de3620c73aa9cd2d1ae973a3cf7588e6441034e9822e`  
		Last Modified: Sat, 04 Nov 2017 19:40:47 GMT  
		Size: 4.1 MB (4073213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bed6073dce4194deeccf2caa0ec9b97ec2177bc41b7b540c17cdf13fda94ff0`  
		Last Modified: Sat, 04 Nov 2017 19:40:45 GMT  
		Size: 4.1 KB (4084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0596ffaef28f501b64c44c84ad20044e9016acaa66310b575a15244c91f49e`  
		Last Modified: Sat, 04 Nov 2017 19:40:46 GMT  
		Size: 919.4 KB (919403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda14140ddcfb15fd8d4be24ae1356f497b7833c12233249de7016e1f2daf9f8`  
		Last Modified: Sat, 04 Nov 2017 19:40:51 GMT  
		Size: 25.0 MB (25042388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78ee2824b70d54b867b533443f6fd14f51e18f23759b80153c869a2968e569b`  
		Last Modified: Wed, 08 Nov 2017 14:57:26 GMT  
		Size: 7.0 MB (6988187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ca626918894c95f51ccc210a06699be77ca84210960cd18a30b55d87d56c73`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8571e229aa778383fbbbdb4c00374d68b5bfafdb419ab20b842307aab4fcedc7`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2bf9029e48f539b6a5f83c8b3d3dda09c821b3d219d121afa9217295dcde9dd`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e538834de5f58eecf0df7ac787b4c94167bd6a9866534400d2eb04acd9c32e85`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf4d77c8deac6d39c639b9f2446f4a57e2d71802b537e300a5d548c6ca98647`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; 386

```console
$ docker pull rabbitmq@sha256:e6e6c680ab64fa4a4805ffdd3ac08340f63ee8747f6f40245f419fca5b6188c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.0 MB (63997016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3d401a69a599fb8e174505e97fdc1d89de6de3d5171e290f5f6d81f27157fe2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:36 GMT
ADD file:6582536277127947668f7bfdc1471a4e36170915b91a4cb841e7e1bfa1de6535 in / 
# Mon, 09 Oct 2017 21:45:36 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 10:45:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:45:12 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 03 Nov 2017 10:45:13 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 10:45:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 10:46:03 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:46:04 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Nov 2017 10:46:04 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 10:46:04 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 11:48:47 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 11:48:48 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 11:48:48 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 11:49:12 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 11:49:12 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 11:49:13 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 11:49:13 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 11:49:14 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 11:49:14 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 11:49:15 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 11:49:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 11:49:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 11:49:16 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 11:49:16 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:b2b52fe46b29fe5d0689f26449c2114e40f0731d4ce3eb8c3941397b74205432`  
		Last Modified: Mon, 09 Oct 2017 21:53:42 GMT  
		Size: 23.1 MB (23128678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d407b136da0731f5f38279001e9dd426217937443cad0f16e1f242366290773`  
		Last Modified: Fri, 03 Nov 2017 10:47:13 GMT  
		Size: 4.8 MB (4803637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c93817e78345b4b5070c81e5a37d02afc2b5fe347a1a4bf59e09f6084814fd2`  
		Last Modified: Fri, 03 Nov 2017 10:47:12 GMT  
		Size: 4.1 KB (4057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f97eae59c75f8f814ab781f5239ac2e132b7b65c77e75b35023c603c539ca54f`  
		Last Modified: Fri, 03 Nov 2017 10:47:12 GMT  
		Size: 931.5 KB (931524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aed670dee19fde6946658d7129e13520c1a0747f8b80b6f92dac5f6d974ae52`  
		Last Modified: Fri, 03 Nov 2017 10:47:24 GMT  
		Size: 27.8 MB (27818690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11406d3e0ee6652316aef307f374537466b83e9a8b039ac094bec9a91db51f0b`  
		Last Modified: Wed, 08 Nov 2017 11:50:31 GMT  
		Size: 7.3 MB (7303738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608b7a338130eaf9ca53ab8aae04dc703a6449fa58eba5be04558381ec57eaab`  
		Last Modified: Wed, 08 Nov 2017 11:50:29 GMT  
		Size: 2.3 KB (2258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9380c3d6a421026f3c7f6831ec07ffb5eb0aece161f5f828a30dec24044705`  
		Last Modified: Wed, 08 Nov 2017 11:50:30 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b5305e32a2ea4c0bfc2c36460511eb7875a23f38fdd44fa8fa2f50a02c2658`  
		Last Modified: Wed, 08 Nov 2017 11:50:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1f16767fe3e5b4874ee86ccb33504606a39510dad06040c122662771157998`  
		Last Modified: Wed, 08 Nov 2017 11:50:30 GMT  
		Size: 4.0 KB (4040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc67a88011d726ea1e2a91b28cbe29e7aa9ba1026baf0890e813ce685ae28368`  
		Last Modified: Wed, 08 Nov 2017 11:50:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; s390x

```console
$ docker pull rabbitmq@sha256:d6270e1e222ebcb8c68988edbf05c72b930d7d7d4b886145c4bfd5480a177099
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60460358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:540087ce54199f47c40b065dfb0f638dc9bbae87d4958fdec63d30858e95fc83`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:35 GMT
ADD file:ae4aaa6affe22f36ab5478771d5c84917f72de7a8dac16345a035709a1a5edf4 in / 
# Mon, 09 Oct 2017 21:44:36 GMT
CMD ["bash"]
# Thu, 02 Nov 2017 17:06:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 17:06:41 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 02 Nov 2017 17:06:42 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 17:07:21 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 02 Nov 2017 17:07:43 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 17:07:44 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 02 Nov 2017 17:07:44 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 17:07:44 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 18:06:32 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 18:06:32 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 18:06:32 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 18:07:19 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 18:07:19 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 18:07:20 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 18:07:20 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 18:07:21 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 18:07:21 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 18:07:22 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 18:07:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 18:07:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 18:07:23 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 18:07:23 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:671716cc49517eef5f430c695ce344d63e390cb65f58d30939f2ba615c953686`  
		Last Modified: Mon, 09 Oct 2017 21:49:09 GMT  
		Size: 22.3 MB (22339951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cae61f12be6f01ba06573d9393712e91821cd5496302310f550fe5842dea557`  
		Last Modified: Fri, 03 Nov 2017 17:08:41 GMT  
		Size: 4.5 MB (4529879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca307103ce923e7e89d35185be4df8e54c3c0b54d259b8880aa7bae107d4952`  
		Last Modified: Fri, 03 Nov 2017 17:08:39 GMT  
		Size: 4.1 KB (4074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d16320f9fc35ea20ba7fb9b21f88e3f0f06c52d416682319f3b2a85a345a3d5`  
		Last Modified: Fri, 03 Nov 2017 17:08:39 GMT  
		Size: 938.0 KB (938019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801205b182b8d6f7acf36200b2ba07ed52ea224dfefe792b525224e4aacb4d4a`  
		Last Modified: Fri, 03 Nov 2017 17:08:48 GMT  
		Size: 25.6 MB (25619372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12ce67a630f123e36df054e0e90c31abb3d517dd984362eaa6cf7bc070304fe`  
		Last Modified: Wed, 08 Nov 2017 18:08:14 GMT  
		Size: 7.0 MB (7022368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f4dea1598011d081121e868c941bd695758683908030b52f8731656d62b8fc`  
		Last Modified: Wed, 08 Nov 2017 18:08:12 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1968b253d8ac805bf6188d47995cd6f0a576a4f34ccd66b9bc418a0dc94fa251`  
		Last Modified: Wed, 08 Nov 2017 18:08:12 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd7240ae1eb0726c11374653d1ea68694dd90bc2f2ae12d89158626f02ce3f8`  
		Last Modified: Wed, 08 Nov 2017 18:08:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:380b1c8ca0aabd89f393a15a64c185770c2628bf5299026d12eb21b8a1e293e0`  
		Last Modified: Wed, 08 Nov 2017 18:08:13 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee865b81bc6c91cba724881b543ca690115dd90710a4fa43a8eae27e136cfb4b`  
		Last Modified: Wed, 08 Nov 2017 18:08:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management`

```console
$ docker pull rabbitmq@sha256:bbdb4cfe4e82d29684c6ad64538bf1a1070387073da24dd21e313c8f5bc8d994
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `rabbitmq:management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:6fb67294c552681b5396820099d380bf60a13aaa25bdc7d2cdcf31972e97bb04
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62945528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da97a9b91d4d4f9b930d5433e5c6148cff146d19cd5a0285a23dc85db691244c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:48 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Sat, 04 Nov 2017 05:26:48 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 17:46:08 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 17:46:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Sat, 04 Nov 2017 17:46:09 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 17:46:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 17:46:49 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 17:46:50 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 04 Nov 2017 17:46:50 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 17:46:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 05:40:26 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 05:40:26 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 05:40:26 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 05:40:46 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 05:40:47 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 05:40:47 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 05:40:47 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 05:40:48 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 05:40:49 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 05:40:49 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 05:40:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 05:40:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 05:40:50 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 05:40:51 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 05:40:58 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 05:40:58 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a230aa37269c12703c5faa3deb792f9ad4b64056beb9bcbc1ae43c522a8040`  
		Last Modified: Sat, 04 Nov 2017 17:47:41 GMT  
		Size: 4.5 MB (4498370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9190ffbd22711342d4d9be34c22d639f1f0f3abfe997a5c93cf50107b7a58a81`  
		Last Modified: Sat, 04 Nov 2017 17:47:40 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e829d8f0d28e827108c1c6ff25405743e10cb6acb364dc1ab04670d23c45ee`  
		Last Modified: Sat, 04 Nov 2017 17:47:40 GMT  
		Size: 951.9 KB (951943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2404945c98d3c39a18e3d83787ade2526a1d476b140ad4ca470618135830f5a5`  
		Last Modified: Sat, 04 Nov 2017 17:47:43 GMT  
		Size: 27.7 MB (27703766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629c315aa810b2d8dc5043d457fb370693d1db5478cc2a281cbdf4fcec49ccc6`  
		Last Modified: Wed, 08 Nov 2017 05:41:51 GMT  
		Size: 7.3 MB (7288151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff2b1994ea218ef7f3e9cbd6e6d97ca7e0b7d37c195411073d8e12a823877ab`  
		Last Modified: Wed, 08 Nov 2017 05:41:49 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3246485e4a5d6ac4cbe7306d3fb38a69aa9f63c71821be31fa26b547129e1047`  
		Last Modified: Wed, 08 Nov 2017 05:41:48 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd004dbdde7c3128d1e918a1eb7b8558fb9818be79f618629f3b7cab3f9f2ecc`  
		Last Modified: Wed, 08 Nov 2017 05:41:48 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3f0c64cb0dc2c36ba3e1c9408cc2e006d720b781eaa64000bece26f2ec9e21`  
		Last Modified: Wed, 08 Nov 2017 05:41:48 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d9dcfb8c200f5fa4500f3be05357a6c03c424b5db612b821e76c60b4285093`  
		Last Modified: Wed, 08 Nov 2017 05:41:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30545194ec5792ea8b54ad4af7d9f33182cce849accd89c368c1d2551797b994`  
		Last Modified: Wed, 08 Nov 2017 05:42:21 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:5a3c32f0c1c512508d9d46506a52fb9c5336ef7af0035fedfbf8842a2408b25e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.5 MB (58525423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58e51335e25bad4d0846134aac011f587d6f9c079a4d53f981915811666ec653`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:48 GMT
ADD file:ff9945b48b1ac236dcec24eb9dfaf52b7c151a3b11c8502391f0866dfb4e3ac3 in / 
# Mon, 09 Oct 2017 21:44:48 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 14:14:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 14:14:44 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 03 Nov 2017 14:14:44 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 14:15:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 14:15:50 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 14:15:50 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Nov 2017 14:15:50 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 14:15:51 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 15:14:29 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 15:14:29 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 15:14:29 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 15:14:57 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 15:14:57 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 15:14:58 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 15:14:58 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 15:14:59 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 15:15:00 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 15:15:00 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 15:15:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 15:15:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 15:15:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 15:15:02 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 15:15:17 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 15:15:18 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:836d5b6056a9815be79c76480a90299267f60201bd1e3396817003e6c14819cc`  
		Last Modified: Mon, 09 Oct 2017 21:50:56 GMT  
		Size: 21.2 MB (21166251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab996b3d7a101ba6bf42115b4f156db847e321da9af52d5d686d82aa736b585`  
		Last Modified: Sat, 04 Nov 2017 14:15:27 GMT  
		Size: 4.2 MB (4231333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17684896b3ee5196333b6fa48ce590caddf46e21d82a5c5ef0f1a171360a6e17`  
		Last Modified: Sat, 04 Nov 2017 14:15:26 GMT  
		Size: 4.1 KB (4082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:828368257290f3ec36ef92643180012d362674e933b84c2db3c17c07f71d2629`  
		Last Modified: Sat, 04 Nov 2017 14:15:26 GMT  
		Size: 942.5 KB (942454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2fd4a06dc148e5a9a0ca56e46f45a376b486ca2b6c2c542f69e1f95927a7347`  
		Last Modified: Sat, 04 Nov 2017 14:15:31 GMT  
		Size: 25.2 MB (25170644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:706d18646df60ed10159c755526d2bce681fc0af771bbf562b58a57c6512c6c9`  
		Last Modified: Wed, 08 Nov 2017 15:15:31 GMT  
		Size: 7.0 MB (7003775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff375a9d907798e49eb1be06c5009c4a67307bb6bd79e9fccd5b6a0f73f4f86f`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b17b1ed86927f886e17566b808e1906e805150a31f499d189c0f500e15e33f19`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffbb30b719bc8fd2f4fda42258907104a5aacb01efaa78a84b5c2f7115bb59d0`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d48d2b51e4f81a9e2887218e78e5127274b6b3f08216a8b3f8e9000f88b11b`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad332c481563702001f742604f7523dd29b563a34d9916885ccc763b0ae829d6`  
		Last Modified: Wed, 08 Nov 2017 15:15:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf7dac959a5fc4de2e5a096e907b1f06d71a3cc3a475811c85acfe1a846dc2e`  
		Last Modified: Wed, 08 Nov 2017 15:15:59 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:5aeed246ab3e099bcc50cdb679a8cfb8f68f8da50670f7a4e79cda2e4d383f36
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.8 MB (55780565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:816c908a9f1f090d8c4b39e78f44e6740ad32a178987f0241e7b6a835ce21968`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 13:07:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 13:07:42 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 03 Nov 2017 13:07:42 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 13:07:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 13:08:17 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 13:08:17 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Nov 2017 13:08:17 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 13:08:18 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 14:07:33 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 14:07:33 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 14:07:33 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 14:07:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 14:07:56 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 14:07:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 14:07:58 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 14:07:59 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 14:08:00 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 14:08:00 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 14:08:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 14:08:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 14:08:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 14:08:02 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 14:08:18 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 14:08:18 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:59e81a3fde58ec8d4b8f2f58b98ef2f4d951d37dd9b99b016fd294a8e07d7796`  
		Last Modified: Mon, 09 Oct 2017 21:52:49 GMT  
		Size: 19.3 MB (19277135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2037b99f3c3dc51e8ace39aed9971155f34f325ac4f0a1e56a07c4d6c02f5ae6`  
		Last Modified: Fri, 03 Nov 2017 13:09:18 GMT  
		Size: 3.9 MB (3868347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f368172ea96bda944832762ad29b52dfe17ec5e6fae96eee37adc4e9d68674a5`  
		Last Modified: Fri, 03 Nov 2017 13:09:16 GMT  
		Size: 4.1 KB (4084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:893cc1ae60f8bf72ac3020ccc60b22d9e0ad0cb0647e15bc4847d08c8985eee2`  
		Last Modified: Fri, 03 Nov 2017 13:09:16 GMT  
		Size: 926.1 KB (926097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13220cc1a683014bda9cfae7f7ee7015a26b28048f90f5aa3ed8b6a96f4b2813`  
		Last Modified: Fri, 03 Nov 2017 13:09:20 GMT  
		Size: 24.8 MB (24785610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58a356878563ee7880f7ea397896a76cf556256188c064dfaa395c4eb8b307a`  
		Last Modified: Wed, 08 Nov 2017 14:08:36 GMT  
		Size: 6.9 MB (6912409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a84d7e484060abe56af99e3243e35870226baf3d464594649cde00b432409b`  
		Last Modified: Wed, 08 Nov 2017 14:08:32 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a4dda82cd90132fc6846f338ac824d01d2491a4dc9c7a2148e45dd36c1a07c1`  
		Last Modified: Wed, 08 Nov 2017 14:08:32 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb5a1bbcad31fe9218b4c700e6e6f49222b30383dd5d44e2f19ff528acf5779`  
		Last Modified: Wed, 08 Nov 2017 14:08:32 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6e3a0fc563c4eadf4b3e4275c74aad4341c977d1fbe0f7cb22c802371e0280`  
		Last Modified: Wed, 08 Nov 2017 14:08:34 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7566f7d60e14ccc8d5e2598242a25fe6b378d6777221884a5ee75ff2e99001c`  
		Last Modified: Wed, 08 Nov 2017 14:08:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73711d6f4f3b9cb591f9e5bae5b009927eeb8bf1a3079980b59ba0b8d5372547`  
		Last Modified: Wed, 08 Nov 2017 14:09:12 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:f8baff2ff944fa142429cdab336e52ec4dd54324ac5ddb6fcf22de7e68fff040
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57371306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edaa34989d006bba2d07b9bcf8be85d266666cbc0cd117c5f344082626b0c0fa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 13:53:20 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 13:53:22 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 03 Nov 2017 13:53:23 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 19:34:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 04 Nov 2017 19:35:29 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:35:29 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 04 Nov 2017 19:35:30 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 19:35:31 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 14:53:01 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 14:53:02 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 14:53:02 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 14:55:19 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 14:55:19 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 14:55:21 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 14:55:22 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 14:55:23 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 14:55:25 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 14:55:26 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 14:55:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 14:55:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 14:55:30 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 14:55:30 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 14:55:55 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 14:55:56 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:e907afd6e25615a4d3eb554d930cef57b87e79ec82413889c2eac38beb4eb8f7`  
		Last Modified: Mon, 09 Oct 2017 22:03:08 GMT  
		Size: 20.3 MB (20337143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f0e65f9ffb0e8a0344de3620c73aa9cd2d1ae973a3cf7588e6441034e9822e`  
		Last Modified: Sat, 04 Nov 2017 19:40:47 GMT  
		Size: 4.1 MB (4073213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bed6073dce4194deeccf2caa0ec9b97ec2177bc41b7b540c17cdf13fda94ff0`  
		Last Modified: Sat, 04 Nov 2017 19:40:45 GMT  
		Size: 4.1 KB (4084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0596ffaef28f501b64c44c84ad20044e9016acaa66310b575a15244c91f49e`  
		Last Modified: Sat, 04 Nov 2017 19:40:46 GMT  
		Size: 919.4 KB (919403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda14140ddcfb15fd8d4be24ae1356f497b7833c12233249de7016e1f2daf9f8`  
		Last Modified: Sat, 04 Nov 2017 19:40:51 GMT  
		Size: 25.0 MB (25042388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78ee2824b70d54b867b533443f6fd14f51e18f23759b80153c869a2968e569b`  
		Last Modified: Wed, 08 Nov 2017 14:57:26 GMT  
		Size: 7.0 MB (6988187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ca626918894c95f51ccc210a06699be77ca84210960cd18a30b55d87d56c73`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8571e229aa778383fbbbdb4c00374d68b5bfafdb419ab20b842307aab4fcedc7`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2bf9029e48f539b6a5f83c8b3d3dda09c821b3d219d121afa9217295dcde9dd`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e538834de5f58eecf0df7ac787b4c94167bd6a9866534400d2eb04acd9c32e85`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf4d77c8deac6d39c639b9f2446f4a57e2d71802b537e300a5d548c6ca98647`  
		Last Modified: Wed, 08 Nov 2017 14:57:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fc97d0e8617141d030a4491d7f41ae04d794e6184b9f24a89ed7a5cebc6284`  
		Last Modified: Wed, 08 Nov 2017 14:58:31 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; 386

```console
$ docker pull rabbitmq@sha256:5771064a71db0cb94d2c2a7fad29dacb647e7d2ae79bf8eb5670bc5c53a2a377
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.0 MB (63997209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29311920186d6145a01465b520b28c79b06c90ff7f6253493d72ef5625e27f57`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:36 GMT
ADD file:6582536277127947668f7bfdc1471a4e36170915b91a4cb841e7e1bfa1de6535 in / 
# Mon, 09 Oct 2017 21:45:36 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 10:45:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:45:12 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 03 Nov 2017 10:45:13 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 10:45:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 10:46:03 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:46:04 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Nov 2017 10:46:04 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 10:46:04 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 11:48:47 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 11:48:48 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 11:48:48 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 11:49:12 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 11:49:12 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 11:49:13 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 11:49:13 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 11:49:14 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 11:49:14 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 11:49:15 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 11:49:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 11:49:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 11:49:16 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 11:49:16 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 11:49:30 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 11:49:30 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:b2b52fe46b29fe5d0689f26449c2114e40f0731d4ce3eb8c3941397b74205432`  
		Last Modified: Mon, 09 Oct 2017 21:53:42 GMT  
		Size: 23.1 MB (23128678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d407b136da0731f5f38279001e9dd426217937443cad0f16e1f242366290773`  
		Last Modified: Fri, 03 Nov 2017 10:47:13 GMT  
		Size: 4.8 MB (4803637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c93817e78345b4b5070c81e5a37d02afc2b5fe347a1a4bf59e09f6084814fd2`  
		Last Modified: Fri, 03 Nov 2017 10:47:12 GMT  
		Size: 4.1 KB (4057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f97eae59c75f8f814ab781f5239ac2e132b7b65c77e75b35023c603c539ca54f`  
		Last Modified: Fri, 03 Nov 2017 10:47:12 GMT  
		Size: 931.5 KB (931524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aed670dee19fde6946658d7129e13520c1a0747f8b80b6f92dac5f6d974ae52`  
		Last Modified: Fri, 03 Nov 2017 10:47:24 GMT  
		Size: 27.8 MB (27818690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11406d3e0ee6652316aef307f374537466b83e9a8b039ac094bec9a91db51f0b`  
		Last Modified: Wed, 08 Nov 2017 11:50:31 GMT  
		Size: 7.3 MB (7303738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608b7a338130eaf9ca53ab8aae04dc703a6449fa58eba5be04558381ec57eaab`  
		Last Modified: Wed, 08 Nov 2017 11:50:29 GMT  
		Size: 2.3 KB (2258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9380c3d6a421026f3c7f6831ec07ffb5eb0aece161f5f828a30dec24044705`  
		Last Modified: Wed, 08 Nov 2017 11:50:30 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b5305e32a2ea4c0bfc2c36460511eb7875a23f38fdd44fa8fa2f50a02c2658`  
		Last Modified: Wed, 08 Nov 2017 11:50:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb1f16767fe3e5b4874ee86ccb33504606a39510dad06040c122662771157998`  
		Last Modified: Wed, 08 Nov 2017 11:50:30 GMT  
		Size: 4.0 KB (4040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc67a88011d726ea1e2a91b28cbe29e7aa9ba1026baf0890e813ce685ae28368`  
		Last Modified: Wed, 08 Nov 2017 11:50:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f06877666402272fcbd0aaa104c086e6b599d86cd1dc513b1240c92c55bbd5`  
		Last Modified: Wed, 08 Nov 2017 11:51:05 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; s390x

```console
$ docker pull rabbitmq@sha256:bd9dd8d582db968a260af3f807307d9706dc6072d9f3171ea8a230bd4e8a179c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60460553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b17152a9401a0ef3fd17369d282ba008a09e5c6cba66013c934af7accf533fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:35 GMT
ADD file:ae4aaa6affe22f36ab5478771d5c84917f72de7a8dac16345a035709a1a5edf4 in / 
# Mon, 09 Oct 2017 21:44:36 GMT
CMD ["bash"]
# Thu, 02 Nov 2017 17:06:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 17:06:41 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 02 Nov 2017 17:06:42 GMT
ENV GOSU_VERSION=1.10
# Thu, 02 Nov 2017 17:07:21 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 02 Nov 2017 17:07:43 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 17:07:44 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 02 Nov 2017 17:07:44 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 17:07:44 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 18:06:32 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 18:06:32 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 18:06:32 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 08 Nov 2017 18:07:19 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 08 Nov 2017 18:07:19 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 18:07:20 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 18:07:20 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 18:07:21 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 18:07:21 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 08 Nov 2017 18:07:22 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 08 Nov 2017 18:07:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 08 Nov 2017 18:07:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 18:07:23 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 18:07:23 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 18:07:34 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 18:07:34 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:671716cc49517eef5f430c695ce344d63e390cb65f58d30939f2ba615c953686`  
		Last Modified: Mon, 09 Oct 2017 21:49:09 GMT  
		Size: 22.3 MB (22339951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cae61f12be6f01ba06573d9393712e91821cd5496302310f550fe5842dea557`  
		Last Modified: Fri, 03 Nov 2017 17:08:41 GMT  
		Size: 4.5 MB (4529879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca307103ce923e7e89d35185be4df8e54c3c0b54d259b8880aa7bae107d4952`  
		Last Modified: Fri, 03 Nov 2017 17:08:39 GMT  
		Size: 4.1 KB (4074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d16320f9fc35ea20ba7fb9b21f88e3f0f06c52d416682319f3b2a85a345a3d5`  
		Last Modified: Fri, 03 Nov 2017 17:08:39 GMT  
		Size: 938.0 KB (938019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801205b182b8d6f7acf36200b2ba07ed52ea224dfefe792b525224e4aacb4d4a`  
		Last Modified: Fri, 03 Nov 2017 17:08:48 GMT  
		Size: 25.6 MB (25619372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12ce67a630f123e36df054e0e90c31abb3d517dd984362eaa6cf7bc070304fe`  
		Last Modified: Wed, 08 Nov 2017 18:08:14 GMT  
		Size: 7.0 MB (7022368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f4dea1598011d081121e868c941bd695758683908030b52f8731656d62b8fc`  
		Last Modified: Wed, 08 Nov 2017 18:08:12 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1968b253d8ac805bf6188d47995cd6f0a576a4f34ccd66b9bc418a0dc94fa251`  
		Last Modified: Wed, 08 Nov 2017 18:08:12 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd7240ae1eb0726c11374653d1ea68694dd90bc2f2ae12d89158626f02ce3f8`  
		Last Modified: Wed, 08 Nov 2017 18:08:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:380b1c8ca0aabd89f393a15a64c185770c2628bf5299026d12eb21b8a1e293e0`  
		Last Modified: Wed, 08 Nov 2017 18:08:13 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee865b81bc6c91cba724881b543ca690115dd90710a4fa43a8eae27e136cfb4b`  
		Last Modified: Wed, 08 Nov 2017 18:08:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2405563deaf816f18368dc330c443de6ddc256bd008d497e4109303adb607851`  
		Last Modified: Wed, 08 Nov 2017 18:08:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management-alpine`

```console
$ docker pull rabbitmq@sha256:6220affc4420dae7fd23257a6ead81e2fe71f60470ed61969f29458b8aca40c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; s390x

### `rabbitmq:management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:b9bd8d394b9f406246d8a0259fc3914925bd99aa5eb7c2501eb8755777b16c2f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23675757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f7630631a89c10be15f7abbf23574da760f6b873ff37d1b8ebb0570b009aada`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:07:57 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Sat, 04 Nov 2017 05:08:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 04 Nov 2017 05:08:11 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Sat, 04 Nov 2017 05:08:11 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 04 Nov 2017 05:08:11 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sat, 04 Nov 2017 05:08:11 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 05:08:12 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 05:41:03 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 05:41:03 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 05:41:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 05:41:27 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 05:41:28 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 05:41:28 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 05:41:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 05:41:29 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 05:41:30 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 05:41:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 05:41:30 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 05:41:30 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 05:41:38 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 05:41:38 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd931d2c14c5b5501527044a16e680c1b1111ba939bd17bbd06d73cf92976dc2`  
		Last Modified: Sat, 04 Nov 2017 05:09:49 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f3f2df337d68db6b507058eda830a8986efd4eb17efa8910edf383fb1e67c9`  
		Last Modified: Sat, 04 Nov 2017 05:09:49 GMT  
		Size: 8.2 KB (8181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7844869e4b5b7138207173247acaa8c055a4b34be2fd981dc153aa1d06d31861`  
		Last Modified: Sat, 04 Nov 2017 05:09:52 GMT  
		Size: 16.6 MB (16561780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18cccd03229e8d4e3b51b1776b63f584607b7154b95bfb9d2767dc63d2b94e6`  
		Last Modified: Wed, 08 Nov 2017 05:42:48 GMT  
		Size: 5.1 MB (5108427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b1a078564a2b7a12bb756228a5f2adc4d7d6d42b72cacd82aef74e27ef07a7`  
		Last Modified: Wed, 08 Nov 2017 05:42:48 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a05083963037f58105f5fda0a18ed7a88cf1308f9430c152f5d75e871fa29e0`  
		Last Modified: Wed, 08 Nov 2017 05:42:47 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:749e0123d4b8df67ecebb3ae52ec16d2202197ed19c292af307897c04686bb90`  
		Last Modified: Wed, 08 Nov 2017 05:42:48 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efecef2b5124d36f82ffa7552672508f9e59c59d548e2c74e6a33052a46025d`  
		Last Modified: Wed, 08 Nov 2017 05:42:47 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6feeecc743824f0b313a36169a718247ad0705095301913fe90305e3031bddcc`  
		Last Modified: Wed, 08 Nov 2017 05:43:14 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:e8ed5cd9b245e266e484ca928e7737c0e2e586a425d1a35953b6eb95dee4dda1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23414140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95ad91096d26dce7523e8edcb959d25df4acb9a9ec30aa436b3efdf7447e6111`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 13:53:09 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 13:53:13 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 13:53:28 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 13:53:28 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 13:53:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 13:53:29 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 13:53:30 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 14:56:12 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 14:56:13 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 14:56:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 14:56:30 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 14:56:32 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 14:56:32 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 14:56:34 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 14:56:35 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 14:56:36 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 14:56:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 14:56:37 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 14:56:38 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 14:56:57 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 14:56:58 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05834eac152e30997eb4f1aa4ffe8e952bd759c1a1009bd183dec80dca24cf86`  
		Last Modified: Thu, 26 Oct 2017 13:55:11 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd88a23486b40755f2e1192cb35d4fdaec20831c18ce83da31df3f8aa2f7b45c`  
		Last Modified: Thu, 26 Oct 2017 13:55:11 GMT  
		Size: 8.3 KB (8297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f9ba1206e6e4bfba21cef7f235482b41868ec966d5ebc44a4c4ac432a5fe03`  
		Last Modified: Thu, 26 Oct 2017 13:55:16 GMT  
		Size: 16.4 MB (16376872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96467a3af759dd4d0c8e9dfd696a707eaa9c669b6d249c3e68a9fd8fc1e2be0b`  
		Last Modified: Wed, 08 Nov 2017 14:59:37 GMT  
		Size: 5.1 MB (5108108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e205c0c58f4d29c6e42fdf1c9ee424a884b20605fa3edad491d61393b620bc`  
		Last Modified: Wed, 08 Nov 2017 14:59:37 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48ac11c13026eea7c9ea3de8e602b707ab2ec1d784eeac0768b5c3c114d8da53`  
		Last Modified: Wed, 08 Nov 2017 14:59:36 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e0267b7ac6617ceb8d53546896d0f88af55faf21e13a9df998452604170475`  
		Last Modified: Wed, 08 Nov 2017 14:59:37 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd69c177dca55f85ae172255c42fb1a1afc9098e0d9c90a2af3e9281a06355e8`  
		Last Modified: Wed, 08 Nov 2017 14:59:36 GMT  
		Size: 4.0 KB (4036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b418983d7e097bc55fc7ad055b5ce4b247a68a165ea5b7455d4e1b1ccef99afd`  
		Last Modified: Wed, 08 Nov 2017 15:00:47 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:7df18e5d24275cec2a0d6974a6f8554d63bad500dedcc90dbefaaf1049d2c689
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23879249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db93ff3b392669c3d72d83fb6b6c4efce88e00330eb9b1a50ac6e3952e38756a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 10:44:24 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 10:44:28 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 10:44:50 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 10:44:50 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 10:44:50 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 10:44:50 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 10:44:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 11:49:36 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 11:49:36 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 11:50:03 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 11:50:04 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 11:50:04 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 11:50:04 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 11:50:05 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 11:50:06 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 11:50:06 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 11:50:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 11:50:06 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 11:50:07 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 11:50:17 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 11:50:17 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cf0f0a132c9bb882206147dffad08dc780f2bc82556cfbda9878a3218f1e7c`  
		Last Modified: Thu, 26 Oct 2017 10:45:28 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e00a9186496c6602ccd3efb4bb1780b42adb7028c8fa3cd3c1ff2f10bcfa33a3`  
		Last Modified: Thu, 26 Oct 2017 10:45:28 GMT  
		Size: 8.3 KB (8305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc19938c3bf2e858347a9c7add1beac38af5a4f83b99d80ddc004aa4ad51e596`  
		Last Modified: Thu, 26 Oct 2017 10:45:30 GMT  
		Size: 16.7 MB (16710838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fffae17dadc5d20f4dc949f407146594a7ca8aa4fb11be121519ef0a316dd05a`  
		Last Modified: Wed, 08 Nov 2017 11:51:38 GMT  
		Size: 5.1 MB (5108395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaef62ea46f71b0592807ef97d67f3649e3ccaea0059286442606ddfc96644d9`  
		Last Modified: Wed, 08 Nov 2017 11:51:37 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77474049fb515a920c7c001b111e29142426b6cb3e22416e6784819702461895`  
		Last Modified: Wed, 08 Nov 2017 11:51:36 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580eb2276815b19169a24cccdb63099175d34f275d9a3a0f07900e7966f0694e`  
		Last Modified: Wed, 08 Nov 2017 11:51:37 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5471bc4e5ffb070324baf533e92da1a68c5498041f178eb4a318449bb0e03bf`  
		Last Modified: Wed, 08 Nov 2017 11:51:37 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0a51e0d41ab48801f44f6af1c41212776e01e94077bb83ae82ca64d6204c7e`  
		Last Modified: Wed, 08 Nov 2017 11:52:08 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:4a00b41bb7019e01f206e41b5aa7da165d05f371d9ebb8b77eb6a9b1c4cd5bd5
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23915197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b17ad4bb3464a088278244de58eab0831867b784c303c0f9be34cf90b8b3203e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 17:06:39 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 17:06:42 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 17:06:55 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 17:06:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 17:06:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 17:06:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 17:06:56 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 18:07:41 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 18:07:41 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 18:07:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 18:07:49 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 18:07:50 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 18:07:50 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 18:07:51 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 18:07:51 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 18:07:52 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 18:07:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 18:07:52 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 18:07:52 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 18:08:01 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 08 Nov 2017 18:08:01 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299a1fbc19bbea84dbf4d0b6e2e71fb847299b017209b1f9783faea14214c995`  
		Last Modified: Thu, 26 Oct 2017 17:07:31 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb76f2dd4162cae82233bc93ba436b63ca37e536d53c85a9f1d7343203e3c383`  
		Last Modified: Thu, 26 Oct 2017 17:07:31 GMT  
		Size: 8.6 KB (8604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac09bb55706d627cf6348c9d0bd891c2fe9a4155aee5d95264b92781371021db`  
		Last Modified: Thu, 26 Oct 2017 17:07:33 GMT  
		Size: 16.7 MB (16726549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d93907c5b4f4bc7a5481de6bb16c3f072a75e5527d3cfc3b9749b113cfae95f`  
		Last Modified: Wed, 08 Nov 2017 18:08:54 GMT  
		Size: 5.1 MB (5108471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35583f28b47cbc069cf7cd90f5e6424989326186e6d4eda16789f04b1a593292`  
		Last Modified: Wed, 08 Nov 2017 18:08:53 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5276afe58ea371107f544988a9e5123c638674f1af93bb6aabbb052a917ca221`  
		Last Modified: Wed, 08 Nov 2017 18:08:53 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2728c7344d2114e96e7f93f99acfaa5e41fd50018d5c58170bbb955c3f61b4`  
		Last Modified: Wed, 08 Nov 2017 18:08:53 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161b930d7a34fea6d9e836a0f286a8e3105160cdd36fa617d62997bd63388023`  
		Last Modified: Wed, 08 Nov 2017 18:08:53 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fdeb2f56852f23d4e9898407b7b17157ff3198186456a4b0101e3223c199d1a`  
		Last Modified: Wed, 08 Nov 2017 18:09:12 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
