<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rabbitmq`

-	[`rabbitmq:3.6.10`](#rabbitmq3610)
-	[`rabbitmq:3.6`](#rabbitmq36)
-	[`rabbitmq:3`](#rabbitmq3)
-	[`rabbitmq:latest`](#rabbitmqlatest)
-	[`rabbitmq:3.6.10-management`](#rabbitmq3610-management)
-	[`rabbitmq:3.6-management`](#rabbitmq36-management)
-	[`rabbitmq:3-management`](#rabbitmq3-management)
-	[`rabbitmq:management`](#rabbitmqmanagement)
-	[`rabbitmq:3.6.10-alpine`](#rabbitmq3610-alpine)
-	[`rabbitmq:3.6-alpine`](#rabbitmq36-alpine)
-	[`rabbitmq:3-alpine`](#rabbitmq3-alpine)
-	[`rabbitmq:alpine`](#rabbitmqalpine)
-	[`rabbitmq:3.6.10-management-alpine`](#rabbitmq3610-management-alpine)
-	[`rabbitmq:3.6-management-alpine`](#rabbitmq36-management-alpine)
-	[`rabbitmq:3-management-alpine`](#rabbitmq3-management-alpine)
-	[`rabbitmq:management-alpine`](#rabbitmqmanagement-alpine)

## `rabbitmq:3.6.10`

```console
$ docker pull rabbitmq@sha256:b52dbca7185594e9fe736a06596cff7a0b5e1f38444e567e6d544c85b1d2068d
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.10` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62620504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79e8fb6325bcfd65ad25f3210aef99970a071c737b5ee41be323a69ff352c562`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 07 Jun 2017 17:50:38 GMT
ADD file:459661a8014d2183d9d0db1ecf6d4abd2a4419447e5f757b8d99aaf53fda13bc in / 
# Wed, 07 Jun 2017 17:50:38 GMT
CMD ["bash"]
# Mon, 19 Jun 2017 22:41:53 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 19 Jun 2017 22:41:55 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Mon, 19 Jun 2017 22:41:56 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Jun 2017 22:42:11 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 20 Jun 2017 18:25:01 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 18:25:20 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 20 Jun 2017 18:25:25 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 20 Jun 2017 18:25:48 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 20 Jun 2017 18:25:49 GMT
ENV RABBITMQ_VERSION=3.6.10
# Tue, 20 Jun 2017 18:25:50 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.10-1
# Tue, 20 Jun 2017 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 18:26:19 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 18:26:43 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 20 Jun 2017 18:26:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 20 Jun 2017 18:26:46 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 20 Jun 2017 18:27:11 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 20 Jun 2017 18:27:13 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 20 Jun 2017 18:27:37 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Tue, 20 Jun 2017 18:27:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Jun 2017 18:28:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 18:28:13 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 20 Jun 2017 18:28:15 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:cde19930ff63994cea33a84153c5dfdf7dbd261302ee5e8521a572b1207e0899`  
		Last Modified: Wed, 07 Jun 2017 18:10:49 GMT  
		Size: 22.5 MB (22487001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9e4203d9f3e21c794b6c1eadf1e95ae0a108bb0c6a47d7c85e037fc70aca20`  
		Last Modified: Mon, 19 Jun 2017 22:56:34 GMT  
		Size: 4.3 MB (4311807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d364f53d15f82222a9a84f61fcc6b1327f812767be0a3f8b4b2aa8e48027e8`  
		Last Modified: Mon, 19 Jun 2017 22:56:31 GMT  
		Size: 4.0 KB (4042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23af4ee3e43d2d06175ff4ce4415ca89ce5bfc43e79ad280cb942e6c971dd554`  
		Last Modified: Mon, 19 Jun 2017 22:56:31 GMT  
		Size: 951.9 KB (951895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9084bbfa9c96b4fd7802ba0afff898875d41b48c99f551850d0d9a6afc06ecd`  
		Last Modified: Tue, 20 Jun 2017 18:30:36 GMT  
		Size: 27.7 MB (27696619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fecce6149df48e9bd42968789e80159d8ff670df533f2331d4bce33b73f00d3`  
		Last Modified: Tue, 20 Jun 2017 18:30:30 GMT  
		Size: 3.1 KB (3095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ccede2dbb52f6a4e115c4ad8a996ba6a5b03986c7e06e7baa7c86196fa0fd7`  
		Last Modified: Tue, 20 Jun 2017 18:30:30 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7653fdd4ad21ef023470d61375b3c8a22112d594512322d6047eb6558521b532`  
		Last Modified: Tue, 20 Jun 2017 18:30:30 GMT  
		Size: 7.2 MB (7159138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c954da4bea0940f8fc5e56c629d40ecd14dc28ff0307b8625257717fcedefb7`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 2.2 KB (2238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e0791435f39ea163da68cd578be0f1ed14287f1a61b5d3751f495c560b0e89`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b18ec6086b1d8490fd0669fc00186d1d1148c431e440bd6d12e5e1bda8ee1d6e`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d37af585e9530dd88e8a9935ba66e80c6456a0bae8a513ad3f1ac2aa5473df`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 4.1 KB (4065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6085b8e0e5d9aca7c184c7a8f5d9b9ddc4f1c7f114129f5d7e7f132f05c38c6e`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6`

```console
$ docker pull rabbitmq@sha256:b52dbca7185594e9fe736a06596cff7a0b5e1f38444e567e6d544c85b1d2068d
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62620504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79e8fb6325bcfd65ad25f3210aef99970a071c737b5ee41be323a69ff352c562`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 07 Jun 2017 17:50:38 GMT
ADD file:459661a8014d2183d9d0db1ecf6d4abd2a4419447e5f757b8d99aaf53fda13bc in / 
# Wed, 07 Jun 2017 17:50:38 GMT
CMD ["bash"]
# Mon, 19 Jun 2017 22:41:53 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 19 Jun 2017 22:41:55 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Mon, 19 Jun 2017 22:41:56 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Jun 2017 22:42:11 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 20 Jun 2017 18:25:01 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 18:25:20 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 20 Jun 2017 18:25:25 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 20 Jun 2017 18:25:48 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 20 Jun 2017 18:25:49 GMT
ENV RABBITMQ_VERSION=3.6.10
# Tue, 20 Jun 2017 18:25:50 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.10-1
# Tue, 20 Jun 2017 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 18:26:19 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 18:26:43 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 20 Jun 2017 18:26:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 20 Jun 2017 18:26:46 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 20 Jun 2017 18:27:11 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 20 Jun 2017 18:27:13 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 20 Jun 2017 18:27:37 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Tue, 20 Jun 2017 18:27:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Jun 2017 18:28:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 18:28:13 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 20 Jun 2017 18:28:15 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:cde19930ff63994cea33a84153c5dfdf7dbd261302ee5e8521a572b1207e0899`  
		Last Modified: Wed, 07 Jun 2017 18:10:49 GMT  
		Size: 22.5 MB (22487001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9e4203d9f3e21c794b6c1eadf1e95ae0a108bb0c6a47d7c85e037fc70aca20`  
		Last Modified: Mon, 19 Jun 2017 22:56:34 GMT  
		Size: 4.3 MB (4311807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d364f53d15f82222a9a84f61fcc6b1327f812767be0a3f8b4b2aa8e48027e8`  
		Last Modified: Mon, 19 Jun 2017 22:56:31 GMT  
		Size: 4.0 KB (4042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23af4ee3e43d2d06175ff4ce4415ca89ce5bfc43e79ad280cb942e6c971dd554`  
		Last Modified: Mon, 19 Jun 2017 22:56:31 GMT  
		Size: 951.9 KB (951895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9084bbfa9c96b4fd7802ba0afff898875d41b48c99f551850d0d9a6afc06ecd`  
		Last Modified: Tue, 20 Jun 2017 18:30:36 GMT  
		Size: 27.7 MB (27696619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fecce6149df48e9bd42968789e80159d8ff670df533f2331d4bce33b73f00d3`  
		Last Modified: Tue, 20 Jun 2017 18:30:30 GMT  
		Size: 3.1 KB (3095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ccede2dbb52f6a4e115c4ad8a996ba6a5b03986c7e06e7baa7c86196fa0fd7`  
		Last Modified: Tue, 20 Jun 2017 18:30:30 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7653fdd4ad21ef023470d61375b3c8a22112d594512322d6047eb6558521b532`  
		Last Modified: Tue, 20 Jun 2017 18:30:30 GMT  
		Size: 7.2 MB (7159138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c954da4bea0940f8fc5e56c629d40ecd14dc28ff0307b8625257717fcedefb7`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 2.2 KB (2238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e0791435f39ea163da68cd578be0f1ed14287f1a61b5d3751f495c560b0e89`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b18ec6086b1d8490fd0669fc00186d1d1148c431e440bd6d12e5e1bda8ee1d6e`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d37af585e9530dd88e8a9935ba66e80c6456a0bae8a513ad3f1ac2aa5473df`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 4.1 KB (4065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6085b8e0e5d9aca7c184c7a8f5d9b9ddc4f1c7f114129f5d7e7f132f05c38c6e`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3`

```console
$ docker pull rabbitmq@sha256:b52dbca7185594e9fe736a06596cff7a0b5e1f38444e567e6d544c85b1d2068d
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62620504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79e8fb6325bcfd65ad25f3210aef99970a071c737b5ee41be323a69ff352c562`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 07 Jun 2017 17:50:38 GMT
ADD file:459661a8014d2183d9d0db1ecf6d4abd2a4419447e5f757b8d99aaf53fda13bc in / 
# Wed, 07 Jun 2017 17:50:38 GMT
CMD ["bash"]
# Mon, 19 Jun 2017 22:41:53 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 19 Jun 2017 22:41:55 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Mon, 19 Jun 2017 22:41:56 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Jun 2017 22:42:11 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 20 Jun 2017 18:25:01 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 18:25:20 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 20 Jun 2017 18:25:25 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 20 Jun 2017 18:25:48 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 20 Jun 2017 18:25:49 GMT
ENV RABBITMQ_VERSION=3.6.10
# Tue, 20 Jun 2017 18:25:50 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.10-1
# Tue, 20 Jun 2017 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 18:26:19 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 18:26:43 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 20 Jun 2017 18:26:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 20 Jun 2017 18:26:46 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 20 Jun 2017 18:27:11 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 20 Jun 2017 18:27:13 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 20 Jun 2017 18:27:37 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Tue, 20 Jun 2017 18:27:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Jun 2017 18:28:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 18:28:13 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 20 Jun 2017 18:28:15 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:cde19930ff63994cea33a84153c5dfdf7dbd261302ee5e8521a572b1207e0899`  
		Last Modified: Wed, 07 Jun 2017 18:10:49 GMT  
		Size: 22.5 MB (22487001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9e4203d9f3e21c794b6c1eadf1e95ae0a108bb0c6a47d7c85e037fc70aca20`  
		Last Modified: Mon, 19 Jun 2017 22:56:34 GMT  
		Size: 4.3 MB (4311807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d364f53d15f82222a9a84f61fcc6b1327f812767be0a3f8b4b2aa8e48027e8`  
		Last Modified: Mon, 19 Jun 2017 22:56:31 GMT  
		Size: 4.0 KB (4042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23af4ee3e43d2d06175ff4ce4415ca89ce5bfc43e79ad280cb942e6c971dd554`  
		Last Modified: Mon, 19 Jun 2017 22:56:31 GMT  
		Size: 951.9 KB (951895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9084bbfa9c96b4fd7802ba0afff898875d41b48c99f551850d0d9a6afc06ecd`  
		Last Modified: Tue, 20 Jun 2017 18:30:36 GMT  
		Size: 27.7 MB (27696619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fecce6149df48e9bd42968789e80159d8ff670df533f2331d4bce33b73f00d3`  
		Last Modified: Tue, 20 Jun 2017 18:30:30 GMT  
		Size: 3.1 KB (3095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ccede2dbb52f6a4e115c4ad8a996ba6a5b03986c7e06e7baa7c86196fa0fd7`  
		Last Modified: Tue, 20 Jun 2017 18:30:30 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7653fdd4ad21ef023470d61375b3c8a22112d594512322d6047eb6558521b532`  
		Last Modified: Tue, 20 Jun 2017 18:30:30 GMT  
		Size: 7.2 MB (7159138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c954da4bea0940f8fc5e56c629d40ecd14dc28ff0307b8625257717fcedefb7`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 2.2 KB (2238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e0791435f39ea163da68cd578be0f1ed14287f1a61b5d3751f495c560b0e89`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b18ec6086b1d8490fd0669fc00186d1d1148c431e440bd6d12e5e1bda8ee1d6e`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d37af585e9530dd88e8a9935ba66e80c6456a0bae8a513ad3f1ac2aa5473df`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 4.1 KB (4065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6085b8e0e5d9aca7c184c7a8f5d9b9ddc4f1c7f114129f5d7e7f132f05c38c6e`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:latest`

```console
$ docker pull rabbitmq@sha256:b52dbca7185594e9fe736a06596cff7a0b5e1f38444e567e6d544c85b1d2068d
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62620504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79e8fb6325bcfd65ad25f3210aef99970a071c737b5ee41be323a69ff352c562`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 07 Jun 2017 17:50:38 GMT
ADD file:459661a8014d2183d9d0db1ecf6d4abd2a4419447e5f757b8d99aaf53fda13bc in / 
# Wed, 07 Jun 2017 17:50:38 GMT
CMD ["bash"]
# Mon, 19 Jun 2017 22:41:53 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 19 Jun 2017 22:41:55 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Mon, 19 Jun 2017 22:41:56 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Jun 2017 22:42:11 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 20 Jun 2017 18:25:01 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 18:25:20 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 20 Jun 2017 18:25:25 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 20 Jun 2017 18:25:48 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 20 Jun 2017 18:25:49 GMT
ENV RABBITMQ_VERSION=3.6.10
# Tue, 20 Jun 2017 18:25:50 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.10-1
# Tue, 20 Jun 2017 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 18:26:19 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 18:26:43 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 20 Jun 2017 18:26:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 20 Jun 2017 18:26:46 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 20 Jun 2017 18:27:11 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 20 Jun 2017 18:27:13 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 20 Jun 2017 18:27:37 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Tue, 20 Jun 2017 18:27:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Jun 2017 18:28:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 18:28:13 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 20 Jun 2017 18:28:15 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:cde19930ff63994cea33a84153c5dfdf7dbd261302ee5e8521a572b1207e0899`  
		Last Modified: Wed, 07 Jun 2017 18:10:49 GMT  
		Size: 22.5 MB (22487001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9e4203d9f3e21c794b6c1eadf1e95ae0a108bb0c6a47d7c85e037fc70aca20`  
		Last Modified: Mon, 19 Jun 2017 22:56:34 GMT  
		Size: 4.3 MB (4311807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d364f53d15f82222a9a84f61fcc6b1327f812767be0a3f8b4b2aa8e48027e8`  
		Last Modified: Mon, 19 Jun 2017 22:56:31 GMT  
		Size: 4.0 KB (4042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23af4ee3e43d2d06175ff4ce4415ca89ce5bfc43e79ad280cb942e6c971dd554`  
		Last Modified: Mon, 19 Jun 2017 22:56:31 GMT  
		Size: 951.9 KB (951895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9084bbfa9c96b4fd7802ba0afff898875d41b48c99f551850d0d9a6afc06ecd`  
		Last Modified: Tue, 20 Jun 2017 18:30:36 GMT  
		Size: 27.7 MB (27696619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fecce6149df48e9bd42968789e80159d8ff670df533f2331d4bce33b73f00d3`  
		Last Modified: Tue, 20 Jun 2017 18:30:30 GMT  
		Size: 3.1 KB (3095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ccede2dbb52f6a4e115c4ad8a996ba6a5b03986c7e06e7baa7c86196fa0fd7`  
		Last Modified: Tue, 20 Jun 2017 18:30:30 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7653fdd4ad21ef023470d61375b3c8a22112d594512322d6047eb6558521b532`  
		Last Modified: Tue, 20 Jun 2017 18:30:30 GMT  
		Size: 7.2 MB (7159138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c954da4bea0940f8fc5e56c629d40ecd14dc28ff0307b8625257717fcedefb7`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 2.2 KB (2238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e0791435f39ea163da68cd578be0f1ed14287f1a61b5d3751f495c560b0e89`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b18ec6086b1d8490fd0669fc00186d1d1148c431e440bd6d12e5e1bda8ee1d6e`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d37af585e9530dd88e8a9935ba66e80c6456a0bae8a513ad3f1ac2aa5473df`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 4.1 KB (4065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6085b8e0e5d9aca7c184c7a8f5d9b9ddc4f1c7f114129f5d7e7f132f05c38c6e`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.10-management`

```console
$ docker pull rabbitmq@sha256:cd476e52d8c76f8d314da94a4022f2054a4432a040ad4a903e3fadb82a8ad218
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.10-management` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62620692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc4164db75c962099813b018404b1de1fdd2101215134bc6665ccb9f80f119a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 07 Jun 2017 17:50:38 GMT
ADD file:459661a8014d2183d9d0db1ecf6d4abd2a4419447e5f757b8d99aaf53fda13bc in / 
# Wed, 07 Jun 2017 17:50:38 GMT
CMD ["bash"]
# Mon, 19 Jun 2017 22:41:53 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 19 Jun 2017 22:41:55 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Mon, 19 Jun 2017 22:41:56 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Jun 2017 22:42:11 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 20 Jun 2017 18:25:01 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 18:25:20 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 20 Jun 2017 18:25:25 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 20 Jun 2017 18:25:48 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 20 Jun 2017 18:25:49 GMT
ENV RABBITMQ_VERSION=3.6.10
# Tue, 20 Jun 2017 18:25:50 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.10-1
# Tue, 20 Jun 2017 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 18:26:19 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 18:26:43 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 20 Jun 2017 18:26:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 20 Jun 2017 18:26:46 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 20 Jun 2017 18:27:11 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 20 Jun 2017 18:27:13 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 20 Jun 2017 18:27:37 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Tue, 20 Jun 2017 18:27:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Jun 2017 18:28:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 18:28:13 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 20 Jun 2017 18:28:15 GMT
CMD ["rabbitmq-server"]
# Tue, 20 Jun 2017 18:29:31 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 20 Jun 2017 18:29:33 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:cde19930ff63994cea33a84153c5dfdf7dbd261302ee5e8521a572b1207e0899`  
		Last Modified: Wed, 07 Jun 2017 18:10:49 GMT  
		Size: 22.5 MB (22487001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9e4203d9f3e21c794b6c1eadf1e95ae0a108bb0c6a47d7c85e037fc70aca20`  
		Last Modified: Mon, 19 Jun 2017 22:56:34 GMT  
		Size: 4.3 MB (4311807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d364f53d15f82222a9a84f61fcc6b1327f812767be0a3f8b4b2aa8e48027e8`  
		Last Modified: Mon, 19 Jun 2017 22:56:31 GMT  
		Size: 4.0 KB (4042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23af4ee3e43d2d06175ff4ce4415ca89ce5bfc43e79ad280cb942e6c971dd554`  
		Last Modified: Mon, 19 Jun 2017 22:56:31 GMT  
		Size: 951.9 KB (951895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9084bbfa9c96b4fd7802ba0afff898875d41b48c99f551850d0d9a6afc06ecd`  
		Last Modified: Tue, 20 Jun 2017 18:30:36 GMT  
		Size: 27.7 MB (27696619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fecce6149df48e9bd42968789e80159d8ff670df533f2331d4bce33b73f00d3`  
		Last Modified: Tue, 20 Jun 2017 18:30:30 GMT  
		Size: 3.1 KB (3095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ccede2dbb52f6a4e115c4ad8a996ba6a5b03986c7e06e7baa7c86196fa0fd7`  
		Last Modified: Tue, 20 Jun 2017 18:30:30 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7653fdd4ad21ef023470d61375b3c8a22112d594512322d6047eb6558521b532`  
		Last Modified: Tue, 20 Jun 2017 18:30:30 GMT  
		Size: 7.2 MB (7159138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c954da4bea0940f8fc5e56c629d40ecd14dc28ff0307b8625257717fcedefb7`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 2.2 KB (2238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e0791435f39ea163da68cd578be0f1ed14287f1a61b5d3751f495c560b0e89`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b18ec6086b1d8490fd0669fc00186d1d1148c431e440bd6d12e5e1bda8ee1d6e`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d37af585e9530dd88e8a9935ba66e80c6456a0bae8a513ad3f1ac2aa5473df`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 4.1 KB (4065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6085b8e0e5d9aca7c184c7a8f5d9b9ddc4f1c7f114129f5d7e7f132f05c38c6e`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51679a6407eecd49d6d70bc639ca9b8fb8dd98e564090f216e05bdd2ee43676`  
		Last Modified: Tue, 20 Jun 2017 18:33:21 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management`

```console
$ docker pull rabbitmq@sha256:cd476e52d8c76f8d314da94a4022f2054a4432a040ad4a903e3fadb82a8ad218
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-management` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62620692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc4164db75c962099813b018404b1de1fdd2101215134bc6665ccb9f80f119a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 07 Jun 2017 17:50:38 GMT
ADD file:459661a8014d2183d9d0db1ecf6d4abd2a4419447e5f757b8d99aaf53fda13bc in / 
# Wed, 07 Jun 2017 17:50:38 GMT
CMD ["bash"]
# Mon, 19 Jun 2017 22:41:53 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 19 Jun 2017 22:41:55 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Mon, 19 Jun 2017 22:41:56 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Jun 2017 22:42:11 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 20 Jun 2017 18:25:01 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 18:25:20 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 20 Jun 2017 18:25:25 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 20 Jun 2017 18:25:48 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 20 Jun 2017 18:25:49 GMT
ENV RABBITMQ_VERSION=3.6.10
# Tue, 20 Jun 2017 18:25:50 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.10-1
# Tue, 20 Jun 2017 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 18:26:19 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 18:26:43 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 20 Jun 2017 18:26:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 20 Jun 2017 18:26:46 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 20 Jun 2017 18:27:11 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 20 Jun 2017 18:27:13 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 20 Jun 2017 18:27:37 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Tue, 20 Jun 2017 18:27:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Jun 2017 18:28:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 18:28:13 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 20 Jun 2017 18:28:15 GMT
CMD ["rabbitmq-server"]
# Tue, 20 Jun 2017 18:29:31 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 20 Jun 2017 18:29:33 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:cde19930ff63994cea33a84153c5dfdf7dbd261302ee5e8521a572b1207e0899`  
		Last Modified: Wed, 07 Jun 2017 18:10:49 GMT  
		Size: 22.5 MB (22487001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9e4203d9f3e21c794b6c1eadf1e95ae0a108bb0c6a47d7c85e037fc70aca20`  
		Last Modified: Mon, 19 Jun 2017 22:56:34 GMT  
		Size: 4.3 MB (4311807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d364f53d15f82222a9a84f61fcc6b1327f812767be0a3f8b4b2aa8e48027e8`  
		Last Modified: Mon, 19 Jun 2017 22:56:31 GMT  
		Size: 4.0 KB (4042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23af4ee3e43d2d06175ff4ce4415ca89ce5bfc43e79ad280cb942e6c971dd554`  
		Last Modified: Mon, 19 Jun 2017 22:56:31 GMT  
		Size: 951.9 KB (951895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9084bbfa9c96b4fd7802ba0afff898875d41b48c99f551850d0d9a6afc06ecd`  
		Last Modified: Tue, 20 Jun 2017 18:30:36 GMT  
		Size: 27.7 MB (27696619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fecce6149df48e9bd42968789e80159d8ff670df533f2331d4bce33b73f00d3`  
		Last Modified: Tue, 20 Jun 2017 18:30:30 GMT  
		Size: 3.1 KB (3095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ccede2dbb52f6a4e115c4ad8a996ba6a5b03986c7e06e7baa7c86196fa0fd7`  
		Last Modified: Tue, 20 Jun 2017 18:30:30 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7653fdd4ad21ef023470d61375b3c8a22112d594512322d6047eb6558521b532`  
		Last Modified: Tue, 20 Jun 2017 18:30:30 GMT  
		Size: 7.2 MB (7159138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c954da4bea0940f8fc5e56c629d40ecd14dc28ff0307b8625257717fcedefb7`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 2.2 KB (2238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e0791435f39ea163da68cd578be0f1ed14287f1a61b5d3751f495c560b0e89`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b18ec6086b1d8490fd0669fc00186d1d1148c431e440bd6d12e5e1bda8ee1d6e`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d37af585e9530dd88e8a9935ba66e80c6456a0bae8a513ad3f1ac2aa5473df`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 4.1 KB (4065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6085b8e0e5d9aca7c184c7a8f5d9b9ddc4f1c7f114129f5d7e7f132f05c38c6e`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51679a6407eecd49d6d70bc639ca9b8fb8dd98e564090f216e05bdd2ee43676`  
		Last Modified: Tue, 20 Jun 2017 18:33:21 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management`

```console
$ docker pull rabbitmq@sha256:cd476e52d8c76f8d314da94a4022f2054a4432a040ad4a903e3fadb82a8ad218
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-management` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62620692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc4164db75c962099813b018404b1de1fdd2101215134bc6665ccb9f80f119a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 07 Jun 2017 17:50:38 GMT
ADD file:459661a8014d2183d9d0db1ecf6d4abd2a4419447e5f757b8d99aaf53fda13bc in / 
# Wed, 07 Jun 2017 17:50:38 GMT
CMD ["bash"]
# Mon, 19 Jun 2017 22:41:53 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 19 Jun 2017 22:41:55 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Mon, 19 Jun 2017 22:41:56 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Jun 2017 22:42:11 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 20 Jun 2017 18:25:01 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 18:25:20 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 20 Jun 2017 18:25:25 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 20 Jun 2017 18:25:48 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 20 Jun 2017 18:25:49 GMT
ENV RABBITMQ_VERSION=3.6.10
# Tue, 20 Jun 2017 18:25:50 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.10-1
# Tue, 20 Jun 2017 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 18:26:19 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 18:26:43 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 20 Jun 2017 18:26:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 20 Jun 2017 18:26:46 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 20 Jun 2017 18:27:11 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 20 Jun 2017 18:27:13 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 20 Jun 2017 18:27:37 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Tue, 20 Jun 2017 18:27:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Jun 2017 18:28:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 18:28:13 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 20 Jun 2017 18:28:15 GMT
CMD ["rabbitmq-server"]
# Tue, 20 Jun 2017 18:29:31 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 20 Jun 2017 18:29:33 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:cde19930ff63994cea33a84153c5dfdf7dbd261302ee5e8521a572b1207e0899`  
		Last Modified: Wed, 07 Jun 2017 18:10:49 GMT  
		Size: 22.5 MB (22487001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9e4203d9f3e21c794b6c1eadf1e95ae0a108bb0c6a47d7c85e037fc70aca20`  
		Last Modified: Mon, 19 Jun 2017 22:56:34 GMT  
		Size: 4.3 MB (4311807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d364f53d15f82222a9a84f61fcc6b1327f812767be0a3f8b4b2aa8e48027e8`  
		Last Modified: Mon, 19 Jun 2017 22:56:31 GMT  
		Size: 4.0 KB (4042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23af4ee3e43d2d06175ff4ce4415ca89ce5bfc43e79ad280cb942e6c971dd554`  
		Last Modified: Mon, 19 Jun 2017 22:56:31 GMT  
		Size: 951.9 KB (951895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9084bbfa9c96b4fd7802ba0afff898875d41b48c99f551850d0d9a6afc06ecd`  
		Last Modified: Tue, 20 Jun 2017 18:30:36 GMT  
		Size: 27.7 MB (27696619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fecce6149df48e9bd42968789e80159d8ff670df533f2331d4bce33b73f00d3`  
		Last Modified: Tue, 20 Jun 2017 18:30:30 GMT  
		Size: 3.1 KB (3095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ccede2dbb52f6a4e115c4ad8a996ba6a5b03986c7e06e7baa7c86196fa0fd7`  
		Last Modified: Tue, 20 Jun 2017 18:30:30 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7653fdd4ad21ef023470d61375b3c8a22112d594512322d6047eb6558521b532`  
		Last Modified: Tue, 20 Jun 2017 18:30:30 GMT  
		Size: 7.2 MB (7159138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c954da4bea0940f8fc5e56c629d40ecd14dc28ff0307b8625257717fcedefb7`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 2.2 KB (2238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e0791435f39ea163da68cd578be0f1ed14287f1a61b5d3751f495c560b0e89`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b18ec6086b1d8490fd0669fc00186d1d1148c431e440bd6d12e5e1bda8ee1d6e`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d37af585e9530dd88e8a9935ba66e80c6456a0bae8a513ad3f1ac2aa5473df`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 4.1 KB (4065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6085b8e0e5d9aca7c184c7a8f5d9b9ddc4f1c7f114129f5d7e7f132f05c38c6e`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51679a6407eecd49d6d70bc639ca9b8fb8dd98e564090f216e05bdd2ee43676`  
		Last Modified: Tue, 20 Jun 2017 18:33:21 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management`

```console
$ docker pull rabbitmq@sha256:cd476e52d8c76f8d314da94a4022f2054a4432a040ad4a903e3fadb82a8ad218
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:management` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62620692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc4164db75c962099813b018404b1de1fdd2101215134bc6665ccb9f80f119a7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 07 Jun 2017 17:50:38 GMT
ADD file:459661a8014d2183d9d0db1ecf6d4abd2a4419447e5f757b8d99aaf53fda13bc in / 
# Wed, 07 Jun 2017 17:50:38 GMT
CMD ["bash"]
# Mon, 19 Jun 2017 22:41:53 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg2 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 19 Jun 2017 22:41:55 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Mon, 19 Jun 2017 22:41:56 GMT
ENV GOSU_VERSION=1.10
# Mon, 19 Jun 2017 22:42:11 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 20 Jun 2017 18:25:01 GMT
RUN set -ex; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 18:25:20 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 20 Jun 2017 18:25:25 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Tue, 20 Jun 2017 18:25:48 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 20 Jun 2017 18:25:49 GMT
ENV RABBITMQ_VERSION=3.6.10
# Tue, 20 Jun 2017 18:25:50 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.10-1
# Tue, 20 Jun 2017 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 18:26:19 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 18:26:43 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 20 Jun 2017 18:26:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 20 Jun 2017 18:26:46 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 20 Jun 2017 18:27:11 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 20 Jun 2017 18:27:13 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 20 Jun 2017 18:27:37 GMT
COPY file:59088ac4edb037f4105f65cb181914dddcf4a74f4a7413b37c87f830d928f955 in /usr/local/bin/ 
# Tue, 20 Jun 2017 18:27:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Jun 2017 18:28:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 18:28:13 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 20 Jun 2017 18:28:15 GMT
CMD ["rabbitmq-server"]
# Tue, 20 Jun 2017 18:29:31 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 20 Jun 2017 18:29:33 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:cde19930ff63994cea33a84153c5dfdf7dbd261302ee5e8521a572b1207e0899`  
		Last Modified: Wed, 07 Jun 2017 18:10:49 GMT  
		Size: 22.5 MB (22487001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9e4203d9f3e21c794b6c1eadf1e95ae0a108bb0c6a47d7c85e037fc70aca20`  
		Last Modified: Mon, 19 Jun 2017 22:56:34 GMT  
		Size: 4.3 MB (4311807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d364f53d15f82222a9a84f61fcc6b1327f812767be0a3f8b4b2aa8e48027e8`  
		Last Modified: Mon, 19 Jun 2017 22:56:31 GMT  
		Size: 4.0 KB (4042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23af4ee3e43d2d06175ff4ce4415ca89ce5bfc43e79ad280cb942e6c971dd554`  
		Last Modified: Mon, 19 Jun 2017 22:56:31 GMT  
		Size: 951.9 KB (951895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9084bbfa9c96b4fd7802ba0afff898875d41b48c99f551850d0d9a6afc06ecd`  
		Last Modified: Tue, 20 Jun 2017 18:30:36 GMT  
		Size: 27.7 MB (27696619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fecce6149df48e9bd42968789e80159d8ff670df533f2331d4bce33b73f00d3`  
		Last Modified: Tue, 20 Jun 2017 18:30:30 GMT  
		Size: 3.1 KB (3095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ccede2dbb52f6a4e115c4ad8a996ba6a5b03986c7e06e7baa7c86196fa0fd7`  
		Last Modified: Tue, 20 Jun 2017 18:30:30 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7653fdd4ad21ef023470d61375b3c8a22112d594512322d6047eb6558521b532`  
		Last Modified: Tue, 20 Jun 2017 18:30:30 GMT  
		Size: 7.2 MB (7159138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c954da4bea0940f8fc5e56c629d40ecd14dc28ff0307b8625257717fcedefb7`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 2.2 KB (2238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e0791435f39ea163da68cd578be0f1ed14287f1a61b5d3751f495c560b0e89`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b18ec6086b1d8490fd0669fc00186d1d1148c431e440bd6d12e5e1bda8ee1d6e`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d37af585e9530dd88e8a9935ba66e80c6456a0bae8a513ad3f1ac2aa5473df`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 4.1 KB (4065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6085b8e0e5d9aca7c184c7a8f5d9b9ddc4f1c7f114129f5d7e7f132f05c38c6e`  
		Last Modified: Tue, 20 Jun 2017 18:30:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51679a6407eecd49d6d70bc639ca9b8fb8dd98e564090f216e05bdd2ee43676`  
		Last Modified: Tue, 20 Jun 2017 18:33:21 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.10-alpine`

```console
$ docker pull rabbitmq@sha256:c030cd467de2f94604dde1febe14bdb4abf20322914fcc0ba35e66c904f7b04d
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.10-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23519951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69a00a092b61bf494b0447edade240a0486cb8dfcc1d4ba036d87211b5fb2f0d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:45:55 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Mon, 19 Jun 2017 22:46:22 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 19 Jun 2017 22:46:53 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Mon, 19 Jun 2017 22:46:54 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 19 Jun 2017 22:46:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 19 Jun 2017 22:46:57 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Jun 2017 22:46:58 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 19 Jun 2017 22:47:00 GMT
ENV RABBITMQ_VERSION=3.6.10
# Mon, 19 Jun 2017 22:47:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 19 Jun 2017 22:47:10 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 19 Jun 2017 22:47:13 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 19 Jun 2017 22:47:14 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 19 Jun 2017 22:47:16 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 19 Jun 2017 22:47:17 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 19 Jun 2017 22:47:19 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Mon, 19 Jun 2017 22:47:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 22:47:20 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 19 Jun 2017 22:47:21 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd32240de01e059926d11636e98f45f237eb06c67e682e2921711ca37d9e65f5`  
		Last Modified: Mon, 19 Jun 2017 23:03:21 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b4a43c23db50c1f1d2acd681248386f46d46c1d367fd6d43e6a1025072b100`  
		Last Modified: Mon, 19 Jun 2017 23:03:21 GMT  
		Size: 8.2 KB (8159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08586687de9fd21e7982799fc9e75b3034d2218fbcbe63640b59e4860460979`  
		Last Modified: Mon, 19 Jun 2017 23:03:25 GMT  
		Size: 16.5 MB (16540724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bde9244200b3648590c05c50273fd8bd7219df251f97e6a1e9c2f9a4ab5adc`  
		Last Modified: Mon, 19 Jun 2017 23:03:23 GMT  
		Size: 5.0 MB (4975158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddfd553587e9a88d9788029b05a6deabf1a1edc0b071ce2b75981bf533054717`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82da1746f8eef1e6927d59cd37739dc3c7d76d8eeccb6a8e7ca2c9fbe4eb3ab7`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b734f2624a00debd63b8cb2dae4585d41a0e87eb9c7fc7a456a706a9aba562`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b8fcc8e7bc6a917737bee82aacfe4b30fabe4fe71dd8b35624bea63b272a1e`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 4.1 KB (4056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-alpine`

```console
$ docker pull rabbitmq@sha256:c030cd467de2f94604dde1febe14bdb4abf20322914fcc0ba35e66c904f7b04d
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23519951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69a00a092b61bf494b0447edade240a0486cb8dfcc1d4ba036d87211b5fb2f0d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:45:55 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Mon, 19 Jun 2017 22:46:22 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 19 Jun 2017 22:46:53 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Mon, 19 Jun 2017 22:46:54 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 19 Jun 2017 22:46:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 19 Jun 2017 22:46:57 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Jun 2017 22:46:58 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 19 Jun 2017 22:47:00 GMT
ENV RABBITMQ_VERSION=3.6.10
# Mon, 19 Jun 2017 22:47:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 19 Jun 2017 22:47:10 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 19 Jun 2017 22:47:13 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 19 Jun 2017 22:47:14 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 19 Jun 2017 22:47:16 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 19 Jun 2017 22:47:17 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 19 Jun 2017 22:47:19 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Mon, 19 Jun 2017 22:47:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 22:47:20 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 19 Jun 2017 22:47:21 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd32240de01e059926d11636e98f45f237eb06c67e682e2921711ca37d9e65f5`  
		Last Modified: Mon, 19 Jun 2017 23:03:21 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b4a43c23db50c1f1d2acd681248386f46d46c1d367fd6d43e6a1025072b100`  
		Last Modified: Mon, 19 Jun 2017 23:03:21 GMT  
		Size: 8.2 KB (8159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08586687de9fd21e7982799fc9e75b3034d2218fbcbe63640b59e4860460979`  
		Last Modified: Mon, 19 Jun 2017 23:03:25 GMT  
		Size: 16.5 MB (16540724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bde9244200b3648590c05c50273fd8bd7219df251f97e6a1e9c2f9a4ab5adc`  
		Last Modified: Mon, 19 Jun 2017 23:03:23 GMT  
		Size: 5.0 MB (4975158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddfd553587e9a88d9788029b05a6deabf1a1edc0b071ce2b75981bf533054717`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82da1746f8eef1e6927d59cd37739dc3c7d76d8eeccb6a8e7ca2c9fbe4eb3ab7`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b734f2624a00debd63b8cb2dae4585d41a0e87eb9c7fc7a456a706a9aba562`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b8fcc8e7bc6a917737bee82aacfe4b30fabe4fe71dd8b35624bea63b272a1e`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 4.1 KB (4056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-alpine`

```console
$ docker pull rabbitmq@sha256:c030cd467de2f94604dde1febe14bdb4abf20322914fcc0ba35e66c904f7b04d
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23519951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69a00a092b61bf494b0447edade240a0486cb8dfcc1d4ba036d87211b5fb2f0d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:45:55 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Mon, 19 Jun 2017 22:46:22 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 19 Jun 2017 22:46:53 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Mon, 19 Jun 2017 22:46:54 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 19 Jun 2017 22:46:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 19 Jun 2017 22:46:57 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Jun 2017 22:46:58 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 19 Jun 2017 22:47:00 GMT
ENV RABBITMQ_VERSION=3.6.10
# Mon, 19 Jun 2017 22:47:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 19 Jun 2017 22:47:10 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 19 Jun 2017 22:47:13 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 19 Jun 2017 22:47:14 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 19 Jun 2017 22:47:16 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 19 Jun 2017 22:47:17 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 19 Jun 2017 22:47:19 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Mon, 19 Jun 2017 22:47:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 22:47:20 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 19 Jun 2017 22:47:21 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd32240de01e059926d11636e98f45f237eb06c67e682e2921711ca37d9e65f5`  
		Last Modified: Mon, 19 Jun 2017 23:03:21 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b4a43c23db50c1f1d2acd681248386f46d46c1d367fd6d43e6a1025072b100`  
		Last Modified: Mon, 19 Jun 2017 23:03:21 GMT  
		Size: 8.2 KB (8159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08586687de9fd21e7982799fc9e75b3034d2218fbcbe63640b59e4860460979`  
		Last Modified: Mon, 19 Jun 2017 23:03:25 GMT  
		Size: 16.5 MB (16540724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bde9244200b3648590c05c50273fd8bd7219df251f97e6a1e9c2f9a4ab5adc`  
		Last Modified: Mon, 19 Jun 2017 23:03:23 GMT  
		Size: 5.0 MB (4975158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddfd553587e9a88d9788029b05a6deabf1a1edc0b071ce2b75981bf533054717`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82da1746f8eef1e6927d59cd37739dc3c7d76d8eeccb6a8e7ca2c9fbe4eb3ab7`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b734f2624a00debd63b8cb2dae4585d41a0e87eb9c7fc7a456a706a9aba562`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b8fcc8e7bc6a917737bee82aacfe4b30fabe4fe71dd8b35624bea63b272a1e`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 4.1 KB (4056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:alpine`

```console
$ docker pull rabbitmq@sha256:c030cd467de2f94604dde1febe14bdb4abf20322914fcc0ba35e66c904f7b04d
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23519951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69a00a092b61bf494b0447edade240a0486cb8dfcc1d4ba036d87211b5fb2f0d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:45:55 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Mon, 19 Jun 2017 22:46:22 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 19 Jun 2017 22:46:53 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Mon, 19 Jun 2017 22:46:54 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 19 Jun 2017 22:46:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 19 Jun 2017 22:46:57 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Jun 2017 22:46:58 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 19 Jun 2017 22:47:00 GMT
ENV RABBITMQ_VERSION=3.6.10
# Mon, 19 Jun 2017 22:47:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 19 Jun 2017 22:47:10 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 19 Jun 2017 22:47:13 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 19 Jun 2017 22:47:14 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 19 Jun 2017 22:47:16 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 19 Jun 2017 22:47:17 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 19 Jun 2017 22:47:19 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Mon, 19 Jun 2017 22:47:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 22:47:20 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 19 Jun 2017 22:47:21 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd32240de01e059926d11636e98f45f237eb06c67e682e2921711ca37d9e65f5`  
		Last Modified: Mon, 19 Jun 2017 23:03:21 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b4a43c23db50c1f1d2acd681248386f46d46c1d367fd6d43e6a1025072b100`  
		Last Modified: Mon, 19 Jun 2017 23:03:21 GMT  
		Size: 8.2 KB (8159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08586687de9fd21e7982799fc9e75b3034d2218fbcbe63640b59e4860460979`  
		Last Modified: Mon, 19 Jun 2017 23:03:25 GMT  
		Size: 16.5 MB (16540724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bde9244200b3648590c05c50273fd8bd7219df251f97e6a1e9c2f9a4ab5adc`  
		Last Modified: Mon, 19 Jun 2017 23:03:23 GMT  
		Size: 5.0 MB (4975158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddfd553587e9a88d9788029b05a6deabf1a1edc0b071ce2b75981bf533054717`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82da1746f8eef1e6927d59cd37739dc3c7d76d8eeccb6a8e7ca2c9fbe4eb3ab7`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b734f2624a00debd63b8cb2dae4585d41a0e87eb9c7fc7a456a706a9aba562`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b8fcc8e7bc6a917737bee82aacfe4b30fabe4fe71dd8b35624bea63b272a1e`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 4.1 KB (4056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.10-management-alpine`

```console
$ docker pull rabbitmq@sha256:4aefab0b84bef23deb700473063107829319bce5996c79d8bc9534aada7e57ee
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.10-management-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23520140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00219a0f95994648606f69aae2e17095b4840922e2e71e5815ae025ac9d1ef5d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:45:55 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Mon, 19 Jun 2017 22:46:22 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 19 Jun 2017 22:46:53 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Mon, 19 Jun 2017 22:46:54 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 19 Jun 2017 22:46:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 19 Jun 2017 22:46:57 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Jun 2017 22:46:58 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 19 Jun 2017 22:47:00 GMT
ENV RABBITMQ_VERSION=3.6.10
# Mon, 19 Jun 2017 22:47:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 19 Jun 2017 22:47:10 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 19 Jun 2017 22:47:13 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 19 Jun 2017 22:47:14 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 19 Jun 2017 22:47:16 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 19 Jun 2017 22:47:17 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 19 Jun 2017 22:47:19 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Mon, 19 Jun 2017 22:47:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 22:47:20 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 19 Jun 2017 22:47:21 GMT
CMD ["rabbitmq-server"]
# Mon, 19 Jun 2017 22:48:29 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 19 Jun 2017 22:48:30 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd32240de01e059926d11636e98f45f237eb06c67e682e2921711ca37d9e65f5`  
		Last Modified: Mon, 19 Jun 2017 23:03:21 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b4a43c23db50c1f1d2acd681248386f46d46c1d367fd6d43e6a1025072b100`  
		Last Modified: Mon, 19 Jun 2017 23:03:21 GMT  
		Size: 8.2 KB (8159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08586687de9fd21e7982799fc9e75b3034d2218fbcbe63640b59e4860460979`  
		Last Modified: Mon, 19 Jun 2017 23:03:25 GMT  
		Size: 16.5 MB (16540724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bde9244200b3648590c05c50273fd8bd7219df251f97e6a1e9c2f9a4ab5adc`  
		Last Modified: Mon, 19 Jun 2017 23:03:23 GMT  
		Size: 5.0 MB (4975158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddfd553587e9a88d9788029b05a6deabf1a1edc0b071ce2b75981bf533054717`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82da1746f8eef1e6927d59cd37739dc3c7d76d8eeccb6a8e7ca2c9fbe4eb3ab7`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b734f2624a00debd63b8cb2dae4585d41a0e87eb9c7fc7a456a706a9aba562`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b8fcc8e7bc6a917737bee82aacfe4b30fabe4fe71dd8b35624bea63b272a1e`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 4.1 KB (4056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:000ba7632dd85ca0a85f07f7acc59742d3cc88bfae0142ed6f85929f51d35628`  
		Last Modified: Mon, 19 Jun 2017 23:06:56 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management-alpine`

```console
$ docker pull rabbitmq@sha256:4aefab0b84bef23deb700473063107829319bce5996c79d8bc9534aada7e57ee
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-management-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23520140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00219a0f95994648606f69aae2e17095b4840922e2e71e5815ae025ac9d1ef5d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:45:55 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Mon, 19 Jun 2017 22:46:22 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 19 Jun 2017 22:46:53 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Mon, 19 Jun 2017 22:46:54 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 19 Jun 2017 22:46:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 19 Jun 2017 22:46:57 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Jun 2017 22:46:58 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 19 Jun 2017 22:47:00 GMT
ENV RABBITMQ_VERSION=3.6.10
# Mon, 19 Jun 2017 22:47:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 19 Jun 2017 22:47:10 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 19 Jun 2017 22:47:13 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 19 Jun 2017 22:47:14 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 19 Jun 2017 22:47:16 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 19 Jun 2017 22:47:17 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 19 Jun 2017 22:47:19 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Mon, 19 Jun 2017 22:47:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 22:47:20 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 19 Jun 2017 22:47:21 GMT
CMD ["rabbitmq-server"]
# Mon, 19 Jun 2017 22:48:29 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 19 Jun 2017 22:48:30 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd32240de01e059926d11636e98f45f237eb06c67e682e2921711ca37d9e65f5`  
		Last Modified: Mon, 19 Jun 2017 23:03:21 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b4a43c23db50c1f1d2acd681248386f46d46c1d367fd6d43e6a1025072b100`  
		Last Modified: Mon, 19 Jun 2017 23:03:21 GMT  
		Size: 8.2 KB (8159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08586687de9fd21e7982799fc9e75b3034d2218fbcbe63640b59e4860460979`  
		Last Modified: Mon, 19 Jun 2017 23:03:25 GMT  
		Size: 16.5 MB (16540724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bde9244200b3648590c05c50273fd8bd7219df251f97e6a1e9c2f9a4ab5adc`  
		Last Modified: Mon, 19 Jun 2017 23:03:23 GMT  
		Size: 5.0 MB (4975158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddfd553587e9a88d9788029b05a6deabf1a1edc0b071ce2b75981bf533054717`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82da1746f8eef1e6927d59cd37739dc3c7d76d8eeccb6a8e7ca2c9fbe4eb3ab7`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b734f2624a00debd63b8cb2dae4585d41a0e87eb9c7fc7a456a706a9aba562`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b8fcc8e7bc6a917737bee82aacfe4b30fabe4fe71dd8b35624bea63b272a1e`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 4.1 KB (4056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:000ba7632dd85ca0a85f07f7acc59742d3cc88bfae0142ed6f85929f51d35628`  
		Last Modified: Mon, 19 Jun 2017 23:06:56 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management-alpine`

```console
$ docker pull rabbitmq@sha256:4aefab0b84bef23deb700473063107829319bce5996c79d8bc9534aada7e57ee
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-management-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23520140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00219a0f95994648606f69aae2e17095b4840922e2e71e5815ae025ac9d1ef5d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:45:55 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Mon, 19 Jun 2017 22:46:22 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 19 Jun 2017 22:46:53 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Mon, 19 Jun 2017 22:46:54 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 19 Jun 2017 22:46:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 19 Jun 2017 22:46:57 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Jun 2017 22:46:58 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 19 Jun 2017 22:47:00 GMT
ENV RABBITMQ_VERSION=3.6.10
# Mon, 19 Jun 2017 22:47:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 19 Jun 2017 22:47:10 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 19 Jun 2017 22:47:13 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 19 Jun 2017 22:47:14 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 19 Jun 2017 22:47:16 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 19 Jun 2017 22:47:17 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 19 Jun 2017 22:47:19 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Mon, 19 Jun 2017 22:47:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 22:47:20 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 19 Jun 2017 22:47:21 GMT
CMD ["rabbitmq-server"]
# Mon, 19 Jun 2017 22:48:29 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 19 Jun 2017 22:48:30 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd32240de01e059926d11636e98f45f237eb06c67e682e2921711ca37d9e65f5`  
		Last Modified: Mon, 19 Jun 2017 23:03:21 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b4a43c23db50c1f1d2acd681248386f46d46c1d367fd6d43e6a1025072b100`  
		Last Modified: Mon, 19 Jun 2017 23:03:21 GMT  
		Size: 8.2 KB (8159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08586687de9fd21e7982799fc9e75b3034d2218fbcbe63640b59e4860460979`  
		Last Modified: Mon, 19 Jun 2017 23:03:25 GMT  
		Size: 16.5 MB (16540724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bde9244200b3648590c05c50273fd8bd7219df251f97e6a1e9c2f9a4ab5adc`  
		Last Modified: Mon, 19 Jun 2017 23:03:23 GMT  
		Size: 5.0 MB (4975158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddfd553587e9a88d9788029b05a6deabf1a1edc0b071ce2b75981bf533054717`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82da1746f8eef1e6927d59cd37739dc3c7d76d8eeccb6a8e7ca2c9fbe4eb3ab7`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b734f2624a00debd63b8cb2dae4585d41a0e87eb9c7fc7a456a706a9aba562`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b8fcc8e7bc6a917737bee82aacfe4b30fabe4fe71dd8b35624bea63b272a1e`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 4.1 KB (4056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:000ba7632dd85ca0a85f07f7acc59742d3cc88bfae0142ed6f85929f51d35628`  
		Last Modified: Mon, 19 Jun 2017 23:06:56 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management-alpine`

```console
$ docker pull rabbitmq@sha256:4aefab0b84bef23deb700473063107829319bce5996c79d8bc9534aada7e57ee
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:management-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23520140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00219a0f95994648606f69aae2e17095b4840922e2e71e5815ae025ac9d1ef5d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:45:55 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Mon, 19 Jun 2017 22:46:22 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 19 Jun 2017 22:46:53 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Mon, 19 Jun 2017 22:46:54 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 19 Jun 2017 22:46:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 19 Jun 2017 22:46:57 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Jun 2017 22:46:58 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 19 Jun 2017 22:47:00 GMT
ENV RABBITMQ_VERSION=3.6.10
# Mon, 19 Jun 2017 22:47:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 19 Jun 2017 22:47:10 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 19 Jun 2017 22:47:13 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 19 Jun 2017 22:47:14 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 19 Jun 2017 22:47:16 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 19 Jun 2017 22:47:17 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 19 Jun 2017 22:47:19 GMT
COPY file:473db9fea9f105dc60d99348b2b9c46a2b29253efdf78906b7d50b9bfabd2a92 in /usr/local/bin/ 
# Mon, 19 Jun 2017 22:47:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Jun 2017 22:47:20 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 19 Jun 2017 22:47:21 GMT
CMD ["rabbitmq-server"]
# Mon, 19 Jun 2017 22:48:29 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 19 Jun 2017 22:48:30 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd32240de01e059926d11636e98f45f237eb06c67e682e2921711ca37d9e65f5`  
		Last Modified: Mon, 19 Jun 2017 23:03:21 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b4a43c23db50c1f1d2acd681248386f46d46c1d367fd6d43e6a1025072b100`  
		Last Modified: Mon, 19 Jun 2017 23:03:21 GMT  
		Size: 8.2 KB (8159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08586687de9fd21e7982799fc9e75b3034d2218fbcbe63640b59e4860460979`  
		Last Modified: Mon, 19 Jun 2017 23:03:25 GMT  
		Size: 16.5 MB (16540724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bde9244200b3648590c05c50273fd8bd7219df251f97e6a1e9c2f9a4ab5adc`  
		Last Modified: Mon, 19 Jun 2017 23:03:23 GMT  
		Size: 5.0 MB (4975158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddfd553587e9a88d9788029b05a6deabf1a1edc0b071ce2b75981bf533054717`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82da1746f8eef1e6927d59cd37739dc3c7d76d8eeccb6a8e7ca2c9fbe4eb3ab7`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b734f2624a00debd63b8cb2dae4585d41a0e87eb9c7fc7a456a706a9aba562`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b8fcc8e7bc6a917737bee82aacfe4b30fabe4fe71dd8b35624bea63b272a1e`  
		Last Modified: Mon, 19 Jun 2017 23:03:19 GMT  
		Size: 4.1 KB (4056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:000ba7632dd85ca0a85f07f7acc59742d3cc88bfae0142ed6f85929f51d35628`  
		Last Modified: Mon, 19 Jun 2017 23:06:56 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
