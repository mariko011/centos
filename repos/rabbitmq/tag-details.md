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
$ docker pull rabbitmq@sha256:727c1f4df2df1c31ce1172e0589ef0a680d2d4c295cc3b4bfef9a97ef1ca2676
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.9` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.9 MB (87945458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:951e8c07aaa5e49f5012af309713b9a1329a149d988761a97c646233b786bbdb`
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
# Wed, 10 May 2017 15:32:25 GMT
ENV RABBITMQ_VERSION=3.6.9
# Wed, 10 May 2017 15:32:26 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.9-1
# Wed, 10 May 2017 15:32:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:32:37 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 15:32:37 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 10 May 2017 15:32:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 10 May 2017 15:32:40 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 10 May 2017 15:32:42 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 10 May 2017 15:32:44 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 10 May 2017 15:32:45 GMT
COPY file:e75247400159c3b996450d9b4ef7078cf9587833f465ab2904b2b7ef35be65e9 in /usr/local/bin/ 
# Wed, 10 May 2017 15:32:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 10 May 2017 15:32:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 15:32:48 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 10 May 2017 15:32:49 GMT
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
	-	`sha256:688ad704b3d6c315c85950ea57b88828b503dfbda346cfec7a67ff5696be5443`  
		Last Modified: Sat, 13 May 2017 18:07:27 GMT  
		Size: 5.7 MB (5688635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9231ad18e7e05cc9a23d5dee0da6fec4c244dbc7a51fdf3a62fe3684484b4c5`  
		Last Modified: Sat, 13 May 2017 18:07:25 GMT  
		Size: 2.2 KB (2235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d61ea7157c3846a88fd941c91944d00d952024cdf752292b6f781a2facd7896`  
		Last Modified: Sat, 13 May 2017 18:07:25 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8434d606daac7763521c20374d53137462c6c49c5af7a9e0da9bf7a060a8cd59`  
		Last Modified: Sat, 13 May 2017 18:07:26 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4f553d4a4f79651cb301196df2e5ed4cdcd5e9fcbd91696cff44f7ce2e2bdc`  
		Last Modified: Sat, 13 May 2017 18:07:25 GMT  
		Size: 4.0 KB (4043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d7e2eca442f194f7d6d157df36e37a0eb8ed850bb79c21427fe21928c440e0`  
		Last Modified: Sat, 13 May 2017 18:07:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6`

```console
$ docker pull rabbitmq@sha256:727c1f4df2df1c31ce1172e0589ef0a680d2d4c295cc3b4bfef9a97ef1ca2676
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.9 MB (87945458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:951e8c07aaa5e49f5012af309713b9a1329a149d988761a97c646233b786bbdb`
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
# Wed, 10 May 2017 15:32:25 GMT
ENV RABBITMQ_VERSION=3.6.9
# Wed, 10 May 2017 15:32:26 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.9-1
# Wed, 10 May 2017 15:32:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:32:37 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 15:32:37 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 10 May 2017 15:32:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 10 May 2017 15:32:40 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 10 May 2017 15:32:42 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 10 May 2017 15:32:44 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 10 May 2017 15:32:45 GMT
COPY file:e75247400159c3b996450d9b4ef7078cf9587833f465ab2904b2b7ef35be65e9 in /usr/local/bin/ 
# Wed, 10 May 2017 15:32:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 10 May 2017 15:32:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 15:32:48 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 10 May 2017 15:32:49 GMT
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
	-	`sha256:688ad704b3d6c315c85950ea57b88828b503dfbda346cfec7a67ff5696be5443`  
		Last Modified: Sat, 13 May 2017 18:07:27 GMT  
		Size: 5.7 MB (5688635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9231ad18e7e05cc9a23d5dee0da6fec4c244dbc7a51fdf3a62fe3684484b4c5`  
		Last Modified: Sat, 13 May 2017 18:07:25 GMT  
		Size: 2.2 KB (2235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d61ea7157c3846a88fd941c91944d00d952024cdf752292b6f781a2facd7896`  
		Last Modified: Sat, 13 May 2017 18:07:25 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8434d606daac7763521c20374d53137462c6c49c5af7a9e0da9bf7a060a8cd59`  
		Last Modified: Sat, 13 May 2017 18:07:26 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4f553d4a4f79651cb301196df2e5ed4cdcd5e9fcbd91696cff44f7ce2e2bdc`  
		Last Modified: Sat, 13 May 2017 18:07:25 GMT  
		Size: 4.0 KB (4043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d7e2eca442f194f7d6d157df36e37a0eb8ed850bb79c21427fe21928c440e0`  
		Last Modified: Sat, 13 May 2017 18:07:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3`

```console
$ docker pull rabbitmq@sha256:727c1f4df2df1c31ce1172e0589ef0a680d2d4c295cc3b4bfef9a97ef1ca2676
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.9 MB (87945458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:951e8c07aaa5e49f5012af309713b9a1329a149d988761a97c646233b786bbdb`
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
# Wed, 10 May 2017 15:32:25 GMT
ENV RABBITMQ_VERSION=3.6.9
# Wed, 10 May 2017 15:32:26 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.9-1
# Wed, 10 May 2017 15:32:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:32:37 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 15:32:37 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 10 May 2017 15:32:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 10 May 2017 15:32:40 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 10 May 2017 15:32:42 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 10 May 2017 15:32:44 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 10 May 2017 15:32:45 GMT
COPY file:e75247400159c3b996450d9b4ef7078cf9587833f465ab2904b2b7ef35be65e9 in /usr/local/bin/ 
# Wed, 10 May 2017 15:32:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 10 May 2017 15:32:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 15:32:48 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 10 May 2017 15:32:49 GMT
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
	-	`sha256:688ad704b3d6c315c85950ea57b88828b503dfbda346cfec7a67ff5696be5443`  
		Last Modified: Sat, 13 May 2017 18:07:27 GMT  
		Size: 5.7 MB (5688635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9231ad18e7e05cc9a23d5dee0da6fec4c244dbc7a51fdf3a62fe3684484b4c5`  
		Last Modified: Sat, 13 May 2017 18:07:25 GMT  
		Size: 2.2 KB (2235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d61ea7157c3846a88fd941c91944d00d952024cdf752292b6f781a2facd7896`  
		Last Modified: Sat, 13 May 2017 18:07:25 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8434d606daac7763521c20374d53137462c6c49c5af7a9e0da9bf7a060a8cd59`  
		Last Modified: Sat, 13 May 2017 18:07:26 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4f553d4a4f79651cb301196df2e5ed4cdcd5e9fcbd91696cff44f7ce2e2bdc`  
		Last Modified: Sat, 13 May 2017 18:07:25 GMT  
		Size: 4.0 KB (4043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d7e2eca442f194f7d6d157df36e37a0eb8ed850bb79c21427fe21928c440e0`  
		Last Modified: Sat, 13 May 2017 18:07:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:latest`

```console
$ docker pull rabbitmq@sha256:727c1f4df2df1c31ce1172e0589ef0a680d2d4c295cc3b4bfef9a97ef1ca2676
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.9 MB (87945458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:951e8c07aaa5e49f5012af309713b9a1329a149d988761a97c646233b786bbdb`
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
# Wed, 10 May 2017 15:32:25 GMT
ENV RABBITMQ_VERSION=3.6.9
# Wed, 10 May 2017 15:32:26 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.9-1
# Wed, 10 May 2017 15:32:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:32:37 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 15:32:37 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 10 May 2017 15:32:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 10 May 2017 15:32:40 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 10 May 2017 15:32:42 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 10 May 2017 15:32:44 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 10 May 2017 15:32:45 GMT
COPY file:e75247400159c3b996450d9b4ef7078cf9587833f465ab2904b2b7ef35be65e9 in /usr/local/bin/ 
# Wed, 10 May 2017 15:32:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 10 May 2017 15:32:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 15:32:48 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 10 May 2017 15:32:49 GMT
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
	-	`sha256:688ad704b3d6c315c85950ea57b88828b503dfbda346cfec7a67ff5696be5443`  
		Last Modified: Sat, 13 May 2017 18:07:27 GMT  
		Size: 5.7 MB (5688635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9231ad18e7e05cc9a23d5dee0da6fec4c244dbc7a51fdf3a62fe3684484b4c5`  
		Last Modified: Sat, 13 May 2017 18:07:25 GMT  
		Size: 2.2 KB (2235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d61ea7157c3846a88fd941c91944d00d952024cdf752292b6f781a2facd7896`  
		Last Modified: Sat, 13 May 2017 18:07:25 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8434d606daac7763521c20374d53137462c6c49c5af7a9e0da9bf7a060a8cd59`  
		Last Modified: Sat, 13 May 2017 18:07:26 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4f553d4a4f79651cb301196df2e5ed4cdcd5e9fcbd91696cff44f7ce2e2bdc`  
		Last Modified: Sat, 13 May 2017 18:07:25 GMT  
		Size: 4.0 KB (4043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d7e2eca442f194f7d6d157df36e37a0eb8ed850bb79c21427fe21928c440e0`  
		Last Modified: Sat, 13 May 2017 18:07:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.9-management`

```console
$ docker pull rabbitmq@sha256:c450736429ad0dc32a20e018ee4eb46f198749c0b2520ed17694797e24be7d24
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.9-management` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.9 MB (87945644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:281ee777b811aec6c605001e436936c0f9462f5c4c72e4ced734094f13bb7ac7`
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
# Wed, 10 May 2017 15:32:25 GMT
ENV RABBITMQ_VERSION=3.6.9
# Wed, 10 May 2017 15:32:26 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.9-1
# Wed, 10 May 2017 15:32:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:32:37 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 15:32:37 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 10 May 2017 15:32:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 10 May 2017 15:32:40 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 10 May 2017 15:32:42 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 10 May 2017 15:32:44 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 10 May 2017 15:32:45 GMT
COPY file:e75247400159c3b996450d9b4ef7078cf9587833f465ab2904b2b7ef35be65e9 in /usr/local/bin/ 
# Wed, 10 May 2017 15:32:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 10 May 2017 15:32:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 15:32:48 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 10 May 2017 15:32:49 GMT
CMD ["rabbitmq-server"]
# Wed, 10 May 2017 15:33:11 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 10 May 2017 15:33:12 GMT
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
	-	`sha256:688ad704b3d6c315c85950ea57b88828b503dfbda346cfec7a67ff5696be5443`  
		Last Modified: Sat, 13 May 2017 18:07:27 GMT  
		Size: 5.7 MB (5688635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9231ad18e7e05cc9a23d5dee0da6fec4c244dbc7a51fdf3a62fe3684484b4c5`  
		Last Modified: Sat, 13 May 2017 18:07:25 GMT  
		Size: 2.2 KB (2235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d61ea7157c3846a88fd941c91944d00d952024cdf752292b6f781a2facd7896`  
		Last Modified: Sat, 13 May 2017 18:07:25 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8434d606daac7763521c20374d53137462c6c49c5af7a9e0da9bf7a060a8cd59`  
		Last Modified: Sat, 13 May 2017 18:07:26 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4f553d4a4f79651cb301196df2e5ed4cdcd5e9fcbd91696cff44f7ce2e2bdc`  
		Last Modified: Sat, 13 May 2017 18:07:25 GMT  
		Size: 4.0 KB (4043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d7e2eca442f194f7d6d157df36e37a0eb8ed850bb79c21427fe21928c440e0`  
		Last Modified: Sat, 13 May 2017 18:07:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a2afc33f6b1cd60285783473114116bac24b36e0c1b0b98dcb000d7ebbebd9`  
		Last Modified: Sat, 13 May 2017 18:10:40 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management`

```console
$ docker pull rabbitmq@sha256:c450736429ad0dc32a20e018ee4eb46f198749c0b2520ed17694797e24be7d24
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-management` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.9 MB (87945644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:281ee777b811aec6c605001e436936c0f9462f5c4c72e4ced734094f13bb7ac7`
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
# Wed, 10 May 2017 15:32:25 GMT
ENV RABBITMQ_VERSION=3.6.9
# Wed, 10 May 2017 15:32:26 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.9-1
# Wed, 10 May 2017 15:32:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:32:37 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 15:32:37 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 10 May 2017 15:32:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 10 May 2017 15:32:40 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 10 May 2017 15:32:42 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 10 May 2017 15:32:44 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 10 May 2017 15:32:45 GMT
COPY file:e75247400159c3b996450d9b4ef7078cf9587833f465ab2904b2b7ef35be65e9 in /usr/local/bin/ 
# Wed, 10 May 2017 15:32:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 10 May 2017 15:32:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 15:32:48 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 10 May 2017 15:32:49 GMT
CMD ["rabbitmq-server"]
# Wed, 10 May 2017 15:33:11 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 10 May 2017 15:33:12 GMT
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
	-	`sha256:688ad704b3d6c315c85950ea57b88828b503dfbda346cfec7a67ff5696be5443`  
		Last Modified: Sat, 13 May 2017 18:07:27 GMT  
		Size: 5.7 MB (5688635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9231ad18e7e05cc9a23d5dee0da6fec4c244dbc7a51fdf3a62fe3684484b4c5`  
		Last Modified: Sat, 13 May 2017 18:07:25 GMT  
		Size: 2.2 KB (2235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d61ea7157c3846a88fd941c91944d00d952024cdf752292b6f781a2facd7896`  
		Last Modified: Sat, 13 May 2017 18:07:25 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8434d606daac7763521c20374d53137462c6c49c5af7a9e0da9bf7a060a8cd59`  
		Last Modified: Sat, 13 May 2017 18:07:26 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4f553d4a4f79651cb301196df2e5ed4cdcd5e9fcbd91696cff44f7ce2e2bdc`  
		Last Modified: Sat, 13 May 2017 18:07:25 GMT  
		Size: 4.0 KB (4043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d7e2eca442f194f7d6d157df36e37a0eb8ed850bb79c21427fe21928c440e0`  
		Last Modified: Sat, 13 May 2017 18:07:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a2afc33f6b1cd60285783473114116bac24b36e0c1b0b98dcb000d7ebbebd9`  
		Last Modified: Sat, 13 May 2017 18:10:40 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management`

```console
$ docker pull rabbitmq@sha256:c450736429ad0dc32a20e018ee4eb46f198749c0b2520ed17694797e24be7d24
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-management` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.9 MB (87945644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:281ee777b811aec6c605001e436936c0f9462f5c4c72e4ced734094f13bb7ac7`
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
# Wed, 10 May 2017 15:32:25 GMT
ENV RABBITMQ_VERSION=3.6.9
# Wed, 10 May 2017 15:32:26 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.9-1
# Wed, 10 May 2017 15:32:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:32:37 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 15:32:37 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 10 May 2017 15:32:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 10 May 2017 15:32:40 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 10 May 2017 15:32:42 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 10 May 2017 15:32:44 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 10 May 2017 15:32:45 GMT
COPY file:e75247400159c3b996450d9b4ef7078cf9587833f465ab2904b2b7ef35be65e9 in /usr/local/bin/ 
# Wed, 10 May 2017 15:32:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 10 May 2017 15:32:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 15:32:48 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 10 May 2017 15:32:49 GMT
CMD ["rabbitmq-server"]
# Wed, 10 May 2017 15:33:11 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 10 May 2017 15:33:12 GMT
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
	-	`sha256:688ad704b3d6c315c85950ea57b88828b503dfbda346cfec7a67ff5696be5443`  
		Last Modified: Sat, 13 May 2017 18:07:27 GMT  
		Size: 5.7 MB (5688635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9231ad18e7e05cc9a23d5dee0da6fec4c244dbc7a51fdf3a62fe3684484b4c5`  
		Last Modified: Sat, 13 May 2017 18:07:25 GMT  
		Size: 2.2 KB (2235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d61ea7157c3846a88fd941c91944d00d952024cdf752292b6f781a2facd7896`  
		Last Modified: Sat, 13 May 2017 18:07:25 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8434d606daac7763521c20374d53137462c6c49c5af7a9e0da9bf7a060a8cd59`  
		Last Modified: Sat, 13 May 2017 18:07:26 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4f553d4a4f79651cb301196df2e5ed4cdcd5e9fcbd91696cff44f7ce2e2bdc`  
		Last Modified: Sat, 13 May 2017 18:07:25 GMT  
		Size: 4.0 KB (4043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d7e2eca442f194f7d6d157df36e37a0eb8ed850bb79c21427fe21928c440e0`  
		Last Modified: Sat, 13 May 2017 18:07:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a2afc33f6b1cd60285783473114116bac24b36e0c1b0b98dcb000d7ebbebd9`  
		Last Modified: Sat, 13 May 2017 18:10:40 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management`

```console
$ docker pull rabbitmq@sha256:c450736429ad0dc32a20e018ee4eb46f198749c0b2520ed17694797e24be7d24
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:management` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.9 MB (87945644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:281ee777b811aec6c605001e436936c0f9462f5c4c72e4ced734094f13bb7ac7`
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
# Wed, 10 May 2017 15:32:25 GMT
ENV RABBITMQ_VERSION=3.6.9
# Wed, 10 May 2017 15:32:26 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.9-1
# Wed, 10 May 2017 15:32:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		rabbitmq-server=$RABBITMQ_DEBIAN_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:32:37 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 15:32:37 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 10 May 2017 15:32:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 10 May 2017 15:32:40 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 10 May 2017 15:32:42 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 10 May 2017 15:32:44 GMT
RUN ln -sf /usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins /plugins
# Wed, 10 May 2017 15:32:45 GMT
COPY file:e75247400159c3b996450d9b4ef7078cf9587833f465ab2904b2b7ef35be65e9 in /usr/local/bin/ 
# Wed, 10 May 2017 15:32:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 10 May 2017 15:32:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 15:32:48 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 10 May 2017 15:32:49 GMT
CMD ["rabbitmq-server"]
# Wed, 10 May 2017 15:33:11 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 10 May 2017 15:33:12 GMT
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
	-	`sha256:688ad704b3d6c315c85950ea57b88828b503dfbda346cfec7a67ff5696be5443`  
		Last Modified: Sat, 13 May 2017 18:07:27 GMT  
		Size: 5.7 MB (5688635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9231ad18e7e05cc9a23d5dee0da6fec4c244dbc7a51fdf3a62fe3684484b4c5`  
		Last Modified: Sat, 13 May 2017 18:07:25 GMT  
		Size: 2.2 KB (2235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d61ea7157c3846a88fd941c91944d00d952024cdf752292b6f781a2facd7896`  
		Last Modified: Sat, 13 May 2017 18:07:25 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8434d606daac7763521c20374d53137462c6c49c5af7a9e0da9bf7a060a8cd59`  
		Last Modified: Sat, 13 May 2017 18:07:26 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4f553d4a4f79651cb301196df2e5ed4cdcd5e9fcbd91696cff44f7ce2e2bdc`  
		Last Modified: Sat, 13 May 2017 18:07:25 GMT  
		Size: 4.0 KB (4043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d7e2eca442f194f7d6d157df36e37a0eb8ed850bb79c21427fe21928c440e0`  
		Last Modified: Sat, 13 May 2017 18:07:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a2afc33f6b1cd60285783473114116bac24b36e0c1b0b98dcb000d7ebbebd9`  
		Last Modified: Sat, 13 May 2017 18:10:40 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.9-alpine`

```console
$ docker pull rabbitmq@sha256:dde46fe0f03ac5b89fe631c6f57f2bdc756b83bff1313bf1dd156ba9cf33476a
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.9-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.0 MB (23021090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:241555f3f25af1497afe10d33a0f715b85cfe2149604a1d8ea588ddec833f544`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:56:43 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 10 May 2017 22:56:45 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 May 2017 22:56:49 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 10 May 2017 22:56:50 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 10 May 2017 22:56:51 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 10 May 2017 22:56:51 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 22:56:52 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 10 May 2017 22:56:53 GMT
ENV RABBITMQ_VERSION=3.6.9
# Wed, 10 May 2017 22:56:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 10 May 2017 22:56:59 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 10 May 2017 22:57:01 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 10 May 2017 22:57:01 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 10 May 2017 22:57:03 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 10 May 2017 22:57:05 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 10 May 2017 22:57:06 GMT
COPY file:6d5b5641b4ddd6db44e4e5e11ec5ab0346df16687772c50006caf5a342ff05ff in /usr/local/bin/ 
# Wed, 10 May 2017 22:57:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 22:57:07 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 10 May 2017 22:57:08 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b881a3d99983a1dde98546a2b2967d3e75a1ade88417fdf6f11e18dab2faf292`  
		Last Modified: Sat, 13 May 2017 18:09:08 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd06c3684328647f8701f962a7c15ea98893ca1b0f20ccc3ee9b487bcf4c2514`  
		Last Modified: Sat, 13 May 2017 18:09:07 GMT  
		Size: 7.8 KB (7766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8077982df77c58163116801f3917210a78d80788ead2772decf2fde0fa46062b`  
		Last Modified: Sat, 13 May 2017 18:09:08 GMT  
		Size: 16.1 MB (16079839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428aa391d66db05ed99cbcd9c8e0c2c6ab414f63919b04645cca5e69ca176a02`  
		Last Modified: Sat, 13 May 2017 18:09:05 GMT  
		Size: 5.0 MB (4959859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91b5da92e79be157556fd594528d70ec64de2632b73fb17ee691bb31ab141b88`  
		Last Modified: Sat, 13 May 2017 18:09:05 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:583aa503341467f3001e037677ce27737a96f478c0f8fd86982a8af7e1a993cd`  
		Last Modified: Sat, 13 May 2017 18:09:08 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773a2517e9649447b2c3ade0cf33bdf51b7240f0dd64fcb7f5ba889a05c0c19e`  
		Last Modified: Sat, 13 May 2017 18:09:05 GMT  
		Size: 105.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7190305979046716207ae994e44dafd68d029454ef67a4a7ee44755c8026daf2`  
		Last Modified: Sat, 13 May 2017 18:09:05 GMT  
		Size: 4.0 KB (4033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-alpine`

```console
$ docker pull rabbitmq@sha256:dde46fe0f03ac5b89fe631c6f57f2bdc756b83bff1313bf1dd156ba9cf33476a
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.0 MB (23021090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:241555f3f25af1497afe10d33a0f715b85cfe2149604a1d8ea588ddec833f544`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:56:43 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 10 May 2017 22:56:45 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 May 2017 22:56:49 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 10 May 2017 22:56:50 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 10 May 2017 22:56:51 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 10 May 2017 22:56:51 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 22:56:52 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 10 May 2017 22:56:53 GMT
ENV RABBITMQ_VERSION=3.6.9
# Wed, 10 May 2017 22:56:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 10 May 2017 22:56:59 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 10 May 2017 22:57:01 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 10 May 2017 22:57:01 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 10 May 2017 22:57:03 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 10 May 2017 22:57:05 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 10 May 2017 22:57:06 GMT
COPY file:6d5b5641b4ddd6db44e4e5e11ec5ab0346df16687772c50006caf5a342ff05ff in /usr/local/bin/ 
# Wed, 10 May 2017 22:57:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 22:57:07 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 10 May 2017 22:57:08 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b881a3d99983a1dde98546a2b2967d3e75a1ade88417fdf6f11e18dab2faf292`  
		Last Modified: Sat, 13 May 2017 18:09:08 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd06c3684328647f8701f962a7c15ea98893ca1b0f20ccc3ee9b487bcf4c2514`  
		Last Modified: Sat, 13 May 2017 18:09:07 GMT  
		Size: 7.8 KB (7766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8077982df77c58163116801f3917210a78d80788ead2772decf2fde0fa46062b`  
		Last Modified: Sat, 13 May 2017 18:09:08 GMT  
		Size: 16.1 MB (16079839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428aa391d66db05ed99cbcd9c8e0c2c6ab414f63919b04645cca5e69ca176a02`  
		Last Modified: Sat, 13 May 2017 18:09:05 GMT  
		Size: 5.0 MB (4959859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91b5da92e79be157556fd594528d70ec64de2632b73fb17ee691bb31ab141b88`  
		Last Modified: Sat, 13 May 2017 18:09:05 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:583aa503341467f3001e037677ce27737a96f478c0f8fd86982a8af7e1a993cd`  
		Last Modified: Sat, 13 May 2017 18:09:08 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773a2517e9649447b2c3ade0cf33bdf51b7240f0dd64fcb7f5ba889a05c0c19e`  
		Last Modified: Sat, 13 May 2017 18:09:05 GMT  
		Size: 105.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7190305979046716207ae994e44dafd68d029454ef67a4a7ee44755c8026daf2`  
		Last Modified: Sat, 13 May 2017 18:09:05 GMT  
		Size: 4.0 KB (4033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-alpine`

```console
$ docker pull rabbitmq@sha256:dde46fe0f03ac5b89fe631c6f57f2bdc756b83bff1313bf1dd156ba9cf33476a
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.0 MB (23021090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:241555f3f25af1497afe10d33a0f715b85cfe2149604a1d8ea588ddec833f544`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:56:43 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 10 May 2017 22:56:45 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 May 2017 22:56:49 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 10 May 2017 22:56:50 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 10 May 2017 22:56:51 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 10 May 2017 22:56:51 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 22:56:52 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 10 May 2017 22:56:53 GMT
ENV RABBITMQ_VERSION=3.6.9
# Wed, 10 May 2017 22:56:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 10 May 2017 22:56:59 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 10 May 2017 22:57:01 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 10 May 2017 22:57:01 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 10 May 2017 22:57:03 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 10 May 2017 22:57:05 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 10 May 2017 22:57:06 GMT
COPY file:6d5b5641b4ddd6db44e4e5e11ec5ab0346df16687772c50006caf5a342ff05ff in /usr/local/bin/ 
# Wed, 10 May 2017 22:57:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 22:57:07 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 10 May 2017 22:57:08 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b881a3d99983a1dde98546a2b2967d3e75a1ade88417fdf6f11e18dab2faf292`  
		Last Modified: Sat, 13 May 2017 18:09:08 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd06c3684328647f8701f962a7c15ea98893ca1b0f20ccc3ee9b487bcf4c2514`  
		Last Modified: Sat, 13 May 2017 18:09:07 GMT  
		Size: 7.8 KB (7766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8077982df77c58163116801f3917210a78d80788ead2772decf2fde0fa46062b`  
		Last Modified: Sat, 13 May 2017 18:09:08 GMT  
		Size: 16.1 MB (16079839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428aa391d66db05ed99cbcd9c8e0c2c6ab414f63919b04645cca5e69ca176a02`  
		Last Modified: Sat, 13 May 2017 18:09:05 GMT  
		Size: 5.0 MB (4959859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91b5da92e79be157556fd594528d70ec64de2632b73fb17ee691bb31ab141b88`  
		Last Modified: Sat, 13 May 2017 18:09:05 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:583aa503341467f3001e037677ce27737a96f478c0f8fd86982a8af7e1a993cd`  
		Last Modified: Sat, 13 May 2017 18:09:08 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773a2517e9649447b2c3ade0cf33bdf51b7240f0dd64fcb7f5ba889a05c0c19e`  
		Last Modified: Sat, 13 May 2017 18:09:05 GMT  
		Size: 105.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7190305979046716207ae994e44dafd68d029454ef67a4a7ee44755c8026daf2`  
		Last Modified: Sat, 13 May 2017 18:09:05 GMT  
		Size: 4.0 KB (4033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:alpine`

```console
$ docker pull rabbitmq@sha256:dde46fe0f03ac5b89fe631c6f57f2bdc756b83bff1313bf1dd156ba9cf33476a
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.0 MB (23021090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:241555f3f25af1497afe10d33a0f715b85cfe2149604a1d8ea588ddec833f544`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:56:43 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 10 May 2017 22:56:45 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 May 2017 22:56:49 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 10 May 2017 22:56:50 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 10 May 2017 22:56:51 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 10 May 2017 22:56:51 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 22:56:52 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 10 May 2017 22:56:53 GMT
ENV RABBITMQ_VERSION=3.6.9
# Wed, 10 May 2017 22:56:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 10 May 2017 22:56:59 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 10 May 2017 22:57:01 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 10 May 2017 22:57:01 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 10 May 2017 22:57:03 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 10 May 2017 22:57:05 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 10 May 2017 22:57:06 GMT
COPY file:6d5b5641b4ddd6db44e4e5e11ec5ab0346df16687772c50006caf5a342ff05ff in /usr/local/bin/ 
# Wed, 10 May 2017 22:57:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 22:57:07 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 10 May 2017 22:57:08 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b881a3d99983a1dde98546a2b2967d3e75a1ade88417fdf6f11e18dab2faf292`  
		Last Modified: Sat, 13 May 2017 18:09:08 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd06c3684328647f8701f962a7c15ea98893ca1b0f20ccc3ee9b487bcf4c2514`  
		Last Modified: Sat, 13 May 2017 18:09:07 GMT  
		Size: 7.8 KB (7766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8077982df77c58163116801f3917210a78d80788ead2772decf2fde0fa46062b`  
		Last Modified: Sat, 13 May 2017 18:09:08 GMT  
		Size: 16.1 MB (16079839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428aa391d66db05ed99cbcd9c8e0c2c6ab414f63919b04645cca5e69ca176a02`  
		Last Modified: Sat, 13 May 2017 18:09:05 GMT  
		Size: 5.0 MB (4959859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91b5da92e79be157556fd594528d70ec64de2632b73fb17ee691bb31ab141b88`  
		Last Modified: Sat, 13 May 2017 18:09:05 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:583aa503341467f3001e037677ce27737a96f478c0f8fd86982a8af7e1a993cd`  
		Last Modified: Sat, 13 May 2017 18:09:08 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773a2517e9649447b2c3ade0cf33bdf51b7240f0dd64fcb7f5ba889a05c0c19e`  
		Last Modified: Sat, 13 May 2017 18:09:05 GMT  
		Size: 105.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7190305979046716207ae994e44dafd68d029454ef67a4a7ee44755c8026daf2`  
		Last Modified: Sat, 13 May 2017 18:09:05 GMT  
		Size: 4.0 KB (4033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.9-management-alpine`

```console
$ docker pull rabbitmq@sha256:7bffa55b30fc8feaac6c312e1577a094a4e2673904a404403684620aef5440f7
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.9-management-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.0 MB (23021279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46969e61823928dbd931a5a3ee49cde61854e9853eed1d54d0e5c5984b78962a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:56:43 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 10 May 2017 22:56:45 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 May 2017 22:56:49 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 10 May 2017 22:56:50 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 10 May 2017 22:56:51 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 10 May 2017 22:56:51 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 22:56:52 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 10 May 2017 22:56:53 GMT
ENV RABBITMQ_VERSION=3.6.9
# Wed, 10 May 2017 22:56:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 10 May 2017 22:56:59 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 10 May 2017 22:57:01 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 10 May 2017 22:57:01 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 10 May 2017 22:57:03 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 10 May 2017 22:57:05 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 10 May 2017 22:57:06 GMT
COPY file:6d5b5641b4ddd6db44e4e5e11ec5ab0346df16687772c50006caf5a342ff05ff in /usr/local/bin/ 
# Wed, 10 May 2017 22:57:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 22:57:07 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 10 May 2017 22:57:08 GMT
CMD ["rabbitmq-server"]
# Wed, 10 May 2017 22:57:29 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 10 May 2017 22:57:30 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b881a3d99983a1dde98546a2b2967d3e75a1ade88417fdf6f11e18dab2faf292`  
		Last Modified: Sat, 13 May 2017 18:09:08 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd06c3684328647f8701f962a7c15ea98893ca1b0f20ccc3ee9b487bcf4c2514`  
		Last Modified: Sat, 13 May 2017 18:09:07 GMT  
		Size: 7.8 KB (7766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8077982df77c58163116801f3917210a78d80788ead2772decf2fde0fa46062b`  
		Last Modified: Sat, 13 May 2017 18:09:08 GMT  
		Size: 16.1 MB (16079839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428aa391d66db05ed99cbcd9c8e0c2c6ab414f63919b04645cca5e69ca176a02`  
		Last Modified: Sat, 13 May 2017 18:09:05 GMT  
		Size: 5.0 MB (4959859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91b5da92e79be157556fd594528d70ec64de2632b73fb17ee691bb31ab141b88`  
		Last Modified: Sat, 13 May 2017 18:09:05 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:583aa503341467f3001e037677ce27737a96f478c0f8fd86982a8af7e1a993cd`  
		Last Modified: Sat, 13 May 2017 18:09:08 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773a2517e9649447b2c3ade0cf33bdf51b7240f0dd64fcb7f5ba889a05c0c19e`  
		Last Modified: Sat, 13 May 2017 18:09:05 GMT  
		Size: 105.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7190305979046716207ae994e44dafd68d029454ef67a4a7ee44755c8026daf2`  
		Last Modified: Sat, 13 May 2017 18:09:05 GMT  
		Size: 4.0 KB (4033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78cb82dff082086c8cafa83300e5dcc5f1d5c34f034b20d3fac6b7a3dc17c5c`  
		Last Modified: Sat, 13 May 2017 18:12:13 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management-alpine`

```console
$ docker pull rabbitmq@sha256:7bffa55b30fc8feaac6c312e1577a094a4e2673904a404403684620aef5440f7
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-management-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.0 MB (23021279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46969e61823928dbd931a5a3ee49cde61854e9853eed1d54d0e5c5984b78962a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:56:43 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 10 May 2017 22:56:45 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 May 2017 22:56:49 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 10 May 2017 22:56:50 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 10 May 2017 22:56:51 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 10 May 2017 22:56:51 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 22:56:52 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 10 May 2017 22:56:53 GMT
ENV RABBITMQ_VERSION=3.6.9
# Wed, 10 May 2017 22:56:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 10 May 2017 22:56:59 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 10 May 2017 22:57:01 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 10 May 2017 22:57:01 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 10 May 2017 22:57:03 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 10 May 2017 22:57:05 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 10 May 2017 22:57:06 GMT
COPY file:6d5b5641b4ddd6db44e4e5e11ec5ab0346df16687772c50006caf5a342ff05ff in /usr/local/bin/ 
# Wed, 10 May 2017 22:57:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 22:57:07 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 10 May 2017 22:57:08 GMT
CMD ["rabbitmq-server"]
# Wed, 10 May 2017 22:57:29 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 10 May 2017 22:57:30 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b881a3d99983a1dde98546a2b2967d3e75a1ade88417fdf6f11e18dab2faf292`  
		Last Modified: Sat, 13 May 2017 18:09:08 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd06c3684328647f8701f962a7c15ea98893ca1b0f20ccc3ee9b487bcf4c2514`  
		Last Modified: Sat, 13 May 2017 18:09:07 GMT  
		Size: 7.8 KB (7766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8077982df77c58163116801f3917210a78d80788ead2772decf2fde0fa46062b`  
		Last Modified: Sat, 13 May 2017 18:09:08 GMT  
		Size: 16.1 MB (16079839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428aa391d66db05ed99cbcd9c8e0c2c6ab414f63919b04645cca5e69ca176a02`  
		Last Modified: Sat, 13 May 2017 18:09:05 GMT  
		Size: 5.0 MB (4959859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91b5da92e79be157556fd594528d70ec64de2632b73fb17ee691bb31ab141b88`  
		Last Modified: Sat, 13 May 2017 18:09:05 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:583aa503341467f3001e037677ce27737a96f478c0f8fd86982a8af7e1a993cd`  
		Last Modified: Sat, 13 May 2017 18:09:08 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773a2517e9649447b2c3ade0cf33bdf51b7240f0dd64fcb7f5ba889a05c0c19e`  
		Last Modified: Sat, 13 May 2017 18:09:05 GMT  
		Size: 105.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7190305979046716207ae994e44dafd68d029454ef67a4a7ee44755c8026daf2`  
		Last Modified: Sat, 13 May 2017 18:09:05 GMT  
		Size: 4.0 KB (4033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78cb82dff082086c8cafa83300e5dcc5f1d5c34f034b20d3fac6b7a3dc17c5c`  
		Last Modified: Sat, 13 May 2017 18:12:13 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management-alpine`

```console
$ docker pull rabbitmq@sha256:7bffa55b30fc8feaac6c312e1577a094a4e2673904a404403684620aef5440f7
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:3-management-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.0 MB (23021279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46969e61823928dbd931a5a3ee49cde61854e9853eed1d54d0e5c5984b78962a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:56:43 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 10 May 2017 22:56:45 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 May 2017 22:56:49 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 10 May 2017 22:56:50 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 10 May 2017 22:56:51 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 10 May 2017 22:56:51 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 22:56:52 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 10 May 2017 22:56:53 GMT
ENV RABBITMQ_VERSION=3.6.9
# Wed, 10 May 2017 22:56:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 10 May 2017 22:56:59 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 10 May 2017 22:57:01 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 10 May 2017 22:57:01 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 10 May 2017 22:57:03 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 10 May 2017 22:57:05 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 10 May 2017 22:57:06 GMT
COPY file:6d5b5641b4ddd6db44e4e5e11ec5ab0346df16687772c50006caf5a342ff05ff in /usr/local/bin/ 
# Wed, 10 May 2017 22:57:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 22:57:07 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 10 May 2017 22:57:08 GMT
CMD ["rabbitmq-server"]
# Wed, 10 May 2017 22:57:29 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 10 May 2017 22:57:30 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b881a3d99983a1dde98546a2b2967d3e75a1ade88417fdf6f11e18dab2faf292`  
		Last Modified: Sat, 13 May 2017 18:09:08 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd06c3684328647f8701f962a7c15ea98893ca1b0f20ccc3ee9b487bcf4c2514`  
		Last Modified: Sat, 13 May 2017 18:09:07 GMT  
		Size: 7.8 KB (7766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8077982df77c58163116801f3917210a78d80788ead2772decf2fde0fa46062b`  
		Last Modified: Sat, 13 May 2017 18:09:08 GMT  
		Size: 16.1 MB (16079839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428aa391d66db05ed99cbcd9c8e0c2c6ab414f63919b04645cca5e69ca176a02`  
		Last Modified: Sat, 13 May 2017 18:09:05 GMT  
		Size: 5.0 MB (4959859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91b5da92e79be157556fd594528d70ec64de2632b73fb17ee691bb31ab141b88`  
		Last Modified: Sat, 13 May 2017 18:09:05 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:583aa503341467f3001e037677ce27737a96f478c0f8fd86982a8af7e1a993cd`  
		Last Modified: Sat, 13 May 2017 18:09:08 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773a2517e9649447b2c3ade0cf33bdf51b7240f0dd64fcb7f5ba889a05c0c19e`  
		Last Modified: Sat, 13 May 2017 18:09:05 GMT  
		Size: 105.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7190305979046716207ae994e44dafd68d029454ef67a4a7ee44755c8026daf2`  
		Last Modified: Sat, 13 May 2017 18:09:05 GMT  
		Size: 4.0 KB (4033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78cb82dff082086c8cafa83300e5dcc5f1d5c34f034b20d3fac6b7a3dc17c5c`  
		Last Modified: Sat, 13 May 2017 18:12:13 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management-alpine`

```console
$ docker pull rabbitmq@sha256:7bffa55b30fc8feaac6c312e1577a094a4e2673904a404403684620aef5440f7
```

-	Platforms:
	-	linux; amd64

### `rabbitmq:management-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.0 MB (23021279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46969e61823928dbd931a5a3ee49cde61854e9853eed1d54d0e5c5984b78962a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:56:43 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 10 May 2017 22:56:45 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 May 2017 22:56:49 GMT
RUN apk add --no-cache 		bash 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 10 May 2017 22:56:50 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 10 May 2017 22:56:51 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 10 May 2017 22:56:51 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 22:56:52 GMT
ENV GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 10 May 2017 22:56:53 GMT
ENV RABBITMQ_VERSION=3.6.9
# Wed, 10 May 2017 22:56:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		tar 		xz 	; 		wget -O rabbitmq-server.tar.xz "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 	wget -O rabbitmq-server.tar.xz.asc "https://www.rabbitmq.com/releases/rabbitmq-server/v${RABBITMQ_VERSION}/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -r "$GNUPGHOME" rabbitmq-server.tar.xz.asc; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm rabbitmq-server.tar.xz; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 10 May 2017 22:56:59 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 10 May 2017 22:57:01 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 10 May 2017 22:57:01 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 10 May 2017 22:57:03 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 10 May 2017 22:57:05 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 10 May 2017 22:57:06 GMT
COPY file:6d5b5641b4ddd6db44e4e5e11ec5ab0346df16687772c50006caf5a342ff05ff in /usr/local/bin/ 
# Wed, 10 May 2017 22:57:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 22:57:07 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 10 May 2017 22:57:08 GMT
CMD ["rabbitmq-server"]
# Wed, 10 May 2017 22:57:29 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 10 May 2017 22:57:30 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b881a3d99983a1dde98546a2b2967d3e75a1ade88417fdf6f11e18dab2faf292`  
		Last Modified: Sat, 13 May 2017 18:09:08 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd06c3684328647f8701f962a7c15ea98893ca1b0f20ccc3ee9b487bcf4c2514`  
		Last Modified: Sat, 13 May 2017 18:09:07 GMT  
		Size: 7.8 KB (7766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8077982df77c58163116801f3917210a78d80788ead2772decf2fde0fa46062b`  
		Last Modified: Sat, 13 May 2017 18:09:08 GMT  
		Size: 16.1 MB (16079839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428aa391d66db05ed99cbcd9c8e0c2c6ab414f63919b04645cca5e69ca176a02`  
		Last Modified: Sat, 13 May 2017 18:09:05 GMT  
		Size: 5.0 MB (4959859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91b5da92e79be157556fd594528d70ec64de2632b73fb17ee691bb31ab141b88`  
		Last Modified: Sat, 13 May 2017 18:09:05 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:583aa503341467f3001e037677ce27737a96f478c0f8fd86982a8af7e1a993cd`  
		Last Modified: Sat, 13 May 2017 18:09:08 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773a2517e9649447b2c3ade0cf33bdf51b7240f0dd64fcb7f5ba889a05c0c19e`  
		Last Modified: Sat, 13 May 2017 18:09:05 GMT  
		Size: 105.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7190305979046716207ae994e44dafd68d029454ef67a4a7ee44755c8026daf2`  
		Last Modified: Sat, 13 May 2017 18:09:05 GMT  
		Size: 4.0 KB (4033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78cb82dff082086c8cafa83300e5dcc5f1d5c34f034b20d3fac6b7a3dc17c5c`  
		Last Modified: Sat, 13 May 2017 18:12:13 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
