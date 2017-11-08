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
$ docker pull rabbitmq@sha256:93e5e4e478db20aaeceda4e62a824b3c4779e71f4df646a0352db4add5d8f233
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

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

## `rabbitmq:3.6`

```console
$ docker pull rabbitmq@sha256:93e5e4e478db20aaeceda4e62a824b3c4779e71f4df646a0352db4add5d8f233
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

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

## `rabbitmq:3.6.14`

```console
$ docker pull rabbitmq@sha256:93e5e4e478db20aaeceda4e62a824b3c4779e71f4df646a0352db4add5d8f233
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

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

## `rabbitmq:3.6.14-alpine`

```console
$ docker pull rabbitmq@sha256:91b2b00f9543e35fefb83a1a6100b8def41c1c5ba451b7959b26ca4b007c5f0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

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

## `rabbitmq:3.6.14-management`

```console
$ docker pull rabbitmq@sha256:854d4e3adc3d52a9c1e3229431a6ade0cf2d9d670db67221203048d2a1b15fab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

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

## `rabbitmq:3.6.14-management-alpine`

```console
$ docker pull rabbitmq@sha256:49be0f127b33182198290b8771d9a34fa90185bf17f689319cfedfb3fd390ed2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

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

## `rabbitmq:3.6-alpine`

```console
$ docker pull rabbitmq@sha256:91b2b00f9543e35fefb83a1a6100b8def41c1c5ba451b7959b26ca4b007c5f0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

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

## `rabbitmq:3.6-management`

```console
$ docker pull rabbitmq@sha256:854d4e3adc3d52a9c1e3229431a6ade0cf2d9d670db67221203048d2a1b15fab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

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

## `rabbitmq:3.6-management-alpine`

```console
$ docker pull rabbitmq@sha256:49be0f127b33182198290b8771d9a34fa90185bf17f689319cfedfb3fd390ed2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

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

## `rabbitmq:3-alpine`

```console
$ docker pull rabbitmq@sha256:1f8806ee6cc609efc528030ec11742e06fbc27023ea98e1b8f30696c26000715
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

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

## `rabbitmq:3-management`

```console
$ docker pull rabbitmq@sha256:854d4e3adc3d52a9c1e3229431a6ade0cf2d9d670db67221203048d2a1b15fab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

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

## `rabbitmq:3-management-alpine`

```console
$ docker pull rabbitmq@sha256:49be0f127b33182198290b8771d9a34fa90185bf17f689319cfedfb3fd390ed2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

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

## `rabbitmq:alpine`

```console
$ docker pull rabbitmq@sha256:1f8806ee6cc609efc528030ec11742e06fbc27023ea98e1b8f30696c26000715
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

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

## `rabbitmq:latest`

```console
$ docker pull rabbitmq@sha256:ba79e69d4952f2d1649b41ea08d55deaeeae59021b55fa898fc917c27e9619e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

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

## `rabbitmq:management`

```console
$ docker pull rabbitmq@sha256:854d4e3adc3d52a9c1e3229431a6ade0cf2d9d670db67221203048d2a1b15fab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386

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

## `rabbitmq:management-alpine`

```console
$ docker pull rabbitmq@sha256:49be0f127b33182198290b8771d9a34fa90185bf17f689319cfedfb3fd390ed2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

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
