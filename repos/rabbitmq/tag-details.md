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
$ docker pull rabbitmq@sha256:0f565357683a916302ef1a0d53c7e4f57f78ab728fd9ca285df4b2f1ee0c084b
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.10` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.0 MB (87958598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b457efb92826f1577af44aac315c66af59381899d163ac59759f2723119dd1c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:31:23 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 10 May 2017 15:31:24 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 May 2017 15:31:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 10 May 2017 15:31:46 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 10 May 2017 15:31:48 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Wed, 10 May 2017 15:32:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:32:20 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 10 May 2017 15:32:23 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 10 May 2017 15:32:24 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 30 May 2017 17:32:18 GMT
ENV RABBITMQ_VERSION=3.6.10
# Tue, 30 May 2017 17:32:20 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.10-1
# Tue, 30 May 2017 17:32:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 May 2017 17:33:12 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 May 2017 17:33:13 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 30 May 2017 17:33:37 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 30 May 2017 17:33:59 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 30 May 2017 17:34:02 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 30 May 2017 17:34:27 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Sat, 03 Jun 2017 19:05:49 GMT
COPY file:95ed14b1f44e48ff624503df658f6073cc490c98fb19105180ea52d93812a81d in /usr/local/bin/ 
# Sat, 03 Jun 2017 19:05:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Jun 2017 19:05:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Jun 2017 19:05:53 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Jun 2017 19:05:53 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad3529559716ef2226d04b49688e86c4e33e25788838dce402a97e3b9cb4357`  
		Last Modified: Sat, 13 May 2017 18:07:30 GMT  
		Size: 4.4 KB (4376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d6f7fd21c4b2507908ced40197cca24acbeaf097f52fa31a0f88b63830d7f4`  
		Last Modified: Sat, 13 May 2017 18:07:30 GMT  
		Size: 1.3 MB (1307776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4971849d324fe6ca2ba0aef4418bb06d9999a0bf90527f86ba6e916ff0bbd2bc`  
		Last Modified: Sat, 13 May 2017 18:07:28 GMT  
		Size: 2.5 KB (2502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c4afa2fcab88b38bb66b17fb0162c5a7d5175984afd079022afdc6a65f18acd`  
		Last Modified: Sat, 13 May 2017 18:07:28 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a846993595cb3919b6d37f55dc1e1ac7f593a8ff7dd58d3f2d03dc64e8a2d43`  
		Last Modified: Sat, 13 May 2017 18:07:32 GMT  
		Size: 28.3 MB (28347945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe1747cbdec723d9f40051e657d28358e6a09f751ccb1a2ea807a44f27d5e8d`  
		Last Modified: Sat, 13 May 2017 18:07:27 GMT  
		Size: 3.1 KB (3099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4773d4648f681e6de65dddf61ca22be624193850b6d76a93ee78f0305926dca`  
		Last Modified: Sat, 13 May 2017 18:07:27 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b37a62317bf84e750f03fbee37fd1f8de5b3c8743819e11cbb9194b4b854c6`  
		Last Modified: Tue, 30 May 2017 17:59:54 GMT  
		Size: 5.7 MB (5701762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3dbc4804b4a7f4fa3d0e3845bde7884071c891863a1454956c82b82712f71d`  
		Last Modified: Tue, 30 May 2017 17:59:52 GMT  
		Size: 2.2 KB (2232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35f964b5a125f4382c6760b7b97f7759ee5e7382d2a0ce37c0654742a48cfbd`  
		Last Modified: Tue, 30 May 2017 17:59:52 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c4ee3f7947026382b407186174011eea0e49b7e7ea7d9a95570a7144d4ccf6`  
		Last Modified: Tue, 30 May 2017 17:59:52 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa9a1a1633aee86de3570e269e0fdf6c0f5bbd57d76fc54508aad87f87cb3fd`  
		Last Modified: Sat, 03 Jun 2017 19:07:39 GMT  
		Size: 4.1 KB (4058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88df8c4db0e8c44df3314406580778696cbe1711ec0c109b647a3234d3be4b06`  
		Last Modified: Sat, 03 Jun 2017 19:07:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6`

```console
$ docker pull rabbitmq@sha256:0f565357683a916302ef1a0d53c7e4f57f78ab728fd9ca285df4b2f1ee0c084b
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.0 MB (87958598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b457efb92826f1577af44aac315c66af59381899d163ac59759f2723119dd1c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:31:23 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 10 May 2017 15:31:24 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 May 2017 15:31:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 10 May 2017 15:31:46 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 10 May 2017 15:31:48 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Wed, 10 May 2017 15:32:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:32:20 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 10 May 2017 15:32:23 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 10 May 2017 15:32:24 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 30 May 2017 17:32:18 GMT
ENV RABBITMQ_VERSION=3.6.10
# Tue, 30 May 2017 17:32:20 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.10-1
# Tue, 30 May 2017 17:32:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 May 2017 17:33:12 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 May 2017 17:33:13 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 30 May 2017 17:33:37 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 30 May 2017 17:33:59 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 30 May 2017 17:34:02 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 30 May 2017 17:34:27 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Sat, 03 Jun 2017 19:05:49 GMT
COPY file:95ed14b1f44e48ff624503df658f6073cc490c98fb19105180ea52d93812a81d in /usr/local/bin/ 
# Sat, 03 Jun 2017 19:05:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Jun 2017 19:05:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Jun 2017 19:05:53 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Jun 2017 19:05:53 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad3529559716ef2226d04b49688e86c4e33e25788838dce402a97e3b9cb4357`  
		Last Modified: Sat, 13 May 2017 18:07:30 GMT  
		Size: 4.4 KB (4376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d6f7fd21c4b2507908ced40197cca24acbeaf097f52fa31a0f88b63830d7f4`  
		Last Modified: Sat, 13 May 2017 18:07:30 GMT  
		Size: 1.3 MB (1307776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4971849d324fe6ca2ba0aef4418bb06d9999a0bf90527f86ba6e916ff0bbd2bc`  
		Last Modified: Sat, 13 May 2017 18:07:28 GMT  
		Size: 2.5 KB (2502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c4afa2fcab88b38bb66b17fb0162c5a7d5175984afd079022afdc6a65f18acd`  
		Last Modified: Sat, 13 May 2017 18:07:28 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a846993595cb3919b6d37f55dc1e1ac7f593a8ff7dd58d3f2d03dc64e8a2d43`  
		Last Modified: Sat, 13 May 2017 18:07:32 GMT  
		Size: 28.3 MB (28347945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe1747cbdec723d9f40051e657d28358e6a09f751ccb1a2ea807a44f27d5e8d`  
		Last Modified: Sat, 13 May 2017 18:07:27 GMT  
		Size: 3.1 KB (3099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4773d4648f681e6de65dddf61ca22be624193850b6d76a93ee78f0305926dca`  
		Last Modified: Sat, 13 May 2017 18:07:27 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b37a62317bf84e750f03fbee37fd1f8de5b3c8743819e11cbb9194b4b854c6`  
		Last Modified: Tue, 30 May 2017 17:59:54 GMT  
		Size: 5.7 MB (5701762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3dbc4804b4a7f4fa3d0e3845bde7884071c891863a1454956c82b82712f71d`  
		Last Modified: Tue, 30 May 2017 17:59:52 GMT  
		Size: 2.2 KB (2232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35f964b5a125f4382c6760b7b97f7759ee5e7382d2a0ce37c0654742a48cfbd`  
		Last Modified: Tue, 30 May 2017 17:59:52 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c4ee3f7947026382b407186174011eea0e49b7e7ea7d9a95570a7144d4ccf6`  
		Last Modified: Tue, 30 May 2017 17:59:52 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa9a1a1633aee86de3570e269e0fdf6c0f5bbd57d76fc54508aad87f87cb3fd`  
		Last Modified: Sat, 03 Jun 2017 19:07:39 GMT  
		Size: 4.1 KB (4058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88df8c4db0e8c44df3314406580778696cbe1711ec0c109b647a3234d3be4b06`  
		Last Modified: Sat, 03 Jun 2017 19:07:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3`

```console
$ docker pull rabbitmq@sha256:0f565357683a916302ef1a0d53c7e4f57f78ab728fd9ca285df4b2f1ee0c084b
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.0 MB (87958598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b457efb92826f1577af44aac315c66af59381899d163ac59759f2723119dd1c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:31:23 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 10 May 2017 15:31:24 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 May 2017 15:31:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 10 May 2017 15:31:46 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 10 May 2017 15:31:48 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Wed, 10 May 2017 15:32:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:32:20 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 10 May 2017 15:32:23 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 10 May 2017 15:32:24 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 30 May 2017 17:32:18 GMT
ENV RABBITMQ_VERSION=3.6.10
# Tue, 30 May 2017 17:32:20 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.10-1
# Tue, 30 May 2017 17:32:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 May 2017 17:33:12 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 May 2017 17:33:13 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 30 May 2017 17:33:37 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 30 May 2017 17:33:59 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 30 May 2017 17:34:02 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 30 May 2017 17:34:27 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Sat, 03 Jun 2017 19:05:49 GMT
COPY file:95ed14b1f44e48ff624503df658f6073cc490c98fb19105180ea52d93812a81d in /usr/local/bin/ 
# Sat, 03 Jun 2017 19:05:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Jun 2017 19:05:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Jun 2017 19:05:53 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Jun 2017 19:05:53 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad3529559716ef2226d04b49688e86c4e33e25788838dce402a97e3b9cb4357`  
		Last Modified: Sat, 13 May 2017 18:07:30 GMT  
		Size: 4.4 KB (4376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d6f7fd21c4b2507908ced40197cca24acbeaf097f52fa31a0f88b63830d7f4`  
		Last Modified: Sat, 13 May 2017 18:07:30 GMT  
		Size: 1.3 MB (1307776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4971849d324fe6ca2ba0aef4418bb06d9999a0bf90527f86ba6e916ff0bbd2bc`  
		Last Modified: Sat, 13 May 2017 18:07:28 GMT  
		Size: 2.5 KB (2502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c4afa2fcab88b38bb66b17fb0162c5a7d5175984afd079022afdc6a65f18acd`  
		Last Modified: Sat, 13 May 2017 18:07:28 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a846993595cb3919b6d37f55dc1e1ac7f593a8ff7dd58d3f2d03dc64e8a2d43`  
		Last Modified: Sat, 13 May 2017 18:07:32 GMT  
		Size: 28.3 MB (28347945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe1747cbdec723d9f40051e657d28358e6a09f751ccb1a2ea807a44f27d5e8d`  
		Last Modified: Sat, 13 May 2017 18:07:27 GMT  
		Size: 3.1 KB (3099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4773d4648f681e6de65dddf61ca22be624193850b6d76a93ee78f0305926dca`  
		Last Modified: Sat, 13 May 2017 18:07:27 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b37a62317bf84e750f03fbee37fd1f8de5b3c8743819e11cbb9194b4b854c6`  
		Last Modified: Tue, 30 May 2017 17:59:54 GMT  
		Size: 5.7 MB (5701762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3dbc4804b4a7f4fa3d0e3845bde7884071c891863a1454956c82b82712f71d`  
		Last Modified: Tue, 30 May 2017 17:59:52 GMT  
		Size: 2.2 KB (2232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35f964b5a125f4382c6760b7b97f7759ee5e7382d2a0ce37c0654742a48cfbd`  
		Last Modified: Tue, 30 May 2017 17:59:52 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c4ee3f7947026382b407186174011eea0e49b7e7ea7d9a95570a7144d4ccf6`  
		Last Modified: Tue, 30 May 2017 17:59:52 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa9a1a1633aee86de3570e269e0fdf6c0f5bbd57d76fc54508aad87f87cb3fd`  
		Last Modified: Sat, 03 Jun 2017 19:07:39 GMT  
		Size: 4.1 KB (4058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88df8c4db0e8c44df3314406580778696cbe1711ec0c109b647a3234d3be4b06`  
		Last Modified: Sat, 03 Jun 2017 19:07:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:latest`

```console
$ docker pull rabbitmq@sha256:0f565357683a916302ef1a0d53c7e4f57f78ab728fd9ca285df4b2f1ee0c084b
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.0 MB (87958598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b457efb92826f1577af44aac315c66af59381899d163ac59759f2723119dd1c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:31:23 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 10 May 2017 15:31:24 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 May 2017 15:31:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 10 May 2017 15:31:46 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 10 May 2017 15:31:48 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Wed, 10 May 2017 15:32:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:32:20 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 10 May 2017 15:32:23 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 10 May 2017 15:32:24 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 30 May 2017 17:32:18 GMT
ENV RABBITMQ_VERSION=3.6.10
# Tue, 30 May 2017 17:32:20 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.10-1
# Tue, 30 May 2017 17:32:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 May 2017 17:33:12 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 May 2017 17:33:13 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 30 May 2017 17:33:37 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 30 May 2017 17:33:59 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 30 May 2017 17:34:02 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 30 May 2017 17:34:27 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Sat, 03 Jun 2017 19:05:49 GMT
COPY file:95ed14b1f44e48ff624503df658f6073cc490c98fb19105180ea52d93812a81d in /usr/local/bin/ 
# Sat, 03 Jun 2017 19:05:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Jun 2017 19:05:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Jun 2017 19:05:53 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Jun 2017 19:05:53 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad3529559716ef2226d04b49688e86c4e33e25788838dce402a97e3b9cb4357`  
		Last Modified: Sat, 13 May 2017 18:07:30 GMT  
		Size: 4.4 KB (4376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d6f7fd21c4b2507908ced40197cca24acbeaf097f52fa31a0f88b63830d7f4`  
		Last Modified: Sat, 13 May 2017 18:07:30 GMT  
		Size: 1.3 MB (1307776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4971849d324fe6ca2ba0aef4418bb06d9999a0bf90527f86ba6e916ff0bbd2bc`  
		Last Modified: Sat, 13 May 2017 18:07:28 GMT  
		Size: 2.5 KB (2502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c4afa2fcab88b38bb66b17fb0162c5a7d5175984afd079022afdc6a65f18acd`  
		Last Modified: Sat, 13 May 2017 18:07:28 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a846993595cb3919b6d37f55dc1e1ac7f593a8ff7dd58d3f2d03dc64e8a2d43`  
		Last Modified: Sat, 13 May 2017 18:07:32 GMT  
		Size: 28.3 MB (28347945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe1747cbdec723d9f40051e657d28358e6a09f751ccb1a2ea807a44f27d5e8d`  
		Last Modified: Sat, 13 May 2017 18:07:27 GMT  
		Size: 3.1 KB (3099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4773d4648f681e6de65dddf61ca22be624193850b6d76a93ee78f0305926dca`  
		Last Modified: Sat, 13 May 2017 18:07:27 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b37a62317bf84e750f03fbee37fd1f8de5b3c8743819e11cbb9194b4b854c6`  
		Last Modified: Tue, 30 May 2017 17:59:54 GMT  
		Size: 5.7 MB (5701762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3dbc4804b4a7f4fa3d0e3845bde7884071c891863a1454956c82b82712f71d`  
		Last Modified: Tue, 30 May 2017 17:59:52 GMT  
		Size: 2.2 KB (2232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35f964b5a125f4382c6760b7b97f7759ee5e7382d2a0ce37c0654742a48cfbd`  
		Last Modified: Tue, 30 May 2017 17:59:52 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c4ee3f7947026382b407186174011eea0e49b7e7ea7d9a95570a7144d4ccf6`  
		Last Modified: Tue, 30 May 2017 17:59:52 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa9a1a1633aee86de3570e269e0fdf6c0f5bbd57d76fc54508aad87f87cb3fd`  
		Last Modified: Sat, 03 Jun 2017 19:07:39 GMT  
		Size: 4.1 KB (4058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88df8c4db0e8c44df3314406580778696cbe1711ec0c109b647a3234d3be4b06`  
		Last Modified: Sat, 03 Jun 2017 19:07:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.10-management`

```console
$ docker pull rabbitmq@sha256:86f8937de337a15b81cdf1bc7f75a078f5cf7ff0f359be95547a98113fe8bc08
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.10-management` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.0 MB (87958785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99d24cd4ff198d9aab19ec79089f59b5f19c74b56d2b73570cff674ccabd7fc3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:31:23 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 10 May 2017 15:31:24 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 May 2017 15:31:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 10 May 2017 15:31:46 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 10 May 2017 15:31:48 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Wed, 10 May 2017 15:32:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:32:20 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 10 May 2017 15:32:23 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 10 May 2017 15:32:24 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 30 May 2017 17:32:18 GMT
ENV RABBITMQ_VERSION=3.6.10
# Tue, 30 May 2017 17:32:20 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.10-1
# Tue, 30 May 2017 17:32:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 May 2017 17:33:12 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 May 2017 17:33:13 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 30 May 2017 17:33:37 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 30 May 2017 17:33:59 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 30 May 2017 17:34:02 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 30 May 2017 17:34:27 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Sat, 03 Jun 2017 19:05:49 GMT
COPY file:95ed14b1f44e48ff624503df658f6073cc490c98fb19105180ea52d93812a81d in /usr/local/bin/ 
# Sat, 03 Jun 2017 19:05:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Jun 2017 19:05:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Jun 2017 19:05:53 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Jun 2017 19:05:53 GMT
CMD ["rabbitmq-server"]
# Sat, 03 Jun 2017 19:06:19 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 03 Jun 2017 19:06:20 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad3529559716ef2226d04b49688e86c4e33e25788838dce402a97e3b9cb4357`  
		Last Modified: Sat, 13 May 2017 18:07:30 GMT  
		Size: 4.4 KB (4376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d6f7fd21c4b2507908ced40197cca24acbeaf097f52fa31a0f88b63830d7f4`  
		Last Modified: Sat, 13 May 2017 18:07:30 GMT  
		Size: 1.3 MB (1307776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4971849d324fe6ca2ba0aef4418bb06d9999a0bf90527f86ba6e916ff0bbd2bc`  
		Last Modified: Sat, 13 May 2017 18:07:28 GMT  
		Size: 2.5 KB (2502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c4afa2fcab88b38bb66b17fb0162c5a7d5175984afd079022afdc6a65f18acd`  
		Last Modified: Sat, 13 May 2017 18:07:28 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a846993595cb3919b6d37f55dc1e1ac7f593a8ff7dd58d3f2d03dc64e8a2d43`  
		Last Modified: Sat, 13 May 2017 18:07:32 GMT  
		Size: 28.3 MB (28347945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe1747cbdec723d9f40051e657d28358e6a09f751ccb1a2ea807a44f27d5e8d`  
		Last Modified: Sat, 13 May 2017 18:07:27 GMT  
		Size: 3.1 KB (3099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4773d4648f681e6de65dddf61ca22be624193850b6d76a93ee78f0305926dca`  
		Last Modified: Sat, 13 May 2017 18:07:27 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b37a62317bf84e750f03fbee37fd1f8de5b3c8743819e11cbb9194b4b854c6`  
		Last Modified: Tue, 30 May 2017 17:59:54 GMT  
		Size: 5.7 MB (5701762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3dbc4804b4a7f4fa3d0e3845bde7884071c891863a1454956c82b82712f71d`  
		Last Modified: Tue, 30 May 2017 17:59:52 GMT  
		Size: 2.2 KB (2232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35f964b5a125f4382c6760b7b97f7759ee5e7382d2a0ce37c0654742a48cfbd`  
		Last Modified: Tue, 30 May 2017 17:59:52 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c4ee3f7947026382b407186174011eea0e49b7e7ea7d9a95570a7144d4ccf6`  
		Last Modified: Tue, 30 May 2017 17:59:52 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa9a1a1633aee86de3570e269e0fdf6c0f5bbd57d76fc54508aad87f87cb3fd`  
		Last Modified: Sat, 03 Jun 2017 19:07:39 GMT  
		Size: 4.1 KB (4058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88df8c4db0e8c44df3314406580778696cbe1711ec0c109b647a3234d3be4b06`  
		Last Modified: Sat, 03 Jun 2017 19:07:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e2ed4134e5e61943960d385ae98faa975327bef4a7e81722150cf84acd2572e`  
		Last Modified: Sat, 03 Jun 2017 19:09:21 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management`

```console
$ docker pull rabbitmq@sha256:86f8937de337a15b81cdf1bc7f75a078f5cf7ff0f359be95547a98113fe8bc08
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-management` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.0 MB (87958785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99d24cd4ff198d9aab19ec79089f59b5f19c74b56d2b73570cff674ccabd7fc3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:31:23 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 10 May 2017 15:31:24 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 May 2017 15:31:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 10 May 2017 15:31:46 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 10 May 2017 15:31:48 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Wed, 10 May 2017 15:32:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:32:20 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 10 May 2017 15:32:23 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 10 May 2017 15:32:24 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 30 May 2017 17:32:18 GMT
ENV RABBITMQ_VERSION=3.6.10
# Tue, 30 May 2017 17:32:20 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.10-1
# Tue, 30 May 2017 17:32:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 May 2017 17:33:12 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 May 2017 17:33:13 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 30 May 2017 17:33:37 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 30 May 2017 17:33:59 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 30 May 2017 17:34:02 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 30 May 2017 17:34:27 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Sat, 03 Jun 2017 19:05:49 GMT
COPY file:95ed14b1f44e48ff624503df658f6073cc490c98fb19105180ea52d93812a81d in /usr/local/bin/ 
# Sat, 03 Jun 2017 19:05:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Jun 2017 19:05:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Jun 2017 19:05:53 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Jun 2017 19:05:53 GMT
CMD ["rabbitmq-server"]
# Sat, 03 Jun 2017 19:06:19 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 03 Jun 2017 19:06:20 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad3529559716ef2226d04b49688e86c4e33e25788838dce402a97e3b9cb4357`  
		Last Modified: Sat, 13 May 2017 18:07:30 GMT  
		Size: 4.4 KB (4376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d6f7fd21c4b2507908ced40197cca24acbeaf097f52fa31a0f88b63830d7f4`  
		Last Modified: Sat, 13 May 2017 18:07:30 GMT  
		Size: 1.3 MB (1307776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4971849d324fe6ca2ba0aef4418bb06d9999a0bf90527f86ba6e916ff0bbd2bc`  
		Last Modified: Sat, 13 May 2017 18:07:28 GMT  
		Size: 2.5 KB (2502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c4afa2fcab88b38bb66b17fb0162c5a7d5175984afd079022afdc6a65f18acd`  
		Last Modified: Sat, 13 May 2017 18:07:28 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a846993595cb3919b6d37f55dc1e1ac7f593a8ff7dd58d3f2d03dc64e8a2d43`  
		Last Modified: Sat, 13 May 2017 18:07:32 GMT  
		Size: 28.3 MB (28347945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe1747cbdec723d9f40051e657d28358e6a09f751ccb1a2ea807a44f27d5e8d`  
		Last Modified: Sat, 13 May 2017 18:07:27 GMT  
		Size: 3.1 KB (3099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4773d4648f681e6de65dddf61ca22be624193850b6d76a93ee78f0305926dca`  
		Last Modified: Sat, 13 May 2017 18:07:27 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b37a62317bf84e750f03fbee37fd1f8de5b3c8743819e11cbb9194b4b854c6`  
		Last Modified: Tue, 30 May 2017 17:59:54 GMT  
		Size: 5.7 MB (5701762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3dbc4804b4a7f4fa3d0e3845bde7884071c891863a1454956c82b82712f71d`  
		Last Modified: Tue, 30 May 2017 17:59:52 GMT  
		Size: 2.2 KB (2232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35f964b5a125f4382c6760b7b97f7759ee5e7382d2a0ce37c0654742a48cfbd`  
		Last Modified: Tue, 30 May 2017 17:59:52 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c4ee3f7947026382b407186174011eea0e49b7e7ea7d9a95570a7144d4ccf6`  
		Last Modified: Tue, 30 May 2017 17:59:52 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa9a1a1633aee86de3570e269e0fdf6c0f5bbd57d76fc54508aad87f87cb3fd`  
		Last Modified: Sat, 03 Jun 2017 19:07:39 GMT  
		Size: 4.1 KB (4058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88df8c4db0e8c44df3314406580778696cbe1711ec0c109b647a3234d3be4b06`  
		Last Modified: Sat, 03 Jun 2017 19:07:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e2ed4134e5e61943960d385ae98faa975327bef4a7e81722150cf84acd2572e`  
		Last Modified: Sat, 03 Jun 2017 19:09:21 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management`

```console
$ docker pull rabbitmq@sha256:86f8937de337a15b81cdf1bc7f75a078f5cf7ff0f359be95547a98113fe8bc08
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-management` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.0 MB (87958785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99d24cd4ff198d9aab19ec79089f59b5f19c74b56d2b73570cff674ccabd7fc3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:31:23 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 10 May 2017 15:31:24 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 May 2017 15:31:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 10 May 2017 15:31:46 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 10 May 2017 15:31:48 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Wed, 10 May 2017 15:32:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:32:20 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 10 May 2017 15:32:23 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 10 May 2017 15:32:24 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 30 May 2017 17:32:18 GMT
ENV RABBITMQ_VERSION=3.6.10
# Tue, 30 May 2017 17:32:20 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.10-1
# Tue, 30 May 2017 17:32:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 May 2017 17:33:12 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 May 2017 17:33:13 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 30 May 2017 17:33:37 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 30 May 2017 17:33:59 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 30 May 2017 17:34:02 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 30 May 2017 17:34:27 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Sat, 03 Jun 2017 19:05:49 GMT
COPY file:95ed14b1f44e48ff624503df658f6073cc490c98fb19105180ea52d93812a81d in /usr/local/bin/ 
# Sat, 03 Jun 2017 19:05:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Jun 2017 19:05:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Jun 2017 19:05:53 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Jun 2017 19:05:53 GMT
CMD ["rabbitmq-server"]
# Sat, 03 Jun 2017 19:06:19 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 03 Jun 2017 19:06:20 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad3529559716ef2226d04b49688e86c4e33e25788838dce402a97e3b9cb4357`  
		Last Modified: Sat, 13 May 2017 18:07:30 GMT  
		Size: 4.4 KB (4376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d6f7fd21c4b2507908ced40197cca24acbeaf097f52fa31a0f88b63830d7f4`  
		Last Modified: Sat, 13 May 2017 18:07:30 GMT  
		Size: 1.3 MB (1307776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4971849d324fe6ca2ba0aef4418bb06d9999a0bf90527f86ba6e916ff0bbd2bc`  
		Last Modified: Sat, 13 May 2017 18:07:28 GMT  
		Size: 2.5 KB (2502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c4afa2fcab88b38bb66b17fb0162c5a7d5175984afd079022afdc6a65f18acd`  
		Last Modified: Sat, 13 May 2017 18:07:28 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a846993595cb3919b6d37f55dc1e1ac7f593a8ff7dd58d3f2d03dc64e8a2d43`  
		Last Modified: Sat, 13 May 2017 18:07:32 GMT  
		Size: 28.3 MB (28347945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe1747cbdec723d9f40051e657d28358e6a09f751ccb1a2ea807a44f27d5e8d`  
		Last Modified: Sat, 13 May 2017 18:07:27 GMT  
		Size: 3.1 KB (3099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4773d4648f681e6de65dddf61ca22be624193850b6d76a93ee78f0305926dca`  
		Last Modified: Sat, 13 May 2017 18:07:27 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b37a62317bf84e750f03fbee37fd1f8de5b3c8743819e11cbb9194b4b854c6`  
		Last Modified: Tue, 30 May 2017 17:59:54 GMT  
		Size: 5.7 MB (5701762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3dbc4804b4a7f4fa3d0e3845bde7884071c891863a1454956c82b82712f71d`  
		Last Modified: Tue, 30 May 2017 17:59:52 GMT  
		Size: 2.2 KB (2232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35f964b5a125f4382c6760b7b97f7759ee5e7382d2a0ce37c0654742a48cfbd`  
		Last Modified: Tue, 30 May 2017 17:59:52 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c4ee3f7947026382b407186174011eea0e49b7e7ea7d9a95570a7144d4ccf6`  
		Last Modified: Tue, 30 May 2017 17:59:52 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa9a1a1633aee86de3570e269e0fdf6c0f5bbd57d76fc54508aad87f87cb3fd`  
		Last Modified: Sat, 03 Jun 2017 19:07:39 GMT  
		Size: 4.1 KB (4058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88df8c4db0e8c44df3314406580778696cbe1711ec0c109b647a3234d3be4b06`  
		Last Modified: Sat, 03 Jun 2017 19:07:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e2ed4134e5e61943960d385ae98faa975327bef4a7e81722150cf84acd2572e`  
		Last Modified: Sat, 03 Jun 2017 19:09:21 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management`

```console
$ docker pull rabbitmq@sha256:86f8937de337a15b81cdf1bc7f75a078f5cf7ff0f359be95547a98113fe8bc08
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:management` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.0 MB (87958785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99d24cd4ff198d9aab19ec79089f59b5f19c74b56d2b73570cff674ccabd7fc3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:31:23 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 10 May 2017 15:31:24 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 May 2017 15:31:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 10 May 2017 15:31:46 GMT
RUN set -ex; 	key='434975BD900CCBE4F7EE1B1ED208507CA14F4FCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/erlang-solutions.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 10 May 2017 15:31:48 GMT
RUN echo 'deb http://packages.erlang-solutions.com/debian jessie contrib' > /etc/apt/sources.list.d/erlang.list
# Wed, 10 May 2017 15:32:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-base-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:32:20 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 10 May 2017 15:32:23 GMT
RUN set -ex; 	key='0A9AF2115F4687BD29803A206B73A36E6026DFCA'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/rabbitmq.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 10 May 2017 15:32:24 GMT
RUN echo 'deb http://www.rabbitmq.com/debian testing main' > /etc/apt/sources.list.d/rabbitmq.list
# Tue, 30 May 2017 17:32:18 GMT
ENV RABBITMQ_VERSION=3.6.10
# Tue, 30 May 2017 17:32:20 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.10-1
# Tue, 30 May 2017 17:32:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 May 2017 17:33:12 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 May 2017 17:33:13 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 30 May 2017 17:33:37 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 30 May 2017 17:33:59 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 30 May 2017 17:34:02 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 30 May 2017 17:34:27 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Sat, 03 Jun 2017 19:05:49 GMT
COPY file:95ed14b1f44e48ff624503df658f6073cc490c98fb19105180ea52d93812a81d in /usr/local/bin/ 
# Sat, 03 Jun 2017 19:05:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Jun 2017 19:05:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Jun 2017 19:05:53 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Jun 2017 19:05:53 GMT
CMD ["rabbitmq-server"]
# Sat, 03 Jun 2017 19:06:19 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 03 Jun 2017 19:06:20 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad3529559716ef2226d04b49688e86c4e33e25788838dce402a97e3b9cb4357`  
		Last Modified: Sat, 13 May 2017 18:07:30 GMT  
		Size: 4.4 KB (4376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d6f7fd21c4b2507908ced40197cca24acbeaf097f52fa31a0f88b63830d7f4`  
		Last Modified: Sat, 13 May 2017 18:07:30 GMT  
		Size: 1.3 MB (1307776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4971849d324fe6ca2ba0aef4418bb06d9999a0bf90527f86ba6e916ff0bbd2bc`  
		Last Modified: Sat, 13 May 2017 18:07:28 GMT  
		Size: 2.5 KB (2502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c4afa2fcab88b38bb66b17fb0162c5a7d5175984afd079022afdc6a65f18acd`  
		Last Modified: Sat, 13 May 2017 18:07:28 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a846993595cb3919b6d37f55dc1e1ac7f593a8ff7dd58d3f2d03dc64e8a2d43`  
		Last Modified: Sat, 13 May 2017 18:07:32 GMT  
		Size: 28.3 MB (28347945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe1747cbdec723d9f40051e657d28358e6a09f751ccb1a2ea807a44f27d5e8d`  
		Last Modified: Sat, 13 May 2017 18:07:27 GMT  
		Size: 3.1 KB (3099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4773d4648f681e6de65dddf61ca22be624193850b6d76a93ee78f0305926dca`  
		Last Modified: Sat, 13 May 2017 18:07:27 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b37a62317bf84e750f03fbee37fd1f8de5b3c8743819e11cbb9194b4b854c6`  
		Last Modified: Tue, 30 May 2017 17:59:54 GMT  
		Size: 5.7 MB (5701762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3dbc4804b4a7f4fa3d0e3845bde7884071c891863a1454956c82b82712f71d`  
		Last Modified: Tue, 30 May 2017 17:59:52 GMT  
		Size: 2.2 KB (2232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35f964b5a125f4382c6760b7b97f7759ee5e7382d2a0ce37c0654742a48cfbd`  
		Last Modified: Tue, 30 May 2017 17:59:52 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c4ee3f7947026382b407186174011eea0e49b7e7ea7d9a95570a7144d4ccf6`  
		Last Modified: Tue, 30 May 2017 17:59:52 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa9a1a1633aee86de3570e269e0fdf6c0f5bbd57d76fc54508aad87f87cb3fd`  
		Last Modified: Sat, 03 Jun 2017 19:07:39 GMT  
		Size: 4.1 KB (4058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88df8c4db0e8c44df3314406580778696cbe1711ec0c109b647a3234d3be4b06`  
		Last Modified: Sat, 03 Jun 2017 19:07:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e2ed4134e5e61943960d385ae98faa975327bef4a7e81722150cf84acd2572e`  
		Last Modified: Sat, 03 Jun 2017 19:09:21 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.10-alpine`

```console
$ docker pull rabbitmq@sha256:c94f64b00514649c554c616e80b00e086057311c5d38422b99c1d255f04140e7
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.10-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.0 MB (23034460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1166c06376b2bceecd64de4a33e743906b708a6da87d89eb0af9a30e697745c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 17:42:37 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 30 May 2017 17:43:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 30 May 2017 17:44:08 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 30 May 2017 17:45:04 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 30 May 2017 17:45:46 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 30 May 2017 17:49:22 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 May 2017 17:49:43 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 30 May 2017 17:50:25 GMT
ENV RABBITMQ_VERSION=3.6.10
# Tue, 30 May 2017 17:51:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 30 May 2017 17:51:29 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 30 May 2017 17:52:12 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 30 May 2017 17:52:53 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 30 May 2017 17:53:14 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 30 May 2017 17:53:56 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 03 Jun 2017 19:06:44 GMT
COPY file:bf6461a6f7a327db4baf0044633b5b3abadabdf6c7d37a47d3c8dc844f18596e in /usr/local/bin/ 
# Sat, 03 Jun 2017 19:06:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Jun 2017 19:06:45 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Jun 2017 19:06:46 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4d31626b4cc745fecb44d4f4d9a435c813c2c849dbcc9a49b2d73e9c23390d`  
		Last Modified: Tue, 30 May 2017 18:05:31 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0a1c444efd570c63e3c0c5b587c3b3dfbca3b87e8ac33431710097d1d953bb`  
		Last Modified: Tue, 30 May 2017 18:05:31 GMT  
		Size: 7.8 KB (7765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7f26d2e4ea099641ab2db1f9cfd0351bf750c1d79a1e861cf1d194f2ec36ed`  
		Last Modified: Tue, 30 May 2017 18:05:33 GMT  
		Size: 16.1 MB (16079815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0afcdcde06c8cd2c5a071e6a2e7bf0e992c0d811562dbd4e82bfa7d20dcab3c`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 5.0 MB (4973215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eded4c951133b1f8158c790221e9fb1490ac62f68951956c55f773718d6193a`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a28c54e2118bd2a706249cf67ef231a617e2b950fc03c0756ea98f00879faa6`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c33ede5ed226518f7d19e45e5520b867820f2daf7a70a373d4f9813d0d33bb`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23afaa6d5c1544a7e6d5c9dbf87b18af56143c973c0723afb6ea09a0b4ca1b84`  
		Last Modified: Sat, 03 Jun 2017 19:11:00 GMT  
		Size: 4.0 KB (4048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-alpine`

```console
$ docker pull rabbitmq@sha256:c94f64b00514649c554c616e80b00e086057311c5d38422b99c1d255f04140e7
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.0 MB (23034460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1166c06376b2bceecd64de4a33e743906b708a6da87d89eb0af9a30e697745c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 17:42:37 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 30 May 2017 17:43:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 30 May 2017 17:44:08 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 30 May 2017 17:45:04 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 30 May 2017 17:45:46 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 30 May 2017 17:49:22 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 May 2017 17:49:43 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 30 May 2017 17:50:25 GMT
ENV RABBITMQ_VERSION=3.6.10
# Tue, 30 May 2017 17:51:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 30 May 2017 17:51:29 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 30 May 2017 17:52:12 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 30 May 2017 17:52:53 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 30 May 2017 17:53:14 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 30 May 2017 17:53:56 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 03 Jun 2017 19:06:44 GMT
COPY file:bf6461a6f7a327db4baf0044633b5b3abadabdf6c7d37a47d3c8dc844f18596e in /usr/local/bin/ 
# Sat, 03 Jun 2017 19:06:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Jun 2017 19:06:45 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Jun 2017 19:06:46 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4d31626b4cc745fecb44d4f4d9a435c813c2c849dbcc9a49b2d73e9c23390d`  
		Last Modified: Tue, 30 May 2017 18:05:31 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0a1c444efd570c63e3c0c5b587c3b3dfbca3b87e8ac33431710097d1d953bb`  
		Last Modified: Tue, 30 May 2017 18:05:31 GMT  
		Size: 7.8 KB (7765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7f26d2e4ea099641ab2db1f9cfd0351bf750c1d79a1e861cf1d194f2ec36ed`  
		Last Modified: Tue, 30 May 2017 18:05:33 GMT  
		Size: 16.1 MB (16079815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0afcdcde06c8cd2c5a071e6a2e7bf0e992c0d811562dbd4e82bfa7d20dcab3c`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 5.0 MB (4973215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eded4c951133b1f8158c790221e9fb1490ac62f68951956c55f773718d6193a`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a28c54e2118bd2a706249cf67ef231a617e2b950fc03c0756ea98f00879faa6`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c33ede5ed226518f7d19e45e5520b867820f2daf7a70a373d4f9813d0d33bb`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23afaa6d5c1544a7e6d5c9dbf87b18af56143c973c0723afb6ea09a0b4ca1b84`  
		Last Modified: Sat, 03 Jun 2017 19:11:00 GMT  
		Size: 4.0 KB (4048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-alpine`

```console
$ docker pull rabbitmq@sha256:c94f64b00514649c554c616e80b00e086057311c5d38422b99c1d255f04140e7
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.0 MB (23034460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1166c06376b2bceecd64de4a33e743906b708a6da87d89eb0af9a30e697745c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 17:42:37 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 30 May 2017 17:43:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 30 May 2017 17:44:08 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 30 May 2017 17:45:04 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 30 May 2017 17:45:46 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 30 May 2017 17:49:22 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 May 2017 17:49:43 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 30 May 2017 17:50:25 GMT
ENV RABBITMQ_VERSION=3.6.10
# Tue, 30 May 2017 17:51:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 30 May 2017 17:51:29 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 30 May 2017 17:52:12 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 30 May 2017 17:52:53 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 30 May 2017 17:53:14 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 30 May 2017 17:53:56 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 03 Jun 2017 19:06:44 GMT
COPY file:bf6461a6f7a327db4baf0044633b5b3abadabdf6c7d37a47d3c8dc844f18596e in /usr/local/bin/ 
# Sat, 03 Jun 2017 19:06:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Jun 2017 19:06:45 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Jun 2017 19:06:46 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4d31626b4cc745fecb44d4f4d9a435c813c2c849dbcc9a49b2d73e9c23390d`  
		Last Modified: Tue, 30 May 2017 18:05:31 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0a1c444efd570c63e3c0c5b587c3b3dfbca3b87e8ac33431710097d1d953bb`  
		Last Modified: Tue, 30 May 2017 18:05:31 GMT  
		Size: 7.8 KB (7765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7f26d2e4ea099641ab2db1f9cfd0351bf750c1d79a1e861cf1d194f2ec36ed`  
		Last Modified: Tue, 30 May 2017 18:05:33 GMT  
		Size: 16.1 MB (16079815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0afcdcde06c8cd2c5a071e6a2e7bf0e992c0d811562dbd4e82bfa7d20dcab3c`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 5.0 MB (4973215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eded4c951133b1f8158c790221e9fb1490ac62f68951956c55f773718d6193a`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a28c54e2118bd2a706249cf67ef231a617e2b950fc03c0756ea98f00879faa6`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c33ede5ed226518f7d19e45e5520b867820f2daf7a70a373d4f9813d0d33bb`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23afaa6d5c1544a7e6d5c9dbf87b18af56143c973c0723afb6ea09a0b4ca1b84`  
		Last Modified: Sat, 03 Jun 2017 19:11:00 GMT  
		Size: 4.0 KB (4048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:alpine`

```console
$ docker pull rabbitmq@sha256:c94f64b00514649c554c616e80b00e086057311c5d38422b99c1d255f04140e7
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.0 MB (23034460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1166c06376b2bceecd64de4a33e743906b708a6da87d89eb0af9a30e697745c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 17:42:37 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 30 May 2017 17:43:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 30 May 2017 17:44:08 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 30 May 2017 17:45:04 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 30 May 2017 17:45:46 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 30 May 2017 17:49:22 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 May 2017 17:49:43 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 30 May 2017 17:50:25 GMT
ENV RABBITMQ_VERSION=3.6.10
# Tue, 30 May 2017 17:51:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 30 May 2017 17:51:29 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 30 May 2017 17:52:12 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 30 May 2017 17:52:53 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 30 May 2017 17:53:14 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 30 May 2017 17:53:56 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 03 Jun 2017 19:06:44 GMT
COPY file:bf6461a6f7a327db4baf0044633b5b3abadabdf6c7d37a47d3c8dc844f18596e in /usr/local/bin/ 
# Sat, 03 Jun 2017 19:06:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Jun 2017 19:06:45 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Jun 2017 19:06:46 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4d31626b4cc745fecb44d4f4d9a435c813c2c849dbcc9a49b2d73e9c23390d`  
		Last Modified: Tue, 30 May 2017 18:05:31 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0a1c444efd570c63e3c0c5b587c3b3dfbca3b87e8ac33431710097d1d953bb`  
		Last Modified: Tue, 30 May 2017 18:05:31 GMT  
		Size: 7.8 KB (7765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7f26d2e4ea099641ab2db1f9cfd0351bf750c1d79a1e861cf1d194f2ec36ed`  
		Last Modified: Tue, 30 May 2017 18:05:33 GMT  
		Size: 16.1 MB (16079815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0afcdcde06c8cd2c5a071e6a2e7bf0e992c0d811562dbd4e82bfa7d20dcab3c`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 5.0 MB (4973215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eded4c951133b1f8158c790221e9fb1490ac62f68951956c55f773718d6193a`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a28c54e2118bd2a706249cf67ef231a617e2b950fc03c0756ea98f00879faa6`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c33ede5ed226518f7d19e45e5520b867820f2daf7a70a373d4f9813d0d33bb`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23afaa6d5c1544a7e6d5c9dbf87b18af56143c973c0723afb6ea09a0b4ca1b84`  
		Last Modified: Sat, 03 Jun 2017 19:11:00 GMT  
		Size: 4.0 KB (4048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.10-management-alpine`

```console
$ docker pull rabbitmq@sha256:c81381a24a91dcf111eccbd6de8f667eb8ee093ba6461632672b1d2de2f68763
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.10-management-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.0 MB (23034649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41a64d8506fcfaa0228d08833252e15365e3aa2855eb1959e76943808899b1f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 17:42:37 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 30 May 2017 17:43:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 30 May 2017 17:44:08 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 30 May 2017 17:45:04 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 30 May 2017 17:45:46 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 30 May 2017 17:49:22 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 May 2017 17:49:43 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 30 May 2017 17:50:25 GMT
ENV RABBITMQ_VERSION=3.6.10
# Tue, 30 May 2017 17:51:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 30 May 2017 17:51:29 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 30 May 2017 17:52:12 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 30 May 2017 17:52:53 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 30 May 2017 17:53:14 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 30 May 2017 17:53:56 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 03 Jun 2017 19:06:44 GMT
COPY file:bf6461a6f7a327db4baf0044633b5b3abadabdf6c7d37a47d3c8dc844f18596e in /usr/local/bin/ 
# Sat, 03 Jun 2017 19:06:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Jun 2017 19:06:45 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Jun 2017 19:06:46 GMT
CMD ["rabbitmq-server"]
# Sat, 03 Jun 2017 19:07:12 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 03 Jun 2017 19:07:13 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4d31626b4cc745fecb44d4f4d9a435c813c2c849dbcc9a49b2d73e9c23390d`  
		Last Modified: Tue, 30 May 2017 18:05:31 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0a1c444efd570c63e3c0c5b587c3b3dfbca3b87e8ac33431710097d1d953bb`  
		Last Modified: Tue, 30 May 2017 18:05:31 GMT  
		Size: 7.8 KB (7765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7f26d2e4ea099641ab2db1f9cfd0351bf750c1d79a1e861cf1d194f2ec36ed`  
		Last Modified: Tue, 30 May 2017 18:05:33 GMT  
		Size: 16.1 MB (16079815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0afcdcde06c8cd2c5a071e6a2e7bf0e992c0d811562dbd4e82bfa7d20dcab3c`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 5.0 MB (4973215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eded4c951133b1f8158c790221e9fb1490ac62f68951956c55f773718d6193a`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a28c54e2118bd2a706249cf67ef231a617e2b950fc03c0756ea98f00879faa6`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c33ede5ed226518f7d19e45e5520b867820f2daf7a70a373d4f9813d0d33bb`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23afaa6d5c1544a7e6d5c9dbf87b18af56143c973c0723afb6ea09a0b4ca1b84`  
		Last Modified: Sat, 03 Jun 2017 19:11:00 GMT  
		Size: 4.0 KB (4048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7512039660cd8585d6da75b18efe072ec81ad4a29d183808c2ab5d2ac137a0`  
		Last Modified: Sat, 03 Jun 2017 19:12:38 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management-alpine`

```console
$ docker pull rabbitmq@sha256:c81381a24a91dcf111eccbd6de8f667eb8ee093ba6461632672b1d2de2f68763
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-management-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.0 MB (23034649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41a64d8506fcfaa0228d08833252e15365e3aa2855eb1959e76943808899b1f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 17:42:37 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 30 May 2017 17:43:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 30 May 2017 17:44:08 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 30 May 2017 17:45:04 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 30 May 2017 17:45:46 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 30 May 2017 17:49:22 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 May 2017 17:49:43 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 30 May 2017 17:50:25 GMT
ENV RABBITMQ_VERSION=3.6.10
# Tue, 30 May 2017 17:51:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 30 May 2017 17:51:29 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 30 May 2017 17:52:12 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 30 May 2017 17:52:53 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 30 May 2017 17:53:14 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 30 May 2017 17:53:56 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 03 Jun 2017 19:06:44 GMT
COPY file:bf6461a6f7a327db4baf0044633b5b3abadabdf6c7d37a47d3c8dc844f18596e in /usr/local/bin/ 
# Sat, 03 Jun 2017 19:06:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Jun 2017 19:06:45 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Jun 2017 19:06:46 GMT
CMD ["rabbitmq-server"]
# Sat, 03 Jun 2017 19:07:12 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 03 Jun 2017 19:07:13 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4d31626b4cc745fecb44d4f4d9a435c813c2c849dbcc9a49b2d73e9c23390d`  
		Last Modified: Tue, 30 May 2017 18:05:31 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0a1c444efd570c63e3c0c5b587c3b3dfbca3b87e8ac33431710097d1d953bb`  
		Last Modified: Tue, 30 May 2017 18:05:31 GMT  
		Size: 7.8 KB (7765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7f26d2e4ea099641ab2db1f9cfd0351bf750c1d79a1e861cf1d194f2ec36ed`  
		Last Modified: Tue, 30 May 2017 18:05:33 GMT  
		Size: 16.1 MB (16079815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0afcdcde06c8cd2c5a071e6a2e7bf0e992c0d811562dbd4e82bfa7d20dcab3c`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 5.0 MB (4973215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eded4c951133b1f8158c790221e9fb1490ac62f68951956c55f773718d6193a`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a28c54e2118bd2a706249cf67ef231a617e2b950fc03c0756ea98f00879faa6`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c33ede5ed226518f7d19e45e5520b867820f2daf7a70a373d4f9813d0d33bb`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23afaa6d5c1544a7e6d5c9dbf87b18af56143c973c0723afb6ea09a0b4ca1b84`  
		Last Modified: Sat, 03 Jun 2017 19:11:00 GMT  
		Size: 4.0 KB (4048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7512039660cd8585d6da75b18efe072ec81ad4a29d183808c2ab5d2ac137a0`  
		Last Modified: Sat, 03 Jun 2017 19:12:38 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management-alpine`

```console
$ docker pull rabbitmq@sha256:c81381a24a91dcf111eccbd6de8f667eb8ee093ba6461632672b1d2de2f68763
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-management-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.0 MB (23034649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41a64d8506fcfaa0228d08833252e15365e3aa2855eb1959e76943808899b1f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 17:42:37 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 30 May 2017 17:43:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 30 May 2017 17:44:08 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 30 May 2017 17:45:04 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 30 May 2017 17:45:46 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 30 May 2017 17:49:22 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 May 2017 17:49:43 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 30 May 2017 17:50:25 GMT
ENV RABBITMQ_VERSION=3.6.10
# Tue, 30 May 2017 17:51:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 30 May 2017 17:51:29 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 30 May 2017 17:52:12 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 30 May 2017 17:52:53 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 30 May 2017 17:53:14 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 30 May 2017 17:53:56 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 03 Jun 2017 19:06:44 GMT
COPY file:bf6461a6f7a327db4baf0044633b5b3abadabdf6c7d37a47d3c8dc844f18596e in /usr/local/bin/ 
# Sat, 03 Jun 2017 19:06:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Jun 2017 19:06:45 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Jun 2017 19:06:46 GMT
CMD ["rabbitmq-server"]
# Sat, 03 Jun 2017 19:07:12 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 03 Jun 2017 19:07:13 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4d31626b4cc745fecb44d4f4d9a435c813c2c849dbcc9a49b2d73e9c23390d`  
		Last Modified: Tue, 30 May 2017 18:05:31 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0a1c444efd570c63e3c0c5b587c3b3dfbca3b87e8ac33431710097d1d953bb`  
		Last Modified: Tue, 30 May 2017 18:05:31 GMT  
		Size: 7.8 KB (7765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7f26d2e4ea099641ab2db1f9cfd0351bf750c1d79a1e861cf1d194f2ec36ed`  
		Last Modified: Tue, 30 May 2017 18:05:33 GMT  
		Size: 16.1 MB (16079815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0afcdcde06c8cd2c5a071e6a2e7bf0e992c0d811562dbd4e82bfa7d20dcab3c`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 5.0 MB (4973215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eded4c951133b1f8158c790221e9fb1490ac62f68951956c55f773718d6193a`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a28c54e2118bd2a706249cf67ef231a617e2b950fc03c0756ea98f00879faa6`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c33ede5ed226518f7d19e45e5520b867820f2daf7a70a373d4f9813d0d33bb`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23afaa6d5c1544a7e6d5c9dbf87b18af56143c973c0723afb6ea09a0b4ca1b84`  
		Last Modified: Sat, 03 Jun 2017 19:11:00 GMT  
		Size: 4.0 KB (4048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7512039660cd8585d6da75b18efe072ec81ad4a29d183808c2ab5d2ac137a0`  
		Last Modified: Sat, 03 Jun 2017 19:12:38 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management-alpine`

```console
$ docker pull rabbitmq@sha256:c81381a24a91dcf111eccbd6de8f667eb8ee093ba6461632672b1d2de2f68763
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:management-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.0 MB (23034649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41a64d8506fcfaa0228d08833252e15365e3aa2855eb1959e76943808899b1f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Tue, 30 May 2017 17:42:37 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 30 May 2017 17:43:21 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 30 May 2017 17:44:08 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 30 May 2017 17:45:04 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 30 May 2017 17:45:46 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 30 May 2017 17:49:22 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 May 2017 17:49:43 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 30 May 2017 17:50:25 GMT
ENV RABBITMQ_VERSION=3.6.10
# Tue, 30 May 2017 17:51:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 30 May 2017 17:51:29 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 30 May 2017 17:52:12 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 30 May 2017 17:52:53 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 30 May 2017 17:53:14 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 30 May 2017 17:53:56 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 03 Jun 2017 19:06:44 GMT
COPY file:bf6461a6f7a327db4baf0044633b5b3abadabdf6c7d37a47d3c8dc844f18596e in /usr/local/bin/ 
# Sat, 03 Jun 2017 19:06:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Jun 2017 19:06:45 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Jun 2017 19:06:46 GMT
CMD ["rabbitmq-server"]
# Sat, 03 Jun 2017 19:07:12 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 03 Jun 2017 19:07:13 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4d31626b4cc745fecb44d4f4d9a435c813c2c849dbcc9a49b2d73e9c23390d`  
		Last Modified: Tue, 30 May 2017 18:05:31 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0a1c444efd570c63e3c0c5b587c3b3dfbca3b87e8ac33431710097d1d953bb`  
		Last Modified: Tue, 30 May 2017 18:05:31 GMT  
		Size: 7.8 KB (7765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7f26d2e4ea099641ab2db1f9cfd0351bf750c1d79a1e861cf1d194f2ec36ed`  
		Last Modified: Tue, 30 May 2017 18:05:33 GMT  
		Size: 16.1 MB (16079815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0afcdcde06c8cd2c5a071e6a2e7bf0e992c0d811562dbd4e82bfa7d20dcab3c`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 5.0 MB (4973215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eded4c951133b1f8158c790221e9fb1490ac62f68951956c55f773718d6193a`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a28c54e2118bd2a706249cf67ef231a617e2b950fc03c0756ea98f00879faa6`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c33ede5ed226518f7d19e45e5520b867820f2daf7a70a373d4f9813d0d33bb`  
		Last Modified: Tue, 30 May 2017 18:05:29 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23afaa6d5c1544a7e6d5c9dbf87b18af56143c973c0723afb6ea09a0b4ca1b84`  
		Last Modified: Sat, 03 Jun 2017 19:11:00 GMT  
		Size: 4.0 KB (4048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7512039660cd8585d6da75b18efe072ec81ad4a29d183808c2ab5d2ac137a0`  
		Last Modified: Sat, 03 Jun 2017 19:12:38 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
