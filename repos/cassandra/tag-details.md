<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `cassandra`

-	[`cassandra:2.1.16`](#cassandra2116)
-	[`cassandra:2.1`](#cassandra21)
-	[`cassandra:2.2.8`](#cassandra228)
-	[`cassandra:2.2`](#cassandra22)
-	[`cassandra:2`](#cassandra2)
-	[`cassandra:3.0.9`](#cassandra309)
-	[`cassandra:3.0`](#cassandra30)
-	[`cassandra:3.9`](#cassandra39)
-	[`cassandra:3`](#cassandra3)
-	[`cassandra:latest`](#cassandralatest)

## `cassandra:2.1.16`

```console
$ docker pull cassandra@sha256:66b296e0e888d9ed10eee332d8a7948f1a9eecf431b35c9e4a990a92208941c6
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.1.16` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.9 MB (166877774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1edc892b6060d44112d6662479ba1419a82c3492df8d8ddccec6afb0ee3443ea`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:23:38 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Fri, 21 Oct 2016 16:52:54 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 21 Oct 2016 16:52:55 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 16:53:17 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 16:53:18 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 21 Oct 2016 16:53:20 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 21 Oct 2016 16:55:20 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' >> /etc/apt/sources.list.d/cassandra.list
# Fri, 21 Oct 2016 16:55:21 GMT
ENV CASSANDRA_VERSION=2.1.16
# Fri, 21 Oct 2016 16:56:07 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:56:08 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Fri, 21 Oct 2016 16:56:09 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 21 Oct 2016 16:56:09 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 21 Oct 2016 16:56:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Oct 2016 16:56:10 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 21 Oct 2016 16:56:11 GMT
VOLUME [/var/lib/cassandra]
# Fri, 21 Oct 2016 16:56:11 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 21 Oct 2016 16:56:11 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e76e04f7d62d66b30066eff389e35460ec5a918d3a23d1b40e46631369a2e23`  
		Last Modified: Fri, 21 Oct 2016 16:23:47 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f17209b8753c93d242b293bf370060dfe02f9d08ac60d3a06c40cc3d586146d`  
		Last Modified: Fri, 21 Oct 2016 16:54:31 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6317b059ad1d19ee0b4614d6f4a2a97bd25699be5830fe4b00d4babeeee7dd4c`  
		Last Modified: Fri, 21 Oct 2016 16:54:32 GMT  
		Size: 1.2 MB (1216361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9e6ce1a7e7e690c325d86f76c9d30496e2183968b09bda0a180337549839df`  
		Last Modified: Fri, 21 Oct 2016 16:54:30 GMT  
		Size: 18.3 KB (18303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73715bb3ca53f0319ec8b89c645a0951ed5afe2aa0c3769d2048e17d4c44fd5`  
		Last Modified: Fri, 21 Oct 2016 16:56:21 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1335fc36cd326f245bb65f9c4e292c66aaf356495ca350e87ed443fb41268e27`  
		Last Modified: Fri, 21 Oct 2016 16:56:41 GMT  
		Size: 114.3 MB (114261882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85bd656c82c61ab5bdc5fae45e044fd1c0e17a9a75758cbf193b7e3ae06acfaa`  
		Last Modified: Fri, 21 Oct 2016 16:56:21 GMT  
		Size: 4.7 KB (4655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e4792d14d04abd8324d5b99a2b147edb0ec5a465c44b3658989794ab34bb5f`  
		Last Modified: Fri, 21 Oct 2016 16:56:21 GMT  
		Size: 724.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c519da87bde4a6e58fcd38fd4c36fe7952318096060302f50c5d61fea1618e1`  
		Last Modified: Fri, 21 Oct 2016 16:56:21 GMT  
		Size: 20.2 KB (20240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.1`

```console
$ docker pull cassandra@sha256:66b296e0e888d9ed10eee332d8a7948f1a9eecf431b35c9e4a990a92208941c6
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.9 MB (166877774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1edc892b6060d44112d6662479ba1419a82c3492df8d8ddccec6afb0ee3443ea`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:23:38 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Fri, 21 Oct 2016 16:52:54 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 21 Oct 2016 16:52:55 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 16:53:17 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 16:53:18 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 21 Oct 2016 16:53:20 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 21 Oct 2016 16:55:20 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' >> /etc/apt/sources.list.d/cassandra.list
# Fri, 21 Oct 2016 16:55:21 GMT
ENV CASSANDRA_VERSION=2.1.16
# Fri, 21 Oct 2016 16:56:07 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:56:08 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Fri, 21 Oct 2016 16:56:09 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 21 Oct 2016 16:56:09 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 21 Oct 2016 16:56:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Oct 2016 16:56:10 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 21 Oct 2016 16:56:11 GMT
VOLUME [/var/lib/cassandra]
# Fri, 21 Oct 2016 16:56:11 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 21 Oct 2016 16:56:11 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e76e04f7d62d66b30066eff389e35460ec5a918d3a23d1b40e46631369a2e23`  
		Last Modified: Fri, 21 Oct 2016 16:23:47 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f17209b8753c93d242b293bf370060dfe02f9d08ac60d3a06c40cc3d586146d`  
		Last Modified: Fri, 21 Oct 2016 16:54:31 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6317b059ad1d19ee0b4614d6f4a2a97bd25699be5830fe4b00d4babeeee7dd4c`  
		Last Modified: Fri, 21 Oct 2016 16:54:32 GMT  
		Size: 1.2 MB (1216361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9e6ce1a7e7e690c325d86f76c9d30496e2183968b09bda0a180337549839df`  
		Last Modified: Fri, 21 Oct 2016 16:54:30 GMT  
		Size: 18.3 KB (18303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73715bb3ca53f0319ec8b89c645a0951ed5afe2aa0c3769d2048e17d4c44fd5`  
		Last Modified: Fri, 21 Oct 2016 16:56:21 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1335fc36cd326f245bb65f9c4e292c66aaf356495ca350e87ed443fb41268e27`  
		Last Modified: Fri, 21 Oct 2016 16:56:41 GMT  
		Size: 114.3 MB (114261882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85bd656c82c61ab5bdc5fae45e044fd1c0e17a9a75758cbf193b7e3ae06acfaa`  
		Last Modified: Fri, 21 Oct 2016 16:56:21 GMT  
		Size: 4.7 KB (4655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e4792d14d04abd8324d5b99a2b147edb0ec5a465c44b3658989794ab34bb5f`  
		Last Modified: Fri, 21 Oct 2016 16:56:21 GMT  
		Size: 724.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c519da87bde4a6e58fcd38fd4c36fe7952318096060302f50c5d61fea1618e1`  
		Last Modified: Fri, 21 Oct 2016 16:56:21 GMT  
		Size: 20.2 KB (20240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2.8`

```console
$ docker pull cassandra@sha256:6eb0158d206c20f304347be8c4d4a1d066172abbd4296ee710efc32d8779d409
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.2.8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.2 MB (171206735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9433924b8944bc3f994660997ba8229bfbf8642ec086b6b88b6cee4a1585b991`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:23:38 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Fri, 21 Oct 2016 16:52:54 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 21 Oct 2016 16:52:55 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 16:53:17 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 16:53:18 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 21 Oct 2016 16:53:20 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 21 Oct 2016 16:53:21 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Fri, 21 Oct 2016 16:53:22 GMT
ENV CASSANDRA_VERSION=2.2.8
# Fri, 21 Oct 2016 16:54:15 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:54:16 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Fri, 21 Oct 2016 16:54:16 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 21 Oct 2016 16:54:16 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 21 Oct 2016 16:54:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Oct 2016 16:54:17 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 21 Oct 2016 16:54:17 GMT
VOLUME [/var/lib/cassandra]
# Fri, 21 Oct 2016 16:54:18 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 21 Oct 2016 16:54:18 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e76e04f7d62d66b30066eff389e35460ec5a918d3a23d1b40e46631369a2e23`  
		Last Modified: Fri, 21 Oct 2016 16:23:47 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f17209b8753c93d242b293bf370060dfe02f9d08ac60d3a06c40cc3d586146d`  
		Last Modified: Fri, 21 Oct 2016 16:54:31 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6317b059ad1d19ee0b4614d6f4a2a97bd25699be5830fe4b00d4babeeee7dd4c`  
		Last Modified: Fri, 21 Oct 2016 16:54:32 GMT  
		Size: 1.2 MB (1216361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9e6ce1a7e7e690c325d86f76c9d30496e2183968b09bda0a180337549839df`  
		Last Modified: Fri, 21 Oct 2016 16:54:30 GMT  
		Size: 18.3 KB (18303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82d0a401e73c47fc394df0b3129a624ac22894d27abfd758e6d86e38782e0f5b`  
		Last Modified: Fri, 21 Oct 2016 16:54:28 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99592a61668792a601472acaedc4a04ce88ec8302d8d5eb7d3eed773dae36e97`  
		Last Modified: Fri, 21 Oct 2016 16:54:48 GMT  
		Size: 118.6 MB (118589911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211809739ee771bed7ebf5b672de18f55c87f0cca17b6de818f6c2973dbe3b23`  
		Last Modified: Fri, 21 Oct 2016 16:54:28 GMT  
		Size: 4.6 KB (4626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd1bd762ef7694240c9bce144efca33a8fb7faecb7946d8052763e3699639598`  
		Last Modified: Fri, 21 Oct 2016 16:54:28 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e13e7282cdb8f38febaeac1912114950ee00bb6f31662403579e8fdafed43d6e`  
		Last Modified: Fri, 21 Oct 2016 16:54:28 GMT  
		Size: 21.2 KB (21203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2`

```console
$ docker pull cassandra@sha256:6eb0158d206c20f304347be8c4d4a1d066172abbd4296ee710efc32d8779d409
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.2 MB (171206735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9433924b8944bc3f994660997ba8229bfbf8642ec086b6b88b6cee4a1585b991`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:23:38 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Fri, 21 Oct 2016 16:52:54 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 21 Oct 2016 16:52:55 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 16:53:17 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 16:53:18 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 21 Oct 2016 16:53:20 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 21 Oct 2016 16:53:21 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Fri, 21 Oct 2016 16:53:22 GMT
ENV CASSANDRA_VERSION=2.2.8
# Fri, 21 Oct 2016 16:54:15 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:54:16 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Fri, 21 Oct 2016 16:54:16 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 21 Oct 2016 16:54:16 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 21 Oct 2016 16:54:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Oct 2016 16:54:17 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 21 Oct 2016 16:54:17 GMT
VOLUME [/var/lib/cassandra]
# Fri, 21 Oct 2016 16:54:18 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 21 Oct 2016 16:54:18 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e76e04f7d62d66b30066eff389e35460ec5a918d3a23d1b40e46631369a2e23`  
		Last Modified: Fri, 21 Oct 2016 16:23:47 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f17209b8753c93d242b293bf370060dfe02f9d08ac60d3a06c40cc3d586146d`  
		Last Modified: Fri, 21 Oct 2016 16:54:31 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6317b059ad1d19ee0b4614d6f4a2a97bd25699be5830fe4b00d4babeeee7dd4c`  
		Last Modified: Fri, 21 Oct 2016 16:54:32 GMT  
		Size: 1.2 MB (1216361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9e6ce1a7e7e690c325d86f76c9d30496e2183968b09bda0a180337549839df`  
		Last Modified: Fri, 21 Oct 2016 16:54:30 GMT  
		Size: 18.3 KB (18303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82d0a401e73c47fc394df0b3129a624ac22894d27abfd758e6d86e38782e0f5b`  
		Last Modified: Fri, 21 Oct 2016 16:54:28 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99592a61668792a601472acaedc4a04ce88ec8302d8d5eb7d3eed773dae36e97`  
		Last Modified: Fri, 21 Oct 2016 16:54:48 GMT  
		Size: 118.6 MB (118589911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211809739ee771bed7ebf5b672de18f55c87f0cca17b6de818f6c2973dbe3b23`  
		Last Modified: Fri, 21 Oct 2016 16:54:28 GMT  
		Size: 4.6 KB (4626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd1bd762ef7694240c9bce144efca33a8fb7faecb7946d8052763e3699639598`  
		Last Modified: Fri, 21 Oct 2016 16:54:28 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e13e7282cdb8f38febaeac1912114950ee00bb6f31662403579e8fdafed43d6e`  
		Last Modified: Fri, 21 Oct 2016 16:54:28 GMT  
		Size: 21.2 KB (21203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2`

```console
$ docker pull cassandra@sha256:6eb0158d206c20f304347be8c4d4a1d066172abbd4296ee710efc32d8779d409
```

-	Platforms:
	-	linux; amd64

### `cassandra:2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.2 MB (171206735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9433924b8944bc3f994660997ba8229bfbf8642ec086b6b88b6cee4a1585b991`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:23:38 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Fri, 21 Oct 2016 16:52:54 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 21 Oct 2016 16:52:55 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 16:53:17 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 16:53:18 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 21 Oct 2016 16:53:20 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 21 Oct 2016 16:53:21 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Fri, 21 Oct 2016 16:53:22 GMT
ENV CASSANDRA_VERSION=2.2.8
# Fri, 21 Oct 2016 16:54:15 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:54:16 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Fri, 21 Oct 2016 16:54:16 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 21 Oct 2016 16:54:16 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 21 Oct 2016 16:54:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Oct 2016 16:54:17 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 21 Oct 2016 16:54:17 GMT
VOLUME [/var/lib/cassandra]
# Fri, 21 Oct 2016 16:54:18 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 21 Oct 2016 16:54:18 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e76e04f7d62d66b30066eff389e35460ec5a918d3a23d1b40e46631369a2e23`  
		Last Modified: Fri, 21 Oct 2016 16:23:47 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f17209b8753c93d242b293bf370060dfe02f9d08ac60d3a06c40cc3d586146d`  
		Last Modified: Fri, 21 Oct 2016 16:54:31 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6317b059ad1d19ee0b4614d6f4a2a97bd25699be5830fe4b00d4babeeee7dd4c`  
		Last Modified: Fri, 21 Oct 2016 16:54:32 GMT  
		Size: 1.2 MB (1216361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9e6ce1a7e7e690c325d86f76c9d30496e2183968b09bda0a180337549839df`  
		Last Modified: Fri, 21 Oct 2016 16:54:30 GMT  
		Size: 18.3 KB (18303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82d0a401e73c47fc394df0b3129a624ac22894d27abfd758e6d86e38782e0f5b`  
		Last Modified: Fri, 21 Oct 2016 16:54:28 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99592a61668792a601472acaedc4a04ce88ec8302d8d5eb7d3eed773dae36e97`  
		Last Modified: Fri, 21 Oct 2016 16:54:48 GMT  
		Size: 118.6 MB (118589911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211809739ee771bed7ebf5b672de18f55c87f0cca17b6de818f6c2973dbe3b23`  
		Last Modified: Fri, 21 Oct 2016 16:54:28 GMT  
		Size: 4.6 KB (4626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd1bd762ef7694240c9bce144efca33a8fb7faecb7946d8052763e3699639598`  
		Last Modified: Fri, 21 Oct 2016 16:54:28 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e13e7282cdb8f38febaeac1912114950ee00bb6f31662403579e8fdafed43d6e`  
		Last Modified: Fri, 21 Oct 2016 16:54:28 GMT  
		Size: 21.2 KB (21203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0.9`

```console
$ docker pull cassandra@sha256:d072a8056c4382d3e329cef643388af7e2d9d8753e4400c3b019dab6c0ea38a2
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.0.9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.2 MB (157216284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5140b7ee87be22112f7430b28c4b46bf90e94dae725f4f656bcec2d36fe739f3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:23:38 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Fri, 21 Oct 2016 16:52:54 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 21 Oct 2016 16:52:55 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 16:53:17 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 16:53:18 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 21 Oct 2016 16:53:20 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 21 Oct 2016 16:59:06 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' >> /etc/apt/sources.list.d/cassandra.list
# Fri, 21 Oct 2016 16:59:06 GMT
ENV CASSANDRA_VERSION=3.0.9
# Fri, 21 Oct 2016 17:00:00 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 17:00:01 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Fri, 21 Oct 2016 17:00:01 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 21 Oct 2016 17:00:02 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 21 Oct 2016 17:00:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Oct 2016 17:00:03 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 21 Oct 2016 17:00:04 GMT
VOLUME [/var/lib/cassandra]
# Fri, 21 Oct 2016 17:00:04 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 21 Oct 2016 17:00:04 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e76e04f7d62d66b30066eff389e35460ec5a918d3a23d1b40e46631369a2e23`  
		Last Modified: Fri, 21 Oct 2016 16:23:47 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f17209b8753c93d242b293bf370060dfe02f9d08ac60d3a06c40cc3d586146d`  
		Last Modified: Fri, 21 Oct 2016 16:54:31 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6317b059ad1d19ee0b4614d6f4a2a97bd25699be5830fe4b00d4babeeee7dd4c`  
		Last Modified: Fri, 21 Oct 2016 16:54:32 GMT  
		Size: 1.2 MB (1216361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9e6ce1a7e7e690c325d86f76c9d30496e2183968b09bda0a180337549839df`  
		Last Modified: Fri, 21 Oct 2016 16:54:30 GMT  
		Size: 18.3 KB (18303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcc4f0c06c29daade13dbc9d26f22411f3b3f3e6f72bcc99184da89a5ad4b4e9`  
		Last Modified: Fri, 21 Oct 2016 17:00:14 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6cedba8e96c7ed5883d49b0d608418cfb3f288d9de70772eaf5ec13a49c237a`  
		Last Modified: Fri, 21 Oct 2016 17:00:35 GMT  
		Size: 104.6 MB (104596865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c23b15877e1bec64e306cd0ca459980c959d4d264de94ed33064b056e2e2992`  
		Last Modified: Fri, 21 Oct 2016 17:00:14 GMT  
		Size: 4.7 KB (4694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba007929e79e857ff3f2e6269db8ccb5acb8f70963bba9161d2c0927d25cb71`  
		Last Modified: Fri, 21 Oct 2016 17:00:19 GMT  
		Size: 723.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21deb1fa81f2f33ddac602a47fca37406e2c893b18b6b08baaa7ed0cc5d08c2e`  
		Last Modified: Fri, 21 Oct 2016 17:00:13 GMT  
		Size: 23.7 KB (23728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0`

```console
$ docker pull cassandra@sha256:d072a8056c4382d3e329cef643388af7e2d9d8753e4400c3b019dab6c0ea38a2
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.2 MB (157216284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5140b7ee87be22112f7430b28c4b46bf90e94dae725f4f656bcec2d36fe739f3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:23:38 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Fri, 21 Oct 2016 16:52:54 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 21 Oct 2016 16:52:55 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 16:53:17 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 16:53:18 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 21 Oct 2016 16:53:20 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 21 Oct 2016 16:59:06 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' >> /etc/apt/sources.list.d/cassandra.list
# Fri, 21 Oct 2016 16:59:06 GMT
ENV CASSANDRA_VERSION=3.0.9
# Fri, 21 Oct 2016 17:00:00 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 17:00:01 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Fri, 21 Oct 2016 17:00:01 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 21 Oct 2016 17:00:02 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 21 Oct 2016 17:00:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Oct 2016 17:00:03 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 21 Oct 2016 17:00:04 GMT
VOLUME [/var/lib/cassandra]
# Fri, 21 Oct 2016 17:00:04 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 21 Oct 2016 17:00:04 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e76e04f7d62d66b30066eff389e35460ec5a918d3a23d1b40e46631369a2e23`  
		Last Modified: Fri, 21 Oct 2016 16:23:47 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f17209b8753c93d242b293bf370060dfe02f9d08ac60d3a06c40cc3d586146d`  
		Last Modified: Fri, 21 Oct 2016 16:54:31 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6317b059ad1d19ee0b4614d6f4a2a97bd25699be5830fe4b00d4babeeee7dd4c`  
		Last Modified: Fri, 21 Oct 2016 16:54:32 GMT  
		Size: 1.2 MB (1216361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9e6ce1a7e7e690c325d86f76c9d30496e2183968b09bda0a180337549839df`  
		Last Modified: Fri, 21 Oct 2016 16:54:30 GMT  
		Size: 18.3 KB (18303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcc4f0c06c29daade13dbc9d26f22411f3b3f3e6f72bcc99184da89a5ad4b4e9`  
		Last Modified: Fri, 21 Oct 2016 17:00:14 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6cedba8e96c7ed5883d49b0d608418cfb3f288d9de70772eaf5ec13a49c237a`  
		Last Modified: Fri, 21 Oct 2016 17:00:35 GMT  
		Size: 104.6 MB (104596865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c23b15877e1bec64e306cd0ca459980c959d4d264de94ed33064b056e2e2992`  
		Last Modified: Fri, 21 Oct 2016 17:00:14 GMT  
		Size: 4.7 KB (4694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba007929e79e857ff3f2e6269db8ccb5acb8f70963bba9161d2c0927d25cb71`  
		Last Modified: Fri, 21 Oct 2016 17:00:19 GMT  
		Size: 723.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21deb1fa81f2f33ddac602a47fca37406e2c893b18b6b08baaa7ed0cc5d08c2e`  
		Last Modified: Fri, 21 Oct 2016 17:00:13 GMT  
		Size: 23.7 KB (23728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.9`

```console
$ docker pull cassandra@sha256:f3ed033fbf2ad9edf4ef1d0911d3db12a40e87960279f15b8273ca551dd8fdcd
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.8 MB (161768019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb262636c36ab0aaa8369ddfa663298d488829ef0ae585335a4a0ead41dae046`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:23:38 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Fri, 21 Oct 2016 16:52:54 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 21 Oct 2016 16:52:55 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 16:53:17 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 16:53:18 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 21 Oct 2016 16:53:20 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 21 Oct 2016 16:57:03 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 39x main' >> /etc/apt/sources.list.d/cassandra.list
# Fri, 21 Oct 2016 16:57:03 GMT
ENV CASSANDRA_VERSION=3.9
# Fri, 21 Oct 2016 16:58:00 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:58:01 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Fri, 21 Oct 2016 16:58:01 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 21 Oct 2016 16:58:02 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 21 Oct 2016 16:58:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Oct 2016 16:58:03 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 21 Oct 2016 16:58:04 GMT
VOLUME [/var/lib/cassandra]
# Fri, 21 Oct 2016 16:58:04 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 21 Oct 2016 16:58:05 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e76e04f7d62d66b30066eff389e35460ec5a918d3a23d1b40e46631369a2e23`  
		Last Modified: Fri, 21 Oct 2016 16:23:47 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f17209b8753c93d242b293bf370060dfe02f9d08ac60d3a06c40cc3d586146d`  
		Last Modified: Fri, 21 Oct 2016 16:54:31 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6317b059ad1d19ee0b4614d6f4a2a97bd25699be5830fe4b00d4babeeee7dd4c`  
		Last Modified: Fri, 21 Oct 2016 16:54:32 GMT  
		Size: 1.2 MB (1216361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9e6ce1a7e7e690c325d86f76c9d30496e2183968b09bda0a180337549839df`  
		Last Modified: Fri, 21 Oct 2016 16:54:30 GMT  
		Size: 18.3 KB (18303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c121fae64e3d82de906043adbe5bf67240edce17836b62a8c84c95df2cf203e`  
		Last Modified: Fri, 21 Oct 2016 16:58:15 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ce8eef244945366ad450bc55ed48dfe05cb8dfddaf266b454cc7fa8310ba37`  
		Last Modified: Fri, 21 Oct 2016 16:58:35 GMT  
		Size: 109.1 MB (109145361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd451aee367f6b69fbee89570c910707a5816ee47096dab556de1bde293b23c`  
		Last Modified: Fri, 21 Oct 2016 16:58:15 GMT  
		Size: 4.4 KB (4394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51fda9f96ce063774100cd01e647f66ffb353019f3d30e39a4570df2c610bd55`  
		Last Modified: Fri, 21 Oct 2016 16:58:14 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ec1ccb62dd4904d98ed954d301d3e8f10090ba062c5ea82282dc54efbaeeaa5`  
		Last Modified: Fri, 21 Oct 2016 16:58:14 GMT  
		Size: 27.3 KB (27267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3`

```console
$ docker pull cassandra@sha256:f3ed033fbf2ad9edf4ef1d0911d3db12a40e87960279f15b8273ca551dd8fdcd
```

-	Platforms:
	-	linux; amd64

### `cassandra:3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.8 MB (161768019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb262636c36ab0aaa8369ddfa663298d488829ef0ae585335a4a0ead41dae046`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:23:38 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Fri, 21 Oct 2016 16:52:54 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 21 Oct 2016 16:52:55 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 16:53:17 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 16:53:18 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 21 Oct 2016 16:53:20 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 21 Oct 2016 16:57:03 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 39x main' >> /etc/apt/sources.list.d/cassandra.list
# Fri, 21 Oct 2016 16:57:03 GMT
ENV CASSANDRA_VERSION=3.9
# Fri, 21 Oct 2016 16:58:00 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:58:01 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Fri, 21 Oct 2016 16:58:01 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 21 Oct 2016 16:58:02 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 21 Oct 2016 16:58:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Oct 2016 16:58:03 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 21 Oct 2016 16:58:04 GMT
VOLUME [/var/lib/cassandra]
# Fri, 21 Oct 2016 16:58:04 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 21 Oct 2016 16:58:05 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e76e04f7d62d66b30066eff389e35460ec5a918d3a23d1b40e46631369a2e23`  
		Last Modified: Fri, 21 Oct 2016 16:23:47 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f17209b8753c93d242b293bf370060dfe02f9d08ac60d3a06c40cc3d586146d`  
		Last Modified: Fri, 21 Oct 2016 16:54:31 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6317b059ad1d19ee0b4614d6f4a2a97bd25699be5830fe4b00d4babeeee7dd4c`  
		Last Modified: Fri, 21 Oct 2016 16:54:32 GMT  
		Size: 1.2 MB (1216361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9e6ce1a7e7e690c325d86f76c9d30496e2183968b09bda0a180337549839df`  
		Last Modified: Fri, 21 Oct 2016 16:54:30 GMT  
		Size: 18.3 KB (18303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c121fae64e3d82de906043adbe5bf67240edce17836b62a8c84c95df2cf203e`  
		Last Modified: Fri, 21 Oct 2016 16:58:15 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ce8eef244945366ad450bc55ed48dfe05cb8dfddaf266b454cc7fa8310ba37`  
		Last Modified: Fri, 21 Oct 2016 16:58:35 GMT  
		Size: 109.1 MB (109145361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd451aee367f6b69fbee89570c910707a5816ee47096dab556de1bde293b23c`  
		Last Modified: Fri, 21 Oct 2016 16:58:15 GMT  
		Size: 4.4 KB (4394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51fda9f96ce063774100cd01e647f66ffb353019f3d30e39a4570df2c610bd55`  
		Last Modified: Fri, 21 Oct 2016 16:58:14 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ec1ccb62dd4904d98ed954d301d3e8f10090ba062c5ea82282dc54efbaeeaa5`  
		Last Modified: Fri, 21 Oct 2016 16:58:14 GMT  
		Size: 27.3 KB (27267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:latest`

```console
$ docker pull cassandra@sha256:f3ed033fbf2ad9edf4ef1d0911d3db12a40e87960279f15b8273ca551dd8fdcd
```

-	Platforms:
	-	linux; amd64

### `cassandra:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.8 MB (161768019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb262636c36ab0aaa8369ddfa663298d488829ef0ae585335a4a0ead41dae046`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:23:38 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Fri, 21 Oct 2016 16:52:54 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 21 Oct 2016 16:52:55 GMT
ENV GOSU_VERSION=1.7
# Fri, 21 Oct 2016 16:53:17 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 21 Oct 2016 16:53:18 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 21 Oct 2016 16:53:20 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Fri, 21 Oct 2016 16:57:03 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 39x main' >> /etc/apt/sources.list.d/cassandra.list
# Fri, 21 Oct 2016 16:57:03 GMT
ENV CASSANDRA_VERSION=3.9
# Fri, 21 Oct 2016 16:58:00 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:58:01 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Fri, 21 Oct 2016 16:58:01 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 21 Oct 2016 16:58:02 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 21 Oct 2016 16:58:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Oct 2016 16:58:03 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 21 Oct 2016 16:58:04 GMT
VOLUME [/var/lib/cassandra]
# Fri, 21 Oct 2016 16:58:04 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 21 Oct 2016 16:58:05 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e76e04f7d62d66b30066eff389e35460ec5a918d3a23d1b40e46631369a2e23`  
		Last Modified: Fri, 21 Oct 2016 16:23:47 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f17209b8753c93d242b293bf370060dfe02f9d08ac60d3a06c40cc3d586146d`  
		Last Modified: Fri, 21 Oct 2016 16:54:31 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6317b059ad1d19ee0b4614d6f4a2a97bd25699be5830fe4b00d4babeeee7dd4c`  
		Last Modified: Fri, 21 Oct 2016 16:54:32 GMT  
		Size: 1.2 MB (1216361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9e6ce1a7e7e690c325d86f76c9d30496e2183968b09bda0a180337549839df`  
		Last Modified: Fri, 21 Oct 2016 16:54:30 GMT  
		Size: 18.3 KB (18303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c121fae64e3d82de906043adbe5bf67240edce17836b62a8c84c95df2cf203e`  
		Last Modified: Fri, 21 Oct 2016 16:58:15 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ce8eef244945366ad450bc55ed48dfe05cb8dfddaf266b454cc7fa8310ba37`  
		Last Modified: Fri, 21 Oct 2016 16:58:35 GMT  
		Size: 109.1 MB (109145361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbd451aee367f6b69fbee89570c910707a5816ee47096dab556de1bde293b23c`  
		Last Modified: Fri, 21 Oct 2016 16:58:15 GMT  
		Size: 4.4 KB (4394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51fda9f96ce063774100cd01e647f66ffb353019f3d30e39a4570df2c610bd55`  
		Last Modified: Fri, 21 Oct 2016 16:58:14 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ec1ccb62dd4904d98ed954d301d3e8f10090ba062c5ea82282dc54efbaeeaa5`  
		Last Modified: Fri, 21 Oct 2016 16:58:14 GMT  
		Size: 27.3 KB (27267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
