<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `cassandra`

-	[`cassandra:2.1.15`](#cassandra2115)
-	[`cassandra:2.1`](#cassandra21)
-	[`cassandra:2.2.7`](#cassandra227)
-	[`cassandra:2.2`](#cassandra22)
-	[`cassandra:2`](#cassandra2)
-	[`cassandra:3.0.9`](#cassandra309)
-	[`cassandra:3.0`](#cassandra30)
-	[`cassandra:3.7`](#cassandra37)
-	[`cassandra:3`](#cassandra3)
-	[`cassandra:latest`](#cassandralatest)

## `cassandra:2.1.15`

```console
$ docker pull cassandra@sha256:d461b00e47e0e8a08e02a2ef464b8ad0694ff9b920fb01f8d031d562c3621293
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.1.15` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166720392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1265542553049cd7b46dc3ce9d4be38c30fe35083ea6ab6d40bd1f64a5205f7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:42:38 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 20 Sep 2016 01:02:58 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 20 Sep 2016 01:02:58 GMT
ENV GOSU_VERSION=1.7
# Tue, 20 Sep 2016 01:03:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 20 Sep 2016 01:03:30 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 514A2AD631A57A16DD0047EC749D6EEC0353B12C
# Tue, 20 Sep 2016 01:03:33 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 20 Sep 2016 01:03:33 GMT
ENV CASSANDRA_VERSION=2.1.15
# Tue, 20 Sep 2016 01:04:56 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 01:04:57 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 20 Sep 2016 01:04:57 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 20 Sep 2016 01:04:58 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 20 Sep 2016 01:04:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 01:04:59 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 20 Sep 2016 01:05:00 GMT
VOLUME [/var/lib/cassandra]
# Tue, 20 Sep 2016 01:05:00 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 20 Sep 2016 01:05:01 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ea2cb67634c24946bc8194aa01a307e493050d0529a87c11dee6064d8e9883`  
		Last Modified: Mon, 19 Sep 2016 17:45:06 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af53b1d2afc9ab35a7b08d012288c626927361dd982557e573f1a82f6d4ade76`  
		Last Modified: Wed, 21 Sep 2016 22:41:26 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095b51d480aaaee4e21e125e10b0dcefd80e43feebf5cd0d725e459b5659a9a7`  
		Last Modified: Wed, 21 Sep 2016 22:41:26 GMT  
		Size: 1.2 MB (1216319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0fe5291c7c468ded393a57cb15be0365f506f4f9864356f6c4237bdb388addc`  
		Last Modified: Wed, 21 Sep 2016 22:41:25 GMT  
		Size: 3.0 KB (3045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7a560893a01ee3f49e077978164ded27bf7c8c4bbe2c7986d7b097020c32d2`  
		Last Modified: Wed, 21 Sep 2016 22:41:22 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e089a9206b6a6c01a828c00a41c8ee960f3560e4ba663c1a8b7244f78059d95`  
		Last Modified: Wed, 21 Sep 2016 22:41:46 GMT  
		Size: 114.1 MB (114118415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23323b32a42843cd73f8f0630e19d58982e3e26ae8b36aa19f0fcde70f695d0e`  
		Last Modified: Wed, 21 Sep 2016 22:41:22 GMT  
		Size: 4.7 KB (4655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65bc6f355576df01bf400ccd9808322e369e62eba746e7b7be951b214eee5c5`  
		Last Modified: Wed, 21 Sep 2016 22:41:23 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac2e1e5c973e44d341563e335d15120ebc5073fe9aa927848cc46f7e939d9de`  
		Last Modified: Wed, 21 Sep 2016 22:41:23 GMT  
		Size: 20.2 KB (20192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.1`

```console
$ docker pull cassandra@sha256:d461b00e47e0e8a08e02a2ef464b8ad0694ff9b920fb01f8d031d562c3621293
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166720392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1265542553049cd7b46dc3ce9d4be38c30fe35083ea6ab6d40bd1f64a5205f7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:42:38 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 20 Sep 2016 01:02:58 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 20 Sep 2016 01:02:58 GMT
ENV GOSU_VERSION=1.7
# Tue, 20 Sep 2016 01:03:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 20 Sep 2016 01:03:30 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 514A2AD631A57A16DD0047EC749D6EEC0353B12C
# Tue, 20 Sep 2016 01:03:33 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 20 Sep 2016 01:03:33 GMT
ENV CASSANDRA_VERSION=2.1.15
# Tue, 20 Sep 2016 01:04:56 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 01:04:57 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 20 Sep 2016 01:04:57 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 20 Sep 2016 01:04:58 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 20 Sep 2016 01:04:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 01:04:59 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 20 Sep 2016 01:05:00 GMT
VOLUME [/var/lib/cassandra]
# Tue, 20 Sep 2016 01:05:00 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 20 Sep 2016 01:05:01 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ea2cb67634c24946bc8194aa01a307e493050d0529a87c11dee6064d8e9883`  
		Last Modified: Mon, 19 Sep 2016 17:45:06 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af53b1d2afc9ab35a7b08d012288c626927361dd982557e573f1a82f6d4ade76`  
		Last Modified: Wed, 21 Sep 2016 22:41:26 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095b51d480aaaee4e21e125e10b0dcefd80e43feebf5cd0d725e459b5659a9a7`  
		Last Modified: Wed, 21 Sep 2016 22:41:26 GMT  
		Size: 1.2 MB (1216319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0fe5291c7c468ded393a57cb15be0365f506f4f9864356f6c4237bdb388addc`  
		Last Modified: Wed, 21 Sep 2016 22:41:25 GMT  
		Size: 3.0 KB (3045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7a560893a01ee3f49e077978164ded27bf7c8c4bbe2c7986d7b097020c32d2`  
		Last Modified: Wed, 21 Sep 2016 22:41:22 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e089a9206b6a6c01a828c00a41c8ee960f3560e4ba663c1a8b7244f78059d95`  
		Last Modified: Wed, 21 Sep 2016 22:41:46 GMT  
		Size: 114.1 MB (114118415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23323b32a42843cd73f8f0630e19d58982e3e26ae8b36aa19f0fcde70f695d0e`  
		Last Modified: Wed, 21 Sep 2016 22:41:22 GMT  
		Size: 4.7 KB (4655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65bc6f355576df01bf400ccd9808322e369e62eba746e7b7be951b214eee5c5`  
		Last Modified: Wed, 21 Sep 2016 22:41:23 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac2e1e5c973e44d341563e335d15120ebc5073fe9aa927848cc46f7e939d9de`  
		Last Modified: Wed, 21 Sep 2016 22:41:23 GMT  
		Size: 20.2 KB (20192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2.7`

```console
$ docker pull cassandra@sha256:19aa38ce61262117e7dc736ffe80a20996ebb9a6140bd8ae52b1a64084a14052
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.2.7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.0 MB (171001977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dfac5b09ebbdbc2c5e78a9232fb3aa75bc66a67db11694c57b75cfba728b655`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:42:38 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 20 Sep 2016 01:02:58 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 20 Sep 2016 01:02:58 GMT
ENV GOSU_VERSION=1.7
# Tue, 20 Sep 2016 01:03:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 20 Sep 2016 01:03:30 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 514A2AD631A57A16DD0047EC749D6EEC0353B12C
# Tue, 20 Sep 2016 01:06:04 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 20 Sep 2016 01:06:06 GMT
ENV CASSANDRA_VERSION=2.2.7
# Tue, 20 Sep 2016 01:07:13 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 01:07:15 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 20 Sep 2016 01:07:15 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 20 Sep 2016 01:07:16 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 20 Sep 2016 01:07:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 01:07:17 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 20 Sep 2016 01:07:17 GMT
VOLUME [/var/lib/cassandra]
# Tue, 20 Sep 2016 01:07:18 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 20 Sep 2016 01:07:18 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ea2cb67634c24946bc8194aa01a307e493050d0529a87c11dee6064d8e9883`  
		Last Modified: Mon, 19 Sep 2016 17:45:06 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af53b1d2afc9ab35a7b08d012288c626927361dd982557e573f1a82f6d4ade76`  
		Last Modified: Wed, 21 Sep 2016 22:41:26 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095b51d480aaaee4e21e125e10b0dcefd80e43feebf5cd0d725e459b5659a9a7`  
		Last Modified: Wed, 21 Sep 2016 22:41:26 GMT  
		Size: 1.2 MB (1216319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0fe5291c7c468ded393a57cb15be0365f506f4f9864356f6c4237bdb388addc`  
		Last Modified: Wed, 21 Sep 2016 22:41:25 GMT  
		Size: 3.0 KB (3045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb29c4548f2be14e48f42657b232ed7e63c26b54398039e4c74fedd6899399d3`  
		Last Modified: Wed, 21 Sep 2016 22:42:09 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95958b09f59c83dbdbce962ed2479101775ef597a1592b5a273c3f39cb053f6`  
		Last Modified: Wed, 21 Sep 2016 22:42:34 GMT  
		Size: 118.4 MB (118399134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c844a2f5cbce4a36aa5fdf6bf0c433789c3c5cab667a875280b4bf8f4f6298ea`  
		Last Modified: Wed, 21 Sep 2016 22:42:14 GMT  
		Size: 4.6 KB (4625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:800eb631774cdb489b38a0e6b37b4c7d191a08cd2a9a3e5a9a0998fbe7b3f3cc`  
		Last Modified: Wed, 21 Sep 2016 22:42:09 GMT  
		Size: 718.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c9f93f2d918874adc2732977f9bce257632ef57e4253fd188868243ca432c1`  
		Last Modified: Wed, 21 Sep 2016 22:42:09 GMT  
		Size: 21.1 KB (21089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2`

```console
$ docker pull cassandra@sha256:19aa38ce61262117e7dc736ffe80a20996ebb9a6140bd8ae52b1a64084a14052
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.0 MB (171001977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dfac5b09ebbdbc2c5e78a9232fb3aa75bc66a67db11694c57b75cfba728b655`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:42:38 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 20 Sep 2016 01:02:58 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 20 Sep 2016 01:02:58 GMT
ENV GOSU_VERSION=1.7
# Tue, 20 Sep 2016 01:03:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 20 Sep 2016 01:03:30 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 514A2AD631A57A16DD0047EC749D6EEC0353B12C
# Tue, 20 Sep 2016 01:06:04 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 20 Sep 2016 01:06:06 GMT
ENV CASSANDRA_VERSION=2.2.7
# Tue, 20 Sep 2016 01:07:13 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 01:07:15 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 20 Sep 2016 01:07:15 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 20 Sep 2016 01:07:16 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 20 Sep 2016 01:07:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 01:07:17 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 20 Sep 2016 01:07:17 GMT
VOLUME [/var/lib/cassandra]
# Tue, 20 Sep 2016 01:07:18 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 20 Sep 2016 01:07:18 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ea2cb67634c24946bc8194aa01a307e493050d0529a87c11dee6064d8e9883`  
		Last Modified: Mon, 19 Sep 2016 17:45:06 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af53b1d2afc9ab35a7b08d012288c626927361dd982557e573f1a82f6d4ade76`  
		Last Modified: Wed, 21 Sep 2016 22:41:26 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095b51d480aaaee4e21e125e10b0dcefd80e43feebf5cd0d725e459b5659a9a7`  
		Last Modified: Wed, 21 Sep 2016 22:41:26 GMT  
		Size: 1.2 MB (1216319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0fe5291c7c468ded393a57cb15be0365f506f4f9864356f6c4237bdb388addc`  
		Last Modified: Wed, 21 Sep 2016 22:41:25 GMT  
		Size: 3.0 KB (3045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb29c4548f2be14e48f42657b232ed7e63c26b54398039e4c74fedd6899399d3`  
		Last Modified: Wed, 21 Sep 2016 22:42:09 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95958b09f59c83dbdbce962ed2479101775ef597a1592b5a273c3f39cb053f6`  
		Last Modified: Wed, 21 Sep 2016 22:42:34 GMT  
		Size: 118.4 MB (118399134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c844a2f5cbce4a36aa5fdf6bf0c433789c3c5cab667a875280b4bf8f4f6298ea`  
		Last Modified: Wed, 21 Sep 2016 22:42:14 GMT  
		Size: 4.6 KB (4625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:800eb631774cdb489b38a0e6b37b4c7d191a08cd2a9a3e5a9a0998fbe7b3f3cc`  
		Last Modified: Wed, 21 Sep 2016 22:42:09 GMT  
		Size: 718.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c9f93f2d918874adc2732977f9bce257632ef57e4253fd188868243ca432c1`  
		Last Modified: Wed, 21 Sep 2016 22:42:09 GMT  
		Size: 21.1 KB (21089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2`

```console
$ docker pull cassandra@sha256:19aa38ce61262117e7dc736ffe80a20996ebb9a6140bd8ae52b1a64084a14052
```

-	Platforms:
	-	linux; amd64

### `cassandra:2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.0 MB (171001977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dfac5b09ebbdbc2c5e78a9232fb3aa75bc66a67db11694c57b75cfba728b655`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:42:38 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 20 Sep 2016 01:02:58 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 20 Sep 2016 01:02:58 GMT
ENV GOSU_VERSION=1.7
# Tue, 20 Sep 2016 01:03:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 20 Sep 2016 01:03:30 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 514A2AD631A57A16DD0047EC749D6EEC0353B12C
# Tue, 20 Sep 2016 01:06:04 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 20 Sep 2016 01:06:06 GMT
ENV CASSANDRA_VERSION=2.2.7
# Tue, 20 Sep 2016 01:07:13 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 01:07:15 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 20 Sep 2016 01:07:15 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 20 Sep 2016 01:07:16 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 20 Sep 2016 01:07:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 01:07:17 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 20 Sep 2016 01:07:17 GMT
VOLUME [/var/lib/cassandra]
# Tue, 20 Sep 2016 01:07:18 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 20 Sep 2016 01:07:18 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ea2cb67634c24946bc8194aa01a307e493050d0529a87c11dee6064d8e9883`  
		Last Modified: Mon, 19 Sep 2016 17:45:06 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af53b1d2afc9ab35a7b08d012288c626927361dd982557e573f1a82f6d4ade76`  
		Last Modified: Wed, 21 Sep 2016 22:41:26 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095b51d480aaaee4e21e125e10b0dcefd80e43feebf5cd0d725e459b5659a9a7`  
		Last Modified: Wed, 21 Sep 2016 22:41:26 GMT  
		Size: 1.2 MB (1216319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0fe5291c7c468ded393a57cb15be0365f506f4f9864356f6c4237bdb388addc`  
		Last Modified: Wed, 21 Sep 2016 22:41:25 GMT  
		Size: 3.0 KB (3045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb29c4548f2be14e48f42657b232ed7e63c26b54398039e4c74fedd6899399d3`  
		Last Modified: Wed, 21 Sep 2016 22:42:09 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95958b09f59c83dbdbce962ed2479101775ef597a1592b5a273c3f39cb053f6`  
		Last Modified: Wed, 21 Sep 2016 22:42:34 GMT  
		Size: 118.4 MB (118399134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c844a2f5cbce4a36aa5fdf6bf0c433789c3c5cab667a875280b4bf8f4f6298ea`  
		Last Modified: Wed, 21 Sep 2016 22:42:14 GMT  
		Size: 4.6 KB (4625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:800eb631774cdb489b38a0e6b37b4c7d191a08cd2a9a3e5a9a0998fbe7b3f3cc`  
		Last Modified: Wed, 21 Sep 2016 22:42:09 GMT  
		Size: 718.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c9f93f2d918874adc2732977f9bce257632ef57e4253fd188868243ca432c1`  
		Last Modified: Wed, 21 Sep 2016 22:42:09 GMT  
		Size: 21.1 KB (21089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0.9`

```console
$ docker pull cassandra@sha256:ac7427680a0e948f70f54c3a7cf0f392880b64b7e71c1d4c666ebfe1481dfab9
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.0.9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.2 MB (157158147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c42e00800761a43b64745878f33dc483c425af0928783046ac9081c95ce4ea2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:42:38 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 20 Sep 2016 01:02:58 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 20 Sep 2016 01:02:58 GMT
ENV GOSU_VERSION=1.7
# Tue, 20 Sep 2016 01:03:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 20 Sep 2016 01:03:30 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 514A2AD631A57A16DD0047EC749D6EEC0353B12C
# Tue, 20 Sep 2016 01:07:20 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' >> /etc/apt/sources.list.d/cassandra.list
# Wed, 21 Sep 2016 22:40:27 GMT
ENV CASSANDRA_VERSION=3.0.9
# Wed, 21 Sep 2016 22:41:11 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Sep 2016 22:41:12 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Wed, 21 Sep 2016 22:41:13 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Wed, 21 Sep 2016 22:41:13 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Wed, 21 Sep 2016 22:41:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 21 Sep 2016 22:41:14 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Wed, 21 Sep 2016 22:41:15 GMT
VOLUME [/var/lib/cassandra]
# Wed, 21 Sep 2016 22:41:15 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Wed, 21 Sep 2016 22:41:15 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ea2cb67634c24946bc8194aa01a307e493050d0529a87c11dee6064d8e9883`  
		Last Modified: Mon, 19 Sep 2016 17:45:06 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af53b1d2afc9ab35a7b08d012288c626927361dd982557e573f1a82f6d4ade76`  
		Last Modified: Wed, 21 Sep 2016 22:41:26 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095b51d480aaaee4e21e125e10b0dcefd80e43feebf5cd0d725e459b5659a9a7`  
		Last Modified: Wed, 21 Sep 2016 22:41:26 GMT  
		Size: 1.2 MB (1216319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0fe5291c7c468ded393a57cb15be0365f506f4f9864356f6c4237bdb388addc`  
		Last Modified: Wed, 21 Sep 2016 22:41:25 GMT  
		Size: 3.0 KB (3045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72beec5836e65f3a276d547642de01b348bbaaa2fb9d28e2ae5a7986d8b9029`  
		Last Modified: Wed, 21 Sep 2016 22:43:07 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f7eafa687d7ec8b8da8fbab16672eb55efdf0f179e3e78e0fa2c8a2cf03035`  
		Last Modified: Wed, 21 Sep 2016 22:43:30 GMT  
		Size: 104.6 MB (104552586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e63696bf2f05b7c4b1b5b0477c633a823f4571c88fd81ba9b1fa5462dade6ea`  
		Last Modified: Wed, 21 Sep 2016 22:43:06 GMT  
		Size: 4.7 KB (4696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150051b18671f5d745f20ea7284428a6acd120410a4add8597223e52165c2d47`  
		Last Modified: Wed, 21 Sep 2016 22:43:06 GMT  
		Size: 723.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed24a4380df43c580eae8b780fa2c221b77bc6f13bdd79e464e033dcb4806e12`  
		Last Modified: Wed, 21 Sep 2016 22:43:06 GMT  
		Size: 23.7 KB (23730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0`

```console
$ docker pull cassandra@sha256:ac7427680a0e948f70f54c3a7cf0f392880b64b7e71c1d4c666ebfe1481dfab9
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.2 MB (157158147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c42e00800761a43b64745878f33dc483c425af0928783046ac9081c95ce4ea2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:42:38 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 20 Sep 2016 01:02:58 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 20 Sep 2016 01:02:58 GMT
ENV GOSU_VERSION=1.7
# Tue, 20 Sep 2016 01:03:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 20 Sep 2016 01:03:30 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 514A2AD631A57A16DD0047EC749D6EEC0353B12C
# Tue, 20 Sep 2016 01:07:20 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' >> /etc/apt/sources.list.d/cassandra.list
# Wed, 21 Sep 2016 22:40:27 GMT
ENV CASSANDRA_VERSION=3.0.9
# Wed, 21 Sep 2016 22:41:11 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Sep 2016 22:41:12 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Wed, 21 Sep 2016 22:41:13 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Wed, 21 Sep 2016 22:41:13 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Wed, 21 Sep 2016 22:41:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 21 Sep 2016 22:41:14 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Wed, 21 Sep 2016 22:41:15 GMT
VOLUME [/var/lib/cassandra]
# Wed, 21 Sep 2016 22:41:15 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Wed, 21 Sep 2016 22:41:15 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ea2cb67634c24946bc8194aa01a307e493050d0529a87c11dee6064d8e9883`  
		Last Modified: Mon, 19 Sep 2016 17:45:06 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af53b1d2afc9ab35a7b08d012288c626927361dd982557e573f1a82f6d4ade76`  
		Last Modified: Wed, 21 Sep 2016 22:41:26 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095b51d480aaaee4e21e125e10b0dcefd80e43feebf5cd0d725e459b5659a9a7`  
		Last Modified: Wed, 21 Sep 2016 22:41:26 GMT  
		Size: 1.2 MB (1216319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0fe5291c7c468ded393a57cb15be0365f506f4f9864356f6c4237bdb388addc`  
		Last Modified: Wed, 21 Sep 2016 22:41:25 GMT  
		Size: 3.0 KB (3045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72beec5836e65f3a276d547642de01b348bbaaa2fb9d28e2ae5a7986d8b9029`  
		Last Modified: Wed, 21 Sep 2016 22:43:07 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f7eafa687d7ec8b8da8fbab16672eb55efdf0f179e3e78e0fa2c8a2cf03035`  
		Last Modified: Wed, 21 Sep 2016 22:43:30 GMT  
		Size: 104.6 MB (104552586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e63696bf2f05b7c4b1b5b0477c633a823f4571c88fd81ba9b1fa5462dade6ea`  
		Last Modified: Wed, 21 Sep 2016 22:43:06 GMT  
		Size: 4.7 KB (4696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150051b18671f5d745f20ea7284428a6acd120410a4add8597223e52165c2d47`  
		Last Modified: Wed, 21 Sep 2016 22:43:06 GMT  
		Size: 723.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed24a4380df43c580eae8b780fa2c221b77bc6f13bdd79e464e033dcb4806e12`  
		Last Modified: Wed, 21 Sep 2016 22:43:06 GMT  
		Size: 23.7 KB (23730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.7`

```console
$ docker pull cassandra@sha256:bea66ab70f99183e5c7d293584afb8d0556b9ae14ca971a16f450f76115a7764
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.3 MB (161308357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b120a57b27eb1a35870a2c5695eef5e957f8b4af0a9a2a7931bcc70fb7c0ec7c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:42:38 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 20 Sep 2016 01:02:58 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 20 Sep 2016 01:02:58 GMT
ENV GOSU_VERSION=1.7
# Tue, 20 Sep 2016 01:03:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 20 Sep 2016 01:03:30 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 514A2AD631A57A16DD0047EC749D6EEC0353B12C
# Tue, 20 Sep 2016 01:05:02 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 37x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 20 Sep 2016 01:05:02 GMT
ENV CASSANDRA_VERSION=3.7
# Tue, 20 Sep 2016 01:05:59 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 01:06:00 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 20 Sep 2016 01:06:00 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 20 Sep 2016 01:06:01 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 20 Sep 2016 01:06:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 01:06:02 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 20 Sep 2016 01:06:02 GMT
VOLUME [/var/lib/cassandra]
# Tue, 20 Sep 2016 01:06:02 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 20 Sep 2016 01:06:03 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ea2cb67634c24946bc8194aa01a307e493050d0529a87c11dee6064d8e9883`  
		Last Modified: Mon, 19 Sep 2016 17:45:06 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af53b1d2afc9ab35a7b08d012288c626927361dd982557e573f1a82f6d4ade76`  
		Last Modified: Wed, 21 Sep 2016 22:41:26 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095b51d480aaaee4e21e125e10b0dcefd80e43feebf5cd0d725e459b5659a9a7`  
		Last Modified: Wed, 21 Sep 2016 22:41:26 GMT  
		Size: 1.2 MB (1216319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0fe5291c7c468ded393a57cb15be0365f506f4f9864356f6c4237bdb388addc`  
		Last Modified: Wed, 21 Sep 2016 22:41:25 GMT  
		Size: 3.0 KB (3045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80299d79121273b94eba585498947df986f99ae6e10803ff3bd98e2ad2601438`  
		Last Modified: Wed, 21 Sep 2016 22:43:55 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94d07a9b4ffb843ac0e25654006dec5d4701b658b2866c3f6ce940cd01cd7b3`  
		Last Modified: Wed, 21 Sep 2016 22:44:20 GMT  
		Size: 108.7 MB (108700380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb5731018bc99618bb43bce01a1061876d01ad5630eeae80966b2a9fb8b8005`  
		Last Modified: Wed, 21 Sep 2016 22:43:55 GMT  
		Size: 4.3 KB (4282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd2c1c95a9494f285881090102bcf7e119bf3c64c71d80f800e7f9099eaa7db`  
		Last Modified: Wed, 21 Sep 2016 22:43:55 GMT  
		Size: 719.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9dee32f059764daee3773b262e24dce11795235d67445590df364405509d916`  
		Last Modified: Wed, 21 Sep 2016 22:43:55 GMT  
		Size: 26.6 KB (26563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3`

```console
$ docker pull cassandra@sha256:bea66ab70f99183e5c7d293584afb8d0556b9ae14ca971a16f450f76115a7764
```

-	Platforms:
	-	linux; amd64

### `cassandra:3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.3 MB (161308357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b120a57b27eb1a35870a2c5695eef5e957f8b4af0a9a2a7931bcc70fb7c0ec7c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:42:38 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 20 Sep 2016 01:02:58 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 20 Sep 2016 01:02:58 GMT
ENV GOSU_VERSION=1.7
# Tue, 20 Sep 2016 01:03:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 20 Sep 2016 01:03:30 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 514A2AD631A57A16DD0047EC749D6EEC0353B12C
# Tue, 20 Sep 2016 01:05:02 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 37x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 20 Sep 2016 01:05:02 GMT
ENV CASSANDRA_VERSION=3.7
# Tue, 20 Sep 2016 01:05:59 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 01:06:00 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 20 Sep 2016 01:06:00 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 20 Sep 2016 01:06:01 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 20 Sep 2016 01:06:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 01:06:02 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 20 Sep 2016 01:06:02 GMT
VOLUME [/var/lib/cassandra]
# Tue, 20 Sep 2016 01:06:02 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 20 Sep 2016 01:06:03 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ea2cb67634c24946bc8194aa01a307e493050d0529a87c11dee6064d8e9883`  
		Last Modified: Mon, 19 Sep 2016 17:45:06 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af53b1d2afc9ab35a7b08d012288c626927361dd982557e573f1a82f6d4ade76`  
		Last Modified: Wed, 21 Sep 2016 22:41:26 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095b51d480aaaee4e21e125e10b0dcefd80e43feebf5cd0d725e459b5659a9a7`  
		Last Modified: Wed, 21 Sep 2016 22:41:26 GMT  
		Size: 1.2 MB (1216319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0fe5291c7c468ded393a57cb15be0365f506f4f9864356f6c4237bdb388addc`  
		Last Modified: Wed, 21 Sep 2016 22:41:25 GMT  
		Size: 3.0 KB (3045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80299d79121273b94eba585498947df986f99ae6e10803ff3bd98e2ad2601438`  
		Last Modified: Wed, 21 Sep 2016 22:43:55 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94d07a9b4ffb843ac0e25654006dec5d4701b658b2866c3f6ce940cd01cd7b3`  
		Last Modified: Wed, 21 Sep 2016 22:44:20 GMT  
		Size: 108.7 MB (108700380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb5731018bc99618bb43bce01a1061876d01ad5630eeae80966b2a9fb8b8005`  
		Last Modified: Wed, 21 Sep 2016 22:43:55 GMT  
		Size: 4.3 KB (4282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd2c1c95a9494f285881090102bcf7e119bf3c64c71d80f800e7f9099eaa7db`  
		Last Modified: Wed, 21 Sep 2016 22:43:55 GMT  
		Size: 719.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9dee32f059764daee3773b262e24dce11795235d67445590df364405509d916`  
		Last Modified: Wed, 21 Sep 2016 22:43:55 GMT  
		Size: 26.6 KB (26563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:latest`

```console
$ docker pull cassandra@sha256:bea66ab70f99183e5c7d293584afb8d0556b9ae14ca971a16f450f76115a7764
```

-	Platforms:
	-	linux; amd64

### `cassandra:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.3 MB (161308357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b120a57b27eb1a35870a2c5695eef5e957f8b4af0a9a2a7931bcc70fb7c0ec7c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:42:38 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 20 Sep 2016 01:02:58 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 20 Sep 2016 01:02:58 GMT
ENV GOSU_VERSION=1.7
# Tue, 20 Sep 2016 01:03:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 20 Sep 2016 01:03:30 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 514A2AD631A57A16DD0047EC749D6EEC0353B12C
# Tue, 20 Sep 2016 01:05:02 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 37x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 20 Sep 2016 01:05:02 GMT
ENV CASSANDRA_VERSION=3.7
# Tue, 20 Sep 2016 01:05:59 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 01:06:00 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 20 Sep 2016 01:06:00 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 20 Sep 2016 01:06:01 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 20 Sep 2016 01:06:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Sep 2016 01:06:02 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 20 Sep 2016 01:06:02 GMT
VOLUME [/var/lib/cassandra]
# Tue, 20 Sep 2016 01:06:02 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 20 Sep 2016 01:06:03 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ea2cb67634c24946bc8194aa01a307e493050d0529a87c11dee6064d8e9883`  
		Last Modified: Mon, 19 Sep 2016 17:45:06 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af53b1d2afc9ab35a7b08d012288c626927361dd982557e573f1a82f6d4ade76`  
		Last Modified: Wed, 21 Sep 2016 22:41:26 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095b51d480aaaee4e21e125e10b0dcefd80e43feebf5cd0d725e459b5659a9a7`  
		Last Modified: Wed, 21 Sep 2016 22:41:26 GMT  
		Size: 1.2 MB (1216319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0fe5291c7c468ded393a57cb15be0365f506f4f9864356f6c4237bdb388addc`  
		Last Modified: Wed, 21 Sep 2016 22:41:25 GMT  
		Size: 3.0 KB (3045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80299d79121273b94eba585498947df986f99ae6e10803ff3bd98e2ad2601438`  
		Last Modified: Wed, 21 Sep 2016 22:43:55 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94d07a9b4ffb843ac0e25654006dec5d4701b658b2866c3f6ce940cd01cd7b3`  
		Last Modified: Wed, 21 Sep 2016 22:44:20 GMT  
		Size: 108.7 MB (108700380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb5731018bc99618bb43bce01a1061876d01ad5630eeae80966b2a9fb8b8005`  
		Last Modified: Wed, 21 Sep 2016 22:43:55 GMT  
		Size: 4.3 KB (4282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd2c1c95a9494f285881090102bcf7e119bf3c64c71d80f800e7f9099eaa7db`  
		Last Modified: Wed, 21 Sep 2016 22:43:55 GMT  
		Size: 719.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9dee32f059764daee3773b262e24dce11795235d67445590df364405509d916`  
		Last Modified: Wed, 21 Sep 2016 22:43:55 GMT  
		Size: 26.6 KB (26563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
