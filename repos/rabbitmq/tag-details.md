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
$ docker pull rabbitmq@sha256:d78f6fac87172ad153cb191fe7b31891d717f58175dd5ce72032947d5d472fd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:3` - linux; amd64

```console
$ docker pull rabbitmq@sha256:6277868ba43379e4715eafa6bfa2f754fbc7b78ce58da6ab54415bd09ec0be6a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62850828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b961a046021b19157f9ab3ae37773973047bfc7ef38ec0c083f3987b3fa3a8dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:45 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Thu, 07 Sep 2017 23:07:45 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 23:27:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:27:42 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Sep 2017 23:27:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Sep 2017 23:27:55 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Sep 2017 23:28:13 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:28:13 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Sep 2017 23:28:24 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Sep 2017 23:28:24 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 12 Sep 2017 23:28:25 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 12 Sep 2017 23:28:25 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 12 Sep 2017 23:28:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:28:30 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:28:30 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 12 Sep 2017 23:28:31 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 12 Sep 2017 23:28:31 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 12 Sep 2017 23:28:32 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 12 Sep 2017 23:28:32 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 12 Sep 2017 23:28:33 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:28:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Sep 2017 23:28:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 23:28:34 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 12 Sep 2017 23:28:34 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aadde3410cb49cfd33138502617df98cf49a63776ac6b2496c12bf493d2c1acb`  
		Last Modified: Tue, 12 Sep 2017 23:29:22 GMT  
		Size: 4.5 MB (4499368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e495394892123223f50e3ef9706a2390afdfbdeb1da6d9bc84ef87acc74261`  
		Last Modified: Tue, 12 Sep 2017 23:29:20 GMT  
		Size: 4.1 KB (4070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c862b9153cbda635b775785c30620e5b75da5aa1ca13c92c5e9f66cdcc8531`  
		Last Modified: Tue, 12 Sep 2017 23:29:19 GMT  
		Size: 952.0 KB (952003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f2714343f36f92fb827a2214dea210dc8b31cc94c7e2e047bca398f2095383`  
		Last Modified: Tue, 12 Sep 2017 23:29:26 GMT  
		Size: 27.7 MB (27703836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2dcfdbb20df1075f84544e4692525e0ca74b38e914bdae4c1d446c9d552e4fa`  
		Last Modified: Tue, 12 Sep 2017 23:29:18 GMT  
		Size: 3.1 KB (3109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f01417baa32b9822ca9c5eaec8fe57a1ddb6644df7f1841915d0786d2cfeb06`  
		Last Modified: Tue, 12 Sep 2017 23:29:19 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da934532e234d244acbfb3d9f2ffd184707823b51be798f695de12e7537d4915`  
		Last Modified: Tue, 12 Sep 2017 23:29:19 GMT  
		Size: 7.2 MB (7193446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c3341079a1a6a5ff9503bb1d58a7f3810da7b849c234897b228998bb04820d`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425d840967240d00657711fae33d25c6e7486882cab8322bcee6607b392ca74d`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234f92ba8be71e2eae5027a740144f47e415b5719385b8b5003c26a4df7f1133`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c082fdf870ea036041c78668055c568dc4984416c503f7cc506ecd4daf52cc5a`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 4.1 KB (4067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91b7abe0b74e549a2215539981db8dfeb21122e1b00dbb3dc5688cb3eee3a866`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:2720f336d006976fd6c4e2f0a3fabfc3fe88fbeef20c5e3eec924fc2ed042abd
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.4 MB (58429373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87b7fae2d4dec52b0c8972fc3e6373e30ee3d7185ca166fe4bd07314f8dd337b`
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
# Sat, 09 Sep 2017 03:25:15 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 09 Sep 2017 03:25:17 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Mon, 18 Sep 2017 16:57:54 GMT
ENV RABBITMQ_VERSION=3.6.12
# Mon, 18 Sep 2017 16:57:55 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Mon, 18 Sep 2017 17:00:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 17:00:33 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 18 Sep 2017 17:00:34 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 18 Sep 2017 17:00:36 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 18 Sep 2017 17:00:37 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 18 Sep 2017 17:00:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 18 Sep 2017 17:00:41 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Mon, 18 Sep 2017 17:00:42 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Mon, 18 Sep 2017 17:00:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 18 Sep 2017 17:00:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 18 Sep 2017 17:00:47 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 18 Sep 2017 17:00:48 GMT
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
	-	`sha256:edbb6656d01868a89adb3c8cb754d03a967a3ef90ba51132df75e112ac751d97`  
		Last Modified: Sat, 09 Sep 2017 03:28:55 GMT  
		Size: 3.1 KB (3109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3b059729c7d80a8d78c17295b29dfdc376bfdf5c9a3ec402f4dae94463ddc6`  
		Last Modified: Sat, 09 Sep 2017 03:28:52 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dbf47a706db09795de4c0d2bbb38eb31c46ea94bbb0c3cb7ece579fa3bb3028`  
		Last Modified: Mon, 18 Sep 2017 17:01:43 GMT  
		Size: 6.9 MB (6908755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3e8cc4d107fb4fb62c8d405800b4b745699e44cfd323099fa0f68594a50cb1`  
		Last Modified: Mon, 18 Sep 2017 17:01:32 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22151b49c71a3da76c30d935ca589187b383163f69d969a79a83a58d3e9648b8`  
		Last Modified: Mon, 18 Sep 2017 17:01:31 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3551444d064d5bf110b204563deebf11eaa148ed377860326ef28982a69d2c12`  
		Last Modified: Mon, 18 Sep 2017 17:01:32 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecadf3874f2d921962a8fbe53304723230d4dfc16b94e77c3592208d618f0c3`  
		Last Modified: Mon, 18 Sep 2017 17:01:33 GMT  
		Size: 4.1 KB (4069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ebee06fcd8fe0371560d6e2899ed62cbc6c31e11f32a4ec03380d49b23cf91`  
		Last Modified: Mon, 18 Sep 2017 17:01:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:700225af1354204cb0b0e42e74b7d02ecf1f375c3091a27a00d556ae1a11fc44
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57282715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b61da1f95b561c4a1b5be81093766db5dec0f85a5e2fa5479829c166efc95897`
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
# Sat, 09 Sep 2017 03:02:00 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 09 Sep 2017 03:02:03 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Wed, 13 Sep 2017 13:52:28 GMT
ENV RABBITMQ_VERSION=3.6.12
# Wed, 13 Sep 2017 13:52:28 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Wed, 13 Sep 2017 13:52:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 13:52:52 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 13:52:52 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 13 Sep 2017 13:52:54 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 13 Sep 2017 13:52:55 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 13 Sep 2017 13:52:56 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 13 Sep 2017 13:52:58 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 13 Sep 2017 13:52:59 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Wed, 13 Sep 2017 13:53:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 13:53:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 13:53:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 13 Sep 2017 13:53:03 GMT
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
	-	`sha256:d7f688e1fcfb13b6ef55b3d78c5a8c535da75e4d0e96b6dfc1b4a518236ab265`  
		Last Modified: Sat, 09 Sep 2017 03:03:35 GMT  
		Size: 3.1 KB (3108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce6f264e2329a3a73c1cde7d673337f22b1d2a4bba78420b00c4b027e46bf4a3`  
		Last Modified: Sat, 09 Sep 2017 03:03:35 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5437e50a67a96dfdd5da54d60ac406445d373646a0458d91ae8587251749c7`  
		Last Modified: Wed, 13 Sep 2017 13:53:33 GMT  
		Size: 6.9 MB (6893854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06d90622faf0776523cf3ae8d11b1bf947d76d87dd9cda0a66e44048682edc42`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773dcf2ab2cb3dd6e8b4b7183a2640d559a4fd62ef93deaafe57d697fd4ddb83`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c4e59c45634518523870406a2900804b3b75060802c709ca0002f75d95f7c6`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84656bbd98cb7143e477be6ee2c0c1b8b6d3d7608336160c0c1b13adeaab9243`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f93132fcbd3ba6cb9bef9f31caa086a30ed92428fccd2f7e615b0266a9a313`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3` - linux; 386

```console
$ docker pull rabbitmq@sha256:ee062ac99b2aa94e15f0b6f301249e941ed27c452478474b44b05abec7fcc3d9
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63902177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc629fd8de327408fb1853a9be822ee7d7b579d55810e54e45113deb18ebcff`
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
# Fri, 08 Sep 2017 17:19:07 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 17:19:07 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Wed, 13 Sep 2017 10:45:24 GMT
ENV RABBITMQ_VERSION=3.6.12
# Wed, 13 Sep 2017 10:45:25 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Wed, 13 Sep 2017 10:45:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 10:45:34 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 10:45:34 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 13 Sep 2017 10:45:35 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 13 Sep 2017 10:45:35 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 13 Sep 2017 10:45:36 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 13 Sep 2017 10:45:37 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 13 Sep 2017 10:45:37 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Wed, 13 Sep 2017 10:45:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 10:45:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 10:45:38 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 13 Sep 2017 10:45:38 GMT
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
	-	`sha256:18234d7343e5f45c79ad0cda4e91e7d0aaa88cc2cd6d1014ffcc3671ac5da2e5`  
		Last Modified: Fri, 08 Sep 2017 17:19:34 GMT  
		Size: 3.1 KB (3107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51469fe3c10415438b313e5bf8d55d7bea711b3bd5a6292c66b323749ebce6f`  
		Last Modified: Fri, 08 Sep 2017 17:19:34 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d3012dae721ed47b9678e21cd17173d8cf6ccf6ffef9b539cf07b7e0fb54c6`  
		Last Modified: Wed, 13 Sep 2017 10:45:55 GMT  
		Size: 7.2 MB (7207960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5358d69051581282822e83d0b96add9148a76373e96b0254feb4351add18662`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f318b61716e856418a641d2d86e5b1228c173934795b1d3882e16ec0bc2010`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7828be97d14b65a2de09a961a56d6910801b8f0f54b6386a6fbeaca6440de52b`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959b63fbd84be3ac044676eff69aef6395de22c35695ef51f9454417ebca9984`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 4.1 KB (4069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4151f37a98eaa87d786d1e7996bf98257b06084ad1660c2c82ffcb85c927703`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:38288554d29bd933b54b68ba0c77175e22409cadfc4753d8725f6da45d64eb3b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60387002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e83aef99b6dfec1575b95b138e018baaf8fdec22dd1e327c6c9f84328fc385e3`
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
# Tue, 12 Sep 2017 22:54:44 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Sep 2017 22:54:49 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 12 Sep 2017 22:54:50 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 12 Sep 2017 22:54:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 12 Sep 2017 22:55:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 22:55:32 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 22:55:33 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 12 Sep 2017 22:55:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 12 Sep 2017 22:55:40 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 12 Sep 2017 22:55:45 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 12 Sep 2017 22:55:50 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 12 Sep 2017 22:55:52 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Tue, 12 Sep 2017 22:55:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Sep 2017 22:55:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 22:56:01 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 12 Sep 2017 22:56:03 GMT
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
	-	`sha256:33136a5f20115fe62bbd8aa72bb0980086cdbfed5633a2d913dadd0e9a4ecd84`  
		Last Modified: Tue, 12 Sep 2017 22:56:35 GMT  
		Size: 3.1 KB (3110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0664e44de3406582d405b5cf8c2d06976d15a6762ff395e85f610bcca0da7c67`  
		Last Modified: Tue, 12 Sep 2017 22:56:34 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e61969058bd506abbb0699def6df8b21f356bc5217b88069ed711afe4722d5`  
		Last Modified: Tue, 12 Sep 2017 22:56:36 GMT  
		Size: 6.9 MB (6852811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81a292f3132f54034920f1d038a9a7cbd371409ad96c2bc079de52a6953796b`  
		Last Modified: Tue, 12 Sep 2017 22:56:28 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee14d95f5afd1e094e9558286aeda716883ec628695b1a26a5ce4feea0e2aadc`  
		Last Modified: Tue, 12 Sep 2017 22:56:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59159b7fc3148e25123af34c7b5b70bcaab4dcd31a77f3785da243eab70cc93c`  
		Last Modified: Tue, 12 Sep 2017 22:56:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fb80373224b00c85c3a219c4ecd194e6942fc9a2f59e897547c9121213819d`  
		Last Modified: Tue, 12 Sep 2017 22:56:29 GMT  
		Size: 4.1 KB (4070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a8f525dec54ab225c73be7c0cce2756fd8bf3024cda90316fcbe4218357aea`  
		Last Modified: Tue, 12 Sep 2017 22:56:28 GMT  
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
$ docker pull rabbitmq@sha256:d78f6fac87172ad153cb191fe7b31891d717f58175dd5ce72032947d5d472fd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:3.6` - linux; amd64

```console
$ docker pull rabbitmq@sha256:6277868ba43379e4715eafa6bfa2f754fbc7b78ce58da6ab54415bd09ec0be6a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62850828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b961a046021b19157f9ab3ae37773973047bfc7ef38ec0c083f3987b3fa3a8dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:45 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Thu, 07 Sep 2017 23:07:45 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 23:27:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:27:42 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Sep 2017 23:27:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Sep 2017 23:27:55 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Sep 2017 23:28:13 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:28:13 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Sep 2017 23:28:24 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Sep 2017 23:28:24 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 12 Sep 2017 23:28:25 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 12 Sep 2017 23:28:25 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 12 Sep 2017 23:28:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:28:30 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:28:30 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 12 Sep 2017 23:28:31 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 12 Sep 2017 23:28:31 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 12 Sep 2017 23:28:32 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 12 Sep 2017 23:28:32 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 12 Sep 2017 23:28:33 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:28:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Sep 2017 23:28:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 23:28:34 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 12 Sep 2017 23:28:34 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aadde3410cb49cfd33138502617df98cf49a63776ac6b2496c12bf493d2c1acb`  
		Last Modified: Tue, 12 Sep 2017 23:29:22 GMT  
		Size: 4.5 MB (4499368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e495394892123223f50e3ef9706a2390afdfbdeb1da6d9bc84ef87acc74261`  
		Last Modified: Tue, 12 Sep 2017 23:29:20 GMT  
		Size: 4.1 KB (4070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c862b9153cbda635b775785c30620e5b75da5aa1ca13c92c5e9f66cdcc8531`  
		Last Modified: Tue, 12 Sep 2017 23:29:19 GMT  
		Size: 952.0 KB (952003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f2714343f36f92fb827a2214dea210dc8b31cc94c7e2e047bca398f2095383`  
		Last Modified: Tue, 12 Sep 2017 23:29:26 GMT  
		Size: 27.7 MB (27703836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2dcfdbb20df1075f84544e4692525e0ca74b38e914bdae4c1d446c9d552e4fa`  
		Last Modified: Tue, 12 Sep 2017 23:29:18 GMT  
		Size: 3.1 KB (3109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f01417baa32b9822ca9c5eaec8fe57a1ddb6644df7f1841915d0786d2cfeb06`  
		Last Modified: Tue, 12 Sep 2017 23:29:19 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da934532e234d244acbfb3d9f2ffd184707823b51be798f695de12e7537d4915`  
		Last Modified: Tue, 12 Sep 2017 23:29:19 GMT  
		Size: 7.2 MB (7193446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c3341079a1a6a5ff9503bb1d58a7f3810da7b849c234897b228998bb04820d`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425d840967240d00657711fae33d25c6e7486882cab8322bcee6607b392ca74d`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234f92ba8be71e2eae5027a740144f47e415b5719385b8b5003c26a4df7f1133`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c082fdf870ea036041c78668055c568dc4984416c503f7cc506ecd4daf52cc5a`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 4.1 KB (4067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91b7abe0b74e549a2215539981db8dfeb21122e1b00dbb3dc5688cb3eee3a866`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:2720f336d006976fd6c4e2f0a3fabfc3fe88fbeef20c5e3eec924fc2ed042abd
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.4 MB (58429373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87b7fae2d4dec52b0c8972fc3e6373e30ee3d7185ca166fe4bd07314f8dd337b`
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
# Sat, 09 Sep 2017 03:25:15 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 09 Sep 2017 03:25:17 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Mon, 18 Sep 2017 16:57:54 GMT
ENV RABBITMQ_VERSION=3.6.12
# Mon, 18 Sep 2017 16:57:55 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Mon, 18 Sep 2017 17:00:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 17:00:33 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 18 Sep 2017 17:00:34 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 18 Sep 2017 17:00:36 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 18 Sep 2017 17:00:37 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 18 Sep 2017 17:00:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 18 Sep 2017 17:00:41 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Mon, 18 Sep 2017 17:00:42 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Mon, 18 Sep 2017 17:00:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 18 Sep 2017 17:00:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 18 Sep 2017 17:00:47 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 18 Sep 2017 17:00:48 GMT
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
	-	`sha256:edbb6656d01868a89adb3c8cb754d03a967a3ef90ba51132df75e112ac751d97`  
		Last Modified: Sat, 09 Sep 2017 03:28:55 GMT  
		Size: 3.1 KB (3109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3b059729c7d80a8d78c17295b29dfdc376bfdf5c9a3ec402f4dae94463ddc6`  
		Last Modified: Sat, 09 Sep 2017 03:28:52 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dbf47a706db09795de4c0d2bbb38eb31c46ea94bbb0c3cb7ece579fa3bb3028`  
		Last Modified: Mon, 18 Sep 2017 17:01:43 GMT  
		Size: 6.9 MB (6908755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3e8cc4d107fb4fb62c8d405800b4b745699e44cfd323099fa0f68594a50cb1`  
		Last Modified: Mon, 18 Sep 2017 17:01:32 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22151b49c71a3da76c30d935ca589187b383163f69d969a79a83a58d3e9648b8`  
		Last Modified: Mon, 18 Sep 2017 17:01:31 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3551444d064d5bf110b204563deebf11eaa148ed377860326ef28982a69d2c12`  
		Last Modified: Mon, 18 Sep 2017 17:01:32 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecadf3874f2d921962a8fbe53304723230d4dfc16b94e77c3592208d618f0c3`  
		Last Modified: Mon, 18 Sep 2017 17:01:33 GMT  
		Size: 4.1 KB (4069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ebee06fcd8fe0371560d6e2899ed62cbc6c31e11f32a4ec03380d49b23cf91`  
		Last Modified: Mon, 18 Sep 2017 17:01:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:700225af1354204cb0b0e42e74b7d02ecf1f375c3091a27a00d556ae1a11fc44
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57282715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b61da1f95b561c4a1b5be81093766db5dec0f85a5e2fa5479829c166efc95897`
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
# Sat, 09 Sep 2017 03:02:00 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 09 Sep 2017 03:02:03 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Wed, 13 Sep 2017 13:52:28 GMT
ENV RABBITMQ_VERSION=3.6.12
# Wed, 13 Sep 2017 13:52:28 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Wed, 13 Sep 2017 13:52:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 13:52:52 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 13:52:52 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 13 Sep 2017 13:52:54 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 13 Sep 2017 13:52:55 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 13 Sep 2017 13:52:56 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 13 Sep 2017 13:52:58 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 13 Sep 2017 13:52:59 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Wed, 13 Sep 2017 13:53:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 13:53:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 13:53:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 13 Sep 2017 13:53:03 GMT
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
	-	`sha256:d7f688e1fcfb13b6ef55b3d78c5a8c535da75e4d0e96b6dfc1b4a518236ab265`  
		Last Modified: Sat, 09 Sep 2017 03:03:35 GMT  
		Size: 3.1 KB (3108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce6f264e2329a3a73c1cde7d673337f22b1d2a4bba78420b00c4b027e46bf4a3`  
		Last Modified: Sat, 09 Sep 2017 03:03:35 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5437e50a67a96dfdd5da54d60ac406445d373646a0458d91ae8587251749c7`  
		Last Modified: Wed, 13 Sep 2017 13:53:33 GMT  
		Size: 6.9 MB (6893854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06d90622faf0776523cf3ae8d11b1bf947d76d87dd9cda0a66e44048682edc42`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773dcf2ab2cb3dd6e8b4b7183a2640d559a4fd62ef93deaafe57d697fd4ddb83`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c4e59c45634518523870406a2900804b3b75060802c709ca0002f75d95f7c6`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84656bbd98cb7143e477be6ee2c0c1b8b6d3d7608336160c0c1b13adeaab9243`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f93132fcbd3ba6cb9bef9f31caa086a30ed92428fccd2f7e615b0266a9a313`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; 386

```console
$ docker pull rabbitmq@sha256:ee062ac99b2aa94e15f0b6f301249e941ed27c452478474b44b05abec7fcc3d9
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63902177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc629fd8de327408fb1853a9be822ee7d7b579d55810e54e45113deb18ebcff`
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
# Fri, 08 Sep 2017 17:19:07 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 17:19:07 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Wed, 13 Sep 2017 10:45:24 GMT
ENV RABBITMQ_VERSION=3.6.12
# Wed, 13 Sep 2017 10:45:25 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Wed, 13 Sep 2017 10:45:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 10:45:34 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 10:45:34 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 13 Sep 2017 10:45:35 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 13 Sep 2017 10:45:35 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 13 Sep 2017 10:45:36 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 13 Sep 2017 10:45:37 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 13 Sep 2017 10:45:37 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Wed, 13 Sep 2017 10:45:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 10:45:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 10:45:38 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 13 Sep 2017 10:45:38 GMT
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
	-	`sha256:18234d7343e5f45c79ad0cda4e91e7d0aaa88cc2cd6d1014ffcc3671ac5da2e5`  
		Last Modified: Fri, 08 Sep 2017 17:19:34 GMT  
		Size: 3.1 KB (3107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51469fe3c10415438b313e5bf8d55d7bea711b3bd5a6292c66b323749ebce6f`  
		Last Modified: Fri, 08 Sep 2017 17:19:34 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d3012dae721ed47b9678e21cd17173d8cf6ccf6ffef9b539cf07b7e0fb54c6`  
		Last Modified: Wed, 13 Sep 2017 10:45:55 GMT  
		Size: 7.2 MB (7207960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5358d69051581282822e83d0b96add9148a76373e96b0254feb4351add18662`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f318b61716e856418a641d2d86e5b1228c173934795b1d3882e16ec0bc2010`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7828be97d14b65a2de09a961a56d6910801b8f0f54b6386a6fbeaca6440de52b`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959b63fbd84be3ac044676eff69aef6395de22c35695ef51f9454417ebca9984`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 4.1 KB (4069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4151f37a98eaa87d786d1e7996bf98257b06084ad1660c2c82ffcb85c927703`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:38288554d29bd933b54b68ba0c77175e22409cadfc4753d8725f6da45d64eb3b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60387002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e83aef99b6dfec1575b95b138e018baaf8fdec22dd1e327c6c9f84328fc385e3`
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
# Tue, 12 Sep 2017 22:54:44 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Sep 2017 22:54:49 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 12 Sep 2017 22:54:50 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 12 Sep 2017 22:54:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 12 Sep 2017 22:55:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 22:55:32 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 22:55:33 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 12 Sep 2017 22:55:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 12 Sep 2017 22:55:40 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 12 Sep 2017 22:55:45 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 12 Sep 2017 22:55:50 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 12 Sep 2017 22:55:52 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Tue, 12 Sep 2017 22:55:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Sep 2017 22:55:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 22:56:01 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 12 Sep 2017 22:56:03 GMT
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
	-	`sha256:33136a5f20115fe62bbd8aa72bb0980086cdbfed5633a2d913dadd0e9a4ecd84`  
		Last Modified: Tue, 12 Sep 2017 22:56:35 GMT  
		Size: 3.1 KB (3110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0664e44de3406582d405b5cf8c2d06976d15a6762ff395e85f610bcca0da7c67`  
		Last Modified: Tue, 12 Sep 2017 22:56:34 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e61969058bd506abbb0699def6df8b21f356bc5217b88069ed711afe4722d5`  
		Last Modified: Tue, 12 Sep 2017 22:56:36 GMT  
		Size: 6.9 MB (6852811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81a292f3132f54034920f1d038a9a7cbd371409ad96c2bc079de52a6953796b`  
		Last Modified: Tue, 12 Sep 2017 22:56:28 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee14d95f5afd1e094e9558286aeda716883ec628695b1a26a5ce4feea0e2aadc`  
		Last Modified: Tue, 12 Sep 2017 22:56:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59159b7fc3148e25123af34c7b5b70bcaab4dcd31a77f3785da243eab70cc93c`  
		Last Modified: Tue, 12 Sep 2017 22:56:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fb80373224b00c85c3a219c4ecd194e6942fc9a2f59e897547c9121213819d`  
		Last Modified: Tue, 12 Sep 2017 22:56:29 GMT  
		Size: 4.1 KB (4070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a8f525dec54ab225c73be7c0cce2756fd8bf3024cda90316fcbe4218357aea`  
		Last Modified: Tue, 12 Sep 2017 22:56:28 GMT  
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
$ docker pull rabbitmq@sha256:d78f6fac87172ad153cb191fe7b31891d717f58175dd5ce72032947d5d472fd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:3.6.12` - linux; amd64

```console
$ docker pull rabbitmq@sha256:6277868ba43379e4715eafa6bfa2f754fbc7b78ce58da6ab54415bd09ec0be6a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62850828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b961a046021b19157f9ab3ae37773973047bfc7ef38ec0c083f3987b3fa3a8dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:45 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Thu, 07 Sep 2017 23:07:45 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 23:27:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:27:42 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Sep 2017 23:27:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Sep 2017 23:27:55 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Sep 2017 23:28:13 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:28:13 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Sep 2017 23:28:24 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Sep 2017 23:28:24 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 12 Sep 2017 23:28:25 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 12 Sep 2017 23:28:25 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 12 Sep 2017 23:28:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:28:30 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:28:30 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 12 Sep 2017 23:28:31 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 12 Sep 2017 23:28:31 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 12 Sep 2017 23:28:32 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 12 Sep 2017 23:28:32 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 12 Sep 2017 23:28:33 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:28:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Sep 2017 23:28:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 23:28:34 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 12 Sep 2017 23:28:34 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aadde3410cb49cfd33138502617df98cf49a63776ac6b2496c12bf493d2c1acb`  
		Last Modified: Tue, 12 Sep 2017 23:29:22 GMT  
		Size: 4.5 MB (4499368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e495394892123223f50e3ef9706a2390afdfbdeb1da6d9bc84ef87acc74261`  
		Last Modified: Tue, 12 Sep 2017 23:29:20 GMT  
		Size: 4.1 KB (4070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c862b9153cbda635b775785c30620e5b75da5aa1ca13c92c5e9f66cdcc8531`  
		Last Modified: Tue, 12 Sep 2017 23:29:19 GMT  
		Size: 952.0 KB (952003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f2714343f36f92fb827a2214dea210dc8b31cc94c7e2e047bca398f2095383`  
		Last Modified: Tue, 12 Sep 2017 23:29:26 GMT  
		Size: 27.7 MB (27703836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2dcfdbb20df1075f84544e4692525e0ca74b38e914bdae4c1d446c9d552e4fa`  
		Last Modified: Tue, 12 Sep 2017 23:29:18 GMT  
		Size: 3.1 KB (3109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f01417baa32b9822ca9c5eaec8fe57a1ddb6644df7f1841915d0786d2cfeb06`  
		Last Modified: Tue, 12 Sep 2017 23:29:19 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da934532e234d244acbfb3d9f2ffd184707823b51be798f695de12e7537d4915`  
		Last Modified: Tue, 12 Sep 2017 23:29:19 GMT  
		Size: 7.2 MB (7193446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c3341079a1a6a5ff9503bb1d58a7f3810da7b849c234897b228998bb04820d`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425d840967240d00657711fae33d25c6e7486882cab8322bcee6607b392ca74d`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234f92ba8be71e2eae5027a740144f47e415b5719385b8b5003c26a4df7f1133`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c082fdf870ea036041c78668055c568dc4984416c503f7cc506ecd4daf52cc5a`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 4.1 KB (4067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91b7abe0b74e549a2215539981db8dfeb21122e1b00dbb3dc5688cb3eee3a866`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.12` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:2720f336d006976fd6c4e2f0a3fabfc3fe88fbeef20c5e3eec924fc2ed042abd
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.4 MB (58429373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87b7fae2d4dec52b0c8972fc3e6373e30ee3d7185ca166fe4bd07314f8dd337b`
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
# Sat, 09 Sep 2017 03:25:15 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 09 Sep 2017 03:25:17 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Mon, 18 Sep 2017 16:57:54 GMT
ENV RABBITMQ_VERSION=3.6.12
# Mon, 18 Sep 2017 16:57:55 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Mon, 18 Sep 2017 17:00:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 17:00:33 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 18 Sep 2017 17:00:34 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 18 Sep 2017 17:00:36 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 18 Sep 2017 17:00:37 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 18 Sep 2017 17:00:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 18 Sep 2017 17:00:41 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Mon, 18 Sep 2017 17:00:42 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Mon, 18 Sep 2017 17:00:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 18 Sep 2017 17:00:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 18 Sep 2017 17:00:47 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 18 Sep 2017 17:00:48 GMT
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
	-	`sha256:edbb6656d01868a89adb3c8cb754d03a967a3ef90ba51132df75e112ac751d97`  
		Last Modified: Sat, 09 Sep 2017 03:28:55 GMT  
		Size: 3.1 KB (3109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3b059729c7d80a8d78c17295b29dfdc376bfdf5c9a3ec402f4dae94463ddc6`  
		Last Modified: Sat, 09 Sep 2017 03:28:52 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dbf47a706db09795de4c0d2bbb38eb31c46ea94bbb0c3cb7ece579fa3bb3028`  
		Last Modified: Mon, 18 Sep 2017 17:01:43 GMT  
		Size: 6.9 MB (6908755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3e8cc4d107fb4fb62c8d405800b4b745699e44cfd323099fa0f68594a50cb1`  
		Last Modified: Mon, 18 Sep 2017 17:01:32 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22151b49c71a3da76c30d935ca589187b383163f69d969a79a83a58d3e9648b8`  
		Last Modified: Mon, 18 Sep 2017 17:01:31 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3551444d064d5bf110b204563deebf11eaa148ed377860326ef28982a69d2c12`  
		Last Modified: Mon, 18 Sep 2017 17:01:32 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecadf3874f2d921962a8fbe53304723230d4dfc16b94e77c3592208d618f0c3`  
		Last Modified: Mon, 18 Sep 2017 17:01:33 GMT  
		Size: 4.1 KB (4069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ebee06fcd8fe0371560d6e2899ed62cbc6c31e11f32a4ec03380d49b23cf91`  
		Last Modified: Mon, 18 Sep 2017 17:01:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.12` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:700225af1354204cb0b0e42e74b7d02ecf1f375c3091a27a00d556ae1a11fc44
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57282715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b61da1f95b561c4a1b5be81093766db5dec0f85a5e2fa5479829c166efc95897`
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
# Sat, 09 Sep 2017 03:02:00 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 09 Sep 2017 03:02:03 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Wed, 13 Sep 2017 13:52:28 GMT
ENV RABBITMQ_VERSION=3.6.12
# Wed, 13 Sep 2017 13:52:28 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Wed, 13 Sep 2017 13:52:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 13:52:52 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 13:52:52 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 13 Sep 2017 13:52:54 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 13 Sep 2017 13:52:55 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 13 Sep 2017 13:52:56 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 13 Sep 2017 13:52:58 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 13 Sep 2017 13:52:59 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Wed, 13 Sep 2017 13:53:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 13:53:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 13:53:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 13 Sep 2017 13:53:03 GMT
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
	-	`sha256:d7f688e1fcfb13b6ef55b3d78c5a8c535da75e4d0e96b6dfc1b4a518236ab265`  
		Last Modified: Sat, 09 Sep 2017 03:03:35 GMT  
		Size: 3.1 KB (3108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce6f264e2329a3a73c1cde7d673337f22b1d2a4bba78420b00c4b027e46bf4a3`  
		Last Modified: Sat, 09 Sep 2017 03:03:35 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5437e50a67a96dfdd5da54d60ac406445d373646a0458d91ae8587251749c7`  
		Last Modified: Wed, 13 Sep 2017 13:53:33 GMT  
		Size: 6.9 MB (6893854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06d90622faf0776523cf3ae8d11b1bf947d76d87dd9cda0a66e44048682edc42`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773dcf2ab2cb3dd6e8b4b7183a2640d559a4fd62ef93deaafe57d697fd4ddb83`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c4e59c45634518523870406a2900804b3b75060802c709ca0002f75d95f7c6`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84656bbd98cb7143e477be6ee2c0c1b8b6d3d7608336160c0c1b13adeaab9243`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f93132fcbd3ba6cb9bef9f31caa086a30ed92428fccd2f7e615b0266a9a313`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.12` - linux; 386

```console
$ docker pull rabbitmq@sha256:ee062ac99b2aa94e15f0b6f301249e941ed27c452478474b44b05abec7fcc3d9
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63902177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc629fd8de327408fb1853a9be822ee7d7b579d55810e54e45113deb18ebcff`
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
# Fri, 08 Sep 2017 17:19:07 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 17:19:07 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Wed, 13 Sep 2017 10:45:24 GMT
ENV RABBITMQ_VERSION=3.6.12
# Wed, 13 Sep 2017 10:45:25 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Wed, 13 Sep 2017 10:45:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 10:45:34 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 10:45:34 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 13 Sep 2017 10:45:35 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 13 Sep 2017 10:45:35 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 13 Sep 2017 10:45:36 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 13 Sep 2017 10:45:37 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 13 Sep 2017 10:45:37 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Wed, 13 Sep 2017 10:45:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 10:45:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 10:45:38 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 13 Sep 2017 10:45:38 GMT
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
	-	`sha256:18234d7343e5f45c79ad0cda4e91e7d0aaa88cc2cd6d1014ffcc3671ac5da2e5`  
		Last Modified: Fri, 08 Sep 2017 17:19:34 GMT  
		Size: 3.1 KB (3107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51469fe3c10415438b313e5bf8d55d7bea711b3bd5a6292c66b323749ebce6f`  
		Last Modified: Fri, 08 Sep 2017 17:19:34 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d3012dae721ed47b9678e21cd17173d8cf6ccf6ffef9b539cf07b7e0fb54c6`  
		Last Modified: Wed, 13 Sep 2017 10:45:55 GMT  
		Size: 7.2 MB (7207960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5358d69051581282822e83d0b96add9148a76373e96b0254feb4351add18662`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f318b61716e856418a641d2d86e5b1228c173934795b1d3882e16ec0bc2010`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7828be97d14b65a2de09a961a56d6910801b8f0f54b6386a6fbeaca6440de52b`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959b63fbd84be3ac044676eff69aef6395de22c35695ef51f9454417ebca9984`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 4.1 KB (4069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4151f37a98eaa87d786d1e7996bf98257b06084ad1660c2c82ffcb85c927703`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.12` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:38288554d29bd933b54b68ba0c77175e22409cadfc4753d8725f6da45d64eb3b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60387002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e83aef99b6dfec1575b95b138e018baaf8fdec22dd1e327c6c9f84328fc385e3`
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
# Tue, 12 Sep 2017 22:54:44 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Sep 2017 22:54:49 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 12 Sep 2017 22:54:50 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 12 Sep 2017 22:54:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 12 Sep 2017 22:55:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 22:55:32 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 22:55:33 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 12 Sep 2017 22:55:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 12 Sep 2017 22:55:40 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 12 Sep 2017 22:55:45 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 12 Sep 2017 22:55:50 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 12 Sep 2017 22:55:52 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Tue, 12 Sep 2017 22:55:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Sep 2017 22:55:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 22:56:01 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 12 Sep 2017 22:56:03 GMT
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
	-	`sha256:33136a5f20115fe62bbd8aa72bb0980086cdbfed5633a2d913dadd0e9a4ecd84`  
		Last Modified: Tue, 12 Sep 2017 22:56:35 GMT  
		Size: 3.1 KB (3110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0664e44de3406582d405b5cf8c2d06976d15a6762ff395e85f610bcca0da7c67`  
		Last Modified: Tue, 12 Sep 2017 22:56:34 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e61969058bd506abbb0699def6df8b21f356bc5217b88069ed711afe4722d5`  
		Last Modified: Tue, 12 Sep 2017 22:56:36 GMT  
		Size: 6.9 MB (6852811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81a292f3132f54034920f1d038a9a7cbd371409ad96c2bc079de52a6953796b`  
		Last Modified: Tue, 12 Sep 2017 22:56:28 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee14d95f5afd1e094e9558286aeda716883ec628695b1a26a5ce4feea0e2aadc`  
		Last Modified: Tue, 12 Sep 2017 22:56:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59159b7fc3148e25123af34c7b5b70bcaab4dcd31a77f3785da243eab70cc93c`  
		Last Modified: Tue, 12 Sep 2017 22:56:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fb80373224b00c85c3a219c4ecd194e6942fc9a2f59e897547c9121213819d`  
		Last Modified: Tue, 12 Sep 2017 22:56:29 GMT  
		Size: 4.1 KB (4070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a8f525dec54ab225c73be7c0cce2756fd8bf3024cda90316fcbe4218357aea`  
		Last Modified: Tue, 12 Sep 2017 22:56:28 GMT  
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
$ docker pull rabbitmq@sha256:07f68042a3cd4f477f7164b6cdbbc92117e7053922d69bed143b7eb5cf95e20e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.12-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:aa4853e46db04fc56ffca3153378dd177d627e37bedf70df9b5a69b2ef3e7080
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23557259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b99612ef8809e2b6d407c72f54476b3645756eb674110076190711290441ae47`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:28:37 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 12 Sep 2017 23:28:41 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 12 Sep 2017 23:28:52 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 12 Sep 2017 23:28:53 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Sep 2017 23:28:53 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 12 Sep 2017 23:28:53 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:28:53 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 12 Sep 2017 23:28:53 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 12 Sep 2017 23:29:00 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 12 Sep 2017 23:29:00 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 12 Sep 2017 23:29:01 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 12 Sep 2017 23:29:01 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 12 Sep 2017 23:29:02 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 12 Sep 2017 23:29:03 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 12 Sep 2017 23:29:03 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:29:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 23:29:03 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 12 Sep 2017 23:29:03 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d7072095206cb12dcabbb996b37f687087eb17d2f77ce634a2babe08bf2025`  
		Last Modified: Tue, 12 Sep 2017 23:29:58 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec595d626e976dc560b7fe1d61e07ba9282dc0f68f710c44ae9aeaf6f1329ad`  
		Last Modified: Tue, 12 Sep 2017 23:29:58 GMT  
		Size: 8.2 KB (8217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66623e64b7321c7ca7955f811e4e6a5665ba5d3bc579e94a31157e28c085860f`  
		Last Modified: Tue, 12 Sep 2017 23:30:00 GMT  
		Size: 16.5 MB (16540699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4463675dda0fb5e854d2b4254fdb8d5f92d1f779f891eb5eada800433eb35267`  
		Last Modified: Tue, 12 Sep 2017 23:29:56 GMT  
		Size: 5.0 MB (5012169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3aad8278fdb1d5c61213b1dfe9925e60d25242b5343245268c23a1f6dcdb213`  
		Last Modified: Tue, 12 Sep 2017 23:29:55 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb409fdaddbd6e1aa4231d81690f1aa1a02c1f5bfb936708413078ba23fd0df9`  
		Last Modified: Tue, 12 Sep 2017 23:29:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ad337d5af387bd8878072fc689a40cf5e21aba22a556324a45b2384c7fb78e`  
		Last Modified: Tue, 12 Sep 2017 23:29:55 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4caacd69d344000dde14fee3c056ece051b1e993f77b4ba64e0c38d06359728`  
		Last Modified: Tue, 12 Sep 2017 23:29:56 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.12-management`

```console
$ docker pull rabbitmq@sha256:231ec2dfda4a5e261bfa64545261f299dc3d3661674b3d53cb1f49f57b86e926
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:3.6.12-management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:8daeb75857d7e04da9854cb131fef3b0d2dfd8f1e313ae2c88da0a20cb4d36ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62851022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99f85991949f2b39c91405eae1b54e6387bf205e950db3641ff981baa7737100`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:45 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Thu, 07 Sep 2017 23:07:45 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 23:27:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:27:42 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Sep 2017 23:27:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Sep 2017 23:27:55 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Sep 2017 23:28:13 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:28:13 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Sep 2017 23:28:24 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Sep 2017 23:28:24 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 12 Sep 2017 23:28:25 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 12 Sep 2017 23:28:25 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 12 Sep 2017 23:28:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:28:30 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:28:30 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 12 Sep 2017 23:28:31 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 12 Sep 2017 23:28:31 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 12 Sep 2017 23:28:32 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 12 Sep 2017 23:28:32 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 12 Sep 2017 23:28:33 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:28:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Sep 2017 23:28:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 23:28:34 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 12 Sep 2017 23:28:34 GMT
CMD ["rabbitmq-server"]
# Tue, 12 Sep 2017 23:28:36 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 12 Sep 2017 23:28:36 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aadde3410cb49cfd33138502617df98cf49a63776ac6b2496c12bf493d2c1acb`  
		Last Modified: Tue, 12 Sep 2017 23:29:22 GMT  
		Size: 4.5 MB (4499368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e495394892123223f50e3ef9706a2390afdfbdeb1da6d9bc84ef87acc74261`  
		Last Modified: Tue, 12 Sep 2017 23:29:20 GMT  
		Size: 4.1 KB (4070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c862b9153cbda635b775785c30620e5b75da5aa1ca13c92c5e9f66cdcc8531`  
		Last Modified: Tue, 12 Sep 2017 23:29:19 GMT  
		Size: 952.0 KB (952003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f2714343f36f92fb827a2214dea210dc8b31cc94c7e2e047bca398f2095383`  
		Last Modified: Tue, 12 Sep 2017 23:29:26 GMT  
		Size: 27.7 MB (27703836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2dcfdbb20df1075f84544e4692525e0ca74b38e914bdae4c1d446c9d552e4fa`  
		Last Modified: Tue, 12 Sep 2017 23:29:18 GMT  
		Size: 3.1 KB (3109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f01417baa32b9822ca9c5eaec8fe57a1ddb6644df7f1841915d0786d2cfeb06`  
		Last Modified: Tue, 12 Sep 2017 23:29:19 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da934532e234d244acbfb3d9f2ffd184707823b51be798f695de12e7537d4915`  
		Last Modified: Tue, 12 Sep 2017 23:29:19 GMT  
		Size: 7.2 MB (7193446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c3341079a1a6a5ff9503bb1d58a7f3810da7b849c234897b228998bb04820d`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425d840967240d00657711fae33d25c6e7486882cab8322bcee6607b392ca74d`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234f92ba8be71e2eae5027a740144f47e415b5719385b8b5003c26a4df7f1133`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c082fdf870ea036041c78668055c568dc4984416c503f7cc506ecd4daf52cc5a`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 4.1 KB (4067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91b7abe0b74e549a2215539981db8dfeb21122e1b00dbb3dc5688cb3eee3a866`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c30f341efa2911f51a7823ae99fe366cf2b38b06c016d59bcc0a2ce2ff5d31`  
		Last Modified: Tue, 12 Sep 2017 23:29:41 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.12-management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:51bf5178c6e1763ee42293ebf1e056805dd6d133e63784296fc2cc2fb07bf91b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.4 MB (58429565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a5ba7f08729ce65c2c11ace5253f15f2b1b504e6312b866a2c4328006e624e4`
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
# Sat, 09 Sep 2017 03:25:15 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 09 Sep 2017 03:25:17 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Mon, 18 Sep 2017 16:57:54 GMT
ENV RABBITMQ_VERSION=3.6.12
# Mon, 18 Sep 2017 16:57:55 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Mon, 18 Sep 2017 17:00:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 17:00:33 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 18 Sep 2017 17:00:34 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 18 Sep 2017 17:00:36 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 18 Sep 2017 17:00:37 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 18 Sep 2017 17:00:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 18 Sep 2017 17:00:41 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Mon, 18 Sep 2017 17:00:42 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Mon, 18 Sep 2017 17:00:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 18 Sep 2017 17:00:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 18 Sep 2017 17:00:47 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 18 Sep 2017 17:00:48 GMT
CMD ["rabbitmq-server"]
# Mon, 18 Sep 2017 17:01:13 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 18 Sep 2017 17:01:14 GMT
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
	-	`sha256:edbb6656d01868a89adb3c8cb754d03a967a3ef90ba51132df75e112ac751d97`  
		Last Modified: Sat, 09 Sep 2017 03:28:55 GMT  
		Size: 3.1 KB (3109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3b059729c7d80a8d78c17295b29dfdc376bfdf5c9a3ec402f4dae94463ddc6`  
		Last Modified: Sat, 09 Sep 2017 03:28:52 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dbf47a706db09795de4c0d2bbb38eb31c46ea94bbb0c3cb7ece579fa3bb3028`  
		Last Modified: Mon, 18 Sep 2017 17:01:43 GMT  
		Size: 6.9 MB (6908755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3e8cc4d107fb4fb62c8d405800b4b745699e44cfd323099fa0f68594a50cb1`  
		Last Modified: Mon, 18 Sep 2017 17:01:32 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22151b49c71a3da76c30d935ca589187b383163f69d969a79a83a58d3e9648b8`  
		Last Modified: Mon, 18 Sep 2017 17:01:31 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3551444d064d5bf110b204563deebf11eaa148ed377860326ef28982a69d2c12`  
		Last Modified: Mon, 18 Sep 2017 17:01:32 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecadf3874f2d921962a8fbe53304723230d4dfc16b94e77c3592208d618f0c3`  
		Last Modified: Mon, 18 Sep 2017 17:01:33 GMT  
		Size: 4.1 KB (4069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ebee06fcd8fe0371560d6e2899ed62cbc6c31e11f32a4ec03380d49b23cf91`  
		Last Modified: Mon, 18 Sep 2017 17:01:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e21127bf75dccf742628221299cd252fb2832d4b37753a40fb461ab1650b9b0`  
		Last Modified: Mon, 18 Sep 2017 17:02:30 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.12-management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:95cbb8c66d6aab79357cf1d60b920b9740702ace120dc7edc6a4517deb2281d3
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57282909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d05359f61122a54c79d486a28e2d192853b2cbf3db51e944edabc7cb258e9eb`
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
# Sat, 09 Sep 2017 03:02:00 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 09 Sep 2017 03:02:03 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Wed, 13 Sep 2017 13:52:28 GMT
ENV RABBITMQ_VERSION=3.6.12
# Wed, 13 Sep 2017 13:52:28 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Wed, 13 Sep 2017 13:52:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 13:52:52 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 13:52:52 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 13 Sep 2017 13:52:54 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 13 Sep 2017 13:52:55 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 13 Sep 2017 13:52:56 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 13 Sep 2017 13:52:58 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 13 Sep 2017 13:52:59 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Wed, 13 Sep 2017 13:53:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 13:53:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 13:53:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 13 Sep 2017 13:53:03 GMT
CMD ["rabbitmq-server"]
# Wed, 13 Sep 2017 13:53:12 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 13 Sep 2017 13:53:13 GMT
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
	-	`sha256:d7f688e1fcfb13b6ef55b3d78c5a8c535da75e4d0e96b6dfc1b4a518236ab265`  
		Last Modified: Sat, 09 Sep 2017 03:03:35 GMT  
		Size: 3.1 KB (3108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce6f264e2329a3a73c1cde7d673337f22b1d2a4bba78420b00c4b027e46bf4a3`  
		Last Modified: Sat, 09 Sep 2017 03:03:35 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5437e50a67a96dfdd5da54d60ac406445d373646a0458d91ae8587251749c7`  
		Last Modified: Wed, 13 Sep 2017 13:53:33 GMT  
		Size: 6.9 MB (6893854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06d90622faf0776523cf3ae8d11b1bf947d76d87dd9cda0a66e44048682edc42`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773dcf2ab2cb3dd6e8b4b7183a2640d559a4fd62ef93deaafe57d697fd4ddb83`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c4e59c45634518523870406a2900804b3b75060802c709ca0002f75d95f7c6`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84656bbd98cb7143e477be6ee2c0c1b8b6d3d7608336160c0c1b13adeaab9243`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f93132fcbd3ba6cb9bef9f31caa086a30ed92428fccd2f7e615b0266a9a313`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:573ae3857455b23c48492c55d8d99f290aeeea75e9ad72395b24c1745bab0b63`  
		Last Modified: Wed, 13 Sep 2017 13:54:11 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.12-management` - linux; 386

```console
$ docker pull rabbitmq@sha256:8e997b65a1b6d1582927cf45975aa858866f347da03ac59ede22acc3611d8c8c
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63902370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d423e51e4df7feac79ceb49b426f1a723d435a39718bc4f487b37a0e0cbfccc7`
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
# Fri, 08 Sep 2017 17:19:07 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 17:19:07 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Wed, 13 Sep 2017 10:45:24 GMT
ENV RABBITMQ_VERSION=3.6.12
# Wed, 13 Sep 2017 10:45:25 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Wed, 13 Sep 2017 10:45:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 10:45:34 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 10:45:34 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 13 Sep 2017 10:45:35 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 13 Sep 2017 10:45:35 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 13 Sep 2017 10:45:36 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 13 Sep 2017 10:45:37 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 13 Sep 2017 10:45:37 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Wed, 13 Sep 2017 10:45:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 10:45:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 10:45:38 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 13 Sep 2017 10:45:38 GMT
CMD ["rabbitmq-server"]
# Wed, 13 Sep 2017 10:45:44 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 13 Sep 2017 10:45:44 GMT
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
	-	`sha256:18234d7343e5f45c79ad0cda4e91e7d0aaa88cc2cd6d1014ffcc3671ac5da2e5`  
		Last Modified: Fri, 08 Sep 2017 17:19:34 GMT  
		Size: 3.1 KB (3107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51469fe3c10415438b313e5bf8d55d7bea711b3bd5a6292c66b323749ebce6f`  
		Last Modified: Fri, 08 Sep 2017 17:19:34 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d3012dae721ed47b9678e21cd17173d8cf6ccf6ffef9b539cf07b7e0fb54c6`  
		Last Modified: Wed, 13 Sep 2017 10:45:55 GMT  
		Size: 7.2 MB (7207960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5358d69051581282822e83d0b96add9148a76373e96b0254feb4351add18662`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f318b61716e856418a641d2d86e5b1228c173934795b1d3882e16ec0bc2010`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7828be97d14b65a2de09a961a56d6910801b8f0f54b6386a6fbeaca6440de52b`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959b63fbd84be3ac044676eff69aef6395de22c35695ef51f9454417ebca9984`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 4.1 KB (4069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4151f37a98eaa87d786d1e7996bf98257b06084ad1660c2c82ffcb85c927703`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4be0ed9de2a9f24a1a8ced8d9de13daeea7e65d1903bb732a09877fc5decaf7`  
		Last Modified: Wed, 13 Sep 2017 10:46:20 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.12-management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:48866ddf8aa252434f2d2f615ca1d71d8fd1f41739a6afc97e1496112c81cb09
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60387195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:112e35fd1c5bf9cce55f206c6239fccd826f4a614c8c7a6105faff2d688dbc1e`
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
# Tue, 12 Sep 2017 22:54:44 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Sep 2017 22:54:49 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 12 Sep 2017 22:54:50 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 12 Sep 2017 22:54:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 12 Sep 2017 22:55:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 22:55:32 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 22:55:33 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 12 Sep 2017 22:55:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 12 Sep 2017 22:55:40 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 12 Sep 2017 22:55:45 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 12 Sep 2017 22:55:50 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 12 Sep 2017 22:55:52 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Tue, 12 Sep 2017 22:55:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Sep 2017 22:55:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 22:56:01 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 12 Sep 2017 22:56:03 GMT
CMD ["rabbitmq-server"]
# Tue, 12 Sep 2017 22:56:13 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 12 Sep 2017 22:56:16 GMT
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
	-	`sha256:33136a5f20115fe62bbd8aa72bb0980086cdbfed5633a2d913dadd0e9a4ecd84`  
		Last Modified: Tue, 12 Sep 2017 22:56:35 GMT  
		Size: 3.1 KB (3110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0664e44de3406582d405b5cf8c2d06976d15a6762ff395e85f610bcca0da7c67`  
		Last Modified: Tue, 12 Sep 2017 22:56:34 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e61969058bd506abbb0699def6df8b21f356bc5217b88069ed711afe4722d5`  
		Last Modified: Tue, 12 Sep 2017 22:56:36 GMT  
		Size: 6.9 MB (6852811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81a292f3132f54034920f1d038a9a7cbd371409ad96c2bc079de52a6953796b`  
		Last Modified: Tue, 12 Sep 2017 22:56:28 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee14d95f5afd1e094e9558286aeda716883ec628695b1a26a5ce4feea0e2aadc`  
		Last Modified: Tue, 12 Sep 2017 22:56:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59159b7fc3148e25123af34c7b5b70bcaab4dcd31a77f3785da243eab70cc93c`  
		Last Modified: Tue, 12 Sep 2017 22:56:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fb80373224b00c85c3a219c4ecd194e6942fc9a2f59e897547c9121213819d`  
		Last Modified: Tue, 12 Sep 2017 22:56:29 GMT  
		Size: 4.1 KB (4070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a8f525dec54ab225c73be7c0cce2756fd8bf3024cda90316fcbe4218357aea`  
		Last Modified: Tue, 12 Sep 2017 22:56:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbc2e3e8258be0b85892487a6ef603a511111270c46084eac613df7274c772e5`  
		Last Modified: Tue, 12 Sep 2017 22:57:11 GMT  
		Size: 193.0 B  
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
$ docker pull rabbitmq@sha256:6ed98420f94d8ac2ebc428ca0f2ccb9df5aab738ba1fed7a207a8eed609ecfaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.12-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:4b441a9c69e86c71447069f8b26995471ba53d238e42a60e75df754305902506
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23557450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84b68efed5e7995e7ecc49ff73442505e66cbbfe7d6b5fe70e97a7f4ecf93f7e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:28:37 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 12 Sep 2017 23:28:41 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 12 Sep 2017 23:28:52 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 12 Sep 2017 23:28:53 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Sep 2017 23:28:53 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 12 Sep 2017 23:28:53 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:28:53 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 12 Sep 2017 23:28:53 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 12 Sep 2017 23:29:00 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 12 Sep 2017 23:29:00 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 12 Sep 2017 23:29:01 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 12 Sep 2017 23:29:01 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 12 Sep 2017 23:29:02 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 12 Sep 2017 23:29:03 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 12 Sep 2017 23:29:03 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:29:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 23:29:03 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 12 Sep 2017 23:29:03 GMT
CMD ["rabbitmq-server"]
# Tue, 12 Sep 2017 23:29:05 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 12 Sep 2017 23:29:05 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d7072095206cb12dcabbb996b37f687087eb17d2f77ce634a2babe08bf2025`  
		Last Modified: Tue, 12 Sep 2017 23:29:58 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec595d626e976dc560b7fe1d61e07ba9282dc0f68f710c44ae9aeaf6f1329ad`  
		Last Modified: Tue, 12 Sep 2017 23:29:58 GMT  
		Size: 8.2 KB (8217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66623e64b7321c7ca7955f811e4e6a5665ba5d3bc579e94a31157e28c085860f`  
		Last Modified: Tue, 12 Sep 2017 23:30:00 GMT  
		Size: 16.5 MB (16540699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4463675dda0fb5e854d2b4254fdb8d5f92d1f779f891eb5eada800433eb35267`  
		Last Modified: Tue, 12 Sep 2017 23:29:56 GMT  
		Size: 5.0 MB (5012169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3aad8278fdb1d5c61213b1dfe9925e60d25242b5343245268c23a1f6dcdb213`  
		Last Modified: Tue, 12 Sep 2017 23:29:55 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb409fdaddbd6e1aa4231d81690f1aa1a02c1f5bfb936708413078ba23fd0df9`  
		Last Modified: Tue, 12 Sep 2017 23:29:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ad337d5af387bd8878072fc689a40cf5e21aba22a556324a45b2384c7fb78e`  
		Last Modified: Tue, 12 Sep 2017 23:29:55 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4caacd69d344000dde14fee3c056ece051b1e993f77b4ba64e0c38d06359728`  
		Last Modified: Tue, 12 Sep 2017 23:29:56 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6270997d7fabb561c77227c169fcf9297e600ba88eda66747cda94199a7e2cc5`  
		Last Modified: Tue, 12 Sep 2017 23:30:14 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-alpine`

```console
$ docker pull rabbitmq@sha256:07f68042a3cd4f477f7164b6cdbbc92117e7053922d69bed143b7eb5cf95e20e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:aa4853e46db04fc56ffca3153378dd177d627e37bedf70df9b5a69b2ef3e7080
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23557259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b99612ef8809e2b6d407c72f54476b3645756eb674110076190711290441ae47`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:28:37 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 12 Sep 2017 23:28:41 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 12 Sep 2017 23:28:52 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 12 Sep 2017 23:28:53 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Sep 2017 23:28:53 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 12 Sep 2017 23:28:53 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:28:53 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 12 Sep 2017 23:28:53 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 12 Sep 2017 23:29:00 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 12 Sep 2017 23:29:00 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 12 Sep 2017 23:29:01 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 12 Sep 2017 23:29:01 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 12 Sep 2017 23:29:02 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 12 Sep 2017 23:29:03 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 12 Sep 2017 23:29:03 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:29:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 23:29:03 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 12 Sep 2017 23:29:03 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d7072095206cb12dcabbb996b37f687087eb17d2f77ce634a2babe08bf2025`  
		Last Modified: Tue, 12 Sep 2017 23:29:58 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec595d626e976dc560b7fe1d61e07ba9282dc0f68f710c44ae9aeaf6f1329ad`  
		Last Modified: Tue, 12 Sep 2017 23:29:58 GMT  
		Size: 8.2 KB (8217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66623e64b7321c7ca7955f811e4e6a5665ba5d3bc579e94a31157e28c085860f`  
		Last Modified: Tue, 12 Sep 2017 23:30:00 GMT  
		Size: 16.5 MB (16540699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4463675dda0fb5e854d2b4254fdb8d5f92d1f779f891eb5eada800433eb35267`  
		Last Modified: Tue, 12 Sep 2017 23:29:56 GMT  
		Size: 5.0 MB (5012169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3aad8278fdb1d5c61213b1dfe9925e60d25242b5343245268c23a1f6dcdb213`  
		Last Modified: Tue, 12 Sep 2017 23:29:55 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb409fdaddbd6e1aa4231d81690f1aa1a02c1f5bfb936708413078ba23fd0df9`  
		Last Modified: Tue, 12 Sep 2017 23:29:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ad337d5af387bd8878072fc689a40cf5e21aba22a556324a45b2384c7fb78e`  
		Last Modified: Tue, 12 Sep 2017 23:29:55 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4caacd69d344000dde14fee3c056ece051b1e993f77b4ba64e0c38d06359728`  
		Last Modified: Tue, 12 Sep 2017 23:29:56 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management`

```console
$ docker pull rabbitmq@sha256:231ec2dfda4a5e261bfa64545261f299dc3d3661674b3d53cb1f49f57b86e926
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:3.6-management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:8daeb75857d7e04da9854cb131fef3b0d2dfd8f1e313ae2c88da0a20cb4d36ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62851022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99f85991949f2b39c91405eae1b54e6387bf205e950db3641ff981baa7737100`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:45 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Thu, 07 Sep 2017 23:07:45 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 23:27:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:27:42 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Sep 2017 23:27:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Sep 2017 23:27:55 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Sep 2017 23:28:13 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:28:13 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Sep 2017 23:28:24 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Sep 2017 23:28:24 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 12 Sep 2017 23:28:25 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 12 Sep 2017 23:28:25 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 12 Sep 2017 23:28:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:28:30 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:28:30 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 12 Sep 2017 23:28:31 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 12 Sep 2017 23:28:31 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 12 Sep 2017 23:28:32 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 12 Sep 2017 23:28:32 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 12 Sep 2017 23:28:33 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:28:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Sep 2017 23:28:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 23:28:34 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 12 Sep 2017 23:28:34 GMT
CMD ["rabbitmq-server"]
# Tue, 12 Sep 2017 23:28:36 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 12 Sep 2017 23:28:36 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aadde3410cb49cfd33138502617df98cf49a63776ac6b2496c12bf493d2c1acb`  
		Last Modified: Tue, 12 Sep 2017 23:29:22 GMT  
		Size: 4.5 MB (4499368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e495394892123223f50e3ef9706a2390afdfbdeb1da6d9bc84ef87acc74261`  
		Last Modified: Tue, 12 Sep 2017 23:29:20 GMT  
		Size: 4.1 KB (4070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c862b9153cbda635b775785c30620e5b75da5aa1ca13c92c5e9f66cdcc8531`  
		Last Modified: Tue, 12 Sep 2017 23:29:19 GMT  
		Size: 952.0 KB (952003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f2714343f36f92fb827a2214dea210dc8b31cc94c7e2e047bca398f2095383`  
		Last Modified: Tue, 12 Sep 2017 23:29:26 GMT  
		Size: 27.7 MB (27703836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2dcfdbb20df1075f84544e4692525e0ca74b38e914bdae4c1d446c9d552e4fa`  
		Last Modified: Tue, 12 Sep 2017 23:29:18 GMT  
		Size: 3.1 KB (3109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f01417baa32b9822ca9c5eaec8fe57a1ddb6644df7f1841915d0786d2cfeb06`  
		Last Modified: Tue, 12 Sep 2017 23:29:19 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da934532e234d244acbfb3d9f2ffd184707823b51be798f695de12e7537d4915`  
		Last Modified: Tue, 12 Sep 2017 23:29:19 GMT  
		Size: 7.2 MB (7193446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c3341079a1a6a5ff9503bb1d58a7f3810da7b849c234897b228998bb04820d`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425d840967240d00657711fae33d25c6e7486882cab8322bcee6607b392ca74d`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234f92ba8be71e2eae5027a740144f47e415b5719385b8b5003c26a4df7f1133`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c082fdf870ea036041c78668055c568dc4984416c503f7cc506ecd4daf52cc5a`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 4.1 KB (4067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91b7abe0b74e549a2215539981db8dfeb21122e1b00dbb3dc5688cb3eee3a866`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c30f341efa2911f51a7823ae99fe366cf2b38b06c016d59bcc0a2ce2ff5d31`  
		Last Modified: Tue, 12 Sep 2017 23:29:41 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:51bf5178c6e1763ee42293ebf1e056805dd6d133e63784296fc2cc2fb07bf91b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.4 MB (58429565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a5ba7f08729ce65c2c11ace5253f15f2b1b504e6312b866a2c4328006e624e4`
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
# Sat, 09 Sep 2017 03:25:15 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 09 Sep 2017 03:25:17 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Mon, 18 Sep 2017 16:57:54 GMT
ENV RABBITMQ_VERSION=3.6.12
# Mon, 18 Sep 2017 16:57:55 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Mon, 18 Sep 2017 17:00:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 17:00:33 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 18 Sep 2017 17:00:34 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 18 Sep 2017 17:00:36 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 18 Sep 2017 17:00:37 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 18 Sep 2017 17:00:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 18 Sep 2017 17:00:41 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Mon, 18 Sep 2017 17:00:42 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Mon, 18 Sep 2017 17:00:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 18 Sep 2017 17:00:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 18 Sep 2017 17:00:47 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 18 Sep 2017 17:00:48 GMT
CMD ["rabbitmq-server"]
# Mon, 18 Sep 2017 17:01:13 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 18 Sep 2017 17:01:14 GMT
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
	-	`sha256:edbb6656d01868a89adb3c8cb754d03a967a3ef90ba51132df75e112ac751d97`  
		Last Modified: Sat, 09 Sep 2017 03:28:55 GMT  
		Size: 3.1 KB (3109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3b059729c7d80a8d78c17295b29dfdc376bfdf5c9a3ec402f4dae94463ddc6`  
		Last Modified: Sat, 09 Sep 2017 03:28:52 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dbf47a706db09795de4c0d2bbb38eb31c46ea94bbb0c3cb7ece579fa3bb3028`  
		Last Modified: Mon, 18 Sep 2017 17:01:43 GMT  
		Size: 6.9 MB (6908755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3e8cc4d107fb4fb62c8d405800b4b745699e44cfd323099fa0f68594a50cb1`  
		Last Modified: Mon, 18 Sep 2017 17:01:32 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22151b49c71a3da76c30d935ca589187b383163f69d969a79a83a58d3e9648b8`  
		Last Modified: Mon, 18 Sep 2017 17:01:31 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3551444d064d5bf110b204563deebf11eaa148ed377860326ef28982a69d2c12`  
		Last Modified: Mon, 18 Sep 2017 17:01:32 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecadf3874f2d921962a8fbe53304723230d4dfc16b94e77c3592208d618f0c3`  
		Last Modified: Mon, 18 Sep 2017 17:01:33 GMT  
		Size: 4.1 KB (4069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ebee06fcd8fe0371560d6e2899ed62cbc6c31e11f32a4ec03380d49b23cf91`  
		Last Modified: Mon, 18 Sep 2017 17:01:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e21127bf75dccf742628221299cd252fb2832d4b37753a40fb461ab1650b9b0`  
		Last Modified: Mon, 18 Sep 2017 17:02:30 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:95cbb8c66d6aab79357cf1d60b920b9740702ace120dc7edc6a4517deb2281d3
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57282909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d05359f61122a54c79d486a28e2d192853b2cbf3db51e944edabc7cb258e9eb`
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
# Sat, 09 Sep 2017 03:02:00 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 09 Sep 2017 03:02:03 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Wed, 13 Sep 2017 13:52:28 GMT
ENV RABBITMQ_VERSION=3.6.12
# Wed, 13 Sep 2017 13:52:28 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Wed, 13 Sep 2017 13:52:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 13:52:52 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 13:52:52 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 13 Sep 2017 13:52:54 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 13 Sep 2017 13:52:55 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 13 Sep 2017 13:52:56 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 13 Sep 2017 13:52:58 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 13 Sep 2017 13:52:59 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Wed, 13 Sep 2017 13:53:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 13:53:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 13:53:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 13 Sep 2017 13:53:03 GMT
CMD ["rabbitmq-server"]
# Wed, 13 Sep 2017 13:53:12 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 13 Sep 2017 13:53:13 GMT
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
	-	`sha256:d7f688e1fcfb13b6ef55b3d78c5a8c535da75e4d0e96b6dfc1b4a518236ab265`  
		Last Modified: Sat, 09 Sep 2017 03:03:35 GMT  
		Size: 3.1 KB (3108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce6f264e2329a3a73c1cde7d673337f22b1d2a4bba78420b00c4b027e46bf4a3`  
		Last Modified: Sat, 09 Sep 2017 03:03:35 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5437e50a67a96dfdd5da54d60ac406445d373646a0458d91ae8587251749c7`  
		Last Modified: Wed, 13 Sep 2017 13:53:33 GMT  
		Size: 6.9 MB (6893854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06d90622faf0776523cf3ae8d11b1bf947d76d87dd9cda0a66e44048682edc42`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773dcf2ab2cb3dd6e8b4b7183a2640d559a4fd62ef93deaafe57d697fd4ddb83`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c4e59c45634518523870406a2900804b3b75060802c709ca0002f75d95f7c6`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84656bbd98cb7143e477be6ee2c0c1b8b6d3d7608336160c0c1b13adeaab9243`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f93132fcbd3ba6cb9bef9f31caa086a30ed92428fccd2f7e615b0266a9a313`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:573ae3857455b23c48492c55d8d99f290aeeea75e9ad72395b24c1745bab0b63`  
		Last Modified: Wed, 13 Sep 2017 13:54:11 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; 386

```console
$ docker pull rabbitmq@sha256:8e997b65a1b6d1582927cf45975aa858866f347da03ac59ede22acc3611d8c8c
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63902370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d423e51e4df7feac79ceb49b426f1a723d435a39718bc4f487b37a0e0cbfccc7`
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
# Fri, 08 Sep 2017 17:19:07 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 17:19:07 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Wed, 13 Sep 2017 10:45:24 GMT
ENV RABBITMQ_VERSION=3.6.12
# Wed, 13 Sep 2017 10:45:25 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Wed, 13 Sep 2017 10:45:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 10:45:34 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 10:45:34 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 13 Sep 2017 10:45:35 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 13 Sep 2017 10:45:35 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 13 Sep 2017 10:45:36 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 13 Sep 2017 10:45:37 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 13 Sep 2017 10:45:37 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Wed, 13 Sep 2017 10:45:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 10:45:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 10:45:38 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 13 Sep 2017 10:45:38 GMT
CMD ["rabbitmq-server"]
# Wed, 13 Sep 2017 10:45:44 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 13 Sep 2017 10:45:44 GMT
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
	-	`sha256:18234d7343e5f45c79ad0cda4e91e7d0aaa88cc2cd6d1014ffcc3671ac5da2e5`  
		Last Modified: Fri, 08 Sep 2017 17:19:34 GMT  
		Size: 3.1 KB (3107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51469fe3c10415438b313e5bf8d55d7bea711b3bd5a6292c66b323749ebce6f`  
		Last Modified: Fri, 08 Sep 2017 17:19:34 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d3012dae721ed47b9678e21cd17173d8cf6ccf6ffef9b539cf07b7e0fb54c6`  
		Last Modified: Wed, 13 Sep 2017 10:45:55 GMT  
		Size: 7.2 MB (7207960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5358d69051581282822e83d0b96add9148a76373e96b0254feb4351add18662`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f318b61716e856418a641d2d86e5b1228c173934795b1d3882e16ec0bc2010`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7828be97d14b65a2de09a961a56d6910801b8f0f54b6386a6fbeaca6440de52b`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959b63fbd84be3ac044676eff69aef6395de22c35695ef51f9454417ebca9984`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 4.1 KB (4069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4151f37a98eaa87d786d1e7996bf98257b06084ad1660c2c82ffcb85c927703`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4be0ed9de2a9f24a1a8ced8d9de13daeea7e65d1903bb732a09877fc5decaf7`  
		Last Modified: Wed, 13 Sep 2017 10:46:20 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:48866ddf8aa252434f2d2f615ca1d71d8fd1f41739a6afc97e1496112c81cb09
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60387195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:112e35fd1c5bf9cce55f206c6239fccd826f4a614c8c7a6105faff2d688dbc1e`
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
# Tue, 12 Sep 2017 22:54:44 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Sep 2017 22:54:49 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 12 Sep 2017 22:54:50 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 12 Sep 2017 22:54:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 12 Sep 2017 22:55:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 22:55:32 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 22:55:33 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 12 Sep 2017 22:55:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 12 Sep 2017 22:55:40 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 12 Sep 2017 22:55:45 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 12 Sep 2017 22:55:50 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 12 Sep 2017 22:55:52 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Tue, 12 Sep 2017 22:55:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Sep 2017 22:55:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 22:56:01 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 12 Sep 2017 22:56:03 GMT
CMD ["rabbitmq-server"]
# Tue, 12 Sep 2017 22:56:13 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 12 Sep 2017 22:56:16 GMT
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
	-	`sha256:33136a5f20115fe62bbd8aa72bb0980086cdbfed5633a2d913dadd0e9a4ecd84`  
		Last Modified: Tue, 12 Sep 2017 22:56:35 GMT  
		Size: 3.1 KB (3110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0664e44de3406582d405b5cf8c2d06976d15a6762ff395e85f610bcca0da7c67`  
		Last Modified: Tue, 12 Sep 2017 22:56:34 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e61969058bd506abbb0699def6df8b21f356bc5217b88069ed711afe4722d5`  
		Last Modified: Tue, 12 Sep 2017 22:56:36 GMT  
		Size: 6.9 MB (6852811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81a292f3132f54034920f1d038a9a7cbd371409ad96c2bc079de52a6953796b`  
		Last Modified: Tue, 12 Sep 2017 22:56:28 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee14d95f5afd1e094e9558286aeda716883ec628695b1a26a5ce4feea0e2aadc`  
		Last Modified: Tue, 12 Sep 2017 22:56:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59159b7fc3148e25123af34c7b5b70bcaab4dcd31a77f3785da243eab70cc93c`  
		Last Modified: Tue, 12 Sep 2017 22:56:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fb80373224b00c85c3a219c4ecd194e6942fc9a2f59e897547c9121213819d`  
		Last Modified: Tue, 12 Sep 2017 22:56:29 GMT  
		Size: 4.1 KB (4070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a8f525dec54ab225c73be7c0cce2756fd8bf3024cda90316fcbe4218357aea`  
		Last Modified: Tue, 12 Sep 2017 22:56:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbc2e3e8258be0b85892487a6ef603a511111270c46084eac613df7274c772e5`  
		Last Modified: Tue, 12 Sep 2017 22:57:11 GMT  
		Size: 193.0 B  
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
$ docker pull rabbitmq@sha256:6ed98420f94d8ac2ebc428ca0f2ccb9df5aab738ba1fed7a207a8eed609ecfaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:4b441a9c69e86c71447069f8b26995471ba53d238e42a60e75df754305902506
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23557450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84b68efed5e7995e7ecc49ff73442505e66cbbfe7d6b5fe70e97a7f4ecf93f7e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:28:37 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 12 Sep 2017 23:28:41 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 12 Sep 2017 23:28:52 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 12 Sep 2017 23:28:53 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Sep 2017 23:28:53 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 12 Sep 2017 23:28:53 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:28:53 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 12 Sep 2017 23:28:53 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 12 Sep 2017 23:29:00 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 12 Sep 2017 23:29:00 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 12 Sep 2017 23:29:01 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 12 Sep 2017 23:29:01 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 12 Sep 2017 23:29:02 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 12 Sep 2017 23:29:03 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 12 Sep 2017 23:29:03 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:29:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 23:29:03 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 12 Sep 2017 23:29:03 GMT
CMD ["rabbitmq-server"]
# Tue, 12 Sep 2017 23:29:05 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 12 Sep 2017 23:29:05 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d7072095206cb12dcabbb996b37f687087eb17d2f77ce634a2babe08bf2025`  
		Last Modified: Tue, 12 Sep 2017 23:29:58 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec595d626e976dc560b7fe1d61e07ba9282dc0f68f710c44ae9aeaf6f1329ad`  
		Last Modified: Tue, 12 Sep 2017 23:29:58 GMT  
		Size: 8.2 KB (8217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66623e64b7321c7ca7955f811e4e6a5665ba5d3bc579e94a31157e28c085860f`  
		Last Modified: Tue, 12 Sep 2017 23:30:00 GMT  
		Size: 16.5 MB (16540699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4463675dda0fb5e854d2b4254fdb8d5f92d1f779f891eb5eada800433eb35267`  
		Last Modified: Tue, 12 Sep 2017 23:29:56 GMT  
		Size: 5.0 MB (5012169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3aad8278fdb1d5c61213b1dfe9925e60d25242b5343245268c23a1f6dcdb213`  
		Last Modified: Tue, 12 Sep 2017 23:29:55 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb409fdaddbd6e1aa4231d81690f1aa1a02c1f5bfb936708413078ba23fd0df9`  
		Last Modified: Tue, 12 Sep 2017 23:29:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ad337d5af387bd8878072fc689a40cf5e21aba22a556324a45b2384c7fb78e`  
		Last Modified: Tue, 12 Sep 2017 23:29:55 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4caacd69d344000dde14fee3c056ece051b1e993f77b4ba64e0c38d06359728`  
		Last Modified: Tue, 12 Sep 2017 23:29:56 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6270997d7fabb561c77227c169fcf9297e600ba88eda66747cda94199a7e2cc5`  
		Last Modified: Tue, 12 Sep 2017 23:30:14 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-alpine`

```console
$ docker pull rabbitmq@sha256:07f68042a3cd4f477f7164b6cdbbc92117e7053922d69bed143b7eb5cf95e20e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:aa4853e46db04fc56ffca3153378dd177d627e37bedf70df9b5a69b2ef3e7080
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23557259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b99612ef8809e2b6d407c72f54476b3645756eb674110076190711290441ae47`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:28:37 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 12 Sep 2017 23:28:41 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 12 Sep 2017 23:28:52 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 12 Sep 2017 23:28:53 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Sep 2017 23:28:53 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 12 Sep 2017 23:28:53 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:28:53 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 12 Sep 2017 23:28:53 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 12 Sep 2017 23:29:00 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 12 Sep 2017 23:29:00 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 12 Sep 2017 23:29:01 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 12 Sep 2017 23:29:01 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 12 Sep 2017 23:29:02 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 12 Sep 2017 23:29:03 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 12 Sep 2017 23:29:03 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:29:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 23:29:03 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 12 Sep 2017 23:29:03 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d7072095206cb12dcabbb996b37f687087eb17d2f77ce634a2babe08bf2025`  
		Last Modified: Tue, 12 Sep 2017 23:29:58 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec595d626e976dc560b7fe1d61e07ba9282dc0f68f710c44ae9aeaf6f1329ad`  
		Last Modified: Tue, 12 Sep 2017 23:29:58 GMT  
		Size: 8.2 KB (8217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66623e64b7321c7ca7955f811e4e6a5665ba5d3bc579e94a31157e28c085860f`  
		Last Modified: Tue, 12 Sep 2017 23:30:00 GMT  
		Size: 16.5 MB (16540699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4463675dda0fb5e854d2b4254fdb8d5f92d1f779f891eb5eada800433eb35267`  
		Last Modified: Tue, 12 Sep 2017 23:29:56 GMT  
		Size: 5.0 MB (5012169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3aad8278fdb1d5c61213b1dfe9925e60d25242b5343245268c23a1f6dcdb213`  
		Last Modified: Tue, 12 Sep 2017 23:29:55 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb409fdaddbd6e1aa4231d81690f1aa1a02c1f5bfb936708413078ba23fd0df9`  
		Last Modified: Tue, 12 Sep 2017 23:29:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ad337d5af387bd8878072fc689a40cf5e21aba22a556324a45b2384c7fb78e`  
		Last Modified: Tue, 12 Sep 2017 23:29:55 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4caacd69d344000dde14fee3c056ece051b1e993f77b4ba64e0c38d06359728`  
		Last Modified: Tue, 12 Sep 2017 23:29:56 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management`

```console
$ docker pull rabbitmq@sha256:231ec2dfda4a5e261bfa64545261f299dc3d3661674b3d53cb1f49f57b86e926
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:3-management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:8daeb75857d7e04da9854cb131fef3b0d2dfd8f1e313ae2c88da0a20cb4d36ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62851022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99f85991949f2b39c91405eae1b54e6387bf205e950db3641ff981baa7737100`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:45 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Thu, 07 Sep 2017 23:07:45 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 23:27:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:27:42 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Sep 2017 23:27:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Sep 2017 23:27:55 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Sep 2017 23:28:13 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:28:13 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Sep 2017 23:28:24 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Sep 2017 23:28:24 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 12 Sep 2017 23:28:25 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 12 Sep 2017 23:28:25 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 12 Sep 2017 23:28:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:28:30 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:28:30 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 12 Sep 2017 23:28:31 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 12 Sep 2017 23:28:31 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 12 Sep 2017 23:28:32 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 12 Sep 2017 23:28:32 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 12 Sep 2017 23:28:33 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:28:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Sep 2017 23:28:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 23:28:34 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 12 Sep 2017 23:28:34 GMT
CMD ["rabbitmq-server"]
# Tue, 12 Sep 2017 23:28:36 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 12 Sep 2017 23:28:36 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aadde3410cb49cfd33138502617df98cf49a63776ac6b2496c12bf493d2c1acb`  
		Last Modified: Tue, 12 Sep 2017 23:29:22 GMT  
		Size: 4.5 MB (4499368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e495394892123223f50e3ef9706a2390afdfbdeb1da6d9bc84ef87acc74261`  
		Last Modified: Tue, 12 Sep 2017 23:29:20 GMT  
		Size: 4.1 KB (4070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c862b9153cbda635b775785c30620e5b75da5aa1ca13c92c5e9f66cdcc8531`  
		Last Modified: Tue, 12 Sep 2017 23:29:19 GMT  
		Size: 952.0 KB (952003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f2714343f36f92fb827a2214dea210dc8b31cc94c7e2e047bca398f2095383`  
		Last Modified: Tue, 12 Sep 2017 23:29:26 GMT  
		Size: 27.7 MB (27703836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2dcfdbb20df1075f84544e4692525e0ca74b38e914bdae4c1d446c9d552e4fa`  
		Last Modified: Tue, 12 Sep 2017 23:29:18 GMT  
		Size: 3.1 KB (3109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f01417baa32b9822ca9c5eaec8fe57a1ddb6644df7f1841915d0786d2cfeb06`  
		Last Modified: Tue, 12 Sep 2017 23:29:19 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da934532e234d244acbfb3d9f2ffd184707823b51be798f695de12e7537d4915`  
		Last Modified: Tue, 12 Sep 2017 23:29:19 GMT  
		Size: 7.2 MB (7193446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c3341079a1a6a5ff9503bb1d58a7f3810da7b849c234897b228998bb04820d`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425d840967240d00657711fae33d25c6e7486882cab8322bcee6607b392ca74d`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234f92ba8be71e2eae5027a740144f47e415b5719385b8b5003c26a4df7f1133`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c082fdf870ea036041c78668055c568dc4984416c503f7cc506ecd4daf52cc5a`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 4.1 KB (4067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91b7abe0b74e549a2215539981db8dfeb21122e1b00dbb3dc5688cb3eee3a866`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c30f341efa2911f51a7823ae99fe366cf2b38b06c016d59bcc0a2ce2ff5d31`  
		Last Modified: Tue, 12 Sep 2017 23:29:41 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:51bf5178c6e1763ee42293ebf1e056805dd6d133e63784296fc2cc2fb07bf91b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.4 MB (58429565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a5ba7f08729ce65c2c11ace5253f15f2b1b504e6312b866a2c4328006e624e4`
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
# Sat, 09 Sep 2017 03:25:15 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 09 Sep 2017 03:25:17 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Mon, 18 Sep 2017 16:57:54 GMT
ENV RABBITMQ_VERSION=3.6.12
# Mon, 18 Sep 2017 16:57:55 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Mon, 18 Sep 2017 17:00:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 17:00:33 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 18 Sep 2017 17:00:34 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 18 Sep 2017 17:00:36 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 18 Sep 2017 17:00:37 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 18 Sep 2017 17:00:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 18 Sep 2017 17:00:41 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Mon, 18 Sep 2017 17:00:42 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Mon, 18 Sep 2017 17:00:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 18 Sep 2017 17:00:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 18 Sep 2017 17:00:47 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 18 Sep 2017 17:00:48 GMT
CMD ["rabbitmq-server"]
# Mon, 18 Sep 2017 17:01:13 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 18 Sep 2017 17:01:14 GMT
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
	-	`sha256:edbb6656d01868a89adb3c8cb754d03a967a3ef90ba51132df75e112ac751d97`  
		Last Modified: Sat, 09 Sep 2017 03:28:55 GMT  
		Size: 3.1 KB (3109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3b059729c7d80a8d78c17295b29dfdc376bfdf5c9a3ec402f4dae94463ddc6`  
		Last Modified: Sat, 09 Sep 2017 03:28:52 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dbf47a706db09795de4c0d2bbb38eb31c46ea94bbb0c3cb7ece579fa3bb3028`  
		Last Modified: Mon, 18 Sep 2017 17:01:43 GMT  
		Size: 6.9 MB (6908755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3e8cc4d107fb4fb62c8d405800b4b745699e44cfd323099fa0f68594a50cb1`  
		Last Modified: Mon, 18 Sep 2017 17:01:32 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22151b49c71a3da76c30d935ca589187b383163f69d969a79a83a58d3e9648b8`  
		Last Modified: Mon, 18 Sep 2017 17:01:31 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3551444d064d5bf110b204563deebf11eaa148ed377860326ef28982a69d2c12`  
		Last Modified: Mon, 18 Sep 2017 17:01:32 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecadf3874f2d921962a8fbe53304723230d4dfc16b94e77c3592208d618f0c3`  
		Last Modified: Mon, 18 Sep 2017 17:01:33 GMT  
		Size: 4.1 KB (4069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ebee06fcd8fe0371560d6e2899ed62cbc6c31e11f32a4ec03380d49b23cf91`  
		Last Modified: Mon, 18 Sep 2017 17:01:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e21127bf75dccf742628221299cd252fb2832d4b37753a40fb461ab1650b9b0`  
		Last Modified: Mon, 18 Sep 2017 17:02:30 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:95cbb8c66d6aab79357cf1d60b920b9740702ace120dc7edc6a4517deb2281d3
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57282909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d05359f61122a54c79d486a28e2d192853b2cbf3db51e944edabc7cb258e9eb`
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
# Sat, 09 Sep 2017 03:02:00 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 09 Sep 2017 03:02:03 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Wed, 13 Sep 2017 13:52:28 GMT
ENV RABBITMQ_VERSION=3.6.12
# Wed, 13 Sep 2017 13:52:28 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Wed, 13 Sep 2017 13:52:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 13:52:52 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 13:52:52 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 13 Sep 2017 13:52:54 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 13 Sep 2017 13:52:55 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 13 Sep 2017 13:52:56 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 13 Sep 2017 13:52:58 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 13 Sep 2017 13:52:59 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Wed, 13 Sep 2017 13:53:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 13:53:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 13:53:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 13 Sep 2017 13:53:03 GMT
CMD ["rabbitmq-server"]
# Wed, 13 Sep 2017 13:53:12 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 13 Sep 2017 13:53:13 GMT
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
	-	`sha256:d7f688e1fcfb13b6ef55b3d78c5a8c535da75e4d0e96b6dfc1b4a518236ab265`  
		Last Modified: Sat, 09 Sep 2017 03:03:35 GMT  
		Size: 3.1 KB (3108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce6f264e2329a3a73c1cde7d673337f22b1d2a4bba78420b00c4b027e46bf4a3`  
		Last Modified: Sat, 09 Sep 2017 03:03:35 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5437e50a67a96dfdd5da54d60ac406445d373646a0458d91ae8587251749c7`  
		Last Modified: Wed, 13 Sep 2017 13:53:33 GMT  
		Size: 6.9 MB (6893854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06d90622faf0776523cf3ae8d11b1bf947d76d87dd9cda0a66e44048682edc42`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773dcf2ab2cb3dd6e8b4b7183a2640d559a4fd62ef93deaafe57d697fd4ddb83`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c4e59c45634518523870406a2900804b3b75060802c709ca0002f75d95f7c6`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84656bbd98cb7143e477be6ee2c0c1b8b6d3d7608336160c0c1b13adeaab9243`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f93132fcbd3ba6cb9bef9f31caa086a30ed92428fccd2f7e615b0266a9a313`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:573ae3857455b23c48492c55d8d99f290aeeea75e9ad72395b24c1745bab0b63`  
		Last Modified: Wed, 13 Sep 2017 13:54:11 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; 386

```console
$ docker pull rabbitmq@sha256:8e997b65a1b6d1582927cf45975aa858866f347da03ac59ede22acc3611d8c8c
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63902370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d423e51e4df7feac79ceb49b426f1a723d435a39718bc4f487b37a0e0cbfccc7`
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
# Fri, 08 Sep 2017 17:19:07 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 17:19:07 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Wed, 13 Sep 2017 10:45:24 GMT
ENV RABBITMQ_VERSION=3.6.12
# Wed, 13 Sep 2017 10:45:25 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Wed, 13 Sep 2017 10:45:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 10:45:34 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 10:45:34 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 13 Sep 2017 10:45:35 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 13 Sep 2017 10:45:35 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 13 Sep 2017 10:45:36 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 13 Sep 2017 10:45:37 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 13 Sep 2017 10:45:37 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Wed, 13 Sep 2017 10:45:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 10:45:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 10:45:38 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 13 Sep 2017 10:45:38 GMT
CMD ["rabbitmq-server"]
# Wed, 13 Sep 2017 10:45:44 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 13 Sep 2017 10:45:44 GMT
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
	-	`sha256:18234d7343e5f45c79ad0cda4e91e7d0aaa88cc2cd6d1014ffcc3671ac5da2e5`  
		Last Modified: Fri, 08 Sep 2017 17:19:34 GMT  
		Size: 3.1 KB (3107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51469fe3c10415438b313e5bf8d55d7bea711b3bd5a6292c66b323749ebce6f`  
		Last Modified: Fri, 08 Sep 2017 17:19:34 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d3012dae721ed47b9678e21cd17173d8cf6ccf6ffef9b539cf07b7e0fb54c6`  
		Last Modified: Wed, 13 Sep 2017 10:45:55 GMT  
		Size: 7.2 MB (7207960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5358d69051581282822e83d0b96add9148a76373e96b0254feb4351add18662`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f318b61716e856418a641d2d86e5b1228c173934795b1d3882e16ec0bc2010`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7828be97d14b65a2de09a961a56d6910801b8f0f54b6386a6fbeaca6440de52b`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959b63fbd84be3ac044676eff69aef6395de22c35695ef51f9454417ebca9984`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 4.1 KB (4069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4151f37a98eaa87d786d1e7996bf98257b06084ad1660c2c82ffcb85c927703`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4be0ed9de2a9f24a1a8ced8d9de13daeea7e65d1903bb732a09877fc5decaf7`  
		Last Modified: Wed, 13 Sep 2017 10:46:20 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:48866ddf8aa252434f2d2f615ca1d71d8fd1f41739a6afc97e1496112c81cb09
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60387195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:112e35fd1c5bf9cce55f206c6239fccd826f4a614c8c7a6105faff2d688dbc1e`
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
# Tue, 12 Sep 2017 22:54:44 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Sep 2017 22:54:49 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 12 Sep 2017 22:54:50 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 12 Sep 2017 22:54:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 12 Sep 2017 22:55:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 22:55:32 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 22:55:33 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 12 Sep 2017 22:55:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 12 Sep 2017 22:55:40 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 12 Sep 2017 22:55:45 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 12 Sep 2017 22:55:50 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 12 Sep 2017 22:55:52 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Tue, 12 Sep 2017 22:55:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Sep 2017 22:55:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 22:56:01 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 12 Sep 2017 22:56:03 GMT
CMD ["rabbitmq-server"]
# Tue, 12 Sep 2017 22:56:13 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 12 Sep 2017 22:56:16 GMT
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
	-	`sha256:33136a5f20115fe62bbd8aa72bb0980086cdbfed5633a2d913dadd0e9a4ecd84`  
		Last Modified: Tue, 12 Sep 2017 22:56:35 GMT  
		Size: 3.1 KB (3110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0664e44de3406582d405b5cf8c2d06976d15a6762ff395e85f610bcca0da7c67`  
		Last Modified: Tue, 12 Sep 2017 22:56:34 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e61969058bd506abbb0699def6df8b21f356bc5217b88069ed711afe4722d5`  
		Last Modified: Tue, 12 Sep 2017 22:56:36 GMT  
		Size: 6.9 MB (6852811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81a292f3132f54034920f1d038a9a7cbd371409ad96c2bc079de52a6953796b`  
		Last Modified: Tue, 12 Sep 2017 22:56:28 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee14d95f5afd1e094e9558286aeda716883ec628695b1a26a5ce4feea0e2aadc`  
		Last Modified: Tue, 12 Sep 2017 22:56:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59159b7fc3148e25123af34c7b5b70bcaab4dcd31a77f3785da243eab70cc93c`  
		Last Modified: Tue, 12 Sep 2017 22:56:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fb80373224b00c85c3a219c4ecd194e6942fc9a2f59e897547c9121213819d`  
		Last Modified: Tue, 12 Sep 2017 22:56:29 GMT  
		Size: 4.1 KB (4070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a8f525dec54ab225c73be7c0cce2756fd8bf3024cda90316fcbe4218357aea`  
		Last Modified: Tue, 12 Sep 2017 22:56:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbc2e3e8258be0b85892487a6ef603a511111270c46084eac613df7274c772e5`  
		Last Modified: Tue, 12 Sep 2017 22:57:11 GMT  
		Size: 193.0 B  
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
$ docker pull rabbitmq@sha256:6ed98420f94d8ac2ebc428ca0f2ccb9df5aab738ba1fed7a207a8eed609ecfaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:4b441a9c69e86c71447069f8b26995471ba53d238e42a60e75df754305902506
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23557450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84b68efed5e7995e7ecc49ff73442505e66cbbfe7d6b5fe70e97a7f4ecf93f7e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:28:37 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 12 Sep 2017 23:28:41 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 12 Sep 2017 23:28:52 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 12 Sep 2017 23:28:53 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Sep 2017 23:28:53 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 12 Sep 2017 23:28:53 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:28:53 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 12 Sep 2017 23:28:53 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 12 Sep 2017 23:29:00 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 12 Sep 2017 23:29:00 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 12 Sep 2017 23:29:01 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 12 Sep 2017 23:29:01 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 12 Sep 2017 23:29:02 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 12 Sep 2017 23:29:03 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 12 Sep 2017 23:29:03 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:29:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 23:29:03 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 12 Sep 2017 23:29:03 GMT
CMD ["rabbitmq-server"]
# Tue, 12 Sep 2017 23:29:05 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 12 Sep 2017 23:29:05 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d7072095206cb12dcabbb996b37f687087eb17d2f77ce634a2babe08bf2025`  
		Last Modified: Tue, 12 Sep 2017 23:29:58 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec595d626e976dc560b7fe1d61e07ba9282dc0f68f710c44ae9aeaf6f1329ad`  
		Last Modified: Tue, 12 Sep 2017 23:29:58 GMT  
		Size: 8.2 KB (8217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66623e64b7321c7ca7955f811e4e6a5665ba5d3bc579e94a31157e28c085860f`  
		Last Modified: Tue, 12 Sep 2017 23:30:00 GMT  
		Size: 16.5 MB (16540699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4463675dda0fb5e854d2b4254fdb8d5f92d1f779f891eb5eada800433eb35267`  
		Last Modified: Tue, 12 Sep 2017 23:29:56 GMT  
		Size: 5.0 MB (5012169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3aad8278fdb1d5c61213b1dfe9925e60d25242b5343245268c23a1f6dcdb213`  
		Last Modified: Tue, 12 Sep 2017 23:29:55 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb409fdaddbd6e1aa4231d81690f1aa1a02c1f5bfb936708413078ba23fd0df9`  
		Last Modified: Tue, 12 Sep 2017 23:29:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ad337d5af387bd8878072fc689a40cf5e21aba22a556324a45b2384c7fb78e`  
		Last Modified: Tue, 12 Sep 2017 23:29:55 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4caacd69d344000dde14fee3c056ece051b1e993f77b4ba64e0c38d06359728`  
		Last Modified: Tue, 12 Sep 2017 23:29:56 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6270997d7fabb561c77227c169fcf9297e600ba88eda66747cda94199a7e2cc5`  
		Last Modified: Tue, 12 Sep 2017 23:30:14 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:alpine`

```console
$ docker pull rabbitmq@sha256:07f68042a3cd4f477f7164b6cdbbc92117e7053922d69bed143b7eb5cf95e20e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:aa4853e46db04fc56ffca3153378dd177d627e37bedf70df9b5a69b2ef3e7080
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23557259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b99612ef8809e2b6d407c72f54476b3645756eb674110076190711290441ae47`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:28:37 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 12 Sep 2017 23:28:41 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 12 Sep 2017 23:28:52 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 12 Sep 2017 23:28:53 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Sep 2017 23:28:53 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 12 Sep 2017 23:28:53 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:28:53 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 12 Sep 2017 23:28:53 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 12 Sep 2017 23:29:00 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 12 Sep 2017 23:29:00 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 12 Sep 2017 23:29:01 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 12 Sep 2017 23:29:01 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 12 Sep 2017 23:29:02 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 12 Sep 2017 23:29:03 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 12 Sep 2017 23:29:03 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:29:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 23:29:03 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 12 Sep 2017 23:29:03 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d7072095206cb12dcabbb996b37f687087eb17d2f77ce634a2babe08bf2025`  
		Last Modified: Tue, 12 Sep 2017 23:29:58 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec595d626e976dc560b7fe1d61e07ba9282dc0f68f710c44ae9aeaf6f1329ad`  
		Last Modified: Tue, 12 Sep 2017 23:29:58 GMT  
		Size: 8.2 KB (8217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66623e64b7321c7ca7955f811e4e6a5665ba5d3bc579e94a31157e28c085860f`  
		Last Modified: Tue, 12 Sep 2017 23:30:00 GMT  
		Size: 16.5 MB (16540699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4463675dda0fb5e854d2b4254fdb8d5f92d1f779f891eb5eada800433eb35267`  
		Last Modified: Tue, 12 Sep 2017 23:29:56 GMT  
		Size: 5.0 MB (5012169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3aad8278fdb1d5c61213b1dfe9925e60d25242b5343245268c23a1f6dcdb213`  
		Last Modified: Tue, 12 Sep 2017 23:29:55 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb409fdaddbd6e1aa4231d81690f1aa1a02c1f5bfb936708413078ba23fd0df9`  
		Last Modified: Tue, 12 Sep 2017 23:29:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ad337d5af387bd8878072fc689a40cf5e21aba22a556324a45b2384c7fb78e`  
		Last Modified: Tue, 12 Sep 2017 23:29:55 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4caacd69d344000dde14fee3c056ece051b1e993f77b4ba64e0c38d06359728`  
		Last Modified: Tue, 12 Sep 2017 23:29:56 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:latest`

```console
$ docker pull rabbitmq@sha256:d78f6fac87172ad153cb191fe7b31891d717f58175dd5ce72032947d5d472fd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:latest` - linux; amd64

```console
$ docker pull rabbitmq@sha256:6277868ba43379e4715eafa6bfa2f754fbc7b78ce58da6ab54415bd09ec0be6a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62850828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b961a046021b19157f9ab3ae37773973047bfc7ef38ec0c083f3987b3fa3a8dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:45 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Thu, 07 Sep 2017 23:07:45 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 23:27:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:27:42 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Sep 2017 23:27:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Sep 2017 23:27:55 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Sep 2017 23:28:13 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:28:13 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Sep 2017 23:28:24 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Sep 2017 23:28:24 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 12 Sep 2017 23:28:25 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 12 Sep 2017 23:28:25 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 12 Sep 2017 23:28:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:28:30 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:28:30 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 12 Sep 2017 23:28:31 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 12 Sep 2017 23:28:31 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 12 Sep 2017 23:28:32 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 12 Sep 2017 23:28:32 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 12 Sep 2017 23:28:33 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:28:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Sep 2017 23:28:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 23:28:34 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 12 Sep 2017 23:28:34 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aadde3410cb49cfd33138502617df98cf49a63776ac6b2496c12bf493d2c1acb`  
		Last Modified: Tue, 12 Sep 2017 23:29:22 GMT  
		Size: 4.5 MB (4499368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e495394892123223f50e3ef9706a2390afdfbdeb1da6d9bc84ef87acc74261`  
		Last Modified: Tue, 12 Sep 2017 23:29:20 GMT  
		Size: 4.1 KB (4070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c862b9153cbda635b775785c30620e5b75da5aa1ca13c92c5e9f66cdcc8531`  
		Last Modified: Tue, 12 Sep 2017 23:29:19 GMT  
		Size: 952.0 KB (952003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f2714343f36f92fb827a2214dea210dc8b31cc94c7e2e047bca398f2095383`  
		Last Modified: Tue, 12 Sep 2017 23:29:26 GMT  
		Size: 27.7 MB (27703836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2dcfdbb20df1075f84544e4692525e0ca74b38e914bdae4c1d446c9d552e4fa`  
		Last Modified: Tue, 12 Sep 2017 23:29:18 GMT  
		Size: 3.1 KB (3109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f01417baa32b9822ca9c5eaec8fe57a1ddb6644df7f1841915d0786d2cfeb06`  
		Last Modified: Tue, 12 Sep 2017 23:29:19 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da934532e234d244acbfb3d9f2ffd184707823b51be798f695de12e7537d4915`  
		Last Modified: Tue, 12 Sep 2017 23:29:19 GMT  
		Size: 7.2 MB (7193446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c3341079a1a6a5ff9503bb1d58a7f3810da7b849c234897b228998bb04820d`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425d840967240d00657711fae33d25c6e7486882cab8322bcee6607b392ca74d`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234f92ba8be71e2eae5027a740144f47e415b5719385b8b5003c26a4df7f1133`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c082fdf870ea036041c78668055c568dc4984416c503f7cc506ecd4daf52cc5a`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 4.1 KB (4067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91b7abe0b74e549a2215539981db8dfeb21122e1b00dbb3dc5688cb3eee3a866`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:2720f336d006976fd6c4e2f0a3fabfc3fe88fbeef20c5e3eec924fc2ed042abd
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.4 MB (58429373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87b7fae2d4dec52b0c8972fc3e6373e30ee3d7185ca166fe4bd07314f8dd337b`
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
# Sat, 09 Sep 2017 03:25:15 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 09 Sep 2017 03:25:17 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Mon, 18 Sep 2017 16:57:54 GMT
ENV RABBITMQ_VERSION=3.6.12
# Mon, 18 Sep 2017 16:57:55 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Mon, 18 Sep 2017 17:00:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 17:00:33 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 18 Sep 2017 17:00:34 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 18 Sep 2017 17:00:36 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 18 Sep 2017 17:00:37 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 18 Sep 2017 17:00:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 18 Sep 2017 17:00:41 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Mon, 18 Sep 2017 17:00:42 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Mon, 18 Sep 2017 17:00:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 18 Sep 2017 17:00:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 18 Sep 2017 17:00:47 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 18 Sep 2017 17:00:48 GMT
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
	-	`sha256:edbb6656d01868a89adb3c8cb754d03a967a3ef90ba51132df75e112ac751d97`  
		Last Modified: Sat, 09 Sep 2017 03:28:55 GMT  
		Size: 3.1 KB (3109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3b059729c7d80a8d78c17295b29dfdc376bfdf5c9a3ec402f4dae94463ddc6`  
		Last Modified: Sat, 09 Sep 2017 03:28:52 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dbf47a706db09795de4c0d2bbb38eb31c46ea94bbb0c3cb7ece579fa3bb3028`  
		Last Modified: Mon, 18 Sep 2017 17:01:43 GMT  
		Size: 6.9 MB (6908755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3e8cc4d107fb4fb62c8d405800b4b745699e44cfd323099fa0f68594a50cb1`  
		Last Modified: Mon, 18 Sep 2017 17:01:32 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22151b49c71a3da76c30d935ca589187b383163f69d969a79a83a58d3e9648b8`  
		Last Modified: Mon, 18 Sep 2017 17:01:31 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3551444d064d5bf110b204563deebf11eaa148ed377860326ef28982a69d2c12`  
		Last Modified: Mon, 18 Sep 2017 17:01:32 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecadf3874f2d921962a8fbe53304723230d4dfc16b94e77c3592208d618f0c3`  
		Last Modified: Mon, 18 Sep 2017 17:01:33 GMT  
		Size: 4.1 KB (4069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ebee06fcd8fe0371560d6e2899ed62cbc6c31e11f32a4ec03380d49b23cf91`  
		Last Modified: Mon, 18 Sep 2017 17:01:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:700225af1354204cb0b0e42e74b7d02ecf1f375c3091a27a00d556ae1a11fc44
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57282715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b61da1f95b561c4a1b5be81093766db5dec0f85a5e2fa5479829c166efc95897`
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
# Sat, 09 Sep 2017 03:02:00 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 09 Sep 2017 03:02:03 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Wed, 13 Sep 2017 13:52:28 GMT
ENV RABBITMQ_VERSION=3.6.12
# Wed, 13 Sep 2017 13:52:28 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Wed, 13 Sep 2017 13:52:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 13:52:52 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 13:52:52 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 13 Sep 2017 13:52:54 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 13 Sep 2017 13:52:55 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 13 Sep 2017 13:52:56 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 13 Sep 2017 13:52:58 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 13 Sep 2017 13:52:59 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Wed, 13 Sep 2017 13:53:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 13:53:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 13:53:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 13 Sep 2017 13:53:03 GMT
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
	-	`sha256:d7f688e1fcfb13b6ef55b3d78c5a8c535da75e4d0e96b6dfc1b4a518236ab265`  
		Last Modified: Sat, 09 Sep 2017 03:03:35 GMT  
		Size: 3.1 KB (3108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce6f264e2329a3a73c1cde7d673337f22b1d2a4bba78420b00c4b027e46bf4a3`  
		Last Modified: Sat, 09 Sep 2017 03:03:35 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5437e50a67a96dfdd5da54d60ac406445d373646a0458d91ae8587251749c7`  
		Last Modified: Wed, 13 Sep 2017 13:53:33 GMT  
		Size: 6.9 MB (6893854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06d90622faf0776523cf3ae8d11b1bf947d76d87dd9cda0a66e44048682edc42`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773dcf2ab2cb3dd6e8b4b7183a2640d559a4fd62ef93deaafe57d697fd4ddb83`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c4e59c45634518523870406a2900804b3b75060802c709ca0002f75d95f7c6`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84656bbd98cb7143e477be6ee2c0c1b8b6d3d7608336160c0c1b13adeaab9243`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f93132fcbd3ba6cb9bef9f31caa086a30ed92428fccd2f7e615b0266a9a313`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; 386

```console
$ docker pull rabbitmq@sha256:ee062ac99b2aa94e15f0b6f301249e941ed27c452478474b44b05abec7fcc3d9
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63902177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc629fd8de327408fb1853a9be822ee7d7b579d55810e54e45113deb18ebcff`
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
# Fri, 08 Sep 2017 17:19:07 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 17:19:07 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Wed, 13 Sep 2017 10:45:24 GMT
ENV RABBITMQ_VERSION=3.6.12
# Wed, 13 Sep 2017 10:45:25 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Wed, 13 Sep 2017 10:45:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 10:45:34 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 10:45:34 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 13 Sep 2017 10:45:35 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 13 Sep 2017 10:45:35 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 13 Sep 2017 10:45:36 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 13 Sep 2017 10:45:37 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 13 Sep 2017 10:45:37 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Wed, 13 Sep 2017 10:45:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 10:45:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 10:45:38 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 13 Sep 2017 10:45:38 GMT
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
	-	`sha256:18234d7343e5f45c79ad0cda4e91e7d0aaa88cc2cd6d1014ffcc3671ac5da2e5`  
		Last Modified: Fri, 08 Sep 2017 17:19:34 GMT  
		Size: 3.1 KB (3107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51469fe3c10415438b313e5bf8d55d7bea711b3bd5a6292c66b323749ebce6f`  
		Last Modified: Fri, 08 Sep 2017 17:19:34 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d3012dae721ed47b9678e21cd17173d8cf6ccf6ffef9b539cf07b7e0fb54c6`  
		Last Modified: Wed, 13 Sep 2017 10:45:55 GMT  
		Size: 7.2 MB (7207960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5358d69051581282822e83d0b96add9148a76373e96b0254feb4351add18662`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f318b61716e856418a641d2d86e5b1228c173934795b1d3882e16ec0bc2010`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7828be97d14b65a2de09a961a56d6910801b8f0f54b6386a6fbeaca6440de52b`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959b63fbd84be3ac044676eff69aef6395de22c35695ef51f9454417ebca9984`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 4.1 KB (4069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4151f37a98eaa87d786d1e7996bf98257b06084ad1660c2c82ffcb85c927703`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:38288554d29bd933b54b68ba0c77175e22409cadfc4753d8725f6da45d64eb3b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60387002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e83aef99b6dfec1575b95b138e018baaf8fdec22dd1e327c6c9f84328fc385e3`
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
# Tue, 12 Sep 2017 22:54:44 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Sep 2017 22:54:49 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 12 Sep 2017 22:54:50 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 12 Sep 2017 22:54:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 12 Sep 2017 22:55:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 22:55:32 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 22:55:33 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 12 Sep 2017 22:55:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 12 Sep 2017 22:55:40 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 12 Sep 2017 22:55:45 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 12 Sep 2017 22:55:50 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 12 Sep 2017 22:55:52 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Tue, 12 Sep 2017 22:55:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Sep 2017 22:55:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 22:56:01 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 12 Sep 2017 22:56:03 GMT
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
	-	`sha256:33136a5f20115fe62bbd8aa72bb0980086cdbfed5633a2d913dadd0e9a4ecd84`  
		Last Modified: Tue, 12 Sep 2017 22:56:35 GMT  
		Size: 3.1 KB (3110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0664e44de3406582d405b5cf8c2d06976d15a6762ff395e85f610bcca0da7c67`  
		Last Modified: Tue, 12 Sep 2017 22:56:34 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e61969058bd506abbb0699def6df8b21f356bc5217b88069ed711afe4722d5`  
		Last Modified: Tue, 12 Sep 2017 22:56:36 GMT  
		Size: 6.9 MB (6852811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81a292f3132f54034920f1d038a9a7cbd371409ad96c2bc079de52a6953796b`  
		Last Modified: Tue, 12 Sep 2017 22:56:28 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee14d95f5afd1e094e9558286aeda716883ec628695b1a26a5ce4feea0e2aadc`  
		Last Modified: Tue, 12 Sep 2017 22:56:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59159b7fc3148e25123af34c7b5b70bcaab4dcd31a77f3785da243eab70cc93c`  
		Last Modified: Tue, 12 Sep 2017 22:56:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fb80373224b00c85c3a219c4ecd194e6942fc9a2f59e897547c9121213819d`  
		Last Modified: Tue, 12 Sep 2017 22:56:29 GMT  
		Size: 4.1 KB (4070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a8f525dec54ab225c73be7c0cce2756fd8bf3024cda90316fcbe4218357aea`  
		Last Modified: Tue, 12 Sep 2017 22:56:28 GMT  
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
$ docker pull rabbitmq@sha256:231ec2dfda4a5e261bfa64545261f299dc3d3661674b3d53cb1f49f57b86e926
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:8daeb75857d7e04da9854cb131fef3b0d2dfd8f1e313ae2c88da0a20cb4d36ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62851022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99f85991949f2b39c91405eae1b54e6387bf205e950db3641ff981baa7737100`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:45 GMT
ADD file:2bc9df54d28d9ec75722f6748834a1aea0baf089047e86a541064c282246c300 in / 
# Thu, 07 Sep 2017 23:07:45 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 23:27:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:27:42 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Sep 2017 23:27:42 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Sep 2017 23:27:55 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 12 Sep 2017 23:28:13 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:28:13 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Sep 2017 23:28:24 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Sep 2017 23:28:24 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 12 Sep 2017 23:28:25 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 12 Sep 2017 23:28:25 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 12 Sep 2017 23:28:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 23:28:30 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:28:30 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 12 Sep 2017 23:28:31 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 12 Sep 2017 23:28:31 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 12 Sep 2017 23:28:32 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 12 Sep 2017 23:28:32 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 12 Sep 2017 23:28:33 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:28:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Sep 2017 23:28:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 23:28:34 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 12 Sep 2017 23:28:34 GMT
CMD ["rabbitmq-server"]
# Tue, 12 Sep 2017 23:28:36 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 12 Sep 2017 23:28:36 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:afeb2bfd31c0760573e7262de6ae67a84da0e0a1c3e8157bbddd41a501b18a5c`  
		Last Modified: Thu, 07 Sep 2017 23:21:35 GMT  
		Size: 22.5 MB (22488057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aadde3410cb49cfd33138502617df98cf49a63776ac6b2496c12bf493d2c1acb`  
		Last Modified: Tue, 12 Sep 2017 23:29:22 GMT  
		Size: 4.5 MB (4499368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e495394892123223f50e3ef9706a2390afdfbdeb1da6d9bc84ef87acc74261`  
		Last Modified: Tue, 12 Sep 2017 23:29:20 GMT  
		Size: 4.1 KB (4070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c862b9153cbda635b775785c30620e5b75da5aa1ca13c92c5e9f66cdcc8531`  
		Last Modified: Tue, 12 Sep 2017 23:29:19 GMT  
		Size: 952.0 KB (952003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f2714343f36f92fb827a2214dea210dc8b31cc94c7e2e047bca398f2095383`  
		Last Modified: Tue, 12 Sep 2017 23:29:26 GMT  
		Size: 27.7 MB (27703836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2dcfdbb20df1075f84544e4692525e0ca74b38e914bdae4c1d446c9d552e4fa`  
		Last Modified: Tue, 12 Sep 2017 23:29:18 GMT  
		Size: 3.1 KB (3109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f01417baa32b9822ca9c5eaec8fe57a1ddb6644df7f1841915d0786d2cfeb06`  
		Last Modified: Tue, 12 Sep 2017 23:29:19 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da934532e234d244acbfb3d9f2ffd184707823b51be798f695de12e7537d4915`  
		Last Modified: Tue, 12 Sep 2017 23:29:19 GMT  
		Size: 7.2 MB (7193446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c3341079a1a6a5ff9503bb1d58a7f3810da7b849c234897b228998bb04820d`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425d840967240d00657711fae33d25c6e7486882cab8322bcee6607b392ca74d`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234f92ba8be71e2eae5027a740144f47e415b5719385b8b5003c26a4df7f1133`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c082fdf870ea036041c78668055c568dc4984416c503f7cc506ecd4daf52cc5a`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 4.1 KB (4067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91b7abe0b74e549a2215539981db8dfeb21122e1b00dbb3dc5688cb3eee3a866`  
		Last Modified: Tue, 12 Sep 2017 23:29:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c30f341efa2911f51a7823ae99fe366cf2b38b06c016d59bcc0a2ce2ff5d31`  
		Last Modified: Tue, 12 Sep 2017 23:29:41 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:51bf5178c6e1763ee42293ebf1e056805dd6d133e63784296fc2cc2fb07bf91b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.4 MB (58429565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a5ba7f08729ce65c2c11ace5253f15f2b1b504e6312b866a2c4328006e624e4`
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
# Sat, 09 Sep 2017 03:25:15 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 09 Sep 2017 03:25:17 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Mon, 18 Sep 2017 16:57:54 GMT
ENV RABBITMQ_VERSION=3.6.12
# Mon, 18 Sep 2017 16:57:55 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Mon, 18 Sep 2017 17:00:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 17:00:33 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 18 Sep 2017 17:00:34 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 18 Sep 2017 17:00:36 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 18 Sep 2017 17:00:37 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 18 Sep 2017 17:00:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 18 Sep 2017 17:00:41 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Mon, 18 Sep 2017 17:00:42 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Mon, 18 Sep 2017 17:00:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 18 Sep 2017 17:00:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 18 Sep 2017 17:00:47 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 18 Sep 2017 17:00:48 GMT
CMD ["rabbitmq-server"]
# Mon, 18 Sep 2017 17:01:13 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 18 Sep 2017 17:01:14 GMT
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
	-	`sha256:edbb6656d01868a89adb3c8cb754d03a967a3ef90ba51132df75e112ac751d97`  
		Last Modified: Sat, 09 Sep 2017 03:28:55 GMT  
		Size: 3.1 KB (3109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3b059729c7d80a8d78c17295b29dfdc376bfdf5c9a3ec402f4dae94463ddc6`  
		Last Modified: Sat, 09 Sep 2017 03:28:52 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dbf47a706db09795de4c0d2bbb38eb31c46ea94bbb0c3cb7ece579fa3bb3028`  
		Last Modified: Mon, 18 Sep 2017 17:01:43 GMT  
		Size: 6.9 MB (6908755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3e8cc4d107fb4fb62c8d405800b4b745699e44cfd323099fa0f68594a50cb1`  
		Last Modified: Mon, 18 Sep 2017 17:01:32 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22151b49c71a3da76c30d935ca589187b383163f69d969a79a83a58d3e9648b8`  
		Last Modified: Mon, 18 Sep 2017 17:01:31 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3551444d064d5bf110b204563deebf11eaa148ed377860326ef28982a69d2c12`  
		Last Modified: Mon, 18 Sep 2017 17:01:32 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecadf3874f2d921962a8fbe53304723230d4dfc16b94e77c3592208d618f0c3`  
		Last Modified: Mon, 18 Sep 2017 17:01:33 GMT  
		Size: 4.1 KB (4069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ebee06fcd8fe0371560d6e2899ed62cbc6c31e11f32a4ec03380d49b23cf91`  
		Last Modified: Mon, 18 Sep 2017 17:01:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e21127bf75dccf742628221299cd252fb2832d4b37753a40fb461ab1650b9b0`  
		Last Modified: Mon, 18 Sep 2017 17:02:30 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:95cbb8c66d6aab79357cf1d60b920b9740702ace120dc7edc6a4517deb2281d3
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57282909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d05359f61122a54c79d486a28e2d192853b2cbf3db51e944edabc7cb258e9eb`
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
# Sat, 09 Sep 2017 03:02:00 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Sat, 09 Sep 2017 03:02:03 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Wed, 13 Sep 2017 13:52:28 GMT
ENV RABBITMQ_VERSION=3.6.12
# Wed, 13 Sep 2017 13:52:28 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Wed, 13 Sep 2017 13:52:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 13:52:52 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 13:52:52 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 13 Sep 2017 13:52:54 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 13 Sep 2017 13:52:55 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 13 Sep 2017 13:52:56 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 13 Sep 2017 13:52:58 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 13 Sep 2017 13:52:59 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Wed, 13 Sep 2017 13:53:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 13:53:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 13:53:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 13 Sep 2017 13:53:03 GMT
CMD ["rabbitmq-server"]
# Wed, 13 Sep 2017 13:53:12 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 13 Sep 2017 13:53:13 GMT
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
	-	`sha256:d7f688e1fcfb13b6ef55b3d78c5a8c535da75e4d0e96b6dfc1b4a518236ab265`  
		Last Modified: Sat, 09 Sep 2017 03:03:35 GMT  
		Size: 3.1 KB (3108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce6f264e2329a3a73c1cde7d673337f22b1d2a4bba78420b00c4b027e46bf4a3`  
		Last Modified: Sat, 09 Sep 2017 03:03:35 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5437e50a67a96dfdd5da54d60ac406445d373646a0458d91ae8587251749c7`  
		Last Modified: Wed, 13 Sep 2017 13:53:33 GMT  
		Size: 6.9 MB (6893854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06d90622faf0776523cf3ae8d11b1bf947d76d87dd9cda0a66e44048682edc42`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773dcf2ab2cb3dd6e8b4b7183a2640d559a4fd62ef93deaafe57d697fd4ddb83`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c4e59c45634518523870406a2900804b3b75060802c709ca0002f75d95f7c6`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84656bbd98cb7143e477be6ee2c0c1b8b6d3d7608336160c0c1b13adeaab9243`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f93132fcbd3ba6cb9bef9f31caa086a30ed92428fccd2f7e615b0266a9a313`  
		Last Modified: Wed, 13 Sep 2017 13:53:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:573ae3857455b23c48492c55d8d99f290aeeea75e9ad72395b24c1745bab0b63`  
		Last Modified: Wed, 13 Sep 2017 13:54:11 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; 386

```console
$ docker pull rabbitmq@sha256:8e997b65a1b6d1582927cf45975aa858866f347da03ac59ede22acc3611d8c8c
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63902370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d423e51e4df7feac79ceb49b426f1a723d435a39718bc4f487b37a0e0cbfccc7`
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
# Fri, 08 Sep 2017 17:19:07 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 17:19:07 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Wed, 13 Sep 2017 10:45:24 GMT
ENV RABBITMQ_VERSION=3.6.12
# Wed, 13 Sep 2017 10:45:25 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Wed, 13 Sep 2017 10:45:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 10:45:34 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 10:45:34 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 13 Sep 2017 10:45:35 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 13 Sep 2017 10:45:35 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 13 Sep 2017 10:45:36 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 13 Sep 2017 10:45:37 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 13 Sep 2017 10:45:37 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Wed, 13 Sep 2017 10:45:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 10:45:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 10:45:38 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 13 Sep 2017 10:45:38 GMT
CMD ["rabbitmq-server"]
# Wed, 13 Sep 2017 10:45:44 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 13 Sep 2017 10:45:44 GMT
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
	-	`sha256:18234d7343e5f45c79ad0cda4e91e7d0aaa88cc2cd6d1014ffcc3671ac5da2e5`  
		Last Modified: Fri, 08 Sep 2017 17:19:34 GMT  
		Size: 3.1 KB (3107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51469fe3c10415438b313e5bf8d55d7bea711b3bd5a6292c66b323749ebce6f`  
		Last Modified: Fri, 08 Sep 2017 17:19:34 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d3012dae721ed47b9678e21cd17173d8cf6ccf6ffef9b539cf07b7e0fb54c6`  
		Last Modified: Wed, 13 Sep 2017 10:45:55 GMT  
		Size: 7.2 MB (7207960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5358d69051581282822e83d0b96add9148a76373e96b0254feb4351add18662`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f318b61716e856418a641d2d86e5b1228c173934795b1d3882e16ec0bc2010`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7828be97d14b65a2de09a961a56d6910801b8f0f54b6386a6fbeaca6440de52b`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959b63fbd84be3ac044676eff69aef6395de22c35695ef51f9454417ebca9984`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 4.1 KB (4069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4151f37a98eaa87d786d1e7996bf98257b06084ad1660c2c82ffcb85c927703`  
		Last Modified: Wed, 13 Sep 2017 10:45:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4be0ed9de2a9f24a1a8ced8d9de13daeea7e65d1903bb732a09877fc5decaf7`  
		Last Modified: Wed, 13 Sep 2017 10:46:20 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:48866ddf8aa252434f2d2f615ca1d71d8fd1f41739a6afc97e1496112c81cb09
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60387195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:112e35fd1c5bf9cce55f206c6239fccd826f4a614c8c7a6105faff2d688dbc1e`
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
# Tue, 12 Sep 2017 22:54:44 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 12 Sep 2017 22:54:49 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 12 Sep 2017 22:54:50 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 12 Sep 2017 22:54:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.12-1
# Tue, 12 Sep 2017 22:55:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 22:55:32 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 22:55:33 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 12 Sep 2017 22:55:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 12 Sep 2017 22:55:40 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 12 Sep 2017 22:55:45 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 12 Sep 2017 22:55:50 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 12 Sep 2017 22:55:52 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Tue, 12 Sep 2017 22:55:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Sep 2017 22:55:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 22:56:01 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 12 Sep 2017 22:56:03 GMT
CMD ["rabbitmq-server"]
# Tue, 12 Sep 2017 22:56:13 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 12 Sep 2017 22:56:16 GMT
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
	-	`sha256:33136a5f20115fe62bbd8aa72bb0980086cdbfed5633a2d913dadd0e9a4ecd84`  
		Last Modified: Tue, 12 Sep 2017 22:56:35 GMT  
		Size: 3.1 KB (3110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0664e44de3406582d405b5cf8c2d06976d15a6762ff395e85f610bcca0da7c67`  
		Last Modified: Tue, 12 Sep 2017 22:56:34 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e61969058bd506abbb0699def6df8b21f356bc5217b88069ed711afe4722d5`  
		Last Modified: Tue, 12 Sep 2017 22:56:36 GMT  
		Size: 6.9 MB (6852811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81a292f3132f54034920f1d038a9a7cbd371409ad96c2bc079de52a6953796b`  
		Last Modified: Tue, 12 Sep 2017 22:56:28 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee14d95f5afd1e094e9558286aeda716883ec628695b1a26a5ce4feea0e2aadc`  
		Last Modified: Tue, 12 Sep 2017 22:56:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59159b7fc3148e25123af34c7b5b70bcaab4dcd31a77f3785da243eab70cc93c`  
		Last Modified: Tue, 12 Sep 2017 22:56:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fb80373224b00c85c3a219c4ecd194e6942fc9a2f59e897547c9121213819d`  
		Last Modified: Tue, 12 Sep 2017 22:56:29 GMT  
		Size: 4.1 KB (4070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a8f525dec54ab225c73be7c0cce2756fd8bf3024cda90316fcbe4218357aea`  
		Last Modified: Tue, 12 Sep 2017 22:56:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbc2e3e8258be0b85892487a6ef603a511111270c46084eac613df7274c772e5`  
		Last Modified: Tue, 12 Sep 2017 22:57:11 GMT  
		Size: 193.0 B  
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
$ docker pull rabbitmq@sha256:6ed98420f94d8ac2ebc428ca0f2ccb9df5aab738ba1fed7a207a8eed609ecfaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:4b441a9c69e86c71447069f8b26995471ba53d238e42a60e75df754305902506
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23557450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84b68efed5e7995e7ecc49ff73442505e66cbbfe7d6b5fe70e97a7f4ecf93f7e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:28:37 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 12 Sep 2017 23:28:41 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 12 Sep 2017 23:28:52 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 12 Sep 2017 23:28:53 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Sep 2017 23:28:53 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 12 Sep 2017 23:28:53 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 23:28:53 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 12 Sep 2017 23:28:53 GMT
ENV RABBITMQ_VERSION=3.6.12
# Tue, 12 Sep 2017 23:29:00 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 12 Sep 2017 23:29:00 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 12 Sep 2017 23:29:01 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 12 Sep 2017 23:29:01 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 12 Sep 2017 23:29:02 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 12 Sep 2017 23:29:03 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 12 Sep 2017 23:29:03 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Tue, 12 Sep 2017 23:29:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Sep 2017 23:29:03 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 12 Sep 2017 23:29:03 GMT
CMD ["rabbitmq-server"]
# Tue, 12 Sep 2017 23:29:05 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 12 Sep 2017 23:29:05 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d7072095206cb12dcabbb996b37f687087eb17d2f77ce634a2babe08bf2025`  
		Last Modified: Tue, 12 Sep 2017 23:29:58 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec595d626e976dc560b7fe1d61e07ba9282dc0f68f710c44ae9aeaf6f1329ad`  
		Last Modified: Tue, 12 Sep 2017 23:29:58 GMT  
		Size: 8.2 KB (8217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66623e64b7321c7ca7955f811e4e6a5665ba5d3bc579e94a31157e28c085860f`  
		Last Modified: Tue, 12 Sep 2017 23:30:00 GMT  
		Size: 16.5 MB (16540699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4463675dda0fb5e854d2b4254fdb8d5f92d1f779f891eb5eada800433eb35267`  
		Last Modified: Tue, 12 Sep 2017 23:29:56 GMT  
		Size: 5.0 MB (5012169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3aad8278fdb1d5c61213b1dfe9925e60d25242b5343245268c23a1f6dcdb213`  
		Last Modified: Tue, 12 Sep 2017 23:29:55 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb409fdaddbd6e1aa4231d81690f1aa1a02c1f5bfb936708413078ba23fd0df9`  
		Last Modified: Tue, 12 Sep 2017 23:29:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ad337d5af387bd8878072fc689a40cf5e21aba22a556324a45b2384c7fb78e`  
		Last Modified: Tue, 12 Sep 2017 23:29:55 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4caacd69d344000dde14fee3c056ece051b1e993f77b4ba64e0c38d06359728`  
		Last Modified: Tue, 12 Sep 2017 23:29:56 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6270997d7fabb561c77227c169fcf9297e600ba88eda66747cda94199a7e2cc5`  
		Last Modified: Tue, 12 Sep 2017 23:30:14 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
