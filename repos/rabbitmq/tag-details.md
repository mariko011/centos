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
$ docker pull rabbitmq@sha256:6a7675afce863961d1ecfcbd00e3c92cce77dbccc7060225dd3964d7046dd224
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
$ docker pull rabbitmq@sha256:fa07811a354a1ce8d48469516d50390e6364bdf6a5a1401da5aaefbbe9fd80e0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.8 MB (62848231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:034ebfbce9a1f7e6331051f69bf0ae70d47a46d3d38a23275357e1fd5fadc4a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:48 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Wed, 13 Sep 2017 08:41:49 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 01:46:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 01:46:10 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 19 Sep 2017 01:46:11 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 01:46:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 19 Sep 2017 01:46:57 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 01:46:57 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 00:48:03 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 00:48:04 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 00:48:04 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 00:48:04 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 00:48:04 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 00:48:48 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 00:48:49 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 00:48:49 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 00:48:50 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 00:48:50 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 00:48:51 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 00:48:51 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:48:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 00:48:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:48:56 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 00:48:56 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22587c0b6c1cafde12872ef7d006984387fc5578dfd545d22463bf5edc452b1`  
		Last Modified: Tue, 19 Sep 2017 01:48:26 GMT  
		Size: 4.5 MB (4499395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7cdb9d7769f63be56be62adb2d2db684e1b2936068dcddd7d2a91341e66d29`  
		Last Modified: Tue, 19 Sep 2017 01:48:25 GMT  
		Size: 4.1 KB (4075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc614e186c613f98368edf79d242daeefd3e565bb92cd42c60a4c46c3bb1c5f0`  
		Last Modified: Tue, 19 Sep 2017 01:48:24 GMT  
		Size: 952.0 KB (951956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63c239bab1d94dd75841ab35101bd059cb0a4fda703238aa3d74348ce925e54`  
		Last Modified: Tue, 19 Sep 2017 01:48:26 GMT  
		Size: 27.7 MB (27703791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae5fc200653eebf990ee3feb87159baf167327749460e6bc93d6938b9dc4eee`  
		Last Modified: Tue, 26 Sep 2017 00:50:01 GMT  
		Size: 7.2 MB (7194356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5cf9a27404e2ab036228a854fdbf5a7f80499b98fff6bb32f034ab8f4c3ac5`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c298e89eaf82cfe4d652c073d71884d662c433fcb15f8f2e81e5d29ed13e1f`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c1094fa1968e0e621b08381b9cdfa21eb41916ebbb71d1268ccfd723c64f91`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550c8ace2244275f8051a4a1e09b0db375cfcd49ed86b6c3833ba0e4acf29d12`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 3.9 KB (3946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62899172d555cce3e3c93f09a52a511946df7d2cebc63313382416b0c73cc6db`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:15df2f8b12e94bd13acc99a6f60d2464d8fbac1876791698ce2f673fc413a973
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.4 MB (58426912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:455cf1fa59b705337b2a3a69b37e578405be41354cbfbcf58bdfe6c25d42bb10`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 20:04:19 GMT
ADD file:7a4f76115b8f87534c9bcd4a40386c07af5c7bfdb3429f22d53d07faa0de57da in / 
# Fri, 08 Sep 2017 20:04:20 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 03:12:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:12:54 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Sat, 09 Sep 2017 03:12:55 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 03:19:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 09 Sep 2017 03:25:04 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:25:06 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 14:15:05 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 14:15:06 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 14:15:07 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 14:15:08 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 14:15:09 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 14:20:34 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 14:20:35 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 14:20:37 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 14:20:38 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 14:20:41 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 14:20:43 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 14:20:44 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 14:20:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 14:20:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 14:20:48 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 14:20:49 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:fef762b8f53b037e95e7c93f502931dc720c98a6e4ab7b70807fe14fafba6103`  
		Last Modified: Fri, 08 Sep 2017 20:21:38 GMT  
		Size: 21.2 MB (21161607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4da49272ed622a1d80a2784d63c0b0cf69ce2d75e4cd794d8186cb7364d1b0`  
		Last Modified: Sat, 09 Sep 2017 03:29:08 GMT  
		Size: 4.2 MB (4231481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75616693a72bc2c9efb81fb47d33774fc0a25753163ca66847efa1ca8a0621f`  
		Last Modified: Sat, 09 Sep 2017 03:29:02 GMT  
		Size: 4.1 KB (4055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72dfadb2b70b7fdefcf3c25ecec8003122979ab13cdca42bc6603d2b3b5b428c`  
		Last Modified: Sat, 09 Sep 2017 03:29:01 GMT  
		Size: 942.7 KB (942658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe5a4e495e12fb72cf7e3cbe65432923be24a177a73eaa71f7b680d3899ab1d`  
		Last Modified: Sat, 09 Sep 2017 03:29:09 GMT  
		Size: 25.2 MB (25170762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6a79b9fe5d3b9e27cd63daca1194cf700ea4d8e6961a8cef3e1b2d56d5cbae`  
		Last Modified: Tue, 26 Sep 2017 14:21:47 GMT  
		Size: 6.9 MB (6909750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a715b822e824a7da8f54f85376183483fdca50ae1e588910f1b5e8d97370f2a3`  
		Last Modified: Tue, 26 Sep 2017 14:21:42 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae47fb90313a9b42838d34b0d9b7aaa37f25c54f4fbf912fbba3e43b734edc5`  
		Last Modified: Tue, 26 Sep 2017 14:21:42 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3be265893d48df28b19dcd42177c464ace95a4f93d4a918b175caf8ae3a27c`  
		Last Modified: Tue, 26 Sep 2017 14:21:42 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f474cde49ffcecb2feeeda61c2333dbada3cf4a435652b34344cdc78155ba122`  
		Last Modified: Tue, 26 Sep 2017 14:21:42 GMT  
		Size: 3.9 KB (3947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d41ae105df290e467c5ca8322955fb8ea8141f2a62615f15b32e2940e66d71`  
		Last Modified: Tue, 26 Sep 2017 14:21:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:f7dbbb2779fcb072e6e77cd713248b9055f97357ce7e9a681ffd053879aa4abf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55691515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:372bd57706eae5f59021e47794889437a945b26d0d3a23e0d23da09ba881f88d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Sat, 09 Sep 2017 01:45:09 GMT
ADD file:c64f62f8baccded9d94037c0935c477d3dd18839a9c4e565679657d4c9df92c8 in / 
# Sat, 09 Sep 2017 01:45:10 GMT
CMD ["bash"]
# Wed, 20 Sep 2017 16:17:13 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 20 Sep 2017 16:17:17 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 20 Sep 2017 16:17:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 20 Sep 2017 16:19:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 20 Sep 2017 16:22:48 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 20 Sep 2017 16:22:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 02:34:33 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 02:34:34 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 02:34:35 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 02:34:36 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 02:34:37 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 02:36:33 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 02:36:34 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 02:36:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 02:36:39 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 02:36:42 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 02:36:44 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 02:36:46 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 02:36:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 02:36:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 02:36:51 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 02:36:52 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:07ff66d25cfd7ff46d2bd66b7005ca8b45d0e37e780d439e3032785bd84d99a4`  
		Last Modified: Sat, 09 Sep 2017 01:58:27 GMT  
		Size: 19.3 MB (19277906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a738f35f8156a2f3caf349b0ab4c1755fbf8357715d4767101b83b94c763ea`  
		Last Modified: Wed, 20 Sep 2017 16:28:42 GMT  
		Size: 3.9 MB (3870621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4dbfceb33c482f85d57ff6e04fca6fd0b810adab4e6d0e6f8c3c024eb145d49`  
		Last Modified: Wed, 20 Sep 2017 16:28:39 GMT  
		Size: 4.1 KB (4062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c82296aa104dfea75992433603c9720b87c8bfd73e4af58705256b4380086b9`  
		Last Modified: Wed, 20 Sep 2017 16:28:37 GMT  
		Size: 926.4 KB (926399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41fea946f33fa32cc5bc1696ee9623149eb9aa7866cb7fb07f0ff85e2f3f6d3e`  
		Last Modified: Wed, 20 Sep 2017 16:28:45 GMT  
		Size: 24.8 MB (24785658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a67363c7c321a1963138533cf7e531414bef50ffa963ea6400c656ab30793a`  
		Last Modified: Tue, 26 Sep 2017 02:38:05 GMT  
		Size: 6.8 MB (6820266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:882d7c81c4fd8d87f1639fb34c7f6bd340b8c27340450b793b8bd1802378bb19`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 2.3 KB (2266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6006f458a280e4f85c8b800b3e8c6015c010fa37231b9fbded884ec82ca123c4`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:306a8643ede81cf170475acd824acc610fad638a4732410e481711f2887509ba`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8acf0dbf49463ca96cedb0af280d3ff72228824fd8e04768508e12c1cb4a1eab`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 3.9 KB (3944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7402ee5b71a5d7d904e105035c0ffc020944cc3e5156d3c147408b79851c066f`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:33fcfba6ced7bfe60082538a3c705923bdb4ed7814199bc6c0a6bb10e1e02be7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57280304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10ed14bd6eeba2ba5892f9b0e671d68c9b0a67f1aa7e9f8a83a8be8a6795fdcb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 17:29:09 GMT
ADD file:16391f421551b998f1ff496c48dc67f34dd2003077158fd1af78a898ea367e1d in / 
# Fri, 08 Sep 2017 17:29:10 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 02:59:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 02:59:27 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Sat, 09 Sep 2017 02:59:28 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 03:00:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 09 Sep 2017 03:01:51 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:01:52 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 13:52:33 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 13:52:34 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 13:52:34 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 13:52:35 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 13:52:35 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 13:53:37 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 13:53:38 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 13:53:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 13:53:40 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 13:53:42 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 13:53:43 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 13:53:44 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 13:53:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 13:53:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 13:53:47 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 13:53:48 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:0bd6dbb95c7a219839ea8345519110bbccc30c113a72119bbd92c7fe2a3f1e78`  
		Last Modified: Fri, 08 Sep 2017 17:43:38 GMT  
		Size: 20.3 MB (20337273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86d1f7cb33d030873ce67985178e017cf76b8615e36c7e9213fda4308e8214a`  
		Last Modified: Sat, 09 Sep 2017 03:03:39 GMT  
		Size: 4.1 MB (4075190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9d563980d836cdeb8b18f35f005a3bf20e016369956d96b5738ab23344f689`  
		Last Modified: Sat, 09 Sep 2017 03:03:37 GMT  
		Size: 4.1 KB (4077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2667d8cce687eb930ed23a63969bc98a124dbcdfa61514de284b26bdd5c12d30`  
		Last Modified: Sat, 09 Sep 2017 03:03:36 GMT  
		Size: 919.5 KB (919509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:359e3bdc9c490688f368c3da21e357706ea651d5f4ac77e8a98f04d883725214`  
		Last Modified: Sat, 09 Sep 2017 03:03:41 GMT  
		Size: 25.0 MB (25042765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ceb16b4a783f0882522e0eac5aae34e2a56ccd464a3470571a7319854618a6`  
		Last Modified: Tue, 26 Sep 2017 13:54:37 GMT  
		Size: 6.9 MB (6894890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e00fc1cb980fc2098cc4cfc79ef63fce9687be9830d5cd639d369ea87b085c`  
		Last Modified: Tue, 26 Sep 2017 13:54:30 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f199b6b2bb6aaf19714044a9c966721cd395c44fbccda942ca2c167aba93a9`  
		Last Modified: Tue, 26 Sep 2017 13:54:31 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9570116eba3b76961b98d35d2ca3751026cf75061e75254f770fe2de0493dc2d`  
		Last Modified: Tue, 26 Sep 2017 13:54:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efd29cce1888f4f087980637122506fa4a742fdee8a075bacf1f73a52421c5d`  
		Last Modified: Tue, 26 Sep 2017 13:54:31 GMT  
		Size: 3.9 KB (3943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab586d5c3878d3a978d09b7b64afdc0e03ca09156c2682b47ebfe0d90eaecadd`  
		Last Modified: Tue, 26 Sep 2017 13:54:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3` - linux; 386

```console
$ docker pull rabbitmq@sha256:493521091d40da286beef72b6b906c2aeca75df9ea7bf7178fe11a7365f939d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63899799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc4f5d17c9909bb436cb63df0f069119cead72381b9334cc45287891861fefab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:57 GMT
ADD file:637a2d4ad21512f6aa9863626de3b678f1aff76377357d7e15fc6a381ec94689 in / 
# Fri, 08 Sep 2017 13:19:57 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:18:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:18:16 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 08 Sep 2017 17:18:16 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 17:18:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 17:19:02 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:19:03 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 10:46:41 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 10:46:41 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 10:46:41 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 10:46:42 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 10:46:42 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 10:47:17 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 10:47:17 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 10:47:18 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 10:47:18 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 10:47:19 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 10:47:19 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 10:47:20 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 10:47:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 10:47:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 10:47:21 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 10:47:21 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:2f5ca21e3ce4be74a6720d0866b1c95e310ae9d9494d9e5155a3633cd5cd62cd`  
		Last Modified: Fri, 08 Sep 2017 13:27:56 GMT  
		Size: 23.1 MB (23125784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af682eb40771833b2e56648c8c1f01ecd94f04c826f86d5adb47f44b8956adc2`  
		Last Modified: Fri, 08 Sep 2017 17:19:37 GMT  
		Size: 4.8 MB (4804024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40af7b9b4d4a547cc0e0fb1463ba275401d5a51b63d605c554bd181b5b31a0d5`  
		Last Modified: Fri, 08 Sep 2017 17:19:36 GMT  
		Size: 4.1 KB (4058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870f9f6c5d7404e44efe1dc21317b5bb3666adc79a386bd0446f701c976776db`  
		Last Modified: Fri, 08 Sep 2017 17:19:34 GMT  
		Size: 931.5 KB (931532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73494470c557dfa90ae0e6c205c0a308a89c35b61d3e449bf54f41a5c9381102`  
		Last Modified: Fri, 08 Sep 2017 17:19:37 GMT  
		Size: 27.8 MB (27818774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef6027902858a00f26bc93f1744a20bcfd8c66189b6be1c5406e67d866f2731`  
		Last Modified: Tue, 26 Sep 2017 10:47:43 GMT  
		Size: 7.2 MB (7209028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93aa20a500b7490c164a679f28f408308197f9dc614dc3778a71d1216c84cb6`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadfc0b00afa986d1ea6419b09f939604e3c32e2c4587b72055ad5ee82e9d866`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abdc410ca68ef3c8f860a8ef00adabdb43c4674d6fd26bfec79569c84f8ed0d0`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88bd1c9ded163839f4adc1e57afa6ebd4c07821831123df6af9d7793ab21de72`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 3.9 KB (3945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4134d2d867d0fadca6000f52169b319a02a544f94efbc9bb7f6e6b7f718ed7c8`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:f779d3c4122096ce89cc5d3473b9f5e1891a636dc85ba442dfc5cab64f438157
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60384781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d66d3159ca9046ef3addbd46e7aa24038c38ad82a0c3a92c54e3f698a34f24b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:22 GMT
ADD file:1422f50e4e998477f6c3b2fcee6853da10eb8bca7926ec70e494ff485f6284d7 in / 
# Fri, 08 Sep 2017 00:34:22 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 22:51:21 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 22:51:28 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Sep 2017 22:51:30 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Sep 2017 22:52:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Sep 2017 22:54:34 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 22:54:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 07:11:36 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 07:11:38 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 07:11:41 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 07:11:43 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 07:11:46 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 07:13:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 07:14:00 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 07:14:06 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 07:14:10 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 07:14:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 07:14:29 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 07:14:32 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 07:14:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 07:14:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 07:14:43 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 07:14:45 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:7ff7f6fdf12a09feca6f75b5d90b860059bdccf4185a9dab7c2c5b9e6e90123a`  
		Last Modified: Fri, 08 Sep 2017 00:41:42 GMT  
		Size: 22.7 MB (22746060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03ccdc113ab1266db618ff04ab98527c7167e2df7b81dbda212235bcf532e35`  
		Last Modified: Tue, 12 Sep 2017 22:56:39 GMT  
		Size: 4.4 MB (4360373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16f43af127417f02f39d312d2ecbac85ebf5b3084eddf896e25d76c4eea2d7be`  
		Last Modified: Tue, 12 Sep 2017 22:56:37 GMT  
		Size: 4.1 KB (4104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a427330ed64ea1260490780e2c2ddc98da973b112b4f73d9085dcb97c8f753cb`  
		Last Modified: Tue, 12 Sep 2017 22:56:35 GMT  
		Size: 920.8 KB (920840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f09c78cb850af5f76c18ef1b42c64dbed4af34f8a8e6187ae51a74e14d1bb6e`  
		Last Modified: Tue, 12 Sep 2017 22:56:39 GMT  
		Size: 25.5 MB (25492757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc1bd551250de979c6dc899a460556ff21e8e33b41c9fd185e74bdceb95be1d`  
		Last Modified: Tue, 26 Sep 2017 07:15:26 GMT  
		Size: 6.9 MB (6854043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72846fb78c462687ac9d09d8ffa431ac1e72621aa0edc72347fda8bc05d2af50`  
		Last Modified: Tue, 26 Sep 2017 07:15:22 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a2dbcfab390ddd950539cdd0c6e6c325c56da7b66e12de85f1e7f9cdeba37c9`  
		Last Modified: Tue, 26 Sep 2017 07:15:22 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8329c8cc338669480a73421c1b4249a24ea9bb89ab9ca0dd63ce927686b81917`  
		Last Modified: Tue, 26 Sep 2017 07:15:21 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045a56a447171005afa59312a0c9f56453bdf43878e12be3f795e50924a3dbf3`  
		Last Modified: Tue, 26 Sep 2017 07:15:22 GMT  
		Size: 3.9 KB (3947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f291fdc1ba0502cd7ea5b489c7c066bad28b5bcc03a86a40a438000e2467852d`  
		Last Modified: Tue, 26 Sep 2017 07:15:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3` - linux; s390x

```console
$ docker pull rabbitmq@sha256:2d9966b9e33d98e421bc074ef1b56233009180721050fc4b453dc6edde8dd370
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60365697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:484735e1071114dde57fd0c9173dc9fe8ea5a1de5e4f5d9f9ee5be38c751f18c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 05:23:00 GMT
ADD file:9b074cf37adfa815e3a6b300f8652eb77a06cfeea3f74fd021795cff318ca2ce in / 
# Fri, 08 Sep 2017 05:23:00 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:12:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:12:36 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 08 Sep 2017 07:12:36 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 07:12:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 07:13:13 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:13:14 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 08 Sep 2017 07:13:17 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 07:13:17 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Wed, 13 Sep 2017 17:06:27 GMT
ENV RABBITMQ_VERSION=3.6.12
# Wed, 13 Sep 2017 17:06:27 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Wed, 13 Sep 2017 17:06:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 17:06:38 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 17:06:38 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 13 Sep 2017 17:06:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 13 Sep 2017 17:06:39 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 13 Sep 2017 17:06:40 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 13 Sep 2017 17:06:40 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 13 Sep 2017 17:06:41 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Wed, 13 Sep 2017 17:06:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 17:06:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 17:06:42 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 13 Sep 2017 17:06:42 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:4a3a3449ff754d3a7e8f189d020e507ff2cb0fd172b4240ca2d1d78e2d65d544`  
		Last Modified: Fri, 08 Sep 2017 05:27:12 GMT  
		Size: 22.3 MB (22338151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9f9c3f65f8623995e82dca85129c63aebf311a1f7b80fdde7eb1b1a6a9a7c4`  
		Last Modified: Fri, 08 Sep 2017 07:13:52 GMT  
		Size: 4.5 MB (4530037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e766d543dae983ec5d1fb0a8ece5da0c790574ad27de51775826875e63e48cc6`  
		Last Modified: Fri, 08 Sep 2017 07:13:50 GMT  
		Size: 4.1 KB (4070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7482794ab6a0465927e4cef738eceacc49e28b4e8f325f0f6153f16df398d12e`  
		Last Modified: Fri, 08 Sep 2017 07:13:50 GMT  
		Size: 938.0 KB (938009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f8dce71bb341d4baafcc9c8986c3cce6156dc353505e6dc9c821e4330b868da`  
		Last Modified: Fri, 08 Sep 2017 07:13:54 GMT  
		Size: 25.6 MB (25619550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:753d738c05295037a1c7f7c66dd9faae22257631385c9b9291d4e46f8679e724`  
		Last Modified: Fri, 08 Sep 2017 07:13:49 GMT  
		Size: 3.1 KB (3108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d70befe6ae825e874830dfdf77e8090dfc7fcaa9b321b8f30a06db9d502564`  
		Last Modified: Fri, 08 Sep 2017 07:13:49 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae25609266a393f768cb3501e6cd26353d5e4f3b3cc9d19f8ebbd73e4d8c6eea`  
		Last Modified: Wed, 13 Sep 2017 17:06:57 GMT  
		Size: 6.9 MB (6925832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2eaf458900cd749705c6be95bb97cbc3d01bf97bb2b0f29c7b1c773076e6d4`  
		Last Modified: Wed, 13 Sep 2017 17:06:54 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d373a6630d7f98be44bb2157cec21fe02d417e123b260cd3241d5d9f2eda68d1`  
		Last Modified: Wed, 13 Sep 2017 17:06:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16bab863dce632474453c632292a0cac44271d5180ea761e2f98cca40b65747f`  
		Last Modified: Wed, 13 Sep 2017 17:06:54 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f649e97eb461bdd3dba1a1056d97ed30bd0651a22dc1b7a7b436849136e5cd`  
		Last Modified: Wed, 13 Sep 2017 17:06:55 GMT  
		Size: 4.1 KB (4067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4e4c6b050fd9c884b294bfee7322ff8b6bd53a1c9155a1d5d7393c3293055a`  
		Last Modified: Wed, 13 Sep 2017 17:06:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6`

```console
$ docker pull rabbitmq@sha256:6a7675afce863961d1ecfcbd00e3c92cce77dbccc7060225dd3964d7046dd224
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
$ docker pull rabbitmq@sha256:fa07811a354a1ce8d48469516d50390e6364bdf6a5a1401da5aaefbbe9fd80e0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.8 MB (62848231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:034ebfbce9a1f7e6331051f69bf0ae70d47a46d3d38a23275357e1fd5fadc4a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:48 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Wed, 13 Sep 2017 08:41:49 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 01:46:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 01:46:10 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 19 Sep 2017 01:46:11 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 01:46:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 19 Sep 2017 01:46:57 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 01:46:57 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 00:48:03 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 00:48:04 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 00:48:04 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 00:48:04 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 00:48:04 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 00:48:48 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 00:48:49 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 00:48:49 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 00:48:50 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 00:48:50 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 00:48:51 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 00:48:51 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:48:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 00:48:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:48:56 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 00:48:56 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22587c0b6c1cafde12872ef7d006984387fc5578dfd545d22463bf5edc452b1`  
		Last Modified: Tue, 19 Sep 2017 01:48:26 GMT  
		Size: 4.5 MB (4499395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7cdb9d7769f63be56be62adb2d2db684e1b2936068dcddd7d2a91341e66d29`  
		Last Modified: Tue, 19 Sep 2017 01:48:25 GMT  
		Size: 4.1 KB (4075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc614e186c613f98368edf79d242daeefd3e565bb92cd42c60a4c46c3bb1c5f0`  
		Last Modified: Tue, 19 Sep 2017 01:48:24 GMT  
		Size: 952.0 KB (951956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63c239bab1d94dd75841ab35101bd059cb0a4fda703238aa3d74348ce925e54`  
		Last Modified: Tue, 19 Sep 2017 01:48:26 GMT  
		Size: 27.7 MB (27703791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae5fc200653eebf990ee3feb87159baf167327749460e6bc93d6938b9dc4eee`  
		Last Modified: Tue, 26 Sep 2017 00:50:01 GMT  
		Size: 7.2 MB (7194356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5cf9a27404e2ab036228a854fdbf5a7f80499b98fff6bb32f034ab8f4c3ac5`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c298e89eaf82cfe4d652c073d71884d662c433fcb15f8f2e81e5d29ed13e1f`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c1094fa1968e0e621b08381b9cdfa21eb41916ebbb71d1268ccfd723c64f91`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550c8ace2244275f8051a4a1e09b0db375cfcd49ed86b6c3833ba0e4acf29d12`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 3.9 KB (3946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62899172d555cce3e3c93f09a52a511946df7d2cebc63313382416b0c73cc6db`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:15df2f8b12e94bd13acc99a6f60d2464d8fbac1876791698ce2f673fc413a973
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.4 MB (58426912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:455cf1fa59b705337b2a3a69b37e578405be41354cbfbcf58bdfe6c25d42bb10`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 20:04:19 GMT
ADD file:7a4f76115b8f87534c9bcd4a40386c07af5c7bfdb3429f22d53d07faa0de57da in / 
# Fri, 08 Sep 2017 20:04:20 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 03:12:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:12:54 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Sat, 09 Sep 2017 03:12:55 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 03:19:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 09 Sep 2017 03:25:04 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:25:06 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 14:15:05 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 14:15:06 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 14:15:07 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 14:15:08 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 14:15:09 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 14:20:34 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 14:20:35 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 14:20:37 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 14:20:38 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 14:20:41 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 14:20:43 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 14:20:44 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 14:20:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 14:20:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 14:20:48 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 14:20:49 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:fef762b8f53b037e95e7c93f502931dc720c98a6e4ab7b70807fe14fafba6103`  
		Last Modified: Fri, 08 Sep 2017 20:21:38 GMT  
		Size: 21.2 MB (21161607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4da49272ed622a1d80a2784d63c0b0cf69ce2d75e4cd794d8186cb7364d1b0`  
		Last Modified: Sat, 09 Sep 2017 03:29:08 GMT  
		Size: 4.2 MB (4231481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75616693a72bc2c9efb81fb47d33774fc0a25753163ca66847efa1ca8a0621f`  
		Last Modified: Sat, 09 Sep 2017 03:29:02 GMT  
		Size: 4.1 KB (4055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72dfadb2b70b7fdefcf3c25ecec8003122979ab13cdca42bc6603d2b3b5b428c`  
		Last Modified: Sat, 09 Sep 2017 03:29:01 GMT  
		Size: 942.7 KB (942658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe5a4e495e12fb72cf7e3cbe65432923be24a177a73eaa71f7b680d3899ab1d`  
		Last Modified: Sat, 09 Sep 2017 03:29:09 GMT  
		Size: 25.2 MB (25170762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6a79b9fe5d3b9e27cd63daca1194cf700ea4d8e6961a8cef3e1b2d56d5cbae`  
		Last Modified: Tue, 26 Sep 2017 14:21:47 GMT  
		Size: 6.9 MB (6909750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a715b822e824a7da8f54f85376183483fdca50ae1e588910f1b5e8d97370f2a3`  
		Last Modified: Tue, 26 Sep 2017 14:21:42 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae47fb90313a9b42838d34b0d9b7aaa37f25c54f4fbf912fbba3e43b734edc5`  
		Last Modified: Tue, 26 Sep 2017 14:21:42 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3be265893d48df28b19dcd42177c464ace95a4f93d4a918b175caf8ae3a27c`  
		Last Modified: Tue, 26 Sep 2017 14:21:42 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f474cde49ffcecb2feeeda61c2333dbada3cf4a435652b34344cdc78155ba122`  
		Last Modified: Tue, 26 Sep 2017 14:21:42 GMT  
		Size: 3.9 KB (3947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d41ae105df290e467c5ca8322955fb8ea8141f2a62615f15b32e2940e66d71`  
		Last Modified: Tue, 26 Sep 2017 14:21:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:f7dbbb2779fcb072e6e77cd713248b9055f97357ce7e9a681ffd053879aa4abf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55691515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:372bd57706eae5f59021e47794889437a945b26d0d3a23e0d23da09ba881f88d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Sat, 09 Sep 2017 01:45:09 GMT
ADD file:c64f62f8baccded9d94037c0935c477d3dd18839a9c4e565679657d4c9df92c8 in / 
# Sat, 09 Sep 2017 01:45:10 GMT
CMD ["bash"]
# Wed, 20 Sep 2017 16:17:13 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 20 Sep 2017 16:17:17 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 20 Sep 2017 16:17:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 20 Sep 2017 16:19:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 20 Sep 2017 16:22:48 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 20 Sep 2017 16:22:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 02:34:33 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 02:34:34 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 02:34:35 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 02:34:36 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 02:34:37 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 02:36:33 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 02:36:34 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 02:36:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 02:36:39 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 02:36:42 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 02:36:44 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 02:36:46 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 02:36:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 02:36:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 02:36:51 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 02:36:52 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:07ff66d25cfd7ff46d2bd66b7005ca8b45d0e37e780d439e3032785bd84d99a4`  
		Last Modified: Sat, 09 Sep 2017 01:58:27 GMT  
		Size: 19.3 MB (19277906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a738f35f8156a2f3caf349b0ab4c1755fbf8357715d4767101b83b94c763ea`  
		Last Modified: Wed, 20 Sep 2017 16:28:42 GMT  
		Size: 3.9 MB (3870621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4dbfceb33c482f85d57ff6e04fca6fd0b810adab4e6d0e6f8c3c024eb145d49`  
		Last Modified: Wed, 20 Sep 2017 16:28:39 GMT  
		Size: 4.1 KB (4062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c82296aa104dfea75992433603c9720b87c8bfd73e4af58705256b4380086b9`  
		Last Modified: Wed, 20 Sep 2017 16:28:37 GMT  
		Size: 926.4 KB (926399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41fea946f33fa32cc5bc1696ee9623149eb9aa7866cb7fb07f0ff85e2f3f6d3e`  
		Last Modified: Wed, 20 Sep 2017 16:28:45 GMT  
		Size: 24.8 MB (24785658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a67363c7c321a1963138533cf7e531414bef50ffa963ea6400c656ab30793a`  
		Last Modified: Tue, 26 Sep 2017 02:38:05 GMT  
		Size: 6.8 MB (6820266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:882d7c81c4fd8d87f1639fb34c7f6bd340b8c27340450b793b8bd1802378bb19`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 2.3 KB (2266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6006f458a280e4f85c8b800b3e8c6015c010fa37231b9fbded884ec82ca123c4`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:306a8643ede81cf170475acd824acc610fad638a4732410e481711f2887509ba`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8acf0dbf49463ca96cedb0af280d3ff72228824fd8e04768508e12c1cb4a1eab`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 3.9 KB (3944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7402ee5b71a5d7d904e105035c0ffc020944cc3e5156d3c147408b79851c066f`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:33fcfba6ced7bfe60082538a3c705923bdb4ed7814199bc6c0a6bb10e1e02be7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57280304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10ed14bd6eeba2ba5892f9b0e671d68c9b0a67f1aa7e9f8a83a8be8a6795fdcb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 17:29:09 GMT
ADD file:16391f421551b998f1ff496c48dc67f34dd2003077158fd1af78a898ea367e1d in / 
# Fri, 08 Sep 2017 17:29:10 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 02:59:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 02:59:27 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Sat, 09 Sep 2017 02:59:28 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 03:00:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 09 Sep 2017 03:01:51 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:01:52 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 13:52:33 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 13:52:34 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 13:52:34 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 13:52:35 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 13:52:35 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 13:53:37 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 13:53:38 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 13:53:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 13:53:40 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 13:53:42 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 13:53:43 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 13:53:44 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 13:53:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 13:53:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 13:53:47 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 13:53:48 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:0bd6dbb95c7a219839ea8345519110bbccc30c113a72119bbd92c7fe2a3f1e78`  
		Last Modified: Fri, 08 Sep 2017 17:43:38 GMT  
		Size: 20.3 MB (20337273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86d1f7cb33d030873ce67985178e017cf76b8615e36c7e9213fda4308e8214a`  
		Last Modified: Sat, 09 Sep 2017 03:03:39 GMT  
		Size: 4.1 MB (4075190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9d563980d836cdeb8b18f35f005a3bf20e016369956d96b5738ab23344f689`  
		Last Modified: Sat, 09 Sep 2017 03:03:37 GMT  
		Size: 4.1 KB (4077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2667d8cce687eb930ed23a63969bc98a124dbcdfa61514de284b26bdd5c12d30`  
		Last Modified: Sat, 09 Sep 2017 03:03:36 GMT  
		Size: 919.5 KB (919509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:359e3bdc9c490688f368c3da21e357706ea651d5f4ac77e8a98f04d883725214`  
		Last Modified: Sat, 09 Sep 2017 03:03:41 GMT  
		Size: 25.0 MB (25042765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ceb16b4a783f0882522e0eac5aae34e2a56ccd464a3470571a7319854618a6`  
		Last Modified: Tue, 26 Sep 2017 13:54:37 GMT  
		Size: 6.9 MB (6894890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e00fc1cb980fc2098cc4cfc79ef63fce9687be9830d5cd639d369ea87b085c`  
		Last Modified: Tue, 26 Sep 2017 13:54:30 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f199b6b2bb6aaf19714044a9c966721cd395c44fbccda942ca2c167aba93a9`  
		Last Modified: Tue, 26 Sep 2017 13:54:31 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9570116eba3b76961b98d35d2ca3751026cf75061e75254f770fe2de0493dc2d`  
		Last Modified: Tue, 26 Sep 2017 13:54:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efd29cce1888f4f087980637122506fa4a742fdee8a075bacf1f73a52421c5d`  
		Last Modified: Tue, 26 Sep 2017 13:54:31 GMT  
		Size: 3.9 KB (3943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab586d5c3878d3a978d09b7b64afdc0e03ca09156c2682b47ebfe0d90eaecadd`  
		Last Modified: Tue, 26 Sep 2017 13:54:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; 386

```console
$ docker pull rabbitmq@sha256:493521091d40da286beef72b6b906c2aeca75df9ea7bf7178fe11a7365f939d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63899799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc4f5d17c9909bb436cb63df0f069119cead72381b9334cc45287891861fefab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:57 GMT
ADD file:637a2d4ad21512f6aa9863626de3b678f1aff76377357d7e15fc6a381ec94689 in / 
# Fri, 08 Sep 2017 13:19:57 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:18:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:18:16 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 08 Sep 2017 17:18:16 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 17:18:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 17:19:02 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:19:03 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 10:46:41 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 10:46:41 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 10:46:41 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 10:46:42 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 10:46:42 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 10:47:17 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 10:47:17 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 10:47:18 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 10:47:18 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 10:47:19 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 10:47:19 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 10:47:20 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 10:47:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 10:47:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 10:47:21 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 10:47:21 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:2f5ca21e3ce4be74a6720d0866b1c95e310ae9d9494d9e5155a3633cd5cd62cd`  
		Last Modified: Fri, 08 Sep 2017 13:27:56 GMT  
		Size: 23.1 MB (23125784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af682eb40771833b2e56648c8c1f01ecd94f04c826f86d5adb47f44b8956adc2`  
		Last Modified: Fri, 08 Sep 2017 17:19:37 GMT  
		Size: 4.8 MB (4804024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40af7b9b4d4a547cc0e0fb1463ba275401d5a51b63d605c554bd181b5b31a0d5`  
		Last Modified: Fri, 08 Sep 2017 17:19:36 GMT  
		Size: 4.1 KB (4058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870f9f6c5d7404e44efe1dc21317b5bb3666adc79a386bd0446f701c976776db`  
		Last Modified: Fri, 08 Sep 2017 17:19:34 GMT  
		Size: 931.5 KB (931532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73494470c557dfa90ae0e6c205c0a308a89c35b61d3e449bf54f41a5c9381102`  
		Last Modified: Fri, 08 Sep 2017 17:19:37 GMT  
		Size: 27.8 MB (27818774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef6027902858a00f26bc93f1744a20bcfd8c66189b6be1c5406e67d866f2731`  
		Last Modified: Tue, 26 Sep 2017 10:47:43 GMT  
		Size: 7.2 MB (7209028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93aa20a500b7490c164a679f28f408308197f9dc614dc3778a71d1216c84cb6`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadfc0b00afa986d1ea6419b09f939604e3c32e2c4587b72055ad5ee82e9d866`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abdc410ca68ef3c8f860a8ef00adabdb43c4674d6fd26bfec79569c84f8ed0d0`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88bd1c9ded163839f4adc1e57afa6ebd4c07821831123df6af9d7793ab21de72`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 3.9 KB (3945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4134d2d867d0fadca6000f52169b319a02a544f94efbc9bb7f6e6b7f718ed7c8`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:f779d3c4122096ce89cc5d3473b9f5e1891a636dc85ba442dfc5cab64f438157
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60384781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d66d3159ca9046ef3addbd46e7aa24038c38ad82a0c3a92c54e3f698a34f24b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:22 GMT
ADD file:1422f50e4e998477f6c3b2fcee6853da10eb8bca7926ec70e494ff485f6284d7 in / 
# Fri, 08 Sep 2017 00:34:22 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 22:51:21 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 22:51:28 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Sep 2017 22:51:30 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Sep 2017 22:52:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Sep 2017 22:54:34 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 22:54:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 07:11:36 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 07:11:38 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 07:11:41 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 07:11:43 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 07:11:46 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 07:13:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 07:14:00 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 07:14:06 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 07:14:10 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 07:14:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 07:14:29 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 07:14:32 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 07:14:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 07:14:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 07:14:43 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 07:14:45 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:7ff7f6fdf12a09feca6f75b5d90b860059bdccf4185a9dab7c2c5b9e6e90123a`  
		Last Modified: Fri, 08 Sep 2017 00:41:42 GMT  
		Size: 22.7 MB (22746060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03ccdc113ab1266db618ff04ab98527c7167e2df7b81dbda212235bcf532e35`  
		Last Modified: Tue, 12 Sep 2017 22:56:39 GMT  
		Size: 4.4 MB (4360373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16f43af127417f02f39d312d2ecbac85ebf5b3084eddf896e25d76c4eea2d7be`  
		Last Modified: Tue, 12 Sep 2017 22:56:37 GMT  
		Size: 4.1 KB (4104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a427330ed64ea1260490780e2c2ddc98da973b112b4f73d9085dcb97c8f753cb`  
		Last Modified: Tue, 12 Sep 2017 22:56:35 GMT  
		Size: 920.8 KB (920840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f09c78cb850af5f76c18ef1b42c64dbed4af34f8a8e6187ae51a74e14d1bb6e`  
		Last Modified: Tue, 12 Sep 2017 22:56:39 GMT  
		Size: 25.5 MB (25492757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc1bd551250de979c6dc899a460556ff21e8e33b41c9fd185e74bdceb95be1d`  
		Last Modified: Tue, 26 Sep 2017 07:15:26 GMT  
		Size: 6.9 MB (6854043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72846fb78c462687ac9d09d8ffa431ac1e72621aa0edc72347fda8bc05d2af50`  
		Last Modified: Tue, 26 Sep 2017 07:15:22 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a2dbcfab390ddd950539cdd0c6e6c325c56da7b66e12de85f1e7f9cdeba37c9`  
		Last Modified: Tue, 26 Sep 2017 07:15:22 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8329c8cc338669480a73421c1b4249a24ea9bb89ab9ca0dd63ce927686b81917`  
		Last Modified: Tue, 26 Sep 2017 07:15:21 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045a56a447171005afa59312a0c9f56453bdf43878e12be3f795e50924a3dbf3`  
		Last Modified: Tue, 26 Sep 2017 07:15:22 GMT  
		Size: 3.9 KB (3947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f291fdc1ba0502cd7ea5b489c7c066bad28b5bcc03a86a40a438000e2467852d`  
		Last Modified: Tue, 26 Sep 2017 07:15:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; s390x

```console
$ docker pull rabbitmq@sha256:2d9966b9e33d98e421bc074ef1b56233009180721050fc4b453dc6edde8dd370
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60365697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:484735e1071114dde57fd0c9173dc9fe8ea5a1de5e4f5d9f9ee5be38c751f18c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 05:23:00 GMT
ADD file:9b074cf37adfa815e3a6b300f8652eb77a06cfeea3f74fd021795cff318ca2ce in / 
# Fri, 08 Sep 2017 05:23:00 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:12:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:12:36 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 08 Sep 2017 07:12:36 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 07:12:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 07:13:13 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:13:14 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 08 Sep 2017 07:13:17 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 07:13:17 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Wed, 13 Sep 2017 17:06:27 GMT
ENV RABBITMQ_VERSION=3.6.12
# Wed, 13 Sep 2017 17:06:27 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Wed, 13 Sep 2017 17:06:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 17:06:38 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 17:06:38 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 13 Sep 2017 17:06:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 13 Sep 2017 17:06:39 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 13 Sep 2017 17:06:40 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 13 Sep 2017 17:06:40 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 13 Sep 2017 17:06:41 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Wed, 13 Sep 2017 17:06:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 17:06:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 17:06:42 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 13 Sep 2017 17:06:42 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:4a3a3449ff754d3a7e8f189d020e507ff2cb0fd172b4240ca2d1d78e2d65d544`  
		Last Modified: Fri, 08 Sep 2017 05:27:12 GMT  
		Size: 22.3 MB (22338151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9f9c3f65f8623995e82dca85129c63aebf311a1f7b80fdde7eb1b1a6a9a7c4`  
		Last Modified: Fri, 08 Sep 2017 07:13:52 GMT  
		Size: 4.5 MB (4530037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e766d543dae983ec5d1fb0a8ece5da0c790574ad27de51775826875e63e48cc6`  
		Last Modified: Fri, 08 Sep 2017 07:13:50 GMT  
		Size: 4.1 KB (4070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7482794ab6a0465927e4cef738eceacc49e28b4e8f325f0f6153f16df398d12e`  
		Last Modified: Fri, 08 Sep 2017 07:13:50 GMT  
		Size: 938.0 KB (938009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f8dce71bb341d4baafcc9c8986c3cce6156dc353505e6dc9c821e4330b868da`  
		Last Modified: Fri, 08 Sep 2017 07:13:54 GMT  
		Size: 25.6 MB (25619550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:753d738c05295037a1c7f7c66dd9faae22257631385c9b9291d4e46f8679e724`  
		Last Modified: Fri, 08 Sep 2017 07:13:49 GMT  
		Size: 3.1 KB (3108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d70befe6ae825e874830dfdf77e8090dfc7fcaa9b321b8f30a06db9d502564`  
		Last Modified: Fri, 08 Sep 2017 07:13:49 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae25609266a393f768cb3501e6cd26353d5e4f3b3cc9d19f8ebbd73e4d8c6eea`  
		Last Modified: Wed, 13 Sep 2017 17:06:57 GMT  
		Size: 6.9 MB (6925832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2eaf458900cd749705c6be95bb97cbc3d01bf97bb2b0f29c7b1c773076e6d4`  
		Last Modified: Wed, 13 Sep 2017 17:06:54 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d373a6630d7f98be44bb2157cec21fe02d417e123b260cd3241d5d9f2eda68d1`  
		Last Modified: Wed, 13 Sep 2017 17:06:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16bab863dce632474453c632292a0cac44271d5180ea761e2f98cca40b65747f`  
		Last Modified: Wed, 13 Sep 2017 17:06:54 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f649e97eb461bdd3dba1a1056d97ed30bd0651a22dc1b7a7b436849136e5cd`  
		Last Modified: Wed, 13 Sep 2017 17:06:55 GMT  
		Size: 4.1 KB (4067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4e4c6b050fd9c884b294bfee7322ff8b6bd53a1c9155a1d5d7393c3293055a`  
		Last Modified: Wed, 13 Sep 2017 17:06:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.12`

```console
$ docker pull rabbitmq@sha256:6a7675afce863961d1ecfcbd00e3c92cce77dbccc7060225dd3964d7046dd224
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
$ docker pull rabbitmq@sha256:fa07811a354a1ce8d48469516d50390e6364bdf6a5a1401da5aaefbbe9fd80e0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.8 MB (62848231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:034ebfbce9a1f7e6331051f69bf0ae70d47a46d3d38a23275357e1fd5fadc4a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:48 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Wed, 13 Sep 2017 08:41:49 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 01:46:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 01:46:10 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 19 Sep 2017 01:46:11 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 01:46:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 19 Sep 2017 01:46:57 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 01:46:57 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 00:48:03 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 00:48:04 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 00:48:04 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 00:48:04 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 00:48:04 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 00:48:48 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 00:48:49 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 00:48:49 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 00:48:50 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 00:48:50 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 00:48:51 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 00:48:51 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:48:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 00:48:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:48:56 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 00:48:56 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22587c0b6c1cafde12872ef7d006984387fc5578dfd545d22463bf5edc452b1`  
		Last Modified: Tue, 19 Sep 2017 01:48:26 GMT  
		Size: 4.5 MB (4499395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7cdb9d7769f63be56be62adb2d2db684e1b2936068dcddd7d2a91341e66d29`  
		Last Modified: Tue, 19 Sep 2017 01:48:25 GMT  
		Size: 4.1 KB (4075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc614e186c613f98368edf79d242daeefd3e565bb92cd42c60a4c46c3bb1c5f0`  
		Last Modified: Tue, 19 Sep 2017 01:48:24 GMT  
		Size: 952.0 KB (951956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63c239bab1d94dd75841ab35101bd059cb0a4fda703238aa3d74348ce925e54`  
		Last Modified: Tue, 19 Sep 2017 01:48:26 GMT  
		Size: 27.7 MB (27703791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae5fc200653eebf990ee3feb87159baf167327749460e6bc93d6938b9dc4eee`  
		Last Modified: Tue, 26 Sep 2017 00:50:01 GMT  
		Size: 7.2 MB (7194356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5cf9a27404e2ab036228a854fdbf5a7f80499b98fff6bb32f034ab8f4c3ac5`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c298e89eaf82cfe4d652c073d71884d662c433fcb15f8f2e81e5d29ed13e1f`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c1094fa1968e0e621b08381b9cdfa21eb41916ebbb71d1268ccfd723c64f91`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550c8ace2244275f8051a4a1e09b0db375cfcd49ed86b6c3833ba0e4acf29d12`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 3.9 KB (3946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62899172d555cce3e3c93f09a52a511946df7d2cebc63313382416b0c73cc6db`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.12` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:15df2f8b12e94bd13acc99a6f60d2464d8fbac1876791698ce2f673fc413a973
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.4 MB (58426912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:455cf1fa59b705337b2a3a69b37e578405be41354cbfbcf58bdfe6c25d42bb10`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 20:04:19 GMT
ADD file:7a4f76115b8f87534c9bcd4a40386c07af5c7bfdb3429f22d53d07faa0de57da in / 
# Fri, 08 Sep 2017 20:04:20 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 03:12:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:12:54 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Sat, 09 Sep 2017 03:12:55 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 03:19:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 09 Sep 2017 03:25:04 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:25:06 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 14:15:05 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 14:15:06 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 14:15:07 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 14:15:08 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 14:15:09 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 14:20:34 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 14:20:35 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 14:20:37 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 14:20:38 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 14:20:41 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 14:20:43 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 14:20:44 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 14:20:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 14:20:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 14:20:48 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 14:20:49 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:fef762b8f53b037e95e7c93f502931dc720c98a6e4ab7b70807fe14fafba6103`  
		Last Modified: Fri, 08 Sep 2017 20:21:38 GMT  
		Size: 21.2 MB (21161607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4da49272ed622a1d80a2784d63c0b0cf69ce2d75e4cd794d8186cb7364d1b0`  
		Last Modified: Sat, 09 Sep 2017 03:29:08 GMT  
		Size: 4.2 MB (4231481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75616693a72bc2c9efb81fb47d33774fc0a25753163ca66847efa1ca8a0621f`  
		Last Modified: Sat, 09 Sep 2017 03:29:02 GMT  
		Size: 4.1 KB (4055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72dfadb2b70b7fdefcf3c25ecec8003122979ab13cdca42bc6603d2b3b5b428c`  
		Last Modified: Sat, 09 Sep 2017 03:29:01 GMT  
		Size: 942.7 KB (942658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe5a4e495e12fb72cf7e3cbe65432923be24a177a73eaa71f7b680d3899ab1d`  
		Last Modified: Sat, 09 Sep 2017 03:29:09 GMT  
		Size: 25.2 MB (25170762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6a79b9fe5d3b9e27cd63daca1194cf700ea4d8e6961a8cef3e1b2d56d5cbae`  
		Last Modified: Tue, 26 Sep 2017 14:21:47 GMT  
		Size: 6.9 MB (6909750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a715b822e824a7da8f54f85376183483fdca50ae1e588910f1b5e8d97370f2a3`  
		Last Modified: Tue, 26 Sep 2017 14:21:42 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae47fb90313a9b42838d34b0d9b7aaa37f25c54f4fbf912fbba3e43b734edc5`  
		Last Modified: Tue, 26 Sep 2017 14:21:42 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3be265893d48df28b19dcd42177c464ace95a4f93d4a918b175caf8ae3a27c`  
		Last Modified: Tue, 26 Sep 2017 14:21:42 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f474cde49ffcecb2feeeda61c2333dbada3cf4a435652b34344cdc78155ba122`  
		Last Modified: Tue, 26 Sep 2017 14:21:42 GMT  
		Size: 3.9 KB (3947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d41ae105df290e467c5ca8322955fb8ea8141f2a62615f15b32e2940e66d71`  
		Last Modified: Tue, 26 Sep 2017 14:21:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.12` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:f7dbbb2779fcb072e6e77cd713248b9055f97357ce7e9a681ffd053879aa4abf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55691515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:372bd57706eae5f59021e47794889437a945b26d0d3a23e0d23da09ba881f88d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Sat, 09 Sep 2017 01:45:09 GMT
ADD file:c64f62f8baccded9d94037c0935c477d3dd18839a9c4e565679657d4c9df92c8 in / 
# Sat, 09 Sep 2017 01:45:10 GMT
CMD ["bash"]
# Wed, 20 Sep 2017 16:17:13 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 20 Sep 2017 16:17:17 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 20 Sep 2017 16:17:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 20 Sep 2017 16:19:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 20 Sep 2017 16:22:48 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 20 Sep 2017 16:22:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 02:34:33 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 02:34:34 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 02:34:35 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 02:34:36 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 02:34:37 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 02:36:33 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 02:36:34 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 02:36:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 02:36:39 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 02:36:42 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 02:36:44 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 02:36:46 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 02:36:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 02:36:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 02:36:51 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 02:36:52 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:07ff66d25cfd7ff46d2bd66b7005ca8b45d0e37e780d439e3032785bd84d99a4`  
		Last Modified: Sat, 09 Sep 2017 01:58:27 GMT  
		Size: 19.3 MB (19277906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a738f35f8156a2f3caf349b0ab4c1755fbf8357715d4767101b83b94c763ea`  
		Last Modified: Wed, 20 Sep 2017 16:28:42 GMT  
		Size: 3.9 MB (3870621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4dbfceb33c482f85d57ff6e04fca6fd0b810adab4e6d0e6f8c3c024eb145d49`  
		Last Modified: Wed, 20 Sep 2017 16:28:39 GMT  
		Size: 4.1 KB (4062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c82296aa104dfea75992433603c9720b87c8bfd73e4af58705256b4380086b9`  
		Last Modified: Wed, 20 Sep 2017 16:28:37 GMT  
		Size: 926.4 KB (926399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41fea946f33fa32cc5bc1696ee9623149eb9aa7866cb7fb07f0ff85e2f3f6d3e`  
		Last Modified: Wed, 20 Sep 2017 16:28:45 GMT  
		Size: 24.8 MB (24785658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a67363c7c321a1963138533cf7e531414bef50ffa963ea6400c656ab30793a`  
		Last Modified: Tue, 26 Sep 2017 02:38:05 GMT  
		Size: 6.8 MB (6820266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:882d7c81c4fd8d87f1639fb34c7f6bd340b8c27340450b793b8bd1802378bb19`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 2.3 KB (2266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6006f458a280e4f85c8b800b3e8c6015c010fa37231b9fbded884ec82ca123c4`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:306a8643ede81cf170475acd824acc610fad638a4732410e481711f2887509ba`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8acf0dbf49463ca96cedb0af280d3ff72228824fd8e04768508e12c1cb4a1eab`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 3.9 KB (3944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7402ee5b71a5d7d904e105035c0ffc020944cc3e5156d3c147408b79851c066f`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.12` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:33fcfba6ced7bfe60082538a3c705923bdb4ed7814199bc6c0a6bb10e1e02be7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57280304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10ed14bd6eeba2ba5892f9b0e671d68c9b0a67f1aa7e9f8a83a8be8a6795fdcb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 17:29:09 GMT
ADD file:16391f421551b998f1ff496c48dc67f34dd2003077158fd1af78a898ea367e1d in / 
# Fri, 08 Sep 2017 17:29:10 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 02:59:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 02:59:27 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Sat, 09 Sep 2017 02:59:28 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 03:00:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 09 Sep 2017 03:01:51 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:01:52 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 13:52:33 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 13:52:34 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 13:52:34 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 13:52:35 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 13:52:35 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 13:53:37 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 13:53:38 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 13:53:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 13:53:40 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 13:53:42 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 13:53:43 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 13:53:44 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 13:53:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 13:53:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 13:53:47 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 13:53:48 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:0bd6dbb95c7a219839ea8345519110bbccc30c113a72119bbd92c7fe2a3f1e78`  
		Last Modified: Fri, 08 Sep 2017 17:43:38 GMT  
		Size: 20.3 MB (20337273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86d1f7cb33d030873ce67985178e017cf76b8615e36c7e9213fda4308e8214a`  
		Last Modified: Sat, 09 Sep 2017 03:03:39 GMT  
		Size: 4.1 MB (4075190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9d563980d836cdeb8b18f35f005a3bf20e016369956d96b5738ab23344f689`  
		Last Modified: Sat, 09 Sep 2017 03:03:37 GMT  
		Size: 4.1 KB (4077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2667d8cce687eb930ed23a63969bc98a124dbcdfa61514de284b26bdd5c12d30`  
		Last Modified: Sat, 09 Sep 2017 03:03:36 GMT  
		Size: 919.5 KB (919509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:359e3bdc9c490688f368c3da21e357706ea651d5f4ac77e8a98f04d883725214`  
		Last Modified: Sat, 09 Sep 2017 03:03:41 GMT  
		Size: 25.0 MB (25042765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ceb16b4a783f0882522e0eac5aae34e2a56ccd464a3470571a7319854618a6`  
		Last Modified: Tue, 26 Sep 2017 13:54:37 GMT  
		Size: 6.9 MB (6894890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e00fc1cb980fc2098cc4cfc79ef63fce9687be9830d5cd639d369ea87b085c`  
		Last Modified: Tue, 26 Sep 2017 13:54:30 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f199b6b2bb6aaf19714044a9c966721cd395c44fbccda942ca2c167aba93a9`  
		Last Modified: Tue, 26 Sep 2017 13:54:31 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9570116eba3b76961b98d35d2ca3751026cf75061e75254f770fe2de0493dc2d`  
		Last Modified: Tue, 26 Sep 2017 13:54:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efd29cce1888f4f087980637122506fa4a742fdee8a075bacf1f73a52421c5d`  
		Last Modified: Tue, 26 Sep 2017 13:54:31 GMT  
		Size: 3.9 KB (3943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab586d5c3878d3a978d09b7b64afdc0e03ca09156c2682b47ebfe0d90eaecadd`  
		Last Modified: Tue, 26 Sep 2017 13:54:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.12` - linux; 386

```console
$ docker pull rabbitmq@sha256:493521091d40da286beef72b6b906c2aeca75df9ea7bf7178fe11a7365f939d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63899799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc4f5d17c9909bb436cb63df0f069119cead72381b9334cc45287891861fefab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:57 GMT
ADD file:637a2d4ad21512f6aa9863626de3b678f1aff76377357d7e15fc6a381ec94689 in / 
# Fri, 08 Sep 2017 13:19:57 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:18:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:18:16 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 08 Sep 2017 17:18:16 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 17:18:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 17:19:02 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:19:03 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 10:46:41 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 10:46:41 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 10:46:41 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 10:46:42 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 10:46:42 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 10:47:17 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 10:47:17 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 10:47:18 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 10:47:18 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 10:47:19 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 10:47:19 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 10:47:20 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 10:47:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 10:47:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 10:47:21 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 10:47:21 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:2f5ca21e3ce4be74a6720d0866b1c95e310ae9d9494d9e5155a3633cd5cd62cd`  
		Last Modified: Fri, 08 Sep 2017 13:27:56 GMT  
		Size: 23.1 MB (23125784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af682eb40771833b2e56648c8c1f01ecd94f04c826f86d5adb47f44b8956adc2`  
		Last Modified: Fri, 08 Sep 2017 17:19:37 GMT  
		Size: 4.8 MB (4804024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40af7b9b4d4a547cc0e0fb1463ba275401d5a51b63d605c554bd181b5b31a0d5`  
		Last Modified: Fri, 08 Sep 2017 17:19:36 GMT  
		Size: 4.1 KB (4058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870f9f6c5d7404e44efe1dc21317b5bb3666adc79a386bd0446f701c976776db`  
		Last Modified: Fri, 08 Sep 2017 17:19:34 GMT  
		Size: 931.5 KB (931532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73494470c557dfa90ae0e6c205c0a308a89c35b61d3e449bf54f41a5c9381102`  
		Last Modified: Fri, 08 Sep 2017 17:19:37 GMT  
		Size: 27.8 MB (27818774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef6027902858a00f26bc93f1744a20bcfd8c66189b6be1c5406e67d866f2731`  
		Last Modified: Tue, 26 Sep 2017 10:47:43 GMT  
		Size: 7.2 MB (7209028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93aa20a500b7490c164a679f28f408308197f9dc614dc3778a71d1216c84cb6`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadfc0b00afa986d1ea6419b09f939604e3c32e2c4587b72055ad5ee82e9d866`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abdc410ca68ef3c8f860a8ef00adabdb43c4674d6fd26bfec79569c84f8ed0d0`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88bd1c9ded163839f4adc1e57afa6ebd4c07821831123df6af9d7793ab21de72`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 3.9 KB (3945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4134d2d867d0fadca6000f52169b319a02a544f94efbc9bb7f6e6b7f718ed7c8`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.12` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:f779d3c4122096ce89cc5d3473b9f5e1891a636dc85ba442dfc5cab64f438157
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60384781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d66d3159ca9046ef3addbd46e7aa24038c38ad82a0c3a92c54e3f698a34f24b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:22 GMT
ADD file:1422f50e4e998477f6c3b2fcee6853da10eb8bca7926ec70e494ff485f6284d7 in / 
# Fri, 08 Sep 2017 00:34:22 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 22:51:21 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 22:51:28 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Sep 2017 22:51:30 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Sep 2017 22:52:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Sep 2017 22:54:34 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 22:54:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 07:11:36 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 07:11:38 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 07:11:41 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 07:11:43 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 07:11:46 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 07:13:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 07:14:00 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 07:14:06 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 07:14:10 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 07:14:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 07:14:29 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 07:14:32 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 07:14:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 07:14:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 07:14:43 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 07:14:45 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:7ff7f6fdf12a09feca6f75b5d90b860059bdccf4185a9dab7c2c5b9e6e90123a`  
		Last Modified: Fri, 08 Sep 2017 00:41:42 GMT  
		Size: 22.7 MB (22746060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03ccdc113ab1266db618ff04ab98527c7167e2df7b81dbda212235bcf532e35`  
		Last Modified: Tue, 12 Sep 2017 22:56:39 GMT  
		Size: 4.4 MB (4360373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16f43af127417f02f39d312d2ecbac85ebf5b3084eddf896e25d76c4eea2d7be`  
		Last Modified: Tue, 12 Sep 2017 22:56:37 GMT  
		Size: 4.1 KB (4104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a427330ed64ea1260490780e2c2ddc98da973b112b4f73d9085dcb97c8f753cb`  
		Last Modified: Tue, 12 Sep 2017 22:56:35 GMT  
		Size: 920.8 KB (920840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f09c78cb850af5f76c18ef1b42c64dbed4af34f8a8e6187ae51a74e14d1bb6e`  
		Last Modified: Tue, 12 Sep 2017 22:56:39 GMT  
		Size: 25.5 MB (25492757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc1bd551250de979c6dc899a460556ff21e8e33b41c9fd185e74bdceb95be1d`  
		Last Modified: Tue, 26 Sep 2017 07:15:26 GMT  
		Size: 6.9 MB (6854043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72846fb78c462687ac9d09d8ffa431ac1e72621aa0edc72347fda8bc05d2af50`  
		Last Modified: Tue, 26 Sep 2017 07:15:22 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a2dbcfab390ddd950539cdd0c6e6c325c56da7b66e12de85f1e7f9cdeba37c9`  
		Last Modified: Tue, 26 Sep 2017 07:15:22 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8329c8cc338669480a73421c1b4249a24ea9bb89ab9ca0dd63ce927686b81917`  
		Last Modified: Tue, 26 Sep 2017 07:15:21 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045a56a447171005afa59312a0c9f56453bdf43878e12be3f795e50924a3dbf3`  
		Last Modified: Tue, 26 Sep 2017 07:15:22 GMT  
		Size: 3.9 KB (3947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f291fdc1ba0502cd7ea5b489c7c066bad28b5bcc03a86a40a438000e2467852d`  
		Last Modified: Tue, 26 Sep 2017 07:15:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.12` - linux; s390x

```console
$ docker pull rabbitmq@sha256:2d9966b9e33d98e421bc074ef1b56233009180721050fc4b453dc6edde8dd370
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60365697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:484735e1071114dde57fd0c9173dc9fe8ea5a1de5e4f5d9f9ee5be38c751f18c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 05:23:00 GMT
ADD file:9b074cf37adfa815e3a6b300f8652eb77a06cfeea3f74fd021795cff318ca2ce in / 
# Fri, 08 Sep 2017 05:23:00 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:12:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:12:36 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 08 Sep 2017 07:12:36 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 07:12:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 07:13:13 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:13:14 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 08 Sep 2017 07:13:17 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 07:13:17 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Wed, 13 Sep 2017 17:06:27 GMT
ENV RABBITMQ_VERSION=3.6.12
# Wed, 13 Sep 2017 17:06:27 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Wed, 13 Sep 2017 17:06:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 17:06:38 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 17:06:38 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 13 Sep 2017 17:06:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 13 Sep 2017 17:06:39 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 13 Sep 2017 17:06:40 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 13 Sep 2017 17:06:40 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 13 Sep 2017 17:06:41 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Wed, 13 Sep 2017 17:06:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 17:06:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 17:06:42 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 13 Sep 2017 17:06:42 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:4a3a3449ff754d3a7e8f189d020e507ff2cb0fd172b4240ca2d1d78e2d65d544`  
		Last Modified: Fri, 08 Sep 2017 05:27:12 GMT  
		Size: 22.3 MB (22338151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9f9c3f65f8623995e82dca85129c63aebf311a1f7b80fdde7eb1b1a6a9a7c4`  
		Last Modified: Fri, 08 Sep 2017 07:13:52 GMT  
		Size: 4.5 MB (4530037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e766d543dae983ec5d1fb0a8ece5da0c790574ad27de51775826875e63e48cc6`  
		Last Modified: Fri, 08 Sep 2017 07:13:50 GMT  
		Size: 4.1 KB (4070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7482794ab6a0465927e4cef738eceacc49e28b4e8f325f0f6153f16df398d12e`  
		Last Modified: Fri, 08 Sep 2017 07:13:50 GMT  
		Size: 938.0 KB (938009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f8dce71bb341d4baafcc9c8986c3cce6156dc353505e6dc9c821e4330b868da`  
		Last Modified: Fri, 08 Sep 2017 07:13:54 GMT  
		Size: 25.6 MB (25619550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:753d738c05295037a1c7f7c66dd9faae22257631385c9b9291d4e46f8679e724`  
		Last Modified: Fri, 08 Sep 2017 07:13:49 GMT  
		Size: 3.1 KB (3108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d70befe6ae825e874830dfdf77e8090dfc7fcaa9b321b8f30a06db9d502564`  
		Last Modified: Fri, 08 Sep 2017 07:13:49 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae25609266a393f768cb3501e6cd26353d5e4f3b3cc9d19f8ebbd73e4d8c6eea`  
		Last Modified: Wed, 13 Sep 2017 17:06:57 GMT  
		Size: 6.9 MB (6925832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2eaf458900cd749705c6be95bb97cbc3d01bf97bb2b0f29c7b1c773076e6d4`  
		Last Modified: Wed, 13 Sep 2017 17:06:54 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d373a6630d7f98be44bb2157cec21fe02d417e123b260cd3241d5d9f2eda68d1`  
		Last Modified: Wed, 13 Sep 2017 17:06:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16bab863dce632474453c632292a0cac44271d5180ea761e2f98cca40b65747f`  
		Last Modified: Wed, 13 Sep 2017 17:06:54 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f649e97eb461bdd3dba1a1056d97ed30bd0651a22dc1b7a7b436849136e5cd`  
		Last Modified: Wed, 13 Sep 2017 17:06:55 GMT  
		Size: 4.1 KB (4067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4e4c6b050fd9c884b294bfee7322ff8b6bd53a1c9155a1d5d7393c3293055a`  
		Last Modified: Wed, 13 Sep 2017 17:06:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.12-alpine`

```console
$ docker pull rabbitmq@sha256:19581671812e144f7cdd4d7502b9f10ec8c04a9393c645f502eede00b7ece152
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.12-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:24a56a03eab0dca16f3ed22382718f8776a98da9c373b4ea10668bcd88eb9d5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23557049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04cf057cce5489de12e87069fabd343f47bdb5ec2fccd58262e1a8b53761d835`
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
# Tue, 26 Sep 2017 00:49:28 GMT
COPY file:5bc938ee921736a8b5afdf666cec851939be30101ae00139f213145b080fc5cb in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:49:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:49:29 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 00:49:29 GMT
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
	-	`sha256:3a8a8b5b44b48666b965fde7188c4e0f33a242fa5cc79efc4df8e0cfe41c0a96`  
		Last Modified: Tue, 26 Sep 2017 00:51:00 GMT  
		Size: 3.9 KB (3942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.12-management`

```console
$ docker pull rabbitmq@sha256:970ea9fee90ad6ecbfc464e4f55a2cb4d942510c6f5a5e00dfcda9c277d3ffcf
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
$ docker pull rabbitmq@sha256:9ccc4ce528db095a22ba2481f6ba3f16d5dc8713983596a302e4fbe0ed9f2f82
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.8 MB (62848424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:888b1cf3f00326a0dafdf00500ea8be23632192278fbedd2a9821a736051c011`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:48 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Wed, 13 Sep 2017 08:41:49 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 01:46:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 01:46:10 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 19 Sep 2017 01:46:11 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 01:46:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 19 Sep 2017 01:46:57 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 01:46:57 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 00:48:03 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 00:48:04 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 00:48:04 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 00:48:04 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 00:48:04 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 00:48:48 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 00:48:49 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 00:48:49 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 00:48:50 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 00:48:50 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 00:48:51 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 00:48:51 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:48:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 00:48:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:48:56 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 00:48:56 GMT
CMD ["rabbitmq-server"]
# Tue, 26 Sep 2017 00:49:08 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 26 Sep 2017 00:49:08 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22587c0b6c1cafde12872ef7d006984387fc5578dfd545d22463bf5edc452b1`  
		Last Modified: Tue, 19 Sep 2017 01:48:26 GMT  
		Size: 4.5 MB (4499395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7cdb9d7769f63be56be62adb2d2db684e1b2936068dcddd7d2a91341e66d29`  
		Last Modified: Tue, 19 Sep 2017 01:48:25 GMT  
		Size: 4.1 KB (4075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc614e186c613f98368edf79d242daeefd3e565bb92cd42c60a4c46c3bb1c5f0`  
		Last Modified: Tue, 19 Sep 2017 01:48:24 GMT  
		Size: 952.0 KB (951956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63c239bab1d94dd75841ab35101bd059cb0a4fda703238aa3d74348ce925e54`  
		Last Modified: Tue, 19 Sep 2017 01:48:26 GMT  
		Size: 27.7 MB (27703791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae5fc200653eebf990ee3feb87159baf167327749460e6bc93d6938b9dc4eee`  
		Last Modified: Tue, 26 Sep 2017 00:50:01 GMT  
		Size: 7.2 MB (7194356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5cf9a27404e2ab036228a854fdbf5a7f80499b98fff6bb32f034ab8f4c3ac5`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c298e89eaf82cfe4d652c073d71884d662c433fcb15f8f2e81e5d29ed13e1f`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c1094fa1968e0e621b08381b9cdfa21eb41916ebbb71d1268ccfd723c64f91`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550c8ace2244275f8051a4a1e09b0db375cfcd49ed86b6c3833ba0e4acf29d12`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 3.9 KB (3946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62899172d555cce3e3c93f09a52a511946df7d2cebc63313382416b0c73cc6db`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:107a9ae5e162c4df0657ed3ee71c5018b18c522df9b836dac57fb4eb101ec0a0`  
		Last Modified: Tue, 26 Sep 2017 00:50:33 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.12-management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:9a0aac4b008cb327863c5650d9c644bf074a3ecaf8d35706a2795344f463c9c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.4 MB (58427104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afce555c606688ed03078a4f3bba9a10687ad4772ae95233a6b74e6a55ab2499`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 20:04:19 GMT
ADD file:7a4f76115b8f87534c9bcd4a40386c07af5c7bfdb3429f22d53d07faa0de57da in / 
# Fri, 08 Sep 2017 20:04:20 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 03:12:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:12:54 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Sat, 09 Sep 2017 03:12:55 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 03:19:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 09 Sep 2017 03:25:04 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:25:06 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 14:15:05 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 14:15:06 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 14:15:07 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 14:15:08 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 14:15:09 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 14:20:34 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 14:20:35 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 14:20:37 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 14:20:38 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 14:20:41 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 14:20:43 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 14:20:44 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 14:20:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 14:20:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 14:20:48 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 14:20:49 GMT
CMD ["rabbitmq-server"]
# Tue, 26 Sep 2017 14:21:18 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 26 Sep 2017 14:21:19 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:fef762b8f53b037e95e7c93f502931dc720c98a6e4ab7b70807fe14fafba6103`  
		Last Modified: Fri, 08 Sep 2017 20:21:38 GMT  
		Size: 21.2 MB (21161607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4da49272ed622a1d80a2784d63c0b0cf69ce2d75e4cd794d8186cb7364d1b0`  
		Last Modified: Sat, 09 Sep 2017 03:29:08 GMT  
		Size: 4.2 MB (4231481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75616693a72bc2c9efb81fb47d33774fc0a25753163ca66847efa1ca8a0621f`  
		Last Modified: Sat, 09 Sep 2017 03:29:02 GMT  
		Size: 4.1 KB (4055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72dfadb2b70b7fdefcf3c25ecec8003122979ab13cdca42bc6603d2b3b5b428c`  
		Last Modified: Sat, 09 Sep 2017 03:29:01 GMT  
		Size: 942.7 KB (942658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe5a4e495e12fb72cf7e3cbe65432923be24a177a73eaa71f7b680d3899ab1d`  
		Last Modified: Sat, 09 Sep 2017 03:29:09 GMT  
		Size: 25.2 MB (25170762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6a79b9fe5d3b9e27cd63daca1194cf700ea4d8e6961a8cef3e1b2d56d5cbae`  
		Last Modified: Tue, 26 Sep 2017 14:21:47 GMT  
		Size: 6.9 MB (6909750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a715b822e824a7da8f54f85376183483fdca50ae1e588910f1b5e8d97370f2a3`  
		Last Modified: Tue, 26 Sep 2017 14:21:42 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae47fb90313a9b42838d34b0d9b7aaa37f25c54f4fbf912fbba3e43b734edc5`  
		Last Modified: Tue, 26 Sep 2017 14:21:42 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3be265893d48df28b19dcd42177c464ace95a4f93d4a918b175caf8ae3a27c`  
		Last Modified: Tue, 26 Sep 2017 14:21:42 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f474cde49ffcecb2feeeda61c2333dbada3cf4a435652b34344cdc78155ba122`  
		Last Modified: Tue, 26 Sep 2017 14:21:42 GMT  
		Size: 3.9 KB (3947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d41ae105df290e467c5ca8322955fb8ea8141f2a62615f15b32e2940e66d71`  
		Last Modified: Tue, 26 Sep 2017 14:21:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371c0c16a5c7e164b6c263dd1ab6a7bff92121aa42bc38624254d25c5349c9bf`  
		Last Modified: Tue, 26 Sep 2017 14:22:41 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.12-management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:80e69c8dae33911eab1912c00d00ae583563c446d77d1485288c5f54ad2c8b13
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55691709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:966c6b25fc8606cea552b4d21777d10632a633dbe0ee5c434e15f747eb81c3c5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Sat, 09 Sep 2017 01:45:09 GMT
ADD file:c64f62f8baccded9d94037c0935c477d3dd18839a9c4e565679657d4c9df92c8 in / 
# Sat, 09 Sep 2017 01:45:10 GMT
CMD ["bash"]
# Wed, 20 Sep 2017 16:17:13 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 20 Sep 2017 16:17:17 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 20 Sep 2017 16:17:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 20 Sep 2017 16:19:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 20 Sep 2017 16:22:48 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 20 Sep 2017 16:22:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 02:34:33 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 02:34:34 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 02:34:35 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 02:34:36 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 02:34:37 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 02:36:33 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 02:36:34 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 02:36:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 02:36:39 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 02:36:42 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 02:36:44 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 02:36:46 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 02:36:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 02:36:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 02:36:51 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 02:36:52 GMT
CMD ["rabbitmq-server"]
# Tue, 26 Sep 2017 02:37:33 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 26 Sep 2017 02:37:34 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:07ff66d25cfd7ff46d2bd66b7005ca8b45d0e37e780d439e3032785bd84d99a4`  
		Last Modified: Sat, 09 Sep 2017 01:58:27 GMT  
		Size: 19.3 MB (19277906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a738f35f8156a2f3caf349b0ab4c1755fbf8357715d4767101b83b94c763ea`  
		Last Modified: Wed, 20 Sep 2017 16:28:42 GMT  
		Size: 3.9 MB (3870621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4dbfceb33c482f85d57ff6e04fca6fd0b810adab4e6d0e6f8c3c024eb145d49`  
		Last Modified: Wed, 20 Sep 2017 16:28:39 GMT  
		Size: 4.1 KB (4062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c82296aa104dfea75992433603c9720b87c8bfd73e4af58705256b4380086b9`  
		Last Modified: Wed, 20 Sep 2017 16:28:37 GMT  
		Size: 926.4 KB (926399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41fea946f33fa32cc5bc1696ee9623149eb9aa7866cb7fb07f0ff85e2f3f6d3e`  
		Last Modified: Wed, 20 Sep 2017 16:28:45 GMT  
		Size: 24.8 MB (24785658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a67363c7c321a1963138533cf7e531414bef50ffa963ea6400c656ab30793a`  
		Last Modified: Tue, 26 Sep 2017 02:38:05 GMT  
		Size: 6.8 MB (6820266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:882d7c81c4fd8d87f1639fb34c7f6bd340b8c27340450b793b8bd1802378bb19`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 2.3 KB (2266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6006f458a280e4f85c8b800b3e8c6015c010fa37231b9fbded884ec82ca123c4`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:306a8643ede81cf170475acd824acc610fad638a4732410e481711f2887509ba`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8acf0dbf49463ca96cedb0af280d3ff72228824fd8e04768508e12c1cb4a1eab`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 3.9 KB (3944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7402ee5b71a5d7d904e105035c0ffc020944cc3e5156d3c147408b79851c066f`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72385e05bf3ec71894007c950877329ce313f804780206cb51674c49dc4c1e9`  
		Last Modified: Tue, 26 Sep 2017 02:38:57 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.12-management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:bfaffd0ebbdccde36220ac90d2f04444f61ff3b2bd639c0dc8e147273c965cfb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57280497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cc534674521a11087ad2dd3c98249a52616ceb228d46137468a1354184368f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 17:29:09 GMT
ADD file:16391f421551b998f1ff496c48dc67f34dd2003077158fd1af78a898ea367e1d in / 
# Fri, 08 Sep 2017 17:29:10 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 02:59:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 02:59:27 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Sat, 09 Sep 2017 02:59:28 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 03:00:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 09 Sep 2017 03:01:51 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:01:52 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 13:52:33 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 13:52:34 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 13:52:34 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 13:52:35 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 13:52:35 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 13:53:37 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 13:53:38 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 13:53:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 13:53:40 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 13:53:42 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 13:53:43 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 13:53:44 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 13:53:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 13:53:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 13:53:47 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 13:53:48 GMT
CMD ["rabbitmq-server"]
# Tue, 26 Sep 2017 13:54:14 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 26 Sep 2017 13:54:14 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:0bd6dbb95c7a219839ea8345519110bbccc30c113a72119bbd92c7fe2a3f1e78`  
		Last Modified: Fri, 08 Sep 2017 17:43:38 GMT  
		Size: 20.3 MB (20337273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86d1f7cb33d030873ce67985178e017cf76b8615e36c7e9213fda4308e8214a`  
		Last Modified: Sat, 09 Sep 2017 03:03:39 GMT  
		Size: 4.1 MB (4075190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9d563980d836cdeb8b18f35f005a3bf20e016369956d96b5738ab23344f689`  
		Last Modified: Sat, 09 Sep 2017 03:03:37 GMT  
		Size: 4.1 KB (4077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2667d8cce687eb930ed23a63969bc98a124dbcdfa61514de284b26bdd5c12d30`  
		Last Modified: Sat, 09 Sep 2017 03:03:36 GMT  
		Size: 919.5 KB (919509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:359e3bdc9c490688f368c3da21e357706ea651d5f4ac77e8a98f04d883725214`  
		Last Modified: Sat, 09 Sep 2017 03:03:41 GMT  
		Size: 25.0 MB (25042765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ceb16b4a783f0882522e0eac5aae34e2a56ccd464a3470571a7319854618a6`  
		Last Modified: Tue, 26 Sep 2017 13:54:37 GMT  
		Size: 6.9 MB (6894890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e00fc1cb980fc2098cc4cfc79ef63fce9687be9830d5cd639d369ea87b085c`  
		Last Modified: Tue, 26 Sep 2017 13:54:30 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f199b6b2bb6aaf19714044a9c966721cd395c44fbccda942ca2c167aba93a9`  
		Last Modified: Tue, 26 Sep 2017 13:54:31 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9570116eba3b76961b98d35d2ca3751026cf75061e75254f770fe2de0493dc2d`  
		Last Modified: Tue, 26 Sep 2017 13:54:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efd29cce1888f4f087980637122506fa4a742fdee8a075bacf1f73a52421c5d`  
		Last Modified: Tue, 26 Sep 2017 13:54:31 GMT  
		Size: 3.9 KB (3943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab586d5c3878d3a978d09b7b64afdc0e03ca09156c2682b47ebfe0d90eaecadd`  
		Last Modified: Tue, 26 Sep 2017 13:54:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59991cb4da27783b48ca4c6ba921931557c08108b315142ec4ca4a4874e1f2f9`  
		Last Modified: Tue, 26 Sep 2017 13:55:20 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.12-management` - linux; 386

```console
$ docker pull rabbitmq@sha256:e058af81d0f7da2a561c2fa21b7fb66e061b4de9b2064ac2191d35b9b061c7c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63899992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df82247f11dc2e764de97c86ba9bc5761c86731298cbc4d0e4a6bd2ead9507e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:57 GMT
ADD file:637a2d4ad21512f6aa9863626de3b678f1aff76377357d7e15fc6a381ec94689 in / 
# Fri, 08 Sep 2017 13:19:57 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:18:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:18:16 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 08 Sep 2017 17:18:16 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 17:18:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 17:19:02 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:19:03 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 10:46:41 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 10:46:41 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 10:46:41 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 10:46:42 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 10:46:42 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 10:47:17 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 10:47:17 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 10:47:18 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 10:47:18 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 10:47:19 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 10:47:19 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 10:47:20 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 10:47:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 10:47:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 10:47:21 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 10:47:21 GMT
CMD ["rabbitmq-server"]
# Tue, 26 Sep 2017 10:47:33 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 26 Sep 2017 10:47:33 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:2f5ca21e3ce4be74a6720d0866b1c95e310ae9d9494d9e5155a3633cd5cd62cd`  
		Last Modified: Fri, 08 Sep 2017 13:27:56 GMT  
		Size: 23.1 MB (23125784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af682eb40771833b2e56648c8c1f01ecd94f04c826f86d5adb47f44b8956adc2`  
		Last Modified: Fri, 08 Sep 2017 17:19:37 GMT  
		Size: 4.8 MB (4804024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40af7b9b4d4a547cc0e0fb1463ba275401d5a51b63d605c554bd181b5b31a0d5`  
		Last Modified: Fri, 08 Sep 2017 17:19:36 GMT  
		Size: 4.1 KB (4058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870f9f6c5d7404e44efe1dc21317b5bb3666adc79a386bd0446f701c976776db`  
		Last Modified: Fri, 08 Sep 2017 17:19:34 GMT  
		Size: 931.5 KB (931532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73494470c557dfa90ae0e6c205c0a308a89c35b61d3e449bf54f41a5c9381102`  
		Last Modified: Fri, 08 Sep 2017 17:19:37 GMT  
		Size: 27.8 MB (27818774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef6027902858a00f26bc93f1744a20bcfd8c66189b6be1c5406e67d866f2731`  
		Last Modified: Tue, 26 Sep 2017 10:47:43 GMT  
		Size: 7.2 MB (7209028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93aa20a500b7490c164a679f28f408308197f9dc614dc3778a71d1216c84cb6`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadfc0b00afa986d1ea6419b09f939604e3c32e2c4587b72055ad5ee82e9d866`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abdc410ca68ef3c8f860a8ef00adabdb43c4674d6fd26bfec79569c84f8ed0d0`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88bd1c9ded163839f4adc1e57afa6ebd4c07821831123df6af9d7793ab21de72`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 3.9 KB (3945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4134d2d867d0fadca6000f52169b319a02a544f94efbc9bb7f6e6b7f718ed7c8`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fd468bbd5c8f6079133d717511f3954281fe3e669d60bfcb260eb5723ca6a68`  
		Last Modified: Tue, 26 Sep 2017 10:48:08 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.12-management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:c815e58493c50241f4a6b26e5ebd1a9420afb503dc626b065874cc4d7c6f5a09
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60384976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66d26183a51c40de65f9210997f541616f8f8a6937c1419653e7ded0f3a5aa09`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:22 GMT
ADD file:1422f50e4e998477f6c3b2fcee6853da10eb8bca7926ec70e494ff485f6284d7 in / 
# Fri, 08 Sep 2017 00:34:22 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 22:51:21 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 22:51:28 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Sep 2017 22:51:30 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Sep 2017 22:52:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Sep 2017 22:54:34 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 22:54:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 07:11:36 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 07:11:38 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 07:11:41 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 07:11:43 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 07:11:46 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 07:13:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 07:14:00 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 07:14:06 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 07:14:10 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 07:14:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 07:14:29 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 07:14:32 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 07:14:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 07:14:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 07:14:43 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 07:14:45 GMT
CMD ["rabbitmq-server"]
# Tue, 26 Sep 2017 07:15:08 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 26 Sep 2017 07:15:11 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:7ff7f6fdf12a09feca6f75b5d90b860059bdccf4185a9dab7c2c5b9e6e90123a`  
		Last Modified: Fri, 08 Sep 2017 00:41:42 GMT  
		Size: 22.7 MB (22746060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03ccdc113ab1266db618ff04ab98527c7167e2df7b81dbda212235bcf532e35`  
		Last Modified: Tue, 12 Sep 2017 22:56:39 GMT  
		Size: 4.4 MB (4360373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16f43af127417f02f39d312d2ecbac85ebf5b3084eddf896e25d76c4eea2d7be`  
		Last Modified: Tue, 12 Sep 2017 22:56:37 GMT  
		Size: 4.1 KB (4104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a427330ed64ea1260490780e2c2ddc98da973b112b4f73d9085dcb97c8f753cb`  
		Last Modified: Tue, 12 Sep 2017 22:56:35 GMT  
		Size: 920.8 KB (920840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f09c78cb850af5f76c18ef1b42c64dbed4af34f8a8e6187ae51a74e14d1bb6e`  
		Last Modified: Tue, 12 Sep 2017 22:56:39 GMT  
		Size: 25.5 MB (25492757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc1bd551250de979c6dc899a460556ff21e8e33b41c9fd185e74bdceb95be1d`  
		Last Modified: Tue, 26 Sep 2017 07:15:26 GMT  
		Size: 6.9 MB (6854043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72846fb78c462687ac9d09d8ffa431ac1e72621aa0edc72347fda8bc05d2af50`  
		Last Modified: Tue, 26 Sep 2017 07:15:22 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a2dbcfab390ddd950539cdd0c6e6c325c56da7b66e12de85f1e7f9cdeba37c9`  
		Last Modified: Tue, 26 Sep 2017 07:15:22 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8329c8cc338669480a73421c1b4249a24ea9bb89ab9ca0dd63ce927686b81917`  
		Last Modified: Tue, 26 Sep 2017 07:15:21 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045a56a447171005afa59312a0c9f56453bdf43878e12be3f795e50924a3dbf3`  
		Last Modified: Tue, 26 Sep 2017 07:15:22 GMT  
		Size: 3.9 KB (3947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f291fdc1ba0502cd7ea5b489c7c066bad28b5bcc03a86a40a438000e2467852d`  
		Last Modified: Tue, 26 Sep 2017 07:15:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99f1f25546af0ab5aa0166a8b75799ca452e21a6487b0fcfd8e9d40d34202d6`  
		Last Modified: Tue, 26 Sep 2017 07:15:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.12-management` - linux; s390x

```console
$ docker pull rabbitmq@sha256:bc6aae7dfd707f5bfbb6987b17323b8b7a2797c59d9a771d248579e43f339359
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60365891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88d1918ef0b129524323e95c2465bf98bf10e67ab66b233d5e066c625995bb6a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 05:23:00 GMT
ADD file:9b074cf37adfa815e3a6b300f8652eb77a06cfeea3f74fd021795cff318ca2ce in / 
# Fri, 08 Sep 2017 05:23:00 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:12:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:12:36 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 08 Sep 2017 07:12:36 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 07:12:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 07:13:13 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:13:14 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 08 Sep 2017 07:13:17 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 07:13:17 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Wed, 13 Sep 2017 17:06:27 GMT
ENV RABBITMQ_VERSION=3.6.12
# Wed, 13 Sep 2017 17:06:27 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Wed, 13 Sep 2017 17:06:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 17:06:38 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 17:06:38 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 13 Sep 2017 17:06:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 13 Sep 2017 17:06:39 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 13 Sep 2017 17:06:40 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 13 Sep 2017 17:06:40 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 13 Sep 2017 17:06:41 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Wed, 13 Sep 2017 17:06:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 17:06:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 17:06:42 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 13 Sep 2017 17:06:42 GMT
CMD ["rabbitmq-server"]
# Wed, 13 Sep 2017 17:06:45 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 13 Sep 2017 17:06:46 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:4a3a3449ff754d3a7e8f189d020e507ff2cb0fd172b4240ca2d1d78e2d65d544`  
		Last Modified: Fri, 08 Sep 2017 05:27:12 GMT  
		Size: 22.3 MB (22338151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9f9c3f65f8623995e82dca85129c63aebf311a1f7b80fdde7eb1b1a6a9a7c4`  
		Last Modified: Fri, 08 Sep 2017 07:13:52 GMT  
		Size: 4.5 MB (4530037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e766d543dae983ec5d1fb0a8ece5da0c790574ad27de51775826875e63e48cc6`  
		Last Modified: Fri, 08 Sep 2017 07:13:50 GMT  
		Size: 4.1 KB (4070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7482794ab6a0465927e4cef738eceacc49e28b4e8f325f0f6153f16df398d12e`  
		Last Modified: Fri, 08 Sep 2017 07:13:50 GMT  
		Size: 938.0 KB (938009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f8dce71bb341d4baafcc9c8986c3cce6156dc353505e6dc9c821e4330b868da`  
		Last Modified: Fri, 08 Sep 2017 07:13:54 GMT  
		Size: 25.6 MB (25619550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:753d738c05295037a1c7f7c66dd9faae22257631385c9b9291d4e46f8679e724`  
		Last Modified: Fri, 08 Sep 2017 07:13:49 GMT  
		Size: 3.1 KB (3108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d70befe6ae825e874830dfdf77e8090dfc7fcaa9b321b8f30a06db9d502564`  
		Last Modified: Fri, 08 Sep 2017 07:13:49 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae25609266a393f768cb3501e6cd26353d5e4f3b3cc9d19f8ebbd73e4d8c6eea`  
		Last Modified: Wed, 13 Sep 2017 17:06:57 GMT  
		Size: 6.9 MB (6925832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2eaf458900cd749705c6be95bb97cbc3d01bf97bb2b0f29c7b1c773076e6d4`  
		Last Modified: Wed, 13 Sep 2017 17:06:54 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d373a6630d7f98be44bb2157cec21fe02d417e123b260cd3241d5d9f2eda68d1`  
		Last Modified: Wed, 13 Sep 2017 17:06:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16bab863dce632474453c632292a0cac44271d5180ea761e2f98cca40b65747f`  
		Last Modified: Wed, 13 Sep 2017 17:06:54 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f649e97eb461bdd3dba1a1056d97ed30bd0651a22dc1b7a7b436849136e5cd`  
		Last Modified: Wed, 13 Sep 2017 17:06:55 GMT  
		Size: 4.1 KB (4067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4e4c6b050fd9c884b294bfee7322ff8b6bd53a1c9155a1d5d7393c3293055a`  
		Last Modified: Wed, 13 Sep 2017 17:06:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab17e86b7df833c8aab66bc3886aad7fa486a9b2b342bcc70321a0678d1f8db`  
		Last Modified: Wed, 13 Sep 2017 17:07:13 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.12-management-alpine`

```console
$ docker pull rabbitmq@sha256:6f743c90643d1f963a68e29d83aaee0302927f16d5d4f25c300e0438b1b31cdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.12-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:2f5c7d57dac0a174f13e1a8f57957ca0de8ec3862601f6605fbd600fa7829847
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23557241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28ad6a427b57481717491c946711fe3333106db89cceeb5b0c6cc631caf47b1e`
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
# Tue, 26 Sep 2017 00:49:28 GMT
COPY file:5bc938ee921736a8b5afdf666cec851939be30101ae00139f213145b080fc5cb in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:49:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:49:29 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 00:49:29 GMT
CMD ["rabbitmq-server"]
# Tue, 26 Sep 2017 00:49:42 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 26 Sep 2017 00:49:43 GMT
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
	-	`sha256:3a8a8b5b44b48666b965fde7188c4e0f33a242fa5cc79efc4df8e0cfe41c0a96`  
		Last Modified: Tue, 26 Sep 2017 00:51:00 GMT  
		Size: 3.9 KB (3942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4571213d79db74079576c59ebf9a61394c9f5df040bdd26e27de729c2313651`  
		Last Modified: Tue, 26 Sep 2017 00:51:28 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-alpine`

```console
$ docker pull rabbitmq@sha256:19581671812e144f7cdd4d7502b9f10ec8c04a9393c645f502eede00b7ece152
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:24a56a03eab0dca16f3ed22382718f8776a98da9c373b4ea10668bcd88eb9d5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23557049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04cf057cce5489de12e87069fabd343f47bdb5ec2fccd58262e1a8b53761d835`
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
# Tue, 26 Sep 2017 00:49:28 GMT
COPY file:5bc938ee921736a8b5afdf666cec851939be30101ae00139f213145b080fc5cb in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:49:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:49:29 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 00:49:29 GMT
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
	-	`sha256:3a8a8b5b44b48666b965fde7188c4e0f33a242fa5cc79efc4df8e0cfe41c0a96`  
		Last Modified: Tue, 26 Sep 2017 00:51:00 GMT  
		Size: 3.9 KB (3942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management`

```console
$ docker pull rabbitmq@sha256:970ea9fee90ad6ecbfc464e4f55a2cb4d942510c6f5a5e00dfcda9c277d3ffcf
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
$ docker pull rabbitmq@sha256:9ccc4ce528db095a22ba2481f6ba3f16d5dc8713983596a302e4fbe0ed9f2f82
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.8 MB (62848424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:888b1cf3f00326a0dafdf00500ea8be23632192278fbedd2a9821a736051c011`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:48 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Wed, 13 Sep 2017 08:41:49 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 01:46:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 01:46:10 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 19 Sep 2017 01:46:11 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 01:46:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 19 Sep 2017 01:46:57 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 01:46:57 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 00:48:03 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 00:48:04 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 00:48:04 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 00:48:04 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 00:48:04 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 00:48:48 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 00:48:49 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 00:48:49 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 00:48:50 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 00:48:50 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 00:48:51 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 00:48:51 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:48:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 00:48:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:48:56 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 00:48:56 GMT
CMD ["rabbitmq-server"]
# Tue, 26 Sep 2017 00:49:08 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 26 Sep 2017 00:49:08 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22587c0b6c1cafde12872ef7d006984387fc5578dfd545d22463bf5edc452b1`  
		Last Modified: Tue, 19 Sep 2017 01:48:26 GMT  
		Size: 4.5 MB (4499395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7cdb9d7769f63be56be62adb2d2db684e1b2936068dcddd7d2a91341e66d29`  
		Last Modified: Tue, 19 Sep 2017 01:48:25 GMT  
		Size: 4.1 KB (4075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc614e186c613f98368edf79d242daeefd3e565bb92cd42c60a4c46c3bb1c5f0`  
		Last Modified: Tue, 19 Sep 2017 01:48:24 GMT  
		Size: 952.0 KB (951956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63c239bab1d94dd75841ab35101bd059cb0a4fda703238aa3d74348ce925e54`  
		Last Modified: Tue, 19 Sep 2017 01:48:26 GMT  
		Size: 27.7 MB (27703791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae5fc200653eebf990ee3feb87159baf167327749460e6bc93d6938b9dc4eee`  
		Last Modified: Tue, 26 Sep 2017 00:50:01 GMT  
		Size: 7.2 MB (7194356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5cf9a27404e2ab036228a854fdbf5a7f80499b98fff6bb32f034ab8f4c3ac5`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c298e89eaf82cfe4d652c073d71884d662c433fcb15f8f2e81e5d29ed13e1f`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c1094fa1968e0e621b08381b9cdfa21eb41916ebbb71d1268ccfd723c64f91`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550c8ace2244275f8051a4a1e09b0db375cfcd49ed86b6c3833ba0e4acf29d12`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 3.9 KB (3946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62899172d555cce3e3c93f09a52a511946df7d2cebc63313382416b0c73cc6db`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:107a9ae5e162c4df0657ed3ee71c5018b18c522df9b836dac57fb4eb101ec0a0`  
		Last Modified: Tue, 26 Sep 2017 00:50:33 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:9a0aac4b008cb327863c5650d9c644bf074a3ecaf8d35706a2795344f463c9c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.4 MB (58427104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afce555c606688ed03078a4f3bba9a10687ad4772ae95233a6b74e6a55ab2499`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 20:04:19 GMT
ADD file:7a4f76115b8f87534c9bcd4a40386c07af5c7bfdb3429f22d53d07faa0de57da in / 
# Fri, 08 Sep 2017 20:04:20 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 03:12:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:12:54 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Sat, 09 Sep 2017 03:12:55 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 03:19:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 09 Sep 2017 03:25:04 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:25:06 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 14:15:05 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 14:15:06 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 14:15:07 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 14:15:08 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 14:15:09 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 14:20:34 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 14:20:35 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 14:20:37 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 14:20:38 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 14:20:41 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 14:20:43 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 14:20:44 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 14:20:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 14:20:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 14:20:48 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 14:20:49 GMT
CMD ["rabbitmq-server"]
# Tue, 26 Sep 2017 14:21:18 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 26 Sep 2017 14:21:19 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:fef762b8f53b037e95e7c93f502931dc720c98a6e4ab7b70807fe14fafba6103`  
		Last Modified: Fri, 08 Sep 2017 20:21:38 GMT  
		Size: 21.2 MB (21161607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4da49272ed622a1d80a2784d63c0b0cf69ce2d75e4cd794d8186cb7364d1b0`  
		Last Modified: Sat, 09 Sep 2017 03:29:08 GMT  
		Size: 4.2 MB (4231481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75616693a72bc2c9efb81fb47d33774fc0a25753163ca66847efa1ca8a0621f`  
		Last Modified: Sat, 09 Sep 2017 03:29:02 GMT  
		Size: 4.1 KB (4055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72dfadb2b70b7fdefcf3c25ecec8003122979ab13cdca42bc6603d2b3b5b428c`  
		Last Modified: Sat, 09 Sep 2017 03:29:01 GMT  
		Size: 942.7 KB (942658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe5a4e495e12fb72cf7e3cbe65432923be24a177a73eaa71f7b680d3899ab1d`  
		Last Modified: Sat, 09 Sep 2017 03:29:09 GMT  
		Size: 25.2 MB (25170762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6a79b9fe5d3b9e27cd63daca1194cf700ea4d8e6961a8cef3e1b2d56d5cbae`  
		Last Modified: Tue, 26 Sep 2017 14:21:47 GMT  
		Size: 6.9 MB (6909750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a715b822e824a7da8f54f85376183483fdca50ae1e588910f1b5e8d97370f2a3`  
		Last Modified: Tue, 26 Sep 2017 14:21:42 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae47fb90313a9b42838d34b0d9b7aaa37f25c54f4fbf912fbba3e43b734edc5`  
		Last Modified: Tue, 26 Sep 2017 14:21:42 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3be265893d48df28b19dcd42177c464ace95a4f93d4a918b175caf8ae3a27c`  
		Last Modified: Tue, 26 Sep 2017 14:21:42 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f474cde49ffcecb2feeeda61c2333dbada3cf4a435652b34344cdc78155ba122`  
		Last Modified: Tue, 26 Sep 2017 14:21:42 GMT  
		Size: 3.9 KB (3947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d41ae105df290e467c5ca8322955fb8ea8141f2a62615f15b32e2940e66d71`  
		Last Modified: Tue, 26 Sep 2017 14:21:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371c0c16a5c7e164b6c263dd1ab6a7bff92121aa42bc38624254d25c5349c9bf`  
		Last Modified: Tue, 26 Sep 2017 14:22:41 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:80e69c8dae33911eab1912c00d00ae583563c446d77d1485288c5f54ad2c8b13
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55691709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:966c6b25fc8606cea552b4d21777d10632a633dbe0ee5c434e15f747eb81c3c5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Sat, 09 Sep 2017 01:45:09 GMT
ADD file:c64f62f8baccded9d94037c0935c477d3dd18839a9c4e565679657d4c9df92c8 in / 
# Sat, 09 Sep 2017 01:45:10 GMT
CMD ["bash"]
# Wed, 20 Sep 2017 16:17:13 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 20 Sep 2017 16:17:17 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 20 Sep 2017 16:17:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 20 Sep 2017 16:19:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 20 Sep 2017 16:22:48 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 20 Sep 2017 16:22:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 02:34:33 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 02:34:34 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 02:34:35 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 02:34:36 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 02:34:37 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 02:36:33 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 02:36:34 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 02:36:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 02:36:39 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 02:36:42 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 02:36:44 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 02:36:46 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 02:36:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 02:36:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 02:36:51 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 02:36:52 GMT
CMD ["rabbitmq-server"]
# Tue, 26 Sep 2017 02:37:33 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 26 Sep 2017 02:37:34 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:07ff66d25cfd7ff46d2bd66b7005ca8b45d0e37e780d439e3032785bd84d99a4`  
		Last Modified: Sat, 09 Sep 2017 01:58:27 GMT  
		Size: 19.3 MB (19277906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a738f35f8156a2f3caf349b0ab4c1755fbf8357715d4767101b83b94c763ea`  
		Last Modified: Wed, 20 Sep 2017 16:28:42 GMT  
		Size: 3.9 MB (3870621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4dbfceb33c482f85d57ff6e04fca6fd0b810adab4e6d0e6f8c3c024eb145d49`  
		Last Modified: Wed, 20 Sep 2017 16:28:39 GMT  
		Size: 4.1 KB (4062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c82296aa104dfea75992433603c9720b87c8bfd73e4af58705256b4380086b9`  
		Last Modified: Wed, 20 Sep 2017 16:28:37 GMT  
		Size: 926.4 KB (926399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41fea946f33fa32cc5bc1696ee9623149eb9aa7866cb7fb07f0ff85e2f3f6d3e`  
		Last Modified: Wed, 20 Sep 2017 16:28:45 GMT  
		Size: 24.8 MB (24785658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a67363c7c321a1963138533cf7e531414bef50ffa963ea6400c656ab30793a`  
		Last Modified: Tue, 26 Sep 2017 02:38:05 GMT  
		Size: 6.8 MB (6820266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:882d7c81c4fd8d87f1639fb34c7f6bd340b8c27340450b793b8bd1802378bb19`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 2.3 KB (2266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6006f458a280e4f85c8b800b3e8c6015c010fa37231b9fbded884ec82ca123c4`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:306a8643ede81cf170475acd824acc610fad638a4732410e481711f2887509ba`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8acf0dbf49463ca96cedb0af280d3ff72228824fd8e04768508e12c1cb4a1eab`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 3.9 KB (3944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7402ee5b71a5d7d904e105035c0ffc020944cc3e5156d3c147408b79851c066f`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72385e05bf3ec71894007c950877329ce313f804780206cb51674c49dc4c1e9`  
		Last Modified: Tue, 26 Sep 2017 02:38:57 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:bfaffd0ebbdccde36220ac90d2f04444f61ff3b2bd639c0dc8e147273c965cfb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57280497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cc534674521a11087ad2dd3c98249a52616ceb228d46137468a1354184368f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 17:29:09 GMT
ADD file:16391f421551b998f1ff496c48dc67f34dd2003077158fd1af78a898ea367e1d in / 
# Fri, 08 Sep 2017 17:29:10 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 02:59:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 02:59:27 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Sat, 09 Sep 2017 02:59:28 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 03:00:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 09 Sep 2017 03:01:51 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:01:52 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 13:52:33 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 13:52:34 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 13:52:34 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 13:52:35 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 13:52:35 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 13:53:37 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 13:53:38 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 13:53:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 13:53:40 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 13:53:42 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 13:53:43 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 13:53:44 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 13:53:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 13:53:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 13:53:47 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 13:53:48 GMT
CMD ["rabbitmq-server"]
# Tue, 26 Sep 2017 13:54:14 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 26 Sep 2017 13:54:14 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:0bd6dbb95c7a219839ea8345519110bbccc30c113a72119bbd92c7fe2a3f1e78`  
		Last Modified: Fri, 08 Sep 2017 17:43:38 GMT  
		Size: 20.3 MB (20337273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86d1f7cb33d030873ce67985178e017cf76b8615e36c7e9213fda4308e8214a`  
		Last Modified: Sat, 09 Sep 2017 03:03:39 GMT  
		Size: 4.1 MB (4075190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9d563980d836cdeb8b18f35f005a3bf20e016369956d96b5738ab23344f689`  
		Last Modified: Sat, 09 Sep 2017 03:03:37 GMT  
		Size: 4.1 KB (4077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2667d8cce687eb930ed23a63969bc98a124dbcdfa61514de284b26bdd5c12d30`  
		Last Modified: Sat, 09 Sep 2017 03:03:36 GMT  
		Size: 919.5 KB (919509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:359e3bdc9c490688f368c3da21e357706ea651d5f4ac77e8a98f04d883725214`  
		Last Modified: Sat, 09 Sep 2017 03:03:41 GMT  
		Size: 25.0 MB (25042765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ceb16b4a783f0882522e0eac5aae34e2a56ccd464a3470571a7319854618a6`  
		Last Modified: Tue, 26 Sep 2017 13:54:37 GMT  
		Size: 6.9 MB (6894890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e00fc1cb980fc2098cc4cfc79ef63fce9687be9830d5cd639d369ea87b085c`  
		Last Modified: Tue, 26 Sep 2017 13:54:30 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f199b6b2bb6aaf19714044a9c966721cd395c44fbccda942ca2c167aba93a9`  
		Last Modified: Tue, 26 Sep 2017 13:54:31 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9570116eba3b76961b98d35d2ca3751026cf75061e75254f770fe2de0493dc2d`  
		Last Modified: Tue, 26 Sep 2017 13:54:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efd29cce1888f4f087980637122506fa4a742fdee8a075bacf1f73a52421c5d`  
		Last Modified: Tue, 26 Sep 2017 13:54:31 GMT  
		Size: 3.9 KB (3943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab586d5c3878d3a978d09b7b64afdc0e03ca09156c2682b47ebfe0d90eaecadd`  
		Last Modified: Tue, 26 Sep 2017 13:54:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59991cb4da27783b48ca4c6ba921931557c08108b315142ec4ca4a4874e1f2f9`  
		Last Modified: Tue, 26 Sep 2017 13:55:20 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; 386

```console
$ docker pull rabbitmq@sha256:e058af81d0f7da2a561c2fa21b7fb66e061b4de9b2064ac2191d35b9b061c7c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63899992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df82247f11dc2e764de97c86ba9bc5761c86731298cbc4d0e4a6bd2ead9507e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:57 GMT
ADD file:637a2d4ad21512f6aa9863626de3b678f1aff76377357d7e15fc6a381ec94689 in / 
# Fri, 08 Sep 2017 13:19:57 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:18:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:18:16 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 08 Sep 2017 17:18:16 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 17:18:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 17:19:02 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:19:03 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 10:46:41 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 10:46:41 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 10:46:41 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 10:46:42 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 10:46:42 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 10:47:17 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 10:47:17 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 10:47:18 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 10:47:18 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 10:47:19 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 10:47:19 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 10:47:20 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 10:47:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 10:47:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 10:47:21 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 10:47:21 GMT
CMD ["rabbitmq-server"]
# Tue, 26 Sep 2017 10:47:33 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 26 Sep 2017 10:47:33 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:2f5ca21e3ce4be74a6720d0866b1c95e310ae9d9494d9e5155a3633cd5cd62cd`  
		Last Modified: Fri, 08 Sep 2017 13:27:56 GMT  
		Size: 23.1 MB (23125784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af682eb40771833b2e56648c8c1f01ecd94f04c826f86d5adb47f44b8956adc2`  
		Last Modified: Fri, 08 Sep 2017 17:19:37 GMT  
		Size: 4.8 MB (4804024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40af7b9b4d4a547cc0e0fb1463ba275401d5a51b63d605c554bd181b5b31a0d5`  
		Last Modified: Fri, 08 Sep 2017 17:19:36 GMT  
		Size: 4.1 KB (4058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870f9f6c5d7404e44efe1dc21317b5bb3666adc79a386bd0446f701c976776db`  
		Last Modified: Fri, 08 Sep 2017 17:19:34 GMT  
		Size: 931.5 KB (931532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73494470c557dfa90ae0e6c205c0a308a89c35b61d3e449bf54f41a5c9381102`  
		Last Modified: Fri, 08 Sep 2017 17:19:37 GMT  
		Size: 27.8 MB (27818774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef6027902858a00f26bc93f1744a20bcfd8c66189b6be1c5406e67d866f2731`  
		Last Modified: Tue, 26 Sep 2017 10:47:43 GMT  
		Size: 7.2 MB (7209028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93aa20a500b7490c164a679f28f408308197f9dc614dc3778a71d1216c84cb6`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadfc0b00afa986d1ea6419b09f939604e3c32e2c4587b72055ad5ee82e9d866`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abdc410ca68ef3c8f860a8ef00adabdb43c4674d6fd26bfec79569c84f8ed0d0`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88bd1c9ded163839f4adc1e57afa6ebd4c07821831123df6af9d7793ab21de72`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 3.9 KB (3945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4134d2d867d0fadca6000f52169b319a02a544f94efbc9bb7f6e6b7f718ed7c8`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fd468bbd5c8f6079133d717511f3954281fe3e669d60bfcb260eb5723ca6a68`  
		Last Modified: Tue, 26 Sep 2017 10:48:08 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:c815e58493c50241f4a6b26e5ebd1a9420afb503dc626b065874cc4d7c6f5a09
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60384976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66d26183a51c40de65f9210997f541616f8f8a6937c1419653e7ded0f3a5aa09`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:22 GMT
ADD file:1422f50e4e998477f6c3b2fcee6853da10eb8bca7926ec70e494ff485f6284d7 in / 
# Fri, 08 Sep 2017 00:34:22 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 22:51:21 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 22:51:28 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Sep 2017 22:51:30 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Sep 2017 22:52:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Sep 2017 22:54:34 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 22:54:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 07:11:36 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 07:11:38 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 07:11:41 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 07:11:43 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 07:11:46 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 07:13:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 07:14:00 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 07:14:06 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 07:14:10 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 07:14:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 07:14:29 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 07:14:32 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 07:14:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 07:14:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 07:14:43 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 07:14:45 GMT
CMD ["rabbitmq-server"]
# Tue, 26 Sep 2017 07:15:08 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 26 Sep 2017 07:15:11 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:7ff7f6fdf12a09feca6f75b5d90b860059bdccf4185a9dab7c2c5b9e6e90123a`  
		Last Modified: Fri, 08 Sep 2017 00:41:42 GMT  
		Size: 22.7 MB (22746060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03ccdc113ab1266db618ff04ab98527c7167e2df7b81dbda212235bcf532e35`  
		Last Modified: Tue, 12 Sep 2017 22:56:39 GMT  
		Size: 4.4 MB (4360373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16f43af127417f02f39d312d2ecbac85ebf5b3084eddf896e25d76c4eea2d7be`  
		Last Modified: Tue, 12 Sep 2017 22:56:37 GMT  
		Size: 4.1 KB (4104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a427330ed64ea1260490780e2c2ddc98da973b112b4f73d9085dcb97c8f753cb`  
		Last Modified: Tue, 12 Sep 2017 22:56:35 GMT  
		Size: 920.8 KB (920840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f09c78cb850af5f76c18ef1b42c64dbed4af34f8a8e6187ae51a74e14d1bb6e`  
		Last Modified: Tue, 12 Sep 2017 22:56:39 GMT  
		Size: 25.5 MB (25492757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc1bd551250de979c6dc899a460556ff21e8e33b41c9fd185e74bdceb95be1d`  
		Last Modified: Tue, 26 Sep 2017 07:15:26 GMT  
		Size: 6.9 MB (6854043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72846fb78c462687ac9d09d8ffa431ac1e72621aa0edc72347fda8bc05d2af50`  
		Last Modified: Tue, 26 Sep 2017 07:15:22 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a2dbcfab390ddd950539cdd0c6e6c325c56da7b66e12de85f1e7f9cdeba37c9`  
		Last Modified: Tue, 26 Sep 2017 07:15:22 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8329c8cc338669480a73421c1b4249a24ea9bb89ab9ca0dd63ce927686b81917`  
		Last Modified: Tue, 26 Sep 2017 07:15:21 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045a56a447171005afa59312a0c9f56453bdf43878e12be3f795e50924a3dbf3`  
		Last Modified: Tue, 26 Sep 2017 07:15:22 GMT  
		Size: 3.9 KB (3947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f291fdc1ba0502cd7ea5b489c7c066bad28b5bcc03a86a40a438000e2467852d`  
		Last Modified: Tue, 26 Sep 2017 07:15:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99f1f25546af0ab5aa0166a8b75799ca452e21a6487b0fcfd8e9d40d34202d6`  
		Last Modified: Tue, 26 Sep 2017 07:15:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; s390x

```console
$ docker pull rabbitmq@sha256:bc6aae7dfd707f5bfbb6987b17323b8b7a2797c59d9a771d248579e43f339359
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60365891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88d1918ef0b129524323e95c2465bf98bf10e67ab66b233d5e066c625995bb6a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 05:23:00 GMT
ADD file:9b074cf37adfa815e3a6b300f8652eb77a06cfeea3f74fd021795cff318ca2ce in / 
# Fri, 08 Sep 2017 05:23:00 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:12:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:12:36 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 08 Sep 2017 07:12:36 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 07:12:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 07:13:13 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:13:14 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 08 Sep 2017 07:13:17 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 07:13:17 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Wed, 13 Sep 2017 17:06:27 GMT
ENV RABBITMQ_VERSION=3.6.12
# Wed, 13 Sep 2017 17:06:27 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Wed, 13 Sep 2017 17:06:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 17:06:38 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 17:06:38 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 13 Sep 2017 17:06:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 13 Sep 2017 17:06:39 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 13 Sep 2017 17:06:40 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 13 Sep 2017 17:06:40 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 13 Sep 2017 17:06:41 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Wed, 13 Sep 2017 17:06:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 17:06:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 17:06:42 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 13 Sep 2017 17:06:42 GMT
CMD ["rabbitmq-server"]
# Wed, 13 Sep 2017 17:06:45 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 13 Sep 2017 17:06:46 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:4a3a3449ff754d3a7e8f189d020e507ff2cb0fd172b4240ca2d1d78e2d65d544`  
		Last Modified: Fri, 08 Sep 2017 05:27:12 GMT  
		Size: 22.3 MB (22338151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9f9c3f65f8623995e82dca85129c63aebf311a1f7b80fdde7eb1b1a6a9a7c4`  
		Last Modified: Fri, 08 Sep 2017 07:13:52 GMT  
		Size: 4.5 MB (4530037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e766d543dae983ec5d1fb0a8ece5da0c790574ad27de51775826875e63e48cc6`  
		Last Modified: Fri, 08 Sep 2017 07:13:50 GMT  
		Size: 4.1 KB (4070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7482794ab6a0465927e4cef738eceacc49e28b4e8f325f0f6153f16df398d12e`  
		Last Modified: Fri, 08 Sep 2017 07:13:50 GMT  
		Size: 938.0 KB (938009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f8dce71bb341d4baafcc9c8986c3cce6156dc353505e6dc9c821e4330b868da`  
		Last Modified: Fri, 08 Sep 2017 07:13:54 GMT  
		Size: 25.6 MB (25619550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:753d738c05295037a1c7f7c66dd9faae22257631385c9b9291d4e46f8679e724`  
		Last Modified: Fri, 08 Sep 2017 07:13:49 GMT  
		Size: 3.1 KB (3108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d70befe6ae825e874830dfdf77e8090dfc7fcaa9b321b8f30a06db9d502564`  
		Last Modified: Fri, 08 Sep 2017 07:13:49 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae25609266a393f768cb3501e6cd26353d5e4f3b3cc9d19f8ebbd73e4d8c6eea`  
		Last Modified: Wed, 13 Sep 2017 17:06:57 GMT  
		Size: 6.9 MB (6925832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2eaf458900cd749705c6be95bb97cbc3d01bf97bb2b0f29c7b1c773076e6d4`  
		Last Modified: Wed, 13 Sep 2017 17:06:54 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d373a6630d7f98be44bb2157cec21fe02d417e123b260cd3241d5d9f2eda68d1`  
		Last Modified: Wed, 13 Sep 2017 17:06:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16bab863dce632474453c632292a0cac44271d5180ea761e2f98cca40b65747f`  
		Last Modified: Wed, 13 Sep 2017 17:06:54 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f649e97eb461bdd3dba1a1056d97ed30bd0651a22dc1b7a7b436849136e5cd`  
		Last Modified: Wed, 13 Sep 2017 17:06:55 GMT  
		Size: 4.1 KB (4067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4e4c6b050fd9c884b294bfee7322ff8b6bd53a1c9155a1d5d7393c3293055a`  
		Last Modified: Wed, 13 Sep 2017 17:06:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab17e86b7df833c8aab66bc3886aad7fa486a9b2b342bcc70321a0678d1f8db`  
		Last Modified: Wed, 13 Sep 2017 17:07:13 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management-alpine`

```console
$ docker pull rabbitmq@sha256:6f743c90643d1f963a68e29d83aaee0302927f16d5d4f25c300e0438b1b31cdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:2f5c7d57dac0a174f13e1a8f57957ca0de8ec3862601f6605fbd600fa7829847
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23557241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28ad6a427b57481717491c946711fe3333106db89cceeb5b0c6cc631caf47b1e`
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
# Tue, 26 Sep 2017 00:49:28 GMT
COPY file:5bc938ee921736a8b5afdf666cec851939be30101ae00139f213145b080fc5cb in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:49:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:49:29 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 00:49:29 GMT
CMD ["rabbitmq-server"]
# Tue, 26 Sep 2017 00:49:42 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 26 Sep 2017 00:49:43 GMT
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
	-	`sha256:3a8a8b5b44b48666b965fde7188c4e0f33a242fa5cc79efc4df8e0cfe41c0a96`  
		Last Modified: Tue, 26 Sep 2017 00:51:00 GMT  
		Size: 3.9 KB (3942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4571213d79db74079576c59ebf9a61394c9f5df040bdd26e27de729c2313651`  
		Last Modified: Tue, 26 Sep 2017 00:51:28 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-alpine`

```console
$ docker pull rabbitmq@sha256:19581671812e144f7cdd4d7502b9f10ec8c04a9393c645f502eede00b7ece152
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:24a56a03eab0dca16f3ed22382718f8776a98da9c373b4ea10668bcd88eb9d5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23557049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04cf057cce5489de12e87069fabd343f47bdb5ec2fccd58262e1a8b53761d835`
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
# Tue, 26 Sep 2017 00:49:28 GMT
COPY file:5bc938ee921736a8b5afdf666cec851939be30101ae00139f213145b080fc5cb in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:49:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:49:29 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 00:49:29 GMT
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
	-	`sha256:3a8a8b5b44b48666b965fde7188c4e0f33a242fa5cc79efc4df8e0cfe41c0a96`  
		Last Modified: Tue, 26 Sep 2017 00:51:00 GMT  
		Size: 3.9 KB (3942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management`

```console
$ docker pull rabbitmq@sha256:970ea9fee90ad6ecbfc464e4f55a2cb4d942510c6f5a5e00dfcda9c277d3ffcf
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
$ docker pull rabbitmq@sha256:9ccc4ce528db095a22ba2481f6ba3f16d5dc8713983596a302e4fbe0ed9f2f82
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.8 MB (62848424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:888b1cf3f00326a0dafdf00500ea8be23632192278fbedd2a9821a736051c011`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:48 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Wed, 13 Sep 2017 08:41:49 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 01:46:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 01:46:10 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 19 Sep 2017 01:46:11 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 01:46:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 19 Sep 2017 01:46:57 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 01:46:57 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 00:48:03 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 00:48:04 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 00:48:04 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 00:48:04 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 00:48:04 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 00:48:48 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 00:48:49 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 00:48:49 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 00:48:50 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 00:48:50 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 00:48:51 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 00:48:51 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:48:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 00:48:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:48:56 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 00:48:56 GMT
CMD ["rabbitmq-server"]
# Tue, 26 Sep 2017 00:49:08 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 26 Sep 2017 00:49:08 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22587c0b6c1cafde12872ef7d006984387fc5578dfd545d22463bf5edc452b1`  
		Last Modified: Tue, 19 Sep 2017 01:48:26 GMT  
		Size: 4.5 MB (4499395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7cdb9d7769f63be56be62adb2d2db684e1b2936068dcddd7d2a91341e66d29`  
		Last Modified: Tue, 19 Sep 2017 01:48:25 GMT  
		Size: 4.1 KB (4075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc614e186c613f98368edf79d242daeefd3e565bb92cd42c60a4c46c3bb1c5f0`  
		Last Modified: Tue, 19 Sep 2017 01:48:24 GMT  
		Size: 952.0 KB (951956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63c239bab1d94dd75841ab35101bd059cb0a4fda703238aa3d74348ce925e54`  
		Last Modified: Tue, 19 Sep 2017 01:48:26 GMT  
		Size: 27.7 MB (27703791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae5fc200653eebf990ee3feb87159baf167327749460e6bc93d6938b9dc4eee`  
		Last Modified: Tue, 26 Sep 2017 00:50:01 GMT  
		Size: 7.2 MB (7194356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5cf9a27404e2ab036228a854fdbf5a7f80499b98fff6bb32f034ab8f4c3ac5`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c298e89eaf82cfe4d652c073d71884d662c433fcb15f8f2e81e5d29ed13e1f`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c1094fa1968e0e621b08381b9cdfa21eb41916ebbb71d1268ccfd723c64f91`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550c8ace2244275f8051a4a1e09b0db375cfcd49ed86b6c3833ba0e4acf29d12`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 3.9 KB (3946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62899172d555cce3e3c93f09a52a511946df7d2cebc63313382416b0c73cc6db`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:107a9ae5e162c4df0657ed3ee71c5018b18c522df9b836dac57fb4eb101ec0a0`  
		Last Modified: Tue, 26 Sep 2017 00:50:33 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:9a0aac4b008cb327863c5650d9c644bf074a3ecaf8d35706a2795344f463c9c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.4 MB (58427104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afce555c606688ed03078a4f3bba9a10687ad4772ae95233a6b74e6a55ab2499`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 20:04:19 GMT
ADD file:7a4f76115b8f87534c9bcd4a40386c07af5c7bfdb3429f22d53d07faa0de57da in / 
# Fri, 08 Sep 2017 20:04:20 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 03:12:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:12:54 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Sat, 09 Sep 2017 03:12:55 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 03:19:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 09 Sep 2017 03:25:04 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:25:06 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 14:15:05 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 14:15:06 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 14:15:07 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 14:15:08 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 14:15:09 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 14:20:34 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 14:20:35 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 14:20:37 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 14:20:38 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 14:20:41 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 14:20:43 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 14:20:44 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 14:20:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 14:20:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 14:20:48 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 14:20:49 GMT
CMD ["rabbitmq-server"]
# Tue, 26 Sep 2017 14:21:18 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 26 Sep 2017 14:21:19 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:fef762b8f53b037e95e7c93f502931dc720c98a6e4ab7b70807fe14fafba6103`  
		Last Modified: Fri, 08 Sep 2017 20:21:38 GMT  
		Size: 21.2 MB (21161607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4da49272ed622a1d80a2784d63c0b0cf69ce2d75e4cd794d8186cb7364d1b0`  
		Last Modified: Sat, 09 Sep 2017 03:29:08 GMT  
		Size: 4.2 MB (4231481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75616693a72bc2c9efb81fb47d33774fc0a25753163ca66847efa1ca8a0621f`  
		Last Modified: Sat, 09 Sep 2017 03:29:02 GMT  
		Size: 4.1 KB (4055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72dfadb2b70b7fdefcf3c25ecec8003122979ab13cdca42bc6603d2b3b5b428c`  
		Last Modified: Sat, 09 Sep 2017 03:29:01 GMT  
		Size: 942.7 KB (942658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe5a4e495e12fb72cf7e3cbe65432923be24a177a73eaa71f7b680d3899ab1d`  
		Last Modified: Sat, 09 Sep 2017 03:29:09 GMT  
		Size: 25.2 MB (25170762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6a79b9fe5d3b9e27cd63daca1194cf700ea4d8e6961a8cef3e1b2d56d5cbae`  
		Last Modified: Tue, 26 Sep 2017 14:21:47 GMT  
		Size: 6.9 MB (6909750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a715b822e824a7da8f54f85376183483fdca50ae1e588910f1b5e8d97370f2a3`  
		Last Modified: Tue, 26 Sep 2017 14:21:42 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae47fb90313a9b42838d34b0d9b7aaa37f25c54f4fbf912fbba3e43b734edc5`  
		Last Modified: Tue, 26 Sep 2017 14:21:42 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3be265893d48df28b19dcd42177c464ace95a4f93d4a918b175caf8ae3a27c`  
		Last Modified: Tue, 26 Sep 2017 14:21:42 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f474cde49ffcecb2feeeda61c2333dbada3cf4a435652b34344cdc78155ba122`  
		Last Modified: Tue, 26 Sep 2017 14:21:42 GMT  
		Size: 3.9 KB (3947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d41ae105df290e467c5ca8322955fb8ea8141f2a62615f15b32e2940e66d71`  
		Last Modified: Tue, 26 Sep 2017 14:21:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371c0c16a5c7e164b6c263dd1ab6a7bff92121aa42bc38624254d25c5349c9bf`  
		Last Modified: Tue, 26 Sep 2017 14:22:41 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:80e69c8dae33911eab1912c00d00ae583563c446d77d1485288c5f54ad2c8b13
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55691709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:966c6b25fc8606cea552b4d21777d10632a633dbe0ee5c434e15f747eb81c3c5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Sat, 09 Sep 2017 01:45:09 GMT
ADD file:c64f62f8baccded9d94037c0935c477d3dd18839a9c4e565679657d4c9df92c8 in / 
# Sat, 09 Sep 2017 01:45:10 GMT
CMD ["bash"]
# Wed, 20 Sep 2017 16:17:13 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 20 Sep 2017 16:17:17 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 20 Sep 2017 16:17:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 20 Sep 2017 16:19:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 20 Sep 2017 16:22:48 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 20 Sep 2017 16:22:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 02:34:33 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 02:34:34 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 02:34:35 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 02:34:36 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 02:34:37 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 02:36:33 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 02:36:34 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 02:36:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 02:36:39 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 02:36:42 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 02:36:44 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 02:36:46 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 02:36:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 02:36:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 02:36:51 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 02:36:52 GMT
CMD ["rabbitmq-server"]
# Tue, 26 Sep 2017 02:37:33 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 26 Sep 2017 02:37:34 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:07ff66d25cfd7ff46d2bd66b7005ca8b45d0e37e780d439e3032785bd84d99a4`  
		Last Modified: Sat, 09 Sep 2017 01:58:27 GMT  
		Size: 19.3 MB (19277906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a738f35f8156a2f3caf349b0ab4c1755fbf8357715d4767101b83b94c763ea`  
		Last Modified: Wed, 20 Sep 2017 16:28:42 GMT  
		Size: 3.9 MB (3870621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4dbfceb33c482f85d57ff6e04fca6fd0b810adab4e6d0e6f8c3c024eb145d49`  
		Last Modified: Wed, 20 Sep 2017 16:28:39 GMT  
		Size: 4.1 KB (4062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c82296aa104dfea75992433603c9720b87c8bfd73e4af58705256b4380086b9`  
		Last Modified: Wed, 20 Sep 2017 16:28:37 GMT  
		Size: 926.4 KB (926399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41fea946f33fa32cc5bc1696ee9623149eb9aa7866cb7fb07f0ff85e2f3f6d3e`  
		Last Modified: Wed, 20 Sep 2017 16:28:45 GMT  
		Size: 24.8 MB (24785658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a67363c7c321a1963138533cf7e531414bef50ffa963ea6400c656ab30793a`  
		Last Modified: Tue, 26 Sep 2017 02:38:05 GMT  
		Size: 6.8 MB (6820266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:882d7c81c4fd8d87f1639fb34c7f6bd340b8c27340450b793b8bd1802378bb19`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 2.3 KB (2266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6006f458a280e4f85c8b800b3e8c6015c010fa37231b9fbded884ec82ca123c4`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:306a8643ede81cf170475acd824acc610fad638a4732410e481711f2887509ba`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8acf0dbf49463ca96cedb0af280d3ff72228824fd8e04768508e12c1cb4a1eab`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 3.9 KB (3944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7402ee5b71a5d7d904e105035c0ffc020944cc3e5156d3c147408b79851c066f`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72385e05bf3ec71894007c950877329ce313f804780206cb51674c49dc4c1e9`  
		Last Modified: Tue, 26 Sep 2017 02:38:57 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:bfaffd0ebbdccde36220ac90d2f04444f61ff3b2bd639c0dc8e147273c965cfb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57280497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cc534674521a11087ad2dd3c98249a52616ceb228d46137468a1354184368f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 17:29:09 GMT
ADD file:16391f421551b998f1ff496c48dc67f34dd2003077158fd1af78a898ea367e1d in / 
# Fri, 08 Sep 2017 17:29:10 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 02:59:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 02:59:27 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Sat, 09 Sep 2017 02:59:28 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 03:00:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 09 Sep 2017 03:01:51 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:01:52 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 13:52:33 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 13:52:34 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 13:52:34 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 13:52:35 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 13:52:35 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 13:53:37 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 13:53:38 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 13:53:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 13:53:40 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 13:53:42 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 13:53:43 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 13:53:44 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 13:53:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 13:53:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 13:53:47 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 13:53:48 GMT
CMD ["rabbitmq-server"]
# Tue, 26 Sep 2017 13:54:14 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 26 Sep 2017 13:54:14 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:0bd6dbb95c7a219839ea8345519110bbccc30c113a72119bbd92c7fe2a3f1e78`  
		Last Modified: Fri, 08 Sep 2017 17:43:38 GMT  
		Size: 20.3 MB (20337273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86d1f7cb33d030873ce67985178e017cf76b8615e36c7e9213fda4308e8214a`  
		Last Modified: Sat, 09 Sep 2017 03:03:39 GMT  
		Size: 4.1 MB (4075190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9d563980d836cdeb8b18f35f005a3bf20e016369956d96b5738ab23344f689`  
		Last Modified: Sat, 09 Sep 2017 03:03:37 GMT  
		Size: 4.1 KB (4077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2667d8cce687eb930ed23a63969bc98a124dbcdfa61514de284b26bdd5c12d30`  
		Last Modified: Sat, 09 Sep 2017 03:03:36 GMT  
		Size: 919.5 KB (919509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:359e3bdc9c490688f368c3da21e357706ea651d5f4ac77e8a98f04d883725214`  
		Last Modified: Sat, 09 Sep 2017 03:03:41 GMT  
		Size: 25.0 MB (25042765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ceb16b4a783f0882522e0eac5aae34e2a56ccd464a3470571a7319854618a6`  
		Last Modified: Tue, 26 Sep 2017 13:54:37 GMT  
		Size: 6.9 MB (6894890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e00fc1cb980fc2098cc4cfc79ef63fce9687be9830d5cd639d369ea87b085c`  
		Last Modified: Tue, 26 Sep 2017 13:54:30 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f199b6b2bb6aaf19714044a9c966721cd395c44fbccda942ca2c167aba93a9`  
		Last Modified: Tue, 26 Sep 2017 13:54:31 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9570116eba3b76961b98d35d2ca3751026cf75061e75254f770fe2de0493dc2d`  
		Last Modified: Tue, 26 Sep 2017 13:54:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efd29cce1888f4f087980637122506fa4a742fdee8a075bacf1f73a52421c5d`  
		Last Modified: Tue, 26 Sep 2017 13:54:31 GMT  
		Size: 3.9 KB (3943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab586d5c3878d3a978d09b7b64afdc0e03ca09156c2682b47ebfe0d90eaecadd`  
		Last Modified: Tue, 26 Sep 2017 13:54:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59991cb4da27783b48ca4c6ba921931557c08108b315142ec4ca4a4874e1f2f9`  
		Last Modified: Tue, 26 Sep 2017 13:55:20 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; 386

```console
$ docker pull rabbitmq@sha256:e058af81d0f7da2a561c2fa21b7fb66e061b4de9b2064ac2191d35b9b061c7c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63899992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df82247f11dc2e764de97c86ba9bc5761c86731298cbc4d0e4a6bd2ead9507e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:57 GMT
ADD file:637a2d4ad21512f6aa9863626de3b678f1aff76377357d7e15fc6a381ec94689 in / 
# Fri, 08 Sep 2017 13:19:57 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:18:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:18:16 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 08 Sep 2017 17:18:16 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 17:18:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 17:19:02 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:19:03 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 10:46:41 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 10:46:41 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 10:46:41 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 10:46:42 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 10:46:42 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 10:47:17 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 10:47:17 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 10:47:18 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 10:47:18 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 10:47:19 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 10:47:19 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 10:47:20 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 10:47:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 10:47:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 10:47:21 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 10:47:21 GMT
CMD ["rabbitmq-server"]
# Tue, 26 Sep 2017 10:47:33 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 26 Sep 2017 10:47:33 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:2f5ca21e3ce4be74a6720d0866b1c95e310ae9d9494d9e5155a3633cd5cd62cd`  
		Last Modified: Fri, 08 Sep 2017 13:27:56 GMT  
		Size: 23.1 MB (23125784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af682eb40771833b2e56648c8c1f01ecd94f04c826f86d5adb47f44b8956adc2`  
		Last Modified: Fri, 08 Sep 2017 17:19:37 GMT  
		Size: 4.8 MB (4804024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40af7b9b4d4a547cc0e0fb1463ba275401d5a51b63d605c554bd181b5b31a0d5`  
		Last Modified: Fri, 08 Sep 2017 17:19:36 GMT  
		Size: 4.1 KB (4058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870f9f6c5d7404e44efe1dc21317b5bb3666adc79a386bd0446f701c976776db`  
		Last Modified: Fri, 08 Sep 2017 17:19:34 GMT  
		Size: 931.5 KB (931532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73494470c557dfa90ae0e6c205c0a308a89c35b61d3e449bf54f41a5c9381102`  
		Last Modified: Fri, 08 Sep 2017 17:19:37 GMT  
		Size: 27.8 MB (27818774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef6027902858a00f26bc93f1744a20bcfd8c66189b6be1c5406e67d866f2731`  
		Last Modified: Tue, 26 Sep 2017 10:47:43 GMT  
		Size: 7.2 MB (7209028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93aa20a500b7490c164a679f28f408308197f9dc614dc3778a71d1216c84cb6`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadfc0b00afa986d1ea6419b09f939604e3c32e2c4587b72055ad5ee82e9d866`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abdc410ca68ef3c8f860a8ef00adabdb43c4674d6fd26bfec79569c84f8ed0d0`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88bd1c9ded163839f4adc1e57afa6ebd4c07821831123df6af9d7793ab21de72`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 3.9 KB (3945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4134d2d867d0fadca6000f52169b319a02a544f94efbc9bb7f6e6b7f718ed7c8`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fd468bbd5c8f6079133d717511f3954281fe3e669d60bfcb260eb5723ca6a68`  
		Last Modified: Tue, 26 Sep 2017 10:48:08 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:c815e58493c50241f4a6b26e5ebd1a9420afb503dc626b065874cc4d7c6f5a09
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60384976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66d26183a51c40de65f9210997f541616f8f8a6937c1419653e7ded0f3a5aa09`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:22 GMT
ADD file:1422f50e4e998477f6c3b2fcee6853da10eb8bca7926ec70e494ff485f6284d7 in / 
# Fri, 08 Sep 2017 00:34:22 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 22:51:21 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 22:51:28 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Sep 2017 22:51:30 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Sep 2017 22:52:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Sep 2017 22:54:34 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 22:54:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 07:11:36 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 07:11:38 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 07:11:41 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 07:11:43 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 07:11:46 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 07:13:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 07:14:00 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 07:14:06 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 07:14:10 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 07:14:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 07:14:29 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 07:14:32 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 07:14:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 07:14:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 07:14:43 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 07:14:45 GMT
CMD ["rabbitmq-server"]
# Tue, 26 Sep 2017 07:15:08 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 26 Sep 2017 07:15:11 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:7ff7f6fdf12a09feca6f75b5d90b860059bdccf4185a9dab7c2c5b9e6e90123a`  
		Last Modified: Fri, 08 Sep 2017 00:41:42 GMT  
		Size: 22.7 MB (22746060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03ccdc113ab1266db618ff04ab98527c7167e2df7b81dbda212235bcf532e35`  
		Last Modified: Tue, 12 Sep 2017 22:56:39 GMT  
		Size: 4.4 MB (4360373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16f43af127417f02f39d312d2ecbac85ebf5b3084eddf896e25d76c4eea2d7be`  
		Last Modified: Tue, 12 Sep 2017 22:56:37 GMT  
		Size: 4.1 KB (4104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a427330ed64ea1260490780e2c2ddc98da973b112b4f73d9085dcb97c8f753cb`  
		Last Modified: Tue, 12 Sep 2017 22:56:35 GMT  
		Size: 920.8 KB (920840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f09c78cb850af5f76c18ef1b42c64dbed4af34f8a8e6187ae51a74e14d1bb6e`  
		Last Modified: Tue, 12 Sep 2017 22:56:39 GMT  
		Size: 25.5 MB (25492757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc1bd551250de979c6dc899a460556ff21e8e33b41c9fd185e74bdceb95be1d`  
		Last Modified: Tue, 26 Sep 2017 07:15:26 GMT  
		Size: 6.9 MB (6854043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72846fb78c462687ac9d09d8ffa431ac1e72621aa0edc72347fda8bc05d2af50`  
		Last Modified: Tue, 26 Sep 2017 07:15:22 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a2dbcfab390ddd950539cdd0c6e6c325c56da7b66e12de85f1e7f9cdeba37c9`  
		Last Modified: Tue, 26 Sep 2017 07:15:22 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8329c8cc338669480a73421c1b4249a24ea9bb89ab9ca0dd63ce927686b81917`  
		Last Modified: Tue, 26 Sep 2017 07:15:21 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045a56a447171005afa59312a0c9f56453bdf43878e12be3f795e50924a3dbf3`  
		Last Modified: Tue, 26 Sep 2017 07:15:22 GMT  
		Size: 3.9 KB (3947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f291fdc1ba0502cd7ea5b489c7c066bad28b5bcc03a86a40a438000e2467852d`  
		Last Modified: Tue, 26 Sep 2017 07:15:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99f1f25546af0ab5aa0166a8b75799ca452e21a6487b0fcfd8e9d40d34202d6`  
		Last Modified: Tue, 26 Sep 2017 07:15:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; s390x

```console
$ docker pull rabbitmq@sha256:bc6aae7dfd707f5bfbb6987b17323b8b7a2797c59d9a771d248579e43f339359
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60365891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88d1918ef0b129524323e95c2465bf98bf10e67ab66b233d5e066c625995bb6a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 05:23:00 GMT
ADD file:9b074cf37adfa815e3a6b300f8652eb77a06cfeea3f74fd021795cff318ca2ce in / 
# Fri, 08 Sep 2017 05:23:00 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:12:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:12:36 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 08 Sep 2017 07:12:36 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 07:12:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 07:13:13 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:13:14 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 08 Sep 2017 07:13:17 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 07:13:17 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Wed, 13 Sep 2017 17:06:27 GMT
ENV RABBITMQ_VERSION=3.6.12
# Wed, 13 Sep 2017 17:06:27 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Wed, 13 Sep 2017 17:06:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 17:06:38 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 17:06:38 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 13 Sep 2017 17:06:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 13 Sep 2017 17:06:39 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 13 Sep 2017 17:06:40 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 13 Sep 2017 17:06:40 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 13 Sep 2017 17:06:41 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Wed, 13 Sep 2017 17:06:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 17:06:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 17:06:42 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 13 Sep 2017 17:06:42 GMT
CMD ["rabbitmq-server"]
# Wed, 13 Sep 2017 17:06:45 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 13 Sep 2017 17:06:46 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:4a3a3449ff754d3a7e8f189d020e507ff2cb0fd172b4240ca2d1d78e2d65d544`  
		Last Modified: Fri, 08 Sep 2017 05:27:12 GMT  
		Size: 22.3 MB (22338151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9f9c3f65f8623995e82dca85129c63aebf311a1f7b80fdde7eb1b1a6a9a7c4`  
		Last Modified: Fri, 08 Sep 2017 07:13:52 GMT  
		Size: 4.5 MB (4530037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e766d543dae983ec5d1fb0a8ece5da0c790574ad27de51775826875e63e48cc6`  
		Last Modified: Fri, 08 Sep 2017 07:13:50 GMT  
		Size: 4.1 KB (4070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7482794ab6a0465927e4cef738eceacc49e28b4e8f325f0f6153f16df398d12e`  
		Last Modified: Fri, 08 Sep 2017 07:13:50 GMT  
		Size: 938.0 KB (938009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f8dce71bb341d4baafcc9c8986c3cce6156dc353505e6dc9c821e4330b868da`  
		Last Modified: Fri, 08 Sep 2017 07:13:54 GMT  
		Size: 25.6 MB (25619550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:753d738c05295037a1c7f7c66dd9faae22257631385c9b9291d4e46f8679e724`  
		Last Modified: Fri, 08 Sep 2017 07:13:49 GMT  
		Size: 3.1 KB (3108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d70befe6ae825e874830dfdf77e8090dfc7fcaa9b321b8f30a06db9d502564`  
		Last Modified: Fri, 08 Sep 2017 07:13:49 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae25609266a393f768cb3501e6cd26353d5e4f3b3cc9d19f8ebbd73e4d8c6eea`  
		Last Modified: Wed, 13 Sep 2017 17:06:57 GMT  
		Size: 6.9 MB (6925832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2eaf458900cd749705c6be95bb97cbc3d01bf97bb2b0f29c7b1c773076e6d4`  
		Last Modified: Wed, 13 Sep 2017 17:06:54 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d373a6630d7f98be44bb2157cec21fe02d417e123b260cd3241d5d9f2eda68d1`  
		Last Modified: Wed, 13 Sep 2017 17:06:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16bab863dce632474453c632292a0cac44271d5180ea761e2f98cca40b65747f`  
		Last Modified: Wed, 13 Sep 2017 17:06:54 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f649e97eb461bdd3dba1a1056d97ed30bd0651a22dc1b7a7b436849136e5cd`  
		Last Modified: Wed, 13 Sep 2017 17:06:55 GMT  
		Size: 4.1 KB (4067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4e4c6b050fd9c884b294bfee7322ff8b6bd53a1c9155a1d5d7393c3293055a`  
		Last Modified: Wed, 13 Sep 2017 17:06:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab17e86b7df833c8aab66bc3886aad7fa486a9b2b342bcc70321a0678d1f8db`  
		Last Modified: Wed, 13 Sep 2017 17:07:13 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management-alpine`

```console
$ docker pull rabbitmq@sha256:6f743c90643d1f963a68e29d83aaee0302927f16d5d4f25c300e0438b1b31cdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:2f5c7d57dac0a174f13e1a8f57957ca0de8ec3862601f6605fbd600fa7829847
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23557241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28ad6a427b57481717491c946711fe3333106db89cceeb5b0c6cc631caf47b1e`
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
# Tue, 26 Sep 2017 00:49:28 GMT
COPY file:5bc938ee921736a8b5afdf666cec851939be30101ae00139f213145b080fc5cb in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:49:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:49:29 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 00:49:29 GMT
CMD ["rabbitmq-server"]
# Tue, 26 Sep 2017 00:49:42 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 26 Sep 2017 00:49:43 GMT
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
	-	`sha256:3a8a8b5b44b48666b965fde7188c4e0f33a242fa5cc79efc4df8e0cfe41c0a96`  
		Last Modified: Tue, 26 Sep 2017 00:51:00 GMT  
		Size: 3.9 KB (3942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4571213d79db74079576c59ebf9a61394c9f5df040bdd26e27de729c2313651`  
		Last Modified: Tue, 26 Sep 2017 00:51:28 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:alpine`

```console
$ docker pull rabbitmq@sha256:19581671812e144f7cdd4d7502b9f10ec8c04a9393c645f502eede00b7ece152
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:24a56a03eab0dca16f3ed22382718f8776a98da9c373b4ea10668bcd88eb9d5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23557049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04cf057cce5489de12e87069fabd343f47bdb5ec2fccd58262e1a8b53761d835`
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
# Tue, 26 Sep 2017 00:49:28 GMT
COPY file:5bc938ee921736a8b5afdf666cec851939be30101ae00139f213145b080fc5cb in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:49:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:49:29 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 00:49:29 GMT
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
	-	`sha256:3a8a8b5b44b48666b965fde7188c4e0f33a242fa5cc79efc4df8e0cfe41c0a96`  
		Last Modified: Tue, 26 Sep 2017 00:51:00 GMT  
		Size: 3.9 KB (3942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:latest`

```console
$ docker pull rabbitmq@sha256:6a7675afce863961d1ecfcbd00e3c92cce77dbccc7060225dd3964d7046dd224
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
$ docker pull rabbitmq@sha256:fa07811a354a1ce8d48469516d50390e6364bdf6a5a1401da5aaefbbe9fd80e0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.8 MB (62848231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:034ebfbce9a1f7e6331051f69bf0ae70d47a46d3d38a23275357e1fd5fadc4a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:48 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Wed, 13 Sep 2017 08:41:49 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 01:46:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 01:46:10 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 19 Sep 2017 01:46:11 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 01:46:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 19 Sep 2017 01:46:57 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 01:46:57 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 00:48:03 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 00:48:04 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 00:48:04 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 00:48:04 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 00:48:04 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 00:48:48 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 00:48:49 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 00:48:49 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 00:48:50 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 00:48:50 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 00:48:51 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 00:48:51 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:48:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 00:48:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:48:56 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 00:48:56 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22587c0b6c1cafde12872ef7d006984387fc5578dfd545d22463bf5edc452b1`  
		Last Modified: Tue, 19 Sep 2017 01:48:26 GMT  
		Size: 4.5 MB (4499395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7cdb9d7769f63be56be62adb2d2db684e1b2936068dcddd7d2a91341e66d29`  
		Last Modified: Tue, 19 Sep 2017 01:48:25 GMT  
		Size: 4.1 KB (4075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc614e186c613f98368edf79d242daeefd3e565bb92cd42c60a4c46c3bb1c5f0`  
		Last Modified: Tue, 19 Sep 2017 01:48:24 GMT  
		Size: 952.0 KB (951956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63c239bab1d94dd75841ab35101bd059cb0a4fda703238aa3d74348ce925e54`  
		Last Modified: Tue, 19 Sep 2017 01:48:26 GMT  
		Size: 27.7 MB (27703791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae5fc200653eebf990ee3feb87159baf167327749460e6bc93d6938b9dc4eee`  
		Last Modified: Tue, 26 Sep 2017 00:50:01 GMT  
		Size: 7.2 MB (7194356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5cf9a27404e2ab036228a854fdbf5a7f80499b98fff6bb32f034ab8f4c3ac5`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c298e89eaf82cfe4d652c073d71884d662c433fcb15f8f2e81e5d29ed13e1f`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c1094fa1968e0e621b08381b9cdfa21eb41916ebbb71d1268ccfd723c64f91`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550c8ace2244275f8051a4a1e09b0db375cfcd49ed86b6c3833ba0e4acf29d12`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 3.9 KB (3946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62899172d555cce3e3c93f09a52a511946df7d2cebc63313382416b0c73cc6db`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:15df2f8b12e94bd13acc99a6f60d2464d8fbac1876791698ce2f673fc413a973
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.4 MB (58426912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:455cf1fa59b705337b2a3a69b37e578405be41354cbfbcf58bdfe6c25d42bb10`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 20:04:19 GMT
ADD file:7a4f76115b8f87534c9bcd4a40386c07af5c7bfdb3429f22d53d07faa0de57da in / 
# Fri, 08 Sep 2017 20:04:20 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 03:12:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:12:54 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Sat, 09 Sep 2017 03:12:55 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 03:19:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 09 Sep 2017 03:25:04 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:25:06 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 14:15:05 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 14:15:06 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 14:15:07 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 14:15:08 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 14:15:09 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 14:20:34 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 14:20:35 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 14:20:37 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 14:20:38 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 14:20:41 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 14:20:43 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 14:20:44 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 14:20:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 14:20:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 14:20:48 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 14:20:49 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:fef762b8f53b037e95e7c93f502931dc720c98a6e4ab7b70807fe14fafba6103`  
		Last Modified: Fri, 08 Sep 2017 20:21:38 GMT  
		Size: 21.2 MB (21161607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4da49272ed622a1d80a2784d63c0b0cf69ce2d75e4cd794d8186cb7364d1b0`  
		Last Modified: Sat, 09 Sep 2017 03:29:08 GMT  
		Size: 4.2 MB (4231481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75616693a72bc2c9efb81fb47d33774fc0a25753163ca66847efa1ca8a0621f`  
		Last Modified: Sat, 09 Sep 2017 03:29:02 GMT  
		Size: 4.1 KB (4055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72dfadb2b70b7fdefcf3c25ecec8003122979ab13cdca42bc6603d2b3b5b428c`  
		Last Modified: Sat, 09 Sep 2017 03:29:01 GMT  
		Size: 942.7 KB (942658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe5a4e495e12fb72cf7e3cbe65432923be24a177a73eaa71f7b680d3899ab1d`  
		Last Modified: Sat, 09 Sep 2017 03:29:09 GMT  
		Size: 25.2 MB (25170762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6a79b9fe5d3b9e27cd63daca1194cf700ea4d8e6961a8cef3e1b2d56d5cbae`  
		Last Modified: Tue, 26 Sep 2017 14:21:47 GMT  
		Size: 6.9 MB (6909750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a715b822e824a7da8f54f85376183483fdca50ae1e588910f1b5e8d97370f2a3`  
		Last Modified: Tue, 26 Sep 2017 14:21:42 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae47fb90313a9b42838d34b0d9b7aaa37f25c54f4fbf912fbba3e43b734edc5`  
		Last Modified: Tue, 26 Sep 2017 14:21:42 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3be265893d48df28b19dcd42177c464ace95a4f93d4a918b175caf8ae3a27c`  
		Last Modified: Tue, 26 Sep 2017 14:21:42 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f474cde49ffcecb2feeeda61c2333dbada3cf4a435652b34344cdc78155ba122`  
		Last Modified: Tue, 26 Sep 2017 14:21:42 GMT  
		Size: 3.9 KB (3947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d41ae105df290e467c5ca8322955fb8ea8141f2a62615f15b32e2940e66d71`  
		Last Modified: Tue, 26 Sep 2017 14:21:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:f7dbbb2779fcb072e6e77cd713248b9055f97357ce7e9a681ffd053879aa4abf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55691515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:372bd57706eae5f59021e47794889437a945b26d0d3a23e0d23da09ba881f88d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Sat, 09 Sep 2017 01:45:09 GMT
ADD file:c64f62f8baccded9d94037c0935c477d3dd18839a9c4e565679657d4c9df92c8 in / 
# Sat, 09 Sep 2017 01:45:10 GMT
CMD ["bash"]
# Wed, 20 Sep 2017 16:17:13 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 20 Sep 2017 16:17:17 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 20 Sep 2017 16:17:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 20 Sep 2017 16:19:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 20 Sep 2017 16:22:48 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 20 Sep 2017 16:22:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 02:34:33 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 02:34:34 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 02:34:35 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 02:34:36 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 02:34:37 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 02:36:33 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 02:36:34 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 02:36:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 02:36:39 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 02:36:42 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 02:36:44 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 02:36:46 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 02:36:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 02:36:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 02:36:51 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 02:36:52 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:07ff66d25cfd7ff46d2bd66b7005ca8b45d0e37e780d439e3032785bd84d99a4`  
		Last Modified: Sat, 09 Sep 2017 01:58:27 GMT  
		Size: 19.3 MB (19277906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a738f35f8156a2f3caf349b0ab4c1755fbf8357715d4767101b83b94c763ea`  
		Last Modified: Wed, 20 Sep 2017 16:28:42 GMT  
		Size: 3.9 MB (3870621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4dbfceb33c482f85d57ff6e04fca6fd0b810adab4e6d0e6f8c3c024eb145d49`  
		Last Modified: Wed, 20 Sep 2017 16:28:39 GMT  
		Size: 4.1 KB (4062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c82296aa104dfea75992433603c9720b87c8bfd73e4af58705256b4380086b9`  
		Last Modified: Wed, 20 Sep 2017 16:28:37 GMT  
		Size: 926.4 KB (926399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41fea946f33fa32cc5bc1696ee9623149eb9aa7866cb7fb07f0ff85e2f3f6d3e`  
		Last Modified: Wed, 20 Sep 2017 16:28:45 GMT  
		Size: 24.8 MB (24785658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a67363c7c321a1963138533cf7e531414bef50ffa963ea6400c656ab30793a`  
		Last Modified: Tue, 26 Sep 2017 02:38:05 GMT  
		Size: 6.8 MB (6820266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:882d7c81c4fd8d87f1639fb34c7f6bd340b8c27340450b793b8bd1802378bb19`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 2.3 KB (2266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6006f458a280e4f85c8b800b3e8c6015c010fa37231b9fbded884ec82ca123c4`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:306a8643ede81cf170475acd824acc610fad638a4732410e481711f2887509ba`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8acf0dbf49463ca96cedb0af280d3ff72228824fd8e04768508e12c1cb4a1eab`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 3.9 KB (3944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7402ee5b71a5d7d904e105035c0ffc020944cc3e5156d3c147408b79851c066f`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:33fcfba6ced7bfe60082538a3c705923bdb4ed7814199bc6c0a6bb10e1e02be7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57280304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10ed14bd6eeba2ba5892f9b0e671d68c9b0a67f1aa7e9f8a83a8be8a6795fdcb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 17:29:09 GMT
ADD file:16391f421551b998f1ff496c48dc67f34dd2003077158fd1af78a898ea367e1d in / 
# Fri, 08 Sep 2017 17:29:10 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 02:59:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 02:59:27 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Sat, 09 Sep 2017 02:59:28 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 03:00:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 09 Sep 2017 03:01:51 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:01:52 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 13:52:33 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 13:52:34 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 13:52:34 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 13:52:35 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 13:52:35 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 13:53:37 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 13:53:38 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 13:53:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 13:53:40 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 13:53:42 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 13:53:43 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 13:53:44 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 13:53:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 13:53:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 13:53:47 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 13:53:48 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:0bd6dbb95c7a219839ea8345519110bbccc30c113a72119bbd92c7fe2a3f1e78`  
		Last Modified: Fri, 08 Sep 2017 17:43:38 GMT  
		Size: 20.3 MB (20337273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86d1f7cb33d030873ce67985178e017cf76b8615e36c7e9213fda4308e8214a`  
		Last Modified: Sat, 09 Sep 2017 03:03:39 GMT  
		Size: 4.1 MB (4075190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9d563980d836cdeb8b18f35f005a3bf20e016369956d96b5738ab23344f689`  
		Last Modified: Sat, 09 Sep 2017 03:03:37 GMT  
		Size: 4.1 KB (4077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2667d8cce687eb930ed23a63969bc98a124dbcdfa61514de284b26bdd5c12d30`  
		Last Modified: Sat, 09 Sep 2017 03:03:36 GMT  
		Size: 919.5 KB (919509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:359e3bdc9c490688f368c3da21e357706ea651d5f4ac77e8a98f04d883725214`  
		Last Modified: Sat, 09 Sep 2017 03:03:41 GMT  
		Size: 25.0 MB (25042765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ceb16b4a783f0882522e0eac5aae34e2a56ccd464a3470571a7319854618a6`  
		Last Modified: Tue, 26 Sep 2017 13:54:37 GMT  
		Size: 6.9 MB (6894890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e00fc1cb980fc2098cc4cfc79ef63fce9687be9830d5cd639d369ea87b085c`  
		Last Modified: Tue, 26 Sep 2017 13:54:30 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f199b6b2bb6aaf19714044a9c966721cd395c44fbccda942ca2c167aba93a9`  
		Last Modified: Tue, 26 Sep 2017 13:54:31 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9570116eba3b76961b98d35d2ca3751026cf75061e75254f770fe2de0493dc2d`  
		Last Modified: Tue, 26 Sep 2017 13:54:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efd29cce1888f4f087980637122506fa4a742fdee8a075bacf1f73a52421c5d`  
		Last Modified: Tue, 26 Sep 2017 13:54:31 GMT  
		Size: 3.9 KB (3943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab586d5c3878d3a978d09b7b64afdc0e03ca09156c2682b47ebfe0d90eaecadd`  
		Last Modified: Tue, 26 Sep 2017 13:54:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; 386

```console
$ docker pull rabbitmq@sha256:493521091d40da286beef72b6b906c2aeca75df9ea7bf7178fe11a7365f939d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63899799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc4f5d17c9909bb436cb63df0f069119cead72381b9334cc45287891861fefab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:57 GMT
ADD file:637a2d4ad21512f6aa9863626de3b678f1aff76377357d7e15fc6a381ec94689 in / 
# Fri, 08 Sep 2017 13:19:57 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:18:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:18:16 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 08 Sep 2017 17:18:16 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 17:18:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 17:19:02 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:19:03 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 10:46:41 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 10:46:41 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 10:46:41 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 10:46:42 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 10:46:42 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 10:47:17 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 10:47:17 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 10:47:18 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 10:47:18 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 10:47:19 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 10:47:19 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 10:47:20 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 10:47:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 10:47:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 10:47:21 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 10:47:21 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:2f5ca21e3ce4be74a6720d0866b1c95e310ae9d9494d9e5155a3633cd5cd62cd`  
		Last Modified: Fri, 08 Sep 2017 13:27:56 GMT  
		Size: 23.1 MB (23125784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af682eb40771833b2e56648c8c1f01ecd94f04c826f86d5adb47f44b8956adc2`  
		Last Modified: Fri, 08 Sep 2017 17:19:37 GMT  
		Size: 4.8 MB (4804024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40af7b9b4d4a547cc0e0fb1463ba275401d5a51b63d605c554bd181b5b31a0d5`  
		Last Modified: Fri, 08 Sep 2017 17:19:36 GMT  
		Size: 4.1 KB (4058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870f9f6c5d7404e44efe1dc21317b5bb3666adc79a386bd0446f701c976776db`  
		Last Modified: Fri, 08 Sep 2017 17:19:34 GMT  
		Size: 931.5 KB (931532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73494470c557dfa90ae0e6c205c0a308a89c35b61d3e449bf54f41a5c9381102`  
		Last Modified: Fri, 08 Sep 2017 17:19:37 GMT  
		Size: 27.8 MB (27818774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef6027902858a00f26bc93f1744a20bcfd8c66189b6be1c5406e67d866f2731`  
		Last Modified: Tue, 26 Sep 2017 10:47:43 GMT  
		Size: 7.2 MB (7209028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93aa20a500b7490c164a679f28f408308197f9dc614dc3778a71d1216c84cb6`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadfc0b00afa986d1ea6419b09f939604e3c32e2c4587b72055ad5ee82e9d866`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abdc410ca68ef3c8f860a8ef00adabdb43c4674d6fd26bfec79569c84f8ed0d0`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88bd1c9ded163839f4adc1e57afa6ebd4c07821831123df6af9d7793ab21de72`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 3.9 KB (3945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4134d2d867d0fadca6000f52169b319a02a544f94efbc9bb7f6e6b7f718ed7c8`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:f779d3c4122096ce89cc5d3473b9f5e1891a636dc85ba442dfc5cab64f438157
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60384781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d66d3159ca9046ef3addbd46e7aa24038c38ad82a0c3a92c54e3f698a34f24b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:22 GMT
ADD file:1422f50e4e998477f6c3b2fcee6853da10eb8bca7926ec70e494ff485f6284d7 in / 
# Fri, 08 Sep 2017 00:34:22 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 22:51:21 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 22:51:28 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Sep 2017 22:51:30 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Sep 2017 22:52:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Sep 2017 22:54:34 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 22:54:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 07:11:36 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 07:11:38 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 07:11:41 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 07:11:43 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 07:11:46 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 07:13:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 07:14:00 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 07:14:06 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 07:14:10 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 07:14:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 07:14:29 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 07:14:32 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 07:14:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 07:14:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 07:14:43 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 07:14:45 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:7ff7f6fdf12a09feca6f75b5d90b860059bdccf4185a9dab7c2c5b9e6e90123a`  
		Last Modified: Fri, 08 Sep 2017 00:41:42 GMT  
		Size: 22.7 MB (22746060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03ccdc113ab1266db618ff04ab98527c7167e2df7b81dbda212235bcf532e35`  
		Last Modified: Tue, 12 Sep 2017 22:56:39 GMT  
		Size: 4.4 MB (4360373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16f43af127417f02f39d312d2ecbac85ebf5b3084eddf896e25d76c4eea2d7be`  
		Last Modified: Tue, 12 Sep 2017 22:56:37 GMT  
		Size: 4.1 KB (4104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a427330ed64ea1260490780e2c2ddc98da973b112b4f73d9085dcb97c8f753cb`  
		Last Modified: Tue, 12 Sep 2017 22:56:35 GMT  
		Size: 920.8 KB (920840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f09c78cb850af5f76c18ef1b42c64dbed4af34f8a8e6187ae51a74e14d1bb6e`  
		Last Modified: Tue, 12 Sep 2017 22:56:39 GMT  
		Size: 25.5 MB (25492757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc1bd551250de979c6dc899a460556ff21e8e33b41c9fd185e74bdceb95be1d`  
		Last Modified: Tue, 26 Sep 2017 07:15:26 GMT  
		Size: 6.9 MB (6854043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72846fb78c462687ac9d09d8ffa431ac1e72621aa0edc72347fda8bc05d2af50`  
		Last Modified: Tue, 26 Sep 2017 07:15:22 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a2dbcfab390ddd950539cdd0c6e6c325c56da7b66e12de85f1e7f9cdeba37c9`  
		Last Modified: Tue, 26 Sep 2017 07:15:22 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8329c8cc338669480a73421c1b4249a24ea9bb89ab9ca0dd63ce927686b81917`  
		Last Modified: Tue, 26 Sep 2017 07:15:21 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045a56a447171005afa59312a0c9f56453bdf43878e12be3f795e50924a3dbf3`  
		Last Modified: Tue, 26 Sep 2017 07:15:22 GMT  
		Size: 3.9 KB (3947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f291fdc1ba0502cd7ea5b489c7c066bad28b5bcc03a86a40a438000e2467852d`  
		Last Modified: Tue, 26 Sep 2017 07:15:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; s390x

```console
$ docker pull rabbitmq@sha256:2d9966b9e33d98e421bc074ef1b56233009180721050fc4b453dc6edde8dd370
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60365697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:484735e1071114dde57fd0c9173dc9fe8ea5a1de5e4f5d9f9ee5be38c751f18c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 05:23:00 GMT
ADD file:9b074cf37adfa815e3a6b300f8652eb77a06cfeea3f74fd021795cff318ca2ce in / 
# Fri, 08 Sep 2017 05:23:00 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:12:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:12:36 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 08 Sep 2017 07:12:36 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 07:12:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 07:13:13 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:13:14 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 08 Sep 2017 07:13:17 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 07:13:17 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Wed, 13 Sep 2017 17:06:27 GMT
ENV RABBITMQ_VERSION=3.6.12
# Wed, 13 Sep 2017 17:06:27 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Wed, 13 Sep 2017 17:06:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 17:06:38 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 17:06:38 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 13 Sep 2017 17:06:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 13 Sep 2017 17:06:39 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 13 Sep 2017 17:06:40 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 13 Sep 2017 17:06:40 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 13 Sep 2017 17:06:41 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Wed, 13 Sep 2017 17:06:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 17:06:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 17:06:42 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 13 Sep 2017 17:06:42 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:4a3a3449ff754d3a7e8f189d020e507ff2cb0fd172b4240ca2d1d78e2d65d544`  
		Last Modified: Fri, 08 Sep 2017 05:27:12 GMT  
		Size: 22.3 MB (22338151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9f9c3f65f8623995e82dca85129c63aebf311a1f7b80fdde7eb1b1a6a9a7c4`  
		Last Modified: Fri, 08 Sep 2017 07:13:52 GMT  
		Size: 4.5 MB (4530037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e766d543dae983ec5d1fb0a8ece5da0c790574ad27de51775826875e63e48cc6`  
		Last Modified: Fri, 08 Sep 2017 07:13:50 GMT  
		Size: 4.1 KB (4070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7482794ab6a0465927e4cef738eceacc49e28b4e8f325f0f6153f16df398d12e`  
		Last Modified: Fri, 08 Sep 2017 07:13:50 GMT  
		Size: 938.0 KB (938009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f8dce71bb341d4baafcc9c8986c3cce6156dc353505e6dc9c821e4330b868da`  
		Last Modified: Fri, 08 Sep 2017 07:13:54 GMT  
		Size: 25.6 MB (25619550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:753d738c05295037a1c7f7c66dd9faae22257631385c9b9291d4e46f8679e724`  
		Last Modified: Fri, 08 Sep 2017 07:13:49 GMT  
		Size: 3.1 KB (3108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d70befe6ae825e874830dfdf77e8090dfc7fcaa9b321b8f30a06db9d502564`  
		Last Modified: Fri, 08 Sep 2017 07:13:49 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae25609266a393f768cb3501e6cd26353d5e4f3b3cc9d19f8ebbd73e4d8c6eea`  
		Last Modified: Wed, 13 Sep 2017 17:06:57 GMT  
		Size: 6.9 MB (6925832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2eaf458900cd749705c6be95bb97cbc3d01bf97bb2b0f29c7b1c773076e6d4`  
		Last Modified: Wed, 13 Sep 2017 17:06:54 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d373a6630d7f98be44bb2157cec21fe02d417e123b260cd3241d5d9f2eda68d1`  
		Last Modified: Wed, 13 Sep 2017 17:06:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16bab863dce632474453c632292a0cac44271d5180ea761e2f98cca40b65747f`  
		Last Modified: Wed, 13 Sep 2017 17:06:54 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f649e97eb461bdd3dba1a1056d97ed30bd0651a22dc1b7a7b436849136e5cd`  
		Last Modified: Wed, 13 Sep 2017 17:06:55 GMT  
		Size: 4.1 KB (4067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4e4c6b050fd9c884b294bfee7322ff8b6bd53a1c9155a1d5d7393c3293055a`  
		Last Modified: Wed, 13 Sep 2017 17:06:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management`

```console
$ docker pull rabbitmq@sha256:970ea9fee90ad6ecbfc464e4f55a2cb4d942510c6f5a5e00dfcda9c277d3ffcf
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
$ docker pull rabbitmq@sha256:9ccc4ce528db095a22ba2481f6ba3f16d5dc8713983596a302e4fbe0ed9f2f82
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.8 MB (62848424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:888b1cf3f00326a0dafdf00500ea8be23632192278fbedd2a9821a736051c011`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:48 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Wed, 13 Sep 2017 08:41:49 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 01:46:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 01:46:10 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 19 Sep 2017 01:46:11 GMT
ENV GOSU_VERSION=1.10
# Tue, 19 Sep 2017 01:46:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 19 Sep 2017 01:46:57 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 01:46:57 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 00:48:03 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 00:48:04 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 00:48:04 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 00:48:04 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 00:48:04 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 00:48:48 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 00:48:49 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 00:48:49 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 00:48:50 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 00:48:50 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 00:48:51 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 00:48:51 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:48:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 00:48:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:48:56 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 00:48:56 GMT
CMD ["rabbitmq-server"]
# Tue, 26 Sep 2017 00:49:08 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 26 Sep 2017 00:49:08 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22587c0b6c1cafde12872ef7d006984387fc5578dfd545d22463bf5edc452b1`  
		Last Modified: Tue, 19 Sep 2017 01:48:26 GMT  
		Size: 4.5 MB (4499395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7cdb9d7769f63be56be62adb2d2db684e1b2936068dcddd7d2a91341e66d29`  
		Last Modified: Tue, 19 Sep 2017 01:48:25 GMT  
		Size: 4.1 KB (4075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc614e186c613f98368edf79d242daeefd3e565bb92cd42c60a4c46c3bb1c5f0`  
		Last Modified: Tue, 19 Sep 2017 01:48:24 GMT  
		Size: 952.0 KB (951956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63c239bab1d94dd75841ab35101bd059cb0a4fda703238aa3d74348ce925e54`  
		Last Modified: Tue, 19 Sep 2017 01:48:26 GMT  
		Size: 27.7 MB (27703791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae5fc200653eebf990ee3feb87159baf167327749460e6bc93d6938b9dc4eee`  
		Last Modified: Tue, 26 Sep 2017 00:50:01 GMT  
		Size: 7.2 MB (7194356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5cf9a27404e2ab036228a854fdbf5a7f80499b98fff6bb32f034ab8f4c3ac5`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c298e89eaf82cfe4d652c073d71884d662c433fcb15f8f2e81e5d29ed13e1f`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c1094fa1968e0e621b08381b9cdfa21eb41916ebbb71d1268ccfd723c64f91`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550c8ace2244275f8051a4a1e09b0db375cfcd49ed86b6c3833ba0e4acf29d12`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 3.9 KB (3946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62899172d555cce3e3c93f09a52a511946df7d2cebc63313382416b0c73cc6db`  
		Last Modified: Tue, 26 Sep 2017 00:49:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:107a9ae5e162c4df0657ed3ee71c5018b18c522df9b836dac57fb4eb101ec0a0`  
		Last Modified: Tue, 26 Sep 2017 00:50:33 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:9a0aac4b008cb327863c5650d9c644bf074a3ecaf8d35706a2795344f463c9c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.4 MB (58427104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afce555c606688ed03078a4f3bba9a10687ad4772ae95233a6b74e6a55ab2499`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 20:04:19 GMT
ADD file:7a4f76115b8f87534c9bcd4a40386c07af5c7bfdb3429f22d53d07faa0de57da in / 
# Fri, 08 Sep 2017 20:04:20 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 03:12:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:12:54 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Sat, 09 Sep 2017 03:12:55 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 03:19:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 09 Sep 2017 03:25:04 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:25:06 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 14:15:05 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 14:15:06 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 14:15:07 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 14:15:08 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 14:15:09 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 14:20:34 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 14:20:35 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 14:20:37 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 14:20:38 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 14:20:41 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 14:20:43 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 14:20:44 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 14:20:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 14:20:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 14:20:48 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 14:20:49 GMT
CMD ["rabbitmq-server"]
# Tue, 26 Sep 2017 14:21:18 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 26 Sep 2017 14:21:19 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:fef762b8f53b037e95e7c93f502931dc720c98a6e4ab7b70807fe14fafba6103`  
		Last Modified: Fri, 08 Sep 2017 20:21:38 GMT  
		Size: 21.2 MB (21161607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4da49272ed622a1d80a2784d63c0b0cf69ce2d75e4cd794d8186cb7364d1b0`  
		Last Modified: Sat, 09 Sep 2017 03:29:08 GMT  
		Size: 4.2 MB (4231481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75616693a72bc2c9efb81fb47d33774fc0a25753163ca66847efa1ca8a0621f`  
		Last Modified: Sat, 09 Sep 2017 03:29:02 GMT  
		Size: 4.1 KB (4055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72dfadb2b70b7fdefcf3c25ecec8003122979ab13cdca42bc6603d2b3b5b428c`  
		Last Modified: Sat, 09 Sep 2017 03:29:01 GMT  
		Size: 942.7 KB (942658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe5a4e495e12fb72cf7e3cbe65432923be24a177a73eaa71f7b680d3899ab1d`  
		Last Modified: Sat, 09 Sep 2017 03:29:09 GMT  
		Size: 25.2 MB (25170762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6a79b9fe5d3b9e27cd63daca1194cf700ea4d8e6961a8cef3e1b2d56d5cbae`  
		Last Modified: Tue, 26 Sep 2017 14:21:47 GMT  
		Size: 6.9 MB (6909750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a715b822e824a7da8f54f85376183483fdca50ae1e588910f1b5e8d97370f2a3`  
		Last Modified: Tue, 26 Sep 2017 14:21:42 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae47fb90313a9b42838d34b0d9b7aaa37f25c54f4fbf912fbba3e43b734edc5`  
		Last Modified: Tue, 26 Sep 2017 14:21:42 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3be265893d48df28b19dcd42177c464ace95a4f93d4a918b175caf8ae3a27c`  
		Last Modified: Tue, 26 Sep 2017 14:21:42 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f474cde49ffcecb2feeeda61c2333dbada3cf4a435652b34344cdc78155ba122`  
		Last Modified: Tue, 26 Sep 2017 14:21:42 GMT  
		Size: 3.9 KB (3947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d41ae105df290e467c5ca8322955fb8ea8141f2a62615f15b32e2940e66d71`  
		Last Modified: Tue, 26 Sep 2017 14:21:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371c0c16a5c7e164b6c263dd1ab6a7bff92121aa42bc38624254d25c5349c9bf`  
		Last Modified: Tue, 26 Sep 2017 14:22:41 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:80e69c8dae33911eab1912c00d00ae583563c446d77d1485288c5f54ad2c8b13
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 MB (55691709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:966c6b25fc8606cea552b4d21777d10632a633dbe0ee5c434e15f747eb81c3c5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Sat, 09 Sep 2017 01:45:09 GMT
ADD file:c64f62f8baccded9d94037c0935c477d3dd18839a9c4e565679657d4c9df92c8 in / 
# Sat, 09 Sep 2017 01:45:10 GMT
CMD ["bash"]
# Wed, 20 Sep 2017 16:17:13 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 20 Sep 2017 16:17:17 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 20 Sep 2017 16:17:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 20 Sep 2017 16:19:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 20 Sep 2017 16:22:48 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 20 Sep 2017 16:22:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 02:34:33 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 02:34:34 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 02:34:35 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 02:34:36 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 02:34:37 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 02:36:33 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 02:36:34 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 02:36:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 02:36:39 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 02:36:42 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 02:36:44 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 02:36:46 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 02:36:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 02:36:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 02:36:51 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 02:36:52 GMT
CMD ["rabbitmq-server"]
# Tue, 26 Sep 2017 02:37:33 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 26 Sep 2017 02:37:34 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:07ff66d25cfd7ff46d2bd66b7005ca8b45d0e37e780d439e3032785bd84d99a4`  
		Last Modified: Sat, 09 Sep 2017 01:58:27 GMT  
		Size: 19.3 MB (19277906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a738f35f8156a2f3caf349b0ab4c1755fbf8357715d4767101b83b94c763ea`  
		Last Modified: Wed, 20 Sep 2017 16:28:42 GMT  
		Size: 3.9 MB (3870621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4dbfceb33c482f85d57ff6e04fca6fd0b810adab4e6d0e6f8c3c024eb145d49`  
		Last Modified: Wed, 20 Sep 2017 16:28:39 GMT  
		Size: 4.1 KB (4062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c82296aa104dfea75992433603c9720b87c8bfd73e4af58705256b4380086b9`  
		Last Modified: Wed, 20 Sep 2017 16:28:37 GMT  
		Size: 926.4 KB (926399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41fea946f33fa32cc5bc1696ee9623149eb9aa7866cb7fb07f0ff85e2f3f6d3e`  
		Last Modified: Wed, 20 Sep 2017 16:28:45 GMT  
		Size: 24.8 MB (24785658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a67363c7c321a1963138533cf7e531414bef50ffa963ea6400c656ab30793a`  
		Last Modified: Tue, 26 Sep 2017 02:38:05 GMT  
		Size: 6.8 MB (6820266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:882d7c81c4fd8d87f1639fb34c7f6bd340b8c27340450b793b8bd1802378bb19`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 2.3 KB (2266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6006f458a280e4f85c8b800b3e8c6015c010fa37231b9fbded884ec82ca123c4`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:306a8643ede81cf170475acd824acc610fad638a4732410e481711f2887509ba`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8acf0dbf49463ca96cedb0af280d3ff72228824fd8e04768508e12c1cb4a1eab`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 3.9 KB (3944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7402ee5b71a5d7d904e105035c0ffc020944cc3e5156d3c147408b79851c066f`  
		Last Modified: Tue, 26 Sep 2017 02:37:59 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72385e05bf3ec71894007c950877329ce313f804780206cb51674c49dc4c1e9`  
		Last Modified: Tue, 26 Sep 2017 02:38:57 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:bfaffd0ebbdccde36220ac90d2f04444f61ff3b2bd639c0dc8e147273c965cfb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57280497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cc534674521a11087ad2dd3c98249a52616ceb228d46137468a1354184368f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 17:29:09 GMT
ADD file:16391f421551b998f1ff496c48dc67f34dd2003077158fd1af78a898ea367e1d in / 
# Fri, 08 Sep 2017 17:29:10 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 02:59:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 02:59:27 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Sat, 09 Sep 2017 02:59:28 GMT
ENV GOSU_VERSION=1.10
# Sat, 09 Sep 2017 03:00:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 09 Sep 2017 03:01:51 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:01:52 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 13:52:33 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 13:52:34 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 13:52:34 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 13:52:35 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 13:52:35 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 13:53:37 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 13:53:38 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 13:53:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 13:53:40 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 13:53:42 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 13:53:43 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 13:53:44 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 13:53:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 13:53:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 13:53:47 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 13:53:48 GMT
CMD ["rabbitmq-server"]
# Tue, 26 Sep 2017 13:54:14 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 26 Sep 2017 13:54:14 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:0bd6dbb95c7a219839ea8345519110bbccc30c113a72119bbd92c7fe2a3f1e78`  
		Last Modified: Fri, 08 Sep 2017 17:43:38 GMT  
		Size: 20.3 MB (20337273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86d1f7cb33d030873ce67985178e017cf76b8615e36c7e9213fda4308e8214a`  
		Last Modified: Sat, 09 Sep 2017 03:03:39 GMT  
		Size: 4.1 MB (4075190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9d563980d836cdeb8b18f35f005a3bf20e016369956d96b5738ab23344f689`  
		Last Modified: Sat, 09 Sep 2017 03:03:37 GMT  
		Size: 4.1 KB (4077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2667d8cce687eb930ed23a63969bc98a124dbcdfa61514de284b26bdd5c12d30`  
		Last Modified: Sat, 09 Sep 2017 03:03:36 GMT  
		Size: 919.5 KB (919509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:359e3bdc9c490688f368c3da21e357706ea651d5f4ac77e8a98f04d883725214`  
		Last Modified: Sat, 09 Sep 2017 03:03:41 GMT  
		Size: 25.0 MB (25042765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ceb16b4a783f0882522e0eac5aae34e2a56ccd464a3470571a7319854618a6`  
		Last Modified: Tue, 26 Sep 2017 13:54:37 GMT  
		Size: 6.9 MB (6894890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e00fc1cb980fc2098cc4cfc79ef63fce9687be9830d5cd639d369ea87b085c`  
		Last Modified: Tue, 26 Sep 2017 13:54:30 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f199b6b2bb6aaf19714044a9c966721cd395c44fbccda942ca2c167aba93a9`  
		Last Modified: Tue, 26 Sep 2017 13:54:31 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9570116eba3b76961b98d35d2ca3751026cf75061e75254f770fe2de0493dc2d`  
		Last Modified: Tue, 26 Sep 2017 13:54:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efd29cce1888f4f087980637122506fa4a742fdee8a075bacf1f73a52421c5d`  
		Last Modified: Tue, 26 Sep 2017 13:54:31 GMT  
		Size: 3.9 KB (3943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab586d5c3878d3a978d09b7b64afdc0e03ca09156c2682b47ebfe0d90eaecadd`  
		Last Modified: Tue, 26 Sep 2017 13:54:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59991cb4da27783b48ca4c6ba921931557c08108b315142ec4ca4a4874e1f2f9`  
		Last Modified: Tue, 26 Sep 2017 13:55:20 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; 386

```console
$ docker pull rabbitmq@sha256:e058af81d0f7da2a561c2fa21b7fb66e061b4de9b2064ac2191d35b9b061c7c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63899992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df82247f11dc2e764de97c86ba9bc5761c86731298cbc4d0e4a6bd2ead9507e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:57 GMT
ADD file:637a2d4ad21512f6aa9863626de3b678f1aff76377357d7e15fc6a381ec94689 in / 
# Fri, 08 Sep 2017 13:19:57 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:18:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:18:16 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 08 Sep 2017 17:18:16 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 17:18:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 17:19:02 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:19:03 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 10:46:41 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 10:46:41 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 10:46:41 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 10:46:42 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 10:46:42 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 10:47:17 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 10:47:17 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 10:47:18 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 10:47:18 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 10:47:19 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 10:47:19 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 10:47:20 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 10:47:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 10:47:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 10:47:21 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 10:47:21 GMT
CMD ["rabbitmq-server"]
# Tue, 26 Sep 2017 10:47:33 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 26 Sep 2017 10:47:33 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:2f5ca21e3ce4be74a6720d0866b1c95e310ae9d9494d9e5155a3633cd5cd62cd`  
		Last Modified: Fri, 08 Sep 2017 13:27:56 GMT  
		Size: 23.1 MB (23125784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af682eb40771833b2e56648c8c1f01ecd94f04c826f86d5adb47f44b8956adc2`  
		Last Modified: Fri, 08 Sep 2017 17:19:37 GMT  
		Size: 4.8 MB (4804024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40af7b9b4d4a547cc0e0fb1463ba275401d5a51b63d605c554bd181b5b31a0d5`  
		Last Modified: Fri, 08 Sep 2017 17:19:36 GMT  
		Size: 4.1 KB (4058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870f9f6c5d7404e44efe1dc21317b5bb3666adc79a386bd0446f701c976776db`  
		Last Modified: Fri, 08 Sep 2017 17:19:34 GMT  
		Size: 931.5 KB (931532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73494470c557dfa90ae0e6c205c0a308a89c35b61d3e449bf54f41a5c9381102`  
		Last Modified: Fri, 08 Sep 2017 17:19:37 GMT  
		Size: 27.8 MB (27818774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef6027902858a00f26bc93f1744a20bcfd8c66189b6be1c5406e67d866f2731`  
		Last Modified: Tue, 26 Sep 2017 10:47:43 GMT  
		Size: 7.2 MB (7209028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93aa20a500b7490c164a679f28f408308197f9dc614dc3778a71d1216c84cb6`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadfc0b00afa986d1ea6419b09f939604e3c32e2c4587b72055ad5ee82e9d866`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abdc410ca68ef3c8f860a8ef00adabdb43c4674d6fd26bfec79569c84f8ed0d0`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88bd1c9ded163839f4adc1e57afa6ebd4c07821831123df6af9d7793ab21de72`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 3.9 KB (3945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4134d2d867d0fadca6000f52169b319a02a544f94efbc9bb7f6e6b7f718ed7c8`  
		Last Modified: Tue, 26 Sep 2017 10:47:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fd468bbd5c8f6079133d717511f3954281fe3e669d60bfcb260eb5723ca6a68`  
		Last Modified: Tue, 26 Sep 2017 10:48:08 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:c815e58493c50241f4a6b26e5ebd1a9420afb503dc626b065874cc4d7c6f5a09
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60384976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66d26183a51c40de65f9210997f541616f8f8a6937c1419653e7ded0f3a5aa09`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:22 GMT
ADD file:1422f50e4e998477f6c3b2fcee6853da10eb8bca7926ec70e494ff485f6284d7 in / 
# Fri, 08 Sep 2017 00:34:22 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 22:51:21 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 22:51:28 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Sep 2017 22:51:30 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Sep 2017 22:52:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Sep 2017 22:54:34 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 22:54:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 26 Sep 2017 07:11:36 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 07:11:38 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 26 Sep 2017 07:11:41 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 26 Sep 2017 07:11:43 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_12
# Tue, 26 Sep 2017 07:11:46 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 26 Sep 2017 07:13:56 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 26 Sep 2017 07:14:00 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 26 Sep 2017 07:14:06 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 26 Sep 2017 07:14:10 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 26 Sep 2017 07:14:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 26 Sep 2017 07:14:29 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 26 Sep 2017 07:14:32 GMT
COPY file:72f02a695156e9497efebb00f9cf09482d34dd64dfffa0b58979d7b64f5f2a9e in /usr/local/bin/ 
# Tue, 26 Sep 2017 07:14:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 07:14:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 07:14:43 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 07:14:45 GMT
CMD ["rabbitmq-server"]
# Tue, 26 Sep 2017 07:15:08 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 26 Sep 2017 07:15:11 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:7ff7f6fdf12a09feca6f75b5d90b860059bdccf4185a9dab7c2c5b9e6e90123a`  
		Last Modified: Fri, 08 Sep 2017 00:41:42 GMT  
		Size: 22.7 MB (22746060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03ccdc113ab1266db618ff04ab98527c7167e2df7b81dbda212235bcf532e35`  
		Last Modified: Tue, 12 Sep 2017 22:56:39 GMT  
		Size: 4.4 MB (4360373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16f43af127417f02f39d312d2ecbac85ebf5b3084eddf896e25d76c4eea2d7be`  
		Last Modified: Tue, 12 Sep 2017 22:56:37 GMT  
		Size: 4.1 KB (4104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a427330ed64ea1260490780e2c2ddc98da973b112b4f73d9085dcb97c8f753cb`  
		Last Modified: Tue, 12 Sep 2017 22:56:35 GMT  
		Size: 920.8 KB (920840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f09c78cb850af5f76c18ef1b42c64dbed4af34f8a8e6187ae51a74e14d1bb6e`  
		Last Modified: Tue, 12 Sep 2017 22:56:39 GMT  
		Size: 25.5 MB (25492757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc1bd551250de979c6dc899a460556ff21e8e33b41c9fd185e74bdceb95be1d`  
		Last Modified: Tue, 26 Sep 2017 07:15:26 GMT  
		Size: 6.9 MB (6854043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72846fb78c462687ac9d09d8ffa431ac1e72621aa0edc72347fda8bc05d2af50`  
		Last Modified: Tue, 26 Sep 2017 07:15:22 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a2dbcfab390ddd950539cdd0c6e6c325c56da7b66e12de85f1e7f9cdeba37c9`  
		Last Modified: Tue, 26 Sep 2017 07:15:22 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8329c8cc338669480a73421c1b4249a24ea9bb89ab9ca0dd63ce927686b81917`  
		Last Modified: Tue, 26 Sep 2017 07:15:21 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045a56a447171005afa59312a0c9f56453bdf43878e12be3f795e50924a3dbf3`  
		Last Modified: Tue, 26 Sep 2017 07:15:22 GMT  
		Size: 3.9 KB (3947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f291fdc1ba0502cd7ea5b489c7c066bad28b5bcc03a86a40a438000e2467852d`  
		Last Modified: Tue, 26 Sep 2017 07:15:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99f1f25546af0ab5aa0166a8b75799ca452e21a6487b0fcfd8e9d40d34202d6`  
		Last Modified: Tue, 26 Sep 2017 07:15:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; s390x

```console
$ docker pull rabbitmq@sha256:bc6aae7dfd707f5bfbb6987b17323b8b7a2797c59d9a771d248579e43f339359
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60365891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88d1918ef0b129524323e95c2465bf98bf10e67ab66b233d5e066c625995bb6a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 08 Sep 2017 05:23:00 GMT
ADD file:9b074cf37adfa815e3a6b300f8652eb77a06cfeea3f74fd021795cff318ca2ce in / 
# Fri, 08 Sep 2017 05:23:00 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:12:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:12:36 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 08 Sep 2017 07:12:36 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 07:12:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 07:13:13 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:13:14 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 08 Sep 2017 07:13:17 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 07:13:17 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Wed, 13 Sep 2017 17:06:27 GMT
ENV RABBITMQ_VERSION=3.6.12
# Wed, 13 Sep 2017 17:06:27 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Wed, 13 Sep 2017 17:06:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 17:06:38 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 17:06:38 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 13 Sep 2017 17:06:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 13 Sep 2017 17:06:39 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 13 Sep 2017 17:06:40 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 13 Sep 2017 17:06:40 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 13 Sep 2017 17:06:41 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Wed, 13 Sep 2017 17:06:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 17:06:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 17:06:42 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 13 Sep 2017 17:06:42 GMT
CMD ["rabbitmq-server"]
# Wed, 13 Sep 2017 17:06:45 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 13 Sep 2017 17:06:46 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:4a3a3449ff754d3a7e8f189d020e507ff2cb0fd172b4240ca2d1d78e2d65d544`  
		Last Modified: Fri, 08 Sep 2017 05:27:12 GMT  
		Size: 22.3 MB (22338151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9f9c3f65f8623995e82dca85129c63aebf311a1f7b80fdde7eb1b1a6a9a7c4`  
		Last Modified: Fri, 08 Sep 2017 07:13:52 GMT  
		Size: 4.5 MB (4530037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e766d543dae983ec5d1fb0a8ece5da0c790574ad27de51775826875e63e48cc6`  
		Last Modified: Fri, 08 Sep 2017 07:13:50 GMT  
		Size: 4.1 KB (4070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7482794ab6a0465927e4cef738eceacc49e28b4e8f325f0f6153f16df398d12e`  
		Last Modified: Fri, 08 Sep 2017 07:13:50 GMT  
		Size: 938.0 KB (938009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f8dce71bb341d4baafcc9c8986c3cce6156dc353505e6dc9c821e4330b868da`  
		Last Modified: Fri, 08 Sep 2017 07:13:54 GMT  
		Size: 25.6 MB (25619550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:753d738c05295037a1c7f7c66dd9faae22257631385c9b9291d4e46f8679e724`  
		Last Modified: Fri, 08 Sep 2017 07:13:49 GMT  
		Size: 3.1 KB (3108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d70befe6ae825e874830dfdf77e8090dfc7fcaa9b321b8f30a06db9d502564`  
		Last Modified: Fri, 08 Sep 2017 07:13:49 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae25609266a393f768cb3501e6cd26353d5e4f3b3cc9d19f8ebbd73e4d8c6eea`  
		Last Modified: Wed, 13 Sep 2017 17:06:57 GMT  
		Size: 6.9 MB (6925832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2eaf458900cd749705c6be95bb97cbc3d01bf97bb2b0f29c7b1c773076e6d4`  
		Last Modified: Wed, 13 Sep 2017 17:06:54 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d373a6630d7f98be44bb2157cec21fe02d417e123b260cd3241d5d9f2eda68d1`  
		Last Modified: Wed, 13 Sep 2017 17:06:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16bab863dce632474453c632292a0cac44271d5180ea761e2f98cca40b65747f`  
		Last Modified: Wed, 13 Sep 2017 17:06:54 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f649e97eb461bdd3dba1a1056d97ed30bd0651a22dc1b7a7b436849136e5cd`  
		Last Modified: Wed, 13 Sep 2017 17:06:55 GMT  
		Size: 4.1 KB (4067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4e4c6b050fd9c884b294bfee7322ff8b6bd53a1c9155a1d5d7393c3293055a`  
		Last Modified: Wed, 13 Sep 2017 17:06:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab17e86b7df833c8aab66bc3886aad7fa486a9b2b342bcc70321a0678d1f8db`  
		Last Modified: Wed, 13 Sep 2017 17:07:13 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management-alpine`

```console
$ docker pull rabbitmq@sha256:6f743c90643d1f963a68e29d83aaee0302927f16d5d4f25c300e0438b1b31cdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:2f5c7d57dac0a174f13e1a8f57957ca0de8ec3862601f6605fbd600fa7829847
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23557241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28ad6a427b57481717491c946711fe3333106db89cceeb5b0c6cc631caf47b1e`
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
# Tue, 26 Sep 2017 00:49:28 GMT
COPY file:5bc938ee921736a8b5afdf666cec851939be30101ae00139f213145b080fc5cb in /usr/local/bin/ 
# Tue, 26 Sep 2017 00:49:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 00:49:29 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 26 Sep 2017 00:49:29 GMT
CMD ["rabbitmq-server"]
# Tue, 26 Sep 2017 00:49:42 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 26 Sep 2017 00:49:43 GMT
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
	-	`sha256:3a8a8b5b44b48666b965fde7188c4e0f33a242fa5cc79efc4df8e0cfe41c0a96`  
		Last Modified: Tue, 26 Sep 2017 00:51:00 GMT  
		Size: 3.9 KB (3942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4571213d79db74079576c59ebf9a61394c9f5df040bdd26e27de729c2313651`  
		Last Modified: Tue, 26 Sep 2017 00:51:28 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
