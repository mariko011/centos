<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rabbitmq`

-	[`rabbitmq:3.6.9`](#rabbitmq369)
-	[`rabbitmq:3.6`](#rabbitmq36)
-	[`rabbitmq:3`](#rabbitmq3)
-	[`rabbitmq:latest`](#rabbitmqlatest)
-	[`rabbitmq:3.6.9-management`](#rabbitmq369-management)
-	[`rabbitmq:3.6-management`](#rabbitmq36-management)
-	[`rabbitmq:3-management`](#rabbitmq3-management)
-	[`rabbitmq:management`](#rabbitmqmanagement)
-	[`rabbitmq:3.6.9-alpine`](#rabbitmq369-alpine)
-	[`rabbitmq:3.6-alpine`](#rabbitmq36-alpine)
-	[`rabbitmq:3-alpine`](#rabbitmq3-alpine)
-	[`rabbitmq:alpine`](#rabbitmqalpine)
-	[`rabbitmq:3.6.9-management-alpine`](#rabbitmq369-management-alpine)
-	[`rabbitmq:3.6-management-alpine`](#rabbitmq36-management-alpine)
-	[`rabbitmq:3-management-alpine`](#rabbitmq3-management-alpine)
-	[`rabbitmq:management-alpine`](#rabbitmqmanagement-alpine)

## `rabbitmq:3.6.9`

```console
$ docker pull rabbitmq@sha256:9f5536f8bf6243b6dfd74dd9fb13d460f55b8e633d20f9a970c228c61b07f987
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.9` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.9 MB (87912916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb2e4968538af6e3cb202f6c23b21b0b0af4b43c38cae847b72b56b4a1b60e8e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:39:04 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 25 Apr 2017 04:39:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Apr 2017 04:39:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 25 Apr 2017 04:39:28 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 25 Apr 2017 04:39:29 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Tue, 25 Apr 2017 04:40:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:40:05 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 25 Apr 2017 04:40:08 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 25 Apr 2017 04:40:09 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 25 Apr 2017 04:40:10 GMT
ENV RABBITMQ_VERSION=3.6.9
# Tue, 25 Apr 2017 04:40:10 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.9-1
# Tue, 25 Apr 2017 04:40:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:40:37 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 04:40:37 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 25 Apr 2017 04:40:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 25 Apr 2017 04:40:39 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 25 Apr 2017 04:40:41 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 25 Apr 2017 04:40:43 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 25 Apr 2017 04:40:44 GMT
COPY file:e75247400159c3b996450d9b4ef7078cf9587833f465ab2904b2b7ef35be65e9 in /usr/local/bin/ 
# Tue, 25 Apr 2017 04:40:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 25 Apr 2017 04:40:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Apr 2017 04:40:47 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 25 Apr 2017 04:40:48 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29be428fdb96cd922aaede323892238c85b6a83f2edb1cd8306a9a9c5389ba8a`  
		Last Modified: Tue, 25 Apr 2017 21:12:39 GMT  
		Size: 4.4 KB (4363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470864d09cba282f8daa7eede6fd7aa20af4a16b7fcbd6bff3d0e4d30a931e22`  
		Last Modified: Tue, 25 Apr 2017 21:12:40 GMT  
		Size: 1.3 MB (1308207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acea23654bb074a8e0a58f4bfdbcb937ef440fd9fcb410f3eeb77f2ea21c110f`  
		Last Modified: Tue, 25 Apr 2017 21:12:39 GMT  
		Size: 2.5 KB (2504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9962a95a84c6bd397ddfd35f0c7953b381db5c617651fa2aa6d2fe64b9aa53`  
		Last Modified: Tue, 25 Apr 2017 21:12:37 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289be2b3d500a7d6ae3ae8921c9572a7654f584eb3733538ede14aaf38326488`  
		Last Modified: Tue, 25 Apr 2017 21:12:42 GMT  
		Size: 28.3 MB (28348313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce1488bab14721a4330d1c201218cc05bc06d44fc380addbb589c5eb4b9ce82`  
		Last Modified: Tue, 25 Apr 2017 21:12:37 GMT  
		Size: 3.1 KB (3099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b59715834b8c07a4582ad91315d99079f9343fa15392fa9b07f865a2056d69`  
		Last Modified: Tue, 25 Apr 2017 21:12:36 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6978c773f0e39a6cd6a00bc93c330966ae25a3da0ea54fe17c5ca982331ee030`  
		Last Modified: Tue, 25 Apr 2017 21:12:37 GMT  
		Size: 5.7 MB (5689048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdab4e6ac1172cefc6e586acc99c3f87a09e9efcd56bdd47a1d3e71c965aff24`  
		Last Modified: Tue, 25 Apr 2017 21:12:34 GMT  
		Size: 2.2 KB (2233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a77002da12235ce33ded6958608df4029620c56f188047725aff6d693b3cd39`  
		Last Modified: Tue, 25 Apr 2017 21:12:35 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be12bc075e51a0aefdc86fb34beafe479074d125719ab3b9d769b8f56e826e55`  
		Last Modified: Tue, 25 Apr 2017 21:12:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a807b307ee22db2d3ef9fcb9400990447dea0da0ca68a24c1c7d07d86ad7d81`  
		Last Modified: Tue, 25 Apr 2017 21:12:34 GMT  
		Size: 4.0 KB (4043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492679ee4e41a51167263251691d56fe0ab66ee5b163de1c0eec15842d53fd5d`  
		Last Modified: Tue, 25 Apr 2017 21:12:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6`

```console
$ docker pull rabbitmq@sha256:9f5536f8bf6243b6dfd74dd9fb13d460f55b8e633d20f9a970c228c61b07f987
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.9 MB (87912916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb2e4968538af6e3cb202f6c23b21b0b0af4b43c38cae847b72b56b4a1b60e8e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:39:04 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 25 Apr 2017 04:39:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Apr 2017 04:39:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 25 Apr 2017 04:39:28 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 25 Apr 2017 04:39:29 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Tue, 25 Apr 2017 04:40:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:40:05 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 25 Apr 2017 04:40:08 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 25 Apr 2017 04:40:09 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 25 Apr 2017 04:40:10 GMT
ENV RABBITMQ_VERSION=3.6.9
# Tue, 25 Apr 2017 04:40:10 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.9-1
# Tue, 25 Apr 2017 04:40:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:40:37 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 04:40:37 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 25 Apr 2017 04:40:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 25 Apr 2017 04:40:39 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 25 Apr 2017 04:40:41 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 25 Apr 2017 04:40:43 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 25 Apr 2017 04:40:44 GMT
COPY file:e75247400159c3b996450d9b4ef7078cf9587833f465ab2904b2b7ef35be65e9 in /usr/local/bin/ 
# Tue, 25 Apr 2017 04:40:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 25 Apr 2017 04:40:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Apr 2017 04:40:47 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 25 Apr 2017 04:40:48 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29be428fdb96cd922aaede323892238c85b6a83f2edb1cd8306a9a9c5389ba8a`  
		Last Modified: Tue, 25 Apr 2017 21:12:39 GMT  
		Size: 4.4 KB (4363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470864d09cba282f8daa7eede6fd7aa20af4a16b7fcbd6bff3d0e4d30a931e22`  
		Last Modified: Tue, 25 Apr 2017 21:12:40 GMT  
		Size: 1.3 MB (1308207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acea23654bb074a8e0a58f4bfdbcb937ef440fd9fcb410f3eeb77f2ea21c110f`  
		Last Modified: Tue, 25 Apr 2017 21:12:39 GMT  
		Size: 2.5 KB (2504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9962a95a84c6bd397ddfd35f0c7953b381db5c617651fa2aa6d2fe64b9aa53`  
		Last Modified: Tue, 25 Apr 2017 21:12:37 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289be2b3d500a7d6ae3ae8921c9572a7654f584eb3733538ede14aaf38326488`  
		Last Modified: Tue, 25 Apr 2017 21:12:42 GMT  
		Size: 28.3 MB (28348313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce1488bab14721a4330d1c201218cc05bc06d44fc380addbb589c5eb4b9ce82`  
		Last Modified: Tue, 25 Apr 2017 21:12:37 GMT  
		Size: 3.1 KB (3099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b59715834b8c07a4582ad91315d99079f9343fa15392fa9b07f865a2056d69`  
		Last Modified: Tue, 25 Apr 2017 21:12:36 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6978c773f0e39a6cd6a00bc93c330966ae25a3da0ea54fe17c5ca982331ee030`  
		Last Modified: Tue, 25 Apr 2017 21:12:37 GMT  
		Size: 5.7 MB (5689048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdab4e6ac1172cefc6e586acc99c3f87a09e9efcd56bdd47a1d3e71c965aff24`  
		Last Modified: Tue, 25 Apr 2017 21:12:34 GMT  
		Size: 2.2 KB (2233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a77002da12235ce33ded6958608df4029620c56f188047725aff6d693b3cd39`  
		Last Modified: Tue, 25 Apr 2017 21:12:35 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be12bc075e51a0aefdc86fb34beafe479074d125719ab3b9d769b8f56e826e55`  
		Last Modified: Tue, 25 Apr 2017 21:12:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a807b307ee22db2d3ef9fcb9400990447dea0da0ca68a24c1c7d07d86ad7d81`  
		Last Modified: Tue, 25 Apr 2017 21:12:34 GMT  
		Size: 4.0 KB (4043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492679ee4e41a51167263251691d56fe0ab66ee5b163de1c0eec15842d53fd5d`  
		Last Modified: Tue, 25 Apr 2017 21:12:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3`

```console
$ docker pull rabbitmq@sha256:9f5536f8bf6243b6dfd74dd9fb13d460f55b8e633d20f9a970c228c61b07f987
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.9 MB (87912916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb2e4968538af6e3cb202f6c23b21b0b0af4b43c38cae847b72b56b4a1b60e8e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:39:04 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 25 Apr 2017 04:39:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Apr 2017 04:39:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 25 Apr 2017 04:39:28 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 25 Apr 2017 04:39:29 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Tue, 25 Apr 2017 04:40:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:40:05 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 25 Apr 2017 04:40:08 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 25 Apr 2017 04:40:09 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 25 Apr 2017 04:40:10 GMT
ENV RABBITMQ_VERSION=3.6.9
# Tue, 25 Apr 2017 04:40:10 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.9-1
# Tue, 25 Apr 2017 04:40:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:40:37 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 04:40:37 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 25 Apr 2017 04:40:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 25 Apr 2017 04:40:39 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 25 Apr 2017 04:40:41 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 25 Apr 2017 04:40:43 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 25 Apr 2017 04:40:44 GMT
COPY file:e75247400159c3b996450d9b4ef7078cf9587833f465ab2904b2b7ef35be65e9 in /usr/local/bin/ 
# Tue, 25 Apr 2017 04:40:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 25 Apr 2017 04:40:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Apr 2017 04:40:47 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 25 Apr 2017 04:40:48 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29be428fdb96cd922aaede323892238c85b6a83f2edb1cd8306a9a9c5389ba8a`  
		Last Modified: Tue, 25 Apr 2017 21:12:39 GMT  
		Size: 4.4 KB (4363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470864d09cba282f8daa7eede6fd7aa20af4a16b7fcbd6bff3d0e4d30a931e22`  
		Last Modified: Tue, 25 Apr 2017 21:12:40 GMT  
		Size: 1.3 MB (1308207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acea23654bb074a8e0a58f4bfdbcb937ef440fd9fcb410f3eeb77f2ea21c110f`  
		Last Modified: Tue, 25 Apr 2017 21:12:39 GMT  
		Size: 2.5 KB (2504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9962a95a84c6bd397ddfd35f0c7953b381db5c617651fa2aa6d2fe64b9aa53`  
		Last Modified: Tue, 25 Apr 2017 21:12:37 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289be2b3d500a7d6ae3ae8921c9572a7654f584eb3733538ede14aaf38326488`  
		Last Modified: Tue, 25 Apr 2017 21:12:42 GMT  
		Size: 28.3 MB (28348313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce1488bab14721a4330d1c201218cc05bc06d44fc380addbb589c5eb4b9ce82`  
		Last Modified: Tue, 25 Apr 2017 21:12:37 GMT  
		Size: 3.1 KB (3099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b59715834b8c07a4582ad91315d99079f9343fa15392fa9b07f865a2056d69`  
		Last Modified: Tue, 25 Apr 2017 21:12:36 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6978c773f0e39a6cd6a00bc93c330966ae25a3da0ea54fe17c5ca982331ee030`  
		Last Modified: Tue, 25 Apr 2017 21:12:37 GMT  
		Size: 5.7 MB (5689048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdab4e6ac1172cefc6e586acc99c3f87a09e9efcd56bdd47a1d3e71c965aff24`  
		Last Modified: Tue, 25 Apr 2017 21:12:34 GMT  
		Size: 2.2 KB (2233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a77002da12235ce33ded6958608df4029620c56f188047725aff6d693b3cd39`  
		Last Modified: Tue, 25 Apr 2017 21:12:35 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be12bc075e51a0aefdc86fb34beafe479074d125719ab3b9d769b8f56e826e55`  
		Last Modified: Tue, 25 Apr 2017 21:12:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a807b307ee22db2d3ef9fcb9400990447dea0da0ca68a24c1c7d07d86ad7d81`  
		Last Modified: Tue, 25 Apr 2017 21:12:34 GMT  
		Size: 4.0 KB (4043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492679ee4e41a51167263251691d56fe0ab66ee5b163de1c0eec15842d53fd5d`  
		Last Modified: Tue, 25 Apr 2017 21:12:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:latest`

```console
$ docker pull rabbitmq@sha256:9f5536f8bf6243b6dfd74dd9fb13d460f55b8e633d20f9a970c228c61b07f987
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.9 MB (87912916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb2e4968538af6e3cb202f6c23b21b0b0af4b43c38cae847b72b56b4a1b60e8e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:39:04 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 25 Apr 2017 04:39:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Apr 2017 04:39:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 25 Apr 2017 04:39:28 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 25 Apr 2017 04:39:29 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Tue, 25 Apr 2017 04:40:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:40:05 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 25 Apr 2017 04:40:08 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 25 Apr 2017 04:40:09 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 25 Apr 2017 04:40:10 GMT
ENV RABBITMQ_VERSION=3.6.9
# Tue, 25 Apr 2017 04:40:10 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.9-1
# Tue, 25 Apr 2017 04:40:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:40:37 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 04:40:37 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 25 Apr 2017 04:40:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 25 Apr 2017 04:40:39 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 25 Apr 2017 04:40:41 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 25 Apr 2017 04:40:43 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 25 Apr 2017 04:40:44 GMT
COPY file:e75247400159c3b996450d9b4ef7078cf9587833f465ab2904b2b7ef35be65e9 in /usr/local/bin/ 
# Tue, 25 Apr 2017 04:40:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 25 Apr 2017 04:40:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Apr 2017 04:40:47 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 25 Apr 2017 04:40:48 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29be428fdb96cd922aaede323892238c85b6a83f2edb1cd8306a9a9c5389ba8a`  
		Last Modified: Tue, 25 Apr 2017 21:12:39 GMT  
		Size: 4.4 KB (4363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470864d09cba282f8daa7eede6fd7aa20af4a16b7fcbd6bff3d0e4d30a931e22`  
		Last Modified: Tue, 25 Apr 2017 21:12:40 GMT  
		Size: 1.3 MB (1308207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acea23654bb074a8e0a58f4bfdbcb937ef440fd9fcb410f3eeb77f2ea21c110f`  
		Last Modified: Tue, 25 Apr 2017 21:12:39 GMT  
		Size: 2.5 KB (2504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9962a95a84c6bd397ddfd35f0c7953b381db5c617651fa2aa6d2fe64b9aa53`  
		Last Modified: Tue, 25 Apr 2017 21:12:37 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289be2b3d500a7d6ae3ae8921c9572a7654f584eb3733538ede14aaf38326488`  
		Last Modified: Tue, 25 Apr 2017 21:12:42 GMT  
		Size: 28.3 MB (28348313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce1488bab14721a4330d1c201218cc05bc06d44fc380addbb589c5eb4b9ce82`  
		Last Modified: Tue, 25 Apr 2017 21:12:37 GMT  
		Size: 3.1 KB (3099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b59715834b8c07a4582ad91315d99079f9343fa15392fa9b07f865a2056d69`  
		Last Modified: Tue, 25 Apr 2017 21:12:36 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6978c773f0e39a6cd6a00bc93c330966ae25a3da0ea54fe17c5ca982331ee030`  
		Last Modified: Tue, 25 Apr 2017 21:12:37 GMT  
		Size: 5.7 MB (5689048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdab4e6ac1172cefc6e586acc99c3f87a09e9efcd56bdd47a1d3e71c965aff24`  
		Last Modified: Tue, 25 Apr 2017 21:12:34 GMT  
		Size: 2.2 KB (2233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a77002da12235ce33ded6958608df4029620c56f188047725aff6d693b3cd39`  
		Last Modified: Tue, 25 Apr 2017 21:12:35 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be12bc075e51a0aefdc86fb34beafe479074d125719ab3b9d769b8f56e826e55`  
		Last Modified: Tue, 25 Apr 2017 21:12:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a807b307ee22db2d3ef9fcb9400990447dea0da0ca68a24c1c7d07d86ad7d81`  
		Last Modified: Tue, 25 Apr 2017 21:12:34 GMT  
		Size: 4.0 KB (4043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492679ee4e41a51167263251691d56fe0ab66ee5b163de1c0eec15842d53fd5d`  
		Last Modified: Tue, 25 Apr 2017 21:12:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.9-management`

```console
$ docker pull rabbitmq@sha256:31cce828920544cbec242dc24a3738347b5871976024444615962c3bf96a948e
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.9-management` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.9 MB (87913103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e69e14cc496eb56d25cb990ccd3b04deb1e21ec3a295f76cf913570ebff6276`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:39:04 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 25 Apr 2017 04:39:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Apr 2017 04:39:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 25 Apr 2017 04:39:28 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 25 Apr 2017 04:39:29 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Tue, 25 Apr 2017 04:40:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:40:05 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 25 Apr 2017 04:40:08 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 25 Apr 2017 04:40:09 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 25 Apr 2017 04:40:10 GMT
ENV RABBITMQ_VERSION=3.6.9
# Tue, 25 Apr 2017 04:40:10 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.9-1
# Tue, 25 Apr 2017 04:40:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:40:37 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 04:40:37 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 25 Apr 2017 04:40:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 25 Apr 2017 04:40:39 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 25 Apr 2017 04:40:41 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 25 Apr 2017 04:40:43 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 25 Apr 2017 04:40:44 GMT
COPY file:e75247400159c3b996450d9b4ef7078cf9587833f465ab2904b2b7ef35be65e9 in /usr/local/bin/ 
# Tue, 25 Apr 2017 04:40:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 25 Apr 2017 04:40:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Apr 2017 04:40:47 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 25 Apr 2017 04:40:48 GMT
CMD ["rabbitmq-server"]
# Tue, 25 Apr 2017 04:41:07 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 25 Apr 2017 04:41:08 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29be428fdb96cd922aaede323892238c85b6a83f2edb1cd8306a9a9c5389ba8a`  
		Last Modified: Tue, 25 Apr 2017 21:12:39 GMT  
		Size: 4.4 KB (4363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470864d09cba282f8daa7eede6fd7aa20af4a16b7fcbd6bff3d0e4d30a931e22`  
		Last Modified: Tue, 25 Apr 2017 21:12:40 GMT  
		Size: 1.3 MB (1308207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acea23654bb074a8e0a58f4bfdbcb937ef440fd9fcb410f3eeb77f2ea21c110f`  
		Last Modified: Tue, 25 Apr 2017 21:12:39 GMT  
		Size: 2.5 KB (2504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9962a95a84c6bd397ddfd35f0c7953b381db5c617651fa2aa6d2fe64b9aa53`  
		Last Modified: Tue, 25 Apr 2017 21:12:37 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289be2b3d500a7d6ae3ae8921c9572a7654f584eb3733538ede14aaf38326488`  
		Last Modified: Tue, 25 Apr 2017 21:12:42 GMT  
		Size: 28.3 MB (28348313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce1488bab14721a4330d1c201218cc05bc06d44fc380addbb589c5eb4b9ce82`  
		Last Modified: Tue, 25 Apr 2017 21:12:37 GMT  
		Size: 3.1 KB (3099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b59715834b8c07a4582ad91315d99079f9343fa15392fa9b07f865a2056d69`  
		Last Modified: Tue, 25 Apr 2017 21:12:36 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6978c773f0e39a6cd6a00bc93c330966ae25a3da0ea54fe17c5ca982331ee030`  
		Last Modified: Tue, 25 Apr 2017 21:12:37 GMT  
		Size: 5.7 MB (5689048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdab4e6ac1172cefc6e586acc99c3f87a09e9efcd56bdd47a1d3e71c965aff24`  
		Last Modified: Tue, 25 Apr 2017 21:12:34 GMT  
		Size: 2.2 KB (2233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a77002da12235ce33ded6958608df4029620c56f188047725aff6d693b3cd39`  
		Last Modified: Tue, 25 Apr 2017 21:12:35 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be12bc075e51a0aefdc86fb34beafe479074d125719ab3b9d769b8f56e826e55`  
		Last Modified: Tue, 25 Apr 2017 21:12:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a807b307ee22db2d3ef9fcb9400990447dea0da0ca68a24c1c7d07d86ad7d81`  
		Last Modified: Tue, 25 Apr 2017 21:12:34 GMT  
		Size: 4.0 KB (4043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492679ee4e41a51167263251691d56fe0ab66ee5b163de1c0eec15842d53fd5d`  
		Last Modified: Tue, 25 Apr 2017 21:12:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c0b1a7a758bfb271590c9ead3ae7550950e01685f06a9d13900828aa9e6da8`  
		Last Modified: Tue, 25 Apr 2017 21:14:05 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management`

```console
$ docker pull rabbitmq@sha256:31cce828920544cbec242dc24a3738347b5871976024444615962c3bf96a948e
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-management` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.9 MB (87913103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e69e14cc496eb56d25cb990ccd3b04deb1e21ec3a295f76cf913570ebff6276`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:39:04 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 25 Apr 2017 04:39:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Apr 2017 04:39:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 25 Apr 2017 04:39:28 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 25 Apr 2017 04:39:29 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Tue, 25 Apr 2017 04:40:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:40:05 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 25 Apr 2017 04:40:08 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 25 Apr 2017 04:40:09 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 25 Apr 2017 04:40:10 GMT
ENV RABBITMQ_VERSION=3.6.9
# Tue, 25 Apr 2017 04:40:10 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.9-1
# Tue, 25 Apr 2017 04:40:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:40:37 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 04:40:37 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 25 Apr 2017 04:40:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 25 Apr 2017 04:40:39 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 25 Apr 2017 04:40:41 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 25 Apr 2017 04:40:43 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 25 Apr 2017 04:40:44 GMT
COPY file:e75247400159c3b996450d9b4ef7078cf9587833f465ab2904b2b7ef35be65e9 in /usr/local/bin/ 
# Tue, 25 Apr 2017 04:40:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 25 Apr 2017 04:40:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Apr 2017 04:40:47 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 25 Apr 2017 04:40:48 GMT
CMD ["rabbitmq-server"]
# Tue, 25 Apr 2017 04:41:07 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 25 Apr 2017 04:41:08 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29be428fdb96cd922aaede323892238c85b6a83f2edb1cd8306a9a9c5389ba8a`  
		Last Modified: Tue, 25 Apr 2017 21:12:39 GMT  
		Size: 4.4 KB (4363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470864d09cba282f8daa7eede6fd7aa20af4a16b7fcbd6bff3d0e4d30a931e22`  
		Last Modified: Tue, 25 Apr 2017 21:12:40 GMT  
		Size: 1.3 MB (1308207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acea23654bb074a8e0a58f4bfdbcb937ef440fd9fcb410f3eeb77f2ea21c110f`  
		Last Modified: Tue, 25 Apr 2017 21:12:39 GMT  
		Size: 2.5 KB (2504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9962a95a84c6bd397ddfd35f0c7953b381db5c617651fa2aa6d2fe64b9aa53`  
		Last Modified: Tue, 25 Apr 2017 21:12:37 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289be2b3d500a7d6ae3ae8921c9572a7654f584eb3733538ede14aaf38326488`  
		Last Modified: Tue, 25 Apr 2017 21:12:42 GMT  
		Size: 28.3 MB (28348313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce1488bab14721a4330d1c201218cc05bc06d44fc380addbb589c5eb4b9ce82`  
		Last Modified: Tue, 25 Apr 2017 21:12:37 GMT  
		Size: 3.1 KB (3099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b59715834b8c07a4582ad91315d99079f9343fa15392fa9b07f865a2056d69`  
		Last Modified: Tue, 25 Apr 2017 21:12:36 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6978c773f0e39a6cd6a00bc93c330966ae25a3da0ea54fe17c5ca982331ee030`  
		Last Modified: Tue, 25 Apr 2017 21:12:37 GMT  
		Size: 5.7 MB (5689048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdab4e6ac1172cefc6e586acc99c3f87a09e9efcd56bdd47a1d3e71c965aff24`  
		Last Modified: Tue, 25 Apr 2017 21:12:34 GMT  
		Size: 2.2 KB (2233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a77002da12235ce33ded6958608df4029620c56f188047725aff6d693b3cd39`  
		Last Modified: Tue, 25 Apr 2017 21:12:35 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be12bc075e51a0aefdc86fb34beafe479074d125719ab3b9d769b8f56e826e55`  
		Last Modified: Tue, 25 Apr 2017 21:12:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a807b307ee22db2d3ef9fcb9400990447dea0da0ca68a24c1c7d07d86ad7d81`  
		Last Modified: Tue, 25 Apr 2017 21:12:34 GMT  
		Size: 4.0 KB (4043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492679ee4e41a51167263251691d56fe0ab66ee5b163de1c0eec15842d53fd5d`  
		Last Modified: Tue, 25 Apr 2017 21:12:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c0b1a7a758bfb271590c9ead3ae7550950e01685f06a9d13900828aa9e6da8`  
		Last Modified: Tue, 25 Apr 2017 21:14:05 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management`

```console
$ docker pull rabbitmq@sha256:31cce828920544cbec242dc24a3738347b5871976024444615962c3bf96a948e
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-management` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.9 MB (87913103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e69e14cc496eb56d25cb990ccd3b04deb1e21ec3a295f76cf913570ebff6276`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:39:04 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 25 Apr 2017 04:39:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Apr 2017 04:39:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 25 Apr 2017 04:39:28 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 25 Apr 2017 04:39:29 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Tue, 25 Apr 2017 04:40:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:40:05 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 25 Apr 2017 04:40:08 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 25 Apr 2017 04:40:09 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 25 Apr 2017 04:40:10 GMT
ENV RABBITMQ_VERSION=3.6.9
# Tue, 25 Apr 2017 04:40:10 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.9-1
# Tue, 25 Apr 2017 04:40:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:40:37 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 04:40:37 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 25 Apr 2017 04:40:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 25 Apr 2017 04:40:39 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 25 Apr 2017 04:40:41 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 25 Apr 2017 04:40:43 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 25 Apr 2017 04:40:44 GMT
COPY file:e75247400159c3b996450d9b4ef7078cf9587833f465ab2904b2b7ef35be65e9 in /usr/local/bin/ 
# Tue, 25 Apr 2017 04:40:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 25 Apr 2017 04:40:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Apr 2017 04:40:47 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 25 Apr 2017 04:40:48 GMT
CMD ["rabbitmq-server"]
# Tue, 25 Apr 2017 04:41:07 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 25 Apr 2017 04:41:08 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29be428fdb96cd922aaede323892238c85b6a83f2edb1cd8306a9a9c5389ba8a`  
		Last Modified: Tue, 25 Apr 2017 21:12:39 GMT  
		Size: 4.4 KB (4363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470864d09cba282f8daa7eede6fd7aa20af4a16b7fcbd6bff3d0e4d30a931e22`  
		Last Modified: Tue, 25 Apr 2017 21:12:40 GMT  
		Size: 1.3 MB (1308207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acea23654bb074a8e0a58f4bfdbcb937ef440fd9fcb410f3eeb77f2ea21c110f`  
		Last Modified: Tue, 25 Apr 2017 21:12:39 GMT  
		Size: 2.5 KB (2504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9962a95a84c6bd397ddfd35f0c7953b381db5c617651fa2aa6d2fe64b9aa53`  
		Last Modified: Tue, 25 Apr 2017 21:12:37 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289be2b3d500a7d6ae3ae8921c9572a7654f584eb3733538ede14aaf38326488`  
		Last Modified: Tue, 25 Apr 2017 21:12:42 GMT  
		Size: 28.3 MB (28348313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce1488bab14721a4330d1c201218cc05bc06d44fc380addbb589c5eb4b9ce82`  
		Last Modified: Tue, 25 Apr 2017 21:12:37 GMT  
		Size: 3.1 KB (3099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b59715834b8c07a4582ad91315d99079f9343fa15392fa9b07f865a2056d69`  
		Last Modified: Tue, 25 Apr 2017 21:12:36 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6978c773f0e39a6cd6a00bc93c330966ae25a3da0ea54fe17c5ca982331ee030`  
		Last Modified: Tue, 25 Apr 2017 21:12:37 GMT  
		Size: 5.7 MB (5689048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdab4e6ac1172cefc6e586acc99c3f87a09e9efcd56bdd47a1d3e71c965aff24`  
		Last Modified: Tue, 25 Apr 2017 21:12:34 GMT  
		Size: 2.2 KB (2233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a77002da12235ce33ded6958608df4029620c56f188047725aff6d693b3cd39`  
		Last Modified: Tue, 25 Apr 2017 21:12:35 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be12bc075e51a0aefdc86fb34beafe479074d125719ab3b9d769b8f56e826e55`  
		Last Modified: Tue, 25 Apr 2017 21:12:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a807b307ee22db2d3ef9fcb9400990447dea0da0ca68a24c1c7d07d86ad7d81`  
		Last Modified: Tue, 25 Apr 2017 21:12:34 GMT  
		Size: 4.0 KB (4043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492679ee4e41a51167263251691d56fe0ab66ee5b163de1c0eec15842d53fd5d`  
		Last Modified: Tue, 25 Apr 2017 21:12:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c0b1a7a758bfb271590c9ead3ae7550950e01685f06a9d13900828aa9e6da8`  
		Last Modified: Tue, 25 Apr 2017 21:14:05 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management`

```console
$ docker pull rabbitmq@sha256:31cce828920544cbec242dc24a3738347b5871976024444615962c3bf96a948e
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:management` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.9 MB (87913103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e69e14cc496eb56d25cb990ccd3b04deb1e21ec3a295f76cf913570ebff6276`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:39:04 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 25 Apr 2017 04:39:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Apr 2017 04:39:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 25 Apr 2017 04:39:28 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 25 Apr 2017 04:39:29 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Tue, 25 Apr 2017 04:40:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:40:05 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 25 Apr 2017 04:40:08 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 25 Apr 2017 04:40:09 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 25 Apr 2017 04:40:10 GMT
ENV RABBITMQ_VERSION=3.6.9
# Tue, 25 Apr 2017 04:40:10 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.9-1
# Tue, 25 Apr 2017 04:40:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:40:37 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 04:40:37 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 25 Apr 2017 04:40:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 25 Apr 2017 04:40:39 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 25 Apr 2017 04:40:41 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 25 Apr 2017 04:40:43 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Tue, 25 Apr 2017 04:40:44 GMT
COPY file:e75247400159c3b996450d9b4ef7078cf9587833f465ab2904b2b7ef35be65e9 in /usr/local/bin/ 
# Tue, 25 Apr 2017 04:40:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 25 Apr 2017 04:40:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Apr 2017 04:40:47 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 25 Apr 2017 04:40:48 GMT
CMD ["rabbitmq-server"]
# Tue, 25 Apr 2017 04:41:07 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 25 Apr 2017 04:41:08 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29be428fdb96cd922aaede323892238c85b6a83f2edb1cd8306a9a9c5389ba8a`  
		Last Modified: Tue, 25 Apr 2017 21:12:39 GMT  
		Size: 4.4 KB (4363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470864d09cba282f8daa7eede6fd7aa20af4a16b7fcbd6bff3d0e4d30a931e22`  
		Last Modified: Tue, 25 Apr 2017 21:12:40 GMT  
		Size: 1.3 MB (1308207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acea23654bb074a8e0a58f4bfdbcb937ef440fd9fcb410f3eeb77f2ea21c110f`  
		Last Modified: Tue, 25 Apr 2017 21:12:39 GMT  
		Size: 2.5 KB (2504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9962a95a84c6bd397ddfd35f0c7953b381db5c617651fa2aa6d2fe64b9aa53`  
		Last Modified: Tue, 25 Apr 2017 21:12:37 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289be2b3d500a7d6ae3ae8921c9572a7654f584eb3733538ede14aaf38326488`  
		Last Modified: Tue, 25 Apr 2017 21:12:42 GMT  
		Size: 28.3 MB (28348313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce1488bab14721a4330d1c201218cc05bc06d44fc380addbb589c5eb4b9ce82`  
		Last Modified: Tue, 25 Apr 2017 21:12:37 GMT  
		Size: 3.1 KB (3099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b59715834b8c07a4582ad91315d99079f9343fa15392fa9b07f865a2056d69`  
		Last Modified: Tue, 25 Apr 2017 21:12:36 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6978c773f0e39a6cd6a00bc93c330966ae25a3da0ea54fe17c5ca982331ee030`  
		Last Modified: Tue, 25 Apr 2017 21:12:37 GMT  
		Size: 5.7 MB (5689048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdab4e6ac1172cefc6e586acc99c3f87a09e9efcd56bdd47a1d3e71c965aff24`  
		Last Modified: Tue, 25 Apr 2017 21:12:34 GMT  
		Size: 2.2 KB (2233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a77002da12235ce33ded6958608df4029620c56f188047725aff6d693b3cd39`  
		Last Modified: Tue, 25 Apr 2017 21:12:35 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be12bc075e51a0aefdc86fb34beafe479074d125719ab3b9d769b8f56e826e55`  
		Last Modified: Tue, 25 Apr 2017 21:12:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a807b307ee22db2d3ef9fcb9400990447dea0da0ca68a24c1c7d07d86ad7d81`  
		Last Modified: Tue, 25 Apr 2017 21:12:34 GMT  
		Size: 4.0 KB (4043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492679ee4e41a51167263251691d56fe0ab66ee5b163de1c0eec15842d53fd5d`  
		Last Modified: Tue, 25 Apr 2017 21:12:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c0b1a7a758bfb271590c9ead3ae7550950e01685f06a9d13900828aa9e6da8`  
		Last Modified: Tue, 25 Apr 2017 21:14:05 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.9-alpine`

```console
$ docker pull rabbitmq@sha256:0dec8cadc80096419b2010f2a908c9f90549b6a9ea5012c094218199c9eed41e
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.9-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22672008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc0b54d023b7e7840d1f103ad637d03ee4af47016e3e512f43c89ff293865e91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:32:01 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 03 Mar 2017 23:32:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 03 Mar 2017 23:32:05 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 03 Mar 2017 23:32:05 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Mar 2017 23:32:06 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 03 Mar 2017 23:32:06 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:32:06 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 30 Mar 2017 22:07:08 GMT
ENV RABBITMQ_VERSION=3.6.9
# Thu, 30 Mar 2017 22:07:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 30 Mar 2017 22:07:15 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 07 Apr 2017 19:47:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 07 Apr 2017 19:47:38 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 07 Apr 2017 19:47:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 07 Apr 2017 19:47:41 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 11 Apr 2017 22:49:14 GMT
COPY file:6d5b5641b4ddd6db44e4e5e11ec5ab0346df16687772c50006caf5a342ff05ff in /usr/local/bin/ 
# Tue, 11 Apr 2017 22:49:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Apr 2017 22:49:15 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 11 Apr 2017 22:49:17 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079ada2a602c1ceaf39dc585062270ab61a3a9ddec06591747a49b6ea44225d9`  
		Last Modified: Sat, 04 Mar 2017 05:44:12 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b76ba05073a2d714307ed2d601b2fdbc7d1a27cef1447f42a4c1402cdc5cd3`  
		Last Modified: Sat, 04 Mar 2017 05:44:08 GMT  
		Size: 7.7 KB (7686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca62166aad96f21722a89caed6c44a27f9ec61f3c5dead7e8dcef77086ab8da`  
		Last Modified: Sat, 04 Mar 2017 05:44:17 GMT  
		Size: 15.8 MB (15804017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7135a346decf8b4702d300b6cb9ec9736cd58df68e4f4b2c63d3ef4f058ef7d9`  
		Last Modified: Thu, 30 Mar 2017 22:10:45 GMT  
		Size: 4.9 MB (4949335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2164371d799459096747eb878d43c6ee1b81e00e8274c487254b73f63ebd846c`  
		Last Modified: Fri, 07 Apr 2017 19:50:58 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745d1c233b06b4093bc4158b3b8120480c654d46cb426c26aff0d5a28f811a18`  
		Last Modified: Fri, 07 Apr 2017 19:50:59 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651c09e87f380a1abf443c583bc053e1dfd56262126e1b458a0e68d3f8106367`  
		Last Modified: Fri, 07 Apr 2017 19:50:59 GMT  
		Size: 106.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1038803fb2f57eb49eab389debf37a4a4fc3b5255e0a65b1f3ebf626cc75623f`  
		Last Modified: Tue, 11 Apr 2017 22:52:45 GMT  
		Size: 4.0 KB (4012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-alpine`

```console
$ docker pull rabbitmq@sha256:0dec8cadc80096419b2010f2a908c9f90549b6a9ea5012c094218199c9eed41e
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22672008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc0b54d023b7e7840d1f103ad637d03ee4af47016e3e512f43c89ff293865e91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:32:01 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 03 Mar 2017 23:32:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 03 Mar 2017 23:32:05 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 03 Mar 2017 23:32:05 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Mar 2017 23:32:06 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 03 Mar 2017 23:32:06 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:32:06 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 30 Mar 2017 22:07:08 GMT
ENV RABBITMQ_VERSION=3.6.9
# Thu, 30 Mar 2017 22:07:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 30 Mar 2017 22:07:15 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 07 Apr 2017 19:47:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 07 Apr 2017 19:47:38 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 07 Apr 2017 19:47:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 07 Apr 2017 19:47:41 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 11 Apr 2017 22:49:14 GMT
COPY file:6d5b5641b4ddd6db44e4e5e11ec5ab0346df16687772c50006caf5a342ff05ff in /usr/local/bin/ 
# Tue, 11 Apr 2017 22:49:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Apr 2017 22:49:15 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 11 Apr 2017 22:49:17 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079ada2a602c1ceaf39dc585062270ab61a3a9ddec06591747a49b6ea44225d9`  
		Last Modified: Sat, 04 Mar 2017 05:44:12 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b76ba05073a2d714307ed2d601b2fdbc7d1a27cef1447f42a4c1402cdc5cd3`  
		Last Modified: Sat, 04 Mar 2017 05:44:08 GMT  
		Size: 7.7 KB (7686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca62166aad96f21722a89caed6c44a27f9ec61f3c5dead7e8dcef77086ab8da`  
		Last Modified: Sat, 04 Mar 2017 05:44:17 GMT  
		Size: 15.8 MB (15804017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7135a346decf8b4702d300b6cb9ec9736cd58df68e4f4b2c63d3ef4f058ef7d9`  
		Last Modified: Thu, 30 Mar 2017 22:10:45 GMT  
		Size: 4.9 MB (4949335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2164371d799459096747eb878d43c6ee1b81e00e8274c487254b73f63ebd846c`  
		Last Modified: Fri, 07 Apr 2017 19:50:58 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745d1c233b06b4093bc4158b3b8120480c654d46cb426c26aff0d5a28f811a18`  
		Last Modified: Fri, 07 Apr 2017 19:50:59 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651c09e87f380a1abf443c583bc053e1dfd56262126e1b458a0e68d3f8106367`  
		Last Modified: Fri, 07 Apr 2017 19:50:59 GMT  
		Size: 106.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1038803fb2f57eb49eab389debf37a4a4fc3b5255e0a65b1f3ebf626cc75623f`  
		Last Modified: Tue, 11 Apr 2017 22:52:45 GMT  
		Size: 4.0 KB (4012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-alpine`

```console
$ docker pull rabbitmq@sha256:0dec8cadc80096419b2010f2a908c9f90549b6a9ea5012c094218199c9eed41e
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22672008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc0b54d023b7e7840d1f103ad637d03ee4af47016e3e512f43c89ff293865e91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:32:01 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 03 Mar 2017 23:32:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 03 Mar 2017 23:32:05 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 03 Mar 2017 23:32:05 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Mar 2017 23:32:06 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 03 Mar 2017 23:32:06 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:32:06 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 30 Mar 2017 22:07:08 GMT
ENV RABBITMQ_VERSION=3.6.9
# Thu, 30 Mar 2017 22:07:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 30 Mar 2017 22:07:15 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 07 Apr 2017 19:47:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 07 Apr 2017 19:47:38 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 07 Apr 2017 19:47:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 07 Apr 2017 19:47:41 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 11 Apr 2017 22:49:14 GMT
COPY file:6d5b5641b4ddd6db44e4e5e11ec5ab0346df16687772c50006caf5a342ff05ff in /usr/local/bin/ 
# Tue, 11 Apr 2017 22:49:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Apr 2017 22:49:15 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 11 Apr 2017 22:49:17 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079ada2a602c1ceaf39dc585062270ab61a3a9ddec06591747a49b6ea44225d9`  
		Last Modified: Sat, 04 Mar 2017 05:44:12 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b76ba05073a2d714307ed2d601b2fdbc7d1a27cef1447f42a4c1402cdc5cd3`  
		Last Modified: Sat, 04 Mar 2017 05:44:08 GMT  
		Size: 7.7 KB (7686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca62166aad96f21722a89caed6c44a27f9ec61f3c5dead7e8dcef77086ab8da`  
		Last Modified: Sat, 04 Mar 2017 05:44:17 GMT  
		Size: 15.8 MB (15804017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7135a346decf8b4702d300b6cb9ec9736cd58df68e4f4b2c63d3ef4f058ef7d9`  
		Last Modified: Thu, 30 Mar 2017 22:10:45 GMT  
		Size: 4.9 MB (4949335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2164371d799459096747eb878d43c6ee1b81e00e8274c487254b73f63ebd846c`  
		Last Modified: Fri, 07 Apr 2017 19:50:58 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745d1c233b06b4093bc4158b3b8120480c654d46cb426c26aff0d5a28f811a18`  
		Last Modified: Fri, 07 Apr 2017 19:50:59 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651c09e87f380a1abf443c583bc053e1dfd56262126e1b458a0e68d3f8106367`  
		Last Modified: Fri, 07 Apr 2017 19:50:59 GMT  
		Size: 106.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1038803fb2f57eb49eab389debf37a4a4fc3b5255e0a65b1f3ebf626cc75623f`  
		Last Modified: Tue, 11 Apr 2017 22:52:45 GMT  
		Size: 4.0 KB (4012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:alpine`

```console
$ docker pull rabbitmq@sha256:0dec8cadc80096419b2010f2a908c9f90549b6a9ea5012c094218199c9eed41e
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22672008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc0b54d023b7e7840d1f103ad637d03ee4af47016e3e512f43c89ff293865e91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:32:01 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 03 Mar 2017 23:32:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 03 Mar 2017 23:32:05 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 03 Mar 2017 23:32:05 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Mar 2017 23:32:06 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 03 Mar 2017 23:32:06 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:32:06 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 30 Mar 2017 22:07:08 GMT
ENV RABBITMQ_VERSION=3.6.9
# Thu, 30 Mar 2017 22:07:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 30 Mar 2017 22:07:15 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 07 Apr 2017 19:47:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 07 Apr 2017 19:47:38 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 07 Apr 2017 19:47:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 07 Apr 2017 19:47:41 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 11 Apr 2017 22:49:14 GMT
COPY file:6d5b5641b4ddd6db44e4e5e11ec5ab0346df16687772c50006caf5a342ff05ff in /usr/local/bin/ 
# Tue, 11 Apr 2017 22:49:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Apr 2017 22:49:15 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 11 Apr 2017 22:49:17 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079ada2a602c1ceaf39dc585062270ab61a3a9ddec06591747a49b6ea44225d9`  
		Last Modified: Sat, 04 Mar 2017 05:44:12 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b76ba05073a2d714307ed2d601b2fdbc7d1a27cef1447f42a4c1402cdc5cd3`  
		Last Modified: Sat, 04 Mar 2017 05:44:08 GMT  
		Size: 7.7 KB (7686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca62166aad96f21722a89caed6c44a27f9ec61f3c5dead7e8dcef77086ab8da`  
		Last Modified: Sat, 04 Mar 2017 05:44:17 GMT  
		Size: 15.8 MB (15804017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7135a346decf8b4702d300b6cb9ec9736cd58df68e4f4b2c63d3ef4f058ef7d9`  
		Last Modified: Thu, 30 Mar 2017 22:10:45 GMT  
		Size: 4.9 MB (4949335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2164371d799459096747eb878d43c6ee1b81e00e8274c487254b73f63ebd846c`  
		Last Modified: Fri, 07 Apr 2017 19:50:58 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745d1c233b06b4093bc4158b3b8120480c654d46cb426c26aff0d5a28f811a18`  
		Last Modified: Fri, 07 Apr 2017 19:50:59 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651c09e87f380a1abf443c583bc053e1dfd56262126e1b458a0e68d3f8106367`  
		Last Modified: Fri, 07 Apr 2017 19:50:59 GMT  
		Size: 106.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1038803fb2f57eb49eab389debf37a4a4fc3b5255e0a65b1f3ebf626cc75623f`  
		Last Modified: Tue, 11 Apr 2017 22:52:45 GMT  
		Size: 4.0 KB (4012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.9-management-alpine`

```console
$ docker pull rabbitmq@sha256:c6c288b0eaa21b44ed9d9e9bbdbed56fe58db5465d8737952fe4c2123f1df104
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.9-management-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22672199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a15f06b17a245f95d901d7d8ffaf627d5c09738d70e25396166f8b42f1b24518`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:32:01 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 03 Mar 2017 23:32:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 03 Mar 2017 23:32:05 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 03 Mar 2017 23:32:05 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Mar 2017 23:32:06 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 03 Mar 2017 23:32:06 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:32:06 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 30 Mar 2017 22:07:08 GMT
ENV RABBITMQ_VERSION=3.6.9
# Thu, 30 Mar 2017 22:07:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 30 Mar 2017 22:07:15 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 07 Apr 2017 19:47:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 07 Apr 2017 19:47:38 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 07 Apr 2017 19:47:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 07 Apr 2017 19:47:41 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 11 Apr 2017 22:49:14 GMT
COPY file:6d5b5641b4ddd6db44e4e5e11ec5ab0346df16687772c50006caf5a342ff05ff in /usr/local/bin/ 
# Tue, 11 Apr 2017 22:49:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Apr 2017 22:49:15 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 11 Apr 2017 22:49:17 GMT
CMD ["rabbitmq-server"]
# Tue, 11 Apr 2017 22:49:22 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 11 Apr 2017 22:49:22 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079ada2a602c1ceaf39dc585062270ab61a3a9ddec06591747a49b6ea44225d9`  
		Last Modified: Sat, 04 Mar 2017 05:44:12 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b76ba05073a2d714307ed2d601b2fdbc7d1a27cef1447f42a4c1402cdc5cd3`  
		Last Modified: Sat, 04 Mar 2017 05:44:08 GMT  
		Size: 7.7 KB (7686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca62166aad96f21722a89caed6c44a27f9ec61f3c5dead7e8dcef77086ab8da`  
		Last Modified: Sat, 04 Mar 2017 05:44:17 GMT  
		Size: 15.8 MB (15804017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7135a346decf8b4702d300b6cb9ec9736cd58df68e4f4b2c63d3ef4f058ef7d9`  
		Last Modified: Thu, 30 Mar 2017 22:10:45 GMT  
		Size: 4.9 MB (4949335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2164371d799459096747eb878d43c6ee1b81e00e8274c487254b73f63ebd846c`  
		Last Modified: Fri, 07 Apr 2017 19:50:58 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745d1c233b06b4093bc4158b3b8120480c654d46cb426c26aff0d5a28f811a18`  
		Last Modified: Fri, 07 Apr 2017 19:50:59 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651c09e87f380a1abf443c583bc053e1dfd56262126e1b458a0e68d3f8106367`  
		Last Modified: Fri, 07 Apr 2017 19:50:59 GMT  
		Size: 106.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1038803fb2f57eb49eab389debf37a4a4fc3b5255e0a65b1f3ebf626cc75623f`  
		Last Modified: Tue, 11 Apr 2017 22:52:45 GMT  
		Size: 4.0 KB (4012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec577269b2a108b620e87282279fef87a3fab0827503ceef0f71633964f69f5`  
		Last Modified: Tue, 11 Apr 2017 22:54:08 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management-alpine`

```console
$ docker pull rabbitmq@sha256:c6c288b0eaa21b44ed9d9e9bbdbed56fe58db5465d8737952fe4c2123f1df104
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-management-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22672199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a15f06b17a245f95d901d7d8ffaf627d5c09738d70e25396166f8b42f1b24518`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:32:01 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 03 Mar 2017 23:32:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 03 Mar 2017 23:32:05 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 03 Mar 2017 23:32:05 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Mar 2017 23:32:06 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 03 Mar 2017 23:32:06 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:32:06 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 30 Mar 2017 22:07:08 GMT
ENV RABBITMQ_VERSION=3.6.9
# Thu, 30 Mar 2017 22:07:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 30 Mar 2017 22:07:15 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 07 Apr 2017 19:47:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 07 Apr 2017 19:47:38 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 07 Apr 2017 19:47:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 07 Apr 2017 19:47:41 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 11 Apr 2017 22:49:14 GMT
COPY file:6d5b5641b4ddd6db44e4e5e11ec5ab0346df16687772c50006caf5a342ff05ff in /usr/local/bin/ 
# Tue, 11 Apr 2017 22:49:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Apr 2017 22:49:15 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 11 Apr 2017 22:49:17 GMT
CMD ["rabbitmq-server"]
# Tue, 11 Apr 2017 22:49:22 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 11 Apr 2017 22:49:22 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079ada2a602c1ceaf39dc585062270ab61a3a9ddec06591747a49b6ea44225d9`  
		Last Modified: Sat, 04 Mar 2017 05:44:12 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b76ba05073a2d714307ed2d601b2fdbc7d1a27cef1447f42a4c1402cdc5cd3`  
		Last Modified: Sat, 04 Mar 2017 05:44:08 GMT  
		Size: 7.7 KB (7686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca62166aad96f21722a89caed6c44a27f9ec61f3c5dead7e8dcef77086ab8da`  
		Last Modified: Sat, 04 Mar 2017 05:44:17 GMT  
		Size: 15.8 MB (15804017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7135a346decf8b4702d300b6cb9ec9736cd58df68e4f4b2c63d3ef4f058ef7d9`  
		Last Modified: Thu, 30 Mar 2017 22:10:45 GMT  
		Size: 4.9 MB (4949335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2164371d799459096747eb878d43c6ee1b81e00e8274c487254b73f63ebd846c`  
		Last Modified: Fri, 07 Apr 2017 19:50:58 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745d1c233b06b4093bc4158b3b8120480c654d46cb426c26aff0d5a28f811a18`  
		Last Modified: Fri, 07 Apr 2017 19:50:59 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651c09e87f380a1abf443c583bc053e1dfd56262126e1b458a0e68d3f8106367`  
		Last Modified: Fri, 07 Apr 2017 19:50:59 GMT  
		Size: 106.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1038803fb2f57eb49eab389debf37a4a4fc3b5255e0a65b1f3ebf626cc75623f`  
		Last Modified: Tue, 11 Apr 2017 22:52:45 GMT  
		Size: 4.0 KB (4012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec577269b2a108b620e87282279fef87a3fab0827503ceef0f71633964f69f5`  
		Last Modified: Tue, 11 Apr 2017 22:54:08 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management-alpine`

```console
$ docker pull rabbitmq@sha256:c6c288b0eaa21b44ed9d9e9bbdbed56fe58db5465d8737952fe4c2123f1df104
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-management-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22672199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a15f06b17a245f95d901d7d8ffaf627d5c09738d70e25396166f8b42f1b24518`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:32:01 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 03 Mar 2017 23:32:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 03 Mar 2017 23:32:05 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 03 Mar 2017 23:32:05 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Mar 2017 23:32:06 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 03 Mar 2017 23:32:06 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:32:06 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 30 Mar 2017 22:07:08 GMT
ENV RABBITMQ_VERSION=3.6.9
# Thu, 30 Mar 2017 22:07:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 30 Mar 2017 22:07:15 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 07 Apr 2017 19:47:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 07 Apr 2017 19:47:38 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 07 Apr 2017 19:47:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 07 Apr 2017 19:47:41 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 11 Apr 2017 22:49:14 GMT
COPY file:6d5b5641b4ddd6db44e4e5e11ec5ab0346df16687772c50006caf5a342ff05ff in /usr/local/bin/ 
# Tue, 11 Apr 2017 22:49:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Apr 2017 22:49:15 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 11 Apr 2017 22:49:17 GMT
CMD ["rabbitmq-server"]
# Tue, 11 Apr 2017 22:49:22 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 11 Apr 2017 22:49:22 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079ada2a602c1ceaf39dc585062270ab61a3a9ddec06591747a49b6ea44225d9`  
		Last Modified: Sat, 04 Mar 2017 05:44:12 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b76ba05073a2d714307ed2d601b2fdbc7d1a27cef1447f42a4c1402cdc5cd3`  
		Last Modified: Sat, 04 Mar 2017 05:44:08 GMT  
		Size: 7.7 KB (7686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca62166aad96f21722a89caed6c44a27f9ec61f3c5dead7e8dcef77086ab8da`  
		Last Modified: Sat, 04 Mar 2017 05:44:17 GMT  
		Size: 15.8 MB (15804017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7135a346decf8b4702d300b6cb9ec9736cd58df68e4f4b2c63d3ef4f058ef7d9`  
		Last Modified: Thu, 30 Mar 2017 22:10:45 GMT  
		Size: 4.9 MB (4949335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2164371d799459096747eb878d43c6ee1b81e00e8274c487254b73f63ebd846c`  
		Last Modified: Fri, 07 Apr 2017 19:50:58 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745d1c233b06b4093bc4158b3b8120480c654d46cb426c26aff0d5a28f811a18`  
		Last Modified: Fri, 07 Apr 2017 19:50:59 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651c09e87f380a1abf443c583bc053e1dfd56262126e1b458a0e68d3f8106367`  
		Last Modified: Fri, 07 Apr 2017 19:50:59 GMT  
		Size: 106.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1038803fb2f57eb49eab389debf37a4a4fc3b5255e0a65b1f3ebf626cc75623f`  
		Last Modified: Tue, 11 Apr 2017 22:52:45 GMT  
		Size: 4.0 KB (4012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec577269b2a108b620e87282279fef87a3fab0827503ceef0f71633964f69f5`  
		Last Modified: Tue, 11 Apr 2017 22:54:08 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management-alpine`

```console
$ docker pull rabbitmq@sha256:c6c288b0eaa21b44ed9d9e9bbdbed56fe58db5465d8737952fe4c2123f1df104
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:management-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22672199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a15f06b17a245f95d901d7d8ffaf627d5c09738d70e25396166f8b42f1b24518`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:32:01 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 03 Mar 2017 23:32:02 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 03 Mar 2017 23:32:05 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 03 Mar 2017 23:32:05 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 03 Mar 2017 23:32:06 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 03 Mar 2017 23:32:06 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:32:06 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 30 Mar 2017 22:07:08 GMT
ENV RABBITMQ_VERSION=3.6.9
# Thu, 30 Mar 2017 22:07:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 30 Mar 2017 22:07:15 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 07 Apr 2017 19:47:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 07 Apr 2017 19:47:38 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 07 Apr 2017 19:47:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 07 Apr 2017 19:47:41 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 11 Apr 2017 22:49:14 GMT
COPY file:6d5b5641b4ddd6db44e4e5e11ec5ab0346df16687772c50006caf5a342ff05ff in /usr/local/bin/ 
# Tue, 11 Apr 2017 22:49:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 11 Apr 2017 22:49:15 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 11 Apr 2017 22:49:17 GMT
CMD ["rabbitmq-server"]
# Tue, 11 Apr 2017 22:49:22 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 11 Apr 2017 22:49:22 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079ada2a602c1ceaf39dc585062270ab61a3a9ddec06591747a49b6ea44225d9`  
		Last Modified: Sat, 04 Mar 2017 05:44:12 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b76ba05073a2d714307ed2d601b2fdbc7d1a27cef1447f42a4c1402cdc5cd3`  
		Last Modified: Sat, 04 Mar 2017 05:44:08 GMT  
		Size: 7.7 KB (7686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca62166aad96f21722a89caed6c44a27f9ec61f3c5dead7e8dcef77086ab8da`  
		Last Modified: Sat, 04 Mar 2017 05:44:17 GMT  
		Size: 15.8 MB (15804017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7135a346decf8b4702d300b6cb9ec9736cd58df68e4f4b2c63d3ef4f058ef7d9`  
		Last Modified: Thu, 30 Mar 2017 22:10:45 GMT  
		Size: 4.9 MB (4949335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2164371d799459096747eb878d43c6ee1b81e00e8274c487254b73f63ebd846c`  
		Last Modified: Fri, 07 Apr 2017 19:50:58 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745d1c233b06b4093bc4158b3b8120480c654d46cb426c26aff0d5a28f811a18`  
		Last Modified: Fri, 07 Apr 2017 19:50:59 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651c09e87f380a1abf443c583bc053e1dfd56262126e1b458a0e68d3f8106367`  
		Last Modified: Fri, 07 Apr 2017 19:50:59 GMT  
		Size: 106.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1038803fb2f57eb49eab389debf37a4a4fc3b5255e0a65b1f3ebf626cc75623f`  
		Last Modified: Tue, 11 Apr 2017 22:52:45 GMT  
		Size: 4.0 KB (4012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec577269b2a108b620e87282279fef87a3fab0827503ceef0f71633964f69f5`  
		Last Modified: Tue, 11 Apr 2017 22:54:08 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
