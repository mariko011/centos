<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rabbitmq`

-	[`rabbitmq:3`](#rabbitmq3)
-	[`rabbitmq:3.6`](#rabbitmq36)
-	[`rabbitmq:3.6.12`](#rabbitmq3612)
-	[`rabbitmq:3.6.12-alpine`](#rabbitmq3612-alpine)
-	[`rabbitmq:3.6.12-management`](#rabbitmq3612-management)
-	[`rabbitmq:3.6.12-management-alpine`](#rabbitmq3612-management-alpine)
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
$ docker pull rabbitmq@sha256:23c16060375b7e91eda8a42e04869d3526ecbf6b01316e0170f76fc767a0d3ab
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

### `rabbitmq:3` - linux; amd64

```console
$ docker pull rabbitmq@sha256:b99e238fa99bcd7ffcfd89a536fdf33bbd27e206cea118246874e3792ebfc2bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62852177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e186865bff877f181c4a4b4ffdb7235e91c0c988bdc0c926d1b68e5d8c81e45`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:42 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Mon, 09 Oct 2017 21:33:43 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:41:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:41:43 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 02:41:43 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:42:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 02:42:40 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:42:41 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 02:42:41 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 02:42:41 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 02:42:41 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 02:42:41 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 02:42:42 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 02:43:16 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:43:16 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 02:43:17 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 02:43:17 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 02:43:18 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 02:43:19 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 13 Oct 2017 23:40:43 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Fri, 13 Oct 2017 23:40:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 23:40:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 23:40:45 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 13 Oct 2017 23:40:45 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e65f0b00e4cfb1535d0f4e7a63707172ae63483fb33140d777614f199afcb36`  
		Last Modified: Tue, 10 Oct 2017 02:43:59 GMT  
		Size: 4.5 MB (4498726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2bd803179890909fcae186044c0e6ca1bc1d34e5fc05ef1ccea823e7be97540`  
		Last Modified: Tue, 10 Oct 2017 02:43:57 GMT  
		Size: 4.1 KB (4069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b05ca8302833edf783c50f03cd7ba0b8e12bc872b053eda3e3ae7e1f17e2b4b`  
		Last Modified: Tue, 10 Oct 2017 02:43:58 GMT  
		Size: 952.1 KB (952058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bb5a4bbcce5a040eb83057f9e93d17663bb123f4e98168457444497f7d17b70`  
		Last Modified: Tue, 10 Oct 2017 02:44:03 GMT  
		Size: 27.7 MB (27703883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf840d8999f6fe46a162974c82378c38b3cf3dcccbbaff848c0fb199988aebe0`  
		Last Modified: Tue, 10 Oct 2017 02:44:00 GMT  
		Size: 7.2 MB (7194403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be339ca44883b1990e52771487402163d398a279755a501fdd8891ec71cf09d0`  
		Last Modified: Tue, 10 Oct 2017 02:43:55 GMT  
		Size: 2.3 KB (2258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce35cd9f9b5b917868095b3b074dd23d18e0e266f3ee68ff95e2c61467299812`  
		Last Modified: Tue, 10 Oct 2017 02:43:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4fe32a0a00d916ed4d632aae71d35d9d0baa5e5910d6bd179a24071c35bedb0`  
		Last Modified: Tue, 10 Oct 2017 02:43:55 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77408ca9e94eb4bfeb346ab10c602857525802c2279e7c6995fcdbc90269444a`  
		Last Modified: Fri, 13 Oct 2017 23:41:26 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db03407a1aba1c0a89dffe960394aae639885702e3faa65271b918c36c7905cd`  
		Last Modified: Fri, 13 Oct 2017 23:41:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:bab9b6f134a1f774b0dea0f79a92cbd97f9dbce779be1da0ffa2132a38eae878
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.4 MB (58432280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e60d9451429294f26ec13665db84e51574d4cfb1e02353e84cc193deee47d8f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:48 GMT
ADD file:ff9945b48b1ac236dcec24eb9dfaf52b7c151a3b11c8502391f0866dfb4e3ac3 in / 
# Mon, 09 Oct 2017 21:44:48 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:18:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:18:11 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 00:18:11 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:18:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 00:18:58 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:18:58 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 00:18:58 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:18:59 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 00:18:59 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 00:18:59 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 00:18:59 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 00:19:26 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:19:26 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 00:19:27 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 00:19:28 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 00:19:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 00:19:30 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 00:19:30 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:19:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 00:19:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:19:32 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 00:19:33 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:836d5b6056a9815be79c76480a90299267f60201bd1e3396817003e6c14819cc`  
		Last Modified: Mon, 09 Oct 2017 21:50:56 GMT  
		Size: 21.2 MB (21166251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb896fba83bd09a35c68457554b35289860c23c46f27a8c3ef42f13146ebba1`  
		Last Modified: Tue, 10 Oct 2017 00:20:01 GMT  
		Size: 4.2 MB (4231979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61827a16c114b9741d761aa4c60a972ffe1e0b60147794e86b05653d67822e91`  
		Last Modified: Tue, 10 Oct 2017 00:20:00 GMT  
		Size: 4.1 KB (4079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:877cd9511def30e56a5ce354e145e8a2b1a93daaae7eaaa42dc4219838aa1743`  
		Last Modified: Tue, 10 Oct 2017 00:20:00 GMT  
		Size: 942.8 KB (942752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea9e378899e98c99e93ae2d0874bd5d89e24134bd14a19c285bdf39a0a42ade`  
		Last Modified: Tue, 10 Oct 2017 00:20:05 GMT  
		Size: 25.2 MB (25170810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbc82a29314b16531aa2172ac523ba535e3678f85efdd699164fbb0241ab8b62`  
		Last Modified: Tue, 10 Oct 2017 00:20:01 GMT  
		Size: 6.9 MB (6909811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58c44a3d016cf9de95021782180a42d3660e20fc7d8e92a7fe5ce9ede7928ca2`  
		Last Modified: Tue, 10 Oct 2017 00:19:59 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8abfdcdd98b40291ad91791bea09bf277e75c3669c6607c7891b09130101bfa3`  
		Last Modified: Tue, 10 Oct 2017 00:19:58 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a72811da4bf8ca8a2d06cdc182aa54116bb12133e8d82ef2b018a8de29ed74`  
		Last Modified: Tue, 10 Oct 2017 00:19:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d85bf4fc0617472a84b0aa86f36164826f7a34ec4239d845d29676b3b22164`  
		Last Modified: Tue, 10 Oct 2017 00:19:58 GMT  
		Size: 3.9 KB (3946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d379089da98fec4c83792f8f2ebcd33826a381d3523c9e2eda5dcb91e322aa9`  
		Last Modified: Tue, 10 Oct 2017 00:19:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:dac7be86daf31c3661486ada0ef51cb7d235ecc79940fd1c9d5f20f6c059dc3f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55689542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc96e12c3b37655144b49e7c852dd7930d17fa9d3ba82f6cedceeab691d589c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:08:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:08:15 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 00:08:16 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:08:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 00:09:07 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:09:07 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 00:09:08 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:09:08 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 00:09:08 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 00:09:08 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 00:09:09 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 00:09:31 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:09:31 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 00:09:32 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 00:09:33 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 00:09:34 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 00:09:36 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 00:09:36 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:09:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 00:09:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:09:39 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 00:09:39 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:59e81a3fde58ec8d4b8f2f58b98ef2f4d951d37dd9b99b016fd294a8e07d7796`  
		Last Modified: Mon, 09 Oct 2017 21:52:49 GMT  
		Size: 19.3 MB (19277135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb84cf14a797e0c36a5062e5815b71c4fd0093413f105b27624939375150f03b`  
		Last Modified: Tue, 10 Oct 2017 00:10:13 GMT  
		Size: 3.9 MB (3869005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cce9319434844ff1c14610356c4336192046612fdff57f5c8678595702002c`  
		Last Modified: Tue, 10 Oct 2017 00:10:11 GMT  
		Size: 4.1 KB (4080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5463321259d892fda42d7201a40fbc05a78196e4895d7b17e06c85ecd091e62b`  
		Last Modified: Tue, 10 Oct 2017 00:10:12 GMT  
		Size: 926.5 KB (926471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bca1a117250e4e46e6d6aea3a4770f8119d72d505036090ee102abd9705e9b`  
		Last Modified: Tue, 10 Oct 2017 00:10:17 GMT  
		Size: 24.8 MB (24785804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab9316ca3e99e9664fe5eb97360822a9f8191a29c3e5b7a7966b6254b889d7a`  
		Last Modified: Tue, 10 Oct 2017 00:10:15 GMT  
		Size: 6.8 MB (6820453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f593867a4cdb0f406669620054471236973b620f178316670b74fc83fb1359`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a81744440a17e6df84509c55d5e0dae88230c113b348b511037cd38796c68d1`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc4ed0a5303f5e5db5f73224fa321f58305866f346c7d59238dcbeca1e1b35f`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690fb2e5911d59600356c772de869979c0a9c4ebd8a259ca374efb06382a56bf`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 3.9 KB (3943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0994a01c76d5feb217978c6cb5e96037b856c0fe96c98715f4ae4367886c9af3`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:45c554961f9e86443c49ca22ef23a2feb4210c4dd37ef7d3eccca8c08fef0564
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57278278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af95f58e916cbe958e100d817f9b7d9fd161a687c1e0df3238f444778df152a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 04:57:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 04:57:04 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 04:57:05 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 04:57:37 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 04:58:35 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 04:58:36 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 04:58:37 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 04:58:37 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 04:58:38 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 04:58:39 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 04:58:39 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 05:00:22 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:00:23 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 05:00:25 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 05:00:26 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 05:00:28 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 05:00:31 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 05:00:32 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 05:00:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 05:00:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 05:00:36 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 05:00:37 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e907afd6e25615a4d3eb554d930cef57b87e79ec82413889c2eac38beb4eb8f7`  
		Last Modified: Mon, 09 Oct 2017 22:03:08 GMT  
		Size: 20.3 MB (20337143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a5e6d35928560b933b85b5a3f2a8e96b4520fbb8df138b3e739e56d0c1f355`  
		Last Modified: Tue, 10 Oct 2017 05:01:18 GMT  
		Size: 4.1 MB (4073554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a862ab821b342790326492507ca5d70bfb7016bef765606193f1f7139f60c5ed`  
		Last Modified: Tue, 10 Oct 2017 05:01:14 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92799a54920b79013733790e444f13d8c65faa29c79cbdaf1bc8af85f637a233`  
		Last Modified: Tue, 10 Oct 2017 05:01:14 GMT  
		Size: 919.5 KB (919487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b119999eef1bcadabedd3a5319b03c6b83ede91ba8535059851547d3433b205`  
		Last Modified: Tue, 10 Oct 2017 05:01:19 GMT  
		Size: 25.0 MB (25042572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e62f8525a3a982a102aa37bb3313876195b15d8781cd253ed238dd2b9dff151`  
		Last Modified: Tue, 10 Oct 2017 05:01:15 GMT  
		Size: 6.9 MB (6894852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc028e70f04f6ea4365223a1cfe4e5c4384d5921acac419f3c170b148f7c7bf`  
		Last Modified: Tue, 10 Oct 2017 05:01:10 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e99faa03c2a8a272f56208c644c12b384b69dea50be6da9f6be400c14b945c`  
		Last Modified: Tue, 10 Oct 2017 05:01:12 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8fa260bcaa52d81ba20c11111f8d15bab954b17b48666724536c604220d94e`  
		Last Modified: Tue, 10 Oct 2017 05:01:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f88b9d1f075e6bf61f09cc09d798a29acd6e17f5a269c2014b4ff69b8f7834d`  
		Last Modified: Tue, 10 Oct 2017 05:01:11 GMT  
		Size: 3.9 KB (3944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2263263deeda5e4a4bcf0bada5587f1838cf344dfa3f3c8ccb1b7ccebac51324`  
		Last Modified: Tue, 10 Oct 2017 05:01:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3` - linux; 386

```console
$ docker pull rabbitmq@sha256:279ae861209906237217ab5730e10b16ecebda36773c68a5e27f02e0ce68dced
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63902861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ce639de923d82dab2f843c7eaa5fd32780cddea06530bfd4bc39003b687d2c4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:36 GMT
ADD file:6582536277127947668f7bfdc1471a4e36170915b91a4cb841e7e1bfa1de6535 in / 
# Mon, 09 Oct 2017 21:45:36 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:25:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:25:35 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 02:25:35 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:25:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 02:26:18 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:26:18 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 02:26:19 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 02:26:19 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 02:26:19 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 02:26:20 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 02:26:20 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 02:27:12 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:27:12 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 02:27:13 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 02:27:13 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 02:27:14 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 02:27:15 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 02:27:15 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:27:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 02:27:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:27:16 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 02:27:17 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:b2b52fe46b29fe5d0689f26449c2114e40f0731d4ce3eb8c3941397b74205432`  
		Last Modified: Mon, 09 Oct 2017 21:53:42 GMT  
		Size: 23.1 MB (23128678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd56a7a1b23cba5ba31ffca4c1bd92c67baada83c1cccc6a39804b4bffccfde`  
		Last Modified: Tue, 10 Oct 2017 02:27:38 GMT  
		Size: 4.8 MB (4803931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5d99e72ac84835e308ec1af65659ef2c54b73366b5284dcf72ec2ae2a8be85`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 4.1 KB (4052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bb0b0cf4cc9d3eaa2a5d66c42a5887057caa974ed019f672c76359e5c56134`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 931.6 KB (931603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93c01cd1734bd61603408f604f963f4b669d89bbd45ccc941246e0defadf8b0`  
		Last Modified: Tue, 10 Oct 2017 02:27:41 GMT  
		Size: 27.8 MB (27818777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab6c121037963c174b576775a6333c56a529233771314b4dd8b3eeb8ff17e0d`  
		Last Modified: Tue, 10 Oct 2017 02:27:38 GMT  
		Size: 7.2 MB (7209220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99a2b13764e2fa2df368b2aeb4d8a42ff3f6cb8baffb126e338f45afa13bb4d`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9cdf701464766405898032d3f1dcd5f15f40b298781b771d58d825fbb54af3`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea9f77a46c316b539d74ca676c8dd927beb201a823d9a3b8ae19bdee9fb91cc5`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8966d25965fc7636f62aefc27e4d0a14a660dee2570d53ee9e74d34f6c00bb6`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 3.9 KB (3947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e319f638428534055f8c4d559bd028e5f2206c74a42187460ade6f9d3cf99c2a`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:61082c4b7fae20fa068217d889981d8aa49aa0b9d167f1f7c32bf05838e5ab5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60387472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73994f34e02e712c22197bdb21df802db0f1dd1eaa09f047c461cc66893d79a0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:56 GMT
ADD file:7edf73437495be24244c16841b563be06c15452963f41ac940fb5e105ed96027 in / 
# Mon, 09 Oct 2017 21:45:58 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 06:53:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:53:40 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 06:53:45 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 06:56:06 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 07:01:10 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:01:13 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 07:01:15 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:01:18 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 07:01:22 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 07:01:25 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 07:01:29 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 07:04:54 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:04:58 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 07:05:09 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 07:05:13 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 07:05:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 07:05:33 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 07:05:35 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 07:05:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 07:05:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 07:05:52 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 07:05:57 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:c4860466fa1e6824151f4fa3a51ef0e9d7d3c3ba860e21d94e69988b65601260`  
		Last Modified: Mon, 09 Oct 2017 21:52:59 GMT  
		Size: 22.7 MB (22746217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8714f956af621d487bb938f0c4ee79429b72e372b6090ef06ebebcbb559daace`  
		Last Modified: Tue, 10 Oct 2017 07:06:52 GMT  
		Size: 4.4 MB (4361267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0aae6367725c08eba421b48b8f34430348bc57365851fe72accc2298bc51b8e`  
		Last Modified: Tue, 10 Oct 2017 07:06:50 GMT  
		Size: 4.1 KB (4106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:957bc408190bc6f73bb44d2b0606243d737e03780189ad1baf3c05b028493f54`  
		Last Modified: Tue, 10 Oct 2017 07:06:50 GMT  
		Size: 921.4 KB (921402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d46f79aaf675c9e2fda7e382e77ce88e43884f112038793c9e0e9d25f1a0828`  
		Last Modified: Tue, 10 Oct 2017 07:06:53 GMT  
		Size: 25.5 MB (25493330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626684a94b11097452c1b15def3c9d8802a40616032986b8b84a04d34dd1120a`  
		Last Modified: Tue, 10 Oct 2017 07:06:50 GMT  
		Size: 6.9 MB (6854550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf606bd05995800423fd3e922bd6efd3baf29c2d88b57db07c1098fe2451574`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b15efc3e31f84b775c79b2aa119d68a48e6c3d7ce14f9187e5b0dddc6f9a358`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5924fbba6050d17c40d7dd386e70e472517b4a2eec0d27ac4dbfe0023e38db6d`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e902f69d01855798e105bebdc64e30c4fbb70d1930bb2e6b6a6eca7fc671a3`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 3.9 KB (3945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f553e16e25ddf1bbbcc56cbabbebf2c26914e5f961721b0f3ca2f8e6bb8585`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3` - linux; s390x

```console
$ docker pull rabbitmq@sha256:504212d66b109ece5875bab8daa7975c941824512bc40d06ebb30f342e489d2c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60365345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06cf4e4ec173af006e19afd5ab5838e8863c57de1a854238b09dea34cd740e94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:35 GMT
ADD file:ae4aaa6affe22f36ab5478771d5c84917f72de7a8dac16345a035709a1a5edf4 in / 
# Mon, 09 Oct 2017 21:44:36 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:45:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:45:08 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Mon, 09 Oct 2017 23:45:08 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:45:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:46:10 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:46:10 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 09 Oct 2017 23:46:11 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 23:46:11 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 09 Oct 2017 23:46:11 GMT
ENV RABBITMQ_VERSION=3.6.12
# Mon, 09 Oct 2017 23:46:11 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Mon, 09 Oct 2017 23:46:11 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Thu, 12 Oct 2017 18:28:22 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 12 Oct 2017 18:28:22 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 12 Oct 2017 18:28:23 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 12 Oct 2017 18:28:23 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 12 Oct 2017 18:28:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 12 Oct 2017 18:28:25 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 12 Oct 2017 18:28:25 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Thu, 12 Oct 2017 18:28:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 12 Oct 2017 18:28:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 18:28:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 12 Oct 2017 18:28:26 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:671716cc49517eef5f430c695ce344d63e390cb65f58d30939f2ba615c953686`  
		Last Modified: Mon, 09 Oct 2017 21:49:09 GMT  
		Size: 22.3 MB (22339951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7bcde3ab4d109ca30e7e6be1a5401b63c4473f9291ca2356407b66a5954522`  
		Last Modified: Thu, 12 Oct 2017 18:28:47 GMT  
		Size: 4.5 MB (4530291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d7d4a53e870f537ea989232055702c6711b51f7e2dfb049e984c8c90dfd1ff`  
		Last Modified: Thu, 12 Oct 2017 18:28:45 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0281f6547f5cfef34cf6e59c1935efd9423b30c49a97caa55b3299e965d3504`  
		Last Modified: Thu, 12 Oct 2017 18:28:45 GMT  
		Size: 938.1 KB (938055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fafa52e7299e0f68764a55b921d99192a861054cd9a421fce048ffa6787151ce`  
		Last Modified: Thu, 12 Oct 2017 18:28:49 GMT  
		Size: 25.6 MB (25619471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb1eb7de62ab431186ef3d571bec4f6364ebab824f5d662b4d0c3c36e36020b`  
		Last Modified: Thu, 12 Oct 2017 18:28:46 GMT  
		Size: 6.9 MB (6926912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a40bc6f8cdb17c86c0d43fe9b56c730e09f20d6b1fa12fa0f6f0eaa27ec5b50`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0462e482b612a854287aa487e8a3121c6b273608871a405c72bd80c0192d2818`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f7cbcbc2d86d2a53a53aee388820237f920bb3320490596a821948322a7317`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1251546aac265bb12405e223deb1e938190b57d03c8903038f920d9ae9c9bb62`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 3.9 KB (3942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3199db4d2641323733c96fd746db50df2d357ef80d6a38c8dbe5e2baebefbdb6`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6`

```console
$ docker pull rabbitmq@sha256:23c16060375b7e91eda8a42e04869d3526ecbf6b01316e0170f76fc767a0d3ab
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

### `rabbitmq:3.6` - linux; amd64

```console
$ docker pull rabbitmq@sha256:b99e238fa99bcd7ffcfd89a536fdf33bbd27e206cea118246874e3792ebfc2bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62852177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e186865bff877f181c4a4b4ffdb7235e91c0c988bdc0c926d1b68e5d8c81e45`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:42 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Mon, 09 Oct 2017 21:33:43 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:41:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:41:43 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 02:41:43 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:42:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 02:42:40 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:42:41 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 02:42:41 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 02:42:41 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 02:42:41 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 02:42:41 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 02:42:42 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 02:43:16 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:43:16 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 02:43:17 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 02:43:17 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 02:43:18 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 02:43:19 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 13 Oct 2017 23:40:43 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Fri, 13 Oct 2017 23:40:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 23:40:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 23:40:45 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 13 Oct 2017 23:40:45 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e65f0b00e4cfb1535d0f4e7a63707172ae63483fb33140d777614f199afcb36`  
		Last Modified: Tue, 10 Oct 2017 02:43:59 GMT  
		Size: 4.5 MB (4498726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2bd803179890909fcae186044c0e6ca1bc1d34e5fc05ef1ccea823e7be97540`  
		Last Modified: Tue, 10 Oct 2017 02:43:57 GMT  
		Size: 4.1 KB (4069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b05ca8302833edf783c50f03cd7ba0b8e12bc872b053eda3e3ae7e1f17e2b4b`  
		Last Modified: Tue, 10 Oct 2017 02:43:58 GMT  
		Size: 952.1 KB (952058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bb5a4bbcce5a040eb83057f9e93d17663bb123f4e98168457444497f7d17b70`  
		Last Modified: Tue, 10 Oct 2017 02:44:03 GMT  
		Size: 27.7 MB (27703883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf840d8999f6fe46a162974c82378c38b3cf3dcccbbaff848c0fb199988aebe0`  
		Last Modified: Tue, 10 Oct 2017 02:44:00 GMT  
		Size: 7.2 MB (7194403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be339ca44883b1990e52771487402163d398a279755a501fdd8891ec71cf09d0`  
		Last Modified: Tue, 10 Oct 2017 02:43:55 GMT  
		Size: 2.3 KB (2258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce35cd9f9b5b917868095b3b074dd23d18e0e266f3ee68ff95e2c61467299812`  
		Last Modified: Tue, 10 Oct 2017 02:43:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4fe32a0a00d916ed4d632aae71d35d9d0baa5e5910d6bd179a24071c35bedb0`  
		Last Modified: Tue, 10 Oct 2017 02:43:55 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77408ca9e94eb4bfeb346ab10c602857525802c2279e7c6995fcdbc90269444a`  
		Last Modified: Fri, 13 Oct 2017 23:41:26 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db03407a1aba1c0a89dffe960394aae639885702e3faa65271b918c36c7905cd`  
		Last Modified: Fri, 13 Oct 2017 23:41:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:bab9b6f134a1f774b0dea0f79a92cbd97f9dbce779be1da0ffa2132a38eae878
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.4 MB (58432280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e60d9451429294f26ec13665db84e51574d4cfb1e02353e84cc193deee47d8f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:48 GMT
ADD file:ff9945b48b1ac236dcec24eb9dfaf52b7c151a3b11c8502391f0866dfb4e3ac3 in / 
# Mon, 09 Oct 2017 21:44:48 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:18:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:18:11 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 00:18:11 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:18:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 00:18:58 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:18:58 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 00:18:58 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:18:59 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 00:18:59 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 00:18:59 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 00:18:59 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 00:19:26 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:19:26 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 00:19:27 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 00:19:28 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 00:19:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 00:19:30 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 00:19:30 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:19:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 00:19:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:19:32 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 00:19:33 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:836d5b6056a9815be79c76480a90299267f60201bd1e3396817003e6c14819cc`  
		Last Modified: Mon, 09 Oct 2017 21:50:56 GMT  
		Size: 21.2 MB (21166251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb896fba83bd09a35c68457554b35289860c23c46f27a8c3ef42f13146ebba1`  
		Last Modified: Tue, 10 Oct 2017 00:20:01 GMT  
		Size: 4.2 MB (4231979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61827a16c114b9741d761aa4c60a972ffe1e0b60147794e86b05653d67822e91`  
		Last Modified: Tue, 10 Oct 2017 00:20:00 GMT  
		Size: 4.1 KB (4079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:877cd9511def30e56a5ce354e145e8a2b1a93daaae7eaaa42dc4219838aa1743`  
		Last Modified: Tue, 10 Oct 2017 00:20:00 GMT  
		Size: 942.8 KB (942752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea9e378899e98c99e93ae2d0874bd5d89e24134bd14a19c285bdf39a0a42ade`  
		Last Modified: Tue, 10 Oct 2017 00:20:05 GMT  
		Size: 25.2 MB (25170810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbc82a29314b16531aa2172ac523ba535e3678f85efdd699164fbb0241ab8b62`  
		Last Modified: Tue, 10 Oct 2017 00:20:01 GMT  
		Size: 6.9 MB (6909811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58c44a3d016cf9de95021782180a42d3660e20fc7d8e92a7fe5ce9ede7928ca2`  
		Last Modified: Tue, 10 Oct 2017 00:19:59 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8abfdcdd98b40291ad91791bea09bf277e75c3669c6607c7891b09130101bfa3`  
		Last Modified: Tue, 10 Oct 2017 00:19:58 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a72811da4bf8ca8a2d06cdc182aa54116bb12133e8d82ef2b018a8de29ed74`  
		Last Modified: Tue, 10 Oct 2017 00:19:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d85bf4fc0617472a84b0aa86f36164826f7a34ec4239d845d29676b3b22164`  
		Last Modified: Tue, 10 Oct 2017 00:19:58 GMT  
		Size: 3.9 KB (3946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d379089da98fec4c83792f8f2ebcd33826a381d3523c9e2eda5dcb91e322aa9`  
		Last Modified: Tue, 10 Oct 2017 00:19:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:dac7be86daf31c3661486ada0ef51cb7d235ecc79940fd1c9d5f20f6c059dc3f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55689542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc96e12c3b37655144b49e7c852dd7930d17fa9d3ba82f6cedceeab691d589c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:08:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:08:15 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 00:08:16 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:08:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 00:09:07 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:09:07 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 00:09:08 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:09:08 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 00:09:08 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 00:09:08 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 00:09:09 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 00:09:31 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:09:31 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 00:09:32 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 00:09:33 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 00:09:34 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 00:09:36 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 00:09:36 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:09:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 00:09:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:09:39 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 00:09:39 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:59e81a3fde58ec8d4b8f2f58b98ef2f4d951d37dd9b99b016fd294a8e07d7796`  
		Last Modified: Mon, 09 Oct 2017 21:52:49 GMT  
		Size: 19.3 MB (19277135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb84cf14a797e0c36a5062e5815b71c4fd0093413f105b27624939375150f03b`  
		Last Modified: Tue, 10 Oct 2017 00:10:13 GMT  
		Size: 3.9 MB (3869005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cce9319434844ff1c14610356c4336192046612fdff57f5c8678595702002c`  
		Last Modified: Tue, 10 Oct 2017 00:10:11 GMT  
		Size: 4.1 KB (4080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5463321259d892fda42d7201a40fbc05a78196e4895d7b17e06c85ecd091e62b`  
		Last Modified: Tue, 10 Oct 2017 00:10:12 GMT  
		Size: 926.5 KB (926471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bca1a117250e4e46e6d6aea3a4770f8119d72d505036090ee102abd9705e9b`  
		Last Modified: Tue, 10 Oct 2017 00:10:17 GMT  
		Size: 24.8 MB (24785804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab9316ca3e99e9664fe5eb97360822a9f8191a29c3e5b7a7966b6254b889d7a`  
		Last Modified: Tue, 10 Oct 2017 00:10:15 GMT  
		Size: 6.8 MB (6820453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f593867a4cdb0f406669620054471236973b620f178316670b74fc83fb1359`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a81744440a17e6df84509c55d5e0dae88230c113b348b511037cd38796c68d1`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc4ed0a5303f5e5db5f73224fa321f58305866f346c7d59238dcbeca1e1b35f`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690fb2e5911d59600356c772de869979c0a9c4ebd8a259ca374efb06382a56bf`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 3.9 KB (3943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0994a01c76d5feb217978c6cb5e96037b856c0fe96c98715f4ae4367886c9af3`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:45c554961f9e86443c49ca22ef23a2feb4210c4dd37ef7d3eccca8c08fef0564
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57278278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af95f58e916cbe958e100d817f9b7d9fd161a687c1e0df3238f444778df152a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 04:57:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 04:57:04 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 04:57:05 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 04:57:37 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 04:58:35 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 04:58:36 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 04:58:37 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 04:58:37 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 04:58:38 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 04:58:39 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 04:58:39 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 05:00:22 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:00:23 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 05:00:25 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 05:00:26 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 05:00:28 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 05:00:31 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 05:00:32 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 05:00:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 05:00:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 05:00:36 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 05:00:37 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e907afd6e25615a4d3eb554d930cef57b87e79ec82413889c2eac38beb4eb8f7`  
		Last Modified: Mon, 09 Oct 2017 22:03:08 GMT  
		Size: 20.3 MB (20337143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a5e6d35928560b933b85b5a3f2a8e96b4520fbb8df138b3e739e56d0c1f355`  
		Last Modified: Tue, 10 Oct 2017 05:01:18 GMT  
		Size: 4.1 MB (4073554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a862ab821b342790326492507ca5d70bfb7016bef765606193f1f7139f60c5ed`  
		Last Modified: Tue, 10 Oct 2017 05:01:14 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92799a54920b79013733790e444f13d8c65faa29c79cbdaf1bc8af85f637a233`  
		Last Modified: Tue, 10 Oct 2017 05:01:14 GMT  
		Size: 919.5 KB (919487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b119999eef1bcadabedd3a5319b03c6b83ede91ba8535059851547d3433b205`  
		Last Modified: Tue, 10 Oct 2017 05:01:19 GMT  
		Size: 25.0 MB (25042572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e62f8525a3a982a102aa37bb3313876195b15d8781cd253ed238dd2b9dff151`  
		Last Modified: Tue, 10 Oct 2017 05:01:15 GMT  
		Size: 6.9 MB (6894852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc028e70f04f6ea4365223a1cfe4e5c4384d5921acac419f3c170b148f7c7bf`  
		Last Modified: Tue, 10 Oct 2017 05:01:10 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e99faa03c2a8a272f56208c644c12b384b69dea50be6da9f6be400c14b945c`  
		Last Modified: Tue, 10 Oct 2017 05:01:12 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8fa260bcaa52d81ba20c11111f8d15bab954b17b48666724536c604220d94e`  
		Last Modified: Tue, 10 Oct 2017 05:01:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f88b9d1f075e6bf61f09cc09d798a29acd6e17f5a269c2014b4ff69b8f7834d`  
		Last Modified: Tue, 10 Oct 2017 05:01:11 GMT  
		Size: 3.9 KB (3944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2263263deeda5e4a4bcf0bada5587f1838cf344dfa3f3c8ccb1b7ccebac51324`  
		Last Modified: Tue, 10 Oct 2017 05:01:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; 386

```console
$ docker pull rabbitmq@sha256:279ae861209906237217ab5730e10b16ecebda36773c68a5e27f02e0ce68dced
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63902861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ce639de923d82dab2f843c7eaa5fd32780cddea06530bfd4bc39003b687d2c4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:36 GMT
ADD file:6582536277127947668f7bfdc1471a4e36170915b91a4cb841e7e1bfa1de6535 in / 
# Mon, 09 Oct 2017 21:45:36 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:25:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:25:35 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 02:25:35 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:25:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 02:26:18 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:26:18 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 02:26:19 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 02:26:19 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 02:26:19 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 02:26:20 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 02:26:20 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 02:27:12 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:27:12 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 02:27:13 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 02:27:13 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 02:27:14 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 02:27:15 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 02:27:15 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:27:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 02:27:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:27:16 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 02:27:17 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:b2b52fe46b29fe5d0689f26449c2114e40f0731d4ce3eb8c3941397b74205432`  
		Last Modified: Mon, 09 Oct 2017 21:53:42 GMT  
		Size: 23.1 MB (23128678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd56a7a1b23cba5ba31ffca4c1bd92c67baada83c1cccc6a39804b4bffccfde`  
		Last Modified: Tue, 10 Oct 2017 02:27:38 GMT  
		Size: 4.8 MB (4803931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5d99e72ac84835e308ec1af65659ef2c54b73366b5284dcf72ec2ae2a8be85`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 4.1 KB (4052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bb0b0cf4cc9d3eaa2a5d66c42a5887057caa974ed019f672c76359e5c56134`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 931.6 KB (931603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93c01cd1734bd61603408f604f963f4b669d89bbd45ccc941246e0defadf8b0`  
		Last Modified: Tue, 10 Oct 2017 02:27:41 GMT  
		Size: 27.8 MB (27818777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab6c121037963c174b576775a6333c56a529233771314b4dd8b3eeb8ff17e0d`  
		Last Modified: Tue, 10 Oct 2017 02:27:38 GMT  
		Size: 7.2 MB (7209220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99a2b13764e2fa2df368b2aeb4d8a42ff3f6cb8baffb126e338f45afa13bb4d`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9cdf701464766405898032d3f1dcd5f15f40b298781b771d58d825fbb54af3`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea9f77a46c316b539d74ca676c8dd927beb201a823d9a3b8ae19bdee9fb91cc5`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8966d25965fc7636f62aefc27e4d0a14a660dee2570d53ee9e74d34f6c00bb6`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 3.9 KB (3947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e319f638428534055f8c4d559bd028e5f2206c74a42187460ade6f9d3cf99c2a`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:61082c4b7fae20fa068217d889981d8aa49aa0b9d167f1f7c32bf05838e5ab5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60387472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73994f34e02e712c22197bdb21df802db0f1dd1eaa09f047c461cc66893d79a0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:56 GMT
ADD file:7edf73437495be24244c16841b563be06c15452963f41ac940fb5e105ed96027 in / 
# Mon, 09 Oct 2017 21:45:58 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 06:53:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:53:40 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 06:53:45 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 06:56:06 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 07:01:10 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:01:13 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 07:01:15 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:01:18 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 07:01:22 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 07:01:25 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 07:01:29 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 07:04:54 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:04:58 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 07:05:09 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 07:05:13 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 07:05:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 07:05:33 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 07:05:35 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 07:05:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 07:05:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 07:05:52 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 07:05:57 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:c4860466fa1e6824151f4fa3a51ef0e9d7d3c3ba860e21d94e69988b65601260`  
		Last Modified: Mon, 09 Oct 2017 21:52:59 GMT  
		Size: 22.7 MB (22746217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8714f956af621d487bb938f0c4ee79429b72e372b6090ef06ebebcbb559daace`  
		Last Modified: Tue, 10 Oct 2017 07:06:52 GMT  
		Size: 4.4 MB (4361267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0aae6367725c08eba421b48b8f34430348bc57365851fe72accc2298bc51b8e`  
		Last Modified: Tue, 10 Oct 2017 07:06:50 GMT  
		Size: 4.1 KB (4106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:957bc408190bc6f73bb44d2b0606243d737e03780189ad1baf3c05b028493f54`  
		Last Modified: Tue, 10 Oct 2017 07:06:50 GMT  
		Size: 921.4 KB (921402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d46f79aaf675c9e2fda7e382e77ce88e43884f112038793c9e0e9d25f1a0828`  
		Last Modified: Tue, 10 Oct 2017 07:06:53 GMT  
		Size: 25.5 MB (25493330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626684a94b11097452c1b15def3c9d8802a40616032986b8b84a04d34dd1120a`  
		Last Modified: Tue, 10 Oct 2017 07:06:50 GMT  
		Size: 6.9 MB (6854550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf606bd05995800423fd3e922bd6efd3baf29c2d88b57db07c1098fe2451574`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b15efc3e31f84b775c79b2aa119d68a48e6c3d7ce14f9187e5b0dddc6f9a358`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5924fbba6050d17c40d7dd386e70e472517b4a2eec0d27ac4dbfe0023e38db6d`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e902f69d01855798e105bebdc64e30c4fbb70d1930bb2e6b6a6eca7fc671a3`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 3.9 KB (3945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f553e16e25ddf1bbbcc56cbabbebf2c26914e5f961721b0f3ca2f8e6bb8585`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; s390x

```console
$ docker pull rabbitmq@sha256:504212d66b109ece5875bab8daa7975c941824512bc40d06ebb30f342e489d2c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60365345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06cf4e4ec173af006e19afd5ab5838e8863c57de1a854238b09dea34cd740e94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:35 GMT
ADD file:ae4aaa6affe22f36ab5478771d5c84917f72de7a8dac16345a035709a1a5edf4 in / 
# Mon, 09 Oct 2017 21:44:36 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:45:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:45:08 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Mon, 09 Oct 2017 23:45:08 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:45:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:46:10 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:46:10 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 09 Oct 2017 23:46:11 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 23:46:11 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 09 Oct 2017 23:46:11 GMT
ENV RABBITMQ_VERSION=3.6.12
# Mon, 09 Oct 2017 23:46:11 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Mon, 09 Oct 2017 23:46:11 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Thu, 12 Oct 2017 18:28:22 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 12 Oct 2017 18:28:22 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 12 Oct 2017 18:28:23 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 12 Oct 2017 18:28:23 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 12 Oct 2017 18:28:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 12 Oct 2017 18:28:25 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 12 Oct 2017 18:28:25 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Thu, 12 Oct 2017 18:28:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 12 Oct 2017 18:28:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 18:28:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 12 Oct 2017 18:28:26 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:671716cc49517eef5f430c695ce344d63e390cb65f58d30939f2ba615c953686`  
		Last Modified: Mon, 09 Oct 2017 21:49:09 GMT  
		Size: 22.3 MB (22339951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7bcde3ab4d109ca30e7e6be1a5401b63c4473f9291ca2356407b66a5954522`  
		Last Modified: Thu, 12 Oct 2017 18:28:47 GMT  
		Size: 4.5 MB (4530291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d7d4a53e870f537ea989232055702c6711b51f7e2dfb049e984c8c90dfd1ff`  
		Last Modified: Thu, 12 Oct 2017 18:28:45 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0281f6547f5cfef34cf6e59c1935efd9423b30c49a97caa55b3299e965d3504`  
		Last Modified: Thu, 12 Oct 2017 18:28:45 GMT  
		Size: 938.1 KB (938055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fafa52e7299e0f68764a55b921d99192a861054cd9a421fce048ffa6787151ce`  
		Last Modified: Thu, 12 Oct 2017 18:28:49 GMT  
		Size: 25.6 MB (25619471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb1eb7de62ab431186ef3d571bec4f6364ebab824f5d662b4d0c3c36e36020b`  
		Last Modified: Thu, 12 Oct 2017 18:28:46 GMT  
		Size: 6.9 MB (6926912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a40bc6f8cdb17c86c0d43fe9b56c730e09f20d6b1fa12fa0f6f0eaa27ec5b50`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0462e482b612a854287aa487e8a3121c6b273608871a405c72bd80c0192d2818`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f7cbcbc2d86d2a53a53aee388820237f920bb3320490596a821948322a7317`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1251546aac265bb12405e223deb1e938190b57d03c8903038f920d9ae9c9bb62`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 3.9 KB (3942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3199db4d2641323733c96fd746db50df2d357ef80d6a38c8dbe5e2baebefbdb6`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.12`

```console
$ docker pull rabbitmq@sha256:23c16060375b7e91eda8a42e04869d3526ecbf6b01316e0170f76fc767a0d3ab
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

### `rabbitmq:3.6.12` - linux; amd64

```console
$ docker pull rabbitmq@sha256:b99e238fa99bcd7ffcfd89a536fdf33bbd27e206cea118246874e3792ebfc2bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62852177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e186865bff877f181c4a4b4ffdb7235e91c0c988bdc0c926d1b68e5d8c81e45`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:42 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Mon, 09 Oct 2017 21:33:43 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:41:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:41:43 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 02:41:43 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:42:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 02:42:40 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:42:41 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 02:42:41 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 02:42:41 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 02:42:41 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 02:42:41 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 02:42:42 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 02:43:16 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:43:16 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 02:43:17 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 02:43:17 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 02:43:18 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 02:43:19 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 13 Oct 2017 23:40:43 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Fri, 13 Oct 2017 23:40:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 23:40:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 23:40:45 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 13 Oct 2017 23:40:45 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e65f0b00e4cfb1535d0f4e7a63707172ae63483fb33140d777614f199afcb36`  
		Last Modified: Tue, 10 Oct 2017 02:43:59 GMT  
		Size: 4.5 MB (4498726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2bd803179890909fcae186044c0e6ca1bc1d34e5fc05ef1ccea823e7be97540`  
		Last Modified: Tue, 10 Oct 2017 02:43:57 GMT  
		Size: 4.1 KB (4069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b05ca8302833edf783c50f03cd7ba0b8e12bc872b053eda3e3ae7e1f17e2b4b`  
		Last Modified: Tue, 10 Oct 2017 02:43:58 GMT  
		Size: 952.1 KB (952058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bb5a4bbcce5a040eb83057f9e93d17663bb123f4e98168457444497f7d17b70`  
		Last Modified: Tue, 10 Oct 2017 02:44:03 GMT  
		Size: 27.7 MB (27703883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf840d8999f6fe46a162974c82378c38b3cf3dcccbbaff848c0fb199988aebe0`  
		Last Modified: Tue, 10 Oct 2017 02:44:00 GMT  
		Size: 7.2 MB (7194403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be339ca44883b1990e52771487402163d398a279755a501fdd8891ec71cf09d0`  
		Last Modified: Tue, 10 Oct 2017 02:43:55 GMT  
		Size: 2.3 KB (2258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce35cd9f9b5b917868095b3b074dd23d18e0e266f3ee68ff95e2c61467299812`  
		Last Modified: Tue, 10 Oct 2017 02:43:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4fe32a0a00d916ed4d632aae71d35d9d0baa5e5910d6bd179a24071c35bedb0`  
		Last Modified: Tue, 10 Oct 2017 02:43:55 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77408ca9e94eb4bfeb346ab10c602857525802c2279e7c6995fcdbc90269444a`  
		Last Modified: Fri, 13 Oct 2017 23:41:26 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db03407a1aba1c0a89dffe960394aae639885702e3faa65271b918c36c7905cd`  
		Last Modified: Fri, 13 Oct 2017 23:41:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.12` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:bab9b6f134a1f774b0dea0f79a92cbd97f9dbce779be1da0ffa2132a38eae878
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.4 MB (58432280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e60d9451429294f26ec13665db84e51574d4cfb1e02353e84cc193deee47d8f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:48 GMT
ADD file:ff9945b48b1ac236dcec24eb9dfaf52b7c151a3b11c8502391f0866dfb4e3ac3 in / 
# Mon, 09 Oct 2017 21:44:48 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:18:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:18:11 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 00:18:11 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:18:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 00:18:58 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:18:58 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 00:18:58 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:18:59 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 00:18:59 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 00:18:59 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 00:18:59 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 00:19:26 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:19:26 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 00:19:27 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 00:19:28 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 00:19:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 00:19:30 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 00:19:30 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:19:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 00:19:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:19:32 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 00:19:33 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:836d5b6056a9815be79c76480a90299267f60201bd1e3396817003e6c14819cc`  
		Last Modified: Mon, 09 Oct 2017 21:50:56 GMT  
		Size: 21.2 MB (21166251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb896fba83bd09a35c68457554b35289860c23c46f27a8c3ef42f13146ebba1`  
		Last Modified: Tue, 10 Oct 2017 00:20:01 GMT  
		Size: 4.2 MB (4231979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61827a16c114b9741d761aa4c60a972ffe1e0b60147794e86b05653d67822e91`  
		Last Modified: Tue, 10 Oct 2017 00:20:00 GMT  
		Size: 4.1 KB (4079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:877cd9511def30e56a5ce354e145e8a2b1a93daaae7eaaa42dc4219838aa1743`  
		Last Modified: Tue, 10 Oct 2017 00:20:00 GMT  
		Size: 942.8 KB (942752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea9e378899e98c99e93ae2d0874bd5d89e24134bd14a19c285bdf39a0a42ade`  
		Last Modified: Tue, 10 Oct 2017 00:20:05 GMT  
		Size: 25.2 MB (25170810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbc82a29314b16531aa2172ac523ba535e3678f85efdd699164fbb0241ab8b62`  
		Last Modified: Tue, 10 Oct 2017 00:20:01 GMT  
		Size: 6.9 MB (6909811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58c44a3d016cf9de95021782180a42d3660e20fc7d8e92a7fe5ce9ede7928ca2`  
		Last Modified: Tue, 10 Oct 2017 00:19:59 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8abfdcdd98b40291ad91791bea09bf277e75c3669c6607c7891b09130101bfa3`  
		Last Modified: Tue, 10 Oct 2017 00:19:58 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a72811da4bf8ca8a2d06cdc182aa54116bb12133e8d82ef2b018a8de29ed74`  
		Last Modified: Tue, 10 Oct 2017 00:19:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d85bf4fc0617472a84b0aa86f36164826f7a34ec4239d845d29676b3b22164`  
		Last Modified: Tue, 10 Oct 2017 00:19:58 GMT  
		Size: 3.9 KB (3946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d379089da98fec4c83792f8f2ebcd33826a381d3523c9e2eda5dcb91e322aa9`  
		Last Modified: Tue, 10 Oct 2017 00:19:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.12` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:dac7be86daf31c3661486ada0ef51cb7d235ecc79940fd1c9d5f20f6c059dc3f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55689542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc96e12c3b37655144b49e7c852dd7930d17fa9d3ba82f6cedceeab691d589c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:08:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:08:15 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 00:08:16 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:08:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 00:09:07 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:09:07 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 00:09:08 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:09:08 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 00:09:08 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 00:09:08 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 00:09:09 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 00:09:31 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:09:31 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 00:09:32 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 00:09:33 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 00:09:34 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 00:09:36 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 00:09:36 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:09:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 00:09:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:09:39 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 00:09:39 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:59e81a3fde58ec8d4b8f2f58b98ef2f4d951d37dd9b99b016fd294a8e07d7796`  
		Last Modified: Mon, 09 Oct 2017 21:52:49 GMT  
		Size: 19.3 MB (19277135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb84cf14a797e0c36a5062e5815b71c4fd0093413f105b27624939375150f03b`  
		Last Modified: Tue, 10 Oct 2017 00:10:13 GMT  
		Size: 3.9 MB (3869005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cce9319434844ff1c14610356c4336192046612fdff57f5c8678595702002c`  
		Last Modified: Tue, 10 Oct 2017 00:10:11 GMT  
		Size: 4.1 KB (4080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5463321259d892fda42d7201a40fbc05a78196e4895d7b17e06c85ecd091e62b`  
		Last Modified: Tue, 10 Oct 2017 00:10:12 GMT  
		Size: 926.5 KB (926471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bca1a117250e4e46e6d6aea3a4770f8119d72d505036090ee102abd9705e9b`  
		Last Modified: Tue, 10 Oct 2017 00:10:17 GMT  
		Size: 24.8 MB (24785804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab9316ca3e99e9664fe5eb97360822a9f8191a29c3e5b7a7966b6254b889d7a`  
		Last Modified: Tue, 10 Oct 2017 00:10:15 GMT  
		Size: 6.8 MB (6820453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f593867a4cdb0f406669620054471236973b620f178316670b74fc83fb1359`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a81744440a17e6df84509c55d5e0dae88230c113b348b511037cd38796c68d1`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc4ed0a5303f5e5db5f73224fa321f58305866f346c7d59238dcbeca1e1b35f`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690fb2e5911d59600356c772de869979c0a9c4ebd8a259ca374efb06382a56bf`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 3.9 KB (3943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0994a01c76d5feb217978c6cb5e96037b856c0fe96c98715f4ae4367886c9af3`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.12` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:45c554961f9e86443c49ca22ef23a2feb4210c4dd37ef7d3eccca8c08fef0564
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57278278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af95f58e916cbe958e100d817f9b7d9fd161a687c1e0df3238f444778df152a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 04:57:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 04:57:04 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 04:57:05 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 04:57:37 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 04:58:35 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 04:58:36 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 04:58:37 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 04:58:37 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 04:58:38 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 04:58:39 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 04:58:39 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 05:00:22 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:00:23 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 05:00:25 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 05:00:26 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 05:00:28 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 05:00:31 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 05:00:32 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 05:00:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 05:00:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 05:00:36 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 05:00:37 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e907afd6e25615a4d3eb554d930cef57b87e79ec82413889c2eac38beb4eb8f7`  
		Last Modified: Mon, 09 Oct 2017 22:03:08 GMT  
		Size: 20.3 MB (20337143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a5e6d35928560b933b85b5a3f2a8e96b4520fbb8df138b3e739e56d0c1f355`  
		Last Modified: Tue, 10 Oct 2017 05:01:18 GMT  
		Size: 4.1 MB (4073554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a862ab821b342790326492507ca5d70bfb7016bef765606193f1f7139f60c5ed`  
		Last Modified: Tue, 10 Oct 2017 05:01:14 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92799a54920b79013733790e444f13d8c65faa29c79cbdaf1bc8af85f637a233`  
		Last Modified: Tue, 10 Oct 2017 05:01:14 GMT  
		Size: 919.5 KB (919487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b119999eef1bcadabedd3a5319b03c6b83ede91ba8535059851547d3433b205`  
		Last Modified: Tue, 10 Oct 2017 05:01:19 GMT  
		Size: 25.0 MB (25042572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e62f8525a3a982a102aa37bb3313876195b15d8781cd253ed238dd2b9dff151`  
		Last Modified: Tue, 10 Oct 2017 05:01:15 GMT  
		Size: 6.9 MB (6894852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc028e70f04f6ea4365223a1cfe4e5c4384d5921acac419f3c170b148f7c7bf`  
		Last Modified: Tue, 10 Oct 2017 05:01:10 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e99faa03c2a8a272f56208c644c12b384b69dea50be6da9f6be400c14b945c`  
		Last Modified: Tue, 10 Oct 2017 05:01:12 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8fa260bcaa52d81ba20c11111f8d15bab954b17b48666724536c604220d94e`  
		Last Modified: Tue, 10 Oct 2017 05:01:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f88b9d1f075e6bf61f09cc09d798a29acd6e17f5a269c2014b4ff69b8f7834d`  
		Last Modified: Tue, 10 Oct 2017 05:01:11 GMT  
		Size: 3.9 KB (3944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2263263deeda5e4a4bcf0bada5587f1838cf344dfa3f3c8ccb1b7ccebac51324`  
		Last Modified: Tue, 10 Oct 2017 05:01:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.12` - linux; 386

```console
$ docker pull rabbitmq@sha256:279ae861209906237217ab5730e10b16ecebda36773c68a5e27f02e0ce68dced
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63902861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ce639de923d82dab2f843c7eaa5fd32780cddea06530bfd4bc39003b687d2c4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:36 GMT
ADD file:6582536277127947668f7bfdc1471a4e36170915b91a4cb841e7e1bfa1de6535 in / 
# Mon, 09 Oct 2017 21:45:36 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:25:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:25:35 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 02:25:35 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:25:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 02:26:18 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:26:18 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 02:26:19 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 02:26:19 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 02:26:19 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 02:26:20 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 02:26:20 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 02:27:12 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:27:12 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 02:27:13 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 02:27:13 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 02:27:14 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 02:27:15 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 02:27:15 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:27:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 02:27:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:27:16 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 02:27:17 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:b2b52fe46b29fe5d0689f26449c2114e40f0731d4ce3eb8c3941397b74205432`  
		Last Modified: Mon, 09 Oct 2017 21:53:42 GMT  
		Size: 23.1 MB (23128678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd56a7a1b23cba5ba31ffca4c1bd92c67baada83c1cccc6a39804b4bffccfde`  
		Last Modified: Tue, 10 Oct 2017 02:27:38 GMT  
		Size: 4.8 MB (4803931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5d99e72ac84835e308ec1af65659ef2c54b73366b5284dcf72ec2ae2a8be85`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 4.1 KB (4052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bb0b0cf4cc9d3eaa2a5d66c42a5887057caa974ed019f672c76359e5c56134`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 931.6 KB (931603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93c01cd1734bd61603408f604f963f4b669d89bbd45ccc941246e0defadf8b0`  
		Last Modified: Tue, 10 Oct 2017 02:27:41 GMT  
		Size: 27.8 MB (27818777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab6c121037963c174b576775a6333c56a529233771314b4dd8b3eeb8ff17e0d`  
		Last Modified: Tue, 10 Oct 2017 02:27:38 GMT  
		Size: 7.2 MB (7209220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99a2b13764e2fa2df368b2aeb4d8a42ff3f6cb8baffb126e338f45afa13bb4d`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9cdf701464766405898032d3f1dcd5f15f40b298781b771d58d825fbb54af3`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea9f77a46c316b539d74ca676c8dd927beb201a823d9a3b8ae19bdee9fb91cc5`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8966d25965fc7636f62aefc27e4d0a14a660dee2570d53ee9e74d34f6c00bb6`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 3.9 KB (3947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e319f638428534055f8c4d559bd028e5f2206c74a42187460ade6f9d3cf99c2a`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.12` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:61082c4b7fae20fa068217d889981d8aa49aa0b9d167f1f7c32bf05838e5ab5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60387472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73994f34e02e712c22197bdb21df802db0f1dd1eaa09f047c461cc66893d79a0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:56 GMT
ADD file:7edf73437495be24244c16841b563be06c15452963f41ac940fb5e105ed96027 in / 
# Mon, 09 Oct 2017 21:45:58 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 06:53:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:53:40 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 06:53:45 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 06:56:06 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 07:01:10 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:01:13 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 07:01:15 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:01:18 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 07:01:22 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 07:01:25 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 07:01:29 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 07:04:54 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:04:58 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 07:05:09 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 07:05:13 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 07:05:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 07:05:33 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 07:05:35 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 07:05:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 07:05:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 07:05:52 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 07:05:57 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:c4860466fa1e6824151f4fa3a51ef0e9d7d3c3ba860e21d94e69988b65601260`  
		Last Modified: Mon, 09 Oct 2017 21:52:59 GMT  
		Size: 22.7 MB (22746217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8714f956af621d487bb938f0c4ee79429b72e372b6090ef06ebebcbb559daace`  
		Last Modified: Tue, 10 Oct 2017 07:06:52 GMT  
		Size: 4.4 MB (4361267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0aae6367725c08eba421b48b8f34430348bc57365851fe72accc2298bc51b8e`  
		Last Modified: Tue, 10 Oct 2017 07:06:50 GMT  
		Size: 4.1 KB (4106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:957bc408190bc6f73bb44d2b0606243d737e03780189ad1baf3c05b028493f54`  
		Last Modified: Tue, 10 Oct 2017 07:06:50 GMT  
		Size: 921.4 KB (921402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d46f79aaf675c9e2fda7e382e77ce88e43884f112038793c9e0e9d25f1a0828`  
		Last Modified: Tue, 10 Oct 2017 07:06:53 GMT  
		Size: 25.5 MB (25493330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626684a94b11097452c1b15def3c9d8802a40616032986b8b84a04d34dd1120a`  
		Last Modified: Tue, 10 Oct 2017 07:06:50 GMT  
		Size: 6.9 MB (6854550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf606bd05995800423fd3e922bd6efd3baf29c2d88b57db07c1098fe2451574`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b15efc3e31f84b775c79b2aa119d68a48e6c3d7ce14f9187e5b0dddc6f9a358`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5924fbba6050d17c40d7dd386e70e472517b4a2eec0d27ac4dbfe0023e38db6d`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e902f69d01855798e105bebdc64e30c4fbb70d1930bb2e6b6a6eca7fc671a3`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 3.9 KB (3945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f553e16e25ddf1bbbcc56cbabbebf2c26914e5f961721b0f3ca2f8e6bb8585`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.12` - linux; s390x

```console
$ docker pull rabbitmq@sha256:504212d66b109ece5875bab8daa7975c941824512bc40d06ebb30f342e489d2c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60365345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06cf4e4ec173af006e19afd5ab5838e8863c57de1a854238b09dea34cd740e94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:35 GMT
ADD file:ae4aaa6affe22f36ab5478771d5c84917f72de7a8dac16345a035709a1a5edf4 in / 
# Mon, 09 Oct 2017 21:44:36 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:45:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:45:08 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Mon, 09 Oct 2017 23:45:08 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:45:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:46:10 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:46:10 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 09 Oct 2017 23:46:11 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 23:46:11 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 09 Oct 2017 23:46:11 GMT
ENV RABBITMQ_VERSION=3.6.12
# Mon, 09 Oct 2017 23:46:11 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Mon, 09 Oct 2017 23:46:11 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Thu, 12 Oct 2017 18:28:22 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 12 Oct 2017 18:28:22 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 12 Oct 2017 18:28:23 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 12 Oct 2017 18:28:23 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 12 Oct 2017 18:28:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 12 Oct 2017 18:28:25 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 12 Oct 2017 18:28:25 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Thu, 12 Oct 2017 18:28:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 12 Oct 2017 18:28:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 18:28:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 12 Oct 2017 18:28:26 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:671716cc49517eef5f430c695ce344d63e390cb65f58d30939f2ba615c953686`  
		Last Modified: Mon, 09 Oct 2017 21:49:09 GMT  
		Size: 22.3 MB (22339951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7bcde3ab4d109ca30e7e6be1a5401b63c4473f9291ca2356407b66a5954522`  
		Last Modified: Thu, 12 Oct 2017 18:28:47 GMT  
		Size: 4.5 MB (4530291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d7d4a53e870f537ea989232055702c6711b51f7e2dfb049e984c8c90dfd1ff`  
		Last Modified: Thu, 12 Oct 2017 18:28:45 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0281f6547f5cfef34cf6e59c1935efd9423b30c49a97caa55b3299e965d3504`  
		Last Modified: Thu, 12 Oct 2017 18:28:45 GMT  
		Size: 938.1 KB (938055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fafa52e7299e0f68764a55b921d99192a861054cd9a421fce048ffa6787151ce`  
		Last Modified: Thu, 12 Oct 2017 18:28:49 GMT  
		Size: 25.6 MB (25619471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb1eb7de62ab431186ef3d571bec4f6364ebab824f5d662b4d0c3c36e36020b`  
		Last Modified: Thu, 12 Oct 2017 18:28:46 GMT  
		Size: 6.9 MB (6926912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a40bc6f8cdb17c86c0d43fe9b56c730e09f20d6b1fa12fa0f6f0eaa27ec5b50`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0462e482b612a854287aa487e8a3121c6b273608871a405c72bd80c0192d2818`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f7cbcbc2d86d2a53a53aee388820237f920bb3320490596a821948322a7317`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1251546aac265bb12405e223deb1e938190b57d03c8903038f920d9ae9c9bb62`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 3.9 KB (3942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3199db4d2641323733c96fd746db50df2d357ef80d6a38c8dbe5e2baebefbdb6`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.12-alpine`

```console
$ docker pull rabbitmq@sha256:b23ec6a61fcca6e680a4edb33ed676fc6c6351a1c589255eb2d4d810319db8a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.12-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:0ee8c209442107549dd0c585eadf828089d4a4cb564c77c2822b5ef41eb88276
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23557148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0ea1f4af6f42a728fdda03d11f8b46a99930e075d06848fb5d1c53db4931bb5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 01:47:34 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 19 Sep 2017 01:47:38 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 19 Sep 2017 01:47:44 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 19 Sep 2017 01:47:44 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 19 Sep 2017 01:47:44 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 19 Sep 2017 01:47:44 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 00:49:13 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 00:49:13 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 00:49:13 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 00:49:25 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 26 Sep 2017 00:49:25 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 00:49:25 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 00:49:26 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 00:49:27 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 00:49:28 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 13 Oct 2017 23:41:04 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Fri, 13 Oct 2017 23:41:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 23:41:04 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 13 Oct 2017 23:41:04 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b35056c6845499c25bf0eafef5dbc120c9c37f6c50dfcb4627b51c0231603c18`  
		Last Modified: Tue, 19 Sep 2017 01:49:18 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70586150e9099e145e62a41f0ff5589c0f12c8c9cbab9bc2dbd40a97c353b51`  
		Last Modified: Tue, 19 Sep 2017 01:49:18 GMT  
		Size: 8.2 KB (8220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfffd127a85fa5ecc0db41a94cf22b88b6a161b577809181246e2e28700875ff`  
		Last Modified: Tue, 19 Sep 2017 01:49:21 GMT  
		Size: 16.5 MB (16540643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf157c5d932b2f37744919af62c626e6b0910550f724286975a91aadf3d22205`  
		Last Modified: Tue, 26 Sep 2017 00:51:01 GMT  
		Size: 5.0 MB (5012132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69365f61532d8eba60c5394dabec3f9c0038c8149eca1995f15fdf50bc68e1c4`  
		Last Modified: Tue, 26 Sep 2017 00:51:00 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8d26e15c29717fa296797e41f846f8d1af0f8b2802708e30428fb2d9a75d8c`  
		Last Modified: Tue, 26 Sep 2017 00:51:00 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb4cf70df1a3e43ec14cefee13b73ad3ae61605ebc3a8a29d85dd5c49cc8e43`  
		Last Modified: Tue, 26 Sep 2017 00:51:00 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31aadf17fdb7f906af653798039fc5e0daaabf39092d24c121423e6fe611a6b`  
		Last Modified: Fri, 13 Oct 2017 23:42:36 GMT  
		Size: 4.0 KB (4041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.12-management`

```console
$ docker pull rabbitmq@sha256:4d173dac5e05557e9ea9fd75bddc51fa69c54c4908436e25dd4f42c57bcf5bd6
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

### `rabbitmq:3.6.12-management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:40a956f5198d4d2050d1545dc48bf38b5e0342c33d10bcd04c9e0a7e7bc851af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62852369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ac724eab06670229b033f2516a2e3af2cdfb453495a9bbb040fea13b398ab5f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:42 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Mon, 09 Oct 2017 21:33:43 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:41:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:41:43 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 02:41:43 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:42:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 02:42:40 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:42:41 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 02:42:41 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 02:42:41 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 02:42:41 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 02:42:41 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 02:42:42 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 02:43:16 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:43:16 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 02:43:17 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 02:43:17 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 02:43:18 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 02:43:19 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 13 Oct 2017 23:40:43 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Fri, 13 Oct 2017 23:40:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 23:40:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 23:40:45 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 13 Oct 2017 23:40:45 GMT
CMD ["rabbitmq-server"]
# Fri, 13 Oct 2017 23:40:56 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 13 Oct 2017 23:40:57 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e65f0b00e4cfb1535d0f4e7a63707172ae63483fb33140d777614f199afcb36`  
		Last Modified: Tue, 10 Oct 2017 02:43:59 GMT  
		Size: 4.5 MB (4498726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2bd803179890909fcae186044c0e6ca1bc1d34e5fc05ef1ccea823e7be97540`  
		Last Modified: Tue, 10 Oct 2017 02:43:57 GMT  
		Size: 4.1 KB (4069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b05ca8302833edf783c50f03cd7ba0b8e12bc872b053eda3e3ae7e1f17e2b4b`  
		Last Modified: Tue, 10 Oct 2017 02:43:58 GMT  
		Size: 952.1 KB (952058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bb5a4bbcce5a040eb83057f9e93d17663bb123f4e98168457444497f7d17b70`  
		Last Modified: Tue, 10 Oct 2017 02:44:03 GMT  
		Size: 27.7 MB (27703883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf840d8999f6fe46a162974c82378c38b3cf3dcccbbaff848c0fb199988aebe0`  
		Last Modified: Tue, 10 Oct 2017 02:44:00 GMT  
		Size: 7.2 MB (7194403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be339ca44883b1990e52771487402163d398a279755a501fdd8891ec71cf09d0`  
		Last Modified: Tue, 10 Oct 2017 02:43:55 GMT  
		Size: 2.3 KB (2258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce35cd9f9b5b917868095b3b074dd23d18e0e266f3ee68ff95e2c61467299812`  
		Last Modified: Tue, 10 Oct 2017 02:43:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4fe32a0a00d916ed4d632aae71d35d9d0baa5e5910d6bd179a24071c35bedb0`  
		Last Modified: Tue, 10 Oct 2017 02:43:55 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77408ca9e94eb4bfeb346ab10c602857525802c2279e7c6995fcdbc90269444a`  
		Last Modified: Fri, 13 Oct 2017 23:41:26 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db03407a1aba1c0a89dffe960394aae639885702e3faa65271b918c36c7905cd`  
		Last Modified: Fri, 13 Oct 2017 23:41:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b908f008ac2afe6632caccd124e3ee9bffd5ebcdb8ca5ca84ae7e014305e460f`  
		Last Modified: Fri, 13 Oct 2017 23:42:01 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.12-management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:9d8a89e9d5a9031b8a39ececf246b566b1af757e935233c850c84acce1b51633
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.4 MB (58432473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89511696e456f44d70f501b50be7fce142db50b5f46f4c033b875af70bfd771c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:48 GMT
ADD file:ff9945b48b1ac236dcec24eb9dfaf52b7c151a3b11c8502391f0866dfb4e3ac3 in / 
# Mon, 09 Oct 2017 21:44:48 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:18:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:18:11 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 00:18:11 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:18:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 00:18:58 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:18:58 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 00:18:58 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:18:59 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 00:18:59 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 00:18:59 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 00:18:59 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 00:19:26 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:19:26 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 00:19:27 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 00:19:28 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 00:19:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 00:19:30 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 00:19:30 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:19:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 00:19:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:19:32 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 00:19:33 GMT
CMD ["rabbitmq-server"]
# Tue, 10 Oct 2017 00:19:50 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 10 Oct 2017 00:19:50 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:836d5b6056a9815be79c76480a90299267f60201bd1e3396817003e6c14819cc`  
		Last Modified: Mon, 09 Oct 2017 21:50:56 GMT  
		Size: 21.2 MB (21166251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb896fba83bd09a35c68457554b35289860c23c46f27a8c3ef42f13146ebba1`  
		Last Modified: Tue, 10 Oct 2017 00:20:01 GMT  
		Size: 4.2 MB (4231979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61827a16c114b9741d761aa4c60a972ffe1e0b60147794e86b05653d67822e91`  
		Last Modified: Tue, 10 Oct 2017 00:20:00 GMT  
		Size: 4.1 KB (4079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:877cd9511def30e56a5ce354e145e8a2b1a93daaae7eaaa42dc4219838aa1743`  
		Last Modified: Tue, 10 Oct 2017 00:20:00 GMT  
		Size: 942.8 KB (942752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea9e378899e98c99e93ae2d0874bd5d89e24134bd14a19c285bdf39a0a42ade`  
		Last Modified: Tue, 10 Oct 2017 00:20:05 GMT  
		Size: 25.2 MB (25170810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbc82a29314b16531aa2172ac523ba535e3678f85efdd699164fbb0241ab8b62`  
		Last Modified: Tue, 10 Oct 2017 00:20:01 GMT  
		Size: 6.9 MB (6909811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58c44a3d016cf9de95021782180a42d3660e20fc7d8e92a7fe5ce9ede7928ca2`  
		Last Modified: Tue, 10 Oct 2017 00:19:59 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8abfdcdd98b40291ad91791bea09bf277e75c3669c6607c7891b09130101bfa3`  
		Last Modified: Tue, 10 Oct 2017 00:19:58 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a72811da4bf8ca8a2d06cdc182aa54116bb12133e8d82ef2b018a8de29ed74`  
		Last Modified: Tue, 10 Oct 2017 00:19:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d85bf4fc0617472a84b0aa86f36164826f7a34ec4239d845d29676b3b22164`  
		Last Modified: Tue, 10 Oct 2017 00:19:58 GMT  
		Size: 3.9 KB (3946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d379089da98fec4c83792f8f2ebcd33826a381d3523c9e2eda5dcb91e322aa9`  
		Last Modified: Tue, 10 Oct 2017 00:19:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54861e1463a8e17fb2fb96ec1e018121982b309089550b749b1ca28f4cd1244`  
		Last Modified: Tue, 10 Oct 2017 00:20:21 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.12-management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:d3e631f740deddb3ce8938266edfa623dda238f0954ec4b90b6bd61174eb34b1
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55689734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5960d86042dfc4ac8155e62d27f19369f43b8883378c26bf64fd2ac274f44a74`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:08:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:08:15 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 00:08:16 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:08:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 00:09:07 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:09:07 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 00:09:08 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:09:08 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 00:09:08 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 00:09:08 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 00:09:09 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 00:09:31 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:09:31 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 00:09:32 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 00:09:33 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 00:09:34 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 00:09:36 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 00:09:36 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:09:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 00:09:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:09:39 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 00:09:39 GMT
CMD ["rabbitmq-server"]
# Tue, 10 Oct 2017 00:09:56 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 10 Oct 2017 00:09:57 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:59e81a3fde58ec8d4b8f2f58b98ef2f4d951d37dd9b99b016fd294a8e07d7796`  
		Last Modified: Mon, 09 Oct 2017 21:52:49 GMT  
		Size: 19.3 MB (19277135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb84cf14a797e0c36a5062e5815b71c4fd0093413f105b27624939375150f03b`  
		Last Modified: Tue, 10 Oct 2017 00:10:13 GMT  
		Size: 3.9 MB (3869005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cce9319434844ff1c14610356c4336192046612fdff57f5c8678595702002c`  
		Last Modified: Tue, 10 Oct 2017 00:10:11 GMT  
		Size: 4.1 KB (4080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5463321259d892fda42d7201a40fbc05a78196e4895d7b17e06c85ecd091e62b`  
		Last Modified: Tue, 10 Oct 2017 00:10:12 GMT  
		Size: 926.5 KB (926471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bca1a117250e4e46e6d6aea3a4770f8119d72d505036090ee102abd9705e9b`  
		Last Modified: Tue, 10 Oct 2017 00:10:17 GMT  
		Size: 24.8 MB (24785804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab9316ca3e99e9664fe5eb97360822a9f8191a29c3e5b7a7966b6254b889d7a`  
		Last Modified: Tue, 10 Oct 2017 00:10:15 GMT  
		Size: 6.8 MB (6820453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f593867a4cdb0f406669620054471236973b620f178316670b74fc83fb1359`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a81744440a17e6df84509c55d5e0dae88230c113b348b511037cd38796c68d1`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc4ed0a5303f5e5db5f73224fa321f58305866f346c7d59238dcbeca1e1b35f`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690fb2e5911d59600356c772de869979c0a9c4ebd8a259ca374efb06382a56bf`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 3.9 KB (3943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0994a01c76d5feb217978c6cb5e96037b856c0fe96c98715f4ae4367886c9af3`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546c4b6abd26cf03113d58139dab8fcc9d98d3c9e917e8933d27a788c32869b5`  
		Last Modified: Tue, 10 Oct 2017 00:10:39 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.12-management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:c804f14dcc3e67b035e830ce81c351f0a06aa2a5ef1be33d3df28f3a0f99588c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57278470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ba6b5bab9677666323807cb8a6ee429c2b4ab8ece5f5a5ad15da447522197a6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 04:57:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 04:57:04 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 04:57:05 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 04:57:37 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 04:58:35 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 04:58:36 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 04:58:37 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 04:58:37 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 04:58:38 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 04:58:39 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 04:58:39 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 05:00:22 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:00:23 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 05:00:25 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 05:00:26 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 05:00:28 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 05:00:31 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 05:00:32 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 05:00:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 05:00:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 05:00:36 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 05:00:37 GMT
CMD ["rabbitmq-server"]
# Tue, 10 Oct 2017 05:00:52 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 10 Oct 2017 05:00:53 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:e907afd6e25615a4d3eb554d930cef57b87e79ec82413889c2eac38beb4eb8f7`  
		Last Modified: Mon, 09 Oct 2017 22:03:08 GMT  
		Size: 20.3 MB (20337143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a5e6d35928560b933b85b5a3f2a8e96b4520fbb8df138b3e739e56d0c1f355`  
		Last Modified: Tue, 10 Oct 2017 05:01:18 GMT  
		Size: 4.1 MB (4073554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a862ab821b342790326492507ca5d70bfb7016bef765606193f1f7139f60c5ed`  
		Last Modified: Tue, 10 Oct 2017 05:01:14 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92799a54920b79013733790e444f13d8c65faa29c79cbdaf1bc8af85f637a233`  
		Last Modified: Tue, 10 Oct 2017 05:01:14 GMT  
		Size: 919.5 KB (919487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b119999eef1bcadabedd3a5319b03c6b83ede91ba8535059851547d3433b205`  
		Last Modified: Tue, 10 Oct 2017 05:01:19 GMT  
		Size: 25.0 MB (25042572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e62f8525a3a982a102aa37bb3313876195b15d8781cd253ed238dd2b9dff151`  
		Last Modified: Tue, 10 Oct 2017 05:01:15 GMT  
		Size: 6.9 MB (6894852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc028e70f04f6ea4365223a1cfe4e5c4384d5921acac419f3c170b148f7c7bf`  
		Last Modified: Tue, 10 Oct 2017 05:01:10 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e99faa03c2a8a272f56208c644c12b384b69dea50be6da9f6be400c14b945c`  
		Last Modified: Tue, 10 Oct 2017 05:01:12 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8fa260bcaa52d81ba20c11111f8d15bab954b17b48666724536c604220d94e`  
		Last Modified: Tue, 10 Oct 2017 05:01:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f88b9d1f075e6bf61f09cc09d798a29acd6e17f5a269c2014b4ff69b8f7834d`  
		Last Modified: Tue, 10 Oct 2017 05:01:11 GMT  
		Size: 3.9 KB (3944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2263263deeda5e4a4bcf0bada5587f1838cf344dfa3f3c8ccb1b7ccebac51324`  
		Last Modified: Tue, 10 Oct 2017 05:01:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b54c33fccff78e94a9516731142de6d28bb0344fdd3365c7db35880214ea66ee`  
		Last Modified: Tue, 10 Oct 2017 05:02:11 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.12-management` - linux; 386

```console
$ docker pull rabbitmq@sha256:a5cb6f9c959f0088ebd46624dc64ac01b93462640476b9c4bf946a205840116e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63903054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:361f6b95c5a010c046a6e280d2ad48eeef070a4b98bfefc42cb6e3bb10788afe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:36 GMT
ADD file:6582536277127947668f7bfdc1471a4e36170915b91a4cb841e7e1bfa1de6535 in / 
# Mon, 09 Oct 2017 21:45:36 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:25:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:25:35 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 02:25:35 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:25:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 02:26:18 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:26:18 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 02:26:19 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 02:26:19 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 02:26:19 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 02:26:20 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 02:26:20 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 02:27:12 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:27:12 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 02:27:13 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 02:27:13 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 02:27:14 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 02:27:15 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 02:27:15 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:27:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 02:27:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:27:16 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 02:27:17 GMT
CMD ["rabbitmq-server"]
# Tue, 10 Oct 2017 02:27:26 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 10 Oct 2017 02:27:27 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:b2b52fe46b29fe5d0689f26449c2114e40f0731d4ce3eb8c3941397b74205432`  
		Last Modified: Mon, 09 Oct 2017 21:53:42 GMT  
		Size: 23.1 MB (23128678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd56a7a1b23cba5ba31ffca4c1bd92c67baada83c1cccc6a39804b4bffccfde`  
		Last Modified: Tue, 10 Oct 2017 02:27:38 GMT  
		Size: 4.8 MB (4803931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5d99e72ac84835e308ec1af65659ef2c54b73366b5284dcf72ec2ae2a8be85`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 4.1 KB (4052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bb0b0cf4cc9d3eaa2a5d66c42a5887057caa974ed019f672c76359e5c56134`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 931.6 KB (931603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93c01cd1734bd61603408f604f963f4b669d89bbd45ccc941246e0defadf8b0`  
		Last Modified: Tue, 10 Oct 2017 02:27:41 GMT  
		Size: 27.8 MB (27818777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab6c121037963c174b576775a6333c56a529233771314b4dd8b3eeb8ff17e0d`  
		Last Modified: Tue, 10 Oct 2017 02:27:38 GMT  
		Size: 7.2 MB (7209220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99a2b13764e2fa2df368b2aeb4d8a42ff3f6cb8baffb126e338f45afa13bb4d`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9cdf701464766405898032d3f1dcd5f15f40b298781b771d58d825fbb54af3`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea9f77a46c316b539d74ca676c8dd927beb201a823d9a3b8ae19bdee9fb91cc5`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8966d25965fc7636f62aefc27e4d0a14a660dee2570d53ee9e74d34f6c00bb6`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 3.9 KB (3947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e319f638428534055f8c4d559bd028e5f2206c74a42187460ade6f9d3cf99c2a`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3f089abe7a89fcdef4b85162da6f8749fbaa599a42d9220199e472ed6fc3c38`  
		Last Modified: Tue, 10 Oct 2017 02:28:12 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.12-management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:82446252c3d1100ab3b515f8ad81700e29c1b24b7524ebd462f1b1842a0e79d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60387663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab9b9d4ae3120cecfdb9b5238a00a9a697a151799d0f4392ec8d17cf151f4b4a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:56 GMT
ADD file:7edf73437495be24244c16841b563be06c15452963f41ac940fb5e105ed96027 in / 
# Mon, 09 Oct 2017 21:45:58 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 06:53:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:53:40 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 06:53:45 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 06:56:06 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 07:01:10 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:01:13 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 07:01:15 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:01:18 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 07:01:22 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 07:01:25 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 07:01:29 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 07:04:54 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:04:58 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 07:05:09 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 07:05:13 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 07:05:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 07:05:33 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 07:05:35 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 07:05:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 07:05:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 07:05:52 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 07:05:57 GMT
CMD ["rabbitmq-server"]
# Tue, 10 Oct 2017 07:06:25 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 10 Oct 2017 07:06:30 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:c4860466fa1e6824151f4fa3a51ef0e9d7d3c3ba860e21d94e69988b65601260`  
		Last Modified: Mon, 09 Oct 2017 21:52:59 GMT  
		Size: 22.7 MB (22746217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8714f956af621d487bb938f0c4ee79429b72e372b6090ef06ebebcbb559daace`  
		Last Modified: Tue, 10 Oct 2017 07:06:52 GMT  
		Size: 4.4 MB (4361267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0aae6367725c08eba421b48b8f34430348bc57365851fe72accc2298bc51b8e`  
		Last Modified: Tue, 10 Oct 2017 07:06:50 GMT  
		Size: 4.1 KB (4106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:957bc408190bc6f73bb44d2b0606243d737e03780189ad1baf3c05b028493f54`  
		Last Modified: Tue, 10 Oct 2017 07:06:50 GMT  
		Size: 921.4 KB (921402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d46f79aaf675c9e2fda7e382e77ce88e43884f112038793c9e0e9d25f1a0828`  
		Last Modified: Tue, 10 Oct 2017 07:06:53 GMT  
		Size: 25.5 MB (25493330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626684a94b11097452c1b15def3c9d8802a40616032986b8b84a04d34dd1120a`  
		Last Modified: Tue, 10 Oct 2017 07:06:50 GMT  
		Size: 6.9 MB (6854550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf606bd05995800423fd3e922bd6efd3baf29c2d88b57db07c1098fe2451574`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b15efc3e31f84b775c79b2aa119d68a48e6c3d7ce14f9187e5b0dddc6f9a358`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5924fbba6050d17c40d7dd386e70e472517b4a2eec0d27ac4dbfe0023e38db6d`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e902f69d01855798e105bebdc64e30c4fbb70d1930bb2e6b6a6eca7fc671a3`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 3.9 KB (3945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f553e16e25ddf1bbbcc56cbabbebf2c26914e5f961721b0f3ca2f8e6bb8585`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf08c64d1240afbbc8f1867689f2e2e8b46e68320c438032e8669817fbeada5`  
		Last Modified: Tue, 10 Oct 2017 07:07:18 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.12-management` - linux; s390x

```console
$ docker pull rabbitmq@sha256:31f94a778a470be6cc97a7f74e2ddf1e8758ed90e12020ae4f54ec0d32997692
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60365539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6213df3f90e6dff86c41949235dea8c71ba5e48dde5c7317fc6c6b4f80d4e1ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:35 GMT
ADD file:ae4aaa6affe22f36ab5478771d5c84917f72de7a8dac16345a035709a1a5edf4 in / 
# Mon, 09 Oct 2017 21:44:36 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:45:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:45:08 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Mon, 09 Oct 2017 23:45:08 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:45:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:46:10 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:46:10 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 09 Oct 2017 23:46:11 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 23:46:11 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 09 Oct 2017 23:46:11 GMT
ENV RABBITMQ_VERSION=3.6.12
# Mon, 09 Oct 2017 23:46:11 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Mon, 09 Oct 2017 23:46:11 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Thu, 12 Oct 2017 18:28:22 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 12 Oct 2017 18:28:22 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 12 Oct 2017 18:28:23 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 12 Oct 2017 18:28:23 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 12 Oct 2017 18:28:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 12 Oct 2017 18:28:25 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 12 Oct 2017 18:28:25 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Thu, 12 Oct 2017 18:28:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 12 Oct 2017 18:28:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 18:28:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 12 Oct 2017 18:28:26 GMT
CMD ["rabbitmq-server"]
# Thu, 12 Oct 2017 18:28:34 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 12 Oct 2017 18:28:34 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:671716cc49517eef5f430c695ce344d63e390cb65f58d30939f2ba615c953686`  
		Last Modified: Mon, 09 Oct 2017 21:49:09 GMT  
		Size: 22.3 MB (22339951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7bcde3ab4d109ca30e7e6be1a5401b63c4473f9291ca2356407b66a5954522`  
		Last Modified: Thu, 12 Oct 2017 18:28:47 GMT  
		Size: 4.5 MB (4530291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d7d4a53e870f537ea989232055702c6711b51f7e2dfb049e984c8c90dfd1ff`  
		Last Modified: Thu, 12 Oct 2017 18:28:45 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0281f6547f5cfef34cf6e59c1935efd9423b30c49a97caa55b3299e965d3504`  
		Last Modified: Thu, 12 Oct 2017 18:28:45 GMT  
		Size: 938.1 KB (938055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fafa52e7299e0f68764a55b921d99192a861054cd9a421fce048ffa6787151ce`  
		Last Modified: Thu, 12 Oct 2017 18:28:49 GMT  
		Size: 25.6 MB (25619471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb1eb7de62ab431186ef3d571bec4f6364ebab824f5d662b4d0c3c36e36020b`  
		Last Modified: Thu, 12 Oct 2017 18:28:46 GMT  
		Size: 6.9 MB (6926912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a40bc6f8cdb17c86c0d43fe9b56c730e09f20d6b1fa12fa0f6f0eaa27ec5b50`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0462e482b612a854287aa487e8a3121c6b273608871a405c72bd80c0192d2818`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f7cbcbc2d86d2a53a53aee388820237f920bb3320490596a821948322a7317`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1251546aac265bb12405e223deb1e938190b57d03c8903038f920d9ae9c9bb62`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 3.9 KB (3942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3199db4d2641323733c96fd746db50df2d357ef80d6a38c8dbe5e2baebefbdb6`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cb5e3e86125cb37892a49c2202a242a302e8435ef9139e549ab9a53b026cd9`  
		Last Modified: Thu, 12 Oct 2017 18:29:06 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.12-management-alpine`

```console
$ docker pull rabbitmq@sha256:46a7f53f84b6508b03212a1d1151aa89de09ee3a77715277f88288a940a68b0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.12-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:283b76d23002526e7b75b3b2268d999e8ba8373ff13a9a54ed504ef0c548ba6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23557341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be775004faceb2d5fd71f989bd403debfc9297f72a0d4635ed2e51311c69e6b4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 01:47:34 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 19 Sep 2017 01:47:38 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 19 Sep 2017 01:47:44 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 19 Sep 2017 01:47:44 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 19 Sep 2017 01:47:44 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 19 Sep 2017 01:47:44 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 00:49:13 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 00:49:13 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 00:49:13 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 00:49:25 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 26 Sep 2017 00:49:25 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 00:49:25 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 00:49:26 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 00:49:27 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 00:49:28 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 13 Oct 2017 23:41:04 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Fri, 13 Oct 2017 23:41:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 23:41:04 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 13 Oct 2017 23:41:04 GMT
CMD ["rabbitmq-server"]
# Fri, 13 Oct 2017 23:41:14 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 13 Oct 2017 23:41:14 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b35056c6845499c25bf0eafef5dbc120c9c37f6c50dfcb4627b51c0231603c18`  
		Last Modified: Tue, 19 Sep 2017 01:49:18 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70586150e9099e145e62a41f0ff5589c0f12c8c9cbab9bc2dbd40a97c353b51`  
		Last Modified: Tue, 19 Sep 2017 01:49:18 GMT  
		Size: 8.2 KB (8220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfffd127a85fa5ecc0db41a94cf22b88b6a161b577809181246e2e28700875ff`  
		Last Modified: Tue, 19 Sep 2017 01:49:21 GMT  
		Size: 16.5 MB (16540643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf157c5d932b2f37744919af62c626e6b0910550f724286975a91aadf3d22205`  
		Last Modified: Tue, 26 Sep 2017 00:51:01 GMT  
		Size: 5.0 MB (5012132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69365f61532d8eba60c5394dabec3f9c0038c8149eca1995f15fdf50bc68e1c4`  
		Last Modified: Tue, 26 Sep 2017 00:51:00 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8d26e15c29717fa296797e41f846f8d1af0f8b2802708e30428fb2d9a75d8c`  
		Last Modified: Tue, 26 Sep 2017 00:51:00 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb4cf70df1a3e43ec14cefee13b73ad3ae61605ebc3a8a29d85dd5c49cc8e43`  
		Last Modified: Tue, 26 Sep 2017 00:51:00 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31aadf17fdb7f906af653798039fc5e0daaabf39092d24c121423e6fe611a6b`  
		Last Modified: Fri, 13 Oct 2017 23:42:36 GMT  
		Size: 4.0 KB (4041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca54a49e6f2610c797d20ed2cdbb130299530167b6caa52fd73397dd5eb4be15`  
		Last Modified: Fri, 13 Oct 2017 23:43:11 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-alpine`

```console
$ docker pull rabbitmq@sha256:b23ec6a61fcca6e680a4edb33ed676fc6c6351a1c589255eb2d4d810319db8a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:0ee8c209442107549dd0c585eadf828089d4a4cb564c77c2822b5ef41eb88276
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23557148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0ea1f4af6f42a728fdda03d11f8b46a99930e075d06848fb5d1c53db4931bb5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 01:47:34 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 19 Sep 2017 01:47:38 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 19 Sep 2017 01:47:44 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 19 Sep 2017 01:47:44 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 19 Sep 2017 01:47:44 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 19 Sep 2017 01:47:44 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 00:49:13 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 00:49:13 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 00:49:13 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 00:49:25 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 26 Sep 2017 00:49:25 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 00:49:25 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 00:49:26 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 00:49:27 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 00:49:28 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 13 Oct 2017 23:41:04 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Fri, 13 Oct 2017 23:41:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 23:41:04 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 13 Oct 2017 23:41:04 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b35056c6845499c25bf0eafef5dbc120c9c37f6c50dfcb4627b51c0231603c18`  
		Last Modified: Tue, 19 Sep 2017 01:49:18 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70586150e9099e145e62a41f0ff5589c0f12c8c9cbab9bc2dbd40a97c353b51`  
		Last Modified: Tue, 19 Sep 2017 01:49:18 GMT  
		Size: 8.2 KB (8220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfffd127a85fa5ecc0db41a94cf22b88b6a161b577809181246e2e28700875ff`  
		Last Modified: Tue, 19 Sep 2017 01:49:21 GMT  
		Size: 16.5 MB (16540643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf157c5d932b2f37744919af62c626e6b0910550f724286975a91aadf3d22205`  
		Last Modified: Tue, 26 Sep 2017 00:51:01 GMT  
		Size: 5.0 MB (5012132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69365f61532d8eba60c5394dabec3f9c0038c8149eca1995f15fdf50bc68e1c4`  
		Last Modified: Tue, 26 Sep 2017 00:51:00 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8d26e15c29717fa296797e41f846f8d1af0f8b2802708e30428fb2d9a75d8c`  
		Last Modified: Tue, 26 Sep 2017 00:51:00 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb4cf70df1a3e43ec14cefee13b73ad3ae61605ebc3a8a29d85dd5c49cc8e43`  
		Last Modified: Tue, 26 Sep 2017 00:51:00 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31aadf17fdb7f906af653798039fc5e0daaabf39092d24c121423e6fe611a6b`  
		Last Modified: Fri, 13 Oct 2017 23:42:36 GMT  
		Size: 4.0 KB (4041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management`

```console
$ docker pull rabbitmq@sha256:4d173dac5e05557e9ea9fd75bddc51fa69c54c4908436e25dd4f42c57bcf5bd6
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

### `rabbitmq:3.6-management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:40a956f5198d4d2050d1545dc48bf38b5e0342c33d10bcd04c9e0a7e7bc851af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62852369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ac724eab06670229b033f2516a2e3af2cdfb453495a9bbb040fea13b398ab5f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:42 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Mon, 09 Oct 2017 21:33:43 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:41:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:41:43 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 02:41:43 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:42:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 02:42:40 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:42:41 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 02:42:41 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 02:42:41 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 02:42:41 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 02:42:41 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 02:42:42 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 02:43:16 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:43:16 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 02:43:17 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 02:43:17 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 02:43:18 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 02:43:19 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 13 Oct 2017 23:40:43 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Fri, 13 Oct 2017 23:40:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 23:40:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 23:40:45 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 13 Oct 2017 23:40:45 GMT
CMD ["rabbitmq-server"]
# Fri, 13 Oct 2017 23:40:56 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 13 Oct 2017 23:40:57 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e65f0b00e4cfb1535d0f4e7a63707172ae63483fb33140d777614f199afcb36`  
		Last Modified: Tue, 10 Oct 2017 02:43:59 GMT  
		Size: 4.5 MB (4498726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2bd803179890909fcae186044c0e6ca1bc1d34e5fc05ef1ccea823e7be97540`  
		Last Modified: Tue, 10 Oct 2017 02:43:57 GMT  
		Size: 4.1 KB (4069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b05ca8302833edf783c50f03cd7ba0b8e12bc872b053eda3e3ae7e1f17e2b4b`  
		Last Modified: Tue, 10 Oct 2017 02:43:58 GMT  
		Size: 952.1 KB (952058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bb5a4bbcce5a040eb83057f9e93d17663bb123f4e98168457444497f7d17b70`  
		Last Modified: Tue, 10 Oct 2017 02:44:03 GMT  
		Size: 27.7 MB (27703883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf840d8999f6fe46a162974c82378c38b3cf3dcccbbaff848c0fb199988aebe0`  
		Last Modified: Tue, 10 Oct 2017 02:44:00 GMT  
		Size: 7.2 MB (7194403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be339ca44883b1990e52771487402163d398a279755a501fdd8891ec71cf09d0`  
		Last Modified: Tue, 10 Oct 2017 02:43:55 GMT  
		Size: 2.3 KB (2258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce35cd9f9b5b917868095b3b074dd23d18e0e266f3ee68ff95e2c61467299812`  
		Last Modified: Tue, 10 Oct 2017 02:43:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4fe32a0a00d916ed4d632aae71d35d9d0baa5e5910d6bd179a24071c35bedb0`  
		Last Modified: Tue, 10 Oct 2017 02:43:55 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77408ca9e94eb4bfeb346ab10c602857525802c2279e7c6995fcdbc90269444a`  
		Last Modified: Fri, 13 Oct 2017 23:41:26 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db03407a1aba1c0a89dffe960394aae639885702e3faa65271b918c36c7905cd`  
		Last Modified: Fri, 13 Oct 2017 23:41:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b908f008ac2afe6632caccd124e3ee9bffd5ebcdb8ca5ca84ae7e014305e460f`  
		Last Modified: Fri, 13 Oct 2017 23:42:01 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:9d8a89e9d5a9031b8a39ececf246b566b1af757e935233c850c84acce1b51633
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.4 MB (58432473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89511696e456f44d70f501b50be7fce142db50b5f46f4c033b875af70bfd771c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:48 GMT
ADD file:ff9945b48b1ac236dcec24eb9dfaf52b7c151a3b11c8502391f0866dfb4e3ac3 in / 
# Mon, 09 Oct 2017 21:44:48 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:18:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:18:11 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 00:18:11 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:18:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 00:18:58 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:18:58 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 00:18:58 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:18:59 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 00:18:59 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 00:18:59 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 00:18:59 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 00:19:26 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:19:26 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 00:19:27 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 00:19:28 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 00:19:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 00:19:30 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 00:19:30 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:19:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 00:19:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:19:32 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 00:19:33 GMT
CMD ["rabbitmq-server"]
# Tue, 10 Oct 2017 00:19:50 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 10 Oct 2017 00:19:50 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:836d5b6056a9815be79c76480a90299267f60201bd1e3396817003e6c14819cc`  
		Last Modified: Mon, 09 Oct 2017 21:50:56 GMT  
		Size: 21.2 MB (21166251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb896fba83bd09a35c68457554b35289860c23c46f27a8c3ef42f13146ebba1`  
		Last Modified: Tue, 10 Oct 2017 00:20:01 GMT  
		Size: 4.2 MB (4231979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61827a16c114b9741d761aa4c60a972ffe1e0b60147794e86b05653d67822e91`  
		Last Modified: Tue, 10 Oct 2017 00:20:00 GMT  
		Size: 4.1 KB (4079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:877cd9511def30e56a5ce354e145e8a2b1a93daaae7eaaa42dc4219838aa1743`  
		Last Modified: Tue, 10 Oct 2017 00:20:00 GMT  
		Size: 942.8 KB (942752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea9e378899e98c99e93ae2d0874bd5d89e24134bd14a19c285bdf39a0a42ade`  
		Last Modified: Tue, 10 Oct 2017 00:20:05 GMT  
		Size: 25.2 MB (25170810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbc82a29314b16531aa2172ac523ba535e3678f85efdd699164fbb0241ab8b62`  
		Last Modified: Tue, 10 Oct 2017 00:20:01 GMT  
		Size: 6.9 MB (6909811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58c44a3d016cf9de95021782180a42d3660e20fc7d8e92a7fe5ce9ede7928ca2`  
		Last Modified: Tue, 10 Oct 2017 00:19:59 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8abfdcdd98b40291ad91791bea09bf277e75c3669c6607c7891b09130101bfa3`  
		Last Modified: Tue, 10 Oct 2017 00:19:58 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a72811da4bf8ca8a2d06cdc182aa54116bb12133e8d82ef2b018a8de29ed74`  
		Last Modified: Tue, 10 Oct 2017 00:19:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d85bf4fc0617472a84b0aa86f36164826f7a34ec4239d845d29676b3b22164`  
		Last Modified: Tue, 10 Oct 2017 00:19:58 GMT  
		Size: 3.9 KB (3946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d379089da98fec4c83792f8f2ebcd33826a381d3523c9e2eda5dcb91e322aa9`  
		Last Modified: Tue, 10 Oct 2017 00:19:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54861e1463a8e17fb2fb96ec1e018121982b309089550b749b1ca28f4cd1244`  
		Last Modified: Tue, 10 Oct 2017 00:20:21 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:d3e631f740deddb3ce8938266edfa623dda238f0954ec4b90b6bd61174eb34b1
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55689734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5960d86042dfc4ac8155e62d27f19369f43b8883378c26bf64fd2ac274f44a74`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:08:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:08:15 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 00:08:16 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:08:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 00:09:07 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:09:07 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 00:09:08 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:09:08 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 00:09:08 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 00:09:08 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 00:09:09 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 00:09:31 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:09:31 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 00:09:32 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 00:09:33 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 00:09:34 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 00:09:36 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 00:09:36 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:09:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 00:09:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:09:39 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 00:09:39 GMT
CMD ["rabbitmq-server"]
# Tue, 10 Oct 2017 00:09:56 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 10 Oct 2017 00:09:57 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:59e81a3fde58ec8d4b8f2f58b98ef2f4d951d37dd9b99b016fd294a8e07d7796`  
		Last Modified: Mon, 09 Oct 2017 21:52:49 GMT  
		Size: 19.3 MB (19277135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb84cf14a797e0c36a5062e5815b71c4fd0093413f105b27624939375150f03b`  
		Last Modified: Tue, 10 Oct 2017 00:10:13 GMT  
		Size: 3.9 MB (3869005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cce9319434844ff1c14610356c4336192046612fdff57f5c8678595702002c`  
		Last Modified: Tue, 10 Oct 2017 00:10:11 GMT  
		Size: 4.1 KB (4080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5463321259d892fda42d7201a40fbc05a78196e4895d7b17e06c85ecd091e62b`  
		Last Modified: Tue, 10 Oct 2017 00:10:12 GMT  
		Size: 926.5 KB (926471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bca1a117250e4e46e6d6aea3a4770f8119d72d505036090ee102abd9705e9b`  
		Last Modified: Tue, 10 Oct 2017 00:10:17 GMT  
		Size: 24.8 MB (24785804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab9316ca3e99e9664fe5eb97360822a9f8191a29c3e5b7a7966b6254b889d7a`  
		Last Modified: Tue, 10 Oct 2017 00:10:15 GMT  
		Size: 6.8 MB (6820453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f593867a4cdb0f406669620054471236973b620f178316670b74fc83fb1359`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a81744440a17e6df84509c55d5e0dae88230c113b348b511037cd38796c68d1`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc4ed0a5303f5e5db5f73224fa321f58305866f346c7d59238dcbeca1e1b35f`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690fb2e5911d59600356c772de869979c0a9c4ebd8a259ca374efb06382a56bf`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 3.9 KB (3943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0994a01c76d5feb217978c6cb5e96037b856c0fe96c98715f4ae4367886c9af3`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546c4b6abd26cf03113d58139dab8fcc9d98d3c9e917e8933d27a788c32869b5`  
		Last Modified: Tue, 10 Oct 2017 00:10:39 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:c804f14dcc3e67b035e830ce81c351f0a06aa2a5ef1be33d3df28f3a0f99588c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57278470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ba6b5bab9677666323807cb8a6ee429c2b4ab8ece5f5a5ad15da447522197a6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 04:57:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 04:57:04 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 04:57:05 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 04:57:37 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 04:58:35 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 04:58:36 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 04:58:37 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 04:58:37 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 04:58:38 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 04:58:39 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 04:58:39 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 05:00:22 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:00:23 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 05:00:25 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 05:00:26 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 05:00:28 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 05:00:31 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 05:00:32 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 05:00:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 05:00:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 05:00:36 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 05:00:37 GMT
CMD ["rabbitmq-server"]
# Tue, 10 Oct 2017 05:00:52 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 10 Oct 2017 05:00:53 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:e907afd6e25615a4d3eb554d930cef57b87e79ec82413889c2eac38beb4eb8f7`  
		Last Modified: Mon, 09 Oct 2017 22:03:08 GMT  
		Size: 20.3 MB (20337143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a5e6d35928560b933b85b5a3f2a8e96b4520fbb8df138b3e739e56d0c1f355`  
		Last Modified: Tue, 10 Oct 2017 05:01:18 GMT  
		Size: 4.1 MB (4073554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a862ab821b342790326492507ca5d70bfb7016bef765606193f1f7139f60c5ed`  
		Last Modified: Tue, 10 Oct 2017 05:01:14 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92799a54920b79013733790e444f13d8c65faa29c79cbdaf1bc8af85f637a233`  
		Last Modified: Tue, 10 Oct 2017 05:01:14 GMT  
		Size: 919.5 KB (919487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b119999eef1bcadabedd3a5319b03c6b83ede91ba8535059851547d3433b205`  
		Last Modified: Tue, 10 Oct 2017 05:01:19 GMT  
		Size: 25.0 MB (25042572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e62f8525a3a982a102aa37bb3313876195b15d8781cd253ed238dd2b9dff151`  
		Last Modified: Tue, 10 Oct 2017 05:01:15 GMT  
		Size: 6.9 MB (6894852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc028e70f04f6ea4365223a1cfe4e5c4384d5921acac419f3c170b148f7c7bf`  
		Last Modified: Tue, 10 Oct 2017 05:01:10 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e99faa03c2a8a272f56208c644c12b384b69dea50be6da9f6be400c14b945c`  
		Last Modified: Tue, 10 Oct 2017 05:01:12 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8fa260bcaa52d81ba20c11111f8d15bab954b17b48666724536c604220d94e`  
		Last Modified: Tue, 10 Oct 2017 05:01:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f88b9d1f075e6bf61f09cc09d798a29acd6e17f5a269c2014b4ff69b8f7834d`  
		Last Modified: Tue, 10 Oct 2017 05:01:11 GMT  
		Size: 3.9 KB (3944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2263263deeda5e4a4bcf0bada5587f1838cf344dfa3f3c8ccb1b7ccebac51324`  
		Last Modified: Tue, 10 Oct 2017 05:01:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b54c33fccff78e94a9516731142de6d28bb0344fdd3365c7db35880214ea66ee`  
		Last Modified: Tue, 10 Oct 2017 05:02:11 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; 386

```console
$ docker pull rabbitmq@sha256:a5cb6f9c959f0088ebd46624dc64ac01b93462640476b9c4bf946a205840116e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63903054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:361f6b95c5a010c046a6e280d2ad48eeef070a4b98bfefc42cb6e3bb10788afe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:36 GMT
ADD file:6582536277127947668f7bfdc1471a4e36170915b91a4cb841e7e1bfa1de6535 in / 
# Mon, 09 Oct 2017 21:45:36 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:25:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:25:35 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 02:25:35 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:25:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 02:26:18 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:26:18 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 02:26:19 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 02:26:19 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 02:26:19 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 02:26:20 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 02:26:20 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 02:27:12 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:27:12 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 02:27:13 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 02:27:13 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 02:27:14 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 02:27:15 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 02:27:15 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:27:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 02:27:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:27:16 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 02:27:17 GMT
CMD ["rabbitmq-server"]
# Tue, 10 Oct 2017 02:27:26 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 10 Oct 2017 02:27:27 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:b2b52fe46b29fe5d0689f26449c2114e40f0731d4ce3eb8c3941397b74205432`  
		Last Modified: Mon, 09 Oct 2017 21:53:42 GMT  
		Size: 23.1 MB (23128678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd56a7a1b23cba5ba31ffca4c1bd92c67baada83c1cccc6a39804b4bffccfde`  
		Last Modified: Tue, 10 Oct 2017 02:27:38 GMT  
		Size: 4.8 MB (4803931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5d99e72ac84835e308ec1af65659ef2c54b73366b5284dcf72ec2ae2a8be85`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 4.1 KB (4052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bb0b0cf4cc9d3eaa2a5d66c42a5887057caa974ed019f672c76359e5c56134`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 931.6 KB (931603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93c01cd1734bd61603408f604f963f4b669d89bbd45ccc941246e0defadf8b0`  
		Last Modified: Tue, 10 Oct 2017 02:27:41 GMT  
		Size: 27.8 MB (27818777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab6c121037963c174b576775a6333c56a529233771314b4dd8b3eeb8ff17e0d`  
		Last Modified: Tue, 10 Oct 2017 02:27:38 GMT  
		Size: 7.2 MB (7209220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99a2b13764e2fa2df368b2aeb4d8a42ff3f6cb8baffb126e338f45afa13bb4d`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9cdf701464766405898032d3f1dcd5f15f40b298781b771d58d825fbb54af3`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea9f77a46c316b539d74ca676c8dd927beb201a823d9a3b8ae19bdee9fb91cc5`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8966d25965fc7636f62aefc27e4d0a14a660dee2570d53ee9e74d34f6c00bb6`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 3.9 KB (3947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e319f638428534055f8c4d559bd028e5f2206c74a42187460ade6f9d3cf99c2a`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3f089abe7a89fcdef4b85162da6f8749fbaa599a42d9220199e472ed6fc3c38`  
		Last Modified: Tue, 10 Oct 2017 02:28:12 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:82446252c3d1100ab3b515f8ad81700e29c1b24b7524ebd462f1b1842a0e79d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60387663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab9b9d4ae3120cecfdb9b5238a00a9a697a151799d0f4392ec8d17cf151f4b4a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:56 GMT
ADD file:7edf73437495be24244c16841b563be06c15452963f41ac940fb5e105ed96027 in / 
# Mon, 09 Oct 2017 21:45:58 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 06:53:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:53:40 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 06:53:45 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 06:56:06 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 07:01:10 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:01:13 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 07:01:15 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:01:18 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 07:01:22 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 07:01:25 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 07:01:29 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 07:04:54 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:04:58 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 07:05:09 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 07:05:13 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 07:05:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 07:05:33 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 07:05:35 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 07:05:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 07:05:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 07:05:52 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 07:05:57 GMT
CMD ["rabbitmq-server"]
# Tue, 10 Oct 2017 07:06:25 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 10 Oct 2017 07:06:30 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:c4860466fa1e6824151f4fa3a51ef0e9d7d3c3ba860e21d94e69988b65601260`  
		Last Modified: Mon, 09 Oct 2017 21:52:59 GMT  
		Size: 22.7 MB (22746217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8714f956af621d487bb938f0c4ee79429b72e372b6090ef06ebebcbb559daace`  
		Last Modified: Tue, 10 Oct 2017 07:06:52 GMT  
		Size: 4.4 MB (4361267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0aae6367725c08eba421b48b8f34430348bc57365851fe72accc2298bc51b8e`  
		Last Modified: Tue, 10 Oct 2017 07:06:50 GMT  
		Size: 4.1 KB (4106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:957bc408190bc6f73bb44d2b0606243d737e03780189ad1baf3c05b028493f54`  
		Last Modified: Tue, 10 Oct 2017 07:06:50 GMT  
		Size: 921.4 KB (921402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d46f79aaf675c9e2fda7e382e77ce88e43884f112038793c9e0e9d25f1a0828`  
		Last Modified: Tue, 10 Oct 2017 07:06:53 GMT  
		Size: 25.5 MB (25493330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626684a94b11097452c1b15def3c9d8802a40616032986b8b84a04d34dd1120a`  
		Last Modified: Tue, 10 Oct 2017 07:06:50 GMT  
		Size: 6.9 MB (6854550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf606bd05995800423fd3e922bd6efd3baf29c2d88b57db07c1098fe2451574`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b15efc3e31f84b775c79b2aa119d68a48e6c3d7ce14f9187e5b0dddc6f9a358`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5924fbba6050d17c40d7dd386e70e472517b4a2eec0d27ac4dbfe0023e38db6d`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e902f69d01855798e105bebdc64e30c4fbb70d1930bb2e6b6a6eca7fc671a3`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 3.9 KB (3945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f553e16e25ddf1bbbcc56cbabbebf2c26914e5f961721b0f3ca2f8e6bb8585`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf08c64d1240afbbc8f1867689f2e2e8b46e68320c438032e8669817fbeada5`  
		Last Modified: Tue, 10 Oct 2017 07:07:18 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; s390x

```console
$ docker pull rabbitmq@sha256:31f94a778a470be6cc97a7f74e2ddf1e8758ed90e12020ae4f54ec0d32997692
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60365539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6213df3f90e6dff86c41949235dea8c71ba5e48dde5c7317fc6c6b4f80d4e1ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:35 GMT
ADD file:ae4aaa6affe22f36ab5478771d5c84917f72de7a8dac16345a035709a1a5edf4 in / 
# Mon, 09 Oct 2017 21:44:36 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:45:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:45:08 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Mon, 09 Oct 2017 23:45:08 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:45:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:46:10 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:46:10 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 09 Oct 2017 23:46:11 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 23:46:11 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 09 Oct 2017 23:46:11 GMT
ENV RABBITMQ_VERSION=3.6.12
# Mon, 09 Oct 2017 23:46:11 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Mon, 09 Oct 2017 23:46:11 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Thu, 12 Oct 2017 18:28:22 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 12 Oct 2017 18:28:22 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 12 Oct 2017 18:28:23 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 12 Oct 2017 18:28:23 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 12 Oct 2017 18:28:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 12 Oct 2017 18:28:25 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 12 Oct 2017 18:28:25 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Thu, 12 Oct 2017 18:28:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 12 Oct 2017 18:28:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 18:28:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 12 Oct 2017 18:28:26 GMT
CMD ["rabbitmq-server"]
# Thu, 12 Oct 2017 18:28:34 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 12 Oct 2017 18:28:34 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:671716cc49517eef5f430c695ce344d63e390cb65f58d30939f2ba615c953686`  
		Last Modified: Mon, 09 Oct 2017 21:49:09 GMT  
		Size: 22.3 MB (22339951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7bcde3ab4d109ca30e7e6be1a5401b63c4473f9291ca2356407b66a5954522`  
		Last Modified: Thu, 12 Oct 2017 18:28:47 GMT  
		Size: 4.5 MB (4530291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d7d4a53e870f537ea989232055702c6711b51f7e2dfb049e984c8c90dfd1ff`  
		Last Modified: Thu, 12 Oct 2017 18:28:45 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0281f6547f5cfef34cf6e59c1935efd9423b30c49a97caa55b3299e965d3504`  
		Last Modified: Thu, 12 Oct 2017 18:28:45 GMT  
		Size: 938.1 KB (938055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fafa52e7299e0f68764a55b921d99192a861054cd9a421fce048ffa6787151ce`  
		Last Modified: Thu, 12 Oct 2017 18:28:49 GMT  
		Size: 25.6 MB (25619471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb1eb7de62ab431186ef3d571bec4f6364ebab824f5d662b4d0c3c36e36020b`  
		Last Modified: Thu, 12 Oct 2017 18:28:46 GMT  
		Size: 6.9 MB (6926912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a40bc6f8cdb17c86c0d43fe9b56c730e09f20d6b1fa12fa0f6f0eaa27ec5b50`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0462e482b612a854287aa487e8a3121c6b273608871a405c72bd80c0192d2818`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f7cbcbc2d86d2a53a53aee388820237f920bb3320490596a821948322a7317`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1251546aac265bb12405e223deb1e938190b57d03c8903038f920d9ae9c9bb62`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 3.9 KB (3942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3199db4d2641323733c96fd746db50df2d357ef80d6a38c8dbe5e2baebefbdb6`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cb5e3e86125cb37892a49c2202a242a302e8435ef9139e549ab9a53b026cd9`  
		Last Modified: Thu, 12 Oct 2017 18:29:06 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management-alpine`

```console
$ docker pull rabbitmq@sha256:46a7f53f84b6508b03212a1d1151aa89de09ee3a77715277f88288a940a68b0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:283b76d23002526e7b75b3b2268d999e8ba8373ff13a9a54ed504ef0c548ba6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23557341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be775004faceb2d5fd71f989bd403debfc9297f72a0d4635ed2e51311c69e6b4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 01:47:34 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 19 Sep 2017 01:47:38 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 19 Sep 2017 01:47:44 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 19 Sep 2017 01:47:44 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 19 Sep 2017 01:47:44 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 19 Sep 2017 01:47:44 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 00:49:13 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 00:49:13 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 00:49:13 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 00:49:25 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 26 Sep 2017 00:49:25 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 00:49:25 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 00:49:26 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 00:49:27 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 00:49:28 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 13 Oct 2017 23:41:04 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Fri, 13 Oct 2017 23:41:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 23:41:04 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 13 Oct 2017 23:41:04 GMT
CMD ["rabbitmq-server"]
# Fri, 13 Oct 2017 23:41:14 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 13 Oct 2017 23:41:14 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b35056c6845499c25bf0eafef5dbc120c9c37f6c50dfcb4627b51c0231603c18`  
		Last Modified: Tue, 19 Sep 2017 01:49:18 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70586150e9099e145e62a41f0ff5589c0f12c8c9cbab9bc2dbd40a97c353b51`  
		Last Modified: Tue, 19 Sep 2017 01:49:18 GMT  
		Size: 8.2 KB (8220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfffd127a85fa5ecc0db41a94cf22b88b6a161b577809181246e2e28700875ff`  
		Last Modified: Tue, 19 Sep 2017 01:49:21 GMT  
		Size: 16.5 MB (16540643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf157c5d932b2f37744919af62c626e6b0910550f724286975a91aadf3d22205`  
		Last Modified: Tue, 26 Sep 2017 00:51:01 GMT  
		Size: 5.0 MB (5012132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69365f61532d8eba60c5394dabec3f9c0038c8149eca1995f15fdf50bc68e1c4`  
		Last Modified: Tue, 26 Sep 2017 00:51:00 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8d26e15c29717fa296797e41f846f8d1af0f8b2802708e30428fb2d9a75d8c`  
		Last Modified: Tue, 26 Sep 2017 00:51:00 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb4cf70df1a3e43ec14cefee13b73ad3ae61605ebc3a8a29d85dd5c49cc8e43`  
		Last Modified: Tue, 26 Sep 2017 00:51:00 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31aadf17fdb7f906af653798039fc5e0daaabf39092d24c121423e6fe611a6b`  
		Last Modified: Fri, 13 Oct 2017 23:42:36 GMT  
		Size: 4.0 KB (4041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca54a49e6f2610c797d20ed2cdbb130299530167b6caa52fd73397dd5eb4be15`  
		Last Modified: Fri, 13 Oct 2017 23:43:11 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-alpine`

```console
$ docker pull rabbitmq@sha256:b23ec6a61fcca6e680a4edb33ed676fc6c6351a1c589255eb2d4d810319db8a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:0ee8c209442107549dd0c585eadf828089d4a4cb564c77c2822b5ef41eb88276
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23557148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0ea1f4af6f42a728fdda03d11f8b46a99930e075d06848fb5d1c53db4931bb5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 01:47:34 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 19 Sep 2017 01:47:38 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 19 Sep 2017 01:47:44 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 19 Sep 2017 01:47:44 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 19 Sep 2017 01:47:44 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 19 Sep 2017 01:47:44 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 00:49:13 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 00:49:13 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 00:49:13 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 00:49:25 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 26 Sep 2017 00:49:25 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 00:49:25 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 00:49:26 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 00:49:27 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 00:49:28 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 13 Oct 2017 23:41:04 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Fri, 13 Oct 2017 23:41:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 23:41:04 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 13 Oct 2017 23:41:04 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b35056c6845499c25bf0eafef5dbc120c9c37f6c50dfcb4627b51c0231603c18`  
		Last Modified: Tue, 19 Sep 2017 01:49:18 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70586150e9099e145e62a41f0ff5589c0f12c8c9cbab9bc2dbd40a97c353b51`  
		Last Modified: Tue, 19 Sep 2017 01:49:18 GMT  
		Size: 8.2 KB (8220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfffd127a85fa5ecc0db41a94cf22b88b6a161b577809181246e2e28700875ff`  
		Last Modified: Tue, 19 Sep 2017 01:49:21 GMT  
		Size: 16.5 MB (16540643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf157c5d932b2f37744919af62c626e6b0910550f724286975a91aadf3d22205`  
		Last Modified: Tue, 26 Sep 2017 00:51:01 GMT  
		Size: 5.0 MB (5012132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69365f61532d8eba60c5394dabec3f9c0038c8149eca1995f15fdf50bc68e1c4`  
		Last Modified: Tue, 26 Sep 2017 00:51:00 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8d26e15c29717fa296797e41f846f8d1af0f8b2802708e30428fb2d9a75d8c`  
		Last Modified: Tue, 26 Sep 2017 00:51:00 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb4cf70df1a3e43ec14cefee13b73ad3ae61605ebc3a8a29d85dd5c49cc8e43`  
		Last Modified: Tue, 26 Sep 2017 00:51:00 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31aadf17fdb7f906af653798039fc5e0daaabf39092d24c121423e6fe611a6b`  
		Last Modified: Fri, 13 Oct 2017 23:42:36 GMT  
		Size: 4.0 KB (4041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management`

```console
$ docker pull rabbitmq@sha256:4d173dac5e05557e9ea9fd75bddc51fa69c54c4908436e25dd4f42c57bcf5bd6
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

### `rabbitmq:3-management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:40a956f5198d4d2050d1545dc48bf38b5e0342c33d10bcd04c9e0a7e7bc851af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62852369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ac724eab06670229b033f2516a2e3af2cdfb453495a9bbb040fea13b398ab5f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:42 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Mon, 09 Oct 2017 21:33:43 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:41:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:41:43 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 02:41:43 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:42:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 02:42:40 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:42:41 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 02:42:41 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 02:42:41 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 02:42:41 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 02:42:41 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 02:42:42 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 02:43:16 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:43:16 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 02:43:17 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 02:43:17 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 02:43:18 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 02:43:19 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 13 Oct 2017 23:40:43 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Fri, 13 Oct 2017 23:40:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 23:40:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 23:40:45 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 13 Oct 2017 23:40:45 GMT
CMD ["rabbitmq-server"]
# Fri, 13 Oct 2017 23:40:56 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 13 Oct 2017 23:40:57 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e65f0b00e4cfb1535d0f4e7a63707172ae63483fb33140d777614f199afcb36`  
		Last Modified: Tue, 10 Oct 2017 02:43:59 GMT  
		Size: 4.5 MB (4498726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2bd803179890909fcae186044c0e6ca1bc1d34e5fc05ef1ccea823e7be97540`  
		Last Modified: Tue, 10 Oct 2017 02:43:57 GMT  
		Size: 4.1 KB (4069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b05ca8302833edf783c50f03cd7ba0b8e12bc872b053eda3e3ae7e1f17e2b4b`  
		Last Modified: Tue, 10 Oct 2017 02:43:58 GMT  
		Size: 952.1 KB (952058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bb5a4bbcce5a040eb83057f9e93d17663bb123f4e98168457444497f7d17b70`  
		Last Modified: Tue, 10 Oct 2017 02:44:03 GMT  
		Size: 27.7 MB (27703883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf840d8999f6fe46a162974c82378c38b3cf3dcccbbaff848c0fb199988aebe0`  
		Last Modified: Tue, 10 Oct 2017 02:44:00 GMT  
		Size: 7.2 MB (7194403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be339ca44883b1990e52771487402163d398a279755a501fdd8891ec71cf09d0`  
		Last Modified: Tue, 10 Oct 2017 02:43:55 GMT  
		Size: 2.3 KB (2258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce35cd9f9b5b917868095b3b074dd23d18e0e266f3ee68ff95e2c61467299812`  
		Last Modified: Tue, 10 Oct 2017 02:43:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4fe32a0a00d916ed4d632aae71d35d9d0baa5e5910d6bd179a24071c35bedb0`  
		Last Modified: Tue, 10 Oct 2017 02:43:55 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77408ca9e94eb4bfeb346ab10c602857525802c2279e7c6995fcdbc90269444a`  
		Last Modified: Fri, 13 Oct 2017 23:41:26 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db03407a1aba1c0a89dffe960394aae639885702e3faa65271b918c36c7905cd`  
		Last Modified: Fri, 13 Oct 2017 23:41:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b908f008ac2afe6632caccd124e3ee9bffd5ebcdb8ca5ca84ae7e014305e460f`  
		Last Modified: Fri, 13 Oct 2017 23:42:01 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:9d8a89e9d5a9031b8a39ececf246b566b1af757e935233c850c84acce1b51633
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.4 MB (58432473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89511696e456f44d70f501b50be7fce142db50b5f46f4c033b875af70bfd771c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:48 GMT
ADD file:ff9945b48b1ac236dcec24eb9dfaf52b7c151a3b11c8502391f0866dfb4e3ac3 in / 
# Mon, 09 Oct 2017 21:44:48 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:18:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:18:11 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 00:18:11 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:18:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 00:18:58 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:18:58 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 00:18:58 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:18:59 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 00:18:59 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 00:18:59 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 00:18:59 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 00:19:26 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:19:26 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 00:19:27 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 00:19:28 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 00:19:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 00:19:30 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 00:19:30 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:19:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 00:19:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:19:32 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 00:19:33 GMT
CMD ["rabbitmq-server"]
# Tue, 10 Oct 2017 00:19:50 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 10 Oct 2017 00:19:50 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:836d5b6056a9815be79c76480a90299267f60201bd1e3396817003e6c14819cc`  
		Last Modified: Mon, 09 Oct 2017 21:50:56 GMT  
		Size: 21.2 MB (21166251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb896fba83bd09a35c68457554b35289860c23c46f27a8c3ef42f13146ebba1`  
		Last Modified: Tue, 10 Oct 2017 00:20:01 GMT  
		Size: 4.2 MB (4231979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61827a16c114b9741d761aa4c60a972ffe1e0b60147794e86b05653d67822e91`  
		Last Modified: Tue, 10 Oct 2017 00:20:00 GMT  
		Size: 4.1 KB (4079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:877cd9511def30e56a5ce354e145e8a2b1a93daaae7eaaa42dc4219838aa1743`  
		Last Modified: Tue, 10 Oct 2017 00:20:00 GMT  
		Size: 942.8 KB (942752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea9e378899e98c99e93ae2d0874bd5d89e24134bd14a19c285bdf39a0a42ade`  
		Last Modified: Tue, 10 Oct 2017 00:20:05 GMT  
		Size: 25.2 MB (25170810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbc82a29314b16531aa2172ac523ba535e3678f85efdd699164fbb0241ab8b62`  
		Last Modified: Tue, 10 Oct 2017 00:20:01 GMT  
		Size: 6.9 MB (6909811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58c44a3d016cf9de95021782180a42d3660e20fc7d8e92a7fe5ce9ede7928ca2`  
		Last Modified: Tue, 10 Oct 2017 00:19:59 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8abfdcdd98b40291ad91791bea09bf277e75c3669c6607c7891b09130101bfa3`  
		Last Modified: Tue, 10 Oct 2017 00:19:58 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a72811da4bf8ca8a2d06cdc182aa54116bb12133e8d82ef2b018a8de29ed74`  
		Last Modified: Tue, 10 Oct 2017 00:19:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d85bf4fc0617472a84b0aa86f36164826f7a34ec4239d845d29676b3b22164`  
		Last Modified: Tue, 10 Oct 2017 00:19:58 GMT  
		Size: 3.9 KB (3946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d379089da98fec4c83792f8f2ebcd33826a381d3523c9e2eda5dcb91e322aa9`  
		Last Modified: Tue, 10 Oct 2017 00:19:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54861e1463a8e17fb2fb96ec1e018121982b309089550b749b1ca28f4cd1244`  
		Last Modified: Tue, 10 Oct 2017 00:20:21 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:d3e631f740deddb3ce8938266edfa623dda238f0954ec4b90b6bd61174eb34b1
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55689734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5960d86042dfc4ac8155e62d27f19369f43b8883378c26bf64fd2ac274f44a74`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:08:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:08:15 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 00:08:16 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:08:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 00:09:07 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:09:07 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 00:09:08 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:09:08 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 00:09:08 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 00:09:08 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 00:09:09 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 00:09:31 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:09:31 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 00:09:32 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 00:09:33 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 00:09:34 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 00:09:36 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 00:09:36 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:09:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 00:09:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:09:39 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 00:09:39 GMT
CMD ["rabbitmq-server"]
# Tue, 10 Oct 2017 00:09:56 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 10 Oct 2017 00:09:57 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:59e81a3fde58ec8d4b8f2f58b98ef2f4d951d37dd9b99b016fd294a8e07d7796`  
		Last Modified: Mon, 09 Oct 2017 21:52:49 GMT  
		Size: 19.3 MB (19277135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb84cf14a797e0c36a5062e5815b71c4fd0093413f105b27624939375150f03b`  
		Last Modified: Tue, 10 Oct 2017 00:10:13 GMT  
		Size: 3.9 MB (3869005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cce9319434844ff1c14610356c4336192046612fdff57f5c8678595702002c`  
		Last Modified: Tue, 10 Oct 2017 00:10:11 GMT  
		Size: 4.1 KB (4080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5463321259d892fda42d7201a40fbc05a78196e4895d7b17e06c85ecd091e62b`  
		Last Modified: Tue, 10 Oct 2017 00:10:12 GMT  
		Size: 926.5 KB (926471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bca1a117250e4e46e6d6aea3a4770f8119d72d505036090ee102abd9705e9b`  
		Last Modified: Tue, 10 Oct 2017 00:10:17 GMT  
		Size: 24.8 MB (24785804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab9316ca3e99e9664fe5eb97360822a9f8191a29c3e5b7a7966b6254b889d7a`  
		Last Modified: Tue, 10 Oct 2017 00:10:15 GMT  
		Size: 6.8 MB (6820453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f593867a4cdb0f406669620054471236973b620f178316670b74fc83fb1359`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a81744440a17e6df84509c55d5e0dae88230c113b348b511037cd38796c68d1`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc4ed0a5303f5e5db5f73224fa321f58305866f346c7d59238dcbeca1e1b35f`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690fb2e5911d59600356c772de869979c0a9c4ebd8a259ca374efb06382a56bf`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 3.9 KB (3943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0994a01c76d5feb217978c6cb5e96037b856c0fe96c98715f4ae4367886c9af3`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546c4b6abd26cf03113d58139dab8fcc9d98d3c9e917e8933d27a788c32869b5`  
		Last Modified: Tue, 10 Oct 2017 00:10:39 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:c804f14dcc3e67b035e830ce81c351f0a06aa2a5ef1be33d3df28f3a0f99588c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57278470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ba6b5bab9677666323807cb8a6ee429c2b4ab8ece5f5a5ad15da447522197a6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 04:57:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 04:57:04 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 04:57:05 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 04:57:37 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 04:58:35 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 04:58:36 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 04:58:37 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 04:58:37 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 04:58:38 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 04:58:39 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 04:58:39 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 05:00:22 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:00:23 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 05:00:25 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 05:00:26 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 05:00:28 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 05:00:31 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 05:00:32 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 05:00:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 05:00:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 05:00:36 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 05:00:37 GMT
CMD ["rabbitmq-server"]
# Tue, 10 Oct 2017 05:00:52 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 10 Oct 2017 05:00:53 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:e907afd6e25615a4d3eb554d930cef57b87e79ec82413889c2eac38beb4eb8f7`  
		Last Modified: Mon, 09 Oct 2017 22:03:08 GMT  
		Size: 20.3 MB (20337143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a5e6d35928560b933b85b5a3f2a8e96b4520fbb8df138b3e739e56d0c1f355`  
		Last Modified: Tue, 10 Oct 2017 05:01:18 GMT  
		Size: 4.1 MB (4073554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a862ab821b342790326492507ca5d70bfb7016bef765606193f1f7139f60c5ed`  
		Last Modified: Tue, 10 Oct 2017 05:01:14 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92799a54920b79013733790e444f13d8c65faa29c79cbdaf1bc8af85f637a233`  
		Last Modified: Tue, 10 Oct 2017 05:01:14 GMT  
		Size: 919.5 KB (919487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b119999eef1bcadabedd3a5319b03c6b83ede91ba8535059851547d3433b205`  
		Last Modified: Tue, 10 Oct 2017 05:01:19 GMT  
		Size: 25.0 MB (25042572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e62f8525a3a982a102aa37bb3313876195b15d8781cd253ed238dd2b9dff151`  
		Last Modified: Tue, 10 Oct 2017 05:01:15 GMT  
		Size: 6.9 MB (6894852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc028e70f04f6ea4365223a1cfe4e5c4384d5921acac419f3c170b148f7c7bf`  
		Last Modified: Tue, 10 Oct 2017 05:01:10 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e99faa03c2a8a272f56208c644c12b384b69dea50be6da9f6be400c14b945c`  
		Last Modified: Tue, 10 Oct 2017 05:01:12 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8fa260bcaa52d81ba20c11111f8d15bab954b17b48666724536c604220d94e`  
		Last Modified: Tue, 10 Oct 2017 05:01:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f88b9d1f075e6bf61f09cc09d798a29acd6e17f5a269c2014b4ff69b8f7834d`  
		Last Modified: Tue, 10 Oct 2017 05:01:11 GMT  
		Size: 3.9 KB (3944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2263263deeda5e4a4bcf0bada5587f1838cf344dfa3f3c8ccb1b7ccebac51324`  
		Last Modified: Tue, 10 Oct 2017 05:01:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b54c33fccff78e94a9516731142de6d28bb0344fdd3365c7db35880214ea66ee`  
		Last Modified: Tue, 10 Oct 2017 05:02:11 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; 386

```console
$ docker pull rabbitmq@sha256:a5cb6f9c959f0088ebd46624dc64ac01b93462640476b9c4bf946a205840116e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63903054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:361f6b95c5a010c046a6e280d2ad48eeef070a4b98bfefc42cb6e3bb10788afe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:36 GMT
ADD file:6582536277127947668f7bfdc1471a4e36170915b91a4cb841e7e1bfa1de6535 in / 
# Mon, 09 Oct 2017 21:45:36 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:25:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:25:35 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 02:25:35 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:25:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 02:26:18 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:26:18 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 02:26:19 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 02:26:19 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 02:26:19 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 02:26:20 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 02:26:20 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 02:27:12 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:27:12 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 02:27:13 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 02:27:13 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 02:27:14 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 02:27:15 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 02:27:15 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:27:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 02:27:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:27:16 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 02:27:17 GMT
CMD ["rabbitmq-server"]
# Tue, 10 Oct 2017 02:27:26 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 10 Oct 2017 02:27:27 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:b2b52fe46b29fe5d0689f26449c2114e40f0731d4ce3eb8c3941397b74205432`  
		Last Modified: Mon, 09 Oct 2017 21:53:42 GMT  
		Size: 23.1 MB (23128678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd56a7a1b23cba5ba31ffca4c1bd92c67baada83c1cccc6a39804b4bffccfde`  
		Last Modified: Tue, 10 Oct 2017 02:27:38 GMT  
		Size: 4.8 MB (4803931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5d99e72ac84835e308ec1af65659ef2c54b73366b5284dcf72ec2ae2a8be85`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 4.1 KB (4052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bb0b0cf4cc9d3eaa2a5d66c42a5887057caa974ed019f672c76359e5c56134`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 931.6 KB (931603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93c01cd1734bd61603408f604f963f4b669d89bbd45ccc941246e0defadf8b0`  
		Last Modified: Tue, 10 Oct 2017 02:27:41 GMT  
		Size: 27.8 MB (27818777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab6c121037963c174b576775a6333c56a529233771314b4dd8b3eeb8ff17e0d`  
		Last Modified: Tue, 10 Oct 2017 02:27:38 GMT  
		Size: 7.2 MB (7209220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99a2b13764e2fa2df368b2aeb4d8a42ff3f6cb8baffb126e338f45afa13bb4d`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9cdf701464766405898032d3f1dcd5f15f40b298781b771d58d825fbb54af3`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea9f77a46c316b539d74ca676c8dd927beb201a823d9a3b8ae19bdee9fb91cc5`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8966d25965fc7636f62aefc27e4d0a14a660dee2570d53ee9e74d34f6c00bb6`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 3.9 KB (3947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e319f638428534055f8c4d559bd028e5f2206c74a42187460ade6f9d3cf99c2a`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3f089abe7a89fcdef4b85162da6f8749fbaa599a42d9220199e472ed6fc3c38`  
		Last Modified: Tue, 10 Oct 2017 02:28:12 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:82446252c3d1100ab3b515f8ad81700e29c1b24b7524ebd462f1b1842a0e79d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60387663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab9b9d4ae3120cecfdb9b5238a00a9a697a151799d0f4392ec8d17cf151f4b4a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:56 GMT
ADD file:7edf73437495be24244c16841b563be06c15452963f41ac940fb5e105ed96027 in / 
# Mon, 09 Oct 2017 21:45:58 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 06:53:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:53:40 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 06:53:45 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 06:56:06 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 07:01:10 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:01:13 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 07:01:15 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:01:18 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 07:01:22 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 07:01:25 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 07:01:29 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 07:04:54 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:04:58 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 07:05:09 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 07:05:13 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 07:05:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 07:05:33 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 07:05:35 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 07:05:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 07:05:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 07:05:52 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 07:05:57 GMT
CMD ["rabbitmq-server"]
# Tue, 10 Oct 2017 07:06:25 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 10 Oct 2017 07:06:30 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:c4860466fa1e6824151f4fa3a51ef0e9d7d3c3ba860e21d94e69988b65601260`  
		Last Modified: Mon, 09 Oct 2017 21:52:59 GMT  
		Size: 22.7 MB (22746217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8714f956af621d487bb938f0c4ee79429b72e372b6090ef06ebebcbb559daace`  
		Last Modified: Tue, 10 Oct 2017 07:06:52 GMT  
		Size: 4.4 MB (4361267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0aae6367725c08eba421b48b8f34430348bc57365851fe72accc2298bc51b8e`  
		Last Modified: Tue, 10 Oct 2017 07:06:50 GMT  
		Size: 4.1 KB (4106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:957bc408190bc6f73bb44d2b0606243d737e03780189ad1baf3c05b028493f54`  
		Last Modified: Tue, 10 Oct 2017 07:06:50 GMT  
		Size: 921.4 KB (921402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d46f79aaf675c9e2fda7e382e77ce88e43884f112038793c9e0e9d25f1a0828`  
		Last Modified: Tue, 10 Oct 2017 07:06:53 GMT  
		Size: 25.5 MB (25493330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626684a94b11097452c1b15def3c9d8802a40616032986b8b84a04d34dd1120a`  
		Last Modified: Tue, 10 Oct 2017 07:06:50 GMT  
		Size: 6.9 MB (6854550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf606bd05995800423fd3e922bd6efd3baf29c2d88b57db07c1098fe2451574`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b15efc3e31f84b775c79b2aa119d68a48e6c3d7ce14f9187e5b0dddc6f9a358`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5924fbba6050d17c40d7dd386e70e472517b4a2eec0d27ac4dbfe0023e38db6d`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e902f69d01855798e105bebdc64e30c4fbb70d1930bb2e6b6a6eca7fc671a3`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 3.9 KB (3945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f553e16e25ddf1bbbcc56cbabbebf2c26914e5f961721b0f3ca2f8e6bb8585`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf08c64d1240afbbc8f1867689f2e2e8b46e68320c438032e8669817fbeada5`  
		Last Modified: Tue, 10 Oct 2017 07:07:18 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; s390x

```console
$ docker pull rabbitmq@sha256:31f94a778a470be6cc97a7f74e2ddf1e8758ed90e12020ae4f54ec0d32997692
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60365539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6213df3f90e6dff86c41949235dea8c71ba5e48dde5c7317fc6c6b4f80d4e1ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:35 GMT
ADD file:ae4aaa6affe22f36ab5478771d5c84917f72de7a8dac16345a035709a1a5edf4 in / 
# Mon, 09 Oct 2017 21:44:36 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:45:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:45:08 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Mon, 09 Oct 2017 23:45:08 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:45:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:46:10 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:46:10 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 09 Oct 2017 23:46:11 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 23:46:11 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 09 Oct 2017 23:46:11 GMT
ENV RABBITMQ_VERSION=3.6.12
# Mon, 09 Oct 2017 23:46:11 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Mon, 09 Oct 2017 23:46:11 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Thu, 12 Oct 2017 18:28:22 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 12 Oct 2017 18:28:22 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 12 Oct 2017 18:28:23 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 12 Oct 2017 18:28:23 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 12 Oct 2017 18:28:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 12 Oct 2017 18:28:25 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 12 Oct 2017 18:28:25 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Thu, 12 Oct 2017 18:28:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 12 Oct 2017 18:28:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 18:28:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 12 Oct 2017 18:28:26 GMT
CMD ["rabbitmq-server"]
# Thu, 12 Oct 2017 18:28:34 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 12 Oct 2017 18:28:34 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:671716cc49517eef5f430c695ce344d63e390cb65f58d30939f2ba615c953686`  
		Last Modified: Mon, 09 Oct 2017 21:49:09 GMT  
		Size: 22.3 MB (22339951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7bcde3ab4d109ca30e7e6be1a5401b63c4473f9291ca2356407b66a5954522`  
		Last Modified: Thu, 12 Oct 2017 18:28:47 GMT  
		Size: 4.5 MB (4530291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d7d4a53e870f537ea989232055702c6711b51f7e2dfb049e984c8c90dfd1ff`  
		Last Modified: Thu, 12 Oct 2017 18:28:45 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0281f6547f5cfef34cf6e59c1935efd9423b30c49a97caa55b3299e965d3504`  
		Last Modified: Thu, 12 Oct 2017 18:28:45 GMT  
		Size: 938.1 KB (938055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fafa52e7299e0f68764a55b921d99192a861054cd9a421fce048ffa6787151ce`  
		Last Modified: Thu, 12 Oct 2017 18:28:49 GMT  
		Size: 25.6 MB (25619471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb1eb7de62ab431186ef3d571bec4f6364ebab824f5d662b4d0c3c36e36020b`  
		Last Modified: Thu, 12 Oct 2017 18:28:46 GMT  
		Size: 6.9 MB (6926912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a40bc6f8cdb17c86c0d43fe9b56c730e09f20d6b1fa12fa0f6f0eaa27ec5b50`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0462e482b612a854287aa487e8a3121c6b273608871a405c72bd80c0192d2818`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f7cbcbc2d86d2a53a53aee388820237f920bb3320490596a821948322a7317`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1251546aac265bb12405e223deb1e938190b57d03c8903038f920d9ae9c9bb62`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 3.9 KB (3942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3199db4d2641323733c96fd746db50df2d357ef80d6a38c8dbe5e2baebefbdb6`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cb5e3e86125cb37892a49c2202a242a302e8435ef9139e549ab9a53b026cd9`  
		Last Modified: Thu, 12 Oct 2017 18:29:06 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management-alpine`

```console
$ docker pull rabbitmq@sha256:46a7f53f84b6508b03212a1d1151aa89de09ee3a77715277f88288a940a68b0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:283b76d23002526e7b75b3b2268d999e8ba8373ff13a9a54ed504ef0c548ba6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23557341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be775004faceb2d5fd71f989bd403debfc9297f72a0d4635ed2e51311c69e6b4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 01:47:34 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 19 Sep 2017 01:47:38 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 19 Sep 2017 01:47:44 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 19 Sep 2017 01:47:44 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 19 Sep 2017 01:47:44 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 19 Sep 2017 01:47:44 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 00:49:13 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 00:49:13 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 00:49:13 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 00:49:25 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 26 Sep 2017 00:49:25 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 00:49:25 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 00:49:26 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 00:49:27 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 00:49:28 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 13 Oct 2017 23:41:04 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Fri, 13 Oct 2017 23:41:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 23:41:04 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 13 Oct 2017 23:41:04 GMT
CMD ["rabbitmq-server"]
# Fri, 13 Oct 2017 23:41:14 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 13 Oct 2017 23:41:14 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b35056c6845499c25bf0eafef5dbc120c9c37f6c50dfcb4627b51c0231603c18`  
		Last Modified: Tue, 19 Sep 2017 01:49:18 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70586150e9099e145e62a41f0ff5589c0f12c8c9cbab9bc2dbd40a97c353b51`  
		Last Modified: Tue, 19 Sep 2017 01:49:18 GMT  
		Size: 8.2 KB (8220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfffd127a85fa5ecc0db41a94cf22b88b6a161b577809181246e2e28700875ff`  
		Last Modified: Tue, 19 Sep 2017 01:49:21 GMT  
		Size: 16.5 MB (16540643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf157c5d932b2f37744919af62c626e6b0910550f724286975a91aadf3d22205`  
		Last Modified: Tue, 26 Sep 2017 00:51:01 GMT  
		Size: 5.0 MB (5012132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69365f61532d8eba60c5394dabec3f9c0038c8149eca1995f15fdf50bc68e1c4`  
		Last Modified: Tue, 26 Sep 2017 00:51:00 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8d26e15c29717fa296797e41f846f8d1af0f8b2802708e30428fb2d9a75d8c`  
		Last Modified: Tue, 26 Sep 2017 00:51:00 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb4cf70df1a3e43ec14cefee13b73ad3ae61605ebc3a8a29d85dd5c49cc8e43`  
		Last Modified: Tue, 26 Sep 2017 00:51:00 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31aadf17fdb7f906af653798039fc5e0daaabf39092d24c121423e6fe611a6b`  
		Last Modified: Fri, 13 Oct 2017 23:42:36 GMT  
		Size: 4.0 KB (4041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca54a49e6f2610c797d20ed2cdbb130299530167b6caa52fd73397dd5eb4be15`  
		Last Modified: Fri, 13 Oct 2017 23:43:11 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:alpine`

```console
$ docker pull rabbitmq@sha256:b23ec6a61fcca6e680a4edb33ed676fc6c6351a1c589255eb2d4d810319db8a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:0ee8c209442107549dd0c585eadf828089d4a4cb564c77c2822b5ef41eb88276
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23557148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0ea1f4af6f42a728fdda03d11f8b46a99930e075d06848fb5d1c53db4931bb5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 01:47:34 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 19 Sep 2017 01:47:38 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 19 Sep 2017 01:47:44 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 19 Sep 2017 01:47:44 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 19 Sep 2017 01:47:44 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 19 Sep 2017 01:47:44 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 00:49:13 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 00:49:13 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 00:49:13 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 00:49:25 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 26 Sep 2017 00:49:25 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 00:49:25 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 00:49:26 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 00:49:27 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 00:49:28 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 13 Oct 2017 23:41:04 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Fri, 13 Oct 2017 23:41:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 23:41:04 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 13 Oct 2017 23:41:04 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b35056c6845499c25bf0eafef5dbc120c9c37f6c50dfcb4627b51c0231603c18`  
		Last Modified: Tue, 19 Sep 2017 01:49:18 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70586150e9099e145e62a41f0ff5589c0f12c8c9cbab9bc2dbd40a97c353b51`  
		Last Modified: Tue, 19 Sep 2017 01:49:18 GMT  
		Size: 8.2 KB (8220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfffd127a85fa5ecc0db41a94cf22b88b6a161b577809181246e2e28700875ff`  
		Last Modified: Tue, 19 Sep 2017 01:49:21 GMT  
		Size: 16.5 MB (16540643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf157c5d932b2f37744919af62c626e6b0910550f724286975a91aadf3d22205`  
		Last Modified: Tue, 26 Sep 2017 00:51:01 GMT  
		Size: 5.0 MB (5012132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69365f61532d8eba60c5394dabec3f9c0038c8149eca1995f15fdf50bc68e1c4`  
		Last Modified: Tue, 26 Sep 2017 00:51:00 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8d26e15c29717fa296797e41f846f8d1af0f8b2802708e30428fb2d9a75d8c`  
		Last Modified: Tue, 26 Sep 2017 00:51:00 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb4cf70df1a3e43ec14cefee13b73ad3ae61605ebc3a8a29d85dd5c49cc8e43`  
		Last Modified: Tue, 26 Sep 2017 00:51:00 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31aadf17fdb7f906af653798039fc5e0daaabf39092d24c121423e6fe611a6b`  
		Last Modified: Fri, 13 Oct 2017 23:42:36 GMT  
		Size: 4.0 KB (4041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:latest`

```console
$ docker pull rabbitmq@sha256:23c16060375b7e91eda8a42e04869d3526ecbf6b01316e0170f76fc767a0d3ab
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

### `rabbitmq:latest` - linux; amd64

```console
$ docker pull rabbitmq@sha256:b99e238fa99bcd7ffcfd89a536fdf33bbd27e206cea118246874e3792ebfc2bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62852177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e186865bff877f181c4a4b4ffdb7235e91c0c988bdc0c926d1b68e5d8c81e45`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:42 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Mon, 09 Oct 2017 21:33:43 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:41:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:41:43 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 02:41:43 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:42:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 02:42:40 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:42:41 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 02:42:41 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 02:42:41 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 02:42:41 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 02:42:41 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 02:42:42 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 02:43:16 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:43:16 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 02:43:17 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 02:43:17 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 02:43:18 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 02:43:19 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 13 Oct 2017 23:40:43 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Fri, 13 Oct 2017 23:40:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 23:40:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 23:40:45 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 13 Oct 2017 23:40:45 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e65f0b00e4cfb1535d0f4e7a63707172ae63483fb33140d777614f199afcb36`  
		Last Modified: Tue, 10 Oct 2017 02:43:59 GMT  
		Size: 4.5 MB (4498726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2bd803179890909fcae186044c0e6ca1bc1d34e5fc05ef1ccea823e7be97540`  
		Last Modified: Tue, 10 Oct 2017 02:43:57 GMT  
		Size: 4.1 KB (4069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b05ca8302833edf783c50f03cd7ba0b8e12bc872b053eda3e3ae7e1f17e2b4b`  
		Last Modified: Tue, 10 Oct 2017 02:43:58 GMT  
		Size: 952.1 KB (952058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bb5a4bbcce5a040eb83057f9e93d17663bb123f4e98168457444497f7d17b70`  
		Last Modified: Tue, 10 Oct 2017 02:44:03 GMT  
		Size: 27.7 MB (27703883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf840d8999f6fe46a162974c82378c38b3cf3dcccbbaff848c0fb199988aebe0`  
		Last Modified: Tue, 10 Oct 2017 02:44:00 GMT  
		Size: 7.2 MB (7194403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be339ca44883b1990e52771487402163d398a279755a501fdd8891ec71cf09d0`  
		Last Modified: Tue, 10 Oct 2017 02:43:55 GMT  
		Size: 2.3 KB (2258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce35cd9f9b5b917868095b3b074dd23d18e0e266f3ee68ff95e2c61467299812`  
		Last Modified: Tue, 10 Oct 2017 02:43:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4fe32a0a00d916ed4d632aae71d35d9d0baa5e5910d6bd179a24071c35bedb0`  
		Last Modified: Tue, 10 Oct 2017 02:43:55 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77408ca9e94eb4bfeb346ab10c602857525802c2279e7c6995fcdbc90269444a`  
		Last Modified: Fri, 13 Oct 2017 23:41:26 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db03407a1aba1c0a89dffe960394aae639885702e3faa65271b918c36c7905cd`  
		Last Modified: Fri, 13 Oct 2017 23:41:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:bab9b6f134a1f774b0dea0f79a92cbd97f9dbce779be1da0ffa2132a38eae878
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.4 MB (58432280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e60d9451429294f26ec13665db84e51574d4cfb1e02353e84cc193deee47d8f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:48 GMT
ADD file:ff9945b48b1ac236dcec24eb9dfaf52b7c151a3b11c8502391f0866dfb4e3ac3 in / 
# Mon, 09 Oct 2017 21:44:48 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:18:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:18:11 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 00:18:11 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:18:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 00:18:58 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:18:58 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 00:18:58 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:18:59 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 00:18:59 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 00:18:59 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 00:18:59 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 00:19:26 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:19:26 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 00:19:27 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 00:19:28 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 00:19:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 00:19:30 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 00:19:30 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:19:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 00:19:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:19:32 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 00:19:33 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:836d5b6056a9815be79c76480a90299267f60201bd1e3396817003e6c14819cc`  
		Last Modified: Mon, 09 Oct 2017 21:50:56 GMT  
		Size: 21.2 MB (21166251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb896fba83bd09a35c68457554b35289860c23c46f27a8c3ef42f13146ebba1`  
		Last Modified: Tue, 10 Oct 2017 00:20:01 GMT  
		Size: 4.2 MB (4231979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61827a16c114b9741d761aa4c60a972ffe1e0b60147794e86b05653d67822e91`  
		Last Modified: Tue, 10 Oct 2017 00:20:00 GMT  
		Size: 4.1 KB (4079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:877cd9511def30e56a5ce354e145e8a2b1a93daaae7eaaa42dc4219838aa1743`  
		Last Modified: Tue, 10 Oct 2017 00:20:00 GMT  
		Size: 942.8 KB (942752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea9e378899e98c99e93ae2d0874bd5d89e24134bd14a19c285bdf39a0a42ade`  
		Last Modified: Tue, 10 Oct 2017 00:20:05 GMT  
		Size: 25.2 MB (25170810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbc82a29314b16531aa2172ac523ba535e3678f85efdd699164fbb0241ab8b62`  
		Last Modified: Tue, 10 Oct 2017 00:20:01 GMT  
		Size: 6.9 MB (6909811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58c44a3d016cf9de95021782180a42d3660e20fc7d8e92a7fe5ce9ede7928ca2`  
		Last Modified: Tue, 10 Oct 2017 00:19:59 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8abfdcdd98b40291ad91791bea09bf277e75c3669c6607c7891b09130101bfa3`  
		Last Modified: Tue, 10 Oct 2017 00:19:58 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a72811da4bf8ca8a2d06cdc182aa54116bb12133e8d82ef2b018a8de29ed74`  
		Last Modified: Tue, 10 Oct 2017 00:19:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d85bf4fc0617472a84b0aa86f36164826f7a34ec4239d845d29676b3b22164`  
		Last Modified: Tue, 10 Oct 2017 00:19:58 GMT  
		Size: 3.9 KB (3946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d379089da98fec4c83792f8f2ebcd33826a381d3523c9e2eda5dcb91e322aa9`  
		Last Modified: Tue, 10 Oct 2017 00:19:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:dac7be86daf31c3661486ada0ef51cb7d235ecc79940fd1c9d5f20f6c059dc3f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55689542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc96e12c3b37655144b49e7c852dd7930d17fa9d3ba82f6cedceeab691d589c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:08:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:08:15 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 00:08:16 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:08:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 00:09:07 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:09:07 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 00:09:08 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:09:08 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 00:09:08 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 00:09:08 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 00:09:09 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 00:09:31 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:09:31 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 00:09:32 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 00:09:33 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 00:09:34 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 00:09:36 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 00:09:36 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:09:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 00:09:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:09:39 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 00:09:39 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:59e81a3fde58ec8d4b8f2f58b98ef2f4d951d37dd9b99b016fd294a8e07d7796`  
		Last Modified: Mon, 09 Oct 2017 21:52:49 GMT  
		Size: 19.3 MB (19277135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb84cf14a797e0c36a5062e5815b71c4fd0093413f105b27624939375150f03b`  
		Last Modified: Tue, 10 Oct 2017 00:10:13 GMT  
		Size: 3.9 MB (3869005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cce9319434844ff1c14610356c4336192046612fdff57f5c8678595702002c`  
		Last Modified: Tue, 10 Oct 2017 00:10:11 GMT  
		Size: 4.1 KB (4080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5463321259d892fda42d7201a40fbc05a78196e4895d7b17e06c85ecd091e62b`  
		Last Modified: Tue, 10 Oct 2017 00:10:12 GMT  
		Size: 926.5 KB (926471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bca1a117250e4e46e6d6aea3a4770f8119d72d505036090ee102abd9705e9b`  
		Last Modified: Tue, 10 Oct 2017 00:10:17 GMT  
		Size: 24.8 MB (24785804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab9316ca3e99e9664fe5eb97360822a9f8191a29c3e5b7a7966b6254b889d7a`  
		Last Modified: Tue, 10 Oct 2017 00:10:15 GMT  
		Size: 6.8 MB (6820453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f593867a4cdb0f406669620054471236973b620f178316670b74fc83fb1359`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a81744440a17e6df84509c55d5e0dae88230c113b348b511037cd38796c68d1`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc4ed0a5303f5e5db5f73224fa321f58305866f346c7d59238dcbeca1e1b35f`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690fb2e5911d59600356c772de869979c0a9c4ebd8a259ca374efb06382a56bf`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 3.9 KB (3943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0994a01c76d5feb217978c6cb5e96037b856c0fe96c98715f4ae4367886c9af3`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:45c554961f9e86443c49ca22ef23a2feb4210c4dd37ef7d3eccca8c08fef0564
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57278278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af95f58e916cbe958e100d817f9b7d9fd161a687c1e0df3238f444778df152a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 04:57:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 04:57:04 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 04:57:05 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 04:57:37 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 04:58:35 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 04:58:36 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 04:58:37 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 04:58:37 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 04:58:38 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 04:58:39 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 04:58:39 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 05:00:22 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:00:23 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 05:00:25 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 05:00:26 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 05:00:28 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 05:00:31 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 05:00:32 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 05:00:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 05:00:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 05:00:36 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 05:00:37 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e907afd6e25615a4d3eb554d930cef57b87e79ec82413889c2eac38beb4eb8f7`  
		Last Modified: Mon, 09 Oct 2017 22:03:08 GMT  
		Size: 20.3 MB (20337143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a5e6d35928560b933b85b5a3f2a8e96b4520fbb8df138b3e739e56d0c1f355`  
		Last Modified: Tue, 10 Oct 2017 05:01:18 GMT  
		Size: 4.1 MB (4073554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a862ab821b342790326492507ca5d70bfb7016bef765606193f1f7139f60c5ed`  
		Last Modified: Tue, 10 Oct 2017 05:01:14 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92799a54920b79013733790e444f13d8c65faa29c79cbdaf1bc8af85f637a233`  
		Last Modified: Tue, 10 Oct 2017 05:01:14 GMT  
		Size: 919.5 KB (919487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b119999eef1bcadabedd3a5319b03c6b83ede91ba8535059851547d3433b205`  
		Last Modified: Tue, 10 Oct 2017 05:01:19 GMT  
		Size: 25.0 MB (25042572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e62f8525a3a982a102aa37bb3313876195b15d8781cd253ed238dd2b9dff151`  
		Last Modified: Tue, 10 Oct 2017 05:01:15 GMT  
		Size: 6.9 MB (6894852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc028e70f04f6ea4365223a1cfe4e5c4384d5921acac419f3c170b148f7c7bf`  
		Last Modified: Tue, 10 Oct 2017 05:01:10 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e99faa03c2a8a272f56208c644c12b384b69dea50be6da9f6be400c14b945c`  
		Last Modified: Tue, 10 Oct 2017 05:01:12 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8fa260bcaa52d81ba20c11111f8d15bab954b17b48666724536c604220d94e`  
		Last Modified: Tue, 10 Oct 2017 05:01:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f88b9d1f075e6bf61f09cc09d798a29acd6e17f5a269c2014b4ff69b8f7834d`  
		Last Modified: Tue, 10 Oct 2017 05:01:11 GMT  
		Size: 3.9 KB (3944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2263263deeda5e4a4bcf0bada5587f1838cf344dfa3f3c8ccb1b7ccebac51324`  
		Last Modified: Tue, 10 Oct 2017 05:01:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; 386

```console
$ docker pull rabbitmq@sha256:279ae861209906237217ab5730e10b16ecebda36773c68a5e27f02e0ce68dced
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63902861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ce639de923d82dab2f843c7eaa5fd32780cddea06530bfd4bc39003b687d2c4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:36 GMT
ADD file:6582536277127947668f7bfdc1471a4e36170915b91a4cb841e7e1bfa1de6535 in / 
# Mon, 09 Oct 2017 21:45:36 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:25:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:25:35 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 02:25:35 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:25:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 02:26:18 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:26:18 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 02:26:19 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 02:26:19 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 02:26:19 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 02:26:20 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 02:26:20 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 02:27:12 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:27:12 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 02:27:13 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 02:27:13 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 02:27:14 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 02:27:15 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 02:27:15 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:27:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 02:27:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:27:16 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 02:27:17 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:b2b52fe46b29fe5d0689f26449c2114e40f0731d4ce3eb8c3941397b74205432`  
		Last Modified: Mon, 09 Oct 2017 21:53:42 GMT  
		Size: 23.1 MB (23128678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd56a7a1b23cba5ba31ffca4c1bd92c67baada83c1cccc6a39804b4bffccfde`  
		Last Modified: Tue, 10 Oct 2017 02:27:38 GMT  
		Size: 4.8 MB (4803931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5d99e72ac84835e308ec1af65659ef2c54b73366b5284dcf72ec2ae2a8be85`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 4.1 KB (4052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bb0b0cf4cc9d3eaa2a5d66c42a5887057caa974ed019f672c76359e5c56134`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 931.6 KB (931603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93c01cd1734bd61603408f604f963f4b669d89bbd45ccc941246e0defadf8b0`  
		Last Modified: Tue, 10 Oct 2017 02:27:41 GMT  
		Size: 27.8 MB (27818777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab6c121037963c174b576775a6333c56a529233771314b4dd8b3eeb8ff17e0d`  
		Last Modified: Tue, 10 Oct 2017 02:27:38 GMT  
		Size: 7.2 MB (7209220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99a2b13764e2fa2df368b2aeb4d8a42ff3f6cb8baffb126e338f45afa13bb4d`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9cdf701464766405898032d3f1dcd5f15f40b298781b771d58d825fbb54af3`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea9f77a46c316b539d74ca676c8dd927beb201a823d9a3b8ae19bdee9fb91cc5`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8966d25965fc7636f62aefc27e4d0a14a660dee2570d53ee9e74d34f6c00bb6`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 3.9 KB (3947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e319f638428534055f8c4d559bd028e5f2206c74a42187460ade6f9d3cf99c2a`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:61082c4b7fae20fa068217d889981d8aa49aa0b9d167f1f7c32bf05838e5ab5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60387472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73994f34e02e712c22197bdb21df802db0f1dd1eaa09f047c461cc66893d79a0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:56 GMT
ADD file:7edf73437495be24244c16841b563be06c15452963f41ac940fb5e105ed96027 in / 
# Mon, 09 Oct 2017 21:45:58 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 06:53:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:53:40 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 06:53:45 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 06:56:06 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 07:01:10 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:01:13 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 07:01:15 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:01:18 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 07:01:22 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 07:01:25 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 07:01:29 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 07:04:54 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:04:58 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 07:05:09 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 07:05:13 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 07:05:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 07:05:33 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 07:05:35 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 07:05:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 07:05:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 07:05:52 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 07:05:57 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:c4860466fa1e6824151f4fa3a51ef0e9d7d3c3ba860e21d94e69988b65601260`  
		Last Modified: Mon, 09 Oct 2017 21:52:59 GMT  
		Size: 22.7 MB (22746217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8714f956af621d487bb938f0c4ee79429b72e372b6090ef06ebebcbb559daace`  
		Last Modified: Tue, 10 Oct 2017 07:06:52 GMT  
		Size: 4.4 MB (4361267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0aae6367725c08eba421b48b8f34430348bc57365851fe72accc2298bc51b8e`  
		Last Modified: Tue, 10 Oct 2017 07:06:50 GMT  
		Size: 4.1 KB (4106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:957bc408190bc6f73bb44d2b0606243d737e03780189ad1baf3c05b028493f54`  
		Last Modified: Tue, 10 Oct 2017 07:06:50 GMT  
		Size: 921.4 KB (921402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d46f79aaf675c9e2fda7e382e77ce88e43884f112038793c9e0e9d25f1a0828`  
		Last Modified: Tue, 10 Oct 2017 07:06:53 GMT  
		Size: 25.5 MB (25493330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626684a94b11097452c1b15def3c9d8802a40616032986b8b84a04d34dd1120a`  
		Last Modified: Tue, 10 Oct 2017 07:06:50 GMT  
		Size: 6.9 MB (6854550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf606bd05995800423fd3e922bd6efd3baf29c2d88b57db07c1098fe2451574`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b15efc3e31f84b775c79b2aa119d68a48e6c3d7ce14f9187e5b0dddc6f9a358`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5924fbba6050d17c40d7dd386e70e472517b4a2eec0d27ac4dbfe0023e38db6d`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e902f69d01855798e105bebdc64e30c4fbb70d1930bb2e6b6a6eca7fc671a3`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 3.9 KB (3945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f553e16e25ddf1bbbcc56cbabbebf2c26914e5f961721b0f3ca2f8e6bb8585`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; s390x

```console
$ docker pull rabbitmq@sha256:504212d66b109ece5875bab8daa7975c941824512bc40d06ebb30f342e489d2c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60365345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06cf4e4ec173af006e19afd5ab5838e8863c57de1a854238b09dea34cd740e94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:35 GMT
ADD file:ae4aaa6affe22f36ab5478771d5c84917f72de7a8dac16345a035709a1a5edf4 in / 
# Mon, 09 Oct 2017 21:44:36 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:45:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:45:08 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Mon, 09 Oct 2017 23:45:08 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:45:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:46:10 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:46:10 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 09 Oct 2017 23:46:11 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 23:46:11 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 09 Oct 2017 23:46:11 GMT
ENV RABBITMQ_VERSION=3.6.12
# Mon, 09 Oct 2017 23:46:11 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Mon, 09 Oct 2017 23:46:11 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Thu, 12 Oct 2017 18:28:22 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 12 Oct 2017 18:28:22 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 12 Oct 2017 18:28:23 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 12 Oct 2017 18:28:23 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 12 Oct 2017 18:28:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 12 Oct 2017 18:28:25 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 12 Oct 2017 18:28:25 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Thu, 12 Oct 2017 18:28:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 12 Oct 2017 18:28:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 18:28:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 12 Oct 2017 18:28:26 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:671716cc49517eef5f430c695ce344d63e390cb65f58d30939f2ba615c953686`  
		Last Modified: Mon, 09 Oct 2017 21:49:09 GMT  
		Size: 22.3 MB (22339951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7bcde3ab4d109ca30e7e6be1a5401b63c4473f9291ca2356407b66a5954522`  
		Last Modified: Thu, 12 Oct 2017 18:28:47 GMT  
		Size: 4.5 MB (4530291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d7d4a53e870f537ea989232055702c6711b51f7e2dfb049e984c8c90dfd1ff`  
		Last Modified: Thu, 12 Oct 2017 18:28:45 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0281f6547f5cfef34cf6e59c1935efd9423b30c49a97caa55b3299e965d3504`  
		Last Modified: Thu, 12 Oct 2017 18:28:45 GMT  
		Size: 938.1 KB (938055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fafa52e7299e0f68764a55b921d99192a861054cd9a421fce048ffa6787151ce`  
		Last Modified: Thu, 12 Oct 2017 18:28:49 GMT  
		Size: 25.6 MB (25619471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb1eb7de62ab431186ef3d571bec4f6364ebab824f5d662b4d0c3c36e36020b`  
		Last Modified: Thu, 12 Oct 2017 18:28:46 GMT  
		Size: 6.9 MB (6926912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a40bc6f8cdb17c86c0d43fe9b56c730e09f20d6b1fa12fa0f6f0eaa27ec5b50`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0462e482b612a854287aa487e8a3121c6b273608871a405c72bd80c0192d2818`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f7cbcbc2d86d2a53a53aee388820237f920bb3320490596a821948322a7317`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1251546aac265bb12405e223deb1e938190b57d03c8903038f920d9ae9c9bb62`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 3.9 KB (3942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3199db4d2641323733c96fd746db50df2d357ef80d6a38c8dbe5e2baebefbdb6`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management`

```console
$ docker pull rabbitmq@sha256:4d173dac5e05557e9ea9fd75bddc51fa69c54c4908436e25dd4f42c57bcf5bd6
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
$ docker pull rabbitmq@sha256:40a956f5198d4d2050d1545dc48bf38b5e0342c33d10bcd04c9e0a7e7bc851af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62852369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ac724eab06670229b033f2516a2e3af2cdfb453495a9bbb040fea13b398ab5f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:42 GMT
ADD file:45233d6b5c9b91e9437065d3e7c332d1c4eb4bce8e1079a4c1af342c450abe67 in / 
# Mon, 09 Oct 2017 21:33:43 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:41:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:41:43 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 02:41:43 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:42:10 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 02:42:40 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:42:41 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 02:42:41 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 02:42:41 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 02:42:41 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 02:42:41 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 02:42:42 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 02:43:16 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:43:16 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 02:43:17 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 02:43:17 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 02:43:18 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 02:43:19 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 13 Oct 2017 23:40:43 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Fri, 13 Oct 2017 23:40:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 13 Oct 2017 23:40:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 23:40:45 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 13 Oct 2017 23:40:45 GMT
CMD ["rabbitmq-server"]
# Fri, 13 Oct 2017 23:40:56 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 13 Oct 2017 23:40:57 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:bc95e04b23c06ba1b9bf092d07d1493177b218e0340bd2ed49dac351c1e34313`  
		Last Modified: Mon, 09 Oct 2017 21:42:28 GMT  
		Size: 22.5 MB (22492350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e65f0b00e4cfb1535d0f4e7a63707172ae63483fb33140d777614f199afcb36`  
		Last Modified: Tue, 10 Oct 2017 02:43:59 GMT  
		Size: 4.5 MB (4498726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2bd803179890909fcae186044c0e6ca1bc1d34e5fc05ef1ccea823e7be97540`  
		Last Modified: Tue, 10 Oct 2017 02:43:57 GMT  
		Size: 4.1 KB (4069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b05ca8302833edf783c50f03cd7ba0b8e12bc872b053eda3e3ae7e1f17e2b4b`  
		Last Modified: Tue, 10 Oct 2017 02:43:58 GMT  
		Size: 952.1 KB (952058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bb5a4bbcce5a040eb83057f9e93d17663bb123f4e98168457444497f7d17b70`  
		Last Modified: Tue, 10 Oct 2017 02:44:03 GMT  
		Size: 27.7 MB (27703883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf840d8999f6fe46a162974c82378c38b3cf3dcccbbaff848c0fb199988aebe0`  
		Last Modified: Tue, 10 Oct 2017 02:44:00 GMT  
		Size: 7.2 MB (7194403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be339ca44883b1990e52771487402163d398a279755a501fdd8891ec71cf09d0`  
		Last Modified: Tue, 10 Oct 2017 02:43:55 GMT  
		Size: 2.3 KB (2258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce35cd9f9b5b917868095b3b074dd23d18e0e266f3ee68ff95e2c61467299812`  
		Last Modified: Tue, 10 Oct 2017 02:43:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4fe32a0a00d916ed4d632aae71d35d9d0baa5e5910d6bd179a24071c35bedb0`  
		Last Modified: Tue, 10 Oct 2017 02:43:55 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77408ca9e94eb4bfeb346ab10c602857525802c2279e7c6995fcdbc90269444a`  
		Last Modified: Fri, 13 Oct 2017 23:41:26 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db03407a1aba1c0a89dffe960394aae639885702e3faa65271b918c36c7905cd`  
		Last Modified: Fri, 13 Oct 2017 23:41:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b908f008ac2afe6632caccd124e3ee9bffd5ebcdb8ca5ca84ae7e014305e460f`  
		Last Modified: Fri, 13 Oct 2017 23:42:01 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:9d8a89e9d5a9031b8a39ececf246b566b1af757e935233c850c84acce1b51633
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.4 MB (58432473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89511696e456f44d70f501b50be7fce142db50b5f46f4c033b875af70bfd771c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:48 GMT
ADD file:ff9945b48b1ac236dcec24eb9dfaf52b7c151a3b11c8502391f0866dfb4e3ac3 in / 
# Mon, 09 Oct 2017 21:44:48 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:18:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:18:11 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 00:18:11 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:18:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 00:18:58 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:18:58 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 00:18:58 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:18:59 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 00:18:59 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 00:18:59 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 00:18:59 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 00:19:26 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:19:26 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 00:19:27 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 00:19:28 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 00:19:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 00:19:30 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 00:19:30 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:19:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 00:19:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:19:32 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 00:19:33 GMT
CMD ["rabbitmq-server"]
# Tue, 10 Oct 2017 00:19:50 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 10 Oct 2017 00:19:50 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:836d5b6056a9815be79c76480a90299267f60201bd1e3396817003e6c14819cc`  
		Last Modified: Mon, 09 Oct 2017 21:50:56 GMT  
		Size: 21.2 MB (21166251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb896fba83bd09a35c68457554b35289860c23c46f27a8c3ef42f13146ebba1`  
		Last Modified: Tue, 10 Oct 2017 00:20:01 GMT  
		Size: 4.2 MB (4231979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61827a16c114b9741d761aa4c60a972ffe1e0b60147794e86b05653d67822e91`  
		Last Modified: Tue, 10 Oct 2017 00:20:00 GMT  
		Size: 4.1 KB (4079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:877cd9511def30e56a5ce354e145e8a2b1a93daaae7eaaa42dc4219838aa1743`  
		Last Modified: Tue, 10 Oct 2017 00:20:00 GMT  
		Size: 942.8 KB (942752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea9e378899e98c99e93ae2d0874bd5d89e24134bd14a19c285bdf39a0a42ade`  
		Last Modified: Tue, 10 Oct 2017 00:20:05 GMT  
		Size: 25.2 MB (25170810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbc82a29314b16531aa2172ac523ba535e3678f85efdd699164fbb0241ab8b62`  
		Last Modified: Tue, 10 Oct 2017 00:20:01 GMT  
		Size: 6.9 MB (6909811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58c44a3d016cf9de95021782180a42d3660e20fc7d8e92a7fe5ce9ede7928ca2`  
		Last Modified: Tue, 10 Oct 2017 00:19:59 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8abfdcdd98b40291ad91791bea09bf277e75c3669c6607c7891b09130101bfa3`  
		Last Modified: Tue, 10 Oct 2017 00:19:58 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a72811da4bf8ca8a2d06cdc182aa54116bb12133e8d82ef2b018a8de29ed74`  
		Last Modified: Tue, 10 Oct 2017 00:19:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d85bf4fc0617472a84b0aa86f36164826f7a34ec4239d845d29676b3b22164`  
		Last Modified: Tue, 10 Oct 2017 00:19:58 GMT  
		Size: 3.9 KB (3946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d379089da98fec4c83792f8f2ebcd33826a381d3523c9e2eda5dcb91e322aa9`  
		Last Modified: Tue, 10 Oct 2017 00:19:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54861e1463a8e17fb2fb96ec1e018121982b309089550b749b1ca28f4cd1244`  
		Last Modified: Tue, 10 Oct 2017 00:20:21 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:d3e631f740deddb3ce8938266edfa623dda238f0954ec4b90b6bd61174eb34b1
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55689734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5960d86042dfc4ac8155e62d27f19369f43b8883378c26bf64fd2ac274f44a74`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:43 GMT
ADD file:b758c6c3ff989778bd740dde35c86b953fa09be913a7e02711b2881de6b8911d in / 
# Mon, 09 Oct 2017 21:45:44 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:08:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:08:15 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 00:08:16 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 00:08:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 00:09:07 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:09:07 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 00:09:08 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:09:08 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 00:09:08 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 00:09:08 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 00:09:09 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 00:09:31 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:09:31 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 00:09:32 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 00:09:33 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 00:09:34 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 00:09:36 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 00:09:36 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 00:09:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 00:09:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 00:09:39 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 00:09:39 GMT
CMD ["rabbitmq-server"]
# Tue, 10 Oct 2017 00:09:56 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 10 Oct 2017 00:09:57 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:59e81a3fde58ec8d4b8f2f58b98ef2f4d951d37dd9b99b016fd294a8e07d7796`  
		Last Modified: Mon, 09 Oct 2017 21:52:49 GMT  
		Size: 19.3 MB (19277135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb84cf14a797e0c36a5062e5815b71c4fd0093413f105b27624939375150f03b`  
		Last Modified: Tue, 10 Oct 2017 00:10:13 GMT  
		Size: 3.9 MB (3869005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cce9319434844ff1c14610356c4336192046612fdff57f5c8678595702002c`  
		Last Modified: Tue, 10 Oct 2017 00:10:11 GMT  
		Size: 4.1 KB (4080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5463321259d892fda42d7201a40fbc05a78196e4895d7b17e06c85ecd091e62b`  
		Last Modified: Tue, 10 Oct 2017 00:10:12 GMT  
		Size: 926.5 KB (926471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bca1a117250e4e46e6d6aea3a4770f8119d72d505036090ee102abd9705e9b`  
		Last Modified: Tue, 10 Oct 2017 00:10:17 GMT  
		Size: 24.8 MB (24785804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab9316ca3e99e9664fe5eb97360822a9f8191a29c3e5b7a7966b6254b889d7a`  
		Last Modified: Tue, 10 Oct 2017 00:10:15 GMT  
		Size: 6.8 MB (6820453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f593867a4cdb0f406669620054471236973b620f178316670b74fc83fb1359`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a81744440a17e6df84509c55d5e0dae88230c113b348b511037cd38796c68d1`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc4ed0a5303f5e5db5f73224fa321f58305866f346c7d59238dcbeca1e1b35f`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690fb2e5911d59600356c772de869979c0a9c4ebd8a259ca374efb06382a56bf`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 3.9 KB (3943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0994a01c76d5feb217978c6cb5e96037b856c0fe96c98715f4ae4367886c9af3`  
		Last Modified: Tue, 10 Oct 2017 00:10:10 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546c4b6abd26cf03113d58139dab8fcc9d98d3c9e917e8933d27a788c32869b5`  
		Last Modified: Tue, 10 Oct 2017 00:10:39 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:c804f14dcc3e67b035e830ce81c351f0a06aa2a5ef1be33d3df28f3a0f99588c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57278470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ba6b5bab9677666323807cb8a6ee429c2b4ab8ece5f5a5ad15da447522197a6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:55 GMT
ADD file:3a528355cfc75437716aff3b517ef99ae602918d84d26dbafff0ed142248fb93 in / 
# Mon, 09 Oct 2017 21:47:56 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 04:57:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 04:57:04 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 04:57:05 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 04:57:37 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 04:58:35 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 04:58:36 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 04:58:37 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 04:58:37 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 04:58:38 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 04:58:39 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 04:58:39 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 05:00:22 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:00:23 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 05:00:25 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 05:00:26 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 05:00:28 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 05:00:31 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 05:00:32 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 05:00:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 05:00:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 05:00:36 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 05:00:37 GMT
CMD ["rabbitmq-server"]
# Tue, 10 Oct 2017 05:00:52 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 10 Oct 2017 05:00:53 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:e907afd6e25615a4d3eb554d930cef57b87e79ec82413889c2eac38beb4eb8f7`  
		Last Modified: Mon, 09 Oct 2017 22:03:08 GMT  
		Size: 20.3 MB (20337143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a5e6d35928560b933b85b5a3f2a8e96b4520fbb8df138b3e739e56d0c1f355`  
		Last Modified: Tue, 10 Oct 2017 05:01:18 GMT  
		Size: 4.1 MB (4073554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a862ab821b342790326492507ca5d70bfb7016bef765606193f1f7139f60c5ed`  
		Last Modified: Tue, 10 Oct 2017 05:01:14 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92799a54920b79013733790e444f13d8c65faa29c79cbdaf1bc8af85f637a233`  
		Last Modified: Tue, 10 Oct 2017 05:01:14 GMT  
		Size: 919.5 KB (919487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b119999eef1bcadabedd3a5319b03c6b83ede91ba8535059851547d3433b205`  
		Last Modified: Tue, 10 Oct 2017 05:01:19 GMT  
		Size: 25.0 MB (25042572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e62f8525a3a982a102aa37bb3313876195b15d8781cd253ed238dd2b9dff151`  
		Last Modified: Tue, 10 Oct 2017 05:01:15 GMT  
		Size: 6.9 MB (6894852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc028e70f04f6ea4365223a1cfe4e5c4384d5921acac419f3c170b148f7c7bf`  
		Last Modified: Tue, 10 Oct 2017 05:01:10 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e99faa03c2a8a272f56208c644c12b384b69dea50be6da9f6be400c14b945c`  
		Last Modified: Tue, 10 Oct 2017 05:01:12 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8fa260bcaa52d81ba20c11111f8d15bab954b17b48666724536c604220d94e`  
		Last Modified: Tue, 10 Oct 2017 05:01:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f88b9d1f075e6bf61f09cc09d798a29acd6e17f5a269c2014b4ff69b8f7834d`  
		Last Modified: Tue, 10 Oct 2017 05:01:11 GMT  
		Size: 3.9 KB (3944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2263263deeda5e4a4bcf0bada5587f1838cf344dfa3f3c8ccb1b7ccebac51324`  
		Last Modified: Tue, 10 Oct 2017 05:01:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b54c33fccff78e94a9516731142de6d28bb0344fdd3365c7db35880214ea66ee`  
		Last Modified: Tue, 10 Oct 2017 05:02:11 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; 386

```console
$ docker pull rabbitmq@sha256:a5cb6f9c959f0088ebd46624dc64ac01b93462640476b9c4bf946a205840116e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63903054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:361f6b95c5a010c046a6e280d2ad48eeef070a4b98bfefc42cb6e3bb10788afe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:36 GMT
ADD file:6582536277127947668f7bfdc1471a4e36170915b91a4cb841e7e1bfa1de6535 in / 
# Mon, 09 Oct 2017 21:45:36 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:25:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:25:35 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 02:25:35 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 02:25:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 02:26:18 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:26:18 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 02:26:19 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 02:26:19 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 02:26:19 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 02:26:20 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 02:26:20 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 02:27:12 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:27:12 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 02:27:13 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 02:27:13 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 02:27:14 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 02:27:15 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 02:27:15 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 02:27:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 02:27:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 02:27:16 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 02:27:17 GMT
CMD ["rabbitmq-server"]
# Tue, 10 Oct 2017 02:27:26 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 10 Oct 2017 02:27:27 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:b2b52fe46b29fe5d0689f26449c2114e40f0731d4ce3eb8c3941397b74205432`  
		Last Modified: Mon, 09 Oct 2017 21:53:42 GMT  
		Size: 23.1 MB (23128678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd56a7a1b23cba5ba31ffca4c1bd92c67baada83c1cccc6a39804b4bffccfde`  
		Last Modified: Tue, 10 Oct 2017 02:27:38 GMT  
		Size: 4.8 MB (4803931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5d99e72ac84835e308ec1af65659ef2c54b73366b5284dcf72ec2ae2a8be85`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 4.1 KB (4052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bb0b0cf4cc9d3eaa2a5d66c42a5887057caa974ed019f672c76359e5c56134`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 931.6 KB (931603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93c01cd1734bd61603408f604f963f4b669d89bbd45ccc941246e0defadf8b0`  
		Last Modified: Tue, 10 Oct 2017 02:27:41 GMT  
		Size: 27.8 MB (27818777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab6c121037963c174b576775a6333c56a529233771314b4dd8b3eeb8ff17e0d`  
		Last Modified: Tue, 10 Oct 2017 02:27:38 GMT  
		Size: 7.2 MB (7209220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99a2b13764e2fa2df368b2aeb4d8a42ff3f6cb8baffb126e338f45afa13bb4d`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9cdf701464766405898032d3f1dcd5f15f40b298781b771d58d825fbb54af3`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea9f77a46c316b539d74ca676c8dd927beb201a823d9a3b8ae19bdee9fb91cc5`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8966d25965fc7636f62aefc27e4d0a14a660dee2570d53ee9e74d34f6c00bb6`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 3.9 KB (3947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e319f638428534055f8c4d559bd028e5f2206c74a42187460ade6f9d3cf99c2a`  
		Last Modified: Tue, 10 Oct 2017 02:27:37 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3f089abe7a89fcdef4b85162da6f8749fbaa599a42d9220199e472ed6fc3c38`  
		Last Modified: Tue, 10 Oct 2017 02:28:12 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:82446252c3d1100ab3b515f8ad81700e29c1b24b7524ebd462f1b1842a0e79d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60387663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab9b9d4ae3120cecfdb9b5238a00a9a697a151799d0f4392ec8d17cf151f4b4a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:56 GMT
ADD file:7edf73437495be24244c16841b563be06c15452963f41ac940fb5e105ed96027 in / 
# Mon, 09 Oct 2017 21:45:58 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 06:53:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:53:40 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 10 Oct 2017 06:53:45 GMT
ENV GOSU_VERSION=1.10
# Tue, 10 Oct 2017 06:56:06 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 10 Oct 2017 07:01:10 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:01:13 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 10 Oct 2017 07:01:15 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 07:01:18 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 10 Oct 2017 07:01:22 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 10 Oct 2017 07:01:25 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 10 Oct 2017 07:01:29 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 10 Oct 2017 07:04:54 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:04:58 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 10 Oct 2017 07:05:09 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 10 Oct 2017 07:05:13 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 10 Oct 2017 07:05:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 10 Oct 2017 07:05:33 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 10 Oct 2017 07:05:35 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 10 Oct 2017 07:05:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 10 Oct 2017 07:05:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Oct 2017 07:05:52 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 10 Oct 2017 07:05:57 GMT
CMD ["rabbitmq-server"]
# Tue, 10 Oct 2017 07:06:25 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 10 Oct 2017 07:06:30 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:c4860466fa1e6824151f4fa3a51ef0e9d7d3c3ba860e21d94e69988b65601260`  
		Last Modified: Mon, 09 Oct 2017 21:52:59 GMT  
		Size: 22.7 MB (22746217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8714f956af621d487bb938f0c4ee79429b72e372b6090ef06ebebcbb559daace`  
		Last Modified: Tue, 10 Oct 2017 07:06:52 GMT  
		Size: 4.4 MB (4361267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0aae6367725c08eba421b48b8f34430348bc57365851fe72accc2298bc51b8e`  
		Last Modified: Tue, 10 Oct 2017 07:06:50 GMT  
		Size: 4.1 KB (4106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:957bc408190bc6f73bb44d2b0606243d737e03780189ad1baf3c05b028493f54`  
		Last Modified: Tue, 10 Oct 2017 07:06:50 GMT  
		Size: 921.4 KB (921402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d46f79aaf675c9e2fda7e382e77ce88e43884f112038793c9e0e9d25f1a0828`  
		Last Modified: Tue, 10 Oct 2017 07:06:53 GMT  
		Size: 25.5 MB (25493330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626684a94b11097452c1b15def3c9d8802a40616032986b8b84a04d34dd1120a`  
		Last Modified: Tue, 10 Oct 2017 07:06:50 GMT  
		Size: 6.9 MB (6854550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf606bd05995800423fd3e922bd6efd3baf29c2d88b57db07c1098fe2451574`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b15efc3e31f84b775c79b2aa119d68a48e6c3d7ce14f9187e5b0dddc6f9a358`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5924fbba6050d17c40d7dd386e70e472517b4a2eec0d27ac4dbfe0023e38db6d`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e902f69d01855798e105bebdc64e30c4fbb70d1930bb2e6b6a6eca7fc671a3`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 3.9 KB (3945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f553e16e25ddf1bbbcc56cbabbebf2c26914e5f961721b0f3ca2f8e6bb8585`  
		Last Modified: Tue, 10 Oct 2017 07:06:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf08c64d1240afbbc8f1867689f2e2e8b46e68320c438032e8669817fbeada5`  
		Last Modified: Tue, 10 Oct 2017 07:07:18 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; s390x

```console
$ docker pull rabbitmq@sha256:31f94a778a470be6cc97a7f74e2ddf1e8758ed90e12020ae4f54ec0d32997692
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60365539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6213df3f90e6dff86c41949235dea8c71ba5e48dde5c7317fc6c6b4f80d4e1ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:35 GMT
ADD file:ae4aaa6affe22f36ab5478771d5c84917f72de7a8dac16345a035709a1a5edf4 in / 
# Mon, 09 Oct 2017 21:44:36 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:45:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:45:08 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Mon, 09 Oct 2017 23:45:08 GMT
ENV GOSU_VERSION=1.10
# Mon, 09 Oct 2017 23:45:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 09 Oct 2017 23:46:10 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:46:10 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 09 Oct 2017 23:46:11 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 23:46:11 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 09 Oct 2017 23:46:11 GMT
ENV RABBITMQ_VERSION=3.6.12
# Mon, 09 Oct 2017 23:46:11 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Mon, 09 Oct 2017 23:46:11 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Thu, 12 Oct 2017 18:28:22 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 12 Oct 2017 18:28:22 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 12 Oct 2017 18:28:23 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 12 Oct 2017 18:28:23 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 12 Oct 2017 18:28:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 12 Oct 2017 18:28:25 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 12 Oct 2017 18:28:25 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Thu, 12 Oct 2017 18:28:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 12 Oct 2017 18:28:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Oct 2017 18:28:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 12 Oct 2017 18:28:26 GMT
CMD ["rabbitmq-server"]
# Thu, 12 Oct 2017 18:28:34 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 12 Oct 2017 18:28:34 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:671716cc49517eef5f430c695ce344d63e390cb65f58d30939f2ba615c953686`  
		Last Modified: Mon, 09 Oct 2017 21:49:09 GMT  
		Size: 22.3 MB (22339951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b7bcde3ab4d109ca30e7e6be1a5401b63c4473f9291ca2356407b66a5954522`  
		Last Modified: Thu, 12 Oct 2017 18:28:47 GMT  
		Size: 4.5 MB (4530291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d7d4a53e870f537ea989232055702c6711b51f7e2dfb049e984c8c90dfd1ff`  
		Last Modified: Thu, 12 Oct 2017 18:28:45 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0281f6547f5cfef34cf6e59c1935efd9423b30c49a97caa55b3299e965d3504`  
		Last Modified: Thu, 12 Oct 2017 18:28:45 GMT  
		Size: 938.1 KB (938055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fafa52e7299e0f68764a55b921d99192a861054cd9a421fce048ffa6787151ce`  
		Last Modified: Thu, 12 Oct 2017 18:28:49 GMT  
		Size: 25.6 MB (25619471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb1eb7de62ab431186ef3d571bec4f6364ebab824f5d662b4d0c3c36e36020b`  
		Last Modified: Thu, 12 Oct 2017 18:28:46 GMT  
		Size: 6.9 MB (6926912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a40bc6f8cdb17c86c0d43fe9b56c730e09f20d6b1fa12fa0f6f0eaa27ec5b50`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0462e482b612a854287aa487e8a3121c6b273608871a405c72bd80c0192d2818`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f7cbcbc2d86d2a53a53aee388820237f920bb3320490596a821948322a7317`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1251546aac265bb12405e223deb1e938190b57d03c8903038f920d9ae9c9bb62`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 3.9 KB (3942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3199db4d2641323733c96fd746db50df2d357ef80d6a38c8dbe5e2baebefbdb6`  
		Last Modified: Thu, 12 Oct 2017 18:28:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cb5e3e86125cb37892a49c2202a242a302e8435ef9139e549ab9a53b026cd9`  
		Last Modified: Thu, 12 Oct 2017 18:29:06 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management-alpine`

```console
$ docker pull rabbitmq@sha256:46a7f53f84b6508b03212a1d1151aa89de09ee3a77715277f88288a940a68b0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:283b76d23002526e7b75b3b2268d999e8ba8373ff13a9a54ed504ef0c548ba6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23557341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be775004faceb2d5fd71f989bd403debfc9297f72a0d4635ed2e51311c69e6b4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 01:47:34 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 19 Sep 2017 01:47:38 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 19 Sep 2017 01:47:44 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 19 Sep 2017 01:47:44 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 19 Sep 2017 01:47:44 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 19 Sep 2017 01:47:44 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 00:49:13 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 00:49:13 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 00:49:13 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 00:49:25 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 26 Sep 2017 00:49:25 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 00:49:25 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 00:49:26 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 00:49:27 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 00:49:28 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 13 Oct 2017 23:41:04 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Fri, 13 Oct 2017 23:41:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 13 Oct 2017 23:41:04 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 13 Oct 2017 23:41:04 GMT
CMD ["rabbitmq-server"]
# Fri, 13 Oct 2017 23:41:14 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 13 Oct 2017 23:41:14 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b35056c6845499c25bf0eafef5dbc120c9c37f6c50dfcb4627b51c0231603c18`  
		Last Modified: Tue, 19 Sep 2017 01:49:18 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70586150e9099e145e62a41f0ff5589c0f12c8c9cbab9bc2dbd40a97c353b51`  
		Last Modified: Tue, 19 Sep 2017 01:49:18 GMT  
		Size: 8.2 KB (8220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfffd127a85fa5ecc0db41a94cf22b88b6a161b577809181246e2e28700875ff`  
		Last Modified: Tue, 19 Sep 2017 01:49:21 GMT  
		Size: 16.5 MB (16540643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf157c5d932b2f37744919af62c626e6b0910550f724286975a91aadf3d22205`  
		Last Modified: Tue, 26 Sep 2017 00:51:01 GMT  
		Size: 5.0 MB (5012132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69365f61532d8eba60c5394dabec3f9c0038c8149eca1995f15fdf50bc68e1c4`  
		Last Modified: Tue, 26 Sep 2017 00:51:00 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8d26e15c29717fa296797e41f846f8d1af0f8b2802708e30428fb2d9a75d8c`  
		Last Modified: Tue, 26 Sep 2017 00:51:00 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb4cf70df1a3e43ec14cefee13b73ad3ae61605ebc3a8a29d85dd5c49cc8e43`  
		Last Modified: Tue, 26 Sep 2017 00:51:00 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31aadf17fdb7f906af653798039fc5e0daaabf39092d24c121423e6fe611a6b`  
		Last Modified: Fri, 13 Oct 2017 23:42:36 GMT  
		Size: 4.0 KB (4041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca54a49e6f2610c797d20ed2cdbb130299530167b6caa52fd73397dd5eb4be15`  
		Last Modified: Fri, 13 Oct 2017 23:43:11 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
