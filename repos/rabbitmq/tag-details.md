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
-	[`rabbitmq:3.7`](#rabbitmq37)
-	[`rabbitmq:3.7.1`](#rabbitmq371)
-	[`rabbitmq:3.7.1-alpine`](#rabbitmq371-alpine)
-	[`rabbitmq:3.7.1-management`](#rabbitmq371-management)
-	[`rabbitmq:3.7.1-management-alpine`](#rabbitmq371-management-alpine)
-	[`rabbitmq:3.7-alpine`](#rabbitmq37-alpine)
-	[`rabbitmq:3.7-management`](#rabbitmq37-management)
-	[`rabbitmq:3.7-management-alpine`](#rabbitmq37-management-alpine)
-	[`rabbitmq:3-alpine`](#rabbitmq3-alpine)
-	[`rabbitmq:3-management`](#rabbitmq3-management)
-	[`rabbitmq:3-management-alpine`](#rabbitmq3-management-alpine)
-	[`rabbitmq:alpine`](#rabbitmqalpine)
-	[`rabbitmq:latest`](#rabbitmqlatest)
-	[`rabbitmq:management`](#rabbitmqmanagement)
-	[`rabbitmq:management-alpine`](#rabbitmqmanagement-alpine)

## `rabbitmq:3`

```console
$ docker pull rabbitmq@sha256:0801cfa72cd71e9b44e36968734692c22963171225d8aae680521c50f6cdc685
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `rabbitmq:3` - linux; amd64

```console
$ docker pull rabbitmq@sha256:7c42a55a0f6f3d7caed26193946b60c951d68b2e0df7b5831b92e2e16f6420d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.1 MB (68059635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:985d533705b0e6021a6a033c1610f6791330c31c71f73b88528a4bef1b0074e5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:40:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:40:50 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:40:50 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 23:25:20 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 23:25:21 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 12 Dec 2017 23:25:37 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:25:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 23:25:38 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 23:25:38 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 21 Dec 2017 21:43:52 GMT
ENV RABBITMQ_VERSION=3.7.1
# Thu, 21 Dec 2017 21:43:52 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Thu, 21 Dec 2017 21:43:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Thu, 21 Dec 2017 21:44:19 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 21:44:19 GMT
ENV LANG=C.UTF-8
# Thu, 21 Dec 2017 21:44:19 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 21 Dec 2017 21:44:20 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 21 Dec 2017 21:44:28 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 21 Dec 2017 21:44:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 21 Dec 2017 21:44:37 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 21 Dec 2017 21:44:38 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Thu, 21 Dec 2017 21:44:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 21 Dec 2017 21:44:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Dec 2017 21:44:47 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 21 Dec 2017 21:44:47 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad90649c4d840febdaefa1afaad7ef8bbf2e0087ba1d11a95968afce0503f342`  
		Last Modified: Tue, 12 Dec 2017 21:45:30 GMT  
		Size: 4.5 MB (4498351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a318b914d6cead2434cc74ee74c48511ad6ec06a38ab190157246497f44afb1`  
		Last Modified: Tue, 12 Dec 2017 21:45:28 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cedd60f70052462179e86a0439f5fb3fa7b40f41dc55be9152bd147181481594`  
		Last Modified: Tue, 12 Dec 2017 23:26:36 GMT  
		Size: 951.9 KB (951937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ec28761801c452cb366afa1cbb7946bada161eb77899d9ca9a59a219e9ff42`  
		Last Modified: Tue, 12 Dec 2017 23:26:35 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fa44aa9074bb2e24649ebe2dae2f852f9443a052fd9cdfd4d11bcd86d967f7`  
		Last Modified: Tue, 12 Dec 2017 23:26:38 GMT  
		Size: 27.3 MB (27330555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf3e1e07c991ce96a21e3642cb8dbb20ef673739bb6f4d8b850380b2572f106`  
		Last Modified: Thu, 21 Dec 2017 21:47:31 GMT  
		Size: 12.8 MB (12781820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3ef1cea93bbcaa3a76d6c6e253976b8440ad24969e0ba907e173742c6ff50a`  
		Last Modified: Thu, 21 Dec 2017 21:47:26 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5ab9c082d6d13b0bb80318aa78027016a9d5673b8a552f065eeca6674c15e0`  
		Last Modified: Thu, 21 Dec 2017 21:47:28 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607d775f273a65211519680d67816f79ac0aa561a7ad364fac03c097c063fffd`  
		Last Modified: Thu, 21 Dec 2017 21:47:26 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1b766cfd2d4024d5591163073df0750727ccb125db1eeb9a92e9f364ed081d`  
		Last Modified: Thu, 21 Dec 2017 21:47:26 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca5c4856b55a852a371ef4afdddb1d16d94afe44c88221e14d84d8fdd6070df`  
		Last Modified: Thu, 21 Dec 2017 21:47:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:80833893929db23335409663f6f3f9dce91009c39c8219a9819b6e2a6693a80d
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63934407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cf7364430bbfd372da7cc8acc7115aa1c664296e7d64f3eca590db112de451b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 21:02:20 GMT
ADD file:f69e5781e9ff2a9867d94175d91d31553e07613bf4b50a1064274ed21a5ed353 in / 
# Tue, 12 Dec 2017 21:02:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 23:14:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:14:46 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 23:14:46 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 23:15:03 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 23:15:05 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 12 Dec 2017 23:15:44 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:15:45 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 23:15:45 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 23:15:46 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 15:14:24 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 15:14:24 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 15:14:24 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 15:14:59 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 15:15:00 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 15:15:00 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 15:15:01 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 15:15:01 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 15:15:02 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 15:15:03 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 15:15:03 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 15:15:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 15:15:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 15:15:05 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 15:15:05 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:20f319b2549a8d631c2e8034bfc3f9c12042d86a686470a8addd2fb7bc8c688c`  
		Last Modified: Tue, 12 Dec 2017 21:12:53 GMT  
		Size: 21.2 MB (21160630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608d8fd7a6001a09dff4cc76414aa4711207466847dfa91271aa6dd09becdd6a`  
		Last Modified: Tue, 12 Dec 2017 23:21:52 GMT  
		Size: 4.2 MB (4231488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d214c26ea8bd4ea1468f2b7c9806f8f3cde7cd6c2f09660325ea38b81dcb9c13`  
		Last Modified: Tue, 12 Dec 2017 23:21:50 GMT  
		Size: 4.1 KB (4082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9640468e3e315e94fa5dfdb6b79a97eb7f83beebca51e85a68ab3ef6a4b13106`  
		Last Modified: Tue, 12 Dec 2017 23:21:51 GMT  
		Size: 942.4 KB (942449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce50058b2ae9912872489ab639895bd412cd17a9a299fe4e208704d0ef03dd1f`  
		Last Modified: Tue, 12 Dec 2017 23:21:50 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de8bff935da4e19ec18fec56ba68c2cf72e41a4ad936934d6927c22d50d69dab`  
		Last Modified: Tue, 12 Dec 2017 23:21:56 GMT  
		Size: 24.8 MB (24837409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e7f60fa5b5600f52ceb2a5f847f939fe4fd9c88497a4af04f1a9e56a3a0226`  
		Last Modified: Fri, 22 Dec 2017 15:15:56 GMT  
		Size: 12.8 MB (12751160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1d9062191080161364b2f92fb7b1bc2983ebc261432e26e2bc529d2025a00f`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2b1a936349f6aef924d33f3b3246245ff7e15ae50f93604d15e363cf2060b9`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730970b7986ad9f4e2039724474364f61070660fb564efdf61ce67e5141ac8c9`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207f615d05708cbe302cf9382a9c2b2dc41910c9cf69dc913d7c5c02870c6138`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3005d65e7f419893d506d416f107fd2d6e82fa13eb5c86f95da855ba0dae6683`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:8415c49874d55b1dc22a02ac7f20b4bfc9506bba8d3f867a8f6fe0c44f296954
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61340853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c09030ed31aebfd1616699344097393e83013a45d2d366f34ac91daf746883dc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 13:33:42 GMT
ADD file:cfde12259adb7102e76690e986f1b9b07967a8984c85d0cead09969f5de8b8cc in / 
# Tue, 12 Dec 2017 13:33:42 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:07:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:07:51 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:07:52 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 14:08:30 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Dec 2017 14:08:31 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 13 Dec 2017 14:09:04 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:09:05 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 14:09:05 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 14:09:05 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 14:07:26 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 14:07:27 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 14:07:27 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 14:07:56 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 14:07:56 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 14:07:56 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 14:07:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 14:07:57 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 14:07:58 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 14:07:59 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 14:08:00 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 14:08:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 14:08:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 14:08:01 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 14:08:02 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:cd8b673adb84fd5eae3444d0475addad7e8908a8332704c4407baa97e9b0b284`  
		Last Modified: Tue, 12 Dec 2017 13:45:48 GMT  
		Size: 19.3 MB (19271028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681dc17295c86c86ee974da339cea0f010f6f5780ffd3b6fd3fa6b2a3d124fdd`  
		Last Modified: Wed, 13 Dec 2017 14:13:29 GMT  
		Size: 3.9 MB (3868482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03995e4857910fd538adfc3a896164f12117829662b917fd93835e24ec792b07`  
		Last Modified: Wed, 13 Dec 2017 14:13:28 GMT  
		Size: 4.1 KB (4083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7dd231e7e929346f4a5183b1f2df19bd46ef0f6ea9b79077593abd76f02737`  
		Last Modified: Wed, 13 Dec 2017 14:13:27 GMT  
		Size: 926.2 KB (926167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a6235a7077293b77a5763b50aeb4468250c3243e9a414e68ade282ba5457045`  
		Last Modified: Wed, 13 Dec 2017 14:13:27 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de253191eb0702e608f45381e5cf3de24ea4a760bc740b04a51e8bd4f577b6c7`  
		Last Modified: Wed, 13 Dec 2017 14:13:32 GMT  
		Size: 24.5 MB (24541142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b25fd4ba6b057fcbdbc2eec693d0f5c4df5a0459298926d4ad5302470e210de`  
		Last Modified: Fri, 22 Dec 2017 14:08:44 GMT  
		Size: 12.7 MB (12722767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c51fcc7b5312d66fe5f92da771aabe0349c6b3ad5d89d2d84858838fe16f4dc4`  
		Last Modified: Fri, 22 Dec 2017 14:08:42 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a588b73dbd75765122fbcfce25f9fc9c7cf5b6a37369df109328c081651975`  
		Last Modified: Fri, 22 Dec 2017 14:08:42 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78eddee1ed060160ee996266461b5bc661be8de27a56b8710f605999fce94a55`  
		Last Modified: Fri, 22 Dec 2017 14:08:42 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0979543707ff6994fd7f35ad5fda8fe9232cb2eb73d09e0a740a9585f4eaefe`  
		Last Modified: Fri, 22 Dec 2017 14:08:42 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f9032304b59cc4b820894fba66c025f4d2617438299f19d22ce540ff0bbf2c`  
		Last Modified: Fri, 22 Dec 2017 14:08:41 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:f5fbc534056e27a0d7fac58d4a2303fe3f8d1e042c6f417c009878a65338ccab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.8 MB (62843058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd6196523f123394559c88d676a03a9bc4aa5f54a545eea8ca3643622468e3e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 18:34:13 GMT
ADD file:6e068c7cc5397bfb4ec60dab4d410c5d3ba724f20ad0129d2032fb509f0eadcd in / 
# Tue, 12 Dec 2017 18:34:14 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:53:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:53:52 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:53:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 14:54:26 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Dec 2017 14:54:27 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 13 Dec 2017 14:55:29 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:55:29 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 14:55:30 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 14:55:31 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 14:52:43 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 14:52:44 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 14:52:44 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 14:53:42 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 14:53:43 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 14:53:43 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 14:53:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 14:53:45 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 14:53:47 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 14:53:48 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 14:53:49 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 14:53:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 14:53:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 14:53:52 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 14:53:54 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:fcad8cfc11c78a53ccf9aafafcb3ded5044dbd181977e6255aea54fbe164f131`  
		Last Modified: Tue, 12 Dec 2017 18:49:05 GMT  
		Size: 20.3 MB (20331270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb3f7722e72f404b7e544c9a358cc7390f02c0b391a14ea7dbecd85dca7d195`  
		Last Modified: Wed, 13 Dec 2017 15:03:22 GMT  
		Size: 4.1 MB (4073192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c72eaa15e586a9eb8cbde84a24922fdabb2aa060ef64831fb867757ac6f83a`  
		Last Modified: Wed, 13 Dec 2017 15:03:21 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ebe8f28a8d2ed828ab5c0431545a097e3f46a3ac45e36976fde6daa9fb405d`  
		Last Modified: Wed, 13 Dec 2017 15:03:21 GMT  
		Size: 919.4 KB (919386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf8546d6f1127383410e3244beb4a3873b3305deab0f469ac13d1d0b112dee1`  
		Last Modified: Wed, 13 Dec 2017 15:03:19 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aabe4d57c4c33847b3343b87c3d4b7f0efe523535a70b98185a7237848d3780d`  
		Last Modified: Wed, 13 Dec 2017 15:03:23 GMT  
		Size: 24.8 MB (24762935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29da1f88f7abd4ac706158ed66c3edd95c77c626b118d1430d9d987863a8a126`  
		Last Modified: Fri, 22 Dec 2017 14:55:58 GMT  
		Size: 12.7 MB (12745013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d9eb1dcd2f690fa686a4c2c6917a9dac1f2b83e58f873c6fa1c629a5ea35f5`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4be7195e35d31a0b3d5223c2099f6fbede7f22121454696afa9a2cb4dadb95`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ff3a93de492dfc8fd837c437a30e6d9e1360bee1f8243c1f3e7fefd4b9e617`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844056b16c3b8fb059c428a9d4c451310e81bdb909d039ddf20b1ed76ed06e4a`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:735d3dd7df678c1257c4ae682480c3e6357b26e308b36d0de392350370c0888a`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3` - linux; 386

```console
$ docker pull rabbitmq@sha256:616595177e8d2b75cc95daad6a82db183db9cd950e9a37a2b622cfb6285ac4d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.2 MB (69190637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5072ef5c905c462c763afaf1c3d3843a718f59c02429f9ae98d3e1ed076273fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 14:36:09 GMT
ADD file:ef60a5257bf2b5766f692e39f5922bbd6161e45de184b7b138522d53a477c7af in / 
# Tue, 12 Dec 2017 14:36:09 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:14:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:14:35 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:14:36 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 21:14:51 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 21:14:52 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 12 Dec 2017 21:15:34 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:16:46 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 21:16:46 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 21:16:47 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 11:44:32 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 11:44:32 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 11:44:32 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 11:45:06 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 11:45:06 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 11:45:07 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 11:45:07 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 11:45:08 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 11:45:09 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 11:45:10 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 11:45:10 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 11:45:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 11:45:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 11:45:12 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 11:45:12 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:4dbce982b05e209cf10a433462dc417f7816c47b0c1a151c8c93206b299b9a14`  
		Last Modified: Tue, 12 Dec 2017 15:03:13 GMT  
		Size: 23.1 MB (23122456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7c11e0bc622b0180ed093c8a4da0dc404613fc4331a2436a3669aa08c6e818`  
		Last Modified: Tue, 12 Dec 2017 21:33:10 GMT  
		Size: 4.8 MB (4803791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f7b212f68d587a5e50aa75b4635c7d49a9c744d221e091404cb2d1cf4327a1`  
		Last Modified: Tue, 12 Dec 2017 21:33:05 GMT  
		Size: 4.1 KB (4055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb0df0b481030711e1f4ccd5b60509dc4796c769e4d46ddf668819aba41c5d2`  
		Last Modified: Tue, 12 Dec 2017 21:33:05 GMT  
		Size: 931.6 KB (931574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e040f21d8962aea7005a7379e4852e408931ff4c1985b8debde30f1bcf14ca`  
		Last Modified: Tue, 12 Dec 2017 21:33:04 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5bbc5be701d46339ee9aa060f79d61ef2ea60c0a862dc9663bac7b97a8e169`  
		Last Modified: Tue, 12 Dec 2017 21:33:12 GMT  
		Size: 27.5 MB (27520131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dd9d2d069c706f3eb2155b3dabc19696c54dab8db1f74d481620e43b536063`  
		Last Modified: Fri, 22 Dec 2017 11:55:52 GMT  
		Size: 12.8 MB (12801444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d343d516c0b988f110df224a9f3ee502c2944e219fec1709fbcdef0a2d79fd19`  
		Last Modified: Fri, 22 Dec 2017 11:55:49 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c56b61dcb2f766abe51f40166e31dbba5e82d9061c43cf893618dacf6e843a`  
		Last Modified: Fri, 22 Dec 2017 11:55:50 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201b9543f2613c0e5a4e7b0ab82b519914eac5df575950c633193f2c8824d789`  
		Last Modified: Fri, 22 Dec 2017 11:55:49 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b6e713106094f76728ce4a7295830a2731aec1036997346ad433cd99ae0cc1`  
		Last Modified: Fri, 22 Dec 2017 11:55:49 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2ee59155be9f185db1c45800e79d5a35f93f7ff635ed223e35ed867144b11f`  
		Last Modified: Fri, 22 Dec 2017 11:55:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:8e0209bc629d15ea577869b6e80da74bf0c1365b5ca155482a1a5544bf3ef370
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65807973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:689fec414af9c1de5f6d31c906788b6d7925304e067ac1169288539ebf33f738`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:41 GMT
ADD file:896602a6d015367badb26a7ac0bcafc9aa04cbba205925631d315874b6d289ab in / 
# Tue, 12 Dec 2017 01:35:42 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 08:12:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 08:12:31 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 08:12:32 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 08:14:14 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Dec 2017 08:14:18 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 13 Dec 2017 08:15:55 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 08:15:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 08:15:58 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 08:15:59 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 08:11:41 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 08:11:42 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 08:11:43 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 08:13:32 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 08:13:33 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 08:13:35 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 08:13:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 08:13:40 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 08:13:44 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 08:13:47 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 08:13:49 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 08:13:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 08:13:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 08:13:56 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 08:13:58 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:b8b738bec437a97371af422179183d09cdb031f677b2dba4deaed774655ee9d8`  
		Last Modified: Tue, 12 Dec 2017 01:42:57 GMT  
		Size: 22.7 MB (22739713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074d2b018f7cf8971581f936aa1922718699254821ac925337d59075ff941e16`  
		Last Modified: Wed, 13 Dec 2017 08:25:16 GMT  
		Size: 4.4 MB (4360551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b59ed4bf511e4fbf8389c0a178fefb54388dd09f9fd41997517b5a18a77175`  
		Last Modified: Wed, 13 Dec 2017 08:25:12 GMT  
		Size: 4.1 KB (4108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd7fb01f62115b9286f1e6a7d47d0c323e3b09c6bd6d04e59fd6af3b2fd8704`  
		Last Modified: Wed, 13 Dec 2017 08:25:13 GMT  
		Size: 920.7 KB (920674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099a031f5f0df72a460e1d66fecbf4ebbbf062936d2d9a8474264bb64a6a9648`  
		Last Modified: Wed, 13 Dec 2017 08:25:11 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb365591fec586b108056a7461f34fbbecd7f579b59712c6a72e43c3f8a1ef2`  
		Last Modified: Wed, 13 Dec 2017 08:25:16 GMT  
		Size: 25.0 MB (25011533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71dec33419700d0f4ab4a2c6d04c32e0e811973a45d24dbb741f0e5c544626cd`  
		Last Modified: Fri, 22 Dec 2017 08:16:27 GMT  
		Size: 12.8 MB (12764207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87adf3e9f6eba9ab4607b32716f7215c55a2f806a03c2bccb9f8a257fc04a858`  
		Last Modified: Fri, 22 Dec 2017 08:16:23 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64119cdea63aa56eedbd3de89d9a94496cabe2b1240b80e04b8d4ff820192c7e`  
		Last Modified: Fri, 22 Dec 2017 08:16:22 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ad894a8943fd9b3886182a7ecd367c26e00d9dc7760423f84af98660baa32d`  
		Last Modified: Fri, 22 Dec 2017 08:16:23 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5642e99657653ea39a6ab4e3c63ff62e290143d100ce93a059c6119f4f3bce6`  
		Last Modified: Fri, 22 Dec 2017 08:16:23 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddec69e1fb6fe0e5c70e3e4e7998629d0e99560968d92265991602aa9cc82bbd`  
		Last Modified: Fri, 22 Dec 2017 08:16:22 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6`

```console
$ docker pull rabbitmq@sha256:882168ac2407b27e6cb4050ec1a85532beded9faeec4596a3a074e94d0929d47
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
$ docker pull rabbitmq@sha256:ce35dd015d3926b27ddaa9130079df6fe92ef452209da565348f8c7d23db765a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62939663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:618865543afab0c54404ca40ea213013aee61fed18ac2a3e20cb810f2bcc1952`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:40:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:40:50 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:40:50 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 23:25:20 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Dec 2017 22:41:56 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 22:41:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 22:41:57 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 22:41:57 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 13 Dec 2017 22:41:57 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 13 Dec 2017 22:41:57 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 13 Dec 2017 22:41:57 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 13 Dec 2017 22:42:15 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 22:42:15 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 13 Dec 2017 22:42:16 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 13 Dec 2017 22:42:16 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 13 Dec 2017 22:42:17 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 13 Dec 2017 22:42:17 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 13 Dec 2017 22:42:18 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 13 Dec 2017 22:42:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Dec 2017 22:42:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Dec 2017 22:42:19 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 13 Dec 2017 22:42:19 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad90649c4d840febdaefa1afaad7ef8bbf2e0087ba1d11a95968afce0503f342`  
		Last Modified: Tue, 12 Dec 2017 21:45:30 GMT  
		Size: 4.5 MB (4498351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a318b914d6cead2434cc74ee74c48511ad6ec06a38ab190157246497f44afb1`  
		Last Modified: Tue, 12 Dec 2017 21:45:28 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cedd60f70052462179e86a0439f5fb3fa7b40f41dc55be9152bd147181481594`  
		Last Modified: Tue, 12 Dec 2017 23:26:36 GMT  
		Size: 951.9 KB (951937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f754361b064d80cbbc395293d4261ab436a56dd9f48051d02ddc1ebc5db063cf`  
		Last Modified: Wed, 13 Dec 2017 22:45:55 GMT  
		Size: 27.7 MB (27704549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9024d880d34265ece30676749721684fc8f0c96caea2b32dc601b778c1100c22`  
		Last Modified: Wed, 13 Dec 2017 22:45:51 GMT  
		Size: 7.3 MB (7288344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d775050fc8e00eb5962b60ab0791c91abd16cda2ff67f6bd2d42b7a4ae1ed8`  
		Last Modified: Wed, 13 Dec 2017 22:45:49 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e9f52fff6701ba7af9d46b719f371faea74ac2ef33c7f372c834980c3ffa682`  
		Last Modified: Wed, 13 Dec 2017 22:45:49 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af9c86e10713f67d37012d592df8c955b7503e8955178f161a4e8ca1af30dbd`  
		Last Modified: Wed, 13 Dec 2017 22:45:49 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80eef1b61d3787c7285c9f1598cabdd208abf640878a22dbc7a758d92f196a24`  
		Last Modified: Wed, 13 Dec 2017 22:45:49 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82f0271a3b5e89418a9758621ff527e0b47d3be9b81ab7f5bd9f2a3441da822e`  
		Last Modified: Wed, 13 Dec 2017 22:45:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:880eb1cc20926c598868f30eb243afea00534ba243745cf216d070f552e9bbe3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.5 MB (58519919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3d160b1f3ad20c76ae92973f80584e5e8231d8b86d461a503d50fb032fe3e47`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 21:02:20 GMT
ADD file:f69e5781e9ff2a9867d94175d91d31553e07613bf4b50a1064274ed21a5ed353 in / 
# Tue, 12 Dec 2017 21:02:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 23:14:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:14:46 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 23:14:46 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 23:15:03 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 14 Dec 2017 16:03:21 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 16:03:21 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 14 Dec 2017 16:03:21 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Dec 2017 16:03:22 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 14 Dec 2017 16:03:22 GMT
ENV RABBITMQ_VERSION=3.6.14
# Thu, 14 Dec 2017 16:03:22 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Thu, 14 Dec 2017 16:03:22 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Thu, 14 Dec 2017 16:03:57 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 16:03:57 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 14 Dec 2017 16:03:58 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 14 Dec 2017 16:03:58 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 14 Dec 2017 16:03:59 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 14 Dec 2017 16:04:00 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 14 Dec 2017 16:04:01 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Thu, 14 Dec 2017 16:04:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 14 Dec 2017 16:04:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Dec 2017 16:04:03 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 14 Dec 2017 16:04:04 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:20f319b2549a8d631c2e8034bfc3f9c12042d86a686470a8addd2fb7bc8c688c`  
		Last Modified: Tue, 12 Dec 2017 21:12:53 GMT  
		Size: 21.2 MB (21160630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608d8fd7a6001a09dff4cc76414aa4711207466847dfa91271aa6dd09becdd6a`  
		Last Modified: Tue, 12 Dec 2017 23:21:52 GMT  
		Size: 4.2 MB (4231488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d214c26ea8bd4ea1468f2b7c9806f8f3cde7cd6c2f09660325ea38b81dcb9c13`  
		Last Modified: Tue, 12 Dec 2017 23:21:50 GMT  
		Size: 4.1 KB (4082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9640468e3e315e94fa5dfdb6b79a97eb7f83beebca51e85a68ab3ef6a4b13106`  
		Last Modified: Tue, 12 Dec 2017 23:21:51 GMT  
		Size: 942.4 KB (942449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a48df8dffe8d7abc99262501640ec504bd99298931665619a273e6e0fb2325a`  
		Last Modified: Thu, 14 Dec 2017 16:06:26 GMT  
		Size: 25.2 MB (25170558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628197b3ac0c36d043b6c5362d625842cf23e17b3d1ef39ec2ce51db37234775`  
		Last Modified: Thu, 14 Dec 2017 16:06:22 GMT  
		Size: 7.0 MB (7004017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f07234a313377f3c770240c21a3603d9447d2bfb6d9cf001281e25fbcdd8a9b`  
		Last Modified: Thu, 14 Dec 2017 16:06:20 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc75bafc67aa6a918182bbe3b19fd75f612fac2fe0fcbb48e8d7587ae5591c5e`  
		Last Modified: Thu, 14 Dec 2017 16:06:20 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cae7b78b8f1f851b097d06728dd2ea52e8855e717e7e4ea9c1217619b47d803`  
		Last Modified: Thu, 14 Dec 2017 16:06:19 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab838fee3e739cb1290ed6a287952076773549b1345be82eddc8067b754da709`  
		Last Modified: Thu, 14 Dec 2017 16:06:20 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95543d40adc1f829cc7d43e55e25ac26298994ebcee1be43bde800f3d6f39a4`  
		Last Modified: Thu, 14 Dec 2017 16:06:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:d7b914cd60551caf22d6f4bd82c786bfd6ad336ee4154f65c09454a30d1722cb
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.8 MB (55774674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f235ed00497651fb30e302fa7463fa38dff5dc6a55a1e00ac2e4a8d99e87ecce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 13:33:42 GMT
ADD file:cfde12259adb7102e76690e986f1b9b07967a8984c85d0cead09969f5de8b8cc in / 
# Tue, 12 Dec 2017 13:33:42 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:07:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:07:51 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:07:52 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 14:08:30 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 14 Dec 2017 14:10:53 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 14:10:54 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 14 Dec 2017 14:10:54 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Dec 2017 14:10:54 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 14 Dec 2017 14:11:06 GMT
ENV RABBITMQ_VERSION=3.6.14
# Thu, 14 Dec 2017 14:11:06 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Thu, 14 Dec 2017 14:11:06 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Thu, 14 Dec 2017 14:12:13 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 14:12:14 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 14 Dec 2017 14:12:15 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 14 Dec 2017 14:12:15 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 14 Dec 2017 14:12:17 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 14 Dec 2017 14:12:18 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 14 Dec 2017 14:12:19 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Thu, 14 Dec 2017 14:12:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 14 Dec 2017 14:12:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Dec 2017 14:12:21 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 14 Dec 2017 14:12:22 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:cd8b673adb84fd5eae3444d0475addad7e8908a8332704c4407baa97e9b0b284`  
		Last Modified: Tue, 12 Dec 2017 13:45:48 GMT  
		Size: 19.3 MB (19271028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681dc17295c86c86ee974da339cea0f010f6f5780ffd3b6fd3fa6b2a3d124fdd`  
		Last Modified: Wed, 13 Dec 2017 14:13:29 GMT  
		Size: 3.9 MB (3868482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03995e4857910fd538adfc3a896164f12117829662b917fd93835e24ec792b07`  
		Last Modified: Wed, 13 Dec 2017 14:13:28 GMT  
		Size: 4.1 KB (4083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7dd231e7e929346f4a5183b1f2df19bd46ef0f6ea9b79077593abd76f02737`  
		Last Modified: Wed, 13 Dec 2017 14:13:27 GMT  
		Size: 926.2 KB (926167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d0b2e3170e12ed4a59b63408e303f53ad5caaec2df4492592e724b62d4e00f`  
		Last Modified: Thu, 14 Dec 2017 14:16:41 GMT  
		Size: 24.8 MB (24785494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c16e2e094c09d0570adda2030c1211023aa05be5b05c7fe4c8ebde2174ac15`  
		Last Modified: Thu, 14 Dec 2017 14:16:37 GMT  
		Size: 6.9 MB (6912728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2a9f7c6a7a74d79e7e43ae954c56c9aac44523372ea187bb5e3732c36f0f4e`  
		Last Modified: Thu, 14 Dec 2017 14:16:35 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebadb50e535d9e0c84d0fe626b2fb2ebf2d490a5335819deee21b6f60d47b869`  
		Last Modified: Thu, 14 Dec 2017 14:16:34 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3737d0a697288225820d6b0ce477c2bf898c72c344f2acd85ef6e940fcdcf7c0`  
		Last Modified: Thu, 14 Dec 2017 14:16:34 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48119b301f61a7c4322475e75457617e5d0db2645824cb08a0f7d04773766314`  
		Last Modified: Thu, 14 Dec 2017 14:16:35 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce64d009b71ee3f66c3cc4f6d26694292b61732cdecc3d6f7179146df968aae`  
		Last Modified: Thu, 14 Dec 2017 14:16:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:565951f2a759c58195f7381dfc1c8293dfa1cfdea31855d0518c226f7a8cb837
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57366250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3873238a004307a96a4ccd3c12333efe517f2951c8be70d441f2e2ccce665ccc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 18:34:13 GMT
ADD file:6e068c7cc5397bfb4ec60dab4d410c5d3ba724f20ad0129d2032fb509f0eadcd in / 
# Tue, 12 Dec 2017 18:34:14 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:53:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:53:52 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:53:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 14:54:26 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 15 Dec 2017 06:12:03 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 06:12:04 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 15 Dec 2017 06:12:05 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Dec 2017 06:12:05 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 15 Dec 2017 06:12:06 GMT
ENV RABBITMQ_VERSION=3.6.14
# Fri, 15 Dec 2017 06:12:07 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Fri, 15 Dec 2017 06:12:07 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Fri, 15 Dec 2017 06:12:51 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 06:12:52 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 15 Dec 2017 06:12:54 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 15 Dec 2017 06:12:54 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 15 Dec 2017 06:12:56 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 15 Dec 2017 06:12:58 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 15 Dec 2017 06:12:59 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Fri, 15 Dec 2017 06:13:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 15 Dec 2017 06:13:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Dec 2017 06:13:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 15 Dec 2017 06:13:03 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:fcad8cfc11c78a53ccf9aafafcb3ded5044dbd181977e6255aea54fbe164f131`  
		Last Modified: Tue, 12 Dec 2017 18:49:05 GMT  
		Size: 20.3 MB (20331270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb3f7722e72f404b7e544c9a358cc7390f02c0b391a14ea7dbecd85dca7d195`  
		Last Modified: Wed, 13 Dec 2017 15:03:22 GMT  
		Size: 4.1 MB (4073192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c72eaa15e586a9eb8cbde84a24922fdabb2aa060ef64831fb867757ac6f83a`  
		Last Modified: Wed, 13 Dec 2017 15:03:21 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ebe8f28a8d2ed828ab5c0431545a097e3f46a3ac45e36976fde6daa9fb405d`  
		Last Modified: Wed, 13 Dec 2017 15:03:21 GMT  
		Size: 919.4 KB (919386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4af0cd180d3c4155a1b370d4c4b32c572c56e71baf035f78d6393a2261e09ef`  
		Last Modified: Fri, 15 Dec 2017 06:14:16 GMT  
		Size: 25.0 MB (25043251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c59c22df0aeabb463d530ba6fe460b0bb9e2274edfc3ef2369106ae808f59e`  
		Last Modified: Fri, 15 Dec 2017 06:14:12 GMT  
		Size: 7.0 MB (6988381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed4f64048e6de3d85028fb86a60f4341d27a78edeee17c8f88d1c75dbcae28d`  
		Last Modified: Fri, 15 Dec 2017 06:14:08 GMT  
		Size: 2.3 KB (2266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2c56f79bbd6ce5478b96c7b43ff81be29c575ac6c8b54c21e46ee3ea479bd6`  
		Last Modified: Fri, 15 Dec 2017 06:14:08 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8866d075ac88162cc5b75f425df1fca5f5022d89f25d660f3a714fcb75e2dbf4`  
		Last Modified: Fri, 15 Dec 2017 06:14:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18ceac2841ce59e5eb7bde6d30802e8539321a8971a696ea6d37ffe87a0d203f`  
		Last Modified: Fri, 15 Dec 2017 06:14:10 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8fc8933203dfbf3ae80cb5e49a4db2d4aa3274957edb60dc3da362245a6fb3`  
		Last Modified: Fri, 15 Dec 2017 06:14:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; 386

```console
$ docker pull rabbitmq@sha256:e4286364923a4c09b2e317400a5349ebe12cc3220cc83e8c96d1dbf225314a42
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.0 MB (63991499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f23b2aa71b1b1c74b4c37d6ff5b9e654bb1f3fc66f0c4e379fefc8cf00f3a13`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 14:36:09 GMT
ADD file:ef60a5257bf2b5766f692e39f5922bbd6161e45de184b7b138522d53a477c7af in / 
# Tue, 12 Dec 2017 14:36:09 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:14:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:14:35 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:14:36 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 21:14:51 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 14 Dec 2017 14:47:18 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 14:47:26 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 14 Dec 2017 14:47:26 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Dec 2017 14:47:27 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 14 Dec 2017 14:47:27 GMT
ENV RABBITMQ_VERSION=3.6.14
# Thu, 14 Dec 2017 14:47:27 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Thu, 14 Dec 2017 14:47:27 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Thu, 14 Dec 2017 14:47:55 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 14:47:56 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 14 Dec 2017 14:47:56 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 14 Dec 2017 14:47:57 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 14 Dec 2017 14:54:56 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 14 Dec 2017 14:54:57 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 14 Dec 2017 14:54:57 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Thu, 14 Dec 2017 14:54:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 14 Dec 2017 14:55:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Dec 2017 14:55:08 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 14 Dec 2017 14:55:08 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:4dbce982b05e209cf10a433462dc417f7816c47b0c1a151c8c93206b299b9a14`  
		Last Modified: Tue, 12 Dec 2017 15:03:13 GMT  
		Size: 23.1 MB (23122456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7c11e0bc622b0180ed093c8a4da0dc404613fc4331a2436a3669aa08c6e818`  
		Last Modified: Tue, 12 Dec 2017 21:33:10 GMT  
		Size: 4.8 MB (4803791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f7b212f68d587a5e50aa75b4635c7d49a9c744d221e091404cb2d1cf4327a1`  
		Last Modified: Tue, 12 Dec 2017 21:33:05 GMT  
		Size: 4.1 KB (4055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb0df0b481030711e1f4ccd5b60509dc4796c769e4d46ddf668819aba41c5d2`  
		Last Modified: Tue, 12 Dec 2017 21:33:05 GMT  
		Size: 931.6 KB (931574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0854aad6d0cf47dc5d8bfbefd1606e8277c0c1be4736698e40cbf748135ccb05`  
		Last Modified: Thu, 14 Dec 2017 15:04:56 GMT  
		Size: 27.8 MB (27819006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c4b6d2406d4cc0df305012c01048c67b8ab0b66dc7b60f6baf84f59e1397a7c`  
		Last Modified: Thu, 14 Dec 2017 15:04:52 GMT  
		Size: 7.3 MB (7303921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9de52b03891136ae6bf4d54630d8e5ada7b9b4ec2a7c12de71cab0054bf3e8a`  
		Last Modified: Thu, 14 Dec 2017 15:04:47 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ab3e298a93d7b8bc21f6d3ad2e1376888f1e448e1246dcc03f8043dbeccde7`  
		Last Modified: Thu, 14 Dec 2017 15:04:47 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f57c58a277aceb5a74cced663362e607fb8fe3dad455903e5bb8e3cff0a7875`  
		Last Modified: Thu, 14 Dec 2017 15:04:52 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfbfaad6b20293294e2284d4374c558936b87e2b16850232cf258ba9e853a22`  
		Last Modified: Thu, 14 Dec 2017 15:04:46 GMT  
		Size: 4.0 KB (4042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0096b1285f117fbf559f96b0b9e9375ef3ebbfbb77d79148061b48dc7ccb8e32`  
		Last Modified: Thu, 14 Dec 2017 15:04:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:b56f80778dea6411e789a0a336112e0851c37d3713ccb028e7d13e25cfb6559b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60473083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd0a8e45a42de331d34455bbb50a00c192081af70eaf523eded483208629a46e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:41 GMT
ADD file:896602a6d015367badb26a7ac0bcafc9aa04cbba205925631d315874b6d289ab in / 
# Tue, 12 Dec 2017 01:35:42 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 08:12:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 08:12:31 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 08:12:32 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 08:14:14 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 14 Dec 2017 08:15:16 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 08:15:18 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 14 Dec 2017 08:15:19 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Dec 2017 08:15:20 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 14 Dec 2017 08:15:21 GMT
ENV RABBITMQ_VERSION=3.6.14
# Thu, 14 Dec 2017 08:15:23 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Thu, 14 Dec 2017 08:15:24 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Thu, 14 Dec 2017 08:16:37 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 08:16:38 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 14 Dec 2017 08:16:42 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 14 Dec 2017 08:16:43 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 14 Dec 2017 08:16:48 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 14 Dec 2017 08:16:51 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 14 Dec 2017 08:16:52 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Thu, 14 Dec 2017 08:16:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 14 Dec 2017 08:16:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Dec 2017 08:16:59 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 14 Dec 2017 08:17:01 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:b8b738bec437a97371af422179183d09cdb031f677b2dba4deaed774655ee9d8`  
		Last Modified: Tue, 12 Dec 2017 01:42:57 GMT  
		Size: 22.7 MB (22739713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074d2b018f7cf8971581f936aa1922718699254821ac925337d59075ff941e16`  
		Last Modified: Wed, 13 Dec 2017 08:25:16 GMT  
		Size: 4.4 MB (4360551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b59ed4bf511e4fbf8389c0a178fefb54388dd09f9fd41997517b5a18a77175`  
		Last Modified: Wed, 13 Dec 2017 08:25:12 GMT  
		Size: 4.1 KB (4108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd7fb01f62115b9286f1e6a7d47d0c323e3b09c6bd6d04e59fd6af3b2fd8704`  
		Last Modified: Wed, 13 Dec 2017 08:25:13 GMT  
		Size: 920.7 KB (920674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c64d8ce325d1e59fb580a5aaa131644c9e6806339a74b37339af249798b703e`  
		Last Modified: Thu, 14 Dec 2017 08:20:39 GMT  
		Size: 25.5 MB (25492619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d75bef4e06f5e75b973db20cc885f296034dd79909c88c20e6d6c1f2ebce346`  
		Last Modified: Thu, 14 Dec 2017 08:20:35 GMT  
		Size: 6.9 MB (6948720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ce6797876ed04e127b1e9c54b5c792c5429dcaff81d2b0193edfad874bed474`  
		Last Modified: Thu, 14 Dec 2017 08:20:31 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e85099c9c7b219cd65a67bcc2f6346852c15cbfb3938550985b31c8b697c19`  
		Last Modified: Thu, 14 Dec 2017 08:20:31 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a256604bf9e54b705607584d05f2bf53c19ed831e64c2e2fcbcf665d13a4b4b`  
		Last Modified: Thu, 14 Dec 2017 08:20:31 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f73f0672b65e40607194823b09d28c568bab0db0b70c5ca71f0a91ebd19421b`  
		Last Modified: Thu, 14 Dec 2017 08:20:31 GMT  
		Size: 4.0 KB (4040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d55f768d7d3129ebe2b55a9f592966aae123286b86f829ab50befdc1cabf86`  
		Last Modified: Thu, 14 Dec 2017 08:20:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; s390x

```console
$ docker pull rabbitmq@sha256:091c69f51ed205c73313f5f363beeba0abdf8e7b64b253ace58bdc5253e85345
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60456100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad54a43174bbd509a39b2e2a99b93aa53f2892f9ffbc62329a3f70b30a0cf89e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 06:25:50 GMT
ADD file:8cd208817150f41f5b21f5c2b6641af023ddeaa6d842fe490190e20effe94a08 in / 
# Tue, 12 Dec 2017 06:25:51 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 08:33:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 08:33:05 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 08:33:05 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 08:33:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Dec 2017 08:33:26 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 08:33:26 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 08:33:27 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 08:33:27 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 12 Dec 2017 08:33:27 GMT
ENV RABBITMQ_VERSION=3.6.14
# Tue, 12 Dec 2017 08:33:27 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Tue, 12 Dec 2017 08:33:27 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Tue, 12 Dec 2017 08:33:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 08:33:57 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 12 Dec 2017 08:33:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 12 Dec 2017 08:33:58 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 12 Dec 2017 08:33:58 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 12 Dec 2017 08:33:59 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 12 Dec 2017 08:33:59 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Tue, 12 Dec 2017 08:34:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Dec 2017 08:34:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 08:34:00 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 12 Dec 2017 08:34:01 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:da91ecedba56836763b256841bfd01198234139e3e4824510318c25fa8cf140a`  
		Last Modified: Tue, 12 Dec 2017 06:31:22 GMT  
		Size: 22.3 MB (22333855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c470192e9d4b665b180304cb21cc820cd23ac8bb65b0df208abceff86257823`  
		Last Modified: Tue, 12 Dec 2017 08:34:42 GMT  
		Size: 4.5 MB (4529872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0d39c0a4838e17ab734f247319a26028455a1dddef8a58ee0846289f22a04d`  
		Last Modified: Tue, 12 Dec 2017 08:34:42 GMT  
		Size: 4.1 KB (4069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3888716305b8444b3df85fcca7dce471db3183218b68197cd90d48874ae202e`  
		Last Modified: Tue, 12 Dec 2017 08:34:40 GMT  
		Size: 938.0 KB (938008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fe958694d6e652ff38884a8b6fe90e743489a534a1267b5155d6c5855f2a1d`  
		Last Modified: Tue, 12 Dec 2017 08:34:43 GMT  
		Size: 25.6 MB (25621148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bd5886a51f87e2aa36a024567f7d1192c4dc4497b281821b2e655c3ed9957e`  
		Last Modified: Tue, 12 Dec 2017 08:34:41 GMT  
		Size: 7.0 MB (7022456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10bcc0ae7b3dd8fe9ac3641c815f860b6efff2f94085a3f6005796ff79f74d8b`  
		Last Modified: Tue, 12 Dec 2017 08:34:41 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a39a516003d4a06111c8eccae52da87cd5fc7a5a2355c323e7202ffa08fae9`  
		Last Modified: Tue, 12 Dec 2017 08:34:38 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15ec49a7ceea192b6e143eafaced96d6298c0ec6f2ddb87686887b55ecc1dd2`  
		Last Modified: Tue, 12 Dec 2017 08:34:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d781af837cef2daa4917a934e1cd06ec5f62e5931c09a226be3136f144c6a581`  
		Last Modified: Tue, 12 Dec 2017 08:34:39 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c812d16cc8632f8b7c4fef0761f4b37fc10bdbb10e437e8b93a24c363f19e0`  
		Last Modified: Tue, 12 Dec 2017 08:34:38 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.14`

```console
$ docker pull rabbitmq@sha256:882168ac2407b27e6cb4050ec1a85532beded9faeec4596a3a074e94d0929d47
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

### `rabbitmq:3.6.14` - linux; amd64

```console
$ docker pull rabbitmq@sha256:ce35dd015d3926b27ddaa9130079df6fe92ef452209da565348f8c7d23db765a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62939663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:618865543afab0c54404ca40ea213013aee61fed18ac2a3e20cb810f2bcc1952`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:40:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:40:50 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:40:50 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 23:25:20 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Dec 2017 22:41:56 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 22:41:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 22:41:57 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 22:41:57 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 13 Dec 2017 22:41:57 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 13 Dec 2017 22:41:57 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 13 Dec 2017 22:41:57 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 13 Dec 2017 22:42:15 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 22:42:15 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 13 Dec 2017 22:42:16 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 13 Dec 2017 22:42:16 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 13 Dec 2017 22:42:17 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 13 Dec 2017 22:42:17 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 13 Dec 2017 22:42:18 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 13 Dec 2017 22:42:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Dec 2017 22:42:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Dec 2017 22:42:19 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 13 Dec 2017 22:42:19 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad90649c4d840febdaefa1afaad7ef8bbf2e0087ba1d11a95968afce0503f342`  
		Last Modified: Tue, 12 Dec 2017 21:45:30 GMT  
		Size: 4.5 MB (4498351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a318b914d6cead2434cc74ee74c48511ad6ec06a38ab190157246497f44afb1`  
		Last Modified: Tue, 12 Dec 2017 21:45:28 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cedd60f70052462179e86a0439f5fb3fa7b40f41dc55be9152bd147181481594`  
		Last Modified: Tue, 12 Dec 2017 23:26:36 GMT  
		Size: 951.9 KB (951937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f754361b064d80cbbc395293d4261ab436a56dd9f48051d02ddc1ebc5db063cf`  
		Last Modified: Wed, 13 Dec 2017 22:45:55 GMT  
		Size: 27.7 MB (27704549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9024d880d34265ece30676749721684fc8f0c96caea2b32dc601b778c1100c22`  
		Last Modified: Wed, 13 Dec 2017 22:45:51 GMT  
		Size: 7.3 MB (7288344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d775050fc8e00eb5962b60ab0791c91abd16cda2ff67f6bd2d42b7a4ae1ed8`  
		Last Modified: Wed, 13 Dec 2017 22:45:49 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e9f52fff6701ba7af9d46b719f371faea74ac2ef33c7f372c834980c3ffa682`  
		Last Modified: Wed, 13 Dec 2017 22:45:49 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af9c86e10713f67d37012d592df8c955b7503e8955178f161a4e8ca1af30dbd`  
		Last Modified: Wed, 13 Dec 2017 22:45:49 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80eef1b61d3787c7285c9f1598cabdd208abf640878a22dbc7a758d92f196a24`  
		Last Modified: Wed, 13 Dec 2017 22:45:49 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82f0271a3b5e89418a9758621ff527e0b47d3be9b81ab7f5bd9f2a3441da822e`  
		Last Modified: Wed, 13 Dec 2017 22:45:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.14` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:880eb1cc20926c598868f30eb243afea00534ba243745cf216d070f552e9bbe3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.5 MB (58519919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3d160b1f3ad20c76ae92973f80584e5e8231d8b86d461a503d50fb032fe3e47`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 21:02:20 GMT
ADD file:f69e5781e9ff2a9867d94175d91d31553e07613bf4b50a1064274ed21a5ed353 in / 
# Tue, 12 Dec 2017 21:02:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 23:14:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:14:46 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 23:14:46 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 23:15:03 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 14 Dec 2017 16:03:21 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 16:03:21 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 14 Dec 2017 16:03:21 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Dec 2017 16:03:22 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 14 Dec 2017 16:03:22 GMT
ENV RABBITMQ_VERSION=3.6.14
# Thu, 14 Dec 2017 16:03:22 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Thu, 14 Dec 2017 16:03:22 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Thu, 14 Dec 2017 16:03:57 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 16:03:57 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 14 Dec 2017 16:03:58 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 14 Dec 2017 16:03:58 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 14 Dec 2017 16:03:59 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 14 Dec 2017 16:04:00 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 14 Dec 2017 16:04:01 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Thu, 14 Dec 2017 16:04:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 14 Dec 2017 16:04:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Dec 2017 16:04:03 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 14 Dec 2017 16:04:04 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:20f319b2549a8d631c2e8034bfc3f9c12042d86a686470a8addd2fb7bc8c688c`  
		Last Modified: Tue, 12 Dec 2017 21:12:53 GMT  
		Size: 21.2 MB (21160630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608d8fd7a6001a09dff4cc76414aa4711207466847dfa91271aa6dd09becdd6a`  
		Last Modified: Tue, 12 Dec 2017 23:21:52 GMT  
		Size: 4.2 MB (4231488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d214c26ea8bd4ea1468f2b7c9806f8f3cde7cd6c2f09660325ea38b81dcb9c13`  
		Last Modified: Tue, 12 Dec 2017 23:21:50 GMT  
		Size: 4.1 KB (4082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9640468e3e315e94fa5dfdb6b79a97eb7f83beebca51e85a68ab3ef6a4b13106`  
		Last Modified: Tue, 12 Dec 2017 23:21:51 GMT  
		Size: 942.4 KB (942449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a48df8dffe8d7abc99262501640ec504bd99298931665619a273e6e0fb2325a`  
		Last Modified: Thu, 14 Dec 2017 16:06:26 GMT  
		Size: 25.2 MB (25170558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628197b3ac0c36d043b6c5362d625842cf23e17b3d1ef39ec2ce51db37234775`  
		Last Modified: Thu, 14 Dec 2017 16:06:22 GMT  
		Size: 7.0 MB (7004017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f07234a313377f3c770240c21a3603d9447d2bfb6d9cf001281e25fbcdd8a9b`  
		Last Modified: Thu, 14 Dec 2017 16:06:20 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc75bafc67aa6a918182bbe3b19fd75f612fac2fe0fcbb48e8d7587ae5591c5e`  
		Last Modified: Thu, 14 Dec 2017 16:06:20 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cae7b78b8f1f851b097d06728dd2ea52e8855e717e7e4ea9c1217619b47d803`  
		Last Modified: Thu, 14 Dec 2017 16:06:19 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab838fee3e739cb1290ed6a287952076773549b1345be82eddc8067b754da709`  
		Last Modified: Thu, 14 Dec 2017 16:06:20 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95543d40adc1f829cc7d43e55e25ac26298994ebcee1be43bde800f3d6f39a4`  
		Last Modified: Thu, 14 Dec 2017 16:06:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.14` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:d7b914cd60551caf22d6f4bd82c786bfd6ad336ee4154f65c09454a30d1722cb
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.8 MB (55774674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f235ed00497651fb30e302fa7463fa38dff5dc6a55a1e00ac2e4a8d99e87ecce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 13:33:42 GMT
ADD file:cfde12259adb7102e76690e986f1b9b07967a8984c85d0cead09969f5de8b8cc in / 
# Tue, 12 Dec 2017 13:33:42 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:07:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:07:51 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:07:52 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 14:08:30 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 14 Dec 2017 14:10:53 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 14:10:54 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 14 Dec 2017 14:10:54 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Dec 2017 14:10:54 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 14 Dec 2017 14:11:06 GMT
ENV RABBITMQ_VERSION=3.6.14
# Thu, 14 Dec 2017 14:11:06 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Thu, 14 Dec 2017 14:11:06 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Thu, 14 Dec 2017 14:12:13 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 14:12:14 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 14 Dec 2017 14:12:15 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 14 Dec 2017 14:12:15 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 14 Dec 2017 14:12:17 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 14 Dec 2017 14:12:18 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 14 Dec 2017 14:12:19 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Thu, 14 Dec 2017 14:12:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 14 Dec 2017 14:12:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Dec 2017 14:12:21 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 14 Dec 2017 14:12:22 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:cd8b673adb84fd5eae3444d0475addad7e8908a8332704c4407baa97e9b0b284`  
		Last Modified: Tue, 12 Dec 2017 13:45:48 GMT  
		Size: 19.3 MB (19271028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681dc17295c86c86ee974da339cea0f010f6f5780ffd3b6fd3fa6b2a3d124fdd`  
		Last Modified: Wed, 13 Dec 2017 14:13:29 GMT  
		Size: 3.9 MB (3868482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03995e4857910fd538adfc3a896164f12117829662b917fd93835e24ec792b07`  
		Last Modified: Wed, 13 Dec 2017 14:13:28 GMT  
		Size: 4.1 KB (4083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7dd231e7e929346f4a5183b1f2df19bd46ef0f6ea9b79077593abd76f02737`  
		Last Modified: Wed, 13 Dec 2017 14:13:27 GMT  
		Size: 926.2 KB (926167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d0b2e3170e12ed4a59b63408e303f53ad5caaec2df4492592e724b62d4e00f`  
		Last Modified: Thu, 14 Dec 2017 14:16:41 GMT  
		Size: 24.8 MB (24785494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c16e2e094c09d0570adda2030c1211023aa05be5b05c7fe4c8ebde2174ac15`  
		Last Modified: Thu, 14 Dec 2017 14:16:37 GMT  
		Size: 6.9 MB (6912728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2a9f7c6a7a74d79e7e43ae954c56c9aac44523372ea187bb5e3732c36f0f4e`  
		Last Modified: Thu, 14 Dec 2017 14:16:35 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebadb50e535d9e0c84d0fe626b2fb2ebf2d490a5335819deee21b6f60d47b869`  
		Last Modified: Thu, 14 Dec 2017 14:16:34 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3737d0a697288225820d6b0ce477c2bf898c72c344f2acd85ef6e940fcdcf7c0`  
		Last Modified: Thu, 14 Dec 2017 14:16:34 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48119b301f61a7c4322475e75457617e5d0db2645824cb08a0f7d04773766314`  
		Last Modified: Thu, 14 Dec 2017 14:16:35 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce64d009b71ee3f66c3cc4f6d26694292b61732cdecc3d6f7179146df968aae`  
		Last Modified: Thu, 14 Dec 2017 14:16:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.14` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:565951f2a759c58195f7381dfc1c8293dfa1cfdea31855d0518c226f7a8cb837
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57366250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3873238a004307a96a4ccd3c12333efe517f2951c8be70d441f2e2ccce665ccc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 18:34:13 GMT
ADD file:6e068c7cc5397bfb4ec60dab4d410c5d3ba724f20ad0129d2032fb509f0eadcd in / 
# Tue, 12 Dec 2017 18:34:14 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:53:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:53:52 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:53:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 14:54:26 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 15 Dec 2017 06:12:03 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 06:12:04 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 15 Dec 2017 06:12:05 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Dec 2017 06:12:05 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 15 Dec 2017 06:12:06 GMT
ENV RABBITMQ_VERSION=3.6.14
# Fri, 15 Dec 2017 06:12:07 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Fri, 15 Dec 2017 06:12:07 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Fri, 15 Dec 2017 06:12:51 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 06:12:52 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 15 Dec 2017 06:12:54 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 15 Dec 2017 06:12:54 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 15 Dec 2017 06:12:56 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 15 Dec 2017 06:12:58 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 15 Dec 2017 06:12:59 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Fri, 15 Dec 2017 06:13:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 15 Dec 2017 06:13:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Dec 2017 06:13:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 15 Dec 2017 06:13:03 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:fcad8cfc11c78a53ccf9aafafcb3ded5044dbd181977e6255aea54fbe164f131`  
		Last Modified: Tue, 12 Dec 2017 18:49:05 GMT  
		Size: 20.3 MB (20331270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb3f7722e72f404b7e544c9a358cc7390f02c0b391a14ea7dbecd85dca7d195`  
		Last Modified: Wed, 13 Dec 2017 15:03:22 GMT  
		Size: 4.1 MB (4073192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c72eaa15e586a9eb8cbde84a24922fdabb2aa060ef64831fb867757ac6f83a`  
		Last Modified: Wed, 13 Dec 2017 15:03:21 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ebe8f28a8d2ed828ab5c0431545a097e3f46a3ac45e36976fde6daa9fb405d`  
		Last Modified: Wed, 13 Dec 2017 15:03:21 GMT  
		Size: 919.4 KB (919386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4af0cd180d3c4155a1b370d4c4b32c572c56e71baf035f78d6393a2261e09ef`  
		Last Modified: Fri, 15 Dec 2017 06:14:16 GMT  
		Size: 25.0 MB (25043251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c59c22df0aeabb463d530ba6fe460b0bb9e2274edfc3ef2369106ae808f59e`  
		Last Modified: Fri, 15 Dec 2017 06:14:12 GMT  
		Size: 7.0 MB (6988381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed4f64048e6de3d85028fb86a60f4341d27a78edeee17c8f88d1c75dbcae28d`  
		Last Modified: Fri, 15 Dec 2017 06:14:08 GMT  
		Size: 2.3 KB (2266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2c56f79bbd6ce5478b96c7b43ff81be29c575ac6c8b54c21e46ee3ea479bd6`  
		Last Modified: Fri, 15 Dec 2017 06:14:08 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8866d075ac88162cc5b75f425df1fca5f5022d89f25d660f3a714fcb75e2dbf4`  
		Last Modified: Fri, 15 Dec 2017 06:14:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18ceac2841ce59e5eb7bde6d30802e8539321a8971a696ea6d37ffe87a0d203f`  
		Last Modified: Fri, 15 Dec 2017 06:14:10 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8fc8933203dfbf3ae80cb5e49a4db2d4aa3274957edb60dc3da362245a6fb3`  
		Last Modified: Fri, 15 Dec 2017 06:14:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.14` - linux; 386

```console
$ docker pull rabbitmq@sha256:e4286364923a4c09b2e317400a5349ebe12cc3220cc83e8c96d1dbf225314a42
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.0 MB (63991499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f23b2aa71b1b1c74b4c37d6ff5b9e654bb1f3fc66f0c4e379fefc8cf00f3a13`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 14:36:09 GMT
ADD file:ef60a5257bf2b5766f692e39f5922bbd6161e45de184b7b138522d53a477c7af in / 
# Tue, 12 Dec 2017 14:36:09 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:14:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:14:35 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:14:36 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 21:14:51 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 14 Dec 2017 14:47:18 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 14:47:26 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 14 Dec 2017 14:47:26 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Dec 2017 14:47:27 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 14 Dec 2017 14:47:27 GMT
ENV RABBITMQ_VERSION=3.6.14
# Thu, 14 Dec 2017 14:47:27 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Thu, 14 Dec 2017 14:47:27 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Thu, 14 Dec 2017 14:47:55 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 14:47:56 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 14 Dec 2017 14:47:56 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 14 Dec 2017 14:47:57 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 14 Dec 2017 14:54:56 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 14 Dec 2017 14:54:57 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 14 Dec 2017 14:54:57 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Thu, 14 Dec 2017 14:54:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 14 Dec 2017 14:55:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Dec 2017 14:55:08 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 14 Dec 2017 14:55:08 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:4dbce982b05e209cf10a433462dc417f7816c47b0c1a151c8c93206b299b9a14`  
		Last Modified: Tue, 12 Dec 2017 15:03:13 GMT  
		Size: 23.1 MB (23122456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7c11e0bc622b0180ed093c8a4da0dc404613fc4331a2436a3669aa08c6e818`  
		Last Modified: Tue, 12 Dec 2017 21:33:10 GMT  
		Size: 4.8 MB (4803791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f7b212f68d587a5e50aa75b4635c7d49a9c744d221e091404cb2d1cf4327a1`  
		Last Modified: Tue, 12 Dec 2017 21:33:05 GMT  
		Size: 4.1 KB (4055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb0df0b481030711e1f4ccd5b60509dc4796c769e4d46ddf668819aba41c5d2`  
		Last Modified: Tue, 12 Dec 2017 21:33:05 GMT  
		Size: 931.6 KB (931574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0854aad6d0cf47dc5d8bfbefd1606e8277c0c1be4736698e40cbf748135ccb05`  
		Last Modified: Thu, 14 Dec 2017 15:04:56 GMT  
		Size: 27.8 MB (27819006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c4b6d2406d4cc0df305012c01048c67b8ab0b66dc7b60f6baf84f59e1397a7c`  
		Last Modified: Thu, 14 Dec 2017 15:04:52 GMT  
		Size: 7.3 MB (7303921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9de52b03891136ae6bf4d54630d8e5ada7b9b4ec2a7c12de71cab0054bf3e8a`  
		Last Modified: Thu, 14 Dec 2017 15:04:47 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ab3e298a93d7b8bc21f6d3ad2e1376888f1e448e1246dcc03f8043dbeccde7`  
		Last Modified: Thu, 14 Dec 2017 15:04:47 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f57c58a277aceb5a74cced663362e607fb8fe3dad455903e5bb8e3cff0a7875`  
		Last Modified: Thu, 14 Dec 2017 15:04:52 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfbfaad6b20293294e2284d4374c558936b87e2b16850232cf258ba9e853a22`  
		Last Modified: Thu, 14 Dec 2017 15:04:46 GMT  
		Size: 4.0 KB (4042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0096b1285f117fbf559f96b0b9e9375ef3ebbfbb77d79148061b48dc7ccb8e32`  
		Last Modified: Thu, 14 Dec 2017 15:04:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.14` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:b56f80778dea6411e789a0a336112e0851c37d3713ccb028e7d13e25cfb6559b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60473083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd0a8e45a42de331d34455bbb50a00c192081af70eaf523eded483208629a46e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:41 GMT
ADD file:896602a6d015367badb26a7ac0bcafc9aa04cbba205925631d315874b6d289ab in / 
# Tue, 12 Dec 2017 01:35:42 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 08:12:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 08:12:31 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 08:12:32 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 08:14:14 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 14 Dec 2017 08:15:16 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 08:15:18 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 14 Dec 2017 08:15:19 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Dec 2017 08:15:20 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 14 Dec 2017 08:15:21 GMT
ENV RABBITMQ_VERSION=3.6.14
# Thu, 14 Dec 2017 08:15:23 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Thu, 14 Dec 2017 08:15:24 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Thu, 14 Dec 2017 08:16:37 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 08:16:38 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 14 Dec 2017 08:16:42 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 14 Dec 2017 08:16:43 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 14 Dec 2017 08:16:48 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 14 Dec 2017 08:16:51 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 14 Dec 2017 08:16:52 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Thu, 14 Dec 2017 08:16:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 14 Dec 2017 08:16:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Dec 2017 08:16:59 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 14 Dec 2017 08:17:01 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:b8b738bec437a97371af422179183d09cdb031f677b2dba4deaed774655ee9d8`  
		Last Modified: Tue, 12 Dec 2017 01:42:57 GMT  
		Size: 22.7 MB (22739713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074d2b018f7cf8971581f936aa1922718699254821ac925337d59075ff941e16`  
		Last Modified: Wed, 13 Dec 2017 08:25:16 GMT  
		Size: 4.4 MB (4360551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b59ed4bf511e4fbf8389c0a178fefb54388dd09f9fd41997517b5a18a77175`  
		Last Modified: Wed, 13 Dec 2017 08:25:12 GMT  
		Size: 4.1 KB (4108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd7fb01f62115b9286f1e6a7d47d0c323e3b09c6bd6d04e59fd6af3b2fd8704`  
		Last Modified: Wed, 13 Dec 2017 08:25:13 GMT  
		Size: 920.7 KB (920674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c64d8ce325d1e59fb580a5aaa131644c9e6806339a74b37339af249798b703e`  
		Last Modified: Thu, 14 Dec 2017 08:20:39 GMT  
		Size: 25.5 MB (25492619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d75bef4e06f5e75b973db20cc885f296034dd79909c88c20e6d6c1f2ebce346`  
		Last Modified: Thu, 14 Dec 2017 08:20:35 GMT  
		Size: 6.9 MB (6948720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ce6797876ed04e127b1e9c54b5c792c5429dcaff81d2b0193edfad874bed474`  
		Last Modified: Thu, 14 Dec 2017 08:20:31 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e85099c9c7b219cd65a67bcc2f6346852c15cbfb3938550985b31c8b697c19`  
		Last Modified: Thu, 14 Dec 2017 08:20:31 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a256604bf9e54b705607584d05f2bf53c19ed831e64c2e2fcbcf665d13a4b4b`  
		Last Modified: Thu, 14 Dec 2017 08:20:31 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f73f0672b65e40607194823b09d28c568bab0db0b70c5ca71f0a91ebd19421b`  
		Last Modified: Thu, 14 Dec 2017 08:20:31 GMT  
		Size: 4.0 KB (4040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d55f768d7d3129ebe2b55a9f592966aae123286b86f829ab50befdc1cabf86`  
		Last Modified: Thu, 14 Dec 2017 08:20:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.14` - linux; s390x

```console
$ docker pull rabbitmq@sha256:091c69f51ed205c73313f5f363beeba0abdf8e7b64b253ace58bdc5253e85345
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60456100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad54a43174bbd509a39b2e2a99b93aa53f2892f9ffbc62329a3f70b30a0cf89e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 06:25:50 GMT
ADD file:8cd208817150f41f5b21f5c2b6641af023ddeaa6d842fe490190e20effe94a08 in / 
# Tue, 12 Dec 2017 06:25:51 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 08:33:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 08:33:05 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 08:33:05 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 08:33:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Dec 2017 08:33:26 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 08:33:26 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 08:33:27 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 08:33:27 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 12 Dec 2017 08:33:27 GMT
ENV RABBITMQ_VERSION=3.6.14
# Tue, 12 Dec 2017 08:33:27 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Tue, 12 Dec 2017 08:33:27 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Tue, 12 Dec 2017 08:33:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 08:33:57 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 12 Dec 2017 08:33:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 12 Dec 2017 08:33:58 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 12 Dec 2017 08:33:58 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 12 Dec 2017 08:33:59 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 12 Dec 2017 08:33:59 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Tue, 12 Dec 2017 08:34:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Dec 2017 08:34:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 08:34:00 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 12 Dec 2017 08:34:01 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:da91ecedba56836763b256841bfd01198234139e3e4824510318c25fa8cf140a`  
		Last Modified: Tue, 12 Dec 2017 06:31:22 GMT  
		Size: 22.3 MB (22333855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c470192e9d4b665b180304cb21cc820cd23ac8bb65b0df208abceff86257823`  
		Last Modified: Tue, 12 Dec 2017 08:34:42 GMT  
		Size: 4.5 MB (4529872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0d39c0a4838e17ab734f247319a26028455a1dddef8a58ee0846289f22a04d`  
		Last Modified: Tue, 12 Dec 2017 08:34:42 GMT  
		Size: 4.1 KB (4069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3888716305b8444b3df85fcca7dce471db3183218b68197cd90d48874ae202e`  
		Last Modified: Tue, 12 Dec 2017 08:34:40 GMT  
		Size: 938.0 KB (938008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fe958694d6e652ff38884a8b6fe90e743489a534a1267b5155d6c5855f2a1d`  
		Last Modified: Tue, 12 Dec 2017 08:34:43 GMT  
		Size: 25.6 MB (25621148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bd5886a51f87e2aa36a024567f7d1192c4dc4497b281821b2e655c3ed9957e`  
		Last Modified: Tue, 12 Dec 2017 08:34:41 GMT  
		Size: 7.0 MB (7022456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10bcc0ae7b3dd8fe9ac3641c815f860b6efff2f94085a3f6005796ff79f74d8b`  
		Last Modified: Tue, 12 Dec 2017 08:34:41 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a39a516003d4a06111c8eccae52da87cd5fc7a5a2355c323e7202ffa08fae9`  
		Last Modified: Tue, 12 Dec 2017 08:34:38 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15ec49a7ceea192b6e143eafaced96d6298c0ec6f2ddb87686887b55ecc1dd2`  
		Last Modified: Tue, 12 Dec 2017 08:34:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d781af837cef2daa4917a934e1cd06ec5f62e5931c09a226be3136f144c6a581`  
		Last Modified: Tue, 12 Dec 2017 08:34:39 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c812d16cc8632f8b7c4fef0761f4b37fc10bdbb10e437e8b93a24c363f19e0`  
		Last Modified: Tue, 12 Dec 2017 08:34:38 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.14-alpine`

```console
$ docker pull rabbitmq@sha256:3ad9319cb9f81a6f92c5876056b98aa24cba2e935481e05395c2fbd4f0d06a05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:3.6.14-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:f9956c4c9a673d2c3099fb4ed4593f48ba731f20952fa40a5040bc48c1ea48de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23675396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:639b4e924dba99dc4058ce2c9703b10b664f25fa28598ba57c1ad7446147f910`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Mon, 04 Dec 2017 17:03:58 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Mon, 04 Dec 2017 17:04:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 04 Dec 2017 17:04:08 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Mon, 04 Dec 2017 17:04:08 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 04 Dec 2017 17:04:09 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 04 Dec 2017 17:04:09 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 04 Dec 2017 17:04:09 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 04 Dec 2017 17:04:09 GMT
ENV RABBITMQ_VERSION=3.6.14
# Mon, 04 Dec 2017 17:04:09 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Mon, 04 Dec 2017 17:08:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 04 Dec 2017 17:08:54 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 04 Dec 2017 17:08:55 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 04 Dec 2017 17:08:55 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 04 Dec 2017 17:08:56 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 04 Dec 2017 17:08:56 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 04 Dec 2017 17:09:02 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Mon, 04 Dec 2017 17:09:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 04 Dec 2017 17:09:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 04 Dec 2017 17:09:02 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bef8a974bf28a4ce6187dab11ba3d7e7bfc62c7bcecc924d04d06f2b48b4e2`  
		Last Modified: Mon, 04 Dec 2017 17:09:39 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de36a39ba73b67eaea72130fc2b7c3ef2baf8d7272dd67d710eba07fa6d343b`  
		Last Modified: Mon, 04 Dec 2017 17:09:38 GMT  
		Size: 8.2 KB (8186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe87b64548ab7b9dd6f900557a8d2e9cc4f4a956e00f6b406d0076617eeca3f`  
		Last Modified: Mon, 04 Dec 2017 17:09:40 GMT  
		Size: 16.6 MB (16561532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2cc1dffaa8d5540ca648b57aa49f683e789d619cfdaadce7d79268670eca78f`  
		Last Modified: Mon, 04 Dec 2017 17:09:36 GMT  
		Size: 5.1 MB (5108437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b6c8dbec1f7121ec32db63a8599c1de1ee545203d341c351587fc9f2bfa792`  
		Last Modified: Mon, 04 Dec 2017 17:09:35 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f366a519a51a4f960ee2dfb658781890431abf30d28b2c8131b0949dfb3bcd`  
		Last Modified: Mon, 04 Dec 2017 17:09:36 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe945e6083bde6006e004889c78999b52514ce14ef69cfa7418c31dc95b0f38b`  
		Last Modified: Mon, 04 Dec 2017 17:09:36 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38528eeb9eeafdb1efdc11f57a8fbb6be3ca86e9ba49a8360094ae8dd3c34db5`  
		Last Modified: Mon, 04 Dec 2017 17:09:35 GMT  
		Size: 4.0 KB (4035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.14-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:8ca2ed949be25591e6021e6059e73fcda857f46999cb8e77467765e52625d0ed
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23508823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ac7df854f858b303a74fd4fa846018b6bc4b96565b40c3259c6eeb0a6b03126`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:25:53 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 05:25:55 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 05:26:10 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 05:26:10 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 05:26:10 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 05:26:11 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:26:11 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 22:29:22 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 22:29:22 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 22:29:30 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 22:29:30 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 22:29:31 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 22:29:31 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 22:29:32 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 22:29:33 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 22:29:33 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 22:29:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 22:29:33 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 22:29:34 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e62a8c5580cc1c2fbf2f9ce119bc0c06403a12ad18167bde2ec94420810916db`  
		Last Modified: Thu, 26 Oct 2017 05:26:38 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b096e39434b5aeddcb2ec167b7bf570cac7b8b16e68324d3f46c6f4d41b69c79`  
		Last Modified: Thu, 26 Oct 2017 05:26:37 GMT  
		Size: 8.4 KB (8374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ad9273316fa6f22cd2e8cf88c92f34c3210325fa1be2041153a96f4124476f`  
		Last Modified: Thu, 26 Oct 2017 05:26:41 GMT  
		Size: 16.4 MB (16420180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:def7e14af1452af84fe90bf70146e698b6538baeb09405b466c049bc7a01cffb`  
		Last Modified: Wed, 08 Nov 2017 22:29:51 GMT  
		Size: 5.1 MB (5108307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11b8c52a886dcd2289a0fcb50609344c74251a25f12ebcfcd9c59592acc60afb`  
		Last Modified: Wed, 08 Nov 2017 22:29:51 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de92213dcd31e0f93bad6a925ef1b3313ef3a2b7232eaef61f7d8ff602784a60`  
		Last Modified: Wed, 08 Nov 2017 22:29:51 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55d457590097f50c6b230694177301ff5463ee9f4b5a2adb14a8c77b1ea50d0`  
		Last Modified: Wed, 08 Nov 2017 22:29:51 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc77805948705e053365c05ea65bb3981543d05d4ed31190435d441f3a4f095a`  
		Last Modified: Wed, 08 Nov 2017 22:29:50 GMT  
		Size: 4.0 KB (4036 bytes)  
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

### `rabbitmq:3.6.14-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:286ed734d5df8b66af0b061dbe57b206b4c81ad365d3a6b10f6bd47eac7e211f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23735646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ccbdf070e8f0d3a145eb3ebb8140a9993cee38fdab585247c586613fe5915b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 07:12:01 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 07:12:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 07:12:36 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 07:12:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 07:12:39 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 07:12:41 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 07:12:42 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 09 Nov 2017 08:13:34 GMT
ENV RABBITMQ_VERSION=3.6.14
# Thu, 09 Nov 2017 08:13:35 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Thu, 09 Nov 2017 08:13:48 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 09 Nov 2017 08:13:50 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 09 Nov 2017 08:13:53 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 09 Nov 2017 08:13:54 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 09 Nov 2017 08:13:57 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 09 Nov 2017 08:14:00 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 09 Nov 2017 08:14:01 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Thu, 09 Nov 2017 08:14:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Nov 2017 08:14:04 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 09 Nov 2017 08:14:11 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48c95ed960185dbd69324a206614e723f0086f80b46bd3223f233e4f1e278bc`  
		Last Modified: Thu, 26 Oct 2017 07:14:01 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a8242358db9adbde1a17b0e2b320c02112fcefa90d397ecc028a9729efcf94`  
		Last Modified: Thu, 26 Oct 2017 07:14:01 GMT  
		Size: 9.1 KB (9059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6db9581873eb0cadddc4d474e33cb2ec978c0d68e3ea124ce4f07ab2731d79`  
		Last Modified: Thu, 26 Oct 2017 07:14:04 GMT  
		Size: 16.6 MB (16603134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8418b6d09429bcd6a4be2a5f3c0bed17241159628908719c1d68db7fdf36516c`  
		Last Modified: Thu, 09 Nov 2017 08:15:56 GMT  
		Size: 5.1 MB (5108888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83283b53f86d99c1e4eb5b4ab2a47a9cd8173d17e912d17345041d21286d7072`  
		Last Modified: Thu, 09 Nov 2017 08:15:56 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c75d5990c1c030e1fb99e1acd8a96e9d645860539be9d12ca33d98856dc1ee`  
		Last Modified: Thu, 09 Nov 2017 08:15:56 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd92cb4655990fa65b88a64cf3678420bb3df2aecf6e1da294b92a2f44f9a73`  
		Last Modified: Thu, 09 Nov 2017 08:15:56 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3369f91cfed7738d268f3355a87bdbe2151649ae6abae2add90bc4a58311ba`  
		Last Modified: Thu, 09 Nov 2017 08:15:56 GMT  
		Size: 4.0 KB (4034 bytes)  
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
$ docker pull rabbitmq@sha256:1f72ab229006f9ac00d4f87d8dd2b94eea84a0a7afc4488f9cd4a22e36fd34cd
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

### `rabbitmq:3.6.14-management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:44dd4cb8a85dfc7d48a5c52aa40690245508571b9a15a8bb410c7ddc3fccc861
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.6 MB (70574004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42b283da44d0b52785e7f114e5252f6f9fbcc0f0ca580461e6c7125af9ab3e94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:40:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:40:50 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:40:50 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 23:25:20 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Dec 2017 22:41:56 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 22:41:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 22:41:57 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 22:41:57 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 13 Dec 2017 22:41:57 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 13 Dec 2017 22:41:57 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 13 Dec 2017 22:41:57 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 13 Dec 2017 22:42:15 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 22:42:15 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 13 Dec 2017 22:42:16 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 13 Dec 2017 22:42:16 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 13 Dec 2017 22:42:17 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 13 Dec 2017 22:42:17 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 13 Dec 2017 22:42:18 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 13 Dec 2017 22:42:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Dec 2017 22:42:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Dec 2017 22:42:19 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 13 Dec 2017 22:42:19 GMT
CMD ["rabbitmq-server"]
# Wed, 13 Dec 2017 22:42:33 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 13 Dec 2017 22:42:40 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Wed, 13 Dec 2017 22:42:40 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad90649c4d840febdaefa1afaad7ef8bbf2e0087ba1d11a95968afce0503f342`  
		Last Modified: Tue, 12 Dec 2017 21:45:30 GMT  
		Size: 4.5 MB (4498351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a318b914d6cead2434cc74ee74c48511ad6ec06a38ab190157246497f44afb1`  
		Last Modified: Tue, 12 Dec 2017 21:45:28 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cedd60f70052462179e86a0439f5fb3fa7b40f41dc55be9152bd147181481594`  
		Last Modified: Tue, 12 Dec 2017 23:26:36 GMT  
		Size: 951.9 KB (951937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f754361b064d80cbbc395293d4261ab436a56dd9f48051d02ddc1ebc5db063cf`  
		Last Modified: Wed, 13 Dec 2017 22:45:55 GMT  
		Size: 27.7 MB (27704549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9024d880d34265ece30676749721684fc8f0c96caea2b32dc601b778c1100c22`  
		Last Modified: Wed, 13 Dec 2017 22:45:51 GMT  
		Size: 7.3 MB (7288344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d775050fc8e00eb5962b60ab0791c91abd16cda2ff67f6bd2d42b7a4ae1ed8`  
		Last Modified: Wed, 13 Dec 2017 22:45:49 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e9f52fff6701ba7af9d46b719f371faea74ac2ef33c7f372c834980c3ffa682`  
		Last Modified: Wed, 13 Dec 2017 22:45:49 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af9c86e10713f67d37012d592df8c955b7503e8955178f161a4e8ca1af30dbd`  
		Last Modified: Wed, 13 Dec 2017 22:45:49 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80eef1b61d3787c7285c9f1598cabdd208abf640878a22dbc7a758d92f196a24`  
		Last Modified: Wed, 13 Dec 2017 22:45:49 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82f0271a3b5e89418a9758621ff527e0b47d3be9b81ab7f5bd9f2a3441da822e`  
		Last Modified: Wed, 13 Dec 2017 22:45:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f959a3f62b05138d5c91dfc1aa8fc78f209bd25d3530452a9552a329cac825`  
		Last Modified: Wed, 13 Dec 2017 22:46:18 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a289a4ffa099c488611aa265fef4fbf9267aa38cbe37afdaaada4bd23e6df940`  
		Last Modified: Wed, 13 Dec 2017 22:46:19 GMT  
		Size: 7.6 MB (7634147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.14-management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:0552566023e7b5a5e5402be64c184043f5edd8a07c96628e8b22c3217bbe4894
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (66006831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93d014a0de79e9cd1f10686a0fbbbe0c5cb599738c2855edcfd0ff3533b6f72e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 21:02:20 GMT
ADD file:f69e5781e9ff2a9867d94175d91d31553e07613bf4b50a1064274ed21a5ed353 in / 
# Tue, 12 Dec 2017 21:02:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 23:14:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:14:46 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 23:14:46 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 23:15:03 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 14 Dec 2017 16:03:21 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 16:03:21 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 14 Dec 2017 16:03:21 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Dec 2017 16:03:22 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 14 Dec 2017 16:03:22 GMT
ENV RABBITMQ_VERSION=3.6.14
# Thu, 14 Dec 2017 16:03:22 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Thu, 14 Dec 2017 16:03:22 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Thu, 14 Dec 2017 16:03:57 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 16:03:57 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 14 Dec 2017 16:03:58 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 14 Dec 2017 16:03:58 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 14 Dec 2017 16:03:59 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 14 Dec 2017 16:04:00 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 14 Dec 2017 16:04:01 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Thu, 14 Dec 2017 16:04:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 14 Dec 2017 16:04:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Dec 2017 16:04:03 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 14 Dec 2017 16:04:04 GMT
CMD ["rabbitmq-server"]
# Thu, 14 Dec 2017 16:04:23 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 14 Dec 2017 16:04:37 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Thu, 14 Dec 2017 16:04:37 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:20f319b2549a8d631c2e8034bfc3f9c12042d86a686470a8addd2fb7bc8c688c`  
		Last Modified: Tue, 12 Dec 2017 21:12:53 GMT  
		Size: 21.2 MB (21160630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608d8fd7a6001a09dff4cc76414aa4711207466847dfa91271aa6dd09becdd6a`  
		Last Modified: Tue, 12 Dec 2017 23:21:52 GMT  
		Size: 4.2 MB (4231488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d214c26ea8bd4ea1468f2b7c9806f8f3cde7cd6c2f09660325ea38b81dcb9c13`  
		Last Modified: Tue, 12 Dec 2017 23:21:50 GMT  
		Size: 4.1 KB (4082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9640468e3e315e94fa5dfdb6b79a97eb7f83beebca51e85a68ab3ef6a4b13106`  
		Last Modified: Tue, 12 Dec 2017 23:21:51 GMT  
		Size: 942.4 KB (942449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a48df8dffe8d7abc99262501640ec504bd99298931665619a273e6e0fb2325a`  
		Last Modified: Thu, 14 Dec 2017 16:06:26 GMT  
		Size: 25.2 MB (25170558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628197b3ac0c36d043b6c5362d625842cf23e17b3d1ef39ec2ce51db37234775`  
		Last Modified: Thu, 14 Dec 2017 16:06:22 GMT  
		Size: 7.0 MB (7004017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f07234a313377f3c770240c21a3603d9447d2bfb6d9cf001281e25fbcdd8a9b`  
		Last Modified: Thu, 14 Dec 2017 16:06:20 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc75bafc67aa6a918182bbe3b19fd75f612fac2fe0fcbb48e8d7587ae5591c5e`  
		Last Modified: Thu, 14 Dec 2017 16:06:20 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cae7b78b8f1f851b097d06728dd2ea52e8855e717e7e4ea9c1217619b47d803`  
		Last Modified: Thu, 14 Dec 2017 16:06:19 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab838fee3e739cb1290ed6a287952076773549b1345be82eddc8067b754da709`  
		Last Modified: Thu, 14 Dec 2017 16:06:20 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95543d40adc1f829cc7d43e55e25ac26298994ebcee1be43bde800f3d6f39a4`  
		Last Modified: Thu, 14 Dec 2017 16:06:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf58388b495e9c43d5f66f5499acb2c87c596bff1c1b2d8dd11b7811b2db03f`  
		Last Modified: Thu, 14 Dec 2017 16:06:47 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc943482bc5e8118204954fbd40cd667bdc49976e4f09ab28b6b6e4006b957c0`  
		Last Modified: Thu, 14 Dec 2017 16:06:50 GMT  
		Size: 7.5 MB (7486719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.14-management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:a614b7202829381af2da7d55250527a0f7fd495e7afab492c220a6b8f8c12d1e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (62970900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f517390fad104db44e1518ebf4ba9013372107d29b8464eda5831c0e548c05e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 13:33:42 GMT
ADD file:cfde12259adb7102e76690e986f1b9b07967a8984c85d0cead09969f5de8b8cc in / 
# Tue, 12 Dec 2017 13:33:42 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:07:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:07:51 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:07:52 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 14:08:30 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 14 Dec 2017 14:10:53 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 14:10:54 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 14 Dec 2017 14:10:54 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Dec 2017 14:10:54 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 14 Dec 2017 14:11:06 GMT
ENV RABBITMQ_VERSION=3.6.14
# Thu, 14 Dec 2017 14:11:06 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Thu, 14 Dec 2017 14:11:06 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Thu, 14 Dec 2017 14:12:13 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 14:12:14 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 14 Dec 2017 14:12:15 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 14 Dec 2017 14:12:15 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 14 Dec 2017 14:12:17 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 14 Dec 2017 14:12:18 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 14 Dec 2017 14:12:19 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Thu, 14 Dec 2017 14:12:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 14 Dec 2017 14:12:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Dec 2017 14:12:21 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 14 Dec 2017 14:12:22 GMT
CMD ["rabbitmq-server"]
# Thu, 14 Dec 2017 14:13:05 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 14 Dec 2017 14:13:26 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Thu, 14 Dec 2017 14:13:28 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:cd8b673adb84fd5eae3444d0475addad7e8908a8332704c4407baa97e9b0b284`  
		Last Modified: Tue, 12 Dec 2017 13:45:48 GMT  
		Size: 19.3 MB (19271028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681dc17295c86c86ee974da339cea0f010f6f5780ffd3b6fd3fa6b2a3d124fdd`  
		Last Modified: Wed, 13 Dec 2017 14:13:29 GMT  
		Size: 3.9 MB (3868482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03995e4857910fd538adfc3a896164f12117829662b917fd93835e24ec792b07`  
		Last Modified: Wed, 13 Dec 2017 14:13:28 GMT  
		Size: 4.1 KB (4083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7dd231e7e929346f4a5183b1f2df19bd46ef0f6ea9b79077593abd76f02737`  
		Last Modified: Wed, 13 Dec 2017 14:13:27 GMT  
		Size: 926.2 KB (926167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d0b2e3170e12ed4a59b63408e303f53ad5caaec2df4492592e724b62d4e00f`  
		Last Modified: Thu, 14 Dec 2017 14:16:41 GMT  
		Size: 24.8 MB (24785494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c16e2e094c09d0570adda2030c1211023aa05be5b05c7fe4c8ebde2174ac15`  
		Last Modified: Thu, 14 Dec 2017 14:16:37 GMT  
		Size: 6.9 MB (6912728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2a9f7c6a7a74d79e7e43ae954c56c9aac44523372ea187bb5e3732c36f0f4e`  
		Last Modified: Thu, 14 Dec 2017 14:16:35 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebadb50e535d9e0c84d0fe626b2fb2ebf2d490a5335819deee21b6f60d47b869`  
		Last Modified: Thu, 14 Dec 2017 14:16:34 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3737d0a697288225820d6b0ce477c2bf898c72c344f2acd85ef6e940fcdcf7c0`  
		Last Modified: Thu, 14 Dec 2017 14:16:34 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48119b301f61a7c4322475e75457617e5d0db2645824cb08a0f7d04773766314`  
		Last Modified: Thu, 14 Dec 2017 14:16:35 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce64d009b71ee3f66c3cc4f6d26694292b61732cdecc3d6f7179146df968aae`  
		Last Modified: Thu, 14 Dec 2017 14:16:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4078d0a31c7b26f0ad691a6275771f7616432bccc29077ccb8a9cb8cbf03e30f`  
		Last Modified: Thu, 14 Dec 2017 14:17:20 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95f0b70032ecb0cdbe51447904dd20ee404cee4254525498b6949f9d0639a89`  
		Last Modified: Thu, 14 Dec 2017 14:17:23 GMT  
		Size: 7.2 MB (7196035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.14-management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:2d11966b4277ecbe977a76df9ce659223bc1275fb93d3478437e6dc14987d337
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.9 MB (64853941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae121c416fcdb5b80c9eab4c57d319cb3fd67f986fb31540552f60be34cb09d1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 18:34:13 GMT
ADD file:6e068c7cc5397bfb4ec60dab4d410c5d3ba724f20ad0129d2032fb509f0eadcd in / 
# Tue, 12 Dec 2017 18:34:14 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:53:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:53:52 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:53:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 14:54:26 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 15 Dec 2017 06:12:03 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 06:12:04 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 15 Dec 2017 06:12:05 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Dec 2017 06:12:05 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 15 Dec 2017 06:12:06 GMT
ENV RABBITMQ_VERSION=3.6.14
# Fri, 15 Dec 2017 06:12:07 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Fri, 15 Dec 2017 06:12:07 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Fri, 15 Dec 2017 06:12:51 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 06:12:52 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 15 Dec 2017 06:12:54 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 15 Dec 2017 06:12:54 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 15 Dec 2017 06:12:56 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 15 Dec 2017 06:12:58 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 15 Dec 2017 06:12:59 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Fri, 15 Dec 2017 06:13:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 15 Dec 2017 06:13:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Dec 2017 06:13:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 15 Dec 2017 06:13:03 GMT
CMD ["rabbitmq-server"]
# Fri, 15 Dec 2017 06:13:18 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 15 Dec 2017 06:13:39 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 15 Dec 2017 06:13:40 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:fcad8cfc11c78a53ccf9aafafcb3ded5044dbd181977e6255aea54fbe164f131`  
		Last Modified: Tue, 12 Dec 2017 18:49:05 GMT  
		Size: 20.3 MB (20331270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb3f7722e72f404b7e544c9a358cc7390f02c0b391a14ea7dbecd85dca7d195`  
		Last Modified: Wed, 13 Dec 2017 15:03:22 GMT  
		Size: 4.1 MB (4073192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c72eaa15e586a9eb8cbde84a24922fdabb2aa060ef64831fb867757ac6f83a`  
		Last Modified: Wed, 13 Dec 2017 15:03:21 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ebe8f28a8d2ed828ab5c0431545a097e3f46a3ac45e36976fde6daa9fb405d`  
		Last Modified: Wed, 13 Dec 2017 15:03:21 GMT  
		Size: 919.4 KB (919386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4af0cd180d3c4155a1b370d4c4b32c572c56e71baf035f78d6393a2261e09ef`  
		Last Modified: Fri, 15 Dec 2017 06:14:16 GMT  
		Size: 25.0 MB (25043251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c59c22df0aeabb463d530ba6fe460b0bb9e2274edfc3ef2369106ae808f59e`  
		Last Modified: Fri, 15 Dec 2017 06:14:12 GMT  
		Size: 7.0 MB (6988381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed4f64048e6de3d85028fb86a60f4341d27a78edeee17c8f88d1c75dbcae28d`  
		Last Modified: Fri, 15 Dec 2017 06:14:08 GMT  
		Size: 2.3 KB (2266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2c56f79bbd6ce5478b96c7b43ff81be29c575ac6c8b54c21e46ee3ea479bd6`  
		Last Modified: Fri, 15 Dec 2017 06:14:08 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8866d075ac88162cc5b75f425df1fca5f5022d89f25d660f3a714fcb75e2dbf4`  
		Last Modified: Fri, 15 Dec 2017 06:14:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18ceac2841ce59e5eb7bde6d30802e8539321a8971a696ea6d37ffe87a0d203f`  
		Last Modified: Fri, 15 Dec 2017 06:14:10 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8fc8933203dfbf3ae80cb5e49a4db2d4aa3274957edb60dc3da362245a6fb3`  
		Last Modified: Fri, 15 Dec 2017 06:14:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ef5c9f86390075c5eb17c50e04a62dd21485bdca06958b3f9aa1a4e90a6d9d`  
		Last Modified: Fri, 15 Dec 2017 06:14:29 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a91d48573892188b02884734cf8ad8aabf47cec55ecd941da2408188c3a0c02`  
		Last Modified: Fri, 15 Dec 2017 06:14:32 GMT  
		Size: 7.5 MB (7487499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.14-management` - linux; 386

```console
$ docker pull rabbitmq@sha256:397e63a705ab33b80f4ee024944afe882470d540c75cb8695b65861ba93f7e0f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.7 MB (71720053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1532794ebad3cd52315c48fb832cabd14e33cf5b45a4c19ea05385293f27dab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 14:36:09 GMT
ADD file:ef60a5257bf2b5766f692e39f5922bbd6161e45de184b7b138522d53a477c7af in / 
# Tue, 12 Dec 2017 14:36:09 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:14:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:14:35 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:14:36 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 21:14:51 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 14 Dec 2017 14:47:18 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 14:47:26 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 14 Dec 2017 14:47:26 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Dec 2017 14:47:27 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 14 Dec 2017 14:47:27 GMT
ENV RABBITMQ_VERSION=3.6.14
# Thu, 14 Dec 2017 14:47:27 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Thu, 14 Dec 2017 14:47:27 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Thu, 14 Dec 2017 14:47:55 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 14:47:56 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 14 Dec 2017 14:47:56 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 14 Dec 2017 14:47:57 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 14 Dec 2017 14:54:56 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 14 Dec 2017 14:54:57 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 14 Dec 2017 14:54:57 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Thu, 14 Dec 2017 14:54:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 14 Dec 2017 14:55:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Dec 2017 14:55:08 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 14 Dec 2017 14:55:08 GMT
CMD ["rabbitmq-server"]
# Thu, 14 Dec 2017 14:55:43 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 14 Dec 2017 14:55:56 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Thu, 14 Dec 2017 14:55:56 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:4dbce982b05e209cf10a433462dc417f7816c47b0c1a151c8c93206b299b9a14`  
		Last Modified: Tue, 12 Dec 2017 15:03:13 GMT  
		Size: 23.1 MB (23122456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7c11e0bc622b0180ed093c8a4da0dc404613fc4331a2436a3669aa08c6e818`  
		Last Modified: Tue, 12 Dec 2017 21:33:10 GMT  
		Size: 4.8 MB (4803791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f7b212f68d587a5e50aa75b4635c7d49a9c744d221e091404cb2d1cf4327a1`  
		Last Modified: Tue, 12 Dec 2017 21:33:05 GMT  
		Size: 4.1 KB (4055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb0df0b481030711e1f4ccd5b60509dc4796c769e4d46ddf668819aba41c5d2`  
		Last Modified: Tue, 12 Dec 2017 21:33:05 GMT  
		Size: 931.6 KB (931574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0854aad6d0cf47dc5d8bfbefd1606e8277c0c1be4736698e40cbf748135ccb05`  
		Last Modified: Thu, 14 Dec 2017 15:04:56 GMT  
		Size: 27.8 MB (27819006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c4b6d2406d4cc0df305012c01048c67b8ab0b66dc7b60f6baf84f59e1397a7c`  
		Last Modified: Thu, 14 Dec 2017 15:04:52 GMT  
		Size: 7.3 MB (7303921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9de52b03891136ae6bf4d54630d8e5ada7b9b4ec2a7c12de71cab0054bf3e8a`  
		Last Modified: Thu, 14 Dec 2017 15:04:47 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ab3e298a93d7b8bc21f6d3ad2e1376888f1e448e1246dcc03f8043dbeccde7`  
		Last Modified: Thu, 14 Dec 2017 15:04:47 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f57c58a277aceb5a74cced663362e607fb8fe3dad455903e5bb8e3cff0a7875`  
		Last Modified: Thu, 14 Dec 2017 15:04:52 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfbfaad6b20293294e2284d4374c558936b87e2b16850232cf258ba9e853a22`  
		Last Modified: Thu, 14 Dec 2017 15:04:46 GMT  
		Size: 4.0 KB (4042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0096b1285f117fbf559f96b0b9e9375ef3ebbfbb77d79148061b48dc7ccb8e32`  
		Last Modified: Thu, 14 Dec 2017 15:04:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b82eb2a677739c59e9ef2bb2b1c9c53e0263d1ab3a4cc31f4e879687d892d39`  
		Last Modified: Thu, 14 Dec 2017 15:06:11 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03230b11e08d4e14c5b3f9b7e7fbdf383b0f910e6942bc78a839cce645fc99a`  
		Last Modified: Thu, 14 Dec 2017 15:06:15 GMT  
		Size: 7.7 MB (7728361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.14-management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:3adb754eb334d4ededb26c7ac575e145be03bb4066537295295de4f858f2e828
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.3 MB (68311066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5bcef7b8f6d54d0a26a2ce3111041e5b359e68228f8c2d8bac70b571cae12d5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:41 GMT
ADD file:896602a6d015367badb26a7ac0bcafc9aa04cbba205925631d315874b6d289ab in / 
# Tue, 12 Dec 2017 01:35:42 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 08:12:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 08:12:31 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 08:12:32 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 08:14:14 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 14 Dec 2017 08:15:16 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 08:15:18 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 14 Dec 2017 08:15:19 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Dec 2017 08:15:20 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 14 Dec 2017 08:15:21 GMT
ENV RABBITMQ_VERSION=3.6.14
# Thu, 14 Dec 2017 08:15:23 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Thu, 14 Dec 2017 08:15:24 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Thu, 14 Dec 2017 08:16:37 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 08:16:38 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 14 Dec 2017 08:16:42 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 14 Dec 2017 08:16:43 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 14 Dec 2017 08:16:48 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 14 Dec 2017 08:16:51 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 14 Dec 2017 08:16:52 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Thu, 14 Dec 2017 08:16:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 14 Dec 2017 08:16:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Dec 2017 08:16:59 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 14 Dec 2017 08:17:01 GMT
CMD ["rabbitmq-server"]
# Thu, 14 Dec 2017 08:17:23 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 14 Dec 2017 08:17:57 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Thu, 14 Dec 2017 08:17:58 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:b8b738bec437a97371af422179183d09cdb031f677b2dba4deaed774655ee9d8`  
		Last Modified: Tue, 12 Dec 2017 01:42:57 GMT  
		Size: 22.7 MB (22739713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074d2b018f7cf8971581f936aa1922718699254821ac925337d59075ff941e16`  
		Last Modified: Wed, 13 Dec 2017 08:25:16 GMT  
		Size: 4.4 MB (4360551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b59ed4bf511e4fbf8389c0a178fefb54388dd09f9fd41997517b5a18a77175`  
		Last Modified: Wed, 13 Dec 2017 08:25:12 GMT  
		Size: 4.1 KB (4108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd7fb01f62115b9286f1e6a7d47d0c323e3b09c6bd6d04e59fd6af3b2fd8704`  
		Last Modified: Wed, 13 Dec 2017 08:25:13 GMT  
		Size: 920.7 KB (920674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c64d8ce325d1e59fb580a5aaa131644c9e6806339a74b37339af249798b703e`  
		Last Modified: Thu, 14 Dec 2017 08:20:39 GMT  
		Size: 25.5 MB (25492619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d75bef4e06f5e75b973db20cc885f296034dd79909c88c20e6d6c1f2ebce346`  
		Last Modified: Thu, 14 Dec 2017 08:20:35 GMT  
		Size: 6.9 MB (6948720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ce6797876ed04e127b1e9c54b5c792c5429dcaff81d2b0193edfad874bed474`  
		Last Modified: Thu, 14 Dec 2017 08:20:31 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e85099c9c7b219cd65a67bcc2f6346852c15cbfb3938550985b31c8b697c19`  
		Last Modified: Thu, 14 Dec 2017 08:20:31 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a256604bf9e54b705607584d05f2bf53c19ed831e64c2e2fcbcf665d13a4b4b`  
		Last Modified: Thu, 14 Dec 2017 08:20:31 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f73f0672b65e40607194823b09d28c568bab0db0b70c5ca71f0a91ebd19421b`  
		Last Modified: Thu, 14 Dec 2017 08:20:31 GMT  
		Size: 4.0 KB (4040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d55f768d7d3129ebe2b55a9f592966aae123286b86f829ab50befdc1cabf86`  
		Last Modified: Thu, 14 Dec 2017 08:20:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d5b484309664c3dbcf353a09ee1b42b099489063dddc56d0635fc870e7a7d7e`  
		Last Modified: Thu, 14 Dec 2017 08:20:56 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9ae8ec6d8e80e9951d631d10e4be1a3b9e1abc88d52ac64d02053e4454d2a9`  
		Last Modified: Thu, 14 Dec 2017 08:20:59 GMT  
		Size: 7.8 MB (7837791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.14-management` - linux; s390x

```console
$ docker pull rabbitmq@sha256:245643a52ee794bce22a8774612e667296a0651b3b38ec3cb80afa5d91a2b9da
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.1 MB (68063025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c917a43f5318b8a70212031ca2fb4e64a7fbd503ff4601dd1865609bf43af12a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 06:25:50 GMT
ADD file:8cd208817150f41f5b21f5c2b6641af023ddeaa6d842fe490190e20effe94a08 in / 
# Tue, 12 Dec 2017 06:25:51 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 08:33:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 08:33:05 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 08:33:05 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 08:33:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Dec 2017 08:33:26 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 08:33:26 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 08:33:27 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 08:33:27 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 12 Dec 2017 08:33:27 GMT
ENV RABBITMQ_VERSION=3.6.14
# Tue, 12 Dec 2017 08:33:27 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Tue, 12 Dec 2017 08:33:27 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Tue, 12 Dec 2017 08:33:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 08:33:57 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 12 Dec 2017 08:33:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 12 Dec 2017 08:33:58 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 12 Dec 2017 08:33:58 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 12 Dec 2017 08:33:59 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 12 Dec 2017 08:33:59 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Tue, 12 Dec 2017 08:34:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Dec 2017 08:34:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 08:34:00 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 12 Dec 2017 08:34:01 GMT
CMD ["rabbitmq-server"]
# Tue, 12 Dec 2017 08:34:09 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 12 Dec 2017 08:34:19 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Tue, 12 Dec 2017 08:34:20 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:da91ecedba56836763b256841bfd01198234139e3e4824510318c25fa8cf140a`  
		Last Modified: Tue, 12 Dec 2017 06:31:22 GMT  
		Size: 22.3 MB (22333855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c470192e9d4b665b180304cb21cc820cd23ac8bb65b0df208abceff86257823`  
		Last Modified: Tue, 12 Dec 2017 08:34:42 GMT  
		Size: 4.5 MB (4529872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0d39c0a4838e17ab734f247319a26028455a1dddef8a58ee0846289f22a04d`  
		Last Modified: Tue, 12 Dec 2017 08:34:42 GMT  
		Size: 4.1 KB (4069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3888716305b8444b3df85fcca7dce471db3183218b68197cd90d48874ae202e`  
		Last Modified: Tue, 12 Dec 2017 08:34:40 GMT  
		Size: 938.0 KB (938008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fe958694d6e652ff38884a8b6fe90e743489a534a1267b5155d6c5855f2a1d`  
		Last Modified: Tue, 12 Dec 2017 08:34:43 GMT  
		Size: 25.6 MB (25621148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bd5886a51f87e2aa36a024567f7d1192c4dc4497b281821b2e655c3ed9957e`  
		Last Modified: Tue, 12 Dec 2017 08:34:41 GMT  
		Size: 7.0 MB (7022456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10bcc0ae7b3dd8fe9ac3641c815f860b6efff2f94085a3f6005796ff79f74d8b`  
		Last Modified: Tue, 12 Dec 2017 08:34:41 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a39a516003d4a06111c8eccae52da87cd5fc7a5a2355c323e7202ffa08fae9`  
		Last Modified: Tue, 12 Dec 2017 08:34:38 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15ec49a7ceea192b6e143eafaced96d6298c0ec6f2ddb87686887b55ecc1dd2`  
		Last Modified: Tue, 12 Dec 2017 08:34:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d781af837cef2daa4917a934e1cd06ec5f62e5931c09a226be3136f144c6a581`  
		Last Modified: Tue, 12 Dec 2017 08:34:39 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c812d16cc8632f8b7c4fef0761f4b37fc10bdbb10e437e8b93a24c363f19e0`  
		Last Modified: Tue, 12 Dec 2017 08:34:38 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a76edf05a241011ab6eaf950af722157afccb3e9b728bf655a59ac5bbf276934`  
		Last Modified: Tue, 12 Dec 2017 08:35:06 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6b41650c448edb006b1e55a317d6a5f132b455bdeb830359d1f033c8b1f081`  
		Last Modified: Tue, 12 Dec 2017 08:35:07 GMT  
		Size: 7.6 MB (7606733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.14-management-alpine`

```console
$ docker pull rabbitmq@sha256:796b3fec3e873f067e2df29ce3effa78436de386f18ec629b39004ab2f29f0bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:3.6.14-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:b992dff59ad00e44c993eabea2e16520cc83844e8c9550eca2a374382f7c1a0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 MB (34646237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:159de24b8902baa20023587ef177505254af45d0a9d62dc5c9a3915f249c9146`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Mon, 04 Dec 2017 17:03:58 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Mon, 04 Dec 2017 17:04:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 04 Dec 2017 17:04:08 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Mon, 04 Dec 2017 17:04:08 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 04 Dec 2017 17:04:09 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 04 Dec 2017 17:04:09 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 04 Dec 2017 17:04:09 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 04 Dec 2017 17:04:09 GMT
ENV RABBITMQ_VERSION=3.6.14
# Mon, 04 Dec 2017 17:04:09 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Mon, 04 Dec 2017 17:08:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 04 Dec 2017 17:08:54 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 04 Dec 2017 17:08:55 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 04 Dec 2017 17:08:55 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 04 Dec 2017 17:08:56 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 04 Dec 2017 17:08:56 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 04 Dec 2017 17:09:02 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Mon, 04 Dec 2017 17:09:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 04 Dec 2017 17:09:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 04 Dec 2017 17:09:02 GMT
CMD ["rabbitmq-server"]
# Mon, 04 Dec 2017 17:09:16 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 04 Dec 2017 17:09:22 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Mon, 04 Dec 2017 17:09:22 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bef8a974bf28a4ce6187dab11ba3d7e7bfc62c7bcecc924d04d06f2b48b4e2`  
		Last Modified: Mon, 04 Dec 2017 17:09:39 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de36a39ba73b67eaea72130fc2b7c3ef2baf8d7272dd67d710eba07fa6d343b`  
		Last Modified: Mon, 04 Dec 2017 17:09:38 GMT  
		Size: 8.2 KB (8186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe87b64548ab7b9dd6f900557a8d2e9cc4f4a956e00f6b406d0076617eeca3f`  
		Last Modified: Mon, 04 Dec 2017 17:09:40 GMT  
		Size: 16.6 MB (16561532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2cc1dffaa8d5540ca648b57aa49f683e789d619cfdaadce7d79268670eca78f`  
		Last Modified: Mon, 04 Dec 2017 17:09:36 GMT  
		Size: 5.1 MB (5108437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b6c8dbec1f7121ec32db63a8599c1de1ee545203d341c351587fc9f2bfa792`  
		Last Modified: Mon, 04 Dec 2017 17:09:35 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f366a519a51a4f960ee2dfb658781890431abf30d28b2c8131b0949dfb3bcd`  
		Last Modified: Mon, 04 Dec 2017 17:09:36 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe945e6083bde6006e004889c78999b52514ce14ef69cfa7418c31dc95b0f38b`  
		Last Modified: Mon, 04 Dec 2017 17:09:36 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38528eeb9eeafdb1efdc11f57a8fbb6be3ca86e9ba49a8360094ae8dd3c34db5`  
		Last Modified: Mon, 04 Dec 2017 17:09:35 GMT  
		Size: 4.0 KB (4035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f944b4adabef5dc31427856021db2a544ce8b03e6eec4ac7aeb9a8b1cdf521c`  
		Last Modified: Mon, 04 Dec 2017 17:11:22 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71769b6a6869941ef8988cc131f30f9aa4f44099a1ef7de9f8ed1ce5749f345`  
		Last Modified: Mon, 04 Dec 2017 17:11:26 GMT  
		Size: 11.0 MB (10970650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.14-management-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:2e40fd5b0e3f067e5531c5436d7cb2a9ddefc39f4f660a1ab6c2b5dff72c5650
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 MB (34381935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b64d418288d444f91025575c1baad6bfc6872ac105e7e9c535003d15af70357`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:25:53 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 05:25:55 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 05:26:10 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 05:26:10 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 05:26:10 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 05:26:11 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:26:11 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 22:29:22 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 22:29:22 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 22:29:30 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 22:29:30 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 22:29:31 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 22:29:31 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 22:29:32 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 22:29:33 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 22:29:33 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 22:29:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 22:29:33 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 22:29:34 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 22:29:43 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 21 Nov 2017 22:29:30 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Tue, 21 Nov 2017 22:29:30 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e62a8c5580cc1c2fbf2f9ce119bc0c06403a12ad18167bde2ec94420810916db`  
		Last Modified: Thu, 26 Oct 2017 05:26:38 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b096e39434b5aeddcb2ec167b7bf570cac7b8b16e68324d3f46c6f4d41b69c79`  
		Last Modified: Thu, 26 Oct 2017 05:26:37 GMT  
		Size: 8.4 KB (8374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ad9273316fa6f22cd2e8cf88c92f34c3210325fa1be2041153a96f4124476f`  
		Last Modified: Thu, 26 Oct 2017 05:26:41 GMT  
		Size: 16.4 MB (16420180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:def7e14af1452af84fe90bf70146e698b6538baeb09405b466c049bc7a01cffb`  
		Last Modified: Wed, 08 Nov 2017 22:29:51 GMT  
		Size: 5.1 MB (5108307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11b8c52a886dcd2289a0fcb50609344c74251a25f12ebcfcd9c59592acc60afb`  
		Last Modified: Wed, 08 Nov 2017 22:29:51 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de92213dcd31e0f93bad6a925ef1b3313ef3a2b7232eaef61f7d8ff602784a60`  
		Last Modified: Wed, 08 Nov 2017 22:29:51 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55d457590097f50c6b230694177301ff5463ee9f4b5a2adb14a8c77b1ea50d0`  
		Last Modified: Wed, 08 Nov 2017 22:29:51 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc77805948705e053365c05ea65bb3981543d05d4ed31190435d441f3a4f095a`  
		Last Modified: Wed, 08 Nov 2017 22:29:50 GMT  
		Size: 4.0 KB (4036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feec33303e6b4a269882e611d942df1dd531e280c5612fb74e2cbbdaed8c0c3d`  
		Last Modified: Wed, 08 Nov 2017 22:30:00 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccadf7e00c0805530d26ef7dac3748877cd4c2abd68c41f75128d02a9b4b6c01`  
		Last Modified: Tue, 21 Nov 2017 22:29:43 GMT  
		Size: 10.9 MB (10872921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.14-management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:f026334f51e26211b8caa30edc204ab0860588ce5f1dc17567246797c6844f38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34262993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc7f1578c133a133b2407ffd00ff009feacef59de487c14c64fe37d7a945fcd9`
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
# Tue, 21 Nov 2017 14:54:04 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Tue, 21 Nov 2017 14:54:05 GMT
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
	-	`sha256:c37ac6b58b49844db9ade1b51a9fa3667cc8ebf556dbe0550c3067304a29d126`  
		Last Modified: Tue, 21 Nov 2017 14:55:47 GMT  
		Size: 10.8 MB (10848853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.14-management-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:4242a96bb2fe34f6bce87330c4d017529113d8c6b80aa0fb1cd1f67a19d357cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (34970373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ac85b225a75864f984d36c25d38b4a50451531ae0c49a0b9f6ba89c2d3b4444`
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
# Tue, 21 Nov 2017 11:46:41 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Tue, 21 Nov 2017 11:46:41 GMT
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
	-	`sha256:824ed9e145d0c28e56048136c64ac88abce1ffa5d8e56de141dfadcf02731f08`  
		Last Modified: Tue, 21 Nov 2017 11:47:45 GMT  
		Size: 11.1 MB (11091124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.14-management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:5082e242aee3d911eedd78fc61e20c0bc63d22c84f681cf5254ccaf6154a5b2f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34747534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1915b0f02687cc38289c76a5c9e6dc78c27c827ae6bc2d816b5cc8746a2a4c94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 07:12:01 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 07:12:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 07:12:36 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 07:12:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 07:12:39 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 07:12:41 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 07:12:42 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 09 Nov 2017 08:13:34 GMT
ENV RABBITMQ_VERSION=3.6.14
# Thu, 09 Nov 2017 08:13:35 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Thu, 09 Nov 2017 08:13:48 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 09 Nov 2017 08:13:50 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 09 Nov 2017 08:13:53 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 09 Nov 2017 08:13:54 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 09 Nov 2017 08:13:57 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 09 Nov 2017 08:14:00 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 09 Nov 2017 08:14:01 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Thu, 09 Nov 2017 08:14:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Nov 2017 08:14:04 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 09 Nov 2017 08:14:11 GMT
CMD ["rabbitmq-server"]
# Thu, 09 Nov 2017 08:14:26 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 21 Nov 2017 08:13:12 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Tue, 21 Nov 2017 08:13:13 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48c95ed960185dbd69324a206614e723f0086f80b46bd3223f233e4f1e278bc`  
		Last Modified: Thu, 26 Oct 2017 07:14:01 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a8242358db9adbde1a17b0e2b320c02112fcefa90d397ecc028a9729efcf94`  
		Last Modified: Thu, 26 Oct 2017 07:14:01 GMT  
		Size: 9.1 KB (9059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6db9581873eb0cadddc4d474e33cb2ec978c0d68e3ea124ce4f07ab2731d79`  
		Last Modified: Thu, 26 Oct 2017 07:14:04 GMT  
		Size: 16.6 MB (16603134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8418b6d09429bcd6a4be2a5f3c0bed17241159628908719c1d68db7fdf36516c`  
		Last Modified: Thu, 09 Nov 2017 08:15:56 GMT  
		Size: 5.1 MB (5108888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83283b53f86d99c1e4eb5b4ab2a47a9cd8173d17e912d17345041d21286d7072`  
		Last Modified: Thu, 09 Nov 2017 08:15:56 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c75d5990c1c030e1fb99e1acd8a96e9d645860539be9d12ca33d98856dc1ee`  
		Last Modified: Thu, 09 Nov 2017 08:15:56 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd92cb4655990fa65b88a64cf3678420bb3df2aecf6e1da294b92a2f44f9a73`  
		Last Modified: Thu, 09 Nov 2017 08:15:56 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3369f91cfed7738d268f3355a87bdbe2151649ae6abae2add90bc4a58311ba`  
		Last Modified: Thu, 09 Nov 2017 08:15:56 GMT  
		Size: 4.0 KB (4034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c571056edee4ae82ced1a2bb0878dba1e8850239e834a23c66a87c05b56917f4`  
		Last Modified: Thu, 09 Nov 2017 08:16:30 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a32cb15f35a3b14206ad021c3b148a1eb926e8da419e1c259424a5f311fe1d`  
		Last Modified: Tue, 21 Nov 2017 08:13:58 GMT  
		Size: 11.0 MB (11011698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.14-management-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:b042c5b6a4f5599ecbcf6c623e6208dd51ceb7417889865d1f3d8f39c4131b49
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35035163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:907c424bdc37271380b582121443178dc4643f5b0c819103de261a7586851c38`
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
# Tue, 21 Nov 2017 18:07:17 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Tue, 21 Nov 2017 18:07:19 GMT
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
	-	`sha256:2f36f161b0d615c24e3ba351f83deee7f02bb3d9dd79611f517024cc811fdef7`  
		Last Modified: Tue, 21 Nov 2017 18:08:01 GMT  
		Size: 11.1 MB (11119966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-alpine`

```console
$ docker pull rabbitmq@sha256:3ad9319cb9f81a6f92c5876056b98aa24cba2e935481e05395c2fbd4f0d06a05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:3.6-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:f9956c4c9a673d2c3099fb4ed4593f48ba731f20952fa40a5040bc48c1ea48de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23675396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:639b4e924dba99dc4058ce2c9703b10b664f25fa28598ba57c1ad7446147f910`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Mon, 04 Dec 2017 17:03:58 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Mon, 04 Dec 2017 17:04:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 04 Dec 2017 17:04:08 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Mon, 04 Dec 2017 17:04:08 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 04 Dec 2017 17:04:09 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 04 Dec 2017 17:04:09 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 04 Dec 2017 17:04:09 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 04 Dec 2017 17:04:09 GMT
ENV RABBITMQ_VERSION=3.6.14
# Mon, 04 Dec 2017 17:04:09 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Mon, 04 Dec 2017 17:08:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 04 Dec 2017 17:08:54 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 04 Dec 2017 17:08:55 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 04 Dec 2017 17:08:55 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 04 Dec 2017 17:08:56 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 04 Dec 2017 17:08:56 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 04 Dec 2017 17:09:02 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Mon, 04 Dec 2017 17:09:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 04 Dec 2017 17:09:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 04 Dec 2017 17:09:02 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bef8a974bf28a4ce6187dab11ba3d7e7bfc62c7bcecc924d04d06f2b48b4e2`  
		Last Modified: Mon, 04 Dec 2017 17:09:39 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de36a39ba73b67eaea72130fc2b7c3ef2baf8d7272dd67d710eba07fa6d343b`  
		Last Modified: Mon, 04 Dec 2017 17:09:38 GMT  
		Size: 8.2 KB (8186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe87b64548ab7b9dd6f900557a8d2e9cc4f4a956e00f6b406d0076617eeca3f`  
		Last Modified: Mon, 04 Dec 2017 17:09:40 GMT  
		Size: 16.6 MB (16561532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2cc1dffaa8d5540ca648b57aa49f683e789d619cfdaadce7d79268670eca78f`  
		Last Modified: Mon, 04 Dec 2017 17:09:36 GMT  
		Size: 5.1 MB (5108437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b6c8dbec1f7121ec32db63a8599c1de1ee545203d341c351587fc9f2bfa792`  
		Last Modified: Mon, 04 Dec 2017 17:09:35 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f366a519a51a4f960ee2dfb658781890431abf30d28b2c8131b0949dfb3bcd`  
		Last Modified: Mon, 04 Dec 2017 17:09:36 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe945e6083bde6006e004889c78999b52514ce14ef69cfa7418c31dc95b0f38b`  
		Last Modified: Mon, 04 Dec 2017 17:09:36 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38528eeb9eeafdb1efdc11f57a8fbb6be3ca86e9ba49a8360094ae8dd3c34db5`  
		Last Modified: Mon, 04 Dec 2017 17:09:35 GMT  
		Size: 4.0 KB (4035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:8ca2ed949be25591e6021e6059e73fcda857f46999cb8e77467765e52625d0ed
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23508823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ac7df854f858b303a74fd4fa846018b6bc4b96565b40c3259c6eeb0a6b03126`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:25:53 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 05:25:55 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 05:26:10 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 05:26:10 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 05:26:10 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 05:26:11 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:26:11 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 22:29:22 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 22:29:22 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 22:29:30 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 22:29:30 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 22:29:31 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 22:29:31 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 22:29:32 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 22:29:33 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 22:29:33 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 22:29:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 22:29:33 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 22:29:34 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e62a8c5580cc1c2fbf2f9ce119bc0c06403a12ad18167bde2ec94420810916db`  
		Last Modified: Thu, 26 Oct 2017 05:26:38 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b096e39434b5aeddcb2ec167b7bf570cac7b8b16e68324d3f46c6f4d41b69c79`  
		Last Modified: Thu, 26 Oct 2017 05:26:37 GMT  
		Size: 8.4 KB (8374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ad9273316fa6f22cd2e8cf88c92f34c3210325fa1be2041153a96f4124476f`  
		Last Modified: Thu, 26 Oct 2017 05:26:41 GMT  
		Size: 16.4 MB (16420180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:def7e14af1452af84fe90bf70146e698b6538baeb09405b466c049bc7a01cffb`  
		Last Modified: Wed, 08 Nov 2017 22:29:51 GMT  
		Size: 5.1 MB (5108307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11b8c52a886dcd2289a0fcb50609344c74251a25f12ebcfcd9c59592acc60afb`  
		Last Modified: Wed, 08 Nov 2017 22:29:51 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de92213dcd31e0f93bad6a925ef1b3313ef3a2b7232eaef61f7d8ff602784a60`  
		Last Modified: Wed, 08 Nov 2017 22:29:51 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55d457590097f50c6b230694177301ff5463ee9f4b5a2adb14a8c77b1ea50d0`  
		Last Modified: Wed, 08 Nov 2017 22:29:51 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc77805948705e053365c05ea65bb3981543d05d4ed31190435d441f3a4f095a`  
		Last Modified: Wed, 08 Nov 2017 22:29:50 GMT  
		Size: 4.0 KB (4036 bytes)  
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

### `rabbitmq:3.6-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:286ed734d5df8b66af0b061dbe57b206b4c81ad365d3a6b10f6bd47eac7e211f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23735646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ccbdf070e8f0d3a145eb3ebb8140a9993cee38fdab585247c586613fe5915b6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 07:12:01 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 07:12:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 07:12:36 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 07:12:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 07:12:39 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 07:12:41 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 07:12:42 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 09 Nov 2017 08:13:34 GMT
ENV RABBITMQ_VERSION=3.6.14
# Thu, 09 Nov 2017 08:13:35 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Thu, 09 Nov 2017 08:13:48 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 09 Nov 2017 08:13:50 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 09 Nov 2017 08:13:53 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 09 Nov 2017 08:13:54 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 09 Nov 2017 08:13:57 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 09 Nov 2017 08:14:00 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 09 Nov 2017 08:14:01 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Thu, 09 Nov 2017 08:14:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Nov 2017 08:14:04 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 09 Nov 2017 08:14:11 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48c95ed960185dbd69324a206614e723f0086f80b46bd3223f233e4f1e278bc`  
		Last Modified: Thu, 26 Oct 2017 07:14:01 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a8242358db9adbde1a17b0e2b320c02112fcefa90d397ecc028a9729efcf94`  
		Last Modified: Thu, 26 Oct 2017 07:14:01 GMT  
		Size: 9.1 KB (9059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6db9581873eb0cadddc4d474e33cb2ec978c0d68e3ea124ce4f07ab2731d79`  
		Last Modified: Thu, 26 Oct 2017 07:14:04 GMT  
		Size: 16.6 MB (16603134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8418b6d09429bcd6a4be2a5f3c0bed17241159628908719c1d68db7fdf36516c`  
		Last Modified: Thu, 09 Nov 2017 08:15:56 GMT  
		Size: 5.1 MB (5108888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83283b53f86d99c1e4eb5b4ab2a47a9cd8173d17e912d17345041d21286d7072`  
		Last Modified: Thu, 09 Nov 2017 08:15:56 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c75d5990c1c030e1fb99e1acd8a96e9d645860539be9d12ca33d98856dc1ee`  
		Last Modified: Thu, 09 Nov 2017 08:15:56 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd92cb4655990fa65b88a64cf3678420bb3df2aecf6e1da294b92a2f44f9a73`  
		Last Modified: Thu, 09 Nov 2017 08:15:56 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3369f91cfed7738d268f3355a87bdbe2151649ae6abae2add90bc4a58311ba`  
		Last Modified: Thu, 09 Nov 2017 08:15:56 GMT  
		Size: 4.0 KB (4034 bytes)  
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
$ docker pull rabbitmq@sha256:1f72ab229006f9ac00d4f87d8dd2b94eea84a0a7afc4488f9cd4a22e36fd34cd
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
$ docker pull rabbitmq@sha256:44dd4cb8a85dfc7d48a5c52aa40690245508571b9a15a8bb410c7ddc3fccc861
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.6 MB (70574004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42b283da44d0b52785e7f114e5252f6f9fbcc0f0ca580461e6c7125af9ab3e94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:40:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:40:50 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:40:50 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 23:25:20 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Dec 2017 22:41:56 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 22:41:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 22:41:57 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 22:41:57 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 13 Dec 2017 22:41:57 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 13 Dec 2017 22:41:57 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 13 Dec 2017 22:41:57 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Wed, 13 Dec 2017 22:42:15 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 22:42:15 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 13 Dec 2017 22:42:16 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 13 Dec 2017 22:42:16 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 13 Dec 2017 22:42:17 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 13 Dec 2017 22:42:17 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 13 Dec 2017 22:42:18 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 13 Dec 2017 22:42:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Dec 2017 22:42:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Dec 2017 22:42:19 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 13 Dec 2017 22:42:19 GMT
CMD ["rabbitmq-server"]
# Wed, 13 Dec 2017 22:42:33 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 13 Dec 2017 22:42:40 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Wed, 13 Dec 2017 22:42:40 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad90649c4d840febdaefa1afaad7ef8bbf2e0087ba1d11a95968afce0503f342`  
		Last Modified: Tue, 12 Dec 2017 21:45:30 GMT  
		Size: 4.5 MB (4498351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a318b914d6cead2434cc74ee74c48511ad6ec06a38ab190157246497f44afb1`  
		Last Modified: Tue, 12 Dec 2017 21:45:28 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cedd60f70052462179e86a0439f5fb3fa7b40f41dc55be9152bd147181481594`  
		Last Modified: Tue, 12 Dec 2017 23:26:36 GMT  
		Size: 951.9 KB (951937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f754361b064d80cbbc395293d4261ab436a56dd9f48051d02ddc1ebc5db063cf`  
		Last Modified: Wed, 13 Dec 2017 22:45:55 GMT  
		Size: 27.7 MB (27704549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9024d880d34265ece30676749721684fc8f0c96caea2b32dc601b778c1100c22`  
		Last Modified: Wed, 13 Dec 2017 22:45:51 GMT  
		Size: 7.3 MB (7288344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d775050fc8e00eb5962b60ab0791c91abd16cda2ff67f6bd2d42b7a4ae1ed8`  
		Last Modified: Wed, 13 Dec 2017 22:45:49 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e9f52fff6701ba7af9d46b719f371faea74ac2ef33c7f372c834980c3ffa682`  
		Last Modified: Wed, 13 Dec 2017 22:45:49 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af9c86e10713f67d37012d592df8c955b7503e8955178f161a4e8ca1af30dbd`  
		Last Modified: Wed, 13 Dec 2017 22:45:49 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80eef1b61d3787c7285c9f1598cabdd208abf640878a22dbc7a758d92f196a24`  
		Last Modified: Wed, 13 Dec 2017 22:45:49 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82f0271a3b5e89418a9758621ff527e0b47d3be9b81ab7f5bd9f2a3441da822e`  
		Last Modified: Wed, 13 Dec 2017 22:45:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f959a3f62b05138d5c91dfc1aa8fc78f209bd25d3530452a9552a329cac825`  
		Last Modified: Wed, 13 Dec 2017 22:46:18 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a289a4ffa099c488611aa265fef4fbf9267aa38cbe37afdaaada4bd23e6df940`  
		Last Modified: Wed, 13 Dec 2017 22:46:19 GMT  
		Size: 7.6 MB (7634147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:0552566023e7b5a5e5402be64c184043f5edd8a07c96628e8b22c3217bbe4894
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (66006831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93d014a0de79e9cd1f10686a0fbbbe0c5cb599738c2855edcfd0ff3533b6f72e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 21:02:20 GMT
ADD file:f69e5781e9ff2a9867d94175d91d31553e07613bf4b50a1064274ed21a5ed353 in / 
# Tue, 12 Dec 2017 21:02:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 23:14:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:14:46 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 23:14:46 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 23:15:03 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 14 Dec 2017 16:03:21 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 16:03:21 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 14 Dec 2017 16:03:21 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Dec 2017 16:03:22 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 14 Dec 2017 16:03:22 GMT
ENV RABBITMQ_VERSION=3.6.14
# Thu, 14 Dec 2017 16:03:22 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Thu, 14 Dec 2017 16:03:22 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Thu, 14 Dec 2017 16:03:57 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 16:03:57 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 14 Dec 2017 16:03:58 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 14 Dec 2017 16:03:58 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 14 Dec 2017 16:03:59 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 14 Dec 2017 16:04:00 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 14 Dec 2017 16:04:01 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Thu, 14 Dec 2017 16:04:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 14 Dec 2017 16:04:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Dec 2017 16:04:03 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 14 Dec 2017 16:04:04 GMT
CMD ["rabbitmq-server"]
# Thu, 14 Dec 2017 16:04:23 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 14 Dec 2017 16:04:37 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Thu, 14 Dec 2017 16:04:37 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:20f319b2549a8d631c2e8034bfc3f9c12042d86a686470a8addd2fb7bc8c688c`  
		Last Modified: Tue, 12 Dec 2017 21:12:53 GMT  
		Size: 21.2 MB (21160630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608d8fd7a6001a09dff4cc76414aa4711207466847dfa91271aa6dd09becdd6a`  
		Last Modified: Tue, 12 Dec 2017 23:21:52 GMT  
		Size: 4.2 MB (4231488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d214c26ea8bd4ea1468f2b7c9806f8f3cde7cd6c2f09660325ea38b81dcb9c13`  
		Last Modified: Tue, 12 Dec 2017 23:21:50 GMT  
		Size: 4.1 KB (4082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9640468e3e315e94fa5dfdb6b79a97eb7f83beebca51e85a68ab3ef6a4b13106`  
		Last Modified: Tue, 12 Dec 2017 23:21:51 GMT  
		Size: 942.4 KB (942449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a48df8dffe8d7abc99262501640ec504bd99298931665619a273e6e0fb2325a`  
		Last Modified: Thu, 14 Dec 2017 16:06:26 GMT  
		Size: 25.2 MB (25170558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628197b3ac0c36d043b6c5362d625842cf23e17b3d1ef39ec2ce51db37234775`  
		Last Modified: Thu, 14 Dec 2017 16:06:22 GMT  
		Size: 7.0 MB (7004017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f07234a313377f3c770240c21a3603d9447d2bfb6d9cf001281e25fbcdd8a9b`  
		Last Modified: Thu, 14 Dec 2017 16:06:20 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc75bafc67aa6a918182bbe3b19fd75f612fac2fe0fcbb48e8d7587ae5591c5e`  
		Last Modified: Thu, 14 Dec 2017 16:06:20 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cae7b78b8f1f851b097d06728dd2ea52e8855e717e7e4ea9c1217619b47d803`  
		Last Modified: Thu, 14 Dec 2017 16:06:19 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab838fee3e739cb1290ed6a287952076773549b1345be82eddc8067b754da709`  
		Last Modified: Thu, 14 Dec 2017 16:06:20 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95543d40adc1f829cc7d43e55e25ac26298994ebcee1be43bde800f3d6f39a4`  
		Last Modified: Thu, 14 Dec 2017 16:06:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf58388b495e9c43d5f66f5499acb2c87c596bff1c1b2d8dd11b7811b2db03f`  
		Last Modified: Thu, 14 Dec 2017 16:06:47 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc943482bc5e8118204954fbd40cd667bdc49976e4f09ab28b6b6e4006b957c0`  
		Last Modified: Thu, 14 Dec 2017 16:06:50 GMT  
		Size: 7.5 MB (7486719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:a614b7202829381af2da7d55250527a0f7fd495e7afab492c220a6b8f8c12d1e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (62970900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f517390fad104db44e1518ebf4ba9013372107d29b8464eda5831c0e548c05e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 13:33:42 GMT
ADD file:cfde12259adb7102e76690e986f1b9b07967a8984c85d0cead09969f5de8b8cc in / 
# Tue, 12 Dec 2017 13:33:42 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:07:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:07:51 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:07:52 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 14:08:30 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 14 Dec 2017 14:10:53 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 14:10:54 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 14 Dec 2017 14:10:54 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Dec 2017 14:10:54 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 14 Dec 2017 14:11:06 GMT
ENV RABBITMQ_VERSION=3.6.14
# Thu, 14 Dec 2017 14:11:06 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Thu, 14 Dec 2017 14:11:06 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Thu, 14 Dec 2017 14:12:13 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 14:12:14 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 14 Dec 2017 14:12:15 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 14 Dec 2017 14:12:15 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 14 Dec 2017 14:12:17 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 14 Dec 2017 14:12:18 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 14 Dec 2017 14:12:19 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Thu, 14 Dec 2017 14:12:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 14 Dec 2017 14:12:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Dec 2017 14:12:21 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 14 Dec 2017 14:12:22 GMT
CMD ["rabbitmq-server"]
# Thu, 14 Dec 2017 14:13:05 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 14 Dec 2017 14:13:26 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Thu, 14 Dec 2017 14:13:28 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:cd8b673adb84fd5eae3444d0475addad7e8908a8332704c4407baa97e9b0b284`  
		Last Modified: Tue, 12 Dec 2017 13:45:48 GMT  
		Size: 19.3 MB (19271028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681dc17295c86c86ee974da339cea0f010f6f5780ffd3b6fd3fa6b2a3d124fdd`  
		Last Modified: Wed, 13 Dec 2017 14:13:29 GMT  
		Size: 3.9 MB (3868482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03995e4857910fd538adfc3a896164f12117829662b917fd93835e24ec792b07`  
		Last Modified: Wed, 13 Dec 2017 14:13:28 GMT  
		Size: 4.1 KB (4083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7dd231e7e929346f4a5183b1f2df19bd46ef0f6ea9b79077593abd76f02737`  
		Last Modified: Wed, 13 Dec 2017 14:13:27 GMT  
		Size: 926.2 KB (926167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d0b2e3170e12ed4a59b63408e303f53ad5caaec2df4492592e724b62d4e00f`  
		Last Modified: Thu, 14 Dec 2017 14:16:41 GMT  
		Size: 24.8 MB (24785494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c16e2e094c09d0570adda2030c1211023aa05be5b05c7fe4c8ebde2174ac15`  
		Last Modified: Thu, 14 Dec 2017 14:16:37 GMT  
		Size: 6.9 MB (6912728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2a9f7c6a7a74d79e7e43ae954c56c9aac44523372ea187bb5e3732c36f0f4e`  
		Last Modified: Thu, 14 Dec 2017 14:16:35 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebadb50e535d9e0c84d0fe626b2fb2ebf2d490a5335819deee21b6f60d47b869`  
		Last Modified: Thu, 14 Dec 2017 14:16:34 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3737d0a697288225820d6b0ce477c2bf898c72c344f2acd85ef6e940fcdcf7c0`  
		Last Modified: Thu, 14 Dec 2017 14:16:34 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48119b301f61a7c4322475e75457617e5d0db2645824cb08a0f7d04773766314`  
		Last Modified: Thu, 14 Dec 2017 14:16:35 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce64d009b71ee3f66c3cc4f6d26694292b61732cdecc3d6f7179146df968aae`  
		Last Modified: Thu, 14 Dec 2017 14:16:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4078d0a31c7b26f0ad691a6275771f7616432bccc29077ccb8a9cb8cbf03e30f`  
		Last Modified: Thu, 14 Dec 2017 14:17:20 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95f0b70032ecb0cdbe51447904dd20ee404cee4254525498b6949f9d0639a89`  
		Last Modified: Thu, 14 Dec 2017 14:17:23 GMT  
		Size: 7.2 MB (7196035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:2d11966b4277ecbe977a76df9ce659223bc1275fb93d3478437e6dc14987d337
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.9 MB (64853941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae121c416fcdb5b80c9eab4c57d319cb3fd67f986fb31540552f60be34cb09d1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 18:34:13 GMT
ADD file:6e068c7cc5397bfb4ec60dab4d410c5d3ba724f20ad0129d2032fb509f0eadcd in / 
# Tue, 12 Dec 2017 18:34:14 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:53:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:53:52 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:53:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 14:54:26 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 15 Dec 2017 06:12:03 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 06:12:04 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 15 Dec 2017 06:12:05 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Dec 2017 06:12:05 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 15 Dec 2017 06:12:06 GMT
ENV RABBITMQ_VERSION=3.6.14
# Fri, 15 Dec 2017 06:12:07 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Fri, 15 Dec 2017 06:12:07 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Fri, 15 Dec 2017 06:12:51 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 06:12:52 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 15 Dec 2017 06:12:54 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 15 Dec 2017 06:12:54 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 15 Dec 2017 06:12:56 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 15 Dec 2017 06:12:58 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 15 Dec 2017 06:12:59 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Fri, 15 Dec 2017 06:13:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 15 Dec 2017 06:13:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Dec 2017 06:13:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 15 Dec 2017 06:13:03 GMT
CMD ["rabbitmq-server"]
# Fri, 15 Dec 2017 06:13:18 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 15 Dec 2017 06:13:39 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 15 Dec 2017 06:13:40 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:fcad8cfc11c78a53ccf9aafafcb3ded5044dbd181977e6255aea54fbe164f131`  
		Last Modified: Tue, 12 Dec 2017 18:49:05 GMT  
		Size: 20.3 MB (20331270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb3f7722e72f404b7e544c9a358cc7390f02c0b391a14ea7dbecd85dca7d195`  
		Last Modified: Wed, 13 Dec 2017 15:03:22 GMT  
		Size: 4.1 MB (4073192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c72eaa15e586a9eb8cbde84a24922fdabb2aa060ef64831fb867757ac6f83a`  
		Last Modified: Wed, 13 Dec 2017 15:03:21 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ebe8f28a8d2ed828ab5c0431545a097e3f46a3ac45e36976fde6daa9fb405d`  
		Last Modified: Wed, 13 Dec 2017 15:03:21 GMT  
		Size: 919.4 KB (919386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4af0cd180d3c4155a1b370d4c4b32c572c56e71baf035f78d6393a2261e09ef`  
		Last Modified: Fri, 15 Dec 2017 06:14:16 GMT  
		Size: 25.0 MB (25043251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c59c22df0aeabb463d530ba6fe460b0bb9e2274edfc3ef2369106ae808f59e`  
		Last Modified: Fri, 15 Dec 2017 06:14:12 GMT  
		Size: 7.0 MB (6988381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed4f64048e6de3d85028fb86a60f4341d27a78edeee17c8f88d1c75dbcae28d`  
		Last Modified: Fri, 15 Dec 2017 06:14:08 GMT  
		Size: 2.3 KB (2266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2c56f79bbd6ce5478b96c7b43ff81be29c575ac6c8b54c21e46ee3ea479bd6`  
		Last Modified: Fri, 15 Dec 2017 06:14:08 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8866d075ac88162cc5b75f425df1fca5f5022d89f25d660f3a714fcb75e2dbf4`  
		Last Modified: Fri, 15 Dec 2017 06:14:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18ceac2841ce59e5eb7bde6d30802e8539321a8971a696ea6d37ffe87a0d203f`  
		Last Modified: Fri, 15 Dec 2017 06:14:10 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8fc8933203dfbf3ae80cb5e49a4db2d4aa3274957edb60dc3da362245a6fb3`  
		Last Modified: Fri, 15 Dec 2017 06:14:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ef5c9f86390075c5eb17c50e04a62dd21485bdca06958b3f9aa1a4e90a6d9d`  
		Last Modified: Fri, 15 Dec 2017 06:14:29 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a91d48573892188b02884734cf8ad8aabf47cec55ecd941da2408188c3a0c02`  
		Last Modified: Fri, 15 Dec 2017 06:14:32 GMT  
		Size: 7.5 MB (7487499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; 386

```console
$ docker pull rabbitmq@sha256:397e63a705ab33b80f4ee024944afe882470d540c75cb8695b65861ba93f7e0f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.7 MB (71720053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1532794ebad3cd52315c48fb832cabd14e33cf5b45a4c19ea05385293f27dab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 14:36:09 GMT
ADD file:ef60a5257bf2b5766f692e39f5922bbd6161e45de184b7b138522d53a477c7af in / 
# Tue, 12 Dec 2017 14:36:09 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:14:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:14:35 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:14:36 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 21:14:51 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 14 Dec 2017 14:47:18 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 14:47:26 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 14 Dec 2017 14:47:26 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Dec 2017 14:47:27 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 14 Dec 2017 14:47:27 GMT
ENV RABBITMQ_VERSION=3.6.14
# Thu, 14 Dec 2017 14:47:27 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Thu, 14 Dec 2017 14:47:27 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Thu, 14 Dec 2017 14:47:55 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 14:47:56 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 14 Dec 2017 14:47:56 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 14 Dec 2017 14:47:57 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 14 Dec 2017 14:54:56 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 14 Dec 2017 14:54:57 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 14 Dec 2017 14:54:57 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Thu, 14 Dec 2017 14:54:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 14 Dec 2017 14:55:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Dec 2017 14:55:08 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 14 Dec 2017 14:55:08 GMT
CMD ["rabbitmq-server"]
# Thu, 14 Dec 2017 14:55:43 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 14 Dec 2017 14:55:56 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Thu, 14 Dec 2017 14:55:56 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:4dbce982b05e209cf10a433462dc417f7816c47b0c1a151c8c93206b299b9a14`  
		Last Modified: Tue, 12 Dec 2017 15:03:13 GMT  
		Size: 23.1 MB (23122456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7c11e0bc622b0180ed093c8a4da0dc404613fc4331a2436a3669aa08c6e818`  
		Last Modified: Tue, 12 Dec 2017 21:33:10 GMT  
		Size: 4.8 MB (4803791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f7b212f68d587a5e50aa75b4635c7d49a9c744d221e091404cb2d1cf4327a1`  
		Last Modified: Tue, 12 Dec 2017 21:33:05 GMT  
		Size: 4.1 KB (4055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb0df0b481030711e1f4ccd5b60509dc4796c769e4d46ddf668819aba41c5d2`  
		Last Modified: Tue, 12 Dec 2017 21:33:05 GMT  
		Size: 931.6 KB (931574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0854aad6d0cf47dc5d8bfbefd1606e8277c0c1be4736698e40cbf748135ccb05`  
		Last Modified: Thu, 14 Dec 2017 15:04:56 GMT  
		Size: 27.8 MB (27819006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c4b6d2406d4cc0df305012c01048c67b8ab0b66dc7b60f6baf84f59e1397a7c`  
		Last Modified: Thu, 14 Dec 2017 15:04:52 GMT  
		Size: 7.3 MB (7303921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9de52b03891136ae6bf4d54630d8e5ada7b9b4ec2a7c12de71cab0054bf3e8a`  
		Last Modified: Thu, 14 Dec 2017 15:04:47 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ab3e298a93d7b8bc21f6d3ad2e1376888f1e448e1246dcc03f8043dbeccde7`  
		Last Modified: Thu, 14 Dec 2017 15:04:47 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f57c58a277aceb5a74cced663362e607fb8fe3dad455903e5bb8e3cff0a7875`  
		Last Modified: Thu, 14 Dec 2017 15:04:52 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfbfaad6b20293294e2284d4374c558936b87e2b16850232cf258ba9e853a22`  
		Last Modified: Thu, 14 Dec 2017 15:04:46 GMT  
		Size: 4.0 KB (4042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0096b1285f117fbf559f96b0b9e9375ef3ebbfbb77d79148061b48dc7ccb8e32`  
		Last Modified: Thu, 14 Dec 2017 15:04:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b82eb2a677739c59e9ef2bb2b1c9c53e0263d1ab3a4cc31f4e879687d892d39`  
		Last Modified: Thu, 14 Dec 2017 15:06:11 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03230b11e08d4e14c5b3f9b7e7fbdf383b0f910e6942bc78a839cce645fc99a`  
		Last Modified: Thu, 14 Dec 2017 15:06:15 GMT  
		Size: 7.7 MB (7728361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:3adb754eb334d4ededb26c7ac575e145be03bb4066537295295de4f858f2e828
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.3 MB (68311066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5bcef7b8f6d54d0a26a2ce3111041e5b359e68228f8c2d8bac70b571cae12d5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:41 GMT
ADD file:896602a6d015367badb26a7ac0bcafc9aa04cbba205925631d315874b6d289ab in / 
# Tue, 12 Dec 2017 01:35:42 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 08:12:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 08:12:31 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 08:12:32 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 08:14:14 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 14 Dec 2017 08:15:16 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 08:15:18 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 14 Dec 2017 08:15:19 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Dec 2017 08:15:20 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 14 Dec 2017 08:15:21 GMT
ENV RABBITMQ_VERSION=3.6.14
# Thu, 14 Dec 2017 08:15:23 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Thu, 14 Dec 2017 08:15:24 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Thu, 14 Dec 2017 08:16:37 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 08:16:38 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 14 Dec 2017 08:16:42 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 14 Dec 2017 08:16:43 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 14 Dec 2017 08:16:48 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 14 Dec 2017 08:16:51 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 14 Dec 2017 08:16:52 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Thu, 14 Dec 2017 08:16:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 14 Dec 2017 08:16:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 14 Dec 2017 08:16:59 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 14 Dec 2017 08:17:01 GMT
CMD ["rabbitmq-server"]
# Thu, 14 Dec 2017 08:17:23 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 14 Dec 2017 08:17:57 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Thu, 14 Dec 2017 08:17:58 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:b8b738bec437a97371af422179183d09cdb031f677b2dba4deaed774655ee9d8`  
		Last Modified: Tue, 12 Dec 2017 01:42:57 GMT  
		Size: 22.7 MB (22739713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074d2b018f7cf8971581f936aa1922718699254821ac925337d59075ff941e16`  
		Last Modified: Wed, 13 Dec 2017 08:25:16 GMT  
		Size: 4.4 MB (4360551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b59ed4bf511e4fbf8389c0a178fefb54388dd09f9fd41997517b5a18a77175`  
		Last Modified: Wed, 13 Dec 2017 08:25:12 GMT  
		Size: 4.1 KB (4108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd7fb01f62115b9286f1e6a7d47d0c323e3b09c6bd6d04e59fd6af3b2fd8704`  
		Last Modified: Wed, 13 Dec 2017 08:25:13 GMT  
		Size: 920.7 KB (920674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c64d8ce325d1e59fb580a5aaa131644c9e6806339a74b37339af249798b703e`  
		Last Modified: Thu, 14 Dec 2017 08:20:39 GMT  
		Size: 25.5 MB (25492619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d75bef4e06f5e75b973db20cc885f296034dd79909c88c20e6d6c1f2ebce346`  
		Last Modified: Thu, 14 Dec 2017 08:20:35 GMT  
		Size: 6.9 MB (6948720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ce6797876ed04e127b1e9c54b5c792c5429dcaff81d2b0193edfad874bed474`  
		Last Modified: Thu, 14 Dec 2017 08:20:31 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e85099c9c7b219cd65a67bcc2f6346852c15cbfb3938550985b31c8b697c19`  
		Last Modified: Thu, 14 Dec 2017 08:20:31 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a256604bf9e54b705607584d05f2bf53c19ed831e64c2e2fcbcf665d13a4b4b`  
		Last Modified: Thu, 14 Dec 2017 08:20:31 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f73f0672b65e40607194823b09d28c568bab0db0b70c5ca71f0a91ebd19421b`  
		Last Modified: Thu, 14 Dec 2017 08:20:31 GMT  
		Size: 4.0 KB (4040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d55f768d7d3129ebe2b55a9f592966aae123286b86f829ab50befdc1cabf86`  
		Last Modified: Thu, 14 Dec 2017 08:20:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d5b484309664c3dbcf353a09ee1b42b099489063dddc56d0635fc870e7a7d7e`  
		Last Modified: Thu, 14 Dec 2017 08:20:56 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9ae8ec6d8e80e9951d631d10e4be1a3b9e1abc88d52ac64d02053e4454d2a9`  
		Last Modified: Thu, 14 Dec 2017 08:20:59 GMT  
		Size: 7.8 MB (7837791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; s390x

```console
$ docker pull rabbitmq@sha256:245643a52ee794bce22a8774612e667296a0651b3b38ec3cb80afa5d91a2b9da
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.1 MB (68063025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c917a43f5318b8a70212031ca2fb4e64a7fbd503ff4601dd1865609bf43af12a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 06:25:50 GMT
ADD file:8cd208817150f41f5b21f5c2b6641af023ddeaa6d842fe490190e20effe94a08 in / 
# Tue, 12 Dec 2017 06:25:51 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 08:33:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 08:33:05 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 08:33:05 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 08:33:16 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Dec 2017 08:33:26 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 08:33:26 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 08:33:27 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 08:33:27 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 12 Dec 2017 08:33:27 GMT
ENV RABBITMQ_VERSION=3.6.14
# Tue, 12 Dec 2017 08:33:27 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Tue, 12 Dec 2017 08:33:27 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.14-1
# Tue, 12 Dec 2017 08:33:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 08:33:57 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 12 Dec 2017 08:33:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 12 Dec 2017 08:33:58 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 12 Dec 2017 08:33:58 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 12 Dec 2017 08:33:59 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 12 Dec 2017 08:33:59 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Tue, 12 Dec 2017 08:34:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Dec 2017 08:34:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Dec 2017 08:34:00 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 12 Dec 2017 08:34:01 GMT
CMD ["rabbitmq-server"]
# Tue, 12 Dec 2017 08:34:09 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 12 Dec 2017 08:34:19 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Tue, 12 Dec 2017 08:34:20 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:da91ecedba56836763b256841bfd01198234139e3e4824510318c25fa8cf140a`  
		Last Modified: Tue, 12 Dec 2017 06:31:22 GMT  
		Size: 22.3 MB (22333855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c470192e9d4b665b180304cb21cc820cd23ac8bb65b0df208abceff86257823`  
		Last Modified: Tue, 12 Dec 2017 08:34:42 GMT  
		Size: 4.5 MB (4529872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0d39c0a4838e17ab734f247319a26028455a1dddef8a58ee0846289f22a04d`  
		Last Modified: Tue, 12 Dec 2017 08:34:42 GMT  
		Size: 4.1 KB (4069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3888716305b8444b3df85fcca7dce471db3183218b68197cd90d48874ae202e`  
		Last Modified: Tue, 12 Dec 2017 08:34:40 GMT  
		Size: 938.0 KB (938008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fe958694d6e652ff38884a8b6fe90e743489a534a1267b5155d6c5855f2a1d`  
		Last Modified: Tue, 12 Dec 2017 08:34:43 GMT  
		Size: 25.6 MB (25621148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bd5886a51f87e2aa36a024567f7d1192c4dc4497b281821b2e655c3ed9957e`  
		Last Modified: Tue, 12 Dec 2017 08:34:41 GMT  
		Size: 7.0 MB (7022456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10bcc0ae7b3dd8fe9ac3641c815f860b6efff2f94085a3f6005796ff79f74d8b`  
		Last Modified: Tue, 12 Dec 2017 08:34:41 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a39a516003d4a06111c8eccae52da87cd5fc7a5a2355c323e7202ffa08fae9`  
		Last Modified: Tue, 12 Dec 2017 08:34:38 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15ec49a7ceea192b6e143eafaced96d6298c0ec6f2ddb87686887b55ecc1dd2`  
		Last Modified: Tue, 12 Dec 2017 08:34:38 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d781af837cef2daa4917a934e1cd06ec5f62e5931c09a226be3136f144c6a581`  
		Last Modified: Tue, 12 Dec 2017 08:34:39 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c812d16cc8632f8b7c4fef0761f4b37fc10bdbb10e437e8b93a24c363f19e0`  
		Last Modified: Tue, 12 Dec 2017 08:34:38 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a76edf05a241011ab6eaf950af722157afccb3e9b728bf655a59ac5bbf276934`  
		Last Modified: Tue, 12 Dec 2017 08:35:06 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6b41650c448edb006b1e55a317d6a5f132b455bdeb830359d1f033c8b1f081`  
		Last Modified: Tue, 12 Dec 2017 08:35:07 GMT  
		Size: 7.6 MB (7606733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management-alpine`

```console
$ docker pull rabbitmq@sha256:796b3fec3e873f067e2df29ce3effa78436de386f18ec629b39004ab2f29f0bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:3.6-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:b992dff59ad00e44c993eabea2e16520cc83844e8c9550eca2a374382f7c1a0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 MB (34646237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:159de24b8902baa20023587ef177505254af45d0a9d62dc5c9a3915f249c9146`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Mon, 04 Dec 2017 17:03:58 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Mon, 04 Dec 2017 17:04:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 04 Dec 2017 17:04:08 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Mon, 04 Dec 2017 17:04:08 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 04 Dec 2017 17:04:09 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 04 Dec 2017 17:04:09 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 04 Dec 2017 17:04:09 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 04 Dec 2017 17:04:09 GMT
ENV RABBITMQ_VERSION=3.6.14
# Mon, 04 Dec 2017 17:04:09 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Mon, 04 Dec 2017 17:08:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 04 Dec 2017 17:08:54 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 04 Dec 2017 17:08:55 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 04 Dec 2017 17:08:55 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 04 Dec 2017 17:08:56 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 04 Dec 2017 17:08:56 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 04 Dec 2017 17:09:02 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Mon, 04 Dec 2017 17:09:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 04 Dec 2017 17:09:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 04 Dec 2017 17:09:02 GMT
CMD ["rabbitmq-server"]
# Mon, 04 Dec 2017 17:09:16 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 04 Dec 2017 17:09:22 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Mon, 04 Dec 2017 17:09:22 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bef8a974bf28a4ce6187dab11ba3d7e7bfc62c7bcecc924d04d06f2b48b4e2`  
		Last Modified: Mon, 04 Dec 2017 17:09:39 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de36a39ba73b67eaea72130fc2b7c3ef2baf8d7272dd67d710eba07fa6d343b`  
		Last Modified: Mon, 04 Dec 2017 17:09:38 GMT  
		Size: 8.2 KB (8186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe87b64548ab7b9dd6f900557a8d2e9cc4f4a956e00f6b406d0076617eeca3f`  
		Last Modified: Mon, 04 Dec 2017 17:09:40 GMT  
		Size: 16.6 MB (16561532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2cc1dffaa8d5540ca648b57aa49f683e789d619cfdaadce7d79268670eca78f`  
		Last Modified: Mon, 04 Dec 2017 17:09:36 GMT  
		Size: 5.1 MB (5108437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b6c8dbec1f7121ec32db63a8599c1de1ee545203d341c351587fc9f2bfa792`  
		Last Modified: Mon, 04 Dec 2017 17:09:35 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f366a519a51a4f960ee2dfb658781890431abf30d28b2c8131b0949dfb3bcd`  
		Last Modified: Mon, 04 Dec 2017 17:09:36 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe945e6083bde6006e004889c78999b52514ce14ef69cfa7418c31dc95b0f38b`  
		Last Modified: Mon, 04 Dec 2017 17:09:36 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38528eeb9eeafdb1efdc11f57a8fbb6be3ca86e9ba49a8360094ae8dd3c34db5`  
		Last Modified: Mon, 04 Dec 2017 17:09:35 GMT  
		Size: 4.0 KB (4035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f944b4adabef5dc31427856021db2a544ce8b03e6eec4ac7aeb9a8b1cdf521c`  
		Last Modified: Mon, 04 Dec 2017 17:11:22 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71769b6a6869941ef8988cc131f30f9aa4f44099a1ef7de9f8ed1ce5749f345`  
		Last Modified: Mon, 04 Dec 2017 17:11:26 GMT  
		Size: 11.0 MB (10970650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:2e40fd5b0e3f067e5531c5436d7cb2a9ddefc39f4f660a1ab6c2b5dff72c5650
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 MB (34381935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b64d418288d444f91025575c1baad6bfc6872ac105e7e9c535003d15af70357`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:25:53 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 05:25:55 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 05:26:10 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 05:26:10 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 05:26:10 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 05:26:11 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:26:11 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 08 Nov 2017 22:29:22 GMT
ENV RABBITMQ_VERSION=3.6.14
# Wed, 08 Nov 2017 22:29:22 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Wed, 08 Nov 2017 22:29:30 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 08 Nov 2017 22:29:30 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 08 Nov 2017 22:29:31 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 08 Nov 2017 22:29:31 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 08 Nov 2017 22:29:32 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 08 Nov 2017 22:29:33 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 08 Nov 2017 22:29:33 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 08 Nov 2017 22:29:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 Nov 2017 22:29:33 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 08 Nov 2017 22:29:34 GMT
CMD ["rabbitmq-server"]
# Wed, 08 Nov 2017 22:29:43 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 21 Nov 2017 22:29:30 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Tue, 21 Nov 2017 22:29:30 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e62a8c5580cc1c2fbf2f9ce119bc0c06403a12ad18167bde2ec94420810916db`  
		Last Modified: Thu, 26 Oct 2017 05:26:38 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b096e39434b5aeddcb2ec167b7bf570cac7b8b16e68324d3f46c6f4d41b69c79`  
		Last Modified: Thu, 26 Oct 2017 05:26:37 GMT  
		Size: 8.4 KB (8374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ad9273316fa6f22cd2e8cf88c92f34c3210325fa1be2041153a96f4124476f`  
		Last Modified: Thu, 26 Oct 2017 05:26:41 GMT  
		Size: 16.4 MB (16420180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:def7e14af1452af84fe90bf70146e698b6538baeb09405b466c049bc7a01cffb`  
		Last Modified: Wed, 08 Nov 2017 22:29:51 GMT  
		Size: 5.1 MB (5108307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11b8c52a886dcd2289a0fcb50609344c74251a25f12ebcfcd9c59592acc60afb`  
		Last Modified: Wed, 08 Nov 2017 22:29:51 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de92213dcd31e0f93bad6a925ef1b3313ef3a2b7232eaef61f7d8ff602784a60`  
		Last Modified: Wed, 08 Nov 2017 22:29:51 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55d457590097f50c6b230694177301ff5463ee9f4b5a2adb14a8c77b1ea50d0`  
		Last Modified: Wed, 08 Nov 2017 22:29:51 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc77805948705e053365c05ea65bb3981543d05d4ed31190435d441f3a4f095a`  
		Last Modified: Wed, 08 Nov 2017 22:29:50 GMT  
		Size: 4.0 KB (4036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feec33303e6b4a269882e611d942df1dd531e280c5612fb74e2cbbdaed8c0c3d`  
		Last Modified: Wed, 08 Nov 2017 22:30:00 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccadf7e00c0805530d26ef7dac3748877cd4c2abd68c41f75128d02a9b4b6c01`  
		Last Modified: Tue, 21 Nov 2017 22:29:43 GMT  
		Size: 10.9 MB (10872921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:f026334f51e26211b8caa30edc204ab0860588ce5f1dc17567246797c6844f38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34262993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc7f1578c133a133b2407ffd00ff009feacef59de487c14c64fe37d7a945fcd9`
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
# Tue, 21 Nov 2017 14:54:04 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Tue, 21 Nov 2017 14:54:05 GMT
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
	-	`sha256:c37ac6b58b49844db9ade1b51a9fa3667cc8ebf556dbe0550c3067304a29d126`  
		Last Modified: Tue, 21 Nov 2017 14:55:47 GMT  
		Size: 10.8 MB (10848853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:4242a96bb2fe34f6bce87330c4d017529113d8c6b80aa0fb1cd1f67a19d357cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (34970373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ac85b225a75864f984d36c25d38b4a50451531ae0c49a0b9f6ba89c2d3b4444`
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
# Tue, 21 Nov 2017 11:46:41 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Tue, 21 Nov 2017 11:46:41 GMT
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
	-	`sha256:824ed9e145d0c28e56048136c64ac88abce1ffa5d8e56de141dfadcf02731f08`  
		Last Modified: Tue, 21 Nov 2017 11:47:45 GMT  
		Size: 11.1 MB (11091124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:5082e242aee3d911eedd78fc61e20c0bc63d22c84f681cf5254ccaf6154a5b2f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34747534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1915b0f02687cc38289c76a5c9e6dc78c27c827ae6bc2d816b5cc8746a2a4c94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 07:12:01 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 07:12:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 07:12:36 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 07:12:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 07:12:39 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 07:12:41 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 07:12:42 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 09 Nov 2017 08:13:34 GMT
ENV RABBITMQ_VERSION=3.6.14
# Thu, 09 Nov 2017 08:13:35 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_14
# Thu, 09 Nov 2017 08:13:48 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 09 Nov 2017 08:13:50 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 09 Nov 2017 08:13:53 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 09 Nov 2017 08:13:54 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 09 Nov 2017 08:13:57 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 09 Nov 2017 08:14:00 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 09 Nov 2017 08:14:01 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Thu, 09 Nov 2017 08:14:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Nov 2017 08:14:04 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 09 Nov 2017 08:14:11 GMT
CMD ["rabbitmq-server"]
# Thu, 09 Nov 2017 08:14:26 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 21 Nov 2017 08:13:12 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Tue, 21 Nov 2017 08:13:13 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48c95ed960185dbd69324a206614e723f0086f80b46bd3223f233e4f1e278bc`  
		Last Modified: Thu, 26 Oct 2017 07:14:01 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a8242358db9adbde1a17b0e2b320c02112fcefa90d397ecc028a9729efcf94`  
		Last Modified: Thu, 26 Oct 2017 07:14:01 GMT  
		Size: 9.1 KB (9059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6db9581873eb0cadddc4d474e33cb2ec978c0d68e3ea124ce4f07ab2731d79`  
		Last Modified: Thu, 26 Oct 2017 07:14:04 GMT  
		Size: 16.6 MB (16603134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8418b6d09429bcd6a4be2a5f3c0bed17241159628908719c1d68db7fdf36516c`  
		Last Modified: Thu, 09 Nov 2017 08:15:56 GMT  
		Size: 5.1 MB (5108888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83283b53f86d99c1e4eb5b4ab2a47a9cd8173d17e912d17345041d21286d7072`  
		Last Modified: Thu, 09 Nov 2017 08:15:56 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c75d5990c1c030e1fb99e1acd8a96e9d645860539be9d12ca33d98856dc1ee`  
		Last Modified: Thu, 09 Nov 2017 08:15:56 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd92cb4655990fa65b88a64cf3678420bb3df2aecf6e1da294b92a2f44f9a73`  
		Last Modified: Thu, 09 Nov 2017 08:15:56 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3369f91cfed7738d268f3355a87bdbe2151649ae6abae2add90bc4a58311ba`  
		Last Modified: Thu, 09 Nov 2017 08:15:56 GMT  
		Size: 4.0 KB (4034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c571056edee4ae82ced1a2bb0878dba1e8850239e834a23c66a87c05b56917f4`  
		Last Modified: Thu, 09 Nov 2017 08:16:30 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a32cb15f35a3b14206ad021c3b148a1eb926e8da419e1c259424a5f311fe1d`  
		Last Modified: Tue, 21 Nov 2017 08:13:58 GMT  
		Size: 11.0 MB (11011698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:b042c5b6a4f5599ecbcf6c623e6208dd51ceb7417889865d1f3d8f39c4131b49
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35035163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:907c424bdc37271380b582121443178dc4643f5b0c819103de261a7586851c38`
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
# Tue, 21 Nov 2017 18:07:17 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Tue, 21 Nov 2017 18:07:19 GMT
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
	-	`sha256:2f36f161b0d615c24e3ba351f83deee7f02bb3d9dd79611f517024cc811fdef7`  
		Last Modified: Tue, 21 Nov 2017 18:08:01 GMT  
		Size: 11.1 MB (11119966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7`

```console
$ docker pull rabbitmq@sha256:0801cfa72cd71e9b44e36968734692c22963171225d8aae680521c50f6cdc685
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `rabbitmq:3.7` - linux; amd64

```console
$ docker pull rabbitmq@sha256:7c42a55a0f6f3d7caed26193946b60c951d68b2e0df7b5831b92e2e16f6420d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.1 MB (68059635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:985d533705b0e6021a6a033c1610f6791330c31c71f73b88528a4bef1b0074e5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:40:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:40:50 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:40:50 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 23:25:20 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 23:25:21 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 12 Dec 2017 23:25:37 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:25:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 23:25:38 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 23:25:38 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 21 Dec 2017 21:43:52 GMT
ENV RABBITMQ_VERSION=3.7.1
# Thu, 21 Dec 2017 21:43:52 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Thu, 21 Dec 2017 21:43:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Thu, 21 Dec 2017 21:44:19 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 21:44:19 GMT
ENV LANG=C.UTF-8
# Thu, 21 Dec 2017 21:44:19 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 21 Dec 2017 21:44:20 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 21 Dec 2017 21:44:28 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 21 Dec 2017 21:44:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 21 Dec 2017 21:44:37 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 21 Dec 2017 21:44:38 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Thu, 21 Dec 2017 21:44:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 21 Dec 2017 21:44:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Dec 2017 21:44:47 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 21 Dec 2017 21:44:47 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad90649c4d840febdaefa1afaad7ef8bbf2e0087ba1d11a95968afce0503f342`  
		Last Modified: Tue, 12 Dec 2017 21:45:30 GMT  
		Size: 4.5 MB (4498351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a318b914d6cead2434cc74ee74c48511ad6ec06a38ab190157246497f44afb1`  
		Last Modified: Tue, 12 Dec 2017 21:45:28 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cedd60f70052462179e86a0439f5fb3fa7b40f41dc55be9152bd147181481594`  
		Last Modified: Tue, 12 Dec 2017 23:26:36 GMT  
		Size: 951.9 KB (951937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ec28761801c452cb366afa1cbb7946bada161eb77899d9ca9a59a219e9ff42`  
		Last Modified: Tue, 12 Dec 2017 23:26:35 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fa44aa9074bb2e24649ebe2dae2f852f9443a052fd9cdfd4d11bcd86d967f7`  
		Last Modified: Tue, 12 Dec 2017 23:26:38 GMT  
		Size: 27.3 MB (27330555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf3e1e07c991ce96a21e3642cb8dbb20ef673739bb6f4d8b850380b2572f106`  
		Last Modified: Thu, 21 Dec 2017 21:47:31 GMT  
		Size: 12.8 MB (12781820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3ef1cea93bbcaa3a76d6c6e253976b8440ad24969e0ba907e173742c6ff50a`  
		Last Modified: Thu, 21 Dec 2017 21:47:26 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5ab9c082d6d13b0bb80318aa78027016a9d5673b8a552f065eeca6674c15e0`  
		Last Modified: Thu, 21 Dec 2017 21:47:28 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607d775f273a65211519680d67816f79ac0aa561a7ad364fac03c097c063fffd`  
		Last Modified: Thu, 21 Dec 2017 21:47:26 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1b766cfd2d4024d5591163073df0750727ccb125db1eeb9a92e9f364ed081d`  
		Last Modified: Thu, 21 Dec 2017 21:47:26 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca5c4856b55a852a371ef4afdddb1d16d94afe44c88221e14d84d8fdd6070df`  
		Last Modified: Thu, 21 Dec 2017 21:47:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:80833893929db23335409663f6f3f9dce91009c39c8219a9819b6e2a6693a80d
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63934407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cf7364430bbfd372da7cc8acc7115aa1c664296e7d64f3eca590db112de451b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 21:02:20 GMT
ADD file:f69e5781e9ff2a9867d94175d91d31553e07613bf4b50a1064274ed21a5ed353 in / 
# Tue, 12 Dec 2017 21:02:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 23:14:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:14:46 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 23:14:46 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 23:15:03 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 23:15:05 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 12 Dec 2017 23:15:44 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:15:45 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 23:15:45 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 23:15:46 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 15:14:24 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 15:14:24 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 15:14:24 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 15:14:59 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 15:15:00 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 15:15:00 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 15:15:01 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 15:15:01 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 15:15:02 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 15:15:03 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 15:15:03 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 15:15:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 15:15:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 15:15:05 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 15:15:05 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:20f319b2549a8d631c2e8034bfc3f9c12042d86a686470a8addd2fb7bc8c688c`  
		Last Modified: Tue, 12 Dec 2017 21:12:53 GMT  
		Size: 21.2 MB (21160630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608d8fd7a6001a09dff4cc76414aa4711207466847dfa91271aa6dd09becdd6a`  
		Last Modified: Tue, 12 Dec 2017 23:21:52 GMT  
		Size: 4.2 MB (4231488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d214c26ea8bd4ea1468f2b7c9806f8f3cde7cd6c2f09660325ea38b81dcb9c13`  
		Last Modified: Tue, 12 Dec 2017 23:21:50 GMT  
		Size: 4.1 KB (4082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9640468e3e315e94fa5dfdb6b79a97eb7f83beebca51e85a68ab3ef6a4b13106`  
		Last Modified: Tue, 12 Dec 2017 23:21:51 GMT  
		Size: 942.4 KB (942449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce50058b2ae9912872489ab639895bd412cd17a9a299fe4e208704d0ef03dd1f`  
		Last Modified: Tue, 12 Dec 2017 23:21:50 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de8bff935da4e19ec18fec56ba68c2cf72e41a4ad936934d6927c22d50d69dab`  
		Last Modified: Tue, 12 Dec 2017 23:21:56 GMT  
		Size: 24.8 MB (24837409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e7f60fa5b5600f52ceb2a5f847f939fe4fd9c88497a4af04f1a9e56a3a0226`  
		Last Modified: Fri, 22 Dec 2017 15:15:56 GMT  
		Size: 12.8 MB (12751160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1d9062191080161364b2f92fb7b1bc2983ebc261432e26e2bc529d2025a00f`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2b1a936349f6aef924d33f3b3246245ff7e15ae50f93604d15e363cf2060b9`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730970b7986ad9f4e2039724474364f61070660fb564efdf61ce67e5141ac8c9`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207f615d05708cbe302cf9382a9c2b2dc41910c9cf69dc913d7c5c02870c6138`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3005d65e7f419893d506d416f107fd2d6e82fa13eb5c86f95da855ba0dae6683`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:8415c49874d55b1dc22a02ac7f20b4bfc9506bba8d3f867a8f6fe0c44f296954
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61340853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c09030ed31aebfd1616699344097393e83013a45d2d366f34ac91daf746883dc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 13:33:42 GMT
ADD file:cfde12259adb7102e76690e986f1b9b07967a8984c85d0cead09969f5de8b8cc in / 
# Tue, 12 Dec 2017 13:33:42 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:07:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:07:51 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:07:52 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 14:08:30 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Dec 2017 14:08:31 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 13 Dec 2017 14:09:04 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:09:05 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 14:09:05 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 14:09:05 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 14:07:26 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 14:07:27 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 14:07:27 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 14:07:56 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 14:07:56 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 14:07:56 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 14:07:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 14:07:57 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 14:07:58 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 14:07:59 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 14:08:00 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 14:08:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 14:08:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 14:08:01 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 14:08:02 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:cd8b673adb84fd5eae3444d0475addad7e8908a8332704c4407baa97e9b0b284`  
		Last Modified: Tue, 12 Dec 2017 13:45:48 GMT  
		Size: 19.3 MB (19271028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681dc17295c86c86ee974da339cea0f010f6f5780ffd3b6fd3fa6b2a3d124fdd`  
		Last Modified: Wed, 13 Dec 2017 14:13:29 GMT  
		Size: 3.9 MB (3868482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03995e4857910fd538adfc3a896164f12117829662b917fd93835e24ec792b07`  
		Last Modified: Wed, 13 Dec 2017 14:13:28 GMT  
		Size: 4.1 KB (4083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7dd231e7e929346f4a5183b1f2df19bd46ef0f6ea9b79077593abd76f02737`  
		Last Modified: Wed, 13 Dec 2017 14:13:27 GMT  
		Size: 926.2 KB (926167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a6235a7077293b77a5763b50aeb4468250c3243e9a414e68ade282ba5457045`  
		Last Modified: Wed, 13 Dec 2017 14:13:27 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de253191eb0702e608f45381e5cf3de24ea4a760bc740b04a51e8bd4f577b6c7`  
		Last Modified: Wed, 13 Dec 2017 14:13:32 GMT  
		Size: 24.5 MB (24541142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b25fd4ba6b057fcbdbc2eec693d0f5c4df5a0459298926d4ad5302470e210de`  
		Last Modified: Fri, 22 Dec 2017 14:08:44 GMT  
		Size: 12.7 MB (12722767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c51fcc7b5312d66fe5f92da771aabe0349c6b3ad5d89d2d84858838fe16f4dc4`  
		Last Modified: Fri, 22 Dec 2017 14:08:42 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a588b73dbd75765122fbcfce25f9fc9c7cf5b6a37369df109328c081651975`  
		Last Modified: Fri, 22 Dec 2017 14:08:42 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78eddee1ed060160ee996266461b5bc661be8de27a56b8710f605999fce94a55`  
		Last Modified: Fri, 22 Dec 2017 14:08:42 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0979543707ff6994fd7f35ad5fda8fe9232cb2eb73d09e0a740a9585f4eaefe`  
		Last Modified: Fri, 22 Dec 2017 14:08:42 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f9032304b59cc4b820894fba66c025f4d2617438299f19d22ce540ff0bbf2c`  
		Last Modified: Fri, 22 Dec 2017 14:08:41 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:f5fbc534056e27a0d7fac58d4a2303fe3f8d1e042c6f417c009878a65338ccab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.8 MB (62843058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd6196523f123394559c88d676a03a9bc4aa5f54a545eea8ca3643622468e3e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 18:34:13 GMT
ADD file:6e068c7cc5397bfb4ec60dab4d410c5d3ba724f20ad0129d2032fb509f0eadcd in / 
# Tue, 12 Dec 2017 18:34:14 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:53:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:53:52 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:53:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 14:54:26 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Dec 2017 14:54:27 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 13 Dec 2017 14:55:29 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:55:29 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 14:55:30 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 14:55:31 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 14:52:43 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 14:52:44 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 14:52:44 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 14:53:42 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 14:53:43 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 14:53:43 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 14:53:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 14:53:45 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 14:53:47 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 14:53:48 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 14:53:49 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 14:53:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 14:53:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 14:53:52 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 14:53:54 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:fcad8cfc11c78a53ccf9aafafcb3ded5044dbd181977e6255aea54fbe164f131`  
		Last Modified: Tue, 12 Dec 2017 18:49:05 GMT  
		Size: 20.3 MB (20331270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb3f7722e72f404b7e544c9a358cc7390f02c0b391a14ea7dbecd85dca7d195`  
		Last Modified: Wed, 13 Dec 2017 15:03:22 GMT  
		Size: 4.1 MB (4073192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c72eaa15e586a9eb8cbde84a24922fdabb2aa060ef64831fb867757ac6f83a`  
		Last Modified: Wed, 13 Dec 2017 15:03:21 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ebe8f28a8d2ed828ab5c0431545a097e3f46a3ac45e36976fde6daa9fb405d`  
		Last Modified: Wed, 13 Dec 2017 15:03:21 GMT  
		Size: 919.4 KB (919386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf8546d6f1127383410e3244beb4a3873b3305deab0f469ac13d1d0b112dee1`  
		Last Modified: Wed, 13 Dec 2017 15:03:19 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aabe4d57c4c33847b3343b87c3d4b7f0efe523535a70b98185a7237848d3780d`  
		Last Modified: Wed, 13 Dec 2017 15:03:23 GMT  
		Size: 24.8 MB (24762935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29da1f88f7abd4ac706158ed66c3edd95c77c626b118d1430d9d987863a8a126`  
		Last Modified: Fri, 22 Dec 2017 14:55:58 GMT  
		Size: 12.7 MB (12745013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d9eb1dcd2f690fa686a4c2c6917a9dac1f2b83e58f873c6fa1c629a5ea35f5`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4be7195e35d31a0b3d5223c2099f6fbede7f22121454696afa9a2cb4dadb95`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ff3a93de492dfc8fd837c437a30e6d9e1360bee1f8243c1f3e7fefd4b9e617`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844056b16c3b8fb059c428a9d4c451310e81bdb909d039ddf20b1ed76ed06e4a`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:735d3dd7df678c1257c4ae682480c3e6357b26e308b36d0de392350370c0888a`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7` - linux; 386

```console
$ docker pull rabbitmq@sha256:616595177e8d2b75cc95daad6a82db183db9cd950e9a37a2b622cfb6285ac4d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.2 MB (69190637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5072ef5c905c462c763afaf1c3d3843a718f59c02429f9ae98d3e1ed076273fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 14:36:09 GMT
ADD file:ef60a5257bf2b5766f692e39f5922bbd6161e45de184b7b138522d53a477c7af in / 
# Tue, 12 Dec 2017 14:36:09 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:14:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:14:35 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:14:36 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 21:14:51 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 21:14:52 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 12 Dec 2017 21:15:34 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:16:46 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 21:16:46 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 21:16:47 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 11:44:32 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 11:44:32 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 11:44:32 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 11:45:06 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 11:45:06 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 11:45:07 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 11:45:07 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 11:45:08 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 11:45:09 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 11:45:10 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 11:45:10 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 11:45:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 11:45:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 11:45:12 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 11:45:12 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:4dbce982b05e209cf10a433462dc417f7816c47b0c1a151c8c93206b299b9a14`  
		Last Modified: Tue, 12 Dec 2017 15:03:13 GMT  
		Size: 23.1 MB (23122456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7c11e0bc622b0180ed093c8a4da0dc404613fc4331a2436a3669aa08c6e818`  
		Last Modified: Tue, 12 Dec 2017 21:33:10 GMT  
		Size: 4.8 MB (4803791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f7b212f68d587a5e50aa75b4635c7d49a9c744d221e091404cb2d1cf4327a1`  
		Last Modified: Tue, 12 Dec 2017 21:33:05 GMT  
		Size: 4.1 KB (4055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb0df0b481030711e1f4ccd5b60509dc4796c769e4d46ddf668819aba41c5d2`  
		Last Modified: Tue, 12 Dec 2017 21:33:05 GMT  
		Size: 931.6 KB (931574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e040f21d8962aea7005a7379e4852e408931ff4c1985b8debde30f1bcf14ca`  
		Last Modified: Tue, 12 Dec 2017 21:33:04 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5bbc5be701d46339ee9aa060f79d61ef2ea60c0a862dc9663bac7b97a8e169`  
		Last Modified: Tue, 12 Dec 2017 21:33:12 GMT  
		Size: 27.5 MB (27520131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dd9d2d069c706f3eb2155b3dabc19696c54dab8db1f74d481620e43b536063`  
		Last Modified: Fri, 22 Dec 2017 11:55:52 GMT  
		Size: 12.8 MB (12801444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d343d516c0b988f110df224a9f3ee502c2944e219fec1709fbcdef0a2d79fd19`  
		Last Modified: Fri, 22 Dec 2017 11:55:49 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c56b61dcb2f766abe51f40166e31dbba5e82d9061c43cf893618dacf6e843a`  
		Last Modified: Fri, 22 Dec 2017 11:55:50 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201b9543f2613c0e5a4e7b0ab82b519914eac5df575950c633193f2c8824d789`  
		Last Modified: Fri, 22 Dec 2017 11:55:49 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b6e713106094f76728ce4a7295830a2731aec1036997346ad433cd99ae0cc1`  
		Last Modified: Fri, 22 Dec 2017 11:55:49 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2ee59155be9f185db1c45800e79d5a35f93f7ff635ed223e35ed867144b11f`  
		Last Modified: Fri, 22 Dec 2017 11:55:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:8e0209bc629d15ea577869b6e80da74bf0c1365b5ca155482a1a5544bf3ef370
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65807973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:689fec414af9c1de5f6d31c906788b6d7925304e067ac1169288539ebf33f738`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:41 GMT
ADD file:896602a6d015367badb26a7ac0bcafc9aa04cbba205925631d315874b6d289ab in / 
# Tue, 12 Dec 2017 01:35:42 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 08:12:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 08:12:31 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 08:12:32 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 08:14:14 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Dec 2017 08:14:18 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 13 Dec 2017 08:15:55 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 08:15:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 08:15:58 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 08:15:59 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 08:11:41 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 08:11:42 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 08:11:43 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 08:13:32 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 08:13:33 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 08:13:35 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 08:13:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 08:13:40 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 08:13:44 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 08:13:47 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 08:13:49 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 08:13:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 08:13:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 08:13:56 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 08:13:58 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:b8b738bec437a97371af422179183d09cdb031f677b2dba4deaed774655ee9d8`  
		Last Modified: Tue, 12 Dec 2017 01:42:57 GMT  
		Size: 22.7 MB (22739713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074d2b018f7cf8971581f936aa1922718699254821ac925337d59075ff941e16`  
		Last Modified: Wed, 13 Dec 2017 08:25:16 GMT  
		Size: 4.4 MB (4360551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b59ed4bf511e4fbf8389c0a178fefb54388dd09f9fd41997517b5a18a77175`  
		Last Modified: Wed, 13 Dec 2017 08:25:12 GMT  
		Size: 4.1 KB (4108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd7fb01f62115b9286f1e6a7d47d0c323e3b09c6bd6d04e59fd6af3b2fd8704`  
		Last Modified: Wed, 13 Dec 2017 08:25:13 GMT  
		Size: 920.7 KB (920674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099a031f5f0df72a460e1d66fecbf4ebbbf062936d2d9a8474264bb64a6a9648`  
		Last Modified: Wed, 13 Dec 2017 08:25:11 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb365591fec586b108056a7461f34fbbecd7f579b59712c6a72e43c3f8a1ef2`  
		Last Modified: Wed, 13 Dec 2017 08:25:16 GMT  
		Size: 25.0 MB (25011533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71dec33419700d0f4ab4a2c6d04c32e0e811973a45d24dbb741f0e5c544626cd`  
		Last Modified: Fri, 22 Dec 2017 08:16:27 GMT  
		Size: 12.8 MB (12764207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87adf3e9f6eba9ab4607b32716f7215c55a2f806a03c2bccb9f8a257fc04a858`  
		Last Modified: Fri, 22 Dec 2017 08:16:23 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64119cdea63aa56eedbd3de89d9a94496cabe2b1240b80e04b8d4ff820192c7e`  
		Last Modified: Fri, 22 Dec 2017 08:16:22 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ad894a8943fd9b3886182a7ecd367c26e00d9dc7760423f84af98660baa32d`  
		Last Modified: Fri, 22 Dec 2017 08:16:23 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5642e99657653ea39a6ab4e3c63ff62e290143d100ce93a059c6119f4f3bce6`  
		Last Modified: Fri, 22 Dec 2017 08:16:23 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddec69e1fb6fe0e5c70e3e4e7998629d0e99560968d92265991602aa9cc82bbd`  
		Last Modified: Fri, 22 Dec 2017 08:16:22 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7.1`

```console
$ docker pull rabbitmq@sha256:0801cfa72cd71e9b44e36968734692c22963171225d8aae680521c50f6cdc685
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `rabbitmq:3.7.1` - linux; amd64

```console
$ docker pull rabbitmq@sha256:7c42a55a0f6f3d7caed26193946b60c951d68b2e0df7b5831b92e2e16f6420d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.1 MB (68059635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:985d533705b0e6021a6a033c1610f6791330c31c71f73b88528a4bef1b0074e5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:40:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:40:50 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:40:50 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 23:25:20 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 23:25:21 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 12 Dec 2017 23:25:37 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:25:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 23:25:38 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 23:25:38 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 21 Dec 2017 21:43:52 GMT
ENV RABBITMQ_VERSION=3.7.1
# Thu, 21 Dec 2017 21:43:52 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Thu, 21 Dec 2017 21:43:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Thu, 21 Dec 2017 21:44:19 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 21:44:19 GMT
ENV LANG=C.UTF-8
# Thu, 21 Dec 2017 21:44:19 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 21 Dec 2017 21:44:20 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 21 Dec 2017 21:44:28 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 21 Dec 2017 21:44:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 21 Dec 2017 21:44:37 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 21 Dec 2017 21:44:38 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Thu, 21 Dec 2017 21:44:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 21 Dec 2017 21:44:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Dec 2017 21:44:47 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 21 Dec 2017 21:44:47 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad90649c4d840febdaefa1afaad7ef8bbf2e0087ba1d11a95968afce0503f342`  
		Last Modified: Tue, 12 Dec 2017 21:45:30 GMT  
		Size: 4.5 MB (4498351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a318b914d6cead2434cc74ee74c48511ad6ec06a38ab190157246497f44afb1`  
		Last Modified: Tue, 12 Dec 2017 21:45:28 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cedd60f70052462179e86a0439f5fb3fa7b40f41dc55be9152bd147181481594`  
		Last Modified: Tue, 12 Dec 2017 23:26:36 GMT  
		Size: 951.9 KB (951937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ec28761801c452cb366afa1cbb7946bada161eb77899d9ca9a59a219e9ff42`  
		Last Modified: Tue, 12 Dec 2017 23:26:35 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fa44aa9074bb2e24649ebe2dae2f852f9443a052fd9cdfd4d11bcd86d967f7`  
		Last Modified: Tue, 12 Dec 2017 23:26:38 GMT  
		Size: 27.3 MB (27330555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf3e1e07c991ce96a21e3642cb8dbb20ef673739bb6f4d8b850380b2572f106`  
		Last Modified: Thu, 21 Dec 2017 21:47:31 GMT  
		Size: 12.8 MB (12781820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3ef1cea93bbcaa3a76d6c6e253976b8440ad24969e0ba907e173742c6ff50a`  
		Last Modified: Thu, 21 Dec 2017 21:47:26 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5ab9c082d6d13b0bb80318aa78027016a9d5673b8a552f065eeca6674c15e0`  
		Last Modified: Thu, 21 Dec 2017 21:47:28 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607d775f273a65211519680d67816f79ac0aa561a7ad364fac03c097c063fffd`  
		Last Modified: Thu, 21 Dec 2017 21:47:26 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1b766cfd2d4024d5591163073df0750727ccb125db1eeb9a92e9f364ed081d`  
		Last Modified: Thu, 21 Dec 2017 21:47:26 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca5c4856b55a852a371ef4afdddb1d16d94afe44c88221e14d84d8fdd6070df`  
		Last Modified: Thu, 21 Dec 2017 21:47:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.1` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:80833893929db23335409663f6f3f9dce91009c39c8219a9819b6e2a6693a80d
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63934407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cf7364430bbfd372da7cc8acc7115aa1c664296e7d64f3eca590db112de451b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 21:02:20 GMT
ADD file:f69e5781e9ff2a9867d94175d91d31553e07613bf4b50a1064274ed21a5ed353 in / 
# Tue, 12 Dec 2017 21:02:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 23:14:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:14:46 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 23:14:46 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 23:15:03 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 23:15:05 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 12 Dec 2017 23:15:44 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:15:45 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 23:15:45 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 23:15:46 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 15:14:24 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 15:14:24 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 15:14:24 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 15:14:59 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 15:15:00 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 15:15:00 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 15:15:01 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 15:15:01 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 15:15:02 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 15:15:03 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 15:15:03 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 15:15:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 15:15:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 15:15:05 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 15:15:05 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:20f319b2549a8d631c2e8034bfc3f9c12042d86a686470a8addd2fb7bc8c688c`  
		Last Modified: Tue, 12 Dec 2017 21:12:53 GMT  
		Size: 21.2 MB (21160630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608d8fd7a6001a09dff4cc76414aa4711207466847dfa91271aa6dd09becdd6a`  
		Last Modified: Tue, 12 Dec 2017 23:21:52 GMT  
		Size: 4.2 MB (4231488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d214c26ea8bd4ea1468f2b7c9806f8f3cde7cd6c2f09660325ea38b81dcb9c13`  
		Last Modified: Tue, 12 Dec 2017 23:21:50 GMT  
		Size: 4.1 KB (4082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9640468e3e315e94fa5dfdb6b79a97eb7f83beebca51e85a68ab3ef6a4b13106`  
		Last Modified: Tue, 12 Dec 2017 23:21:51 GMT  
		Size: 942.4 KB (942449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce50058b2ae9912872489ab639895bd412cd17a9a299fe4e208704d0ef03dd1f`  
		Last Modified: Tue, 12 Dec 2017 23:21:50 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de8bff935da4e19ec18fec56ba68c2cf72e41a4ad936934d6927c22d50d69dab`  
		Last Modified: Tue, 12 Dec 2017 23:21:56 GMT  
		Size: 24.8 MB (24837409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e7f60fa5b5600f52ceb2a5f847f939fe4fd9c88497a4af04f1a9e56a3a0226`  
		Last Modified: Fri, 22 Dec 2017 15:15:56 GMT  
		Size: 12.8 MB (12751160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1d9062191080161364b2f92fb7b1bc2983ebc261432e26e2bc529d2025a00f`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2b1a936349f6aef924d33f3b3246245ff7e15ae50f93604d15e363cf2060b9`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730970b7986ad9f4e2039724474364f61070660fb564efdf61ce67e5141ac8c9`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207f615d05708cbe302cf9382a9c2b2dc41910c9cf69dc913d7c5c02870c6138`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3005d65e7f419893d506d416f107fd2d6e82fa13eb5c86f95da855ba0dae6683`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.1` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:8415c49874d55b1dc22a02ac7f20b4bfc9506bba8d3f867a8f6fe0c44f296954
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61340853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c09030ed31aebfd1616699344097393e83013a45d2d366f34ac91daf746883dc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 13:33:42 GMT
ADD file:cfde12259adb7102e76690e986f1b9b07967a8984c85d0cead09969f5de8b8cc in / 
# Tue, 12 Dec 2017 13:33:42 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:07:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:07:51 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:07:52 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 14:08:30 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Dec 2017 14:08:31 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 13 Dec 2017 14:09:04 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:09:05 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 14:09:05 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 14:09:05 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 14:07:26 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 14:07:27 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 14:07:27 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 14:07:56 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 14:07:56 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 14:07:56 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 14:07:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 14:07:57 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 14:07:58 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 14:07:59 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 14:08:00 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 14:08:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 14:08:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 14:08:01 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 14:08:02 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:cd8b673adb84fd5eae3444d0475addad7e8908a8332704c4407baa97e9b0b284`  
		Last Modified: Tue, 12 Dec 2017 13:45:48 GMT  
		Size: 19.3 MB (19271028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681dc17295c86c86ee974da339cea0f010f6f5780ffd3b6fd3fa6b2a3d124fdd`  
		Last Modified: Wed, 13 Dec 2017 14:13:29 GMT  
		Size: 3.9 MB (3868482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03995e4857910fd538adfc3a896164f12117829662b917fd93835e24ec792b07`  
		Last Modified: Wed, 13 Dec 2017 14:13:28 GMT  
		Size: 4.1 KB (4083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7dd231e7e929346f4a5183b1f2df19bd46ef0f6ea9b79077593abd76f02737`  
		Last Modified: Wed, 13 Dec 2017 14:13:27 GMT  
		Size: 926.2 KB (926167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a6235a7077293b77a5763b50aeb4468250c3243e9a414e68ade282ba5457045`  
		Last Modified: Wed, 13 Dec 2017 14:13:27 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de253191eb0702e608f45381e5cf3de24ea4a760bc740b04a51e8bd4f577b6c7`  
		Last Modified: Wed, 13 Dec 2017 14:13:32 GMT  
		Size: 24.5 MB (24541142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b25fd4ba6b057fcbdbc2eec693d0f5c4df5a0459298926d4ad5302470e210de`  
		Last Modified: Fri, 22 Dec 2017 14:08:44 GMT  
		Size: 12.7 MB (12722767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c51fcc7b5312d66fe5f92da771aabe0349c6b3ad5d89d2d84858838fe16f4dc4`  
		Last Modified: Fri, 22 Dec 2017 14:08:42 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a588b73dbd75765122fbcfce25f9fc9c7cf5b6a37369df109328c081651975`  
		Last Modified: Fri, 22 Dec 2017 14:08:42 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78eddee1ed060160ee996266461b5bc661be8de27a56b8710f605999fce94a55`  
		Last Modified: Fri, 22 Dec 2017 14:08:42 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0979543707ff6994fd7f35ad5fda8fe9232cb2eb73d09e0a740a9585f4eaefe`  
		Last Modified: Fri, 22 Dec 2017 14:08:42 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f9032304b59cc4b820894fba66c025f4d2617438299f19d22ce540ff0bbf2c`  
		Last Modified: Fri, 22 Dec 2017 14:08:41 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.1` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:f5fbc534056e27a0d7fac58d4a2303fe3f8d1e042c6f417c009878a65338ccab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.8 MB (62843058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd6196523f123394559c88d676a03a9bc4aa5f54a545eea8ca3643622468e3e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 18:34:13 GMT
ADD file:6e068c7cc5397bfb4ec60dab4d410c5d3ba724f20ad0129d2032fb509f0eadcd in / 
# Tue, 12 Dec 2017 18:34:14 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:53:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:53:52 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:53:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 14:54:26 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Dec 2017 14:54:27 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 13 Dec 2017 14:55:29 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:55:29 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 14:55:30 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 14:55:31 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 14:52:43 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 14:52:44 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 14:52:44 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 14:53:42 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 14:53:43 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 14:53:43 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 14:53:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 14:53:45 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 14:53:47 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 14:53:48 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 14:53:49 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 14:53:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 14:53:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 14:53:52 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 14:53:54 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:fcad8cfc11c78a53ccf9aafafcb3ded5044dbd181977e6255aea54fbe164f131`  
		Last Modified: Tue, 12 Dec 2017 18:49:05 GMT  
		Size: 20.3 MB (20331270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb3f7722e72f404b7e544c9a358cc7390f02c0b391a14ea7dbecd85dca7d195`  
		Last Modified: Wed, 13 Dec 2017 15:03:22 GMT  
		Size: 4.1 MB (4073192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c72eaa15e586a9eb8cbde84a24922fdabb2aa060ef64831fb867757ac6f83a`  
		Last Modified: Wed, 13 Dec 2017 15:03:21 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ebe8f28a8d2ed828ab5c0431545a097e3f46a3ac45e36976fde6daa9fb405d`  
		Last Modified: Wed, 13 Dec 2017 15:03:21 GMT  
		Size: 919.4 KB (919386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf8546d6f1127383410e3244beb4a3873b3305deab0f469ac13d1d0b112dee1`  
		Last Modified: Wed, 13 Dec 2017 15:03:19 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aabe4d57c4c33847b3343b87c3d4b7f0efe523535a70b98185a7237848d3780d`  
		Last Modified: Wed, 13 Dec 2017 15:03:23 GMT  
		Size: 24.8 MB (24762935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29da1f88f7abd4ac706158ed66c3edd95c77c626b118d1430d9d987863a8a126`  
		Last Modified: Fri, 22 Dec 2017 14:55:58 GMT  
		Size: 12.7 MB (12745013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d9eb1dcd2f690fa686a4c2c6917a9dac1f2b83e58f873c6fa1c629a5ea35f5`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4be7195e35d31a0b3d5223c2099f6fbede7f22121454696afa9a2cb4dadb95`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ff3a93de492dfc8fd837c437a30e6d9e1360bee1f8243c1f3e7fefd4b9e617`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844056b16c3b8fb059c428a9d4c451310e81bdb909d039ddf20b1ed76ed06e4a`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:735d3dd7df678c1257c4ae682480c3e6357b26e308b36d0de392350370c0888a`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.1` - linux; 386

```console
$ docker pull rabbitmq@sha256:616595177e8d2b75cc95daad6a82db183db9cd950e9a37a2b622cfb6285ac4d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.2 MB (69190637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5072ef5c905c462c763afaf1c3d3843a718f59c02429f9ae98d3e1ed076273fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 14:36:09 GMT
ADD file:ef60a5257bf2b5766f692e39f5922bbd6161e45de184b7b138522d53a477c7af in / 
# Tue, 12 Dec 2017 14:36:09 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:14:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:14:35 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:14:36 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 21:14:51 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 21:14:52 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 12 Dec 2017 21:15:34 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:16:46 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 21:16:46 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 21:16:47 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 11:44:32 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 11:44:32 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 11:44:32 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 11:45:06 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 11:45:06 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 11:45:07 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 11:45:07 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 11:45:08 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 11:45:09 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 11:45:10 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 11:45:10 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 11:45:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 11:45:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 11:45:12 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 11:45:12 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:4dbce982b05e209cf10a433462dc417f7816c47b0c1a151c8c93206b299b9a14`  
		Last Modified: Tue, 12 Dec 2017 15:03:13 GMT  
		Size: 23.1 MB (23122456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7c11e0bc622b0180ed093c8a4da0dc404613fc4331a2436a3669aa08c6e818`  
		Last Modified: Tue, 12 Dec 2017 21:33:10 GMT  
		Size: 4.8 MB (4803791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f7b212f68d587a5e50aa75b4635c7d49a9c744d221e091404cb2d1cf4327a1`  
		Last Modified: Tue, 12 Dec 2017 21:33:05 GMT  
		Size: 4.1 KB (4055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb0df0b481030711e1f4ccd5b60509dc4796c769e4d46ddf668819aba41c5d2`  
		Last Modified: Tue, 12 Dec 2017 21:33:05 GMT  
		Size: 931.6 KB (931574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e040f21d8962aea7005a7379e4852e408931ff4c1985b8debde30f1bcf14ca`  
		Last Modified: Tue, 12 Dec 2017 21:33:04 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5bbc5be701d46339ee9aa060f79d61ef2ea60c0a862dc9663bac7b97a8e169`  
		Last Modified: Tue, 12 Dec 2017 21:33:12 GMT  
		Size: 27.5 MB (27520131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dd9d2d069c706f3eb2155b3dabc19696c54dab8db1f74d481620e43b536063`  
		Last Modified: Fri, 22 Dec 2017 11:55:52 GMT  
		Size: 12.8 MB (12801444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d343d516c0b988f110df224a9f3ee502c2944e219fec1709fbcdef0a2d79fd19`  
		Last Modified: Fri, 22 Dec 2017 11:55:49 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c56b61dcb2f766abe51f40166e31dbba5e82d9061c43cf893618dacf6e843a`  
		Last Modified: Fri, 22 Dec 2017 11:55:50 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201b9543f2613c0e5a4e7b0ab82b519914eac5df575950c633193f2c8824d789`  
		Last Modified: Fri, 22 Dec 2017 11:55:49 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b6e713106094f76728ce4a7295830a2731aec1036997346ad433cd99ae0cc1`  
		Last Modified: Fri, 22 Dec 2017 11:55:49 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2ee59155be9f185db1c45800e79d5a35f93f7ff635ed223e35ed867144b11f`  
		Last Modified: Fri, 22 Dec 2017 11:55:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.1` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:8e0209bc629d15ea577869b6e80da74bf0c1365b5ca155482a1a5544bf3ef370
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65807973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:689fec414af9c1de5f6d31c906788b6d7925304e067ac1169288539ebf33f738`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:41 GMT
ADD file:896602a6d015367badb26a7ac0bcafc9aa04cbba205925631d315874b6d289ab in / 
# Tue, 12 Dec 2017 01:35:42 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 08:12:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 08:12:31 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 08:12:32 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 08:14:14 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Dec 2017 08:14:18 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 13 Dec 2017 08:15:55 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 08:15:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 08:15:58 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 08:15:59 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 08:11:41 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 08:11:42 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 08:11:43 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 08:13:32 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 08:13:33 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 08:13:35 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 08:13:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 08:13:40 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 08:13:44 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 08:13:47 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 08:13:49 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 08:13:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 08:13:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 08:13:56 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 08:13:58 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:b8b738bec437a97371af422179183d09cdb031f677b2dba4deaed774655ee9d8`  
		Last Modified: Tue, 12 Dec 2017 01:42:57 GMT  
		Size: 22.7 MB (22739713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074d2b018f7cf8971581f936aa1922718699254821ac925337d59075ff941e16`  
		Last Modified: Wed, 13 Dec 2017 08:25:16 GMT  
		Size: 4.4 MB (4360551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b59ed4bf511e4fbf8389c0a178fefb54388dd09f9fd41997517b5a18a77175`  
		Last Modified: Wed, 13 Dec 2017 08:25:12 GMT  
		Size: 4.1 KB (4108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd7fb01f62115b9286f1e6a7d47d0c323e3b09c6bd6d04e59fd6af3b2fd8704`  
		Last Modified: Wed, 13 Dec 2017 08:25:13 GMT  
		Size: 920.7 KB (920674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099a031f5f0df72a460e1d66fecbf4ebbbf062936d2d9a8474264bb64a6a9648`  
		Last Modified: Wed, 13 Dec 2017 08:25:11 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb365591fec586b108056a7461f34fbbecd7f579b59712c6a72e43c3f8a1ef2`  
		Last Modified: Wed, 13 Dec 2017 08:25:16 GMT  
		Size: 25.0 MB (25011533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71dec33419700d0f4ab4a2c6d04c32e0e811973a45d24dbb741f0e5c544626cd`  
		Last Modified: Fri, 22 Dec 2017 08:16:27 GMT  
		Size: 12.8 MB (12764207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87adf3e9f6eba9ab4607b32716f7215c55a2f806a03c2bccb9f8a257fc04a858`  
		Last Modified: Fri, 22 Dec 2017 08:16:23 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64119cdea63aa56eedbd3de89d9a94496cabe2b1240b80e04b8d4ff820192c7e`  
		Last Modified: Fri, 22 Dec 2017 08:16:22 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ad894a8943fd9b3886182a7ecd367c26e00d9dc7760423f84af98660baa32d`  
		Last Modified: Fri, 22 Dec 2017 08:16:23 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5642e99657653ea39a6ab4e3c63ff62e290143d100ce93a059c6119f4f3bce6`  
		Last Modified: Fri, 22 Dec 2017 08:16:23 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddec69e1fb6fe0e5c70e3e4e7998629d0e99560968d92265991602aa9cc82bbd`  
		Last Modified: Fri, 22 Dec 2017 08:16:22 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7.1-alpine`

```console
$ docker pull rabbitmq@sha256:a4f6620edb796c70aa5de9ff8c24927b6ba5a8187232c4d50459c713b8e11e85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `rabbitmq:3.7.1-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:90b06e2750b258e843e868556f3bc5ad7c89512753862c6269687efae0b3fe80
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32777224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b2875253f220da0c7e8fb76a6e3ec7c07990a564e5fb26d2829980ea39f5cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 12 Dec 2017 21:41:43 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:41:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 12 Dec 2017 21:42:01 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 12 Dec 2017 21:42:01 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 21:42:01 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 12 Dec 2017 21:42:01 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 21:42:01 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 21 Dec 2017 21:45:57 GMT
ENV RABBITMQ_VERSION=3.7.1
# Thu, 21 Dec 2017 21:45:58 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Thu, 21 Dec 2017 21:46:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 21 Dec 2017 21:46:15 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 21 Dec 2017 21:46:16 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Thu, 21 Dec 2017 21:46:16 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 21 Dec 2017 21:46:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 21 Dec 2017 21:46:25 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 21 Dec 2017 21:46:33 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Thu, 21 Dec 2017 21:46:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Dec 2017 21:46:34 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 21 Dec 2017 21:46:34 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c1a6072a0178dab7d654b6acba25999111f65220e215aa17469c267102d277`  
		Last Modified: Tue, 12 Dec 2017 21:44:03 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f1d7e091ce75ff0605b46c770dec934cddd5a7e0b02f3b6cd023f521c80eb7`  
		Last Modified: Tue, 12 Dec 2017 21:44:04 GMT  
		Size: 8.6 KB (8553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6292a4d2dfb8b5360d5c00c398460db176d6568cf938970df741532ace92088a`  
		Last Modified: Tue, 12 Dec 2017 21:44:05 GMT  
		Size: 18.7 MB (18652435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b089414b5bab92d9738a7b587335f2b46589ea337410fed306be2fec97e646`  
		Last Modified: Thu, 21 Dec 2017 21:49:39 GMT  
		Size: 12.0 MB (12045410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87bc86ebf4d9b7ae0a431b32c1e1a0dfc05bb511b6234394497aa98be30d5399`  
		Last Modified: Thu, 21 Dec 2017 21:49:33 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f15622b0a3adfbad46d71a2ab9bd1d219ec7d660e9a85f2bb792aa35450edf`  
		Last Modified: Thu, 21 Dec 2017 21:49:33 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52177a7021e2926921f06bed2402140367b9489638881c3c7cebf90a6327593a`  
		Last Modified: Thu, 21 Dec 2017 21:49:33 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1936b63aa170cce9d350b68a0686ca5932bbf55bfac91f0d590daa3e9a8478f`  
		Last Modified: Thu, 21 Dec 2017 21:49:33 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.1-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:128fd63c14bde04b9c4a2e276cdaa9dea6235a60eeefdfad4aa951066c9d8e70
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30360684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dde6965f1b9384437a32beb1d01a4719f8a7c486f4540f12366bb8fde75eb6f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Tue, 12 Dec 2017 22:29:28 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 12 Dec 2017 22:29:31 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 12 Dec 2017 22:29:49 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 12 Dec 2017 22:29:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 22:29:49 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 12 Dec 2017 22:29:50 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 22:29:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 21 Dec 2017 22:29:25 GMT
ENV RABBITMQ_VERSION=3.7.1
# Thu, 21 Dec 2017 22:29:25 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 22:29:37 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 22 Dec 2017 22:29:37 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 22:29:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Fri, 22 Dec 2017 22:29:38 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 22:29:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 22:29:40 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 22 Dec 2017 22:29:40 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Fri, 22 Dec 2017 22:29:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 22:29:40 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 22:29:40 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9f4ef04f158d5563eb96ea67bbbd10533494056e819df3e002e09e93aad6dd`  
		Last Modified: Wed, 13 Dec 2017 02:05:18 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a83132a783f9ca240cda4cc4331243e673e7b212ee99470582aa35be2d61e6`  
		Last Modified: Wed, 13 Dec 2017 02:05:17 GMT  
		Size: 8.7 KB (8715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6669a7b0dc467da6f3e91bc37fc1992f9c5ac9397f55634c4d2ff713d09bd334`  
		Last Modified: Wed, 13 Dec 2017 02:05:21 GMT  
		Size: 16.3 MB (16268883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbc7168607343956af7dcaa96f58499d5e4759673b5945ced9c1b6cfbb72ae62`  
		Last Modified: Fri, 22 Dec 2017 22:30:19 GMT  
		Size: 12.0 MB (12038626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c93de07707d93fe0b3b02ca6f44a4f13994bf0ce39784855235a14c9d340eca`  
		Last Modified: Fri, 22 Dec 2017 22:30:17 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e36da3412f0fad2e5cca99cb191b0b30b749a2261488a70a9f1fd320af50396`  
		Last Modified: Fri, 22 Dec 2017 22:30:17 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114b60bece05a2b6be5d2bca34f760f42da64d3264d79535289c246622b63534`  
		Last Modified: Fri, 22 Dec 2017 22:30:17 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:443fa80972c987c6a56c669cbc97108c0a963332f2bea147319de0d81746cb9f`  
		Last Modified: Fri, 22 Dec 2017 22:30:17 GMT  
		Size: 4.2 KB (4178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.1-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:307c2d68eb4ef049d32316e42ab711821efb9c25451068755768fe5654e6c603
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30294188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a3c12b7295c0adc9c57fd587d22b2d77086ab0e01c4ce4c37a862553b802e33`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 13 Dec 2017 14:57:23 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:57:26 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Dec 2017 14:57:46 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 13 Dec 2017 14:57:47 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 14:57:48 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 13 Dec 2017 14:57:48 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 14:57:49 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 14:54:44 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 14:54:44 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 14:54:57 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 22 Dec 2017 14:54:58 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 14:54:59 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Fri, 22 Dec 2017 14:55:00 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 14:55:01 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 14:55:03 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 22 Dec 2017 14:55:03 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Fri, 22 Dec 2017 14:55:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 14:55:05 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 14:55:05 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8c4ed88f638b23b4b44a51af5828b7ca6cf492e10d10b6517f03b2dc5f9c6a`  
		Last Modified: Wed, 13 Dec 2017 15:05:55 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec871b8e16217284a5c9467fc885f9330b7cf594b88a9d251f442a31f9b11982`  
		Last Modified: Wed, 13 Dec 2017 15:05:55 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc676aee1200891fd5416055f87903087826e98535cbd81dcb50768900244552`  
		Last Modified: Wed, 13 Dec 2017 15:06:00 GMT  
		Size: 16.3 MB (16252090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213f96c29a6fa093c23a462408772468af6b41603f9f804f69b2206fbc84a25b`  
		Last Modified: Fri, 22 Dec 2017 14:57:06 GMT  
		Size: 12.0 MB (12038502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:188e7efaae29b7712cb6dd21ddca9143c50d4faab9a53473748029b7ae539a7e`  
		Last Modified: Fri, 22 Dec 2017 14:57:04 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5cebb19a31ee23a6b53957154c787ba8dc91c115322e1dbeac1e44df505f79`  
		Last Modified: Fri, 22 Dec 2017 14:57:04 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed879368aff199bfcb6dbf7869c598a9b650f7cbcbce982d9bd073a9e0104e4`  
		Last Modified: Fri, 22 Dec 2017 14:57:04 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1884d950d65ccb72b718cc0c4453e7f9a25cc4008a45bd77597d751fcd3f59a`  
		Last Modified: Fri, 22 Dec 2017 14:57:04 GMT  
		Size: 4.2 KB (4175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.1-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:bc067e03ffe888475cce161bb9e1677ae0e6b7a4259083c6afbc2c8bbb356a08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30593007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9ddb77aa01e33ad43deed7be54170f6a226814a23ab9a118baf5370ebfa1218`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 13 Dec 2017 08:18:08 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 13 Dec 2017 08:18:13 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Dec 2017 08:18:35 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 13 Dec 2017 08:18:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 08:18:38 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 13 Dec 2017 08:18:40 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 08:18:41 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 08:14:54 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 08:14:55 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 08:15:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 22 Dec 2017 08:15:24 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 08:15:27 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Fri, 22 Dec 2017 08:15:28 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 08:15:31 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 08:15:34 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 22 Dec 2017 08:15:35 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Fri, 22 Dec 2017 08:15:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 08:15:38 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 08:15:39 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d1ed2187942e6103764c1aafdbb8a07c8ca518010057fe8241ae1785036c34`  
		Last Modified: Wed, 13 Dec 2017 08:26:26 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0edcdde4e4bb24d232fb81eb66c47fcc0d25af42f3b5d6d228547cd01c4eee4c`  
		Last Modified: Wed, 13 Dec 2017 08:26:25 GMT  
		Size: 9.3 KB (9261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d586348c018beacd8f060a315dc7b4d506f2132378b683c3fead6f9fa7766efe`  
		Last Modified: Wed, 13 Dec 2017 08:26:29 GMT  
		Size: 16.5 MB (16456345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f912d1158398651caa084a6fc2d7867e682d13a606000c7f834aabd9fc55ea7c`  
		Last Modified: Fri, 22 Dec 2017 08:17:19 GMT  
		Size: 12.0 MB (12039764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be8debed377719ffd4adbc441a7d0af6f08d1ea3a7dbd59e2eac00c471f330a`  
		Last Modified: Fri, 22 Dec 2017 08:17:17 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3171c2bce1c3835b9cf7eec85925c0774dd95c161dd320f3feabc6f46f325f06`  
		Last Modified: Fri, 22 Dec 2017 08:17:17 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70aa8e2fc70384bc3c37708f5f60b3b02b42d9e97999ef353df020ef15e5221a`  
		Last Modified: Fri, 22 Dec 2017 08:17:17 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7612e5863338a37568134bf4db9b2f2f61dabad4e5c6bfef2cf0b8b9ca3c0b34`  
		Last Modified: Fri, 22 Dec 2017 08:17:17 GMT  
		Size: 4.2 KB (4180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7.1-management`

```console
$ docker pull rabbitmq@sha256:6b6be1f8a4d57befac70e53ae6391effadde140993b8c20d16d5aa9a1690dff1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `rabbitmq:3.7.1-management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:ce7b330e653a03f34845cfeb2048ee51db81c095dba50770f1485221624ec454
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.7 MB (75682058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3c1af531bfa286b607e0e9d0bd6637d0c8c12b399dadb387e487096a118974a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:40:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:40:50 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:40:50 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 23:25:20 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 23:25:21 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 12 Dec 2017 23:25:37 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:25:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 23:25:38 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 23:25:38 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 21 Dec 2017 21:43:52 GMT
ENV RABBITMQ_VERSION=3.7.1
# Thu, 21 Dec 2017 21:43:52 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Thu, 21 Dec 2017 21:43:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Thu, 21 Dec 2017 21:44:19 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 21:44:19 GMT
ENV LANG=C.UTF-8
# Thu, 21 Dec 2017 21:44:19 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 21 Dec 2017 21:44:20 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 21 Dec 2017 21:44:28 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 21 Dec 2017 21:44:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 21 Dec 2017 21:44:37 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 21 Dec 2017 21:44:38 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Thu, 21 Dec 2017 21:44:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 21 Dec 2017 21:44:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Dec 2017 21:44:47 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 21 Dec 2017 21:44:47 GMT
CMD ["rabbitmq-server"]
# Thu, 21 Dec 2017 21:45:24 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 21 Dec 2017 21:45:39 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Thu, 21 Dec 2017 21:45:40 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad90649c4d840febdaefa1afaad7ef8bbf2e0087ba1d11a95968afce0503f342`  
		Last Modified: Tue, 12 Dec 2017 21:45:30 GMT  
		Size: 4.5 MB (4498351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a318b914d6cead2434cc74ee74c48511ad6ec06a38ab190157246497f44afb1`  
		Last Modified: Tue, 12 Dec 2017 21:45:28 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cedd60f70052462179e86a0439f5fb3fa7b40f41dc55be9152bd147181481594`  
		Last Modified: Tue, 12 Dec 2017 23:26:36 GMT  
		Size: 951.9 KB (951937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ec28761801c452cb366afa1cbb7946bada161eb77899d9ca9a59a219e9ff42`  
		Last Modified: Tue, 12 Dec 2017 23:26:35 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fa44aa9074bb2e24649ebe2dae2f852f9443a052fd9cdfd4d11bcd86d967f7`  
		Last Modified: Tue, 12 Dec 2017 23:26:38 GMT  
		Size: 27.3 MB (27330555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf3e1e07c991ce96a21e3642cb8dbb20ef673739bb6f4d8b850380b2572f106`  
		Last Modified: Thu, 21 Dec 2017 21:47:31 GMT  
		Size: 12.8 MB (12781820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3ef1cea93bbcaa3a76d6c6e253976b8440ad24969e0ba907e173742c6ff50a`  
		Last Modified: Thu, 21 Dec 2017 21:47:26 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5ab9c082d6d13b0bb80318aa78027016a9d5673b8a552f065eeca6674c15e0`  
		Last Modified: Thu, 21 Dec 2017 21:47:28 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607d775f273a65211519680d67816f79ac0aa561a7ad364fac03c097c063fffd`  
		Last Modified: Thu, 21 Dec 2017 21:47:26 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1b766cfd2d4024d5591163073df0750727ccb125db1eeb9a92e9f364ed081d`  
		Last Modified: Thu, 21 Dec 2017 21:47:26 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca5c4856b55a852a371ef4afdddb1d16d94afe44c88221e14d84d8fdd6070df`  
		Last Modified: Thu, 21 Dec 2017 21:47:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d24bb85705e9e92239e95be1af2ef6bc9965cf09fb05e6f30a4de1d3aad4e214`  
		Last Modified: Thu, 21 Dec 2017 21:48:31 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffc927f7905fbf60fc741f2b666857c6bc7041d7c12430b915c787fb7a95d78`  
		Last Modified: Thu, 21 Dec 2017 21:48:36 GMT  
		Size: 7.6 MB (7622231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.1-management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:ffb97a38b0a4fd039b1248ddcfa295fccacc54abdafec1bbf2bc29673b2aea87
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.4 MB (71406814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9606fe70b34d9a161737c5b82040ed0c75238e6fdc8a97629a22c498792cdf07`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 21:02:20 GMT
ADD file:f69e5781e9ff2a9867d94175d91d31553e07613bf4b50a1064274ed21a5ed353 in / 
# Tue, 12 Dec 2017 21:02:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 23:14:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:14:46 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 23:14:46 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 23:15:03 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 23:15:05 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 12 Dec 2017 23:15:44 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:15:45 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 23:15:45 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 23:15:46 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 15:14:24 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 15:14:24 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 15:14:24 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 15:14:59 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 15:15:00 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 15:15:00 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 15:15:01 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 15:15:01 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 15:15:02 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 15:15:03 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 15:15:03 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 15:15:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 15:15:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 15:15:05 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 15:15:05 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Dec 2017 15:15:16 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Dec 2017 15:15:35 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 22 Dec 2017 15:15:36 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:20f319b2549a8d631c2e8034bfc3f9c12042d86a686470a8addd2fb7bc8c688c`  
		Last Modified: Tue, 12 Dec 2017 21:12:53 GMT  
		Size: 21.2 MB (21160630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608d8fd7a6001a09dff4cc76414aa4711207466847dfa91271aa6dd09becdd6a`  
		Last Modified: Tue, 12 Dec 2017 23:21:52 GMT  
		Size: 4.2 MB (4231488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d214c26ea8bd4ea1468f2b7c9806f8f3cde7cd6c2f09660325ea38b81dcb9c13`  
		Last Modified: Tue, 12 Dec 2017 23:21:50 GMT  
		Size: 4.1 KB (4082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9640468e3e315e94fa5dfdb6b79a97eb7f83beebca51e85a68ab3ef6a4b13106`  
		Last Modified: Tue, 12 Dec 2017 23:21:51 GMT  
		Size: 942.4 KB (942449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce50058b2ae9912872489ab639895bd412cd17a9a299fe4e208704d0ef03dd1f`  
		Last Modified: Tue, 12 Dec 2017 23:21:50 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de8bff935da4e19ec18fec56ba68c2cf72e41a4ad936934d6927c22d50d69dab`  
		Last Modified: Tue, 12 Dec 2017 23:21:56 GMT  
		Size: 24.8 MB (24837409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e7f60fa5b5600f52ceb2a5f847f939fe4fd9c88497a4af04f1a9e56a3a0226`  
		Last Modified: Fri, 22 Dec 2017 15:15:56 GMT  
		Size: 12.8 MB (12751160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1d9062191080161364b2f92fb7b1bc2983ebc261432e26e2bc529d2025a00f`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2b1a936349f6aef924d33f3b3246245ff7e15ae50f93604d15e363cf2060b9`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730970b7986ad9f4e2039724474364f61070660fb564efdf61ce67e5141ac8c9`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207f615d05708cbe302cf9382a9c2b2dc41910c9cf69dc913d7c5c02870c6138`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3005d65e7f419893d506d416f107fd2d6e82fa13eb5c86f95da855ba0dae6683`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081ff403ae0e159713237cec2151bc7947ae5eb26ec78c5fdccb58fa991c0906`  
		Last Modified: Fri, 22 Dec 2017 15:16:11 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1c8daba1791e89d5cfd91acbd604ef8ab72dc642a30aecbd876eb96bbb4dc8`  
		Last Modified: Fri, 22 Dec 2017 15:16:15 GMT  
		Size: 7.5 MB (7472214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.1-management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:5f8ae6369dc47a4350d6cce1828130cf56d2eade2c5c97fb77337285d5f00338
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.5 MB (68523704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cbac589adc82218f6e8c865d22901877e8dbce390002f44c280ff78cb956edd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 13:33:42 GMT
ADD file:cfde12259adb7102e76690e986f1b9b07967a8984c85d0cead09969f5de8b8cc in / 
# Tue, 12 Dec 2017 13:33:42 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:07:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:07:51 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:07:52 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 14:08:30 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Dec 2017 14:08:31 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 13 Dec 2017 14:09:04 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:09:05 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 14:09:05 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 14:09:05 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 14:07:26 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 14:07:27 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 14:07:27 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 14:07:56 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 14:07:56 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 14:07:56 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 14:07:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 14:07:57 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 14:07:58 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 14:07:59 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 14:08:00 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 14:08:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 14:08:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 14:08:01 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 14:08:02 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Dec 2017 14:08:12 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Dec 2017 14:08:26 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 22 Dec 2017 14:08:26 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:cd8b673adb84fd5eae3444d0475addad7e8908a8332704c4407baa97e9b0b284`  
		Last Modified: Tue, 12 Dec 2017 13:45:48 GMT  
		Size: 19.3 MB (19271028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681dc17295c86c86ee974da339cea0f010f6f5780ffd3b6fd3fa6b2a3d124fdd`  
		Last Modified: Wed, 13 Dec 2017 14:13:29 GMT  
		Size: 3.9 MB (3868482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03995e4857910fd538adfc3a896164f12117829662b917fd93835e24ec792b07`  
		Last Modified: Wed, 13 Dec 2017 14:13:28 GMT  
		Size: 4.1 KB (4083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7dd231e7e929346f4a5183b1f2df19bd46ef0f6ea9b79077593abd76f02737`  
		Last Modified: Wed, 13 Dec 2017 14:13:27 GMT  
		Size: 926.2 KB (926167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a6235a7077293b77a5763b50aeb4468250c3243e9a414e68ade282ba5457045`  
		Last Modified: Wed, 13 Dec 2017 14:13:27 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de253191eb0702e608f45381e5cf3de24ea4a760bc740b04a51e8bd4f577b6c7`  
		Last Modified: Wed, 13 Dec 2017 14:13:32 GMT  
		Size: 24.5 MB (24541142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b25fd4ba6b057fcbdbc2eec693d0f5c4df5a0459298926d4ad5302470e210de`  
		Last Modified: Fri, 22 Dec 2017 14:08:44 GMT  
		Size: 12.7 MB (12722767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c51fcc7b5312d66fe5f92da771aabe0349c6b3ad5d89d2d84858838fe16f4dc4`  
		Last Modified: Fri, 22 Dec 2017 14:08:42 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a588b73dbd75765122fbcfce25f9fc9c7cf5b6a37369df109328c081651975`  
		Last Modified: Fri, 22 Dec 2017 14:08:42 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78eddee1ed060160ee996266461b5bc661be8de27a56b8710f605999fce94a55`  
		Last Modified: Fri, 22 Dec 2017 14:08:42 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0979543707ff6994fd7f35ad5fda8fe9232cb2eb73d09e0a740a9585f4eaefe`  
		Last Modified: Fri, 22 Dec 2017 14:08:42 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f9032304b59cc4b820894fba66c025f4d2617438299f19d22ce540ff0bbf2c`  
		Last Modified: Fri, 22 Dec 2017 14:08:41 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560fb52b7a723a78d283679e1522845627c3982baf9075e153ff9caba4a2c6e4`  
		Last Modified: Fri, 22 Dec 2017 14:09:00 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98661b6f7d96fce4607e860bf2b231817b8af795c3b3880b0d4afb748be1a030`  
		Last Modified: Fri, 22 Dec 2017 14:09:03 GMT  
		Size: 7.2 MB (7182658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.1-management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:34c06758df278ad0d45b251865ec113771e4c4f6160a6893260436f47a90d07a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.3 MB (70317966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:642b44151b1518e53dd9401a2969cfc02e854e5a21706a750e628e00580a20b9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 18:34:13 GMT
ADD file:6e068c7cc5397bfb4ec60dab4d410c5d3ba724f20ad0129d2032fb509f0eadcd in / 
# Tue, 12 Dec 2017 18:34:14 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:53:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:53:52 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:53:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 14:54:26 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Dec 2017 14:54:27 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 13 Dec 2017 14:55:29 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:55:29 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 14:55:30 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 14:55:31 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 14:52:43 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 14:52:44 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 14:52:44 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 14:53:42 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 14:53:43 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 14:53:43 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 14:53:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 14:53:45 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 14:53:47 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 14:53:48 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 14:53:49 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 14:53:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 14:53:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 14:53:52 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 14:53:54 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Dec 2017 14:54:06 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Dec 2017 14:54:31 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 22 Dec 2017 14:54:31 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:fcad8cfc11c78a53ccf9aafafcb3ded5044dbd181977e6255aea54fbe164f131`  
		Last Modified: Tue, 12 Dec 2017 18:49:05 GMT  
		Size: 20.3 MB (20331270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb3f7722e72f404b7e544c9a358cc7390f02c0b391a14ea7dbecd85dca7d195`  
		Last Modified: Wed, 13 Dec 2017 15:03:22 GMT  
		Size: 4.1 MB (4073192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c72eaa15e586a9eb8cbde84a24922fdabb2aa060ef64831fb867757ac6f83a`  
		Last Modified: Wed, 13 Dec 2017 15:03:21 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ebe8f28a8d2ed828ab5c0431545a097e3f46a3ac45e36976fde6daa9fb405d`  
		Last Modified: Wed, 13 Dec 2017 15:03:21 GMT  
		Size: 919.4 KB (919386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf8546d6f1127383410e3244beb4a3873b3305deab0f469ac13d1d0b112dee1`  
		Last Modified: Wed, 13 Dec 2017 15:03:19 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aabe4d57c4c33847b3343b87c3d4b7f0efe523535a70b98185a7237848d3780d`  
		Last Modified: Wed, 13 Dec 2017 15:03:23 GMT  
		Size: 24.8 MB (24762935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29da1f88f7abd4ac706158ed66c3edd95c77c626b118d1430d9d987863a8a126`  
		Last Modified: Fri, 22 Dec 2017 14:55:58 GMT  
		Size: 12.7 MB (12745013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d9eb1dcd2f690fa686a4c2c6917a9dac1f2b83e58f873c6fa1c629a5ea35f5`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4be7195e35d31a0b3d5223c2099f6fbede7f22121454696afa9a2cb4dadb95`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ff3a93de492dfc8fd837c437a30e6d9e1360bee1f8243c1f3e7fefd4b9e617`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844056b16c3b8fb059c428a9d4c451310e81bdb909d039ddf20b1ed76ed06e4a`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:735d3dd7df678c1257c4ae682480c3e6357b26e308b36d0de392350370c0888a`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9d9cd1604039d8dcc780ea5535ed5d2b43e754b4c8dbbc6464b87db615e420`  
		Last Modified: Fri, 22 Dec 2017 14:56:29 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5119a6a64cf5a4211958e3e08c26929c34993764376cc195584dbd3df977b78`  
		Last Modified: Fri, 22 Dec 2017 14:56:32 GMT  
		Size: 7.5 MB (7474716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.1-management` - linux; 386

```console
$ docker pull rabbitmq@sha256:88e98ae119769fd533d75b54562935cdfdc0a4ec8de069ac184c0f062ca989d1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.9 MB (76904819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3958ed01dd62112339c25c79d333d9c1b540139cdb90754a53c746e9af743f5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 14:36:09 GMT
ADD file:ef60a5257bf2b5766f692e39f5922bbd6161e45de184b7b138522d53a477c7af in / 
# Tue, 12 Dec 2017 14:36:09 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:14:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:14:35 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:14:36 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 21:14:51 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 21:14:52 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 12 Dec 2017 21:15:34 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:16:46 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 21:16:46 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 21:16:47 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 11:44:32 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 11:44:32 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 11:44:32 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 11:45:06 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 11:45:06 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 11:45:07 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 11:45:07 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 11:45:08 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 11:45:09 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 11:45:10 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 11:45:10 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 11:45:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 11:45:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 11:45:12 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 11:45:12 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Dec 2017 11:54:11 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Dec 2017 11:54:26 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 22 Dec 2017 11:54:27 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:4dbce982b05e209cf10a433462dc417f7816c47b0c1a151c8c93206b299b9a14`  
		Last Modified: Tue, 12 Dec 2017 15:03:13 GMT  
		Size: 23.1 MB (23122456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7c11e0bc622b0180ed093c8a4da0dc404613fc4331a2436a3669aa08c6e818`  
		Last Modified: Tue, 12 Dec 2017 21:33:10 GMT  
		Size: 4.8 MB (4803791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f7b212f68d587a5e50aa75b4635c7d49a9c744d221e091404cb2d1cf4327a1`  
		Last Modified: Tue, 12 Dec 2017 21:33:05 GMT  
		Size: 4.1 KB (4055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb0df0b481030711e1f4ccd5b60509dc4796c769e4d46ddf668819aba41c5d2`  
		Last Modified: Tue, 12 Dec 2017 21:33:05 GMT  
		Size: 931.6 KB (931574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e040f21d8962aea7005a7379e4852e408931ff4c1985b8debde30f1bcf14ca`  
		Last Modified: Tue, 12 Dec 2017 21:33:04 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5bbc5be701d46339ee9aa060f79d61ef2ea60c0a862dc9663bac7b97a8e169`  
		Last Modified: Tue, 12 Dec 2017 21:33:12 GMT  
		Size: 27.5 MB (27520131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dd9d2d069c706f3eb2155b3dabc19696c54dab8db1f74d481620e43b536063`  
		Last Modified: Fri, 22 Dec 2017 11:55:52 GMT  
		Size: 12.8 MB (12801444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d343d516c0b988f110df224a9f3ee502c2944e219fec1709fbcdef0a2d79fd19`  
		Last Modified: Fri, 22 Dec 2017 11:55:49 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c56b61dcb2f766abe51f40166e31dbba5e82d9061c43cf893618dacf6e843a`  
		Last Modified: Fri, 22 Dec 2017 11:55:50 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201b9543f2613c0e5a4e7b0ab82b519914eac5df575950c633193f2c8824d789`  
		Last Modified: Fri, 22 Dec 2017 11:55:49 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b6e713106094f76728ce4a7295830a2731aec1036997346ad433cd99ae0cc1`  
		Last Modified: Fri, 22 Dec 2017 11:55:49 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2ee59155be9f185db1c45800e79d5a35f93f7ff635ed223e35ed867144b11f`  
		Last Modified: Fri, 22 Dec 2017 11:55:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3bdc13600fe8a9973af1c8caf48e8546d07c220839f891ce8b46bf4a5f333c`  
		Last Modified: Fri, 22 Dec 2017 11:56:42 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629424091621dfe51b0db70d864cb38b33efd107c9a4010550f31c5681eba5d7`  
		Last Modified: Fri, 22 Dec 2017 11:56:44 GMT  
		Size: 7.7 MB (7713989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.1-management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:0e54d8ead0bc29cba2295dcb58a83ec697837b76d90a66857db8ae7663c8d644
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.6 MB (73633452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b54de25816f08e4b6129d18d6b378ffd5f3a1e8118da6f6cf60e1fd3f9b6efc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:41 GMT
ADD file:896602a6d015367badb26a7ac0bcafc9aa04cbba205925631d315874b6d289ab in / 
# Tue, 12 Dec 2017 01:35:42 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 08:12:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 08:12:31 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 08:12:32 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 08:14:14 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Dec 2017 08:14:18 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 13 Dec 2017 08:15:55 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 08:15:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 08:15:58 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 08:15:59 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 08:11:41 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 08:11:42 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 08:11:43 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 08:13:32 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 08:13:33 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 08:13:35 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 08:13:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 08:13:40 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 08:13:44 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 08:13:47 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 08:13:49 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 08:13:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 08:13:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 08:13:56 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 08:13:58 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Dec 2017 08:14:08 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Dec 2017 08:14:38 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 22 Dec 2017 08:14:39 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:b8b738bec437a97371af422179183d09cdb031f677b2dba4deaed774655ee9d8`  
		Last Modified: Tue, 12 Dec 2017 01:42:57 GMT  
		Size: 22.7 MB (22739713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074d2b018f7cf8971581f936aa1922718699254821ac925337d59075ff941e16`  
		Last Modified: Wed, 13 Dec 2017 08:25:16 GMT  
		Size: 4.4 MB (4360551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b59ed4bf511e4fbf8389c0a178fefb54388dd09f9fd41997517b5a18a77175`  
		Last Modified: Wed, 13 Dec 2017 08:25:12 GMT  
		Size: 4.1 KB (4108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd7fb01f62115b9286f1e6a7d47d0c323e3b09c6bd6d04e59fd6af3b2fd8704`  
		Last Modified: Wed, 13 Dec 2017 08:25:13 GMT  
		Size: 920.7 KB (920674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099a031f5f0df72a460e1d66fecbf4ebbbf062936d2d9a8474264bb64a6a9648`  
		Last Modified: Wed, 13 Dec 2017 08:25:11 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb365591fec586b108056a7461f34fbbecd7f579b59712c6a72e43c3f8a1ef2`  
		Last Modified: Wed, 13 Dec 2017 08:25:16 GMT  
		Size: 25.0 MB (25011533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71dec33419700d0f4ab4a2c6d04c32e0e811973a45d24dbb741f0e5c544626cd`  
		Last Modified: Fri, 22 Dec 2017 08:16:27 GMT  
		Size: 12.8 MB (12764207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87adf3e9f6eba9ab4607b32716f7215c55a2f806a03c2bccb9f8a257fc04a858`  
		Last Modified: Fri, 22 Dec 2017 08:16:23 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64119cdea63aa56eedbd3de89d9a94496cabe2b1240b80e04b8d4ff820192c7e`  
		Last Modified: Fri, 22 Dec 2017 08:16:22 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ad894a8943fd9b3886182a7ecd367c26e00d9dc7760423f84af98660baa32d`  
		Last Modified: Fri, 22 Dec 2017 08:16:23 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5642e99657653ea39a6ab4e3c63ff62e290143d100ce93a059c6119f4f3bce6`  
		Last Modified: Fri, 22 Dec 2017 08:16:23 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddec69e1fb6fe0e5c70e3e4e7998629d0e99560968d92265991602aa9cc82bbd`  
		Last Modified: Fri, 22 Dec 2017 08:16:22 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3f4ea9e63a2c8b47b2305022404e0e900ee894f6a31367c19c3a56dd271883`  
		Last Modified: Fri, 22 Dec 2017 08:16:49 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2195618c7a990523cf1761b4df3cdfeecdc2fb4ef7e1a0ba32d79107bd984cb`  
		Last Modified: Fri, 22 Dec 2017 08:16:51 GMT  
		Size: 7.8 MB (7825287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7.1-management-alpine`

```console
$ docker pull rabbitmq@sha256:50dfa18ae47e7234fcfa3a9c5b8dc26db9a4d8bfd93e830a0a78a46e3fe5fe58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `rabbitmq:3.7.1-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:53040193335019b805a2d534fc25c9a672f86c91324fa00fc17d6155c6398a65
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43801800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5d4145261981d5d04f33c5edd2cb940e10e55e2ad653d9869e8347df738c690`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 12 Dec 2017 21:41:43 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:41:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 12 Dec 2017 21:42:01 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 12 Dec 2017 21:42:01 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 21:42:01 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 12 Dec 2017 21:42:01 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 21:42:01 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 21 Dec 2017 21:45:57 GMT
ENV RABBITMQ_VERSION=3.7.1
# Thu, 21 Dec 2017 21:45:58 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Thu, 21 Dec 2017 21:46:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 21 Dec 2017 21:46:15 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 21 Dec 2017 21:46:16 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Thu, 21 Dec 2017 21:46:16 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 21 Dec 2017 21:46:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 21 Dec 2017 21:46:25 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 21 Dec 2017 21:46:33 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Thu, 21 Dec 2017 21:46:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Dec 2017 21:46:34 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 21 Dec 2017 21:46:34 GMT
CMD ["rabbitmq-server"]
# Thu, 21 Dec 2017 21:47:01 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 21 Dec 2017 21:47:06 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 21 Dec 2017 21:47:07 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c1a6072a0178dab7d654b6acba25999111f65220e215aa17469c267102d277`  
		Last Modified: Tue, 12 Dec 2017 21:44:03 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f1d7e091ce75ff0605b46c770dec934cddd5a7e0b02f3b6cd023f521c80eb7`  
		Last Modified: Tue, 12 Dec 2017 21:44:04 GMT  
		Size: 8.6 KB (8553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6292a4d2dfb8b5360d5c00c398460db176d6568cf938970df741532ace92088a`  
		Last Modified: Tue, 12 Dec 2017 21:44:05 GMT  
		Size: 18.7 MB (18652435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b089414b5bab92d9738a7b587335f2b46589ea337410fed306be2fec97e646`  
		Last Modified: Thu, 21 Dec 2017 21:49:39 GMT  
		Size: 12.0 MB (12045410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87bc86ebf4d9b7ae0a431b32c1e1a0dfc05bb511b6234394497aa98be30d5399`  
		Last Modified: Thu, 21 Dec 2017 21:49:33 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f15622b0a3adfbad46d71a2ab9bd1d219ec7d660e9a85f2bb792aa35450edf`  
		Last Modified: Thu, 21 Dec 2017 21:49:33 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52177a7021e2926921f06bed2402140367b9489638881c3c7cebf90a6327593a`  
		Last Modified: Thu, 21 Dec 2017 21:49:33 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1936b63aa170cce9d350b68a0686ca5932bbf55bfac91f0d590daa3e9a8478f`  
		Last Modified: Thu, 21 Dec 2017 21:49:33 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a137ebd01df39e6c42974144762af74acae18d9eafcfcf912e2bd33a8c5b237`  
		Last Modified: Thu, 21 Dec 2017 21:50:40 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e4e957d266b9097a73021b7339bdcda9771696b0a8c355f9deeea61d0a9692`  
		Last Modified: Thu, 21 Dec 2017 21:50:42 GMT  
		Size: 11.0 MB (11024384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.1-management-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:4d8f93281df060d74f775a02397d0d9752fe4170baf585225bdcaf45dc016919
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41282276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9a41fe49ecaf4e0f8ddeb90a12c763383c0e71c1696b2de15964a86ec80c3c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Tue, 12 Dec 2017 22:29:28 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 12 Dec 2017 22:29:31 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 12 Dec 2017 22:29:49 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 12 Dec 2017 22:29:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 22:29:49 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 12 Dec 2017 22:29:50 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 22:29:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 21 Dec 2017 22:29:25 GMT
ENV RABBITMQ_VERSION=3.7.1
# Thu, 21 Dec 2017 22:29:25 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 22:29:37 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 22 Dec 2017 22:29:37 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 22:29:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Fri, 22 Dec 2017 22:29:38 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 22:29:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 22:29:40 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 22 Dec 2017 22:29:40 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Fri, 22 Dec 2017 22:29:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 22:29:40 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 22:29:40 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Dec 2017 22:29:55 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Dec 2017 22:30:02 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Fri, 22 Dec 2017 22:30:03 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9f4ef04f158d5563eb96ea67bbbd10533494056e819df3e002e09e93aad6dd`  
		Last Modified: Wed, 13 Dec 2017 02:05:18 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a83132a783f9ca240cda4cc4331243e673e7b212ee99470582aa35be2d61e6`  
		Last Modified: Wed, 13 Dec 2017 02:05:17 GMT  
		Size: 8.7 KB (8715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6669a7b0dc467da6f3e91bc37fc1992f9c5ac9397f55634c4d2ff713d09bd334`  
		Last Modified: Wed, 13 Dec 2017 02:05:21 GMT  
		Size: 16.3 MB (16268883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbc7168607343956af7dcaa96f58499d5e4759673b5945ced9c1b6cfbb72ae62`  
		Last Modified: Fri, 22 Dec 2017 22:30:19 GMT  
		Size: 12.0 MB (12038626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c93de07707d93fe0b3b02ca6f44a4f13994bf0ce39784855235a14c9d340eca`  
		Last Modified: Fri, 22 Dec 2017 22:30:17 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e36da3412f0fad2e5cca99cb191b0b30b749a2261488a70a9f1fd320af50396`  
		Last Modified: Fri, 22 Dec 2017 22:30:17 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114b60bece05a2b6be5d2bca34f760f42da64d3264d79535289c246622b63534`  
		Last Modified: Fri, 22 Dec 2017 22:30:17 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:443fa80972c987c6a56c669cbc97108c0a963332f2bea147319de0d81746cb9f`  
		Last Modified: Fri, 22 Dec 2017 22:30:17 GMT  
		Size: 4.2 KB (4178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622b850b7857086b0ac66f87405afbadf920a15d924692b46648bba2e1569864`  
		Last Modified: Fri, 22 Dec 2017 22:30:31 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd151d36970f7a43f4552e088fa13b0e518a6d05c2c91ae3c2d369f96843013a`  
		Last Modified: Fri, 22 Dec 2017 22:30:35 GMT  
		Size: 10.9 MB (10921401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.1-management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:92b706583d3f40dad2a1ba75ae7250ae1fe3f34eea116c10ab5da59b9fa4aab2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41189248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cdca9eb21f1d8ab16471a9c1be9d94023425e7758e64b9ec6e095f91f9b576c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 13 Dec 2017 14:57:23 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:57:26 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Dec 2017 14:57:46 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 13 Dec 2017 14:57:47 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 14:57:48 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 13 Dec 2017 14:57:48 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 14:57:49 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 14:54:44 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 14:54:44 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 14:54:57 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 22 Dec 2017 14:54:58 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 14:54:59 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Fri, 22 Dec 2017 14:55:00 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 14:55:01 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 14:55:03 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 22 Dec 2017 14:55:03 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Fri, 22 Dec 2017 14:55:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 14:55:05 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 14:55:05 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Dec 2017 14:55:19 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Dec 2017 14:55:27 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Fri, 22 Dec 2017 14:55:28 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8c4ed88f638b23b4b44a51af5828b7ca6cf492e10d10b6517f03b2dc5f9c6a`  
		Last Modified: Wed, 13 Dec 2017 15:05:55 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec871b8e16217284a5c9467fc885f9330b7cf594b88a9d251f442a31f9b11982`  
		Last Modified: Wed, 13 Dec 2017 15:05:55 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc676aee1200891fd5416055f87903087826e98535cbd81dcb50768900244552`  
		Last Modified: Wed, 13 Dec 2017 15:06:00 GMT  
		Size: 16.3 MB (16252090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213f96c29a6fa093c23a462408772468af6b41603f9f804f69b2206fbc84a25b`  
		Last Modified: Fri, 22 Dec 2017 14:57:06 GMT  
		Size: 12.0 MB (12038502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:188e7efaae29b7712cb6dd21ddca9143c50d4faab9a53473748029b7ae539a7e`  
		Last Modified: Fri, 22 Dec 2017 14:57:04 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5cebb19a31ee23a6b53957154c787ba8dc91c115322e1dbeac1e44df505f79`  
		Last Modified: Fri, 22 Dec 2017 14:57:04 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed879368aff199bfcb6dbf7869c598a9b650f7cbcbce982d9bd073a9e0104e4`  
		Last Modified: Fri, 22 Dec 2017 14:57:04 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1884d950d65ccb72b718cc0c4453e7f9a25cc4008a45bd77597d751fcd3f59a`  
		Last Modified: Fri, 22 Dec 2017 14:57:04 GMT  
		Size: 4.2 KB (4175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa300c974cdf778165d2248f3bb300a6095ca06009ac726b527c71f85c0abe01`  
		Last Modified: Fri, 22 Dec 2017 14:57:35 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2dcd19b2956b3b5eb5bbc9b69540d8d2a21161ea0b950f98c8bf0a20c6975f`  
		Last Modified: Fri, 22 Dec 2017 14:57:40 GMT  
		Size: 10.9 MB (10894869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.1-management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:bc3b4e4152411de1faf12118a7b85ffa76a91eeee728c097c98708a7cd29c34c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.7 MB (41660880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a7e442679bddcb156a6da296ae501b99b11c330edeeaa4f2d336903b36a93cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 13 Dec 2017 08:18:08 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 13 Dec 2017 08:18:13 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Dec 2017 08:18:35 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 13 Dec 2017 08:18:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 08:18:38 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 13 Dec 2017 08:18:40 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 08:18:41 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 08:14:54 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 08:14:55 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 08:15:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 22 Dec 2017 08:15:24 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 08:15:27 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Fri, 22 Dec 2017 08:15:28 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 08:15:31 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 08:15:34 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 22 Dec 2017 08:15:35 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Fri, 22 Dec 2017 08:15:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 08:15:38 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 08:15:39 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Dec 2017 08:15:51 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Dec 2017 08:16:02 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Fri, 22 Dec 2017 08:16:04 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d1ed2187942e6103764c1aafdbb8a07c8ca518010057fe8241ae1785036c34`  
		Last Modified: Wed, 13 Dec 2017 08:26:26 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0edcdde4e4bb24d232fb81eb66c47fcc0d25af42f3b5d6d228547cd01c4eee4c`  
		Last Modified: Wed, 13 Dec 2017 08:26:25 GMT  
		Size: 9.3 KB (9261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d586348c018beacd8f060a315dc7b4d506f2132378b683c3fead6f9fa7766efe`  
		Last Modified: Wed, 13 Dec 2017 08:26:29 GMT  
		Size: 16.5 MB (16456345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f912d1158398651caa084a6fc2d7867e682d13a606000c7f834aabd9fc55ea7c`  
		Last Modified: Fri, 22 Dec 2017 08:17:19 GMT  
		Size: 12.0 MB (12039764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be8debed377719ffd4adbc441a7d0af6f08d1ea3a7dbd59e2eac00c471f330a`  
		Last Modified: Fri, 22 Dec 2017 08:17:17 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3171c2bce1c3835b9cf7eec85925c0774dd95c161dd320f3feabc6f46f325f06`  
		Last Modified: Fri, 22 Dec 2017 08:17:17 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70aa8e2fc70384bc3c37708f5f60b3b02b42d9e97999ef353df020ef15e5221a`  
		Last Modified: Fri, 22 Dec 2017 08:17:17 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7612e5863338a37568134bf4db9b2f2f61dabad4e5c6bfef2cf0b8b9ca3c0b34`  
		Last Modified: Fri, 22 Dec 2017 08:17:17 GMT  
		Size: 4.2 KB (4180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc16c0245aa6f07b26912f7e06eecb0187125695a8b2168edcfcadad80301f41`  
		Last Modified: Fri, 22 Dec 2017 08:17:40 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c2844f72c115967e7591ee3543ff7d0f7faad4b8a68275802446a6445149d6`  
		Last Modified: Fri, 22 Dec 2017 08:17:43 GMT  
		Size: 11.1 MB (11067678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7-alpine`

```console
$ docker pull rabbitmq@sha256:a4f6620edb796c70aa5de9ff8c24927b6ba5a8187232c4d50459c713b8e11e85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `rabbitmq:3.7-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:90b06e2750b258e843e868556f3bc5ad7c89512753862c6269687efae0b3fe80
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32777224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b2875253f220da0c7e8fb76a6e3ec7c07990a564e5fb26d2829980ea39f5cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 12 Dec 2017 21:41:43 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:41:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 12 Dec 2017 21:42:01 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 12 Dec 2017 21:42:01 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 21:42:01 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 12 Dec 2017 21:42:01 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 21:42:01 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 21 Dec 2017 21:45:57 GMT
ENV RABBITMQ_VERSION=3.7.1
# Thu, 21 Dec 2017 21:45:58 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Thu, 21 Dec 2017 21:46:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 21 Dec 2017 21:46:15 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 21 Dec 2017 21:46:16 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Thu, 21 Dec 2017 21:46:16 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 21 Dec 2017 21:46:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 21 Dec 2017 21:46:25 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 21 Dec 2017 21:46:33 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Thu, 21 Dec 2017 21:46:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Dec 2017 21:46:34 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 21 Dec 2017 21:46:34 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c1a6072a0178dab7d654b6acba25999111f65220e215aa17469c267102d277`  
		Last Modified: Tue, 12 Dec 2017 21:44:03 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f1d7e091ce75ff0605b46c770dec934cddd5a7e0b02f3b6cd023f521c80eb7`  
		Last Modified: Tue, 12 Dec 2017 21:44:04 GMT  
		Size: 8.6 KB (8553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6292a4d2dfb8b5360d5c00c398460db176d6568cf938970df741532ace92088a`  
		Last Modified: Tue, 12 Dec 2017 21:44:05 GMT  
		Size: 18.7 MB (18652435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b089414b5bab92d9738a7b587335f2b46589ea337410fed306be2fec97e646`  
		Last Modified: Thu, 21 Dec 2017 21:49:39 GMT  
		Size: 12.0 MB (12045410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87bc86ebf4d9b7ae0a431b32c1e1a0dfc05bb511b6234394497aa98be30d5399`  
		Last Modified: Thu, 21 Dec 2017 21:49:33 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f15622b0a3adfbad46d71a2ab9bd1d219ec7d660e9a85f2bb792aa35450edf`  
		Last Modified: Thu, 21 Dec 2017 21:49:33 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52177a7021e2926921f06bed2402140367b9489638881c3c7cebf90a6327593a`  
		Last Modified: Thu, 21 Dec 2017 21:49:33 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1936b63aa170cce9d350b68a0686ca5932bbf55bfac91f0d590daa3e9a8478f`  
		Last Modified: Thu, 21 Dec 2017 21:49:33 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:128fd63c14bde04b9c4a2e276cdaa9dea6235a60eeefdfad4aa951066c9d8e70
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30360684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dde6965f1b9384437a32beb1d01a4719f8a7c486f4540f12366bb8fde75eb6f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Tue, 12 Dec 2017 22:29:28 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 12 Dec 2017 22:29:31 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 12 Dec 2017 22:29:49 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 12 Dec 2017 22:29:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 22:29:49 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 12 Dec 2017 22:29:50 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 22:29:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 21 Dec 2017 22:29:25 GMT
ENV RABBITMQ_VERSION=3.7.1
# Thu, 21 Dec 2017 22:29:25 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 22:29:37 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 22 Dec 2017 22:29:37 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 22:29:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Fri, 22 Dec 2017 22:29:38 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 22:29:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 22:29:40 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 22 Dec 2017 22:29:40 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Fri, 22 Dec 2017 22:29:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 22:29:40 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 22:29:40 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9f4ef04f158d5563eb96ea67bbbd10533494056e819df3e002e09e93aad6dd`  
		Last Modified: Wed, 13 Dec 2017 02:05:18 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a83132a783f9ca240cda4cc4331243e673e7b212ee99470582aa35be2d61e6`  
		Last Modified: Wed, 13 Dec 2017 02:05:17 GMT  
		Size: 8.7 KB (8715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6669a7b0dc467da6f3e91bc37fc1992f9c5ac9397f55634c4d2ff713d09bd334`  
		Last Modified: Wed, 13 Dec 2017 02:05:21 GMT  
		Size: 16.3 MB (16268883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbc7168607343956af7dcaa96f58499d5e4759673b5945ced9c1b6cfbb72ae62`  
		Last Modified: Fri, 22 Dec 2017 22:30:19 GMT  
		Size: 12.0 MB (12038626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c93de07707d93fe0b3b02ca6f44a4f13994bf0ce39784855235a14c9d340eca`  
		Last Modified: Fri, 22 Dec 2017 22:30:17 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e36da3412f0fad2e5cca99cb191b0b30b749a2261488a70a9f1fd320af50396`  
		Last Modified: Fri, 22 Dec 2017 22:30:17 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114b60bece05a2b6be5d2bca34f760f42da64d3264d79535289c246622b63534`  
		Last Modified: Fri, 22 Dec 2017 22:30:17 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:443fa80972c987c6a56c669cbc97108c0a963332f2bea147319de0d81746cb9f`  
		Last Modified: Fri, 22 Dec 2017 22:30:17 GMT  
		Size: 4.2 KB (4178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:307c2d68eb4ef049d32316e42ab711821efb9c25451068755768fe5654e6c603
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30294188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a3c12b7295c0adc9c57fd587d22b2d77086ab0e01c4ce4c37a862553b802e33`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 13 Dec 2017 14:57:23 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:57:26 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Dec 2017 14:57:46 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 13 Dec 2017 14:57:47 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 14:57:48 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 13 Dec 2017 14:57:48 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 14:57:49 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 14:54:44 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 14:54:44 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 14:54:57 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 22 Dec 2017 14:54:58 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 14:54:59 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Fri, 22 Dec 2017 14:55:00 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 14:55:01 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 14:55:03 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 22 Dec 2017 14:55:03 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Fri, 22 Dec 2017 14:55:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 14:55:05 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 14:55:05 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8c4ed88f638b23b4b44a51af5828b7ca6cf492e10d10b6517f03b2dc5f9c6a`  
		Last Modified: Wed, 13 Dec 2017 15:05:55 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec871b8e16217284a5c9467fc885f9330b7cf594b88a9d251f442a31f9b11982`  
		Last Modified: Wed, 13 Dec 2017 15:05:55 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc676aee1200891fd5416055f87903087826e98535cbd81dcb50768900244552`  
		Last Modified: Wed, 13 Dec 2017 15:06:00 GMT  
		Size: 16.3 MB (16252090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213f96c29a6fa093c23a462408772468af6b41603f9f804f69b2206fbc84a25b`  
		Last Modified: Fri, 22 Dec 2017 14:57:06 GMT  
		Size: 12.0 MB (12038502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:188e7efaae29b7712cb6dd21ddca9143c50d4faab9a53473748029b7ae539a7e`  
		Last Modified: Fri, 22 Dec 2017 14:57:04 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5cebb19a31ee23a6b53957154c787ba8dc91c115322e1dbeac1e44df505f79`  
		Last Modified: Fri, 22 Dec 2017 14:57:04 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed879368aff199bfcb6dbf7869c598a9b650f7cbcbce982d9bd073a9e0104e4`  
		Last Modified: Fri, 22 Dec 2017 14:57:04 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1884d950d65ccb72b718cc0c4453e7f9a25cc4008a45bd77597d751fcd3f59a`  
		Last Modified: Fri, 22 Dec 2017 14:57:04 GMT  
		Size: 4.2 KB (4175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:bc067e03ffe888475cce161bb9e1677ae0e6b7a4259083c6afbc2c8bbb356a08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30593007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9ddb77aa01e33ad43deed7be54170f6a226814a23ab9a118baf5370ebfa1218`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 13 Dec 2017 08:18:08 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 13 Dec 2017 08:18:13 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Dec 2017 08:18:35 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 13 Dec 2017 08:18:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 08:18:38 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 13 Dec 2017 08:18:40 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 08:18:41 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 08:14:54 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 08:14:55 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 08:15:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 22 Dec 2017 08:15:24 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 08:15:27 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Fri, 22 Dec 2017 08:15:28 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 08:15:31 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 08:15:34 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 22 Dec 2017 08:15:35 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Fri, 22 Dec 2017 08:15:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 08:15:38 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 08:15:39 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d1ed2187942e6103764c1aafdbb8a07c8ca518010057fe8241ae1785036c34`  
		Last Modified: Wed, 13 Dec 2017 08:26:26 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0edcdde4e4bb24d232fb81eb66c47fcc0d25af42f3b5d6d228547cd01c4eee4c`  
		Last Modified: Wed, 13 Dec 2017 08:26:25 GMT  
		Size: 9.3 KB (9261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d586348c018beacd8f060a315dc7b4d506f2132378b683c3fead6f9fa7766efe`  
		Last Modified: Wed, 13 Dec 2017 08:26:29 GMT  
		Size: 16.5 MB (16456345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f912d1158398651caa084a6fc2d7867e682d13a606000c7f834aabd9fc55ea7c`  
		Last Modified: Fri, 22 Dec 2017 08:17:19 GMT  
		Size: 12.0 MB (12039764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be8debed377719ffd4adbc441a7d0af6f08d1ea3a7dbd59e2eac00c471f330a`  
		Last Modified: Fri, 22 Dec 2017 08:17:17 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3171c2bce1c3835b9cf7eec85925c0774dd95c161dd320f3feabc6f46f325f06`  
		Last Modified: Fri, 22 Dec 2017 08:17:17 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70aa8e2fc70384bc3c37708f5f60b3b02b42d9e97999ef353df020ef15e5221a`  
		Last Modified: Fri, 22 Dec 2017 08:17:17 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7612e5863338a37568134bf4db9b2f2f61dabad4e5c6bfef2cf0b8b9ca3c0b34`  
		Last Modified: Fri, 22 Dec 2017 08:17:17 GMT  
		Size: 4.2 KB (4180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7-management`

```console
$ docker pull rabbitmq@sha256:6b6be1f8a4d57befac70e53ae6391effadde140993b8c20d16d5aa9a1690dff1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `rabbitmq:3.7-management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:ce7b330e653a03f34845cfeb2048ee51db81c095dba50770f1485221624ec454
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.7 MB (75682058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3c1af531bfa286b607e0e9d0bd6637d0c8c12b399dadb387e487096a118974a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:40:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:40:50 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:40:50 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 23:25:20 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 23:25:21 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 12 Dec 2017 23:25:37 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:25:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 23:25:38 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 23:25:38 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 21 Dec 2017 21:43:52 GMT
ENV RABBITMQ_VERSION=3.7.1
# Thu, 21 Dec 2017 21:43:52 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Thu, 21 Dec 2017 21:43:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Thu, 21 Dec 2017 21:44:19 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 21:44:19 GMT
ENV LANG=C.UTF-8
# Thu, 21 Dec 2017 21:44:19 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 21 Dec 2017 21:44:20 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 21 Dec 2017 21:44:28 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 21 Dec 2017 21:44:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 21 Dec 2017 21:44:37 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 21 Dec 2017 21:44:38 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Thu, 21 Dec 2017 21:44:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 21 Dec 2017 21:44:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Dec 2017 21:44:47 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 21 Dec 2017 21:44:47 GMT
CMD ["rabbitmq-server"]
# Thu, 21 Dec 2017 21:45:24 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 21 Dec 2017 21:45:39 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Thu, 21 Dec 2017 21:45:40 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad90649c4d840febdaefa1afaad7ef8bbf2e0087ba1d11a95968afce0503f342`  
		Last Modified: Tue, 12 Dec 2017 21:45:30 GMT  
		Size: 4.5 MB (4498351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a318b914d6cead2434cc74ee74c48511ad6ec06a38ab190157246497f44afb1`  
		Last Modified: Tue, 12 Dec 2017 21:45:28 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cedd60f70052462179e86a0439f5fb3fa7b40f41dc55be9152bd147181481594`  
		Last Modified: Tue, 12 Dec 2017 23:26:36 GMT  
		Size: 951.9 KB (951937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ec28761801c452cb366afa1cbb7946bada161eb77899d9ca9a59a219e9ff42`  
		Last Modified: Tue, 12 Dec 2017 23:26:35 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fa44aa9074bb2e24649ebe2dae2f852f9443a052fd9cdfd4d11bcd86d967f7`  
		Last Modified: Tue, 12 Dec 2017 23:26:38 GMT  
		Size: 27.3 MB (27330555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf3e1e07c991ce96a21e3642cb8dbb20ef673739bb6f4d8b850380b2572f106`  
		Last Modified: Thu, 21 Dec 2017 21:47:31 GMT  
		Size: 12.8 MB (12781820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3ef1cea93bbcaa3a76d6c6e253976b8440ad24969e0ba907e173742c6ff50a`  
		Last Modified: Thu, 21 Dec 2017 21:47:26 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5ab9c082d6d13b0bb80318aa78027016a9d5673b8a552f065eeca6674c15e0`  
		Last Modified: Thu, 21 Dec 2017 21:47:28 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607d775f273a65211519680d67816f79ac0aa561a7ad364fac03c097c063fffd`  
		Last Modified: Thu, 21 Dec 2017 21:47:26 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1b766cfd2d4024d5591163073df0750727ccb125db1eeb9a92e9f364ed081d`  
		Last Modified: Thu, 21 Dec 2017 21:47:26 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca5c4856b55a852a371ef4afdddb1d16d94afe44c88221e14d84d8fdd6070df`  
		Last Modified: Thu, 21 Dec 2017 21:47:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d24bb85705e9e92239e95be1af2ef6bc9965cf09fb05e6f30a4de1d3aad4e214`  
		Last Modified: Thu, 21 Dec 2017 21:48:31 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffc927f7905fbf60fc741f2b666857c6bc7041d7c12430b915c787fb7a95d78`  
		Last Modified: Thu, 21 Dec 2017 21:48:36 GMT  
		Size: 7.6 MB (7622231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:ffb97a38b0a4fd039b1248ddcfa295fccacc54abdafec1bbf2bc29673b2aea87
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.4 MB (71406814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9606fe70b34d9a161737c5b82040ed0c75238e6fdc8a97629a22c498792cdf07`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 21:02:20 GMT
ADD file:f69e5781e9ff2a9867d94175d91d31553e07613bf4b50a1064274ed21a5ed353 in / 
# Tue, 12 Dec 2017 21:02:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 23:14:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:14:46 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 23:14:46 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 23:15:03 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 23:15:05 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 12 Dec 2017 23:15:44 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:15:45 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 23:15:45 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 23:15:46 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 15:14:24 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 15:14:24 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 15:14:24 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 15:14:59 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 15:15:00 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 15:15:00 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 15:15:01 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 15:15:01 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 15:15:02 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 15:15:03 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 15:15:03 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 15:15:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 15:15:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 15:15:05 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 15:15:05 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Dec 2017 15:15:16 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Dec 2017 15:15:35 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 22 Dec 2017 15:15:36 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:20f319b2549a8d631c2e8034bfc3f9c12042d86a686470a8addd2fb7bc8c688c`  
		Last Modified: Tue, 12 Dec 2017 21:12:53 GMT  
		Size: 21.2 MB (21160630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608d8fd7a6001a09dff4cc76414aa4711207466847dfa91271aa6dd09becdd6a`  
		Last Modified: Tue, 12 Dec 2017 23:21:52 GMT  
		Size: 4.2 MB (4231488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d214c26ea8bd4ea1468f2b7c9806f8f3cde7cd6c2f09660325ea38b81dcb9c13`  
		Last Modified: Tue, 12 Dec 2017 23:21:50 GMT  
		Size: 4.1 KB (4082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9640468e3e315e94fa5dfdb6b79a97eb7f83beebca51e85a68ab3ef6a4b13106`  
		Last Modified: Tue, 12 Dec 2017 23:21:51 GMT  
		Size: 942.4 KB (942449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce50058b2ae9912872489ab639895bd412cd17a9a299fe4e208704d0ef03dd1f`  
		Last Modified: Tue, 12 Dec 2017 23:21:50 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de8bff935da4e19ec18fec56ba68c2cf72e41a4ad936934d6927c22d50d69dab`  
		Last Modified: Tue, 12 Dec 2017 23:21:56 GMT  
		Size: 24.8 MB (24837409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e7f60fa5b5600f52ceb2a5f847f939fe4fd9c88497a4af04f1a9e56a3a0226`  
		Last Modified: Fri, 22 Dec 2017 15:15:56 GMT  
		Size: 12.8 MB (12751160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1d9062191080161364b2f92fb7b1bc2983ebc261432e26e2bc529d2025a00f`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2b1a936349f6aef924d33f3b3246245ff7e15ae50f93604d15e363cf2060b9`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730970b7986ad9f4e2039724474364f61070660fb564efdf61ce67e5141ac8c9`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207f615d05708cbe302cf9382a9c2b2dc41910c9cf69dc913d7c5c02870c6138`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3005d65e7f419893d506d416f107fd2d6e82fa13eb5c86f95da855ba0dae6683`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081ff403ae0e159713237cec2151bc7947ae5eb26ec78c5fdccb58fa991c0906`  
		Last Modified: Fri, 22 Dec 2017 15:16:11 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1c8daba1791e89d5cfd91acbd604ef8ab72dc642a30aecbd876eb96bbb4dc8`  
		Last Modified: Fri, 22 Dec 2017 15:16:15 GMT  
		Size: 7.5 MB (7472214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:5f8ae6369dc47a4350d6cce1828130cf56d2eade2c5c97fb77337285d5f00338
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.5 MB (68523704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cbac589adc82218f6e8c865d22901877e8dbce390002f44c280ff78cb956edd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 13:33:42 GMT
ADD file:cfde12259adb7102e76690e986f1b9b07967a8984c85d0cead09969f5de8b8cc in / 
# Tue, 12 Dec 2017 13:33:42 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:07:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:07:51 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:07:52 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 14:08:30 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Dec 2017 14:08:31 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 13 Dec 2017 14:09:04 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:09:05 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 14:09:05 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 14:09:05 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 14:07:26 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 14:07:27 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 14:07:27 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 14:07:56 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 14:07:56 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 14:07:56 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 14:07:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 14:07:57 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 14:07:58 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 14:07:59 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 14:08:00 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 14:08:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 14:08:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 14:08:01 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 14:08:02 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Dec 2017 14:08:12 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Dec 2017 14:08:26 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 22 Dec 2017 14:08:26 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:cd8b673adb84fd5eae3444d0475addad7e8908a8332704c4407baa97e9b0b284`  
		Last Modified: Tue, 12 Dec 2017 13:45:48 GMT  
		Size: 19.3 MB (19271028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681dc17295c86c86ee974da339cea0f010f6f5780ffd3b6fd3fa6b2a3d124fdd`  
		Last Modified: Wed, 13 Dec 2017 14:13:29 GMT  
		Size: 3.9 MB (3868482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03995e4857910fd538adfc3a896164f12117829662b917fd93835e24ec792b07`  
		Last Modified: Wed, 13 Dec 2017 14:13:28 GMT  
		Size: 4.1 KB (4083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7dd231e7e929346f4a5183b1f2df19bd46ef0f6ea9b79077593abd76f02737`  
		Last Modified: Wed, 13 Dec 2017 14:13:27 GMT  
		Size: 926.2 KB (926167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a6235a7077293b77a5763b50aeb4468250c3243e9a414e68ade282ba5457045`  
		Last Modified: Wed, 13 Dec 2017 14:13:27 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de253191eb0702e608f45381e5cf3de24ea4a760bc740b04a51e8bd4f577b6c7`  
		Last Modified: Wed, 13 Dec 2017 14:13:32 GMT  
		Size: 24.5 MB (24541142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b25fd4ba6b057fcbdbc2eec693d0f5c4df5a0459298926d4ad5302470e210de`  
		Last Modified: Fri, 22 Dec 2017 14:08:44 GMT  
		Size: 12.7 MB (12722767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c51fcc7b5312d66fe5f92da771aabe0349c6b3ad5d89d2d84858838fe16f4dc4`  
		Last Modified: Fri, 22 Dec 2017 14:08:42 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a588b73dbd75765122fbcfce25f9fc9c7cf5b6a37369df109328c081651975`  
		Last Modified: Fri, 22 Dec 2017 14:08:42 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78eddee1ed060160ee996266461b5bc661be8de27a56b8710f605999fce94a55`  
		Last Modified: Fri, 22 Dec 2017 14:08:42 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0979543707ff6994fd7f35ad5fda8fe9232cb2eb73d09e0a740a9585f4eaefe`  
		Last Modified: Fri, 22 Dec 2017 14:08:42 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f9032304b59cc4b820894fba66c025f4d2617438299f19d22ce540ff0bbf2c`  
		Last Modified: Fri, 22 Dec 2017 14:08:41 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560fb52b7a723a78d283679e1522845627c3982baf9075e153ff9caba4a2c6e4`  
		Last Modified: Fri, 22 Dec 2017 14:09:00 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98661b6f7d96fce4607e860bf2b231817b8af795c3b3880b0d4afb748be1a030`  
		Last Modified: Fri, 22 Dec 2017 14:09:03 GMT  
		Size: 7.2 MB (7182658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:34c06758df278ad0d45b251865ec113771e4c4f6160a6893260436f47a90d07a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.3 MB (70317966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:642b44151b1518e53dd9401a2969cfc02e854e5a21706a750e628e00580a20b9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 18:34:13 GMT
ADD file:6e068c7cc5397bfb4ec60dab4d410c5d3ba724f20ad0129d2032fb509f0eadcd in / 
# Tue, 12 Dec 2017 18:34:14 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:53:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:53:52 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:53:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 14:54:26 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Dec 2017 14:54:27 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 13 Dec 2017 14:55:29 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:55:29 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 14:55:30 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 14:55:31 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 14:52:43 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 14:52:44 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 14:52:44 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 14:53:42 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 14:53:43 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 14:53:43 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 14:53:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 14:53:45 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 14:53:47 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 14:53:48 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 14:53:49 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 14:53:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 14:53:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 14:53:52 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 14:53:54 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Dec 2017 14:54:06 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Dec 2017 14:54:31 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 22 Dec 2017 14:54:31 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:fcad8cfc11c78a53ccf9aafafcb3ded5044dbd181977e6255aea54fbe164f131`  
		Last Modified: Tue, 12 Dec 2017 18:49:05 GMT  
		Size: 20.3 MB (20331270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb3f7722e72f404b7e544c9a358cc7390f02c0b391a14ea7dbecd85dca7d195`  
		Last Modified: Wed, 13 Dec 2017 15:03:22 GMT  
		Size: 4.1 MB (4073192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c72eaa15e586a9eb8cbde84a24922fdabb2aa060ef64831fb867757ac6f83a`  
		Last Modified: Wed, 13 Dec 2017 15:03:21 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ebe8f28a8d2ed828ab5c0431545a097e3f46a3ac45e36976fde6daa9fb405d`  
		Last Modified: Wed, 13 Dec 2017 15:03:21 GMT  
		Size: 919.4 KB (919386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf8546d6f1127383410e3244beb4a3873b3305deab0f469ac13d1d0b112dee1`  
		Last Modified: Wed, 13 Dec 2017 15:03:19 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aabe4d57c4c33847b3343b87c3d4b7f0efe523535a70b98185a7237848d3780d`  
		Last Modified: Wed, 13 Dec 2017 15:03:23 GMT  
		Size: 24.8 MB (24762935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29da1f88f7abd4ac706158ed66c3edd95c77c626b118d1430d9d987863a8a126`  
		Last Modified: Fri, 22 Dec 2017 14:55:58 GMT  
		Size: 12.7 MB (12745013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d9eb1dcd2f690fa686a4c2c6917a9dac1f2b83e58f873c6fa1c629a5ea35f5`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4be7195e35d31a0b3d5223c2099f6fbede7f22121454696afa9a2cb4dadb95`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ff3a93de492dfc8fd837c437a30e6d9e1360bee1f8243c1f3e7fefd4b9e617`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844056b16c3b8fb059c428a9d4c451310e81bdb909d039ddf20b1ed76ed06e4a`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:735d3dd7df678c1257c4ae682480c3e6357b26e308b36d0de392350370c0888a`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9d9cd1604039d8dcc780ea5535ed5d2b43e754b4c8dbbc6464b87db615e420`  
		Last Modified: Fri, 22 Dec 2017 14:56:29 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5119a6a64cf5a4211958e3e08c26929c34993764376cc195584dbd3df977b78`  
		Last Modified: Fri, 22 Dec 2017 14:56:32 GMT  
		Size: 7.5 MB (7474716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-management` - linux; 386

```console
$ docker pull rabbitmq@sha256:88e98ae119769fd533d75b54562935cdfdc0a4ec8de069ac184c0f062ca989d1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.9 MB (76904819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3958ed01dd62112339c25c79d333d9c1b540139cdb90754a53c746e9af743f5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 14:36:09 GMT
ADD file:ef60a5257bf2b5766f692e39f5922bbd6161e45de184b7b138522d53a477c7af in / 
# Tue, 12 Dec 2017 14:36:09 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:14:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:14:35 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:14:36 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 21:14:51 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 21:14:52 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 12 Dec 2017 21:15:34 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:16:46 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 21:16:46 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 21:16:47 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 11:44:32 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 11:44:32 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 11:44:32 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 11:45:06 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 11:45:06 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 11:45:07 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 11:45:07 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 11:45:08 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 11:45:09 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 11:45:10 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 11:45:10 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 11:45:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 11:45:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 11:45:12 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 11:45:12 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Dec 2017 11:54:11 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Dec 2017 11:54:26 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 22 Dec 2017 11:54:27 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:4dbce982b05e209cf10a433462dc417f7816c47b0c1a151c8c93206b299b9a14`  
		Last Modified: Tue, 12 Dec 2017 15:03:13 GMT  
		Size: 23.1 MB (23122456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7c11e0bc622b0180ed093c8a4da0dc404613fc4331a2436a3669aa08c6e818`  
		Last Modified: Tue, 12 Dec 2017 21:33:10 GMT  
		Size: 4.8 MB (4803791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f7b212f68d587a5e50aa75b4635c7d49a9c744d221e091404cb2d1cf4327a1`  
		Last Modified: Tue, 12 Dec 2017 21:33:05 GMT  
		Size: 4.1 KB (4055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb0df0b481030711e1f4ccd5b60509dc4796c769e4d46ddf668819aba41c5d2`  
		Last Modified: Tue, 12 Dec 2017 21:33:05 GMT  
		Size: 931.6 KB (931574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e040f21d8962aea7005a7379e4852e408931ff4c1985b8debde30f1bcf14ca`  
		Last Modified: Tue, 12 Dec 2017 21:33:04 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5bbc5be701d46339ee9aa060f79d61ef2ea60c0a862dc9663bac7b97a8e169`  
		Last Modified: Tue, 12 Dec 2017 21:33:12 GMT  
		Size: 27.5 MB (27520131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dd9d2d069c706f3eb2155b3dabc19696c54dab8db1f74d481620e43b536063`  
		Last Modified: Fri, 22 Dec 2017 11:55:52 GMT  
		Size: 12.8 MB (12801444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d343d516c0b988f110df224a9f3ee502c2944e219fec1709fbcdef0a2d79fd19`  
		Last Modified: Fri, 22 Dec 2017 11:55:49 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c56b61dcb2f766abe51f40166e31dbba5e82d9061c43cf893618dacf6e843a`  
		Last Modified: Fri, 22 Dec 2017 11:55:50 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201b9543f2613c0e5a4e7b0ab82b519914eac5df575950c633193f2c8824d789`  
		Last Modified: Fri, 22 Dec 2017 11:55:49 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b6e713106094f76728ce4a7295830a2731aec1036997346ad433cd99ae0cc1`  
		Last Modified: Fri, 22 Dec 2017 11:55:49 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2ee59155be9f185db1c45800e79d5a35f93f7ff635ed223e35ed867144b11f`  
		Last Modified: Fri, 22 Dec 2017 11:55:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3bdc13600fe8a9973af1c8caf48e8546d07c220839f891ce8b46bf4a5f333c`  
		Last Modified: Fri, 22 Dec 2017 11:56:42 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629424091621dfe51b0db70d864cb38b33efd107c9a4010550f31c5681eba5d7`  
		Last Modified: Fri, 22 Dec 2017 11:56:44 GMT  
		Size: 7.7 MB (7713989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:0e54d8ead0bc29cba2295dcb58a83ec697837b76d90a66857db8ae7663c8d644
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.6 MB (73633452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b54de25816f08e4b6129d18d6b378ffd5f3a1e8118da6f6cf60e1fd3f9b6efc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:41 GMT
ADD file:896602a6d015367badb26a7ac0bcafc9aa04cbba205925631d315874b6d289ab in / 
# Tue, 12 Dec 2017 01:35:42 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 08:12:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 08:12:31 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 08:12:32 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 08:14:14 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Dec 2017 08:14:18 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 13 Dec 2017 08:15:55 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 08:15:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 08:15:58 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 08:15:59 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 08:11:41 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 08:11:42 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 08:11:43 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 08:13:32 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 08:13:33 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 08:13:35 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 08:13:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 08:13:40 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 08:13:44 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 08:13:47 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 08:13:49 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 08:13:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 08:13:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 08:13:56 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 08:13:58 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Dec 2017 08:14:08 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Dec 2017 08:14:38 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 22 Dec 2017 08:14:39 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:b8b738bec437a97371af422179183d09cdb031f677b2dba4deaed774655ee9d8`  
		Last Modified: Tue, 12 Dec 2017 01:42:57 GMT  
		Size: 22.7 MB (22739713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074d2b018f7cf8971581f936aa1922718699254821ac925337d59075ff941e16`  
		Last Modified: Wed, 13 Dec 2017 08:25:16 GMT  
		Size: 4.4 MB (4360551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b59ed4bf511e4fbf8389c0a178fefb54388dd09f9fd41997517b5a18a77175`  
		Last Modified: Wed, 13 Dec 2017 08:25:12 GMT  
		Size: 4.1 KB (4108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd7fb01f62115b9286f1e6a7d47d0c323e3b09c6bd6d04e59fd6af3b2fd8704`  
		Last Modified: Wed, 13 Dec 2017 08:25:13 GMT  
		Size: 920.7 KB (920674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099a031f5f0df72a460e1d66fecbf4ebbbf062936d2d9a8474264bb64a6a9648`  
		Last Modified: Wed, 13 Dec 2017 08:25:11 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb365591fec586b108056a7461f34fbbecd7f579b59712c6a72e43c3f8a1ef2`  
		Last Modified: Wed, 13 Dec 2017 08:25:16 GMT  
		Size: 25.0 MB (25011533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71dec33419700d0f4ab4a2c6d04c32e0e811973a45d24dbb741f0e5c544626cd`  
		Last Modified: Fri, 22 Dec 2017 08:16:27 GMT  
		Size: 12.8 MB (12764207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87adf3e9f6eba9ab4607b32716f7215c55a2f806a03c2bccb9f8a257fc04a858`  
		Last Modified: Fri, 22 Dec 2017 08:16:23 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64119cdea63aa56eedbd3de89d9a94496cabe2b1240b80e04b8d4ff820192c7e`  
		Last Modified: Fri, 22 Dec 2017 08:16:22 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ad894a8943fd9b3886182a7ecd367c26e00d9dc7760423f84af98660baa32d`  
		Last Modified: Fri, 22 Dec 2017 08:16:23 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5642e99657653ea39a6ab4e3c63ff62e290143d100ce93a059c6119f4f3bce6`  
		Last Modified: Fri, 22 Dec 2017 08:16:23 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddec69e1fb6fe0e5c70e3e4e7998629d0e99560968d92265991602aa9cc82bbd`  
		Last Modified: Fri, 22 Dec 2017 08:16:22 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3f4ea9e63a2c8b47b2305022404e0e900ee894f6a31367c19c3a56dd271883`  
		Last Modified: Fri, 22 Dec 2017 08:16:49 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2195618c7a990523cf1761b4df3cdfeecdc2fb4ef7e1a0ba32d79107bd984cb`  
		Last Modified: Fri, 22 Dec 2017 08:16:51 GMT  
		Size: 7.8 MB (7825287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7-management-alpine`

```console
$ docker pull rabbitmq@sha256:50dfa18ae47e7234fcfa3a9c5b8dc26db9a4d8bfd93e830a0a78a46e3fe5fe58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `rabbitmq:3.7-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:53040193335019b805a2d534fc25c9a672f86c91324fa00fc17d6155c6398a65
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43801800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5d4145261981d5d04f33c5edd2cb940e10e55e2ad653d9869e8347df738c690`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 12 Dec 2017 21:41:43 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:41:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 12 Dec 2017 21:42:01 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 12 Dec 2017 21:42:01 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 21:42:01 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 12 Dec 2017 21:42:01 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 21:42:01 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 21 Dec 2017 21:45:57 GMT
ENV RABBITMQ_VERSION=3.7.1
# Thu, 21 Dec 2017 21:45:58 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Thu, 21 Dec 2017 21:46:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 21 Dec 2017 21:46:15 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 21 Dec 2017 21:46:16 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Thu, 21 Dec 2017 21:46:16 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 21 Dec 2017 21:46:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 21 Dec 2017 21:46:25 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 21 Dec 2017 21:46:33 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Thu, 21 Dec 2017 21:46:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Dec 2017 21:46:34 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 21 Dec 2017 21:46:34 GMT
CMD ["rabbitmq-server"]
# Thu, 21 Dec 2017 21:47:01 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 21 Dec 2017 21:47:06 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 21 Dec 2017 21:47:07 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c1a6072a0178dab7d654b6acba25999111f65220e215aa17469c267102d277`  
		Last Modified: Tue, 12 Dec 2017 21:44:03 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f1d7e091ce75ff0605b46c770dec934cddd5a7e0b02f3b6cd023f521c80eb7`  
		Last Modified: Tue, 12 Dec 2017 21:44:04 GMT  
		Size: 8.6 KB (8553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6292a4d2dfb8b5360d5c00c398460db176d6568cf938970df741532ace92088a`  
		Last Modified: Tue, 12 Dec 2017 21:44:05 GMT  
		Size: 18.7 MB (18652435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b089414b5bab92d9738a7b587335f2b46589ea337410fed306be2fec97e646`  
		Last Modified: Thu, 21 Dec 2017 21:49:39 GMT  
		Size: 12.0 MB (12045410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87bc86ebf4d9b7ae0a431b32c1e1a0dfc05bb511b6234394497aa98be30d5399`  
		Last Modified: Thu, 21 Dec 2017 21:49:33 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f15622b0a3adfbad46d71a2ab9bd1d219ec7d660e9a85f2bb792aa35450edf`  
		Last Modified: Thu, 21 Dec 2017 21:49:33 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52177a7021e2926921f06bed2402140367b9489638881c3c7cebf90a6327593a`  
		Last Modified: Thu, 21 Dec 2017 21:49:33 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1936b63aa170cce9d350b68a0686ca5932bbf55bfac91f0d590daa3e9a8478f`  
		Last Modified: Thu, 21 Dec 2017 21:49:33 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a137ebd01df39e6c42974144762af74acae18d9eafcfcf912e2bd33a8c5b237`  
		Last Modified: Thu, 21 Dec 2017 21:50:40 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e4e957d266b9097a73021b7339bdcda9771696b0a8c355f9deeea61d0a9692`  
		Last Modified: Thu, 21 Dec 2017 21:50:42 GMT  
		Size: 11.0 MB (11024384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-management-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:4d8f93281df060d74f775a02397d0d9752fe4170baf585225bdcaf45dc016919
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41282276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9a41fe49ecaf4e0f8ddeb90a12c763383c0e71c1696b2de15964a86ec80c3c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Tue, 12 Dec 2017 22:29:28 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 12 Dec 2017 22:29:31 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 12 Dec 2017 22:29:49 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 12 Dec 2017 22:29:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 22:29:49 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 12 Dec 2017 22:29:50 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 22:29:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 21 Dec 2017 22:29:25 GMT
ENV RABBITMQ_VERSION=3.7.1
# Thu, 21 Dec 2017 22:29:25 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 22:29:37 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 22 Dec 2017 22:29:37 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 22:29:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Fri, 22 Dec 2017 22:29:38 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 22:29:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 22:29:40 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 22 Dec 2017 22:29:40 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Fri, 22 Dec 2017 22:29:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 22:29:40 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 22:29:40 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Dec 2017 22:29:55 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Dec 2017 22:30:02 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Fri, 22 Dec 2017 22:30:03 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9f4ef04f158d5563eb96ea67bbbd10533494056e819df3e002e09e93aad6dd`  
		Last Modified: Wed, 13 Dec 2017 02:05:18 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a83132a783f9ca240cda4cc4331243e673e7b212ee99470582aa35be2d61e6`  
		Last Modified: Wed, 13 Dec 2017 02:05:17 GMT  
		Size: 8.7 KB (8715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6669a7b0dc467da6f3e91bc37fc1992f9c5ac9397f55634c4d2ff713d09bd334`  
		Last Modified: Wed, 13 Dec 2017 02:05:21 GMT  
		Size: 16.3 MB (16268883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbc7168607343956af7dcaa96f58499d5e4759673b5945ced9c1b6cfbb72ae62`  
		Last Modified: Fri, 22 Dec 2017 22:30:19 GMT  
		Size: 12.0 MB (12038626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c93de07707d93fe0b3b02ca6f44a4f13994bf0ce39784855235a14c9d340eca`  
		Last Modified: Fri, 22 Dec 2017 22:30:17 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e36da3412f0fad2e5cca99cb191b0b30b749a2261488a70a9f1fd320af50396`  
		Last Modified: Fri, 22 Dec 2017 22:30:17 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114b60bece05a2b6be5d2bca34f760f42da64d3264d79535289c246622b63534`  
		Last Modified: Fri, 22 Dec 2017 22:30:17 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:443fa80972c987c6a56c669cbc97108c0a963332f2bea147319de0d81746cb9f`  
		Last Modified: Fri, 22 Dec 2017 22:30:17 GMT  
		Size: 4.2 KB (4178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622b850b7857086b0ac66f87405afbadf920a15d924692b46648bba2e1569864`  
		Last Modified: Fri, 22 Dec 2017 22:30:31 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd151d36970f7a43f4552e088fa13b0e518a6d05c2c91ae3c2d369f96843013a`  
		Last Modified: Fri, 22 Dec 2017 22:30:35 GMT  
		Size: 10.9 MB (10921401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:92b706583d3f40dad2a1ba75ae7250ae1fe3f34eea116c10ab5da59b9fa4aab2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41189248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cdca9eb21f1d8ab16471a9c1be9d94023425e7758e64b9ec6e095f91f9b576c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 13 Dec 2017 14:57:23 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:57:26 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Dec 2017 14:57:46 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 13 Dec 2017 14:57:47 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 14:57:48 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 13 Dec 2017 14:57:48 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 14:57:49 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 14:54:44 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 14:54:44 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 14:54:57 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 22 Dec 2017 14:54:58 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 14:54:59 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Fri, 22 Dec 2017 14:55:00 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 14:55:01 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 14:55:03 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 22 Dec 2017 14:55:03 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Fri, 22 Dec 2017 14:55:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 14:55:05 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 14:55:05 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Dec 2017 14:55:19 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Dec 2017 14:55:27 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Fri, 22 Dec 2017 14:55:28 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8c4ed88f638b23b4b44a51af5828b7ca6cf492e10d10b6517f03b2dc5f9c6a`  
		Last Modified: Wed, 13 Dec 2017 15:05:55 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec871b8e16217284a5c9467fc885f9330b7cf594b88a9d251f442a31f9b11982`  
		Last Modified: Wed, 13 Dec 2017 15:05:55 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc676aee1200891fd5416055f87903087826e98535cbd81dcb50768900244552`  
		Last Modified: Wed, 13 Dec 2017 15:06:00 GMT  
		Size: 16.3 MB (16252090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213f96c29a6fa093c23a462408772468af6b41603f9f804f69b2206fbc84a25b`  
		Last Modified: Fri, 22 Dec 2017 14:57:06 GMT  
		Size: 12.0 MB (12038502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:188e7efaae29b7712cb6dd21ddca9143c50d4faab9a53473748029b7ae539a7e`  
		Last Modified: Fri, 22 Dec 2017 14:57:04 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5cebb19a31ee23a6b53957154c787ba8dc91c115322e1dbeac1e44df505f79`  
		Last Modified: Fri, 22 Dec 2017 14:57:04 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed879368aff199bfcb6dbf7869c598a9b650f7cbcbce982d9bd073a9e0104e4`  
		Last Modified: Fri, 22 Dec 2017 14:57:04 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1884d950d65ccb72b718cc0c4453e7f9a25cc4008a45bd77597d751fcd3f59a`  
		Last Modified: Fri, 22 Dec 2017 14:57:04 GMT  
		Size: 4.2 KB (4175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa300c974cdf778165d2248f3bb300a6095ca06009ac726b527c71f85c0abe01`  
		Last Modified: Fri, 22 Dec 2017 14:57:35 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2dcd19b2956b3b5eb5bbc9b69540d8d2a21161ea0b950f98c8bf0a20c6975f`  
		Last Modified: Fri, 22 Dec 2017 14:57:40 GMT  
		Size: 10.9 MB (10894869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:bc3b4e4152411de1faf12118a7b85ffa76a91eeee728c097c98708a7cd29c34c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.7 MB (41660880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a7e442679bddcb156a6da296ae501b99b11c330edeeaa4f2d336903b36a93cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 13 Dec 2017 08:18:08 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 13 Dec 2017 08:18:13 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Dec 2017 08:18:35 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 13 Dec 2017 08:18:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 08:18:38 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 13 Dec 2017 08:18:40 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 08:18:41 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 08:14:54 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 08:14:55 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 08:15:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 22 Dec 2017 08:15:24 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 08:15:27 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Fri, 22 Dec 2017 08:15:28 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 08:15:31 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 08:15:34 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 22 Dec 2017 08:15:35 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Fri, 22 Dec 2017 08:15:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 08:15:38 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 08:15:39 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Dec 2017 08:15:51 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Dec 2017 08:16:02 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Fri, 22 Dec 2017 08:16:04 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d1ed2187942e6103764c1aafdbb8a07c8ca518010057fe8241ae1785036c34`  
		Last Modified: Wed, 13 Dec 2017 08:26:26 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0edcdde4e4bb24d232fb81eb66c47fcc0d25af42f3b5d6d228547cd01c4eee4c`  
		Last Modified: Wed, 13 Dec 2017 08:26:25 GMT  
		Size: 9.3 KB (9261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d586348c018beacd8f060a315dc7b4d506f2132378b683c3fead6f9fa7766efe`  
		Last Modified: Wed, 13 Dec 2017 08:26:29 GMT  
		Size: 16.5 MB (16456345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f912d1158398651caa084a6fc2d7867e682d13a606000c7f834aabd9fc55ea7c`  
		Last Modified: Fri, 22 Dec 2017 08:17:19 GMT  
		Size: 12.0 MB (12039764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be8debed377719ffd4adbc441a7d0af6f08d1ea3a7dbd59e2eac00c471f330a`  
		Last Modified: Fri, 22 Dec 2017 08:17:17 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3171c2bce1c3835b9cf7eec85925c0774dd95c161dd320f3feabc6f46f325f06`  
		Last Modified: Fri, 22 Dec 2017 08:17:17 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70aa8e2fc70384bc3c37708f5f60b3b02b42d9e97999ef353df020ef15e5221a`  
		Last Modified: Fri, 22 Dec 2017 08:17:17 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7612e5863338a37568134bf4db9b2f2f61dabad4e5c6bfef2cf0b8b9ca3c0b34`  
		Last Modified: Fri, 22 Dec 2017 08:17:17 GMT  
		Size: 4.2 KB (4180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc16c0245aa6f07b26912f7e06eecb0187125695a8b2168edcfcadad80301f41`  
		Last Modified: Fri, 22 Dec 2017 08:17:40 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c2844f72c115967e7591ee3543ff7d0f7faad4b8a68275802446a6445149d6`  
		Last Modified: Fri, 22 Dec 2017 08:17:43 GMT  
		Size: 11.1 MB (11067678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-alpine`

```console
$ docker pull rabbitmq@sha256:a4f6620edb796c70aa5de9ff8c24927b6ba5a8187232c4d50459c713b8e11e85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `rabbitmq:3-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:90b06e2750b258e843e868556f3bc5ad7c89512753862c6269687efae0b3fe80
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32777224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b2875253f220da0c7e8fb76a6e3ec7c07990a564e5fb26d2829980ea39f5cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 12 Dec 2017 21:41:43 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:41:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 12 Dec 2017 21:42:01 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 12 Dec 2017 21:42:01 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 21:42:01 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 12 Dec 2017 21:42:01 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 21:42:01 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 21 Dec 2017 21:45:57 GMT
ENV RABBITMQ_VERSION=3.7.1
# Thu, 21 Dec 2017 21:45:58 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Thu, 21 Dec 2017 21:46:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 21 Dec 2017 21:46:15 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 21 Dec 2017 21:46:16 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Thu, 21 Dec 2017 21:46:16 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 21 Dec 2017 21:46:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 21 Dec 2017 21:46:25 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 21 Dec 2017 21:46:33 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Thu, 21 Dec 2017 21:46:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Dec 2017 21:46:34 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 21 Dec 2017 21:46:34 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c1a6072a0178dab7d654b6acba25999111f65220e215aa17469c267102d277`  
		Last Modified: Tue, 12 Dec 2017 21:44:03 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f1d7e091ce75ff0605b46c770dec934cddd5a7e0b02f3b6cd023f521c80eb7`  
		Last Modified: Tue, 12 Dec 2017 21:44:04 GMT  
		Size: 8.6 KB (8553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6292a4d2dfb8b5360d5c00c398460db176d6568cf938970df741532ace92088a`  
		Last Modified: Tue, 12 Dec 2017 21:44:05 GMT  
		Size: 18.7 MB (18652435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b089414b5bab92d9738a7b587335f2b46589ea337410fed306be2fec97e646`  
		Last Modified: Thu, 21 Dec 2017 21:49:39 GMT  
		Size: 12.0 MB (12045410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87bc86ebf4d9b7ae0a431b32c1e1a0dfc05bb511b6234394497aa98be30d5399`  
		Last Modified: Thu, 21 Dec 2017 21:49:33 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f15622b0a3adfbad46d71a2ab9bd1d219ec7d660e9a85f2bb792aa35450edf`  
		Last Modified: Thu, 21 Dec 2017 21:49:33 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52177a7021e2926921f06bed2402140367b9489638881c3c7cebf90a6327593a`  
		Last Modified: Thu, 21 Dec 2017 21:49:33 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1936b63aa170cce9d350b68a0686ca5932bbf55bfac91f0d590daa3e9a8478f`  
		Last Modified: Thu, 21 Dec 2017 21:49:33 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:128fd63c14bde04b9c4a2e276cdaa9dea6235a60eeefdfad4aa951066c9d8e70
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30360684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dde6965f1b9384437a32beb1d01a4719f8a7c486f4540f12366bb8fde75eb6f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Tue, 12 Dec 2017 22:29:28 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 12 Dec 2017 22:29:31 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 12 Dec 2017 22:29:49 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 12 Dec 2017 22:29:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 22:29:49 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 12 Dec 2017 22:29:50 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 22:29:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 21 Dec 2017 22:29:25 GMT
ENV RABBITMQ_VERSION=3.7.1
# Thu, 21 Dec 2017 22:29:25 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 22:29:37 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 22 Dec 2017 22:29:37 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 22:29:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Fri, 22 Dec 2017 22:29:38 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 22:29:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 22:29:40 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 22 Dec 2017 22:29:40 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Fri, 22 Dec 2017 22:29:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 22:29:40 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 22:29:40 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9f4ef04f158d5563eb96ea67bbbd10533494056e819df3e002e09e93aad6dd`  
		Last Modified: Wed, 13 Dec 2017 02:05:18 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a83132a783f9ca240cda4cc4331243e673e7b212ee99470582aa35be2d61e6`  
		Last Modified: Wed, 13 Dec 2017 02:05:17 GMT  
		Size: 8.7 KB (8715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6669a7b0dc467da6f3e91bc37fc1992f9c5ac9397f55634c4d2ff713d09bd334`  
		Last Modified: Wed, 13 Dec 2017 02:05:21 GMT  
		Size: 16.3 MB (16268883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbc7168607343956af7dcaa96f58499d5e4759673b5945ced9c1b6cfbb72ae62`  
		Last Modified: Fri, 22 Dec 2017 22:30:19 GMT  
		Size: 12.0 MB (12038626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c93de07707d93fe0b3b02ca6f44a4f13994bf0ce39784855235a14c9d340eca`  
		Last Modified: Fri, 22 Dec 2017 22:30:17 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e36da3412f0fad2e5cca99cb191b0b30b749a2261488a70a9f1fd320af50396`  
		Last Modified: Fri, 22 Dec 2017 22:30:17 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114b60bece05a2b6be5d2bca34f760f42da64d3264d79535289c246622b63534`  
		Last Modified: Fri, 22 Dec 2017 22:30:17 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:443fa80972c987c6a56c669cbc97108c0a963332f2bea147319de0d81746cb9f`  
		Last Modified: Fri, 22 Dec 2017 22:30:17 GMT  
		Size: 4.2 KB (4178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:307c2d68eb4ef049d32316e42ab711821efb9c25451068755768fe5654e6c603
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30294188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a3c12b7295c0adc9c57fd587d22b2d77086ab0e01c4ce4c37a862553b802e33`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 13 Dec 2017 14:57:23 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:57:26 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Dec 2017 14:57:46 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 13 Dec 2017 14:57:47 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 14:57:48 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 13 Dec 2017 14:57:48 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 14:57:49 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 14:54:44 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 14:54:44 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 14:54:57 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 22 Dec 2017 14:54:58 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 14:54:59 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Fri, 22 Dec 2017 14:55:00 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 14:55:01 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 14:55:03 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 22 Dec 2017 14:55:03 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Fri, 22 Dec 2017 14:55:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 14:55:05 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 14:55:05 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8c4ed88f638b23b4b44a51af5828b7ca6cf492e10d10b6517f03b2dc5f9c6a`  
		Last Modified: Wed, 13 Dec 2017 15:05:55 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec871b8e16217284a5c9467fc885f9330b7cf594b88a9d251f442a31f9b11982`  
		Last Modified: Wed, 13 Dec 2017 15:05:55 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc676aee1200891fd5416055f87903087826e98535cbd81dcb50768900244552`  
		Last Modified: Wed, 13 Dec 2017 15:06:00 GMT  
		Size: 16.3 MB (16252090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213f96c29a6fa093c23a462408772468af6b41603f9f804f69b2206fbc84a25b`  
		Last Modified: Fri, 22 Dec 2017 14:57:06 GMT  
		Size: 12.0 MB (12038502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:188e7efaae29b7712cb6dd21ddca9143c50d4faab9a53473748029b7ae539a7e`  
		Last Modified: Fri, 22 Dec 2017 14:57:04 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5cebb19a31ee23a6b53957154c787ba8dc91c115322e1dbeac1e44df505f79`  
		Last Modified: Fri, 22 Dec 2017 14:57:04 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed879368aff199bfcb6dbf7869c598a9b650f7cbcbce982d9bd073a9e0104e4`  
		Last Modified: Fri, 22 Dec 2017 14:57:04 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1884d950d65ccb72b718cc0c4453e7f9a25cc4008a45bd77597d751fcd3f59a`  
		Last Modified: Fri, 22 Dec 2017 14:57:04 GMT  
		Size: 4.2 KB (4175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:bc067e03ffe888475cce161bb9e1677ae0e6b7a4259083c6afbc2c8bbb356a08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30593007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9ddb77aa01e33ad43deed7be54170f6a226814a23ab9a118baf5370ebfa1218`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 13 Dec 2017 08:18:08 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 13 Dec 2017 08:18:13 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Dec 2017 08:18:35 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 13 Dec 2017 08:18:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 08:18:38 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 13 Dec 2017 08:18:40 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 08:18:41 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 08:14:54 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 08:14:55 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 08:15:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 22 Dec 2017 08:15:24 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 08:15:27 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Fri, 22 Dec 2017 08:15:28 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 08:15:31 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 08:15:34 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 22 Dec 2017 08:15:35 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Fri, 22 Dec 2017 08:15:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 08:15:38 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 08:15:39 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d1ed2187942e6103764c1aafdbb8a07c8ca518010057fe8241ae1785036c34`  
		Last Modified: Wed, 13 Dec 2017 08:26:26 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0edcdde4e4bb24d232fb81eb66c47fcc0d25af42f3b5d6d228547cd01c4eee4c`  
		Last Modified: Wed, 13 Dec 2017 08:26:25 GMT  
		Size: 9.3 KB (9261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d586348c018beacd8f060a315dc7b4d506f2132378b683c3fead6f9fa7766efe`  
		Last Modified: Wed, 13 Dec 2017 08:26:29 GMT  
		Size: 16.5 MB (16456345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f912d1158398651caa084a6fc2d7867e682d13a606000c7f834aabd9fc55ea7c`  
		Last Modified: Fri, 22 Dec 2017 08:17:19 GMT  
		Size: 12.0 MB (12039764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be8debed377719ffd4adbc441a7d0af6f08d1ea3a7dbd59e2eac00c471f330a`  
		Last Modified: Fri, 22 Dec 2017 08:17:17 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3171c2bce1c3835b9cf7eec85925c0774dd95c161dd320f3feabc6f46f325f06`  
		Last Modified: Fri, 22 Dec 2017 08:17:17 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70aa8e2fc70384bc3c37708f5f60b3b02b42d9e97999ef353df020ef15e5221a`  
		Last Modified: Fri, 22 Dec 2017 08:17:17 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7612e5863338a37568134bf4db9b2f2f61dabad4e5c6bfef2cf0b8b9ca3c0b34`  
		Last Modified: Fri, 22 Dec 2017 08:17:17 GMT  
		Size: 4.2 KB (4180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management`

```console
$ docker pull rabbitmq@sha256:6b6be1f8a4d57befac70e53ae6391effadde140993b8c20d16d5aa9a1690dff1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `rabbitmq:3-management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:ce7b330e653a03f34845cfeb2048ee51db81c095dba50770f1485221624ec454
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.7 MB (75682058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3c1af531bfa286b607e0e9d0bd6637d0c8c12b399dadb387e487096a118974a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:40:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:40:50 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:40:50 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 23:25:20 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 23:25:21 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 12 Dec 2017 23:25:37 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:25:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 23:25:38 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 23:25:38 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 21 Dec 2017 21:43:52 GMT
ENV RABBITMQ_VERSION=3.7.1
# Thu, 21 Dec 2017 21:43:52 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Thu, 21 Dec 2017 21:43:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Thu, 21 Dec 2017 21:44:19 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 21:44:19 GMT
ENV LANG=C.UTF-8
# Thu, 21 Dec 2017 21:44:19 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 21 Dec 2017 21:44:20 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 21 Dec 2017 21:44:28 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 21 Dec 2017 21:44:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 21 Dec 2017 21:44:37 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 21 Dec 2017 21:44:38 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Thu, 21 Dec 2017 21:44:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 21 Dec 2017 21:44:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Dec 2017 21:44:47 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 21 Dec 2017 21:44:47 GMT
CMD ["rabbitmq-server"]
# Thu, 21 Dec 2017 21:45:24 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 21 Dec 2017 21:45:39 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Thu, 21 Dec 2017 21:45:40 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad90649c4d840febdaefa1afaad7ef8bbf2e0087ba1d11a95968afce0503f342`  
		Last Modified: Tue, 12 Dec 2017 21:45:30 GMT  
		Size: 4.5 MB (4498351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a318b914d6cead2434cc74ee74c48511ad6ec06a38ab190157246497f44afb1`  
		Last Modified: Tue, 12 Dec 2017 21:45:28 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cedd60f70052462179e86a0439f5fb3fa7b40f41dc55be9152bd147181481594`  
		Last Modified: Tue, 12 Dec 2017 23:26:36 GMT  
		Size: 951.9 KB (951937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ec28761801c452cb366afa1cbb7946bada161eb77899d9ca9a59a219e9ff42`  
		Last Modified: Tue, 12 Dec 2017 23:26:35 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fa44aa9074bb2e24649ebe2dae2f852f9443a052fd9cdfd4d11bcd86d967f7`  
		Last Modified: Tue, 12 Dec 2017 23:26:38 GMT  
		Size: 27.3 MB (27330555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf3e1e07c991ce96a21e3642cb8dbb20ef673739bb6f4d8b850380b2572f106`  
		Last Modified: Thu, 21 Dec 2017 21:47:31 GMT  
		Size: 12.8 MB (12781820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3ef1cea93bbcaa3a76d6c6e253976b8440ad24969e0ba907e173742c6ff50a`  
		Last Modified: Thu, 21 Dec 2017 21:47:26 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5ab9c082d6d13b0bb80318aa78027016a9d5673b8a552f065eeca6674c15e0`  
		Last Modified: Thu, 21 Dec 2017 21:47:28 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607d775f273a65211519680d67816f79ac0aa561a7ad364fac03c097c063fffd`  
		Last Modified: Thu, 21 Dec 2017 21:47:26 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1b766cfd2d4024d5591163073df0750727ccb125db1eeb9a92e9f364ed081d`  
		Last Modified: Thu, 21 Dec 2017 21:47:26 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca5c4856b55a852a371ef4afdddb1d16d94afe44c88221e14d84d8fdd6070df`  
		Last Modified: Thu, 21 Dec 2017 21:47:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d24bb85705e9e92239e95be1af2ef6bc9965cf09fb05e6f30a4de1d3aad4e214`  
		Last Modified: Thu, 21 Dec 2017 21:48:31 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffc927f7905fbf60fc741f2b666857c6bc7041d7c12430b915c787fb7a95d78`  
		Last Modified: Thu, 21 Dec 2017 21:48:36 GMT  
		Size: 7.6 MB (7622231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:ffb97a38b0a4fd039b1248ddcfa295fccacc54abdafec1bbf2bc29673b2aea87
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.4 MB (71406814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9606fe70b34d9a161737c5b82040ed0c75238e6fdc8a97629a22c498792cdf07`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 21:02:20 GMT
ADD file:f69e5781e9ff2a9867d94175d91d31553e07613bf4b50a1064274ed21a5ed353 in / 
# Tue, 12 Dec 2017 21:02:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 23:14:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:14:46 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 23:14:46 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 23:15:03 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 23:15:05 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 12 Dec 2017 23:15:44 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:15:45 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 23:15:45 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 23:15:46 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 15:14:24 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 15:14:24 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 15:14:24 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 15:14:59 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 15:15:00 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 15:15:00 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 15:15:01 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 15:15:01 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 15:15:02 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 15:15:03 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 15:15:03 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 15:15:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 15:15:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 15:15:05 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 15:15:05 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Dec 2017 15:15:16 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Dec 2017 15:15:35 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 22 Dec 2017 15:15:36 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:20f319b2549a8d631c2e8034bfc3f9c12042d86a686470a8addd2fb7bc8c688c`  
		Last Modified: Tue, 12 Dec 2017 21:12:53 GMT  
		Size: 21.2 MB (21160630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608d8fd7a6001a09dff4cc76414aa4711207466847dfa91271aa6dd09becdd6a`  
		Last Modified: Tue, 12 Dec 2017 23:21:52 GMT  
		Size: 4.2 MB (4231488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d214c26ea8bd4ea1468f2b7c9806f8f3cde7cd6c2f09660325ea38b81dcb9c13`  
		Last Modified: Tue, 12 Dec 2017 23:21:50 GMT  
		Size: 4.1 KB (4082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9640468e3e315e94fa5dfdb6b79a97eb7f83beebca51e85a68ab3ef6a4b13106`  
		Last Modified: Tue, 12 Dec 2017 23:21:51 GMT  
		Size: 942.4 KB (942449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce50058b2ae9912872489ab639895bd412cd17a9a299fe4e208704d0ef03dd1f`  
		Last Modified: Tue, 12 Dec 2017 23:21:50 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de8bff935da4e19ec18fec56ba68c2cf72e41a4ad936934d6927c22d50d69dab`  
		Last Modified: Tue, 12 Dec 2017 23:21:56 GMT  
		Size: 24.8 MB (24837409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e7f60fa5b5600f52ceb2a5f847f939fe4fd9c88497a4af04f1a9e56a3a0226`  
		Last Modified: Fri, 22 Dec 2017 15:15:56 GMT  
		Size: 12.8 MB (12751160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1d9062191080161364b2f92fb7b1bc2983ebc261432e26e2bc529d2025a00f`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2b1a936349f6aef924d33f3b3246245ff7e15ae50f93604d15e363cf2060b9`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730970b7986ad9f4e2039724474364f61070660fb564efdf61ce67e5141ac8c9`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207f615d05708cbe302cf9382a9c2b2dc41910c9cf69dc913d7c5c02870c6138`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3005d65e7f419893d506d416f107fd2d6e82fa13eb5c86f95da855ba0dae6683`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081ff403ae0e159713237cec2151bc7947ae5eb26ec78c5fdccb58fa991c0906`  
		Last Modified: Fri, 22 Dec 2017 15:16:11 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1c8daba1791e89d5cfd91acbd604ef8ab72dc642a30aecbd876eb96bbb4dc8`  
		Last Modified: Fri, 22 Dec 2017 15:16:15 GMT  
		Size: 7.5 MB (7472214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:5f8ae6369dc47a4350d6cce1828130cf56d2eade2c5c97fb77337285d5f00338
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.5 MB (68523704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cbac589adc82218f6e8c865d22901877e8dbce390002f44c280ff78cb956edd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 13:33:42 GMT
ADD file:cfde12259adb7102e76690e986f1b9b07967a8984c85d0cead09969f5de8b8cc in / 
# Tue, 12 Dec 2017 13:33:42 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:07:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:07:51 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:07:52 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 14:08:30 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Dec 2017 14:08:31 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 13 Dec 2017 14:09:04 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:09:05 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 14:09:05 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 14:09:05 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 14:07:26 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 14:07:27 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 14:07:27 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 14:07:56 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 14:07:56 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 14:07:56 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 14:07:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 14:07:57 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 14:07:58 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 14:07:59 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 14:08:00 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 14:08:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 14:08:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 14:08:01 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 14:08:02 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Dec 2017 14:08:12 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Dec 2017 14:08:26 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 22 Dec 2017 14:08:26 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:cd8b673adb84fd5eae3444d0475addad7e8908a8332704c4407baa97e9b0b284`  
		Last Modified: Tue, 12 Dec 2017 13:45:48 GMT  
		Size: 19.3 MB (19271028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681dc17295c86c86ee974da339cea0f010f6f5780ffd3b6fd3fa6b2a3d124fdd`  
		Last Modified: Wed, 13 Dec 2017 14:13:29 GMT  
		Size: 3.9 MB (3868482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03995e4857910fd538adfc3a896164f12117829662b917fd93835e24ec792b07`  
		Last Modified: Wed, 13 Dec 2017 14:13:28 GMT  
		Size: 4.1 KB (4083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7dd231e7e929346f4a5183b1f2df19bd46ef0f6ea9b79077593abd76f02737`  
		Last Modified: Wed, 13 Dec 2017 14:13:27 GMT  
		Size: 926.2 KB (926167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a6235a7077293b77a5763b50aeb4468250c3243e9a414e68ade282ba5457045`  
		Last Modified: Wed, 13 Dec 2017 14:13:27 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de253191eb0702e608f45381e5cf3de24ea4a760bc740b04a51e8bd4f577b6c7`  
		Last Modified: Wed, 13 Dec 2017 14:13:32 GMT  
		Size: 24.5 MB (24541142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b25fd4ba6b057fcbdbc2eec693d0f5c4df5a0459298926d4ad5302470e210de`  
		Last Modified: Fri, 22 Dec 2017 14:08:44 GMT  
		Size: 12.7 MB (12722767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c51fcc7b5312d66fe5f92da771aabe0349c6b3ad5d89d2d84858838fe16f4dc4`  
		Last Modified: Fri, 22 Dec 2017 14:08:42 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a588b73dbd75765122fbcfce25f9fc9c7cf5b6a37369df109328c081651975`  
		Last Modified: Fri, 22 Dec 2017 14:08:42 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78eddee1ed060160ee996266461b5bc661be8de27a56b8710f605999fce94a55`  
		Last Modified: Fri, 22 Dec 2017 14:08:42 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0979543707ff6994fd7f35ad5fda8fe9232cb2eb73d09e0a740a9585f4eaefe`  
		Last Modified: Fri, 22 Dec 2017 14:08:42 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f9032304b59cc4b820894fba66c025f4d2617438299f19d22ce540ff0bbf2c`  
		Last Modified: Fri, 22 Dec 2017 14:08:41 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560fb52b7a723a78d283679e1522845627c3982baf9075e153ff9caba4a2c6e4`  
		Last Modified: Fri, 22 Dec 2017 14:09:00 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98661b6f7d96fce4607e860bf2b231817b8af795c3b3880b0d4afb748be1a030`  
		Last Modified: Fri, 22 Dec 2017 14:09:03 GMT  
		Size: 7.2 MB (7182658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:34c06758df278ad0d45b251865ec113771e4c4f6160a6893260436f47a90d07a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.3 MB (70317966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:642b44151b1518e53dd9401a2969cfc02e854e5a21706a750e628e00580a20b9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 18:34:13 GMT
ADD file:6e068c7cc5397bfb4ec60dab4d410c5d3ba724f20ad0129d2032fb509f0eadcd in / 
# Tue, 12 Dec 2017 18:34:14 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:53:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:53:52 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:53:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 14:54:26 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Dec 2017 14:54:27 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 13 Dec 2017 14:55:29 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:55:29 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 14:55:30 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 14:55:31 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 14:52:43 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 14:52:44 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 14:52:44 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 14:53:42 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 14:53:43 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 14:53:43 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 14:53:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 14:53:45 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 14:53:47 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 14:53:48 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 14:53:49 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 14:53:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 14:53:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 14:53:52 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 14:53:54 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Dec 2017 14:54:06 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Dec 2017 14:54:31 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 22 Dec 2017 14:54:31 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:fcad8cfc11c78a53ccf9aafafcb3ded5044dbd181977e6255aea54fbe164f131`  
		Last Modified: Tue, 12 Dec 2017 18:49:05 GMT  
		Size: 20.3 MB (20331270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb3f7722e72f404b7e544c9a358cc7390f02c0b391a14ea7dbecd85dca7d195`  
		Last Modified: Wed, 13 Dec 2017 15:03:22 GMT  
		Size: 4.1 MB (4073192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c72eaa15e586a9eb8cbde84a24922fdabb2aa060ef64831fb867757ac6f83a`  
		Last Modified: Wed, 13 Dec 2017 15:03:21 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ebe8f28a8d2ed828ab5c0431545a097e3f46a3ac45e36976fde6daa9fb405d`  
		Last Modified: Wed, 13 Dec 2017 15:03:21 GMT  
		Size: 919.4 KB (919386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf8546d6f1127383410e3244beb4a3873b3305deab0f469ac13d1d0b112dee1`  
		Last Modified: Wed, 13 Dec 2017 15:03:19 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aabe4d57c4c33847b3343b87c3d4b7f0efe523535a70b98185a7237848d3780d`  
		Last Modified: Wed, 13 Dec 2017 15:03:23 GMT  
		Size: 24.8 MB (24762935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29da1f88f7abd4ac706158ed66c3edd95c77c626b118d1430d9d987863a8a126`  
		Last Modified: Fri, 22 Dec 2017 14:55:58 GMT  
		Size: 12.7 MB (12745013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d9eb1dcd2f690fa686a4c2c6917a9dac1f2b83e58f873c6fa1c629a5ea35f5`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4be7195e35d31a0b3d5223c2099f6fbede7f22121454696afa9a2cb4dadb95`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ff3a93de492dfc8fd837c437a30e6d9e1360bee1f8243c1f3e7fefd4b9e617`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844056b16c3b8fb059c428a9d4c451310e81bdb909d039ddf20b1ed76ed06e4a`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:735d3dd7df678c1257c4ae682480c3e6357b26e308b36d0de392350370c0888a`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9d9cd1604039d8dcc780ea5535ed5d2b43e754b4c8dbbc6464b87db615e420`  
		Last Modified: Fri, 22 Dec 2017 14:56:29 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5119a6a64cf5a4211958e3e08c26929c34993764376cc195584dbd3df977b78`  
		Last Modified: Fri, 22 Dec 2017 14:56:32 GMT  
		Size: 7.5 MB (7474716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; 386

```console
$ docker pull rabbitmq@sha256:88e98ae119769fd533d75b54562935cdfdc0a4ec8de069ac184c0f062ca989d1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.9 MB (76904819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3958ed01dd62112339c25c79d333d9c1b540139cdb90754a53c746e9af743f5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 14:36:09 GMT
ADD file:ef60a5257bf2b5766f692e39f5922bbd6161e45de184b7b138522d53a477c7af in / 
# Tue, 12 Dec 2017 14:36:09 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:14:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:14:35 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:14:36 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 21:14:51 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 21:14:52 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 12 Dec 2017 21:15:34 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:16:46 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 21:16:46 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 21:16:47 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 11:44:32 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 11:44:32 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 11:44:32 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 11:45:06 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 11:45:06 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 11:45:07 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 11:45:07 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 11:45:08 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 11:45:09 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 11:45:10 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 11:45:10 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 11:45:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 11:45:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 11:45:12 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 11:45:12 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Dec 2017 11:54:11 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Dec 2017 11:54:26 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 22 Dec 2017 11:54:27 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:4dbce982b05e209cf10a433462dc417f7816c47b0c1a151c8c93206b299b9a14`  
		Last Modified: Tue, 12 Dec 2017 15:03:13 GMT  
		Size: 23.1 MB (23122456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7c11e0bc622b0180ed093c8a4da0dc404613fc4331a2436a3669aa08c6e818`  
		Last Modified: Tue, 12 Dec 2017 21:33:10 GMT  
		Size: 4.8 MB (4803791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f7b212f68d587a5e50aa75b4635c7d49a9c744d221e091404cb2d1cf4327a1`  
		Last Modified: Tue, 12 Dec 2017 21:33:05 GMT  
		Size: 4.1 KB (4055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb0df0b481030711e1f4ccd5b60509dc4796c769e4d46ddf668819aba41c5d2`  
		Last Modified: Tue, 12 Dec 2017 21:33:05 GMT  
		Size: 931.6 KB (931574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e040f21d8962aea7005a7379e4852e408931ff4c1985b8debde30f1bcf14ca`  
		Last Modified: Tue, 12 Dec 2017 21:33:04 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5bbc5be701d46339ee9aa060f79d61ef2ea60c0a862dc9663bac7b97a8e169`  
		Last Modified: Tue, 12 Dec 2017 21:33:12 GMT  
		Size: 27.5 MB (27520131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dd9d2d069c706f3eb2155b3dabc19696c54dab8db1f74d481620e43b536063`  
		Last Modified: Fri, 22 Dec 2017 11:55:52 GMT  
		Size: 12.8 MB (12801444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d343d516c0b988f110df224a9f3ee502c2944e219fec1709fbcdef0a2d79fd19`  
		Last Modified: Fri, 22 Dec 2017 11:55:49 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c56b61dcb2f766abe51f40166e31dbba5e82d9061c43cf893618dacf6e843a`  
		Last Modified: Fri, 22 Dec 2017 11:55:50 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201b9543f2613c0e5a4e7b0ab82b519914eac5df575950c633193f2c8824d789`  
		Last Modified: Fri, 22 Dec 2017 11:55:49 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b6e713106094f76728ce4a7295830a2731aec1036997346ad433cd99ae0cc1`  
		Last Modified: Fri, 22 Dec 2017 11:55:49 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2ee59155be9f185db1c45800e79d5a35f93f7ff635ed223e35ed867144b11f`  
		Last Modified: Fri, 22 Dec 2017 11:55:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3bdc13600fe8a9973af1c8caf48e8546d07c220839f891ce8b46bf4a5f333c`  
		Last Modified: Fri, 22 Dec 2017 11:56:42 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629424091621dfe51b0db70d864cb38b33efd107c9a4010550f31c5681eba5d7`  
		Last Modified: Fri, 22 Dec 2017 11:56:44 GMT  
		Size: 7.7 MB (7713989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:0e54d8ead0bc29cba2295dcb58a83ec697837b76d90a66857db8ae7663c8d644
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.6 MB (73633452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b54de25816f08e4b6129d18d6b378ffd5f3a1e8118da6f6cf60e1fd3f9b6efc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:41 GMT
ADD file:896602a6d015367badb26a7ac0bcafc9aa04cbba205925631d315874b6d289ab in / 
# Tue, 12 Dec 2017 01:35:42 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 08:12:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 08:12:31 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 08:12:32 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 08:14:14 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Dec 2017 08:14:18 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 13 Dec 2017 08:15:55 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 08:15:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 08:15:58 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 08:15:59 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 08:11:41 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 08:11:42 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 08:11:43 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 08:13:32 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 08:13:33 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 08:13:35 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 08:13:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 08:13:40 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 08:13:44 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 08:13:47 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 08:13:49 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 08:13:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 08:13:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 08:13:56 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 08:13:58 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Dec 2017 08:14:08 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Dec 2017 08:14:38 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 22 Dec 2017 08:14:39 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:b8b738bec437a97371af422179183d09cdb031f677b2dba4deaed774655ee9d8`  
		Last Modified: Tue, 12 Dec 2017 01:42:57 GMT  
		Size: 22.7 MB (22739713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074d2b018f7cf8971581f936aa1922718699254821ac925337d59075ff941e16`  
		Last Modified: Wed, 13 Dec 2017 08:25:16 GMT  
		Size: 4.4 MB (4360551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b59ed4bf511e4fbf8389c0a178fefb54388dd09f9fd41997517b5a18a77175`  
		Last Modified: Wed, 13 Dec 2017 08:25:12 GMT  
		Size: 4.1 KB (4108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd7fb01f62115b9286f1e6a7d47d0c323e3b09c6bd6d04e59fd6af3b2fd8704`  
		Last Modified: Wed, 13 Dec 2017 08:25:13 GMT  
		Size: 920.7 KB (920674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099a031f5f0df72a460e1d66fecbf4ebbbf062936d2d9a8474264bb64a6a9648`  
		Last Modified: Wed, 13 Dec 2017 08:25:11 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb365591fec586b108056a7461f34fbbecd7f579b59712c6a72e43c3f8a1ef2`  
		Last Modified: Wed, 13 Dec 2017 08:25:16 GMT  
		Size: 25.0 MB (25011533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71dec33419700d0f4ab4a2c6d04c32e0e811973a45d24dbb741f0e5c544626cd`  
		Last Modified: Fri, 22 Dec 2017 08:16:27 GMT  
		Size: 12.8 MB (12764207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87adf3e9f6eba9ab4607b32716f7215c55a2f806a03c2bccb9f8a257fc04a858`  
		Last Modified: Fri, 22 Dec 2017 08:16:23 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64119cdea63aa56eedbd3de89d9a94496cabe2b1240b80e04b8d4ff820192c7e`  
		Last Modified: Fri, 22 Dec 2017 08:16:22 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ad894a8943fd9b3886182a7ecd367c26e00d9dc7760423f84af98660baa32d`  
		Last Modified: Fri, 22 Dec 2017 08:16:23 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5642e99657653ea39a6ab4e3c63ff62e290143d100ce93a059c6119f4f3bce6`  
		Last Modified: Fri, 22 Dec 2017 08:16:23 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddec69e1fb6fe0e5c70e3e4e7998629d0e99560968d92265991602aa9cc82bbd`  
		Last Modified: Fri, 22 Dec 2017 08:16:22 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3f4ea9e63a2c8b47b2305022404e0e900ee894f6a31367c19c3a56dd271883`  
		Last Modified: Fri, 22 Dec 2017 08:16:49 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2195618c7a990523cf1761b4df3cdfeecdc2fb4ef7e1a0ba32d79107bd984cb`  
		Last Modified: Fri, 22 Dec 2017 08:16:51 GMT  
		Size: 7.8 MB (7825287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management-alpine`

```console
$ docker pull rabbitmq@sha256:50dfa18ae47e7234fcfa3a9c5b8dc26db9a4d8bfd93e830a0a78a46e3fe5fe58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `rabbitmq:3-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:53040193335019b805a2d534fc25c9a672f86c91324fa00fc17d6155c6398a65
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43801800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5d4145261981d5d04f33c5edd2cb940e10e55e2ad653d9869e8347df738c690`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 12 Dec 2017 21:41:43 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:41:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 12 Dec 2017 21:42:01 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 12 Dec 2017 21:42:01 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 21:42:01 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 12 Dec 2017 21:42:01 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 21:42:01 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 21 Dec 2017 21:45:57 GMT
ENV RABBITMQ_VERSION=3.7.1
# Thu, 21 Dec 2017 21:45:58 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Thu, 21 Dec 2017 21:46:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 21 Dec 2017 21:46:15 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 21 Dec 2017 21:46:16 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Thu, 21 Dec 2017 21:46:16 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 21 Dec 2017 21:46:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 21 Dec 2017 21:46:25 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 21 Dec 2017 21:46:33 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Thu, 21 Dec 2017 21:46:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Dec 2017 21:46:34 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 21 Dec 2017 21:46:34 GMT
CMD ["rabbitmq-server"]
# Thu, 21 Dec 2017 21:47:01 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 21 Dec 2017 21:47:06 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 21 Dec 2017 21:47:07 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c1a6072a0178dab7d654b6acba25999111f65220e215aa17469c267102d277`  
		Last Modified: Tue, 12 Dec 2017 21:44:03 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f1d7e091ce75ff0605b46c770dec934cddd5a7e0b02f3b6cd023f521c80eb7`  
		Last Modified: Tue, 12 Dec 2017 21:44:04 GMT  
		Size: 8.6 KB (8553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6292a4d2dfb8b5360d5c00c398460db176d6568cf938970df741532ace92088a`  
		Last Modified: Tue, 12 Dec 2017 21:44:05 GMT  
		Size: 18.7 MB (18652435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b089414b5bab92d9738a7b587335f2b46589ea337410fed306be2fec97e646`  
		Last Modified: Thu, 21 Dec 2017 21:49:39 GMT  
		Size: 12.0 MB (12045410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87bc86ebf4d9b7ae0a431b32c1e1a0dfc05bb511b6234394497aa98be30d5399`  
		Last Modified: Thu, 21 Dec 2017 21:49:33 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f15622b0a3adfbad46d71a2ab9bd1d219ec7d660e9a85f2bb792aa35450edf`  
		Last Modified: Thu, 21 Dec 2017 21:49:33 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52177a7021e2926921f06bed2402140367b9489638881c3c7cebf90a6327593a`  
		Last Modified: Thu, 21 Dec 2017 21:49:33 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1936b63aa170cce9d350b68a0686ca5932bbf55bfac91f0d590daa3e9a8478f`  
		Last Modified: Thu, 21 Dec 2017 21:49:33 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a137ebd01df39e6c42974144762af74acae18d9eafcfcf912e2bd33a8c5b237`  
		Last Modified: Thu, 21 Dec 2017 21:50:40 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e4e957d266b9097a73021b7339bdcda9771696b0a8c355f9deeea61d0a9692`  
		Last Modified: Thu, 21 Dec 2017 21:50:42 GMT  
		Size: 11.0 MB (11024384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:4d8f93281df060d74f775a02397d0d9752fe4170baf585225bdcaf45dc016919
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41282276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9a41fe49ecaf4e0f8ddeb90a12c763383c0e71c1696b2de15964a86ec80c3c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Tue, 12 Dec 2017 22:29:28 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 12 Dec 2017 22:29:31 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 12 Dec 2017 22:29:49 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 12 Dec 2017 22:29:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 22:29:49 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 12 Dec 2017 22:29:50 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 22:29:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 21 Dec 2017 22:29:25 GMT
ENV RABBITMQ_VERSION=3.7.1
# Thu, 21 Dec 2017 22:29:25 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 22:29:37 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 22 Dec 2017 22:29:37 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 22:29:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Fri, 22 Dec 2017 22:29:38 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 22:29:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 22:29:40 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 22 Dec 2017 22:29:40 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Fri, 22 Dec 2017 22:29:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 22:29:40 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 22:29:40 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Dec 2017 22:29:55 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Dec 2017 22:30:02 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Fri, 22 Dec 2017 22:30:03 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9f4ef04f158d5563eb96ea67bbbd10533494056e819df3e002e09e93aad6dd`  
		Last Modified: Wed, 13 Dec 2017 02:05:18 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a83132a783f9ca240cda4cc4331243e673e7b212ee99470582aa35be2d61e6`  
		Last Modified: Wed, 13 Dec 2017 02:05:17 GMT  
		Size: 8.7 KB (8715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6669a7b0dc467da6f3e91bc37fc1992f9c5ac9397f55634c4d2ff713d09bd334`  
		Last Modified: Wed, 13 Dec 2017 02:05:21 GMT  
		Size: 16.3 MB (16268883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbc7168607343956af7dcaa96f58499d5e4759673b5945ced9c1b6cfbb72ae62`  
		Last Modified: Fri, 22 Dec 2017 22:30:19 GMT  
		Size: 12.0 MB (12038626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c93de07707d93fe0b3b02ca6f44a4f13994bf0ce39784855235a14c9d340eca`  
		Last Modified: Fri, 22 Dec 2017 22:30:17 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e36da3412f0fad2e5cca99cb191b0b30b749a2261488a70a9f1fd320af50396`  
		Last Modified: Fri, 22 Dec 2017 22:30:17 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114b60bece05a2b6be5d2bca34f760f42da64d3264d79535289c246622b63534`  
		Last Modified: Fri, 22 Dec 2017 22:30:17 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:443fa80972c987c6a56c669cbc97108c0a963332f2bea147319de0d81746cb9f`  
		Last Modified: Fri, 22 Dec 2017 22:30:17 GMT  
		Size: 4.2 KB (4178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622b850b7857086b0ac66f87405afbadf920a15d924692b46648bba2e1569864`  
		Last Modified: Fri, 22 Dec 2017 22:30:31 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd151d36970f7a43f4552e088fa13b0e518a6d05c2c91ae3c2d369f96843013a`  
		Last Modified: Fri, 22 Dec 2017 22:30:35 GMT  
		Size: 10.9 MB (10921401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:92b706583d3f40dad2a1ba75ae7250ae1fe3f34eea116c10ab5da59b9fa4aab2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41189248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cdca9eb21f1d8ab16471a9c1be9d94023425e7758e64b9ec6e095f91f9b576c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 13 Dec 2017 14:57:23 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:57:26 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Dec 2017 14:57:46 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 13 Dec 2017 14:57:47 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 14:57:48 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 13 Dec 2017 14:57:48 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 14:57:49 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 14:54:44 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 14:54:44 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 14:54:57 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 22 Dec 2017 14:54:58 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 14:54:59 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Fri, 22 Dec 2017 14:55:00 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 14:55:01 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 14:55:03 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 22 Dec 2017 14:55:03 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Fri, 22 Dec 2017 14:55:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 14:55:05 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 14:55:05 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Dec 2017 14:55:19 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Dec 2017 14:55:27 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Fri, 22 Dec 2017 14:55:28 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8c4ed88f638b23b4b44a51af5828b7ca6cf492e10d10b6517f03b2dc5f9c6a`  
		Last Modified: Wed, 13 Dec 2017 15:05:55 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec871b8e16217284a5c9467fc885f9330b7cf594b88a9d251f442a31f9b11982`  
		Last Modified: Wed, 13 Dec 2017 15:05:55 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc676aee1200891fd5416055f87903087826e98535cbd81dcb50768900244552`  
		Last Modified: Wed, 13 Dec 2017 15:06:00 GMT  
		Size: 16.3 MB (16252090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213f96c29a6fa093c23a462408772468af6b41603f9f804f69b2206fbc84a25b`  
		Last Modified: Fri, 22 Dec 2017 14:57:06 GMT  
		Size: 12.0 MB (12038502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:188e7efaae29b7712cb6dd21ddca9143c50d4faab9a53473748029b7ae539a7e`  
		Last Modified: Fri, 22 Dec 2017 14:57:04 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5cebb19a31ee23a6b53957154c787ba8dc91c115322e1dbeac1e44df505f79`  
		Last Modified: Fri, 22 Dec 2017 14:57:04 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed879368aff199bfcb6dbf7869c598a9b650f7cbcbce982d9bd073a9e0104e4`  
		Last Modified: Fri, 22 Dec 2017 14:57:04 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1884d950d65ccb72b718cc0c4453e7f9a25cc4008a45bd77597d751fcd3f59a`  
		Last Modified: Fri, 22 Dec 2017 14:57:04 GMT  
		Size: 4.2 KB (4175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa300c974cdf778165d2248f3bb300a6095ca06009ac726b527c71f85c0abe01`  
		Last Modified: Fri, 22 Dec 2017 14:57:35 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2dcd19b2956b3b5eb5bbc9b69540d8d2a21161ea0b950f98c8bf0a20c6975f`  
		Last Modified: Fri, 22 Dec 2017 14:57:40 GMT  
		Size: 10.9 MB (10894869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:bc3b4e4152411de1faf12118a7b85ffa76a91eeee728c097c98708a7cd29c34c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.7 MB (41660880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a7e442679bddcb156a6da296ae501b99b11c330edeeaa4f2d336903b36a93cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 13 Dec 2017 08:18:08 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 13 Dec 2017 08:18:13 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Dec 2017 08:18:35 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 13 Dec 2017 08:18:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 08:18:38 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 13 Dec 2017 08:18:40 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 08:18:41 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 08:14:54 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 08:14:55 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 08:15:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 22 Dec 2017 08:15:24 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 08:15:27 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Fri, 22 Dec 2017 08:15:28 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 08:15:31 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 08:15:34 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 22 Dec 2017 08:15:35 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Fri, 22 Dec 2017 08:15:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 08:15:38 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 08:15:39 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Dec 2017 08:15:51 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Dec 2017 08:16:02 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Fri, 22 Dec 2017 08:16:04 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d1ed2187942e6103764c1aafdbb8a07c8ca518010057fe8241ae1785036c34`  
		Last Modified: Wed, 13 Dec 2017 08:26:26 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0edcdde4e4bb24d232fb81eb66c47fcc0d25af42f3b5d6d228547cd01c4eee4c`  
		Last Modified: Wed, 13 Dec 2017 08:26:25 GMT  
		Size: 9.3 KB (9261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d586348c018beacd8f060a315dc7b4d506f2132378b683c3fead6f9fa7766efe`  
		Last Modified: Wed, 13 Dec 2017 08:26:29 GMT  
		Size: 16.5 MB (16456345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f912d1158398651caa084a6fc2d7867e682d13a606000c7f834aabd9fc55ea7c`  
		Last Modified: Fri, 22 Dec 2017 08:17:19 GMT  
		Size: 12.0 MB (12039764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be8debed377719ffd4adbc441a7d0af6f08d1ea3a7dbd59e2eac00c471f330a`  
		Last Modified: Fri, 22 Dec 2017 08:17:17 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3171c2bce1c3835b9cf7eec85925c0774dd95c161dd320f3feabc6f46f325f06`  
		Last Modified: Fri, 22 Dec 2017 08:17:17 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70aa8e2fc70384bc3c37708f5f60b3b02b42d9e97999ef353df020ef15e5221a`  
		Last Modified: Fri, 22 Dec 2017 08:17:17 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7612e5863338a37568134bf4db9b2f2f61dabad4e5c6bfef2cf0b8b9ca3c0b34`  
		Last Modified: Fri, 22 Dec 2017 08:17:17 GMT  
		Size: 4.2 KB (4180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc16c0245aa6f07b26912f7e06eecb0187125695a8b2168edcfcadad80301f41`  
		Last Modified: Fri, 22 Dec 2017 08:17:40 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c2844f72c115967e7591ee3543ff7d0f7faad4b8a68275802446a6445149d6`  
		Last Modified: Fri, 22 Dec 2017 08:17:43 GMT  
		Size: 11.1 MB (11067678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:alpine`

```console
$ docker pull rabbitmq@sha256:a4f6620edb796c70aa5de9ff8c24927b6ba5a8187232c4d50459c713b8e11e85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `rabbitmq:alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:90b06e2750b258e843e868556f3bc5ad7c89512753862c6269687efae0b3fe80
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32777224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b2875253f220da0c7e8fb76a6e3ec7c07990a564e5fb26d2829980ea39f5cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 12 Dec 2017 21:41:43 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:41:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 12 Dec 2017 21:42:01 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 12 Dec 2017 21:42:01 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 21:42:01 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 12 Dec 2017 21:42:01 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 21:42:01 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 21 Dec 2017 21:45:57 GMT
ENV RABBITMQ_VERSION=3.7.1
# Thu, 21 Dec 2017 21:45:58 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Thu, 21 Dec 2017 21:46:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 21 Dec 2017 21:46:15 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 21 Dec 2017 21:46:16 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Thu, 21 Dec 2017 21:46:16 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 21 Dec 2017 21:46:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 21 Dec 2017 21:46:25 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 21 Dec 2017 21:46:33 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Thu, 21 Dec 2017 21:46:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Dec 2017 21:46:34 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 21 Dec 2017 21:46:34 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c1a6072a0178dab7d654b6acba25999111f65220e215aa17469c267102d277`  
		Last Modified: Tue, 12 Dec 2017 21:44:03 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f1d7e091ce75ff0605b46c770dec934cddd5a7e0b02f3b6cd023f521c80eb7`  
		Last Modified: Tue, 12 Dec 2017 21:44:04 GMT  
		Size: 8.6 KB (8553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6292a4d2dfb8b5360d5c00c398460db176d6568cf938970df741532ace92088a`  
		Last Modified: Tue, 12 Dec 2017 21:44:05 GMT  
		Size: 18.7 MB (18652435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b089414b5bab92d9738a7b587335f2b46589ea337410fed306be2fec97e646`  
		Last Modified: Thu, 21 Dec 2017 21:49:39 GMT  
		Size: 12.0 MB (12045410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87bc86ebf4d9b7ae0a431b32c1e1a0dfc05bb511b6234394497aa98be30d5399`  
		Last Modified: Thu, 21 Dec 2017 21:49:33 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f15622b0a3adfbad46d71a2ab9bd1d219ec7d660e9a85f2bb792aa35450edf`  
		Last Modified: Thu, 21 Dec 2017 21:49:33 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52177a7021e2926921f06bed2402140367b9489638881c3c7cebf90a6327593a`  
		Last Modified: Thu, 21 Dec 2017 21:49:33 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1936b63aa170cce9d350b68a0686ca5932bbf55bfac91f0d590daa3e9a8478f`  
		Last Modified: Thu, 21 Dec 2017 21:49:33 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:128fd63c14bde04b9c4a2e276cdaa9dea6235a60eeefdfad4aa951066c9d8e70
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30360684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dde6965f1b9384437a32beb1d01a4719f8a7c486f4540f12366bb8fde75eb6f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Tue, 12 Dec 2017 22:29:28 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 12 Dec 2017 22:29:31 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 12 Dec 2017 22:29:49 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 12 Dec 2017 22:29:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 22:29:49 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 12 Dec 2017 22:29:50 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 22:29:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 21 Dec 2017 22:29:25 GMT
ENV RABBITMQ_VERSION=3.7.1
# Thu, 21 Dec 2017 22:29:25 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 22:29:37 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 22 Dec 2017 22:29:37 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 22:29:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Fri, 22 Dec 2017 22:29:38 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 22:29:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 22:29:40 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 22 Dec 2017 22:29:40 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Fri, 22 Dec 2017 22:29:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 22:29:40 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 22:29:40 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9f4ef04f158d5563eb96ea67bbbd10533494056e819df3e002e09e93aad6dd`  
		Last Modified: Wed, 13 Dec 2017 02:05:18 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a83132a783f9ca240cda4cc4331243e673e7b212ee99470582aa35be2d61e6`  
		Last Modified: Wed, 13 Dec 2017 02:05:17 GMT  
		Size: 8.7 KB (8715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6669a7b0dc467da6f3e91bc37fc1992f9c5ac9397f55634c4d2ff713d09bd334`  
		Last Modified: Wed, 13 Dec 2017 02:05:21 GMT  
		Size: 16.3 MB (16268883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbc7168607343956af7dcaa96f58499d5e4759673b5945ced9c1b6cfbb72ae62`  
		Last Modified: Fri, 22 Dec 2017 22:30:19 GMT  
		Size: 12.0 MB (12038626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c93de07707d93fe0b3b02ca6f44a4f13994bf0ce39784855235a14c9d340eca`  
		Last Modified: Fri, 22 Dec 2017 22:30:17 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e36da3412f0fad2e5cca99cb191b0b30b749a2261488a70a9f1fd320af50396`  
		Last Modified: Fri, 22 Dec 2017 22:30:17 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114b60bece05a2b6be5d2bca34f760f42da64d3264d79535289c246622b63534`  
		Last Modified: Fri, 22 Dec 2017 22:30:17 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:443fa80972c987c6a56c669cbc97108c0a963332f2bea147319de0d81746cb9f`  
		Last Modified: Fri, 22 Dec 2017 22:30:17 GMT  
		Size: 4.2 KB (4178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:307c2d68eb4ef049d32316e42ab711821efb9c25451068755768fe5654e6c603
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30294188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a3c12b7295c0adc9c57fd587d22b2d77086ab0e01c4ce4c37a862553b802e33`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 13 Dec 2017 14:57:23 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:57:26 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Dec 2017 14:57:46 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 13 Dec 2017 14:57:47 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 14:57:48 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 13 Dec 2017 14:57:48 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 14:57:49 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 14:54:44 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 14:54:44 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 14:54:57 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 22 Dec 2017 14:54:58 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 14:54:59 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Fri, 22 Dec 2017 14:55:00 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 14:55:01 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 14:55:03 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 22 Dec 2017 14:55:03 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Fri, 22 Dec 2017 14:55:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 14:55:05 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 14:55:05 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8c4ed88f638b23b4b44a51af5828b7ca6cf492e10d10b6517f03b2dc5f9c6a`  
		Last Modified: Wed, 13 Dec 2017 15:05:55 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec871b8e16217284a5c9467fc885f9330b7cf594b88a9d251f442a31f9b11982`  
		Last Modified: Wed, 13 Dec 2017 15:05:55 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc676aee1200891fd5416055f87903087826e98535cbd81dcb50768900244552`  
		Last Modified: Wed, 13 Dec 2017 15:06:00 GMT  
		Size: 16.3 MB (16252090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213f96c29a6fa093c23a462408772468af6b41603f9f804f69b2206fbc84a25b`  
		Last Modified: Fri, 22 Dec 2017 14:57:06 GMT  
		Size: 12.0 MB (12038502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:188e7efaae29b7712cb6dd21ddca9143c50d4faab9a53473748029b7ae539a7e`  
		Last Modified: Fri, 22 Dec 2017 14:57:04 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5cebb19a31ee23a6b53957154c787ba8dc91c115322e1dbeac1e44df505f79`  
		Last Modified: Fri, 22 Dec 2017 14:57:04 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed879368aff199bfcb6dbf7869c598a9b650f7cbcbce982d9bd073a9e0104e4`  
		Last Modified: Fri, 22 Dec 2017 14:57:04 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1884d950d65ccb72b718cc0c4453e7f9a25cc4008a45bd77597d751fcd3f59a`  
		Last Modified: Fri, 22 Dec 2017 14:57:04 GMT  
		Size: 4.2 KB (4175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:bc067e03ffe888475cce161bb9e1677ae0e6b7a4259083c6afbc2c8bbb356a08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30593007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9ddb77aa01e33ad43deed7be54170f6a226814a23ab9a118baf5370ebfa1218`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 13 Dec 2017 08:18:08 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 13 Dec 2017 08:18:13 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Dec 2017 08:18:35 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 13 Dec 2017 08:18:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 08:18:38 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 13 Dec 2017 08:18:40 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 08:18:41 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 08:14:54 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 08:14:55 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 08:15:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 22 Dec 2017 08:15:24 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 08:15:27 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Fri, 22 Dec 2017 08:15:28 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 08:15:31 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 08:15:34 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 22 Dec 2017 08:15:35 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Fri, 22 Dec 2017 08:15:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 08:15:38 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 08:15:39 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d1ed2187942e6103764c1aafdbb8a07c8ca518010057fe8241ae1785036c34`  
		Last Modified: Wed, 13 Dec 2017 08:26:26 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0edcdde4e4bb24d232fb81eb66c47fcc0d25af42f3b5d6d228547cd01c4eee4c`  
		Last Modified: Wed, 13 Dec 2017 08:26:25 GMT  
		Size: 9.3 KB (9261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d586348c018beacd8f060a315dc7b4d506f2132378b683c3fead6f9fa7766efe`  
		Last Modified: Wed, 13 Dec 2017 08:26:29 GMT  
		Size: 16.5 MB (16456345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f912d1158398651caa084a6fc2d7867e682d13a606000c7f834aabd9fc55ea7c`  
		Last Modified: Fri, 22 Dec 2017 08:17:19 GMT  
		Size: 12.0 MB (12039764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be8debed377719ffd4adbc441a7d0af6f08d1ea3a7dbd59e2eac00c471f330a`  
		Last Modified: Fri, 22 Dec 2017 08:17:17 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3171c2bce1c3835b9cf7eec85925c0774dd95c161dd320f3feabc6f46f325f06`  
		Last Modified: Fri, 22 Dec 2017 08:17:17 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70aa8e2fc70384bc3c37708f5f60b3b02b42d9e97999ef353df020ef15e5221a`  
		Last Modified: Fri, 22 Dec 2017 08:17:17 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7612e5863338a37568134bf4db9b2f2f61dabad4e5c6bfef2cf0b8b9ca3c0b34`  
		Last Modified: Fri, 22 Dec 2017 08:17:17 GMT  
		Size: 4.2 KB (4180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:latest`

```console
$ docker pull rabbitmq@sha256:0801cfa72cd71e9b44e36968734692c22963171225d8aae680521c50f6cdc685
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `rabbitmq:latest` - linux; amd64

```console
$ docker pull rabbitmq@sha256:7c42a55a0f6f3d7caed26193946b60c951d68b2e0df7b5831b92e2e16f6420d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.1 MB (68059635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:985d533705b0e6021a6a033c1610f6791330c31c71f73b88528a4bef1b0074e5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:40:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:40:50 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:40:50 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 23:25:20 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 23:25:21 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 12 Dec 2017 23:25:37 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:25:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 23:25:38 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 23:25:38 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 21 Dec 2017 21:43:52 GMT
ENV RABBITMQ_VERSION=3.7.1
# Thu, 21 Dec 2017 21:43:52 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Thu, 21 Dec 2017 21:43:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Thu, 21 Dec 2017 21:44:19 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 21:44:19 GMT
ENV LANG=C.UTF-8
# Thu, 21 Dec 2017 21:44:19 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 21 Dec 2017 21:44:20 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 21 Dec 2017 21:44:28 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 21 Dec 2017 21:44:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 21 Dec 2017 21:44:37 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 21 Dec 2017 21:44:38 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Thu, 21 Dec 2017 21:44:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 21 Dec 2017 21:44:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Dec 2017 21:44:47 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 21 Dec 2017 21:44:47 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad90649c4d840febdaefa1afaad7ef8bbf2e0087ba1d11a95968afce0503f342`  
		Last Modified: Tue, 12 Dec 2017 21:45:30 GMT  
		Size: 4.5 MB (4498351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a318b914d6cead2434cc74ee74c48511ad6ec06a38ab190157246497f44afb1`  
		Last Modified: Tue, 12 Dec 2017 21:45:28 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cedd60f70052462179e86a0439f5fb3fa7b40f41dc55be9152bd147181481594`  
		Last Modified: Tue, 12 Dec 2017 23:26:36 GMT  
		Size: 951.9 KB (951937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ec28761801c452cb366afa1cbb7946bada161eb77899d9ca9a59a219e9ff42`  
		Last Modified: Tue, 12 Dec 2017 23:26:35 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fa44aa9074bb2e24649ebe2dae2f852f9443a052fd9cdfd4d11bcd86d967f7`  
		Last Modified: Tue, 12 Dec 2017 23:26:38 GMT  
		Size: 27.3 MB (27330555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf3e1e07c991ce96a21e3642cb8dbb20ef673739bb6f4d8b850380b2572f106`  
		Last Modified: Thu, 21 Dec 2017 21:47:31 GMT  
		Size: 12.8 MB (12781820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3ef1cea93bbcaa3a76d6c6e253976b8440ad24969e0ba907e173742c6ff50a`  
		Last Modified: Thu, 21 Dec 2017 21:47:26 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5ab9c082d6d13b0bb80318aa78027016a9d5673b8a552f065eeca6674c15e0`  
		Last Modified: Thu, 21 Dec 2017 21:47:28 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607d775f273a65211519680d67816f79ac0aa561a7ad364fac03c097c063fffd`  
		Last Modified: Thu, 21 Dec 2017 21:47:26 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1b766cfd2d4024d5591163073df0750727ccb125db1eeb9a92e9f364ed081d`  
		Last Modified: Thu, 21 Dec 2017 21:47:26 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca5c4856b55a852a371ef4afdddb1d16d94afe44c88221e14d84d8fdd6070df`  
		Last Modified: Thu, 21 Dec 2017 21:47:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:80833893929db23335409663f6f3f9dce91009c39c8219a9819b6e2a6693a80d
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63934407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cf7364430bbfd372da7cc8acc7115aa1c664296e7d64f3eca590db112de451b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 21:02:20 GMT
ADD file:f69e5781e9ff2a9867d94175d91d31553e07613bf4b50a1064274ed21a5ed353 in / 
# Tue, 12 Dec 2017 21:02:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 23:14:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:14:46 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 23:14:46 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 23:15:03 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 23:15:05 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 12 Dec 2017 23:15:44 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:15:45 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 23:15:45 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 23:15:46 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 15:14:24 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 15:14:24 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 15:14:24 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 15:14:59 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 15:15:00 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 15:15:00 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 15:15:01 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 15:15:01 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 15:15:02 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 15:15:03 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 15:15:03 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 15:15:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 15:15:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 15:15:05 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 15:15:05 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:20f319b2549a8d631c2e8034bfc3f9c12042d86a686470a8addd2fb7bc8c688c`  
		Last Modified: Tue, 12 Dec 2017 21:12:53 GMT  
		Size: 21.2 MB (21160630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608d8fd7a6001a09dff4cc76414aa4711207466847dfa91271aa6dd09becdd6a`  
		Last Modified: Tue, 12 Dec 2017 23:21:52 GMT  
		Size: 4.2 MB (4231488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d214c26ea8bd4ea1468f2b7c9806f8f3cde7cd6c2f09660325ea38b81dcb9c13`  
		Last Modified: Tue, 12 Dec 2017 23:21:50 GMT  
		Size: 4.1 KB (4082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9640468e3e315e94fa5dfdb6b79a97eb7f83beebca51e85a68ab3ef6a4b13106`  
		Last Modified: Tue, 12 Dec 2017 23:21:51 GMT  
		Size: 942.4 KB (942449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce50058b2ae9912872489ab639895bd412cd17a9a299fe4e208704d0ef03dd1f`  
		Last Modified: Tue, 12 Dec 2017 23:21:50 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de8bff935da4e19ec18fec56ba68c2cf72e41a4ad936934d6927c22d50d69dab`  
		Last Modified: Tue, 12 Dec 2017 23:21:56 GMT  
		Size: 24.8 MB (24837409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e7f60fa5b5600f52ceb2a5f847f939fe4fd9c88497a4af04f1a9e56a3a0226`  
		Last Modified: Fri, 22 Dec 2017 15:15:56 GMT  
		Size: 12.8 MB (12751160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1d9062191080161364b2f92fb7b1bc2983ebc261432e26e2bc529d2025a00f`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2b1a936349f6aef924d33f3b3246245ff7e15ae50f93604d15e363cf2060b9`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730970b7986ad9f4e2039724474364f61070660fb564efdf61ce67e5141ac8c9`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207f615d05708cbe302cf9382a9c2b2dc41910c9cf69dc913d7c5c02870c6138`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3005d65e7f419893d506d416f107fd2d6e82fa13eb5c86f95da855ba0dae6683`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:8415c49874d55b1dc22a02ac7f20b4bfc9506bba8d3f867a8f6fe0c44f296954
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61340853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c09030ed31aebfd1616699344097393e83013a45d2d366f34ac91daf746883dc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 13:33:42 GMT
ADD file:cfde12259adb7102e76690e986f1b9b07967a8984c85d0cead09969f5de8b8cc in / 
# Tue, 12 Dec 2017 13:33:42 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:07:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:07:51 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:07:52 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 14:08:30 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Dec 2017 14:08:31 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 13 Dec 2017 14:09:04 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:09:05 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 14:09:05 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 14:09:05 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 14:07:26 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 14:07:27 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 14:07:27 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 14:07:56 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 14:07:56 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 14:07:56 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 14:07:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 14:07:57 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 14:07:58 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 14:07:59 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 14:08:00 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 14:08:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 14:08:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 14:08:01 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 14:08:02 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:cd8b673adb84fd5eae3444d0475addad7e8908a8332704c4407baa97e9b0b284`  
		Last Modified: Tue, 12 Dec 2017 13:45:48 GMT  
		Size: 19.3 MB (19271028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681dc17295c86c86ee974da339cea0f010f6f5780ffd3b6fd3fa6b2a3d124fdd`  
		Last Modified: Wed, 13 Dec 2017 14:13:29 GMT  
		Size: 3.9 MB (3868482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03995e4857910fd538adfc3a896164f12117829662b917fd93835e24ec792b07`  
		Last Modified: Wed, 13 Dec 2017 14:13:28 GMT  
		Size: 4.1 KB (4083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7dd231e7e929346f4a5183b1f2df19bd46ef0f6ea9b79077593abd76f02737`  
		Last Modified: Wed, 13 Dec 2017 14:13:27 GMT  
		Size: 926.2 KB (926167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a6235a7077293b77a5763b50aeb4468250c3243e9a414e68ade282ba5457045`  
		Last Modified: Wed, 13 Dec 2017 14:13:27 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de253191eb0702e608f45381e5cf3de24ea4a760bc740b04a51e8bd4f577b6c7`  
		Last Modified: Wed, 13 Dec 2017 14:13:32 GMT  
		Size: 24.5 MB (24541142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b25fd4ba6b057fcbdbc2eec693d0f5c4df5a0459298926d4ad5302470e210de`  
		Last Modified: Fri, 22 Dec 2017 14:08:44 GMT  
		Size: 12.7 MB (12722767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c51fcc7b5312d66fe5f92da771aabe0349c6b3ad5d89d2d84858838fe16f4dc4`  
		Last Modified: Fri, 22 Dec 2017 14:08:42 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a588b73dbd75765122fbcfce25f9fc9c7cf5b6a37369df109328c081651975`  
		Last Modified: Fri, 22 Dec 2017 14:08:42 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78eddee1ed060160ee996266461b5bc661be8de27a56b8710f605999fce94a55`  
		Last Modified: Fri, 22 Dec 2017 14:08:42 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0979543707ff6994fd7f35ad5fda8fe9232cb2eb73d09e0a740a9585f4eaefe`  
		Last Modified: Fri, 22 Dec 2017 14:08:42 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f9032304b59cc4b820894fba66c025f4d2617438299f19d22ce540ff0bbf2c`  
		Last Modified: Fri, 22 Dec 2017 14:08:41 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:f5fbc534056e27a0d7fac58d4a2303fe3f8d1e042c6f417c009878a65338ccab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.8 MB (62843058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd6196523f123394559c88d676a03a9bc4aa5f54a545eea8ca3643622468e3e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 18:34:13 GMT
ADD file:6e068c7cc5397bfb4ec60dab4d410c5d3ba724f20ad0129d2032fb509f0eadcd in / 
# Tue, 12 Dec 2017 18:34:14 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:53:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:53:52 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:53:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 14:54:26 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Dec 2017 14:54:27 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 13 Dec 2017 14:55:29 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:55:29 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 14:55:30 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 14:55:31 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 14:52:43 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 14:52:44 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 14:52:44 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 14:53:42 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 14:53:43 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 14:53:43 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 14:53:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 14:53:45 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 14:53:47 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 14:53:48 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 14:53:49 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 14:53:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 14:53:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 14:53:52 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 14:53:54 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:fcad8cfc11c78a53ccf9aafafcb3ded5044dbd181977e6255aea54fbe164f131`  
		Last Modified: Tue, 12 Dec 2017 18:49:05 GMT  
		Size: 20.3 MB (20331270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb3f7722e72f404b7e544c9a358cc7390f02c0b391a14ea7dbecd85dca7d195`  
		Last Modified: Wed, 13 Dec 2017 15:03:22 GMT  
		Size: 4.1 MB (4073192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c72eaa15e586a9eb8cbde84a24922fdabb2aa060ef64831fb867757ac6f83a`  
		Last Modified: Wed, 13 Dec 2017 15:03:21 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ebe8f28a8d2ed828ab5c0431545a097e3f46a3ac45e36976fde6daa9fb405d`  
		Last Modified: Wed, 13 Dec 2017 15:03:21 GMT  
		Size: 919.4 KB (919386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf8546d6f1127383410e3244beb4a3873b3305deab0f469ac13d1d0b112dee1`  
		Last Modified: Wed, 13 Dec 2017 15:03:19 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aabe4d57c4c33847b3343b87c3d4b7f0efe523535a70b98185a7237848d3780d`  
		Last Modified: Wed, 13 Dec 2017 15:03:23 GMT  
		Size: 24.8 MB (24762935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29da1f88f7abd4ac706158ed66c3edd95c77c626b118d1430d9d987863a8a126`  
		Last Modified: Fri, 22 Dec 2017 14:55:58 GMT  
		Size: 12.7 MB (12745013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d9eb1dcd2f690fa686a4c2c6917a9dac1f2b83e58f873c6fa1c629a5ea35f5`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4be7195e35d31a0b3d5223c2099f6fbede7f22121454696afa9a2cb4dadb95`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ff3a93de492dfc8fd837c437a30e6d9e1360bee1f8243c1f3e7fefd4b9e617`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844056b16c3b8fb059c428a9d4c451310e81bdb909d039ddf20b1ed76ed06e4a`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:735d3dd7df678c1257c4ae682480c3e6357b26e308b36d0de392350370c0888a`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; 386

```console
$ docker pull rabbitmq@sha256:616595177e8d2b75cc95daad6a82db183db9cd950e9a37a2b622cfb6285ac4d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.2 MB (69190637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5072ef5c905c462c763afaf1c3d3843a718f59c02429f9ae98d3e1ed076273fd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 14:36:09 GMT
ADD file:ef60a5257bf2b5766f692e39f5922bbd6161e45de184b7b138522d53a477c7af in / 
# Tue, 12 Dec 2017 14:36:09 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:14:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:14:35 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:14:36 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 21:14:51 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 21:14:52 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 12 Dec 2017 21:15:34 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:16:46 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 21:16:46 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 21:16:47 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 11:44:32 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 11:44:32 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 11:44:32 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 11:45:06 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 11:45:06 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 11:45:07 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 11:45:07 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 11:45:08 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 11:45:09 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 11:45:10 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 11:45:10 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 11:45:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 11:45:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 11:45:12 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 11:45:12 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:4dbce982b05e209cf10a433462dc417f7816c47b0c1a151c8c93206b299b9a14`  
		Last Modified: Tue, 12 Dec 2017 15:03:13 GMT  
		Size: 23.1 MB (23122456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7c11e0bc622b0180ed093c8a4da0dc404613fc4331a2436a3669aa08c6e818`  
		Last Modified: Tue, 12 Dec 2017 21:33:10 GMT  
		Size: 4.8 MB (4803791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f7b212f68d587a5e50aa75b4635c7d49a9c744d221e091404cb2d1cf4327a1`  
		Last Modified: Tue, 12 Dec 2017 21:33:05 GMT  
		Size: 4.1 KB (4055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb0df0b481030711e1f4ccd5b60509dc4796c769e4d46ddf668819aba41c5d2`  
		Last Modified: Tue, 12 Dec 2017 21:33:05 GMT  
		Size: 931.6 KB (931574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e040f21d8962aea7005a7379e4852e408931ff4c1985b8debde30f1bcf14ca`  
		Last Modified: Tue, 12 Dec 2017 21:33:04 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5bbc5be701d46339ee9aa060f79d61ef2ea60c0a862dc9663bac7b97a8e169`  
		Last Modified: Tue, 12 Dec 2017 21:33:12 GMT  
		Size: 27.5 MB (27520131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dd9d2d069c706f3eb2155b3dabc19696c54dab8db1f74d481620e43b536063`  
		Last Modified: Fri, 22 Dec 2017 11:55:52 GMT  
		Size: 12.8 MB (12801444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d343d516c0b988f110df224a9f3ee502c2944e219fec1709fbcdef0a2d79fd19`  
		Last Modified: Fri, 22 Dec 2017 11:55:49 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c56b61dcb2f766abe51f40166e31dbba5e82d9061c43cf893618dacf6e843a`  
		Last Modified: Fri, 22 Dec 2017 11:55:50 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201b9543f2613c0e5a4e7b0ab82b519914eac5df575950c633193f2c8824d789`  
		Last Modified: Fri, 22 Dec 2017 11:55:49 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b6e713106094f76728ce4a7295830a2731aec1036997346ad433cd99ae0cc1`  
		Last Modified: Fri, 22 Dec 2017 11:55:49 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2ee59155be9f185db1c45800e79d5a35f93f7ff635ed223e35ed867144b11f`  
		Last Modified: Fri, 22 Dec 2017 11:55:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:8e0209bc629d15ea577869b6e80da74bf0c1365b5ca155482a1a5544bf3ef370
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65807973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:689fec414af9c1de5f6d31c906788b6d7925304e067ac1169288539ebf33f738`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:41 GMT
ADD file:896602a6d015367badb26a7ac0bcafc9aa04cbba205925631d315874b6d289ab in / 
# Tue, 12 Dec 2017 01:35:42 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 08:12:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 08:12:31 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 08:12:32 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 08:14:14 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Dec 2017 08:14:18 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 13 Dec 2017 08:15:55 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 08:15:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 08:15:58 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 08:15:59 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 08:11:41 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 08:11:42 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 08:11:43 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 08:13:32 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 08:13:33 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 08:13:35 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 08:13:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 08:13:40 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 08:13:44 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 08:13:47 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 08:13:49 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 08:13:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 08:13:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 08:13:56 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 08:13:58 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:b8b738bec437a97371af422179183d09cdb031f677b2dba4deaed774655ee9d8`  
		Last Modified: Tue, 12 Dec 2017 01:42:57 GMT  
		Size: 22.7 MB (22739713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074d2b018f7cf8971581f936aa1922718699254821ac925337d59075ff941e16`  
		Last Modified: Wed, 13 Dec 2017 08:25:16 GMT  
		Size: 4.4 MB (4360551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b59ed4bf511e4fbf8389c0a178fefb54388dd09f9fd41997517b5a18a77175`  
		Last Modified: Wed, 13 Dec 2017 08:25:12 GMT  
		Size: 4.1 KB (4108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd7fb01f62115b9286f1e6a7d47d0c323e3b09c6bd6d04e59fd6af3b2fd8704`  
		Last Modified: Wed, 13 Dec 2017 08:25:13 GMT  
		Size: 920.7 KB (920674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099a031f5f0df72a460e1d66fecbf4ebbbf062936d2d9a8474264bb64a6a9648`  
		Last Modified: Wed, 13 Dec 2017 08:25:11 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb365591fec586b108056a7461f34fbbecd7f579b59712c6a72e43c3f8a1ef2`  
		Last Modified: Wed, 13 Dec 2017 08:25:16 GMT  
		Size: 25.0 MB (25011533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71dec33419700d0f4ab4a2c6d04c32e0e811973a45d24dbb741f0e5c544626cd`  
		Last Modified: Fri, 22 Dec 2017 08:16:27 GMT  
		Size: 12.8 MB (12764207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87adf3e9f6eba9ab4607b32716f7215c55a2f806a03c2bccb9f8a257fc04a858`  
		Last Modified: Fri, 22 Dec 2017 08:16:23 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64119cdea63aa56eedbd3de89d9a94496cabe2b1240b80e04b8d4ff820192c7e`  
		Last Modified: Fri, 22 Dec 2017 08:16:22 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ad894a8943fd9b3886182a7ecd367c26e00d9dc7760423f84af98660baa32d`  
		Last Modified: Fri, 22 Dec 2017 08:16:23 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5642e99657653ea39a6ab4e3c63ff62e290143d100ce93a059c6119f4f3bce6`  
		Last Modified: Fri, 22 Dec 2017 08:16:23 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddec69e1fb6fe0e5c70e3e4e7998629d0e99560968d92265991602aa9cc82bbd`  
		Last Modified: Fri, 22 Dec 2017 08:16:22 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management`

```console
$ docker pull rabbitmq@sha256:6b6be1f8a4d57befac70e53ae6391effadde140993b8c20d16d5aa9a1690dff1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `rabbitmq:management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:ce7b330e653a03f34845cfeb2048ee51db81c095dba50770f1485221624ec454
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.7 MB (75682058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3c1af531bfa286b607e0e9d0bd6637d0c8c12b399dadb387e487096a118974a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:40:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:40:50 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:40:50 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 23:25:20 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 23:25:21 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 12 Dec 2017 23:25:37 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:25:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 23:25:38 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 23:25:38 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 21 Dec 2017 21:43:52 GMT
ENV RABBITMQ_VERSION=3.7.1
# Thu, 21 Dec 2017 21:43:52 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Thu, 21 Dec 2017 21:43:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Thu, 21 Dec 2017 21:44:19 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 21:44:19 GMT
ENV LANG=C.UTF-8
# Thu, 21 Dec 2017 21:44:19 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 21 Dec 2017 21:44:20 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 21 Dec 2017 21:44:28 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 21 Dec 2017 21:44:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 21 Dec 2017 21:44:37 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 21 Dec 2017 21:44:38 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Thu, 21 Dec 2017 21:44:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 21 Dec 2017 21:44:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Dec 2017 21:44:47 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 21 Dec 2017 21:44:47 GMT
CMD ["rabbitmq-server"]
# Thu, 21 Dec 2017 21:45:24 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 21 Dec 2017 21:45:39 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Thu, 21 Dec 2017 21:45:40 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad90649c4d840febdaefa1afaad7ef8bbf2e0087ba1d11a95968afce0503f342`  
		Last Modified: Tue, 12 Dec 2017 21:45:30 GMT  
		Size: 4.5 MB (4498351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a318b914d6cead2434cc74ee74c48511ad6ec06a38ab190157246497f44afb1`  
		Last Modified: Tue, 12 Dec 2017 21:45:28 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cedd60f70052462179e86a0439f5fb3fa7b40f41dc55be9152bd147181481594`  
		Last Modified: Tue, 12 Dec 2017 23:26:36 GMT  
		Size: 951.9 KB (951937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ec28761801c452cb366afa1cbb7946bada161eb77899d9ca9a59a219e9ff42`  
		Last Modified: Tue, 12 Dec 2017 23:26:35 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fa44aa9074bb2e24649ebe2dae2f852f9443a052fd9cdfd4d11bcd86d967f7`  
		Last Modified: Tue, 12 Dec 2017 23:26:38 GMT  
		Size: 27.3 MB (27330555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf3e1e07c991ce96a21e3642cb8dbb20ef673739bb6f4d8b850380b2572f106`  
		Last Modified: Thu, 21 Dec 2017 21:47:31 GMT  
		Size: 12.8 MB (12781820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3ef1cea93bbcaa3a76d6c6e253976b8440ad24969e0ba907e173742c6ff50a`  
		Last Modified: Thu, 21 Dec 2017 21:47:26 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5ab9c082d6d13b0bb80318aa78027016a9d5673b8a552f065eeca6674c15e0`  
		Last Modified: Thu, 21 Dec 2017 21:47:28 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607d775f273a65211519680d67816f79ac0aa561a7ad364fac03c097c063fffd`  
		Last Modified: Thu, 21 Dec 2017 21:47:26 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1b766cfd2d4024d5591163073df0750727ccb125db1eeb9a92e9f364ed081d`  
		Last Modified: Thu, 21 Dec 2017 21:47:26 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca5c4856b55a852a371ef4afdddb1d16d94afe44c88221e14d84d8fdd6070df`  
		Last Modified: Thu, 21 Dec 2017 21:47:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d24bb85705e9e92239e95be1af2ef6bc9965cf09fb05e6f30a4de1d3aad4e214`  
		Last Modified: Thu, 21 Dec 2017 21:48:31 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffc927f7905fbf60fc741f2b666857c6bc7041d7c12430b915c787fb7a95d78`  
		Last Modified: Thu, 21 Dec 2017 21:48:36 GMT  
		Size: 7.6 MB (7622231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:ffb97a38b0a4fd039b1248ddcfa295fccacc54abdafec1bbf2bc29673b2aea87
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.4 MB (71406814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9606fe70b34d9a161737c5b82040ed0c75238e6fdc8a97629a22c498792cdf07`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 21:02:20 GMT
ADD file:f69e5781e9ff2a9867d94175d91d31553e07613bf4b50a1064274ed21a5ed353 in / 
# Tue, 12 Dec 2017 21:02:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 23:14:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:14:46 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 23:14:46 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 23:15:03 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 23:15:05 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 12 Dec 2017 23:15:44 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:15:45 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 23:15:45 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 23:15:46 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 15:14:24 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 15:14:24 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 15:14:24 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 15:14:59 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 15:15:00 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 15:15:00 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 15:15:01 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 15:15:01 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 15:15:02 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 15:15:03 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 15:15:03 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 15:15:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 15:15:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 15:15:05 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 15:15:05 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Dec 2017 15:15:16 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Dec 2017 15:15:35 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 22 Dec 2017 15:15:36 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:20f319b2549a8d631c2e8034bfc3f9c12042d86a686470a8addd2fb7bc8c688c`  
		Last Modified: Tue, 12 Dec 2017 21:12:53 GMT  
		Size: 21.2 MB (21160630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608d8fd7a6001a09dff4cc76414aa4711207466847dfa91271aa6dd09becdd6a`  
		Last Modified: Tue, 12 Dec 2017 23:21:52 GMT  
		Size: 4.2 MB (4231488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d214c26ea8bd4ea1468f2b7c9806f8f3cde7cd6c2f09660325ea38b81dcb9c13`  
		Last Modified: Tue, 12 Dec 2017 23:21:50 GMT  
		Size: 4.1 KB (4082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9640468e3e315e94fa5dfdb6b79a97eb7f83beebca51e85a68ab3ef6a4b13106`  
		Last Modified: Tue, 12 Dec 2017 23:21:51 GMT  
		Size: 942.4 KB (942449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce50058b2ae9912872489ab639895bd412cd17a9a299fe4e208704d0ef03dd1f`  
		Last Modified: Tue, 12 Dec 2017 23:21:50 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de8bff935da4e19ec18fec56ba68c2cf72e41a4ad936934d6927c22d50d69dab`  
		Last Modified: Tue, 12 Dec 2017 23:21:56 GMT  
		Size: 24.8 MB (24837409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e7f60fa5b5600f52ceb2a5f847f939fe4fd9c88497a4af04f1a9e56a3a0226`  
		Last Modified: Fri, 22 Dec 2017 15:15:56 GMT  
		Size: 12.8 MB (12751160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1d9062191080161364b2f92fb7b1bc2983ebc261432e26e2bc529d2025a00f`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2b1a936349f6aef924d33f3b3246245ff7e15ae50f93604d15e363cf2060b9`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730970b7986ad9f4e2039724474364f61070660fb564efdf61ce67e5141ac8c9`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207f615d05708cbe302cf9382a9c2b2dc41910c9cf69dc913d7c5c02870c6138`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3005d65e7f419893d506d416f107fd2d6e82fa13eb5c86f95da855ba0dae6683`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081ff403ae0e159713237cec2151bc7947ae5eb26ec78c5fdccb58fa991c0906`  
		Last Modified: Fri, 22 Dec 2017 15:16:11 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1c8daba1791e89d5cfd91acbd604ef8ab72dc642a30aecbd876eb96bbb4dc8`  
		Last Modified: Fri, 22 Dec 2017 15:16:15 GMT  
		Size: 7.5 MB (7472214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:5f8ae6369dc47a4350d6cce1828130cf56d2eade2c5c97fb77337285d5f00338
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.5 MB (68523704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cbac589adc82218f6e8c865d22901877e8dbce390002f44c280ff78cb956edd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 13:33:42 GMT
ADD file:cfde12259adb7102e76690e986f1b9b07967a8984c85d0cead09969f5de8b8cc in / 
# Tue, 12 Dec 2017 13:33:42 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:07:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:07:51 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:07:52 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 14:08:30 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Dec 2017 14:08:31 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 13 Dec 2017 14:09:04 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:09:05 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 14:09:05 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 14:09:05 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 14:07:26 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 14:07:27 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 14:07:27 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 14:07:56 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 14:07:56 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 14:07:56 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 14:07:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 14:07:57 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 14:07:58 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 14:07:59 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 14:08:00 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 14:08:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 14:08:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 14:08:01 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 14:08:02 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Dec 2017 14:08:12 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Dec 2017 14:08:26 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 22 Dec 2017 14:08:26 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:cd8b673adb84fd5eae3444d0475addad7e8908a8332704c4407baa97e9b0b284`  
		Last Modified: Tue, 12 Dec 2017 13:45:48 GMT  
		Size: 19.3 MB (19271028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681dc17295c86c86ee974da339cea0f010f6f5780ffd3b6fd3fa6b2a3d124fdd`  
		Last Modified: Wed, 13 Dec 2017 14:13:29 GMT  
		Size: 3.9 MB (3868482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03995e4857910fd538adfc3a896164f12117829662b917fd93835e24ec792b07`  
		Last Modified: Wed, 13 Dec 2017 14:13:28 GMT  
		Size: 4.1 KB (4083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7dd231e7e929346f4a5183b1f2df19bd46ef0f6ea9b79077593abd76f02737`  
		Last Modified: Wed, 13 Dec 2017 14:13:27 GMT  
		Size: 926.2 KB (926167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a6235a7077293b77a5763b50aeb4468250c3243e9a414e68ade282ba5457045`  
		Last Modified: Wed, 13 Dec 2017 14:13:27 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de253191eb0702e608f45381e5cf3de24ea4a760bc740b04a51e8bd4f577b6c7`  
		Last Modified: Wed, 13 Dec 2017 14:13:32 GMT  
		Size: 24.5 MB (24541142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b25fd4ba6b057fcbdbc2eec693d0f5c4df5a0459298926d4ad5302470e210de`  
		Last Modified: Fri, 22 Dec 2017 14:08:44 GMT  
		Size: 12.7 MB (12722767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c51fcc7b5312d66fe5f92da771aabe0349c6b3ad5d89d2d84858838fe16f4dc4`  
		Last Modified: Fri, 22 Dec 2017 14:08:42 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a588b73dbd75765122fbcfce25f9fc9c7cf5b6a37369df109328c081651975`  
		Last Modified: Fri, 22 Dec 2017 14:08:42 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78eddee1ed060160ee996266461b5bc661be8de27a56b8710f605999fce94a55`  
		Last Modified: Fri, 22 Dec 2017 14:08:42 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0979543707ff6994fd7f35ad5fda8fe9232cb2eb73d09e0a740a9585f4eaefe`  
		Last Modified: Fri, 22 Dec 2017 14:08:42 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f9032304b59cc4b820894fba66c025f4d2617438299f19d22ce540ff0bbf2c`  
		Last Modified: Fri, 22 Dec 2017 14:08:41 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560fb52b7a723a78d283679e1522845627c3982baf9075e153ff9caba4a2c6e4`  
		Last Modified: Fri, 22 Dec 2017 14:09:00 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98661b6f7d96fce4607e860bf2b231817b8af795c3b3880b0d4afb748be1a030`  
		Last Modified: Fri, 22 Dec 2017 14:09:03 GMT  
		Size: 7.2 MB (7182658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:34c06758df278ad0d45b251865ec113771e4c4f6160a6893260436f47a90d07a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.3 MB (70317966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:642b44151b1518e53dd9401a2969cfc02e854e5a21706a750e628e00580a20b9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 18:34:13 GMT
ADD file:6e068c7cc5397bfb4ec60dab4d410c5d3ba724f20ad0129d2032fb509f0eadcd in / 
# Tue, 12 Dec 2017 18:34:14 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:53:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:53:52 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:53:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 14:54:26 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Dec 2017 14:54:27 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 13 Dec 2017 14:55:29 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:55:29 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 14:55:30 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 14:55:31 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 14:52:43 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 14:52:44 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 14:52:44 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 14:53:42 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 14:53:43 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 14:53:43 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 14:53:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 14:53:45 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 14:53:47 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 14:53:48 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 14:53:49 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 14:53:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 14:53:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 14:53:52 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 14:53:54 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Dec 2017 14:54:06 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Dec 2017 14:54:31 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 22 Dec 2017 14:54:31 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:fcad8cfc11c78a53ccf9aafafcb3ded5044dbd181977e6255aea54fbe164f131`  
		Last Modified: Tue, 12 Dec 2017 18:49:05 GMT  
		Size: 20.3 MB (20331270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb3f7722e72f404b7e544c9a358cc7390f02c0b391a14ea7dbecd85dca7d195`  
		Last Modified: Wed, 13 Dec 2017 15:03:22 GMT  
		Size: 4.1 MB (4073192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c72eaa15e586a9eb8cbde84a24922fdabb2aa060ef64831fb867757ac6f83a`  
		Last Modified: Wed, 13 Dec 2017 15:03:21 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ebe8f28a8d2ed828ab5c0431545a097e3f46a3ac45e36976fde6daa9fb405d`  
		Last Modified: Wed, 13 Dec 2017 15:03:21 GMT  
		Size: 919.4 KB (919386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf8546d6f1127383410e3244beb4a3873b3305deab0f469ac13d1d0b112dee1`  
		Last Modified: Wed, 13 Dec 2017 15:03:19 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aabe4d57c4c33847b3343b87c3d4b7f0efe523535a70b98185a7237848d3780d`  
		Last Modified: Wed, 13 Dec 2017 15:03:23 GMT  
		Size: 24.8 MB (24762935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29da1f88f7abd4ac706158ed66c3edd95c77c626b118d1430d9d987863a8a126`  
		Last Modified: Fri, 22 Dec 2017 14:55:58 GMT  
		Size: 12.7 MB (12745013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d9eb1dcd2f690fa686a4c2c6917a9dac1f2b83e58f873c6fa1c629a5ea35f5`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4be7195e35d31a0b3d5223c2099f6fbede7f22121454696afa9a2cb4dadb95`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ff3a93de492dfc8fd837c437a30e6d9e1360bee1f8243c1f3e7fefd4b9e617`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844056b16c3b8fb059c428a9d4c451310e81bdb909d039ddf20b1ed76ed06e4a`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:735d3dd7df678c1257c4ae682480c3e6357b26e308b36d0de392350370c0888a`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9d9cd1604039d8dcc780ea5535ed5d2b43e754b4c8dbbc6464b87db615e420`  
		Last Modified: Fri, 22 Dec 2017 14:56:29 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5119a6a64cf5a4211958e3e08c26929c34993764376cc195584dbd3df977b78`  
		Last Modified: Fri, 22 Dec 2017 14:56:32 GMT  
		Size: 7.5 MB (7474716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; 386

```console
$ docker pull rabbitmq@sha256:88e98ae119769fd533d75b54562935cdfdc0a4ec8de069ac184c0f062ca989d1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.9 MB (76904819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3958ed01dd62112339c25c79d333d9c1b540139cdb90754a53c746e9af743f5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 14:36:09 GMT
ADD file:ef60a5257bf2b5766f692e39f5922bbd6161e45de184b7b138522d53a477c7af in / 
# Tue, 12 Dec 2017 14:36:09 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:14:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:14:35 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:14:36 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 21:14:51 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 21:14:52 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 12 Dec 2017 21:15:34 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:16:46 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 21:16:46 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 21:16:47 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 11:44:32 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 11:44:32 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 11:44:32 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 11:45:06 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 11:45:06 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 11:45:07 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 11:45:07 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 11:45:08 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 11:45:09 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 11:45:10 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 11:45:10 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 11:45:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 11:45:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 11:45:12 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 11:45:12 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Dec 2017 11:54:11 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Dec 2017 11:54:26 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 22 Dec 2017 11:54:27 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:4dbce982b05e209cf10a433462dc417f7816c47b0c1a151c8c93206b299b9a14`  
		Last Modified: Tue, 12 Dec 2017 15:03:13 GMT  
		Size: 23.1 MB (23122456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7c11e0bc622b0180ed093c8a4da0dc404613fc4331a2436a3669aa08c6e818`  
		Last Modified: Tue, 12 Dec 2017 21:33:10 GMT  
		Size: 4.8 MB (4803791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f7b212f68d587a5e50aa75b4635c7d49a9c744d221e091404cb2d1cf4327a1`  
		Last Modified: Tue, 12 Dec 2017 21:33:05 GMT  
		Size: 4.1 KB (4055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb0df0b481030711e1f4ccd5b60509dc4796c769e4d46ddf668819aba41c5d2`  
		Last Modified: Tue, 12 Dec 2017 21:33:05 GMT  
		Size: 931.6 KB (931574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e040f21d8962aea7005a7379e4852e408931ff4c1985b8debde30f1bcf14ca`  
		Last Modified: Tue, 12 Dec 2017 21:33:04 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5bbc5be701d46339ee9aa060f79d61ef2ea60c0a862dc9663bac7b97a8e169`  
		Last Modified: Tue, 12 Dec 2017 21:33:12 GMT  
		Size: 27.5 MB (27520131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dd9d2d069c706f3eb2155b3dabc19696c54dab8db1f74d481620e43b536063`  
		Last Modified: Fri, 22 Dec 2017 11:55:52 GMT  
		Size: 12.8 MB (12801444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d343d516c0b988f110df224a9f3ee502c2944e219fec1709fbcdef0a2d79fd19`  
		Last Modified: Fri, 22 Dec 2017 11:55:49 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c56b61dcb2f766abe51f40166e31dbba5e82d9061c43cf893618dacf6e843a`  
		Last Modified: Fri, 22 Dec 2017 11:55:50 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201b9543f2613c0e5a4e7b0ab82b519914eac5df575950c633193f2c8824d789`  
		Last Modified: Fri, 22 Dec 2017 11:55:49 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b6e713106094f76728ce4a7295830a2731aec1036997346ad433cd99ae0cc1`  
		Last Modified: Fri, 22 Dec 2017 11:55:49 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2ee59155be9f185db1c45800e79d5a35f93f7ff635ed223e35ed867144b11f`  
		Last Modified: Fri, 22 Dec 2017 11:55:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3bdc13600fe8a9973af1c8caf48e8546d07c220839f891ce8b46bf4a5f333c`  
		Last Modified: Fri, 22 Dec 2017 11:56:42 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629424091621dfe51b0db70d864cb38b33efd107c9a4010550f31c5681eba5d7`  
		Last Modified: Fri, 22 Dec 2017 11:56:44 GMT  
		Size: 7.7 MB (7713989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:0e54d8ead0bc29cba2295dcb58a83ec697837b76d90a66857db8ae7663c8d644
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.6 MB (73633452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b54de25816f08e4b6129d18d6b378ffd5f3a1e8118da6f6cf60e1fd3f9b6efc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:41 GMT
ADD file:896602a6d015367badb26a7ac0bcafc9aa04cbba205925631d315874b6d289ab in / 
# Tue, 12 Dec 2017 01:35:42 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 08:12:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 08:12:31 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 08:12:32 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 08:14:14 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Dec 2017 08:14:18 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 13 Dec 2017 08:15:55 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 08:15:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 08:15:58 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 08:15:59 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 08:11:41 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 08:11:42 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 08:11:43 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 08:13:32 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 08:13:33 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 08:13:35 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 08:13:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 08:13:40 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 08:13:44 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 08:13:47 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 08:13:49 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 08:13:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 08:13:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 08:13:56 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 08:13:58 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Dec 2017 08:14:08 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Dec 2017 08:14:38 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 22 Dec 2017 08:14:39 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:b8b738bec437a97371af422179183d09cdb031f677b2dba4deaed774655ee9d8`  
		Last Modified: Tue, 12 Dec 2017 01:42:57 GMT  
		Size: 22.7 MB (22739713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074d2b018f7cf8971581f936aa1922718699254821ac925337d59075ff941e16`  
		Last Modified: Wed, 13 Dec 2017 08:25:16 GMT  
		Size: 4.4 MB (4360551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b59ed4bf511e4fbf8389c0a178fefb54388dd09f9fd41997517b5a18a77175`  
		Last Modified: Wed, 13 Dec 2017 08:25:12 GMT  
		Size: 4.1 KB (4108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd7fb01f62115b9286f1e6a7d47d0c323e3b09c6bd6d04e59fd6af3b2fd8704`  
		Last Modified: Wed, 13 Dec 2017 08:25:13 GMT  
		Size: 920.7 KB (920674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099a031f5f0df72a460e1d66fecbf4ebbbf062936d2d9a8474264bb64a6a9648`  
		Last Modified: Wed, 13 Dec 2017 08:25:11 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb365591fec586b108056a7461f34fbbecd7f579b59712c6a72e43c3f8a1ef2`  
		Last Modified: Wed, 13 Dec 2017 08:25:16 GMT  
		Size: 25.0 MB (25011533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71dec33419700d0f4ab4a2c6d04c32e0e811973a45d24dbb741f0e5c544626cd`  
		Last Modified: Fri, 22 Dec 2017 08:16:27 GMT  
		Size: 12.8 MB (12764207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87adf3e9f6eba9ab4607b32716f7215c55a2f806a03c2bccb9f8a257fc04a858`  
		Last Modified: Fri, 22 Dec 2017 08:16:23 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64119cdea63aa56eedbd3de89d9a94496cabe2b1240b80e04b8d4ff820192c7e`  
		Last Modified: Fri, 22 Dec 2017 08:16:22 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ad894a8943fd9b3886182a7ecd367c26e00d9dc7760423f84af98660baa32d`  
		Last Modified: Fri, 22 Dec 2017 08:16:23 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5642e99657653ea39a6ab4e3c63ff62e290143d100ce93a059c6119f4f3bce6`  
		Last Modified: Fri, 22 Dec 2017 08:16:23 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddec69e1fb6fe0e5c70e3e4e7998629d0e99560968d92265991602aa9cc82bbd`  
		Last Modified: Fri, 22 Dec 2017 08:16:22 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3f4ea9e63a2c8b47b2305022404e0e900ee894f6a31367c19c3a56dd271883`  
		Last Modified: Fri, 22 Dec 2017 08:16:49 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2195618c7a990523cf1761b4df3cdfeecdc2fb4ef7e1a0ba32d79107bd984cb`  
		Last Modified: Fri, 22 Dec 2017 08:16:51 GMT  
		Size: 7.8 MB (7825287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management-alpine`

```console
$ docker pull rabbitmq@sha256:50dfa18ae47e7234fcfa3a9c5b8dc26db9a4d8bfd93e830a0a78a46e3fe5fe58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `rabbitmq:management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:53040193335019b805a2d534fc25c9a672f86c91324fa00fc17d6155c6398a65
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43801800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5d4145261981d5d04f33c5edd2cb940e10e55e2ad653d9869e8347df738c690`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 12 Dec 2017 21:41:43 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:41:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 12 Dec 2017 21:42:01 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 12 Dec 2017 21:42:01 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 21:42:01 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 12 Dec 2017 21:42:01 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 21:42:01 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 21 Dec 2017 21:45:57 GMT
ENV RABBITMQ_VERSION=3.7.1
# Thu, 21 Dec 2017 21:45:58 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Thu, 21 Dec 2017 21:46:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 21 Dec 2017 21:46:15 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 21 Dec 2017 21:46:16 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Thu, 21 Dec 2017 21:46:16 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 21 Dec 2017 21:46:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 21 Dec 2017 21:46:25 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 21 Dec 2017 21:46:33 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Thu, 21 Dec 2017 21:46:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Dec 2017 21:46:34 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 21 Dec 2017 21:46:34 GMT
CMD ["rabbitmq-server"]
# Thu, 21 Dec 2017 21:47:01 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 21 Dec 2017 21:47:06 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 21 Dec 2017 21:47:07 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c1a6072a0178dab7d654b6acba25999111f65220e215aa17469c267102d277`  
		Last Modified: Tue, 12 Dec 2017 21:44:03 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f1d7e091ce75ff0605b46c770dec934cddd5a7e0b02f3b6cd023f521c80eb7`  
		Last Modified: Tue, 12 Dec 2017 21:44:04 GMT  
		Size: 8.6 KB (8553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6292a4d2dfb8b5360d5c00c398460db176d6568cf938970df741532ace92088a`  
		Last Modified: Tue, 12 Dec 2017 21:44:05 GMT  
		Size: 18.7 MB (18652435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b089414b5bab92d9738a7b587335f2b46589ea337410fed306be2fec97e646`  
		Last Modified: Thu, 21 Dec 2017 21:49:39 GMT  
		Size: 12.0 MB (12045410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87bc86ebf4d9b7ae0a431b32c1e1a0dfc05bb511b6234394497aa98be30d5399`  
		Last Modified: Thu, 21 Dec 2017 21:49:33 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f15622b0a3adfbad46d71a2ab9bd1d219ec7d660e9a85f2bb792aa35450edf`  
		Last Modified: Thu, 21 Dec 2017 21:49:33 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52177a7021e2926921f06bed2402140367b9489638881c3c7cebf90a6327593a`  
		Last Modified: Thu, 21 Dec 2017 21:49:33 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1936b63aa170cce9d350b68a0686ca5932bbf55bfac91f0d590daa3e9a8478f`  
		Last Modified: Thu, 21 Dec 2017 21:49:33 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a137ebd01df39e6c42974144762af74acae18d9eafcfcf912e2bd33a8c5b237`  
		Last Modified: Thu, 21 Dec 2017 21:50:40 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e4e957d266b9097a73021b7339bdcda9771696b0a8c355f9deeea61d0a9692`  
		Last Modified: Thu, 21 Dec 2017 21:50:42 GMT  
		Size: 11.0 MB (11024384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:4d8f93281df060d74f775a02397d0d9752fe4170baf585225bdcaf45dc016919
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41282276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9a41fe49ecaf4e0f8ddeb90a12c763383c0e71c1696b2de15964a86ec80c3c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Tue, 12 Dec 2017 22:29:28 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 12 Dec 2017 22:29:31 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 12 Dec 2017 22:29:49 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 12 Dec 2017 22:29:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 22:29:49 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 12 Dec 2017 22:29:50 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 22:29:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 21 Dec 2017 22:29:25 GMT
ENV RABBITMQ_VERSION=3.7.1
# Thu, 21 Dec 2017 22:29:25 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 22:29:37 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 22 Dec 2017 22:29:37 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 22:29:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Fri, 22 Dec 2017 22:29:38 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 22:29:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 22:29:40 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 22 Dec 2017 22:29:40 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Fri, 22 Dec 2017 22:29:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 22:29:40 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 22:29:40 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Dec 2017 22:29:55 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Dec 2017 22:30:02 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Fri, 22 Dec 2017 22:30:03 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c9f4ef04f158d5563eb96ea67bbbd10533494056e819df3e002e09e93aad6dd`  
		Last Modified: Wed, 13 Dec 2017 02:05:18 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a83132a783f9ca240cda4cc4331243e673e7b212ee99470582aa35be2d61e6`  
		Last Modified: Wed, 13 Dec 2017 02:05:17 GMT  
		Size: 8.7 KB (8715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6669a7b0dc467da6f3e91bc37fc1992f9c5ac9397f55634c4d2ff713d09bd334`  
		Last Modified: Wed, 13 Dec 2017 02:05:21 GMT  
		Size: 16.3 MB (16268883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbc7168607343956af7dcaa96f58499d5e4759673b5945ced9c1b6cfbb72ae62`  
		Last Modified: Fri, 22 Dec 2017 22:30:19 GMT  
		Size: 12.0 MB (12038626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c93de07707d93fe0b3b02ca6f44a4f13994bf0ce39784855235a14c9d340eca`  
		Last Modified: Fri, 22 Dec 2017 22:30:17 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e36da3412f0fad2e5cca99cb191b0b30b749a2261488a70a9f1fd320af50396`  
		Last Modified: Fri, 22 Dec 2017 22:30:17 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114b60bece05a2b6be5d2bca34f760f42da64d3264d79535289c246622b63534`  
		Last Modified: Fri, 22 Dec 2017 22:30:17 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:443fa80972c987c6a56c669cbc97108c0a963332f2bea147319de0d81746cb9f`  
		Last Modified: Fri, 22 Dec 2017 22:30:17 GMT  
		Size: 4.2 KB (4178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622b850b7857086b0ac66f87405afbadf920a15d924692b46648bba2e1569864`  
		Last Modified: Fri, 22 Dec 2017 22:30:31 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd151d36970f7a43f4552e088fa13b0e518a6d05c2c91ae3c2d369f96843013a`  
		Last Modified: Fri, 22 Dec 2017 22:30:35 GMT  
		Size: 10.9 MB (10921401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:92b706583d3f40dad2a1ba75ae7250ae1fe3f34eea116c10ab5da59b9fa4aab2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41189248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cdca9eb21f1d8ab16471a9c1be9d94023425e7758e64b9ec6e095f91f9b576c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 13 Dec 2017 14:57:23 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:57:26 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Dec 2017 14:57:46 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 13 Dec 2017 14:57:47 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 14:57:48 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 13 Dec 2017 14:57:48 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 14:57:49 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 14:54:44 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 14:54:44 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 14:54:57 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 22 Dec 2017 14:54:58 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 14:54:59 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Fri, 22 Dec 2017 14:55:00 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 14:55:01 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 14:55:03 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 22 Dec 2017 14:55:03 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Fri, 22 Dec 2017 14:55:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 14:55:05 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 14:55:05 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Dec 2017 14:55:19 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Dec 2017 14:55:27 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Fri, 22 Dec 2017 14:55:28 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8c4ed88f638b23b4b44a51af5828b7ca6cf492e10d10b6517f03b2dc5f9c6a`  
		Last Modified: Wed, 13 Dec 2017 15:05:55 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec871b8e16217284a5c9467fc885f9330b7cf594b88a9d251f442a31f9b11982`  
		Last Modified: Wed, 13 Dec 2017 15:05:55 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc676aee1200891fd5416055f87903087826e98535cbd81dcb50768900244552`  
		Last Modified: Wed, 13 Dec 2017 15:06:00 GMT  
		Size: 16.3 MB (16252090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213f96c29a6fa093c23a462408772468af6b41603f9f804f69b2206fbc84a25b`  
		Last Modified: Fri, 22 Dec 2017 14:57:06 GMT  
		Size: 12.0 MB (12038502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:188e7efaae29b7712cb6dd21ddca9143c50d4faab9a53473748029b7ae539a7e`  
		Last Modified: Fri, 22 Dec 2017 14:57:04 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5cebb19a31ee23a6b53957154c787ba8dc91c115322e1dbeac1e44df505f79`  
		Last Modified: Fri, 22 Dec 2017 14:57:04 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed879368aff199bfcb6dbf7869c598a9b650f7cbcbce982d9bd073a9e0104e4`  
		Last Modified: Fri, 22 Dec 2017 14:57:04 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1884d950d65ccb72b718cc0c4453e7f9a25cc4008a45bd77597d751fcd3f59a`  
		Last Modified: Fri, 22 Dec 2017 14:57:04 GMT  
		Size: 4.2 KB (4175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa300c974cdf778165d2248f3bb300a6095ca06009ac726b527c71f85c0abe01`  
		Last Modified: Fri, 22 Dec 2017 14:57:35 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2dcd19b2956b3b5eb5bbc9b69540d8d2a21161ea0b950f98c8bf0a20c6975f`  
		Last Modified: Fri, 22 Dec 2017 14:57:40 GMT  
		Size: 10.9 MB (10894869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:bc3b4e4152411de1faf12118a7b85ffa76a91eeee728c097c98708a7cd29c34c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.7 MB (41660880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a7e442679bddcb156a6da296ae501b99b11c330edeeaa4f2d336903b36a93cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 13 Dec 2017 08:18:08 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 13 Dec 2017 08:18:13 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Dec 2017 08:18:35 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 13 Dec 2017 08:18:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 08:18:38 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 13 Dec 2017 08:18:40 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 08:18:41 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 08:14:54 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 08:14:55 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 08:15:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 22 Dec 2017 08:15:24 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 08:15:27 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Fri, 22 Dec 2017 08:15:28 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 08:15:31 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 08:15:34 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 22 Dec 2017 08:15:35 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Fri, 22 Dec 2017 08:15:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 08:15:38 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 08:15:39 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Dec 2017 08:15:51 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Dec 2017 08:16:02 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Fri, 22 Dec 2017 08:16:04 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d1ed2187942e6103764c1aafdbb8a07c8ca518010057fe8241ae1785036c34`  
		Last Modified: Wed, 13 Dec 2017 08:26:26 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0edcdde4e4bb24d232fb81eb66c47fcc0d25af42f3b5d6d228547cd01c4eee4c`  
		Last Modified: Wed, 13 Dec 2017 08:26:25 GMT  
		Size: 9.3 KB (9261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d586348c018beacd8f060a315dc7b4d506f2132378b683c3fead6f9fa7766efe`  
		Last Modified: Wed, 13 Dec 2017 08:26:29 GMT  
		Size: 16.5 MB (16456345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f912d1158398651caa084a6fc2d7867e682d13a606000c7f834aabd9fc55ea7c`  
		Last Modified: Fri, 22 Dec 2017 08:17:19 GMT  
		Size: 12.0 MB (12039764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be8debed377719ffd4adbc441a7d0af6f08d1ea3a7dbd59e2eac00c471f330a`  
		Last Modified: Fri, 22 Dec 2017 08:17:17 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3171c2bce1c3835b9cf7eec85925c0774dd95c161dd320f3feabc6f46f325f06`  
		Last Modified: Fri, 22 Dec 2017 08:17:17 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70aa8e2fc70384bc3c37708f5f60b3b02b42d9e97999ef353df020ef15e5221a`  
		Last Modified: Fri, 22 Dec 2017 08:17:17 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7612e5863338a37568134bf4db9b2f2f61dabad4e5c6bfef2cf0b8b9ca3c0b34`  
		Last Modified: Fri, 22 Dec 2017 08:17:17 GMT  
		Size: 4.2 KB (4180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc16c0245aa6f07b26912f7e06eecb0187125695a8b2168edcfcadad80301f41`  
		Last Modified: Fri, 22 Dec 2017 08:17:40 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c2844f72c115967e7591ee3543ff7d0f7faad4b8a68275802446a6445149d6`  
		Last Modified: Fri, 22 Dec 2017 08:17:43 GMT  
		Size: 11.1 MB (11067678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
