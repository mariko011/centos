## `rabbitmq:management`

```console
$ docker pull rabbitmq@sha256:e9b96c83922e7bc3fffc97292e75d1b57387e9ce8f3adadb4fcc0e50f4207f08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:25c23cbaf4dfc031b15014e223938db8d621c715e9c149e74f008caa7be2aff7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62851617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59b9ded1acee5e5a718a23ddae999b908929ef6b0952f33170b9858b5d0f8089`
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
# Sat, 04 Nov 2017 17:46:50 GMT
ENV RABBITMQ_VERSION=3.6.12
# Sat, 04 Nov 2017 17:46:50 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Sat, 04 Nov 2017 17:46:50 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Sat, 04 Nov 2017 17:47:09 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 17:47:09 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 04 Nov 2017 17:47:09 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 04 Nov 2017 17:47:10 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 04 Nov 2017 17:47:10 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 04 Nov 2017 17:47:11 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 04 Nov 2017 17:47:11 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Sat, 04 Nov 2017 17:47:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 04 Nov 2017 17:47:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 17:47:13 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 04 Nov 2017 17:47:13 GMT
CMD ["rabbitmq-server"]
# Sat, 04 Nov 2017 17:47:28 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 04 Nov 2017 17:47:28 GMT
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
	-	`sha256:761545cf558dd9c467387a876eaf968788bb20830cf6a7d90fef5c15bb51daf7`  
		Last Modified: Sat, 04 Nov 2017 17:47:41 GMT  
		Size: 7.2 MB (7194241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9bde6c4284bd70608abe0ff147aa7e06a0758debd67680fef924fc3d58be499`  
		Last Modified: Sat, 04 Nov 2017 17:47:38 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686684e391946154c23e874efaa6302d5bee6127ec05af72cfb1766d5174878f`  
		Last Modified: Sat, 04 Nov 2017 17:47:38 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f585063d9211243e0de92c707b7e263e8dd2f0a35a29ff94fe4659abea8b61`  
		Last Modified: Sat, 04 Nov 2017 17:47:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f5e892f69c68d62c971aa3da62c0278bc140200b4e7d18be19a662c93b8abd`  
		Last Modified: Sat, 04 Nov 2017 17:47:38 GMT  
		Size: 4.0 KB (4036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1841d1c0fea87c731bee87f4952a119956e777b5b192760fc820a38c2786ce70`  
		Last Modified: Sat, 04 Nov 2017 17:47:38 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec705092c27c1ac3d50e66a597f10c9d6bc4481573ea044f2dec17248857d2af`  
		Last Modified: Sat, 04 Nov 2017 17:48:06 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:6e5363e687ad4e9bc524f7bdb9a81b9583cdd13f048c9b360f8606877b9a1d7b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.4 MB (58431436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01381dbf208d33c6f261b319b786b67badee0ef79837c47169670eb72225ec96`
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
# Fri, 03 Nov 2017 14:15:51 GMT
ENV RABBITMQ_VERSION=3.6.12
# Fri, 03 Nov 2017 14:15:51 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Fri, 03 Nov 2017 14:15:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Sat, 04 Nov 2017 14:14:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 14:14:56 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 04 Nov 2017 14:14:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 04 Nov 2017 14:14:57 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 04 Nov 2017 14:14:58 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 04 Nov 2017 14:14:59 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 04 Nov 2017 14:14:59 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Sat, 04 Nov 2017 14:15:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 04 Nov 2017 14:15:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 14:15:01 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 04 Nov 2017 14:15:01 GMT
CMD ["rabbitmq-server"]
# Sat, 04 Nov 2017 14:15:13 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 04 Nov 2017 14:15:13 GMT
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
	-	`sha256:31337555aced087d4af40ceaf31602c735deb7c7b080f8f3d8ad58f2d0cd025a`  
		Last Modified: Sat, 04 Nov 2017 14:15:27 GMT  
		Size: 6.9 MB (6909788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52521bb6814f28ba54b8e3029235b078b0e0318d573d79f5bfa3d001b3522109`  
		Last Modified: Sat, 04 Nov 2017 14:15:24 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6212de44a13961eea927f30084c63a1a1694b019299e7b6657de53c8d1c630`  
		Last Modified: Sat, 04 Nov 2017 14:15:24 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b835adeb573edceef7ab9adfcb8abfef2050d9976219f0195a93f3fee5df5c0`  
		Last Modified: Sat, 04 Nov 2017 14:15:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b243c87c7b228070f05891fa88ebf5b3f6ac0c26bd2846a4a04b01b41092ce`  
		Last Modified: Sat, 04 Nov 2017 14:15:25 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be57193265a02fa0f34f2b43ff605bd1f14c937ecc965398a849e3aa2eed0f03`  
		Last Modified: Sat, 04 Nov 2017 14:15:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6debd7affcec506b49f02449cd68252b76fc23f2c9ab2c3c1ca1bef3b331e63`  
		Last Modified: Sat, 04 Nov 2017 14:15:58 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:353fc3a4b10cc0fd93baf80287c8e7c779c49d7fd5421091aa004286b3bf559c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55688342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd5c488f599ef650e2dc6824d489473db268160f94789b74f5ec312eef58600d`
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
# Fri, 03 Nov 2017 13:08:18 GMT
ENV RABBITMQ_VERSION=3.6.12
# Fri, 03 Nov 2017 13:08:18 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Fri, 03 Nov 2017 13:08:18 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Fri, 03 Nov 2017 13:08:39 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 13:08:39 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 03 Nov 2017 13:08:40 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 03 Nov 2017 13:08:41 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 03 Nov 2017 13:08:42 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 03 Nov 2017 13:08:43 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 03 Nov 2017 13:08:43 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Fri, 03 Nov 2017 13:08:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Nov 2017 13:08:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 13:08:45 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 03 Nov 2017 13:08:45 GMT
CMD ["rabbitmq-server"]
# Fri, 03 Nov 2017 13:09:01 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 03 Nov 2017 13:09:01 GMT
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
	-	`sha256:269f4e069126132643c1c0be1faf600d55ff15e870066c527d03181904d99c5d`  
		Last Modified: Fri, 03 Nov 2017 13:09:17 GMT  
		Size: 6.8 MB (6820180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ae244f4f610a339fcbddf37612a15ec7b7f6674e3d888c3c4d36302283418e`  
		Last Modified: Fri, 03 Nov 2017 13:09:15 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce7d85327b7bc7d59a7b54222a3e6babd7f8afd8eb080becb77fc52aed5a751`  
		Last Modified: Fri, 03 Nov 2017 13:09:15 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1dfa32e4b49700ed0130ebd563f40a2c381393983b571a9886435813102ad0c`  
		Last Modified: Fri, 03 Nov 2017 13:09:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba15cd885dc21f438d366b40d0d9f595f2c25e063c60fa590ab4c0f6233ff94`  
		Last Modified: Fri, 03 Nov 2017 13:09:14 GMT  
		Size: 4.0 KB (4040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978a8434497fcb8e08cefc7484b515ac34fe23c281fb869d015f62b54673028c`  
		Last Modified: Fri, 03 Nov 2017 13:09:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34fa59eaf946f8e35134f1a0bf195874868c3ce1e2a025350fc57efe60ecbea`  
		Last Modified: Fri, 03 Nov 2017 13:09:54 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:32b3de80319ab0bfd08ec5d2d04f723512c8fc6a214c46fa6e632ae9ede43d84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57277702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bff0a22e781c53240daf07e33b080a3a4e0420f2687249686a35eff35444fad4`
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
# Sat, 04 Nov 2017 19:35:31 GMT
ENV RABBITMQ_VERSION=3.6.12
# Sat, 04 Nov 2017 19:35:32 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Sat, 04 Nov 2017 19:35:33 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Sat, 04 Nov 2017 19:38:35 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:38:45 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 04 Nov 2017 19:38:47 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 04 Nov 2017 19:38:48 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 04 Nov 2017 19:39:02 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 04 Nov 2017 19:39:04 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 04 Nov 2017 19:39:05 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Sat, 04 Nov 2017 19:39:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 04 Nov 2017 19:39:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Nov 2017 19:39:09 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 04 Nov 2017 19:39:09 GMT
CMD ["rabbitmq-server"]
# Sat, 04 Nov 2017 19:40:01 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 04 Nov 2017 19:40:12 GMT
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
	-	`sha256:91f9a3347035ed2fcf35776d52e4b31c7b4ecdba9a8c593f2d7701c06f904d64`  
		Last Modified: Sat, 04 Nov 2017 19:40:46 GMT  
		Size: 6.9 MB (6894588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee2442c237a0d4a930786d808152ccfff883f4ade553f3653c74b02df3de01c`  
		Last Modified: Sat, 04 Nov 2017 19:40:43 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03916ff447283aac103f68bcf896df57338e9510c0cbf829c292d65d7e67731a`  
		Last Modified: Sat, 04 Nov 2017 19:40:43 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b09e5823c42036d03c93f1fe817bcbc5345b3429256e67923df768aa41c000fa`  
		Last Modified: Sat, 04 Nov 2017 19:40:42 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ee23b335ff264c14f985a8456c03db388e17f331638b83940972a6645caf4c`  
		Last Modified: Sat, 04 Nov 2017 19:40:43 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7650b5e86c12d1319ffb3f4e2f68de5f3c2e3564e084b4377a7006aff94b0eeb`  
		Last Modified: Sat, 04 Nov 2017 19:40:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c592fb22531ec5189a507640616976f02433a0925f37896ed058225e53b5348`  
		Last Modified: Sat, 04 Nov 2017 19:42:04 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; 386

```console
$ docker pull rabbitmq@sha256:16ab1fd6ebf60e7fe32149ac86bf79cd5a2e2d573dec3267fd0d7d646514384c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63902453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a8039a2961a84491da6ac62bad7d9b065b333750e66543f8e7cf931c13ed028`
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
# Fri, 03 Nov 2017 10:46:04 GMT
ENV RABBITMQ_VERSION=3.6.12
# Fri, 03 Nov 2017 10:46:04 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Fri, 03 Nov 2017 10:46:04 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Fri, 03 Nov 2017 10:46:25 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 10:46:25 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 03 Nov 2017 10:46:26 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 03 Nov 2017 10:46:27 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 03 Nov 2017 10:46:27 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 03 Nov 2017 10:46:28 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 03 Nov 2017 10:46:28 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Fri, 03 Nov 2017 10:46:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Nov 2017 10:46:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 10:46:30 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 03 Nov 2017 10:46:30 GMT
CMD ["rabbitmq-server"]
# Fri, 03 Nov 2017 10:46:58 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 03 Nov 2017 10:46:58 GMT
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
	-	`sha256:d6b61d6d0b60ec18280aeba946a05d62817afbe030f277af85b5f434021e90c9`  
		Last Modified: Fri, 03 Nov 2017 10:47:16 GMT  
		Size: 7.2 MB (7208985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ec7d4cc3b5497bbbd6b2d1e9574dbedb6c7ad11805cff4c287ea444ddc2e298`  
		Last Modified: Fri, 03 Nov 2017 10:47:12 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eec554591344f78e35e3976d002d617623a52d123fc71e65d33c4d533d2b2e7`  
		Last Modified: Fri, 03 Nov 2017 10:47:12 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e433f73af1167eff0dee1984c095bf5be36593fcead5b8cc820e2cb829aaed0`  
		Last Modified: Fri, 03 Nov 2017 10:47:12 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8d6e0dbdbb04b44f7a0972fce6b0b1b19262e4fc5416bd1589af560f16c99f`  
		Last Modified: Fri, 03 Nov 2017 10:47:12 GMT  
		Size: 4.0 KB (4040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64bab08cf9b00d8109139e1cb1cdec448b71fdae7d7f1260d4175771416a5f80`  
		Last Modified: Fri, 03 Nov 2017 10:47:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a2aad62bc4e7f6b9b68a5196e492b29083b8ab4e68dfea4a93b469cb79aae29`  
		Last Modified: Fri, 03 Nov 2017 10:48:04 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:47fb5bf4afd56afb9e9ab383f1449cee19c3ab7a7e653d0b04037cf839cfab52
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60384672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66c4dbfbbd301b5dbb171ca49da8419b76567c7aa2d00978e12759ced95ca846`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:56 GMT
ADD file:7edf73437495be24244c16841b563be06c15452963f41ac940fb5e105ed96027 in / 
# Mon, 09 Oct 2017 21:45:58 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 07:12:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 07:12:51 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 03 Nov 2017 07:12:53 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 07:13:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 03 Nov 2017 07:15:26 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 07:15:28 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Nov 2017 07:15:29 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 07:15:31 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 03 Nov 2017 07:15:33 GMT
ENV RABBITMQ_VERSION=3.6.12
# Fri, 03 Nov 2017 07:15:34 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Fri, 03 Nov 2017 07:15:35 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Fri, 03 Nov 2017 07:16:54 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 07:16:55 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 03 Nov 2017 07:17:00 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 03 Nov 2017 07:17:01 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 03 Nov 2017 07:17:06 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 03 Nov 2017 07:17:11 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 03 Nov 2017 07:17:13 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Fri, 03 Nov 2017 07:17:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Nov 2017 07:17:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 07:17:21 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 03 Nov 2017 07:17:23 GMT
CMD ["rabbitmq-server"]
# Fri, 03 Nov 2017 07:17:36 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 03 Nov 2017 07:17:39 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:c4860466fa1e6824151f4fa3a51ef0e9d7d3c3ba860e21d94e69988b65601260`  
		Last Modified: Mon, 09 Oct 2017 21:52:59 GMT  
		Size: 22.7 MB (22746217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cebe4c87dcd1f7ef11d4d21752831bf4095ac42afe041706c35f1d7d4d0ca4f2`  
		Last Modified: Fri, 03 Nov 2017 07:18:05 GMT  
		Size: 4.4 MB (4360529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e5365525084de1c85fa29ef33d37c38b5f80621f5bcb26bb4882d71598c6f7`  
		Last Modified: Fri, 03 Nov 2017 07:18:03 GMT  
		Size: 4.1 KB (4106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:600c3853740b7f4cff9cc799ae478f669bd54277a8dd375479a34ed1bb47a803`  
		Last Modified: Fri, 03 Nov 2017 07:18:02 GMT  
		Size: 920.7 KB (920695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993868ec534130e348e45aa6d64b471fa46eafbf061836cc9d2a56edf73e9382`  
		Last Modified: Fri, 03 Nov 2017 07:18:06 GMT  
		Size: 25.5 MB (25492533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca1b92e212aaef163244d5fdd9e135fdb8be8c9dbbb626061ee2882d941a553`  
		Last Modified: Fri, 03 Nov 2017 07:18:03 GMT  
		Size: 6.9 MB (6853702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f483f96d1f500f9f69170bc6927d599a7f0cd1550f96b6ee3f90eb4185a1bffb`  
		Last Modified: Fri, 03 Nov 2017 07:17:59 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672b433db63f40c7cab3080cf36bd7beabbdf7d9eece3f2dc16a65b900c61180`  
		Last Modified: Fri, 03 Nov 2017 07:17:59 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93971551a2c911c34ca2e9af47495efb2f27e2922e567d93dd94dfb9b773bd3`  
		Last Modified: Fri, 03 Nov 2017 07:17:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5494bb8bcc45452a84c216edffedb3103a15c3e209aba0561dfbc70e4312192e`  
		Last Modified: Fri, 03 Nov 2017 07:17:59 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d56b2a4f9f8d7b11831a8f1952fe2c02613bcb014ab9d756b70b3b398b37269`  
		Last Modified: Fri, 03 Nov 2017 07:17:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e2264063017ef705c9dcc066695ab771b32f19f38ba34c158531e7d3f4c9fc`  
		Last Modified: Fri, 03 Nov 2017 07:18:40 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; s390x

```console
$ docker pull rabbitmq@sha256:35d9ecb54b432f7591ecfe0cb1ee71d152199b0ae07ecdd8c9b21cd6a87b0a51
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60364970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a628fac494ad4d163ad91471c151b4ed5bcfbe2f318bc677224413d944cf4ce8`
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
# Thu, 02 Nov 2017 17:07:44 GMT
ENV RABBITMQ_VERSION=3.6.12
# Thu, 02 Nov 2017 17:07:44 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Thu, 02 Nov 2017 17:07:45 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Fri, 03 Nov 2017 17:07:48 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 17:07:48 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 03 Nov 2017 17:07:49 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 03 Nov 2017 17:07:50 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 03 Nov 2017 17:07:52 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 03 Nov 2017 17:07:53 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 03 Nov 2017 17:07:54 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Fri, 03 Nov 2017 17:07:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Nov 2017 17:07:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Nov 2017 17:07:57 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 03 Nov 2017 17:07:57 GMT
CMD ["rabbitmq-server"]
# Fri, 03 Nov 2017 17:08:14 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 03 Nov 2017 17:08:15 GMT
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
	-	`sha256:8e9cb605e6242f5ab505cbd229c7b2fdf2935a6254130070c12c4d8413616024`  
		Last Modified: Fri, 03 Nov 2017 17:08:40 GMT  
		Size: 6.9 MB (6926791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2799e1b1479136fbb3c3ba6df318d449990a3cf5fc3293a14142cde0d9f51980`  
		Last Modified: Fri, 03 Nov 2017 17:08:37 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71a6d5de3e6aaa1c06122a1b5cda3b4bcb98d54e5dc23f38896fc81e98cea769`  
		Last Modified: Fri, 03 Nov 2017 17:08:37 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:172fa2e52818dcedf69c727f6790f0f9744f8538da3f4222602aaa0ab9fa82c0`  
		Last Modified: Fri, 03 Nov 2017 17:08:37 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c734f2707800c1189521a51409fed1508fb7e36c6e67eca5537d03c4b24ef0d`  
		Last Modified: Fri, 03 Nov 2017 17:08:37 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e7d712f1155d66243480cd441ec04e084a8e7e2d6a0653e27138b31b56d2ae`  
		Last Modified: Fri, 03 Nov 2017 17:08:38 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d9489f6c1d1f9d4090b7d9220b20aac5cc7e9588c9ddf66d0357f1eb8226071`  
		Last Modified: Fri, 03 Nov 2017 17:09:14 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
