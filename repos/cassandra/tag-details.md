<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `cassandra`

-	[`cassandra:2.1.18`](#cassandra2118)
-	[`cassandra:2.1`](#cassandra21)
-	[`cassandra:2.2.10`](#cassandra2210)
-	[`cassandra:2.2`](#cassandra22)
-	[`cassandra:2`](#cassandra2)
-	[`cassandra:3.0.14`](#cassandra3014)
-	[`cassandra:3.0`](#cassandra30)
-	[`cassandra:3.11.0`](#cassandra3110)
-	[`cassandra:3.11`](#cassandra311)
-	[`cassandra:3`](#cassandra3)
-	[`cassandra:latest`](#cassandralatest)

## `cassandra:2.1.18`

```console
$ docker pull cassandra@sha256:574e14f959a33a23a7886405f0d8cb17ebbbbd54c7d584d3ceac03969d23a8e6
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.1.18` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.2 MB (170154858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cab2642d91ff624d17b3d83879b01f60770095b5ddef3274300158c25c5e4ea`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 20:13:59 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 21 Jun 2017 00:55:44 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 21 Jun 2017 00:55:45 GMT
ENV GOSU_VERSION=1.7
# Wed, 21 Jun 2017 00:56:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 21 Jun 2017 00:56:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 00:56:28 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Wed, 21 Jun 2017 00:56:29 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 21 Jun 2017 00:56:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 21 Jun 2017 00:56:34 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' >> /etc/apt/sources.list.d/cassandra.list
# Thu, 29 Jun 2017 21:03:18 GMT
ENV CASSANDRA_VERSION=2.1.18
# Thu, 29 Jun 2017 21:04:14 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Jun 2017 21:04:16 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Thu, 29 Jun 2017 21:04:17 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 29 Jun 2017 21:04:18 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Thu, 29 Jun 2017 21:04:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:04:20 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 29 Jun 2017 21:04:21 GMT
VOLUME [/var/lib/cassandra]
# Thu, 29 Jun 2017 21:04:22 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 29 Jun 2017 21:04:23 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bacf36113fe830a77280f81a8203a228fa4bb4536f145a333709b9da0f7cf7`  
		Last Modified: Tue, 20 Jun 2017 20:37:34 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6842ab2e6fc74873b3fdee0f94ba55daab8d33d724210c33908cf0851ba7aa`  
		Last Modified: Sat, 24 Jun 2017 06:15:15 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0970d2724fb480b3365da5b7b97433cc584531bdf47f1ca6521872f28118c60`  
		Last Modified: Sat, 24 Jun 2017 06:15:15 GMT  
		Size: 1.3 MB (1304152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd1392a6ce500913c8610a67aee5a0fa60c473187630898271e9414340491b5`  
		Last Modified: Sat, 24 Jun 2017 06:15:15 GMT  
		Size: 172.3 KB (172292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43faf38e08a80fd2c9ca9d6936cc906031c54bef186e9ac81710984b86ae1a50`  
		Last Modified: Sat, 24 Jun 2017 06:15:16 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448a3a082d57197895d5911639f0986dfe53cc0b00248044cac75f78352958e2`  
		Last Modified: Sat, 24 Jun 2017 06:15:12 GMT  
		Size: 18.2 KB (18228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cea5fb8ce7a58eeee09946e472c13fe9064fccaf21433c95c7131b73eb4bac0`  
		Last Modified: Sat, 24 Jun 2017 06:15:12 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f317c5831e9ab304702f53970fed91dedd425e6a8a4a8daac31c6eb7731f79b5`  
		Last Modified: Thu, 29 Jun 2017 21:15:26 GMT  
		Size: 116.0 MB (116016705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb0dd19e91a40ea21221e439a04c5e3a9c18dd4b97f3b5cb20d3d0396d747a7`  
		Last Modified: Thu, 29 Jun 2017 21:15:05 GMT  
		Size: 4.7 KB (4670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5465994b1c89a7ed65f88796854b2e79a0b1df79cbaf21bbbe24e681372e103`  
		Last Modified: Thu, 29 Jun 2017 21:15:06 GMT  
		Size: 732.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b3116a8a1f2e337695c4a2e1841d4b118789becd10f9a4713760e8a9aedb60`  
		Last Modified: Thu, 29 Jun 2017 21:15:06 GMT  
		Size: 20.5 KB (20532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.1`

```console
$ docker pull cassandra@sha256:574e14f959a33a23a7886405f0d8cb17ebbbbd54c7d584d3ceac03969d23a8e6
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.2 MB (170154858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cab2642d91ff624d17b3d83879b01f60770095b5ddef3274300158c25c5e4ea`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 20:13:59 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 21 Jun 2017 00:55:44 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 21 Jun 2017 00:55:45 GMT
ENV GOSU_VERSION=1.7
# Wed, 21 Jun 2017 00:56:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 21 Jun 2017 00:56:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 00:56:28 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Wed, 21 Jun 2017 00:56:29 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 21 Jun 2017 00:56:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 21 Jun 2017 00:56:34 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' >> /etc/apt/sources.list.d/cassandra.list
# Thu, 29 Jun 2017 21:03:18 GMT
ENV CASSANDRA_VERSION=2.1.18
# Thu, 29 Jun 2017 21:04:14 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Jun 2017 21:04:16 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Thu, 29 Jun 2017 21:04:17 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 29 Jun 2017 21:04:18 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Thu, 29 Jun 2017 21:04:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:04:20 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 29 Jun 2017 21:04:21 GMT
VOLUME [/var/lib/cassandra]
# Thu, 29 Jun 2017 21:04:22 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 29 Jun 2017 21:04:23 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bacf36113fe830a77280f81a8203a228fa4bb4536f145a333709b9da0f7cf7`  
		Last Modified: Tue, 20 Jun 2017 20:37:34 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6842ab2e6fc74873b3fdee0f94ba55daab8d33d724210c33908cf0851ba7aa`  
		Last Modified: Sat, 24 Jun 2017 06:15:15 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0970d2724fb480b3365da5b7b97433cc584531bdf47f1ca6521872f28118c60`  
		Last Modified: Sat, 24 Jun 2017 06:15:15 GMT  
		Size: 1.3 MB (1304152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd1392a6ce500913c8610a67aee5a0fa60c473187630898271e9414340491b5`  
		Last Modified: Sat, 24 Jun 2017 06:15:15 GMT  
		Size: 172.3 KB (172292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43faf38e08a80fd2c9ca9d6936cc906031c54bef186e9ac81710984b86ae1a50`  
		Last Modified: Sat, 24 Jun 2017 06:15:16 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448a3a082d57197895d5911639f0986dfe53cc0b00248044cac75f78352958e2`  
		Last Modified: Sat, 24 Jun 2017 06:15:12 GMT  
		Size: 18.2 KB (18228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cea5fb8ce7a58eeee09946e472c13fe9064fccaf21433c95c7131b73eb4bac0`  
		Last Modified: Sat, 24 Jun 2017 06:15:12 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f317c5831e9ab304702f53970fed91dedd425e6a8a4a8daac31c6eb7731f79b5`  
		Last Modified: Thu, 29 Jun 2017 21:15:26 GMT  
		Size: 116.0 MB (116016705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb0dd19e91a40ea21221e439a04c5e3a9c18dd4b97f3b5cb20d3d0396d747a7`  
		Last Modified: Thu, 29 Jun 2017 21:15:05 GMT  
		Size: 4.7 KB (4670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5465994b1c89a7ed65f88796854b2e79a0b1df79cbaf21bbbe24e681372e103`  
		Last Modified: Thu, 29 Jun 2017 21:15:06 GMT  
		Size: 732.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b3116a8a1f2e337695c4a2e1841d4b118789becd10f9a4713760e8a9aedb60`  
		Last Modified: Thu, 29 Jun 2017 21:15:06 GMT  
		Size: 20.5 KB (20532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2.10`

```console
$ docker pull cassandra@sha256:e9dc2d0f82ec08ff1e5c7062c39e25c97928102f5338a2739581b3c562c27eb9
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.2.10` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.6 MB (174551082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32f9712c6725840012d238c598c0e1e5b94de587bdde869afd30ea79182c2d4d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 20:13:59 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 21 Jun 2017 00:55:44 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 21 Jun 2017 00:55:45 GMT
ENV GOSU_VERSION=1.7
# Wed, 21 Jun 2017 00:56:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 21 Jun 2017 00:56:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 00:56:28 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Wed, 21 Jun 2017 00:56:29 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 21 Jun 2017 00:56:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 21 Jun 2017 01:04:20 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Thu, 29 Jun 2017 21:04:50 GMT
ENV CASSANDRA_VERSION=2.2.10
# Thu, 29 Jun 2017 21:05:34 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Jun 2017 21:05:43 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Thu, 29 Jun 2017 21:05:44 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 29 Jun 2017 21:05:45 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Thu, 29 Jun 2017 21:05:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:05:48 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 29 Jun 2017 21:05:49 GMT
VOLUME [/var/lib/cassandra]
# Thu, 29 Jun 2017 21:05:50 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 29 Jun 2017 21:05:50 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bacf36113fe830a77280f81a8203a228fa4bb4536f145a333709b9da0f7cf7`  
		Last Modified: Tue, 20 Jun 2017 20:37:34 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6842ab2e6fc74873b3fdee0f94ba55daab8d33d724210c33908cf0851ba7aa`  
		Last Modified: Sat, 24 Jun 2017 06:15:15 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0970d2724fb480b3365da5b7b97433cc584531bdf47f1ca6521872f28118c60`  
		Last Modified: Sat, 24 Jun 2017 06:15:15 GMT  
		Size: 1.3 MB (1304152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd1392a6ce500913c8610a67aee5a0fa60c473187630898271e9414340491b5`  
		Last Modified: Sat, 24 Jun 2017 06:15:15 GMT  
		Size: 172.3 KB (172292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43faf38e08a80fd2c9ca9d6936cc906031c54bef186e9ac81710984b86ae1a50`  
		Last Modified: Sat, 24 Jun 2017 06:15:16 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448a3a082d57197895d5911639f0986dfe53cc0b00248044cac75f78352958e2`  
		Last Modified: Sat, 24 Jun 2017 06:15:12 GMT  
		Size: 18.2 KB (18228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8aa2687eed58ee2d5fe7de417834bcda9e2b95fe03d200e529e2f1cac85cb41`  
		Last Modified: Sat, 24 Jun 2017 06:16:33 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958983d7372fa568912e3059ac06cfe4df934783ca7b97ff5ccfc02a27713f6c`  
		Last Modified: Thu, 29 Jun 2017 21:17:10 GMT  
		Size: 120.4 MB (120411154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b801e8bd8d9fcde8144052af9da9e97ca5ecbd403806116297be4a7513bfe3b5`  
		Last Modified: Thu, 29 Jun 2017 21:16:50 GMT  
		Size: 4.6 KB (4638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca2eb3ac91b0c20fb21177373c87e2956bfb10db5c1e168105a670dbebd225a`  
		Last Modified: Thu, 29 Jun 2017 21:16:50 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f55a81a8df8ca86a3e134faa8e501b6e221988462f2ad0c48b8141920fec38`  
		Last Modified: Thu, 29 Jun 2017 21:16:51 GMT  
		Size: 22.3 KB (22339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2`

```console
$ docker pull cassandra@sha256:e9dc2d0f82ec08ff1e5c7062c39e25c97928102f5338a2739581b3c562c27eb9
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.6 MB (174551082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32f9712c6725840012d238c598c0e1e5b94de587bdde869afd30ea79182c2d4d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 20:13:59 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 21 Jun 2017 00:55:44 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 21 Jun 2017 00:55:45 GMT
ENV GOSU_VERSION=1.7
# Wed, 21 Jun 2017 00:56:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 21 Jun 2017 00:56:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 00:56:28 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Wed, 21 Jun 2017 00:56:29 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 21 Jun 2017 00:56:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 21 Jun 2017 01:04:20 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Thu, 29 Jun 2017 21:04:50 GMT
ENV CASSANDRA_VERSION=2.2.10
# Thu, 29 Jun 2017 21:05:34 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Jun 2017 21:05:43 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Thu, 29 Jun 2017 21:05:44 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 29 Jun 2017 21:05:45 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Thu, 29 Jun 2017 21:05:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:05:48 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 29 Jun 2017 21:05:49 GMT
VOLUME [/var/lib/cassandra]
# Thu, 29 Jun 2017 21:05:50 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 29 Jun 2017 21:05:50 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bacf36113fe830a77280f81a8203a228fa4bb4536f145a333709b9da0f7cf7`  
		Last Modified: Tue, 20 Jun 2017 20:37:34 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6842ab2e6fc74873b3fdee0f94ba55daab8d33d724210c33908cf0851ba7aa`  
		Last Modified: Sat, 24 Jun 2017 06:15:15 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0970d2724fb480b3365da5b7b97433cc584531bdf47f1ca6521872f28118c60`  
		Last Modified: Sat, 24 Jun 2017 06:15:15 GMT  
		Size: 1.3 MB (1304152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd1392a6ce500913c8610a67aee5a0fa60c473187630898271e9414340491b5`  
		Last Modified: Sat, 24 Jun 2017 06:15:15 GMT  
		Size: 172.3 KB (172292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43faf38e08a80fd2c9ca9d6936cc906031c54bef186e9ac81710984b86ae1a50`  
		Last Modified: Sat, 24 Jun 2017 06:15:16 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448a3a082d57197895d5911639f0986dfe53cc0b00248044cac75f78352958e2`  
		Last Modified: Sat, 24 Jun 2017 06:15:12 GMT  
		Size: 18.2 KB (18228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8aa2687eed58ee2d5fe7de417834bcda9e2b95fe03d200e529e2f1cac85cb41`  
		Last Modified: Sat, 24 Jun 2017 06:16:33 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958983d7372fa568912e3059ac06cfe4df934783ca7b97ff5ccfc02a27713f6c`  
		Last Modified: Thu, 29 Jun 2017 21:17:10 GMT  
		Size: 120.4 MB (120411154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b801e8bd8d9fcde8144052af9da9e97ca5ecbd403806116297be4a7513bfe3b5`  
		Last Modified: Thu, 29 Jun 2017 21:16:50 GMT  
		Size: 4.6 KB (4638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca2eb3ac91b0c20fb21177373c87e2956bfb10db5c1e168105a670dbebd225a`  
		Last Modified: Thu, 29 Jun 2017 21:16:50 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f55a81a8df8ca86a3e134faa8e501b6e221988462f2ad0c48b8141920fec38`  
		Last Modified: Thu, 29 Jun 2017 21:16:51 GMT  
		Size: 22.3 KB (22339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2`

```console
$ docker pull cassandra@sha256:e9dc2d0f82ec08ff1e5c7062c39e25c97928102f5338a2739581b3c562c27eb9
```

-	Platforms:
	-	linux; amd64

### `cassandra:2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.6 MB (174551082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32f9712c6725840012d238c598c0e1e5b94de587bdde869afd30ea79182c2d4d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 20:13:59 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 21 Jun 2017 00:55:44 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 21 Jun 2017 00:55:45 GMT
ENV GOSU_VERSION=1.7
# Wed, 21 Jun 2017 00:56:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 21 Jun 2017 00:56:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 00:56:28 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Wed, 21 Jun 2017 00:56:29 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 21 Jun 2017 00:56:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 21 Jun 2017 01:04:20 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Thu, 29 Jun 2017 21:04:50 GMT
ENV CASSANDRA_VERSION=2.2.10
# Thu, 29 Jun 2017 21:05:34 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Jun 2017 21:05:43 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Thu, 29 Jun 2017 21:05:44 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 29 Jun 2017 21:05:45 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Thu, 29 Jun 2017 21:05:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:05:48 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 29 Jun 2017 21:05:49 GMT
VOLUME [/var/lib/cassandra]
# Thu, 29 Jun 2017 21:05:50 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 29 Jun 2017 21:05:50 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bacf36113fe830a77280f81a8203a228fa4bb4536f145a333709b9da0f7cf7`  
		Last Modified: Tue, 20 Jun 2017 20:37:34 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6842ab2e6fc74873b3fdee0f94ba55daab8d33d724210c33908cf0851ba7aa`  
		Last Modified: Sat, 24 Jun 2017 06:15:15 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0970d2724fb480b3365da5b7b97433cc584531bdf47f1ca6521872f28118c60`  
		Last Modified: Sat, 24 Jun 2017 06:15:15 GMT  
		Size: 1.3 MB (1304152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd1392a6ce500913c8610a67aee5a0fa60c473187630898271e9414340491b5`  
		Last Modified: Sat, 24 Jun 2017 06:15:15 GMT  
		Size: 172.3 KB (172292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43faf38e08a80fd2c9ca9d6936cc906031c54bef186e9ac81710984b86ae1a50`  
		Last Modified: Sat, 24 Jun 2017 06:15:16 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448a3a082d57197895d5911639f0986dfe53cc0b00248044cac75f78352958e2`  
		Last Modified: Sat, 24 Jun 2017 06:15:12 GMT  
		Size: 18.2 KB (18228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8aa2687eed58ee2d5fe7de417834bcda9e2b95fe03d200e529e2f1cac85cb41`  
		Last Modified: Sat, 24 Jun 2017 06:16:33 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958983d7372fa568912e3059ac06cfe4df934783ca7b97ff5ccfc02a27713f6c`  
		Last Modified: Thu, 29 Jun 2017 21:17:10 GMT  
		Size: 120.4 MB (120411154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b801e8bd8d9fcde8144052af9da9e97ca5ecbd403806116297be4a7513bfe3b5`  
		Last Modified: Thu, 29 Jun 2017 21:16:50 GMT  
		Size: 4.6 KB (4638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca2eb3ac91b0c20fb21177373c87e2956bfb10db5c1e168105a670dbebd225a`  
		Last Modified: Thu, 29 Jun 2017 21:16:50 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f55a81a8df8ca86a3e134faa8e501b6e221988462f2ad0c48b8141920fec38`  
		Last Modified: Thu, 29 Jun 2017 21:16:51 GMT  
		Size: 22.3 KB (22339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0.14`

```console
$ docker pull cassandra@sha256:ade590c4d842ca8495ba4f6e2efee40eccf53798be6a22799442b5cf8fa53899
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.0.14` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.7 MB (160701342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e36569946dfbbefca877ea56e474ba751d5e0cb71f5f5c77e32ecf82f5dbd8d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 20:13:59 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 21 Jun 2017 00:55:44 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 21 Jun 2017 00:55:45 GMT
ENV GOSU_VERSION=1.7
# Wed, 21 Jun 2017 00:56:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 21 Jun 2017 00:56:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 00:56:28 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Wed, 21 Jun 2017 00:56:29 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 21 Jun 2017 00:56:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 21 Jun 2017 01:06:09 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' >> /etc/apt/sources.list.d/cassandra.list
# Thu, 29 Jun 2017 21:06:42 GMT
ENV CASSANDRA_VERSION=3.0.14
# Thu, 29 Jun 2017 21:07:33 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Jun 2017 21:09:32 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Thu, 29 Jun 2017 21:09:58 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 29 Jun 2017 21:09:59 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Thu, 29 Jun 2017 21:10:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:10:26 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 29 Jun 2017 21:10:27 GMT
VOLUME [/var/lib/cassandra]
# Thu, 29 Jun 2017 21:10:52 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 29 Jun 2017 21:10:53 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bacf36113fe830a77280f81a8203a228fa4bb4536f145a333709b9da0f7cf7`  
		Last Modified: Tue, 20 Jun 2017 20:37:34 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6842ab2e6fc74873b3fdee0f94ba55daab8d33d724210c33908cf0851ba7aa`  
		Last Modified: Sat, 24 Jun 2017 06:15:15 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0970d2724fb480b3365da5b7b97433cc584531bdf47f1ca6521872f28118c60`  
		Last Modified: Sat, 24 Jun 2017 06:15:15 GMT  
		Size: 1.3 MB (1304152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd1392a6ce500913c8610a67aee5a0fa60c473187630898271e9414340491b5`  
		Last Modified: Sat, 24 Jun 2017 06:15:15 GMT  
		Size: 172.3 KB (172292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43faf38e08a80fd2c9ca9d6936cc906031c54bef186e9ac81710984b86ae1a50`  
		Last Modified: Sat, 24 Jun 2017 06:15:16 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448a3a082d57197895d5911639f0986dfe53cc0b00248044cac75f78352958e2`  
		Last Modified: Sat, 24 Jun 2017 06:15:12 GMT  
		Size: 18.2 KB (18228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c95365bda620e8d615aa49fd75aba06c514afbce2982aa8a93689d7253b0ca`  
		Last Modified: Sat, 24 Jun 2017 06:18:23 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37df1679d9c5b888905379106bccf877e8ec7e40af2392f6b737bdcd9bb8fce0`  
		Last Modified: Thu, 29 Jun 2017 21:19:45 GMT  
		Size: 106.6 MB (106558372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcf4e6abaa393e55bcc63ef6610ce7d70a8e2141fd1627db4fd05b9e85066d7f`  
		Last Modified: Thu, 29 Jun 2017 21:19:24 GMT  
		Size: 4.7 KB (4707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b4ca0d6304215e152420df9e885a0e889dd2afc7b068d82cecc22061fa263d`  
		Last Modified: Thu, 29 Jun 2017 21:19:23 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d26b08eb5fb30c80b6109bd51f0b75e2854873ff03e68b6ac02eb0a08aaaab`  
		Last Modified: Thu, 29 Jun 2017 21:19:24 GMT  
		Size: 25.3 KB (25313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0`

```console
$ docker pull cassandra@sha256:ade590c4d842ca8495ba4f6e2efee40eccf53798be6a22799442b5cf8fa53899
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.7 MB (160701342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e36569946dfbbefca877ea56e474ba751d5e0cb71f5f5c77e32ecf82f5dbd8d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 20:13:59 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 21 Jun 2017 00:55:44 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 21 Jun 2017 00:55:45 GMT
ENV GOSU_VERSION=1.7
# Wed, 21 Jun 2017 00:56:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 21 Jun 2017 00:56:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 00:56:28 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Wed, 21 Jun 2017 00:56:29 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 21 Jun 2017 00:56:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 21 Jun 2017 01:06:09 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' >> /etc/apt/sources.list.d/cassandra.list
# Thu, 29 Jun 2017 21:06:42 GMT
ENV CASSANDRA_VERSION=3.0.14
# Thu, 29 Jun 2017 21:07:33 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Jun 2017 21:09:32 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Thu, 29 Jun 2017 21:09:58 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 29 Jun 2017 21:09:59 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Thu, 29 Jun 2017 21:10:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:10:26 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 29 Jun 2017 21:10:27 GMT
VOLUME [/var/lib/cassandra]
# Thu, 29 Jun 2017 21:10:52 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 29 Jun 2017 21:10:53 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bacf36113fe830a77280f81a8203a228fa4bb4536f145a333709b9da0f7cf7`  
		Last Modified: Tue, 20 Jun 2017 20:37:34 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6842ab2e6fc74873b3fdee0f94ba55daab8d33d724210c33908cf0851ba7aa`  
		Last Modified: Sat, 24 Jun 2017 06:15:15 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0970d2724fb480b3365da5b7b97433cc584531bdf47f1ca6521872f28118c60`  
		Last Modified: Sat, 24 Jun 2017 06:15:15 GMT  
		Size: 1.3 MB (1304152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd1392a6ce500913c8610a67aee5a0fa60c473187630898271e9414340491b5`  
		Last Modified: Sat, 24 Jun 2017 06:15:15 GMT  
		Size: 172.3 KB (172292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43faf38e08a80fd2c9ca9d6936cc906031c54bef186e9ac81710984b86ae1a50`  
		Last Modified: Sat, 24 Jun 2017 06:15:16 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448a3a082d57197895d5911639f0986dfe53cc0b00248044cac75f78352958e2`  
		Last Modified: Sat, 24 Jun 2017 06:15:12 GMT  
		Size: 18.2 KB (18228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c95365bda620e8d615aa49fd75aba06c514afbce2982aa8a93689d7253b0ca`  
		Last Modified: Sat, 24 Jun 2017 06:18:23 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37df1679d9c5b888905379106bccf877e8ec7e40af2392f6b737bdcd9bb8fce0`  
		Last Modified: Thu, 29 Jun 2017 21:19:45 GMT  
		Size: 106.6 MB (106558372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcf4e6abaa393e55bcc63ef6610ce7d70a8e2141fd1627db4fd05b9e85066d7f`  
		Last Modified: Thu, 29 Jun 2017 21:19:24 GMT  
		Size: 4.7 KB (4707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b4ca0d6304215e152420df9e885a0e889dd2afc7b068d82cecc22061fa263d`  
		Last Modified: Thu, 29 Jun 2017 21:19:23 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d26b08eb5fb30c80b6109bd51f0b75e2854873ff03e68b6ac02eb0a08aaaab`  
		Last Modified: Thu, 29 Jun 2017 21:19:24 GMT  
		Size: 25.3 KB (25313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.11.0`

```console
$ docker pull cassandra@sha256:b25a30a85b5869257f560fb05296886136b809288f53f32ebefde8967e6e6ca5
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.11.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165248790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c82d9de5d478077fe5a26f6cd64463bd056ab38a47704bb6a7aa7d0ee8a28225`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 20:13:59 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 21 Jun 2017 00:55:44 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 21 Jun 2017 00:55:45 GMT
ENV GOSU_VERSION=1.7
# Wed, 21 Jun 2017 00:56:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 21 Jun 2017 00:56:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 00:56:28 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Wed, 21 Jun 2017 00:56:29 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 21 Jun 2017 00:56:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 29 Jun 2017 21:11:45 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' >> /etc/apt/sources.list.d/cassandra.list
# Thu, 29 Jun 2017 21:11:46 GMT
ENV CASSANDRA_VERSION=3.11.0
# Thu, 29 Jun 2017 21:13:02 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Jun 2017 21:13:14 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Thu, 29 Jun 2017 21:13:15 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 29 Jun 2017 21:13:40 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Thu, 29 Jun 2017 21:13:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:13:43 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 29 Jun 2017 21:13:44 GMT
VOLUME [/var/lib/cassandra]
# Thu, 29 Jun 2017 21:14:10 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 29 Jun 2017 21:14:11 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bacf36113fe830a77280f81a8203a228fa4bb4536f145a333709b9da0f7cf7`  
		Last Modified: Tue, 20 Jun 2017 20:37:34 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6842ab2e6fc74873b3fdee0f94ba55daab8d33d724210c33908cf0851ba7aa`  
		Last Modified: Sat, 24 Jun 2017 06:15:15 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0970d2724fb480b3365da5b7b97433cc584531bdf47f1ca6521872f28118c60`  
		Last Modified: Sat, 24 Jun 2017 06:15:15 GMT  
		Size: 1.3 MB (1304152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd1392a6ce500913c8610a67aee5a0fa60c473187630898271e9414340491b5`  
		Last Modified: Sat, 24 Jun 2017 06:15:15 GMT  
		Size: 172.3 KB (172292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43faf38e08a80fd2c9ca9d6936cc906031c54bef186e9ac81710984b86ae1a50`  
		Last Modified: Sat, 24 Jun 2017 06:15:16 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448a3a082d57197895d5911639f0986dfe53cc0b00248044cac75f78352958e2`  
		Last Modified: Sat, 24 Jun 2017 06:15:12 GMT  
		Size: 18.2 KB (18228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7ffe4dc3db58910b5877d0623ffd6a2fc29d47ba63db6e739a44157dafbb04`  
		Last Modified: Thu, 29 Jun 2017 21:21:31 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caac33302fe634317b8762e6e02e12ec624f9fd122b1b330ac1b849a8363fa08`  
		Last Modified: Thu, 29 Jun 2017 21:21:52 GMT  
		Size: 111.1 MB (111101472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba01779bed983115f705c70b74d5165abfc56ae81ebdaef60b037350ef5cb95`  
		Last Modified: Thu, 29 Jun 2017 21:21:31 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aa363d655b159a668047db0fe4c09ea51bba1df23aea46059efd873dc1ae416`  
		Last Modified: Thu, 29 Jun 2017 21:21:31 GMT  
		Size: 732.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02a5c66a8b99ac43e9422d332673034c58442cd8136a2e0c82a9017d971a30a5`  
		Last Modified: Thu, 29 Jun 2017 21:21:31 GMT  
		Size: 30.0 KB (29971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.11`

```console
$ docker pull cassandra@sha256:b25a30a85b5869257f560fb05296886136b809288f53f32ebefde8967e6e6ca5
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.11` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165248790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c82d9de5d478077fe5a26f6cd64463bd056ab38a47704bb6a7aa7d0ee8a28225`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 20:13:59 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 21 Jun 2017 00:55:44 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 21 Jun 2017 00:55:45 GMT
ENV GOSU_VERSION=1.7
# Wed, 21 Jun 2017 00:56:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 21 Jun 2017 00:56:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 00:56:28 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Wed, 21 Jun 2017 00:56:29 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 21 Jun 2017 00:56:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 29 Jun 2017 21:11:45 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' >> /etc/apt/sources.list.d/cassandra.list
# Thu, 29 Jun 2017 21:11:46 GMT
ENV CASSANDRA_VERSION=3.11.0
# Thu, 29 Jun 2017 21:13:02 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Jun 2017 21:13:14 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Thu, 29 Jun 2017 21:13:15 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 29 Jun 2017 21:13:40 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Thu, 29 Jun 2017 21:13:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:13:43 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 29 Jun 2017 21:13:44 GMT
VOLUME [/var/lib/cassandra]
# Thu, 29 Jun 2017 21:14:10 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 29 Jun 2017 21:14:11 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bacf36113fe830a77280f81a8203a228fa4bb4536f145a333709b9da0f7cf7`  
		Last Modified: Tue, 20 Jun 2017 20:37:34 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6842ab2e6fc74873b3fdee0f94ba55daab8d33d724210c33908cf0851ba7aa`  
		Last Modified: Sat, 24 Jun 2017 06:15:15 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0970d2724fb480b3365da5b7b97433cc584531bdf47f1ca6521872f28118c60`  
		Last Modified: Sat, 24 Jun 2017 06:15:15 GMT  
		Size: 1.3 MB (1304152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd1392a6ce500913c8610a67aee5a0fa60c473187630898271e9414340491b5`  
		Last Modified: Sat, 24 Jun 2017 06:15:15 GMT  
		Size: 172.3 KB (172292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43faf38e08a80fd2c9ca9d6936cc906031c54bef186e9ac81710984b86ae1a50`  
		Last Modified: Sat, 24 Jun 2017 06:15:16 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448a3a082d57197895d5911639f0986dfe53cc0b00248044cac75f78352958e2`  
		Last Modified: Sat, 24 Jun 2017 06:15:12 GMT  
		Size: 18.2 KB (18228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7ffe4dc3db58910b5877d0623ffd6a2fc29d47ba63db6e739a44157dafbb04`  
		Last Modified: Thu, 29 Jun 2017 21:21:31 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caac33302fe634317b8762e6e02e12ec624f9fd122b1b330ac1b849a8363fa08`  
		Last Modified: Thu, 29 Jun 2017 21:21:52 GMT  
		Size: 111.1 MB (111101472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba01779bed983115f705c70b74d5165abfc56ae81ebdaef60b037350ef5cb95`  
		Last Modified: Thu, 29 Jun 2017 21:21:31 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aa363d655b159a668047db0fe4c09ea51bba1df23aea46059efd873dc1ae416`  
		Last Modified: Thu, 29 Jun 2017 21:21:31 GMT  
		Size: 732.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02a5c66a8b99ac43e9422d332673034c58442cd8136a2e0c82a9017d971a30a5`  
		Last Modified: Thu, 29 Jun 2017 21:21:31 GMT  
		Size: 30.0 KB (29971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3`

```console
$ docker pull cassandra@sha256:b25a30a85b5869257f560fb05296886136b809288f53f32ebefde8967e6e6ca5
```

-	Platforms:
	-	linux; amd64

### `cassandra:3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165248790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c82d9de5d478077fe5a26f6cd64463bd056ab38a47704bb6a7aa7d0ee8a28225`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 20:13:59 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 21 Jun 2017 00:55:44 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 21 Jun 2017 00:55:45 GMT
ENV GOSU_VERSION=1.7
# Wed, 21 Jun 2017 00:56:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 21 Jun 2017 00:56:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 00:56:28 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Wed, 21 Jun 2017 00:56:29 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 21 Jun 2017 00:56:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 29 Jun 2017 21:11:45 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' >> /etc/apt/sources.list.d/cassandra.list
# Thu, 29 Jun 2017 21:11:46 GMT
ENV CASSANDRA_VERSION=3.11.0
# Thu, 29 Jun 2017 21:13:02 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Jun 2017 21:13:14 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Thu, 29 Jun 2017 21:13:15 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 29 Jun 2017 21:13:40 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Thu, 29 Jun 2017 21:13:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:13:43 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 29 Jun 2017 21:13:44 GMT
VOLUME [/var/lib/cassandra]
# Thu, 29 Jun 2017 21:14:10 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 29 Jun 2017 21:14:11 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bacf36113fe830a77280f81a8203a228fa4bb4536f145a333709b9da0f7cf7`  
		Last Modified: Tue, 20 Jun 2017 20:37:34 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6842ab2e6fc74873b3fdee0f94ba55daab8d33d724210c33908cf0851ba7aa`  
		Last Modified: Sat, 24 Jun 2017 06:15:15 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0970d2724fb480b3365da5b7b97433cc584531bdf47f1ca6521872f28118c60`  
		Last Modified: Sat, 24 Jun 2017 06:15:15 GMT  
		Size: 1.3 MB (1304152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd1392a6ce500913c8610a67aee5a0fa60c473187630898271e9414340491b5`  
		Last Modified: Sat, 24 Jun 2017 06:15:15 GMT  
		Size: 172.3 KB (172292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43faf38e08a80fd2c9ca9d6936cc906031c54bef186e9ac81710984b86ae1a50`  
		Last Modified: Sat, 24 Jun 2017 06:15:16 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448a3a082d57197895d5911639f0986dfe53cc0b00248044cac75f78352958e2`  
		Last Modified: Sat, 24 Jun 2017 06:15:12 GMT  
		Size: 18.2 KB (18228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7ffe4dc3db58910b5877d0623ffd6a2fc29d47ba63db6e739a44157dafbb04`  
		Last Modified: Thu, 29 Jun 2017 21:21:31 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caac33302fe634317b8762e6e02e12ec624f9fd122b1b330ac1b849a8363fa08`  
		Last Modified: Thu, 29 Jun 2017 21:21:52 GMT  
		Size: 111.1 MB (111101472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba01779bed983115f705c70b74d5165abfc56ae81ebdaef60b037350ef5cb95`  
		Last Modified: Thu, 29 Jun 2017 21:21:31 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aa363d655b159a668047db0fe4c09ea51bba1df23aea46059efd873dc1ae416`  
		Last Modified: Thu, 29 Jun 2017 21:21:31 GMT  
		Size: 732.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02a5c66a8b99ac43e9422d332673034c58442cd8136a2e0c82a9017d971a30a5`  
		Last Modified: Thu, 29 Jun 2017 21:21:31 GMT  
		Size: 30.0 KB (29971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:latest`

```console
$ docker pull cassandra@sha256:b25a30a85b5869257f560fb05296886136b809288f53f32ebefde8967e6e6ca5
```

-	Platforms:
	-	linux; amd64

### `cassandra:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165248790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c82d9de5d478077fe5a26f6cd64463bd056ab38a47704bb6a7aa7d0ee8a28225`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 20:13:59 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Wed, 21 Jun 2017 00:55:44 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Wed, 21 Jun 2017 00:55:45 GMT
ENV GOSU_VERSION=1.7
# Wed, 21 Jun 2017 00:56:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 21 Jun 2017 00:56:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 00:56:28 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Wed, 21 Jun 2017 00:56:29 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 21 Jun 2017 00:56:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 29 Jun 2017 21:11:45 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' >> /etc/apt/sources.list.d/cassandra.list
# Thu, 29 Jun 2017 21:11:46 GMT
ENV CASSANDRA_VERSION=3.11.0
# Thu, 29 Jun 2017 21:13:02 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 29 Jun 2017 21:13:14 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Thu, 29 Jun 2017 21:13:15 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 29 Jun 2017 21:13:40 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Thu, 29 Jun 2017 21:13:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Jun 2017 21:13:43 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 29 Jun 2017 21:13:44 GMT
VOLUME [/var/lib/cassandra]
# Thu, 29 Jun 2017 21:14:10 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 29 Jun 2017 21:14:11 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bacf36113fe830a77280f81a8203a228fa4bb4536f145a333709b9da0f7cf7`  
		Last Modified: Tue, 20 Jun 2017 20:37:34 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6842ab2e6fc74873b3fdee0f94ba55daab8d33d724210c33908cf0851ba7aa`  
		Last Modified: Sat, 24 Jun 2017 06:15:15 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0970d2724fb480b3365da5b7b97433cc584531bdf47f1ca6521872f28118c60`  
		Last Modified: Sat, 24 Jun 2017 06:15:15 GMT  
		Size: 1.3 MB (1304152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd1392a6ce500913c8610a67aee5a0fa60c473187630898271e9414340491b5`  
		Last Modified: Sat, 24 Jun 2017 06:15:15 GMT  
		Size: 172.3 KB (172292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43faf38e08a80fd2c9ca9d6936cc906031c54bef186e9ac81710984b86ae1a50`  
		Last Modified: Sat, 24 Jun 2017 06:15:16 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448a3a082d57197895d5911639f0986dfe53cc0b00248044cac75f78352958e2`  
		Last Modified: Sat, 24 Jun 2017 06:15:12 GMT  
		Size: 18.2 KB (18228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7ffe4dc3db58910b5877d0623ffd6a2fc29d47ba63db6e739a44157dafbb04`  
		Last Modified: Thu, 29 Jun 2017 21:21:31 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caac33302fe634317b8762e6e02e12ec624f9fd122b1b330ac1b849a8363fa08`  
		Last Modified: Thu, 29 Jun 2017 21:21:52 GMT  
		Size: 111.1 MB (111101472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba01779bed983115f705c70b74d5165abfc56ae81ebdaef60b037350ef5cb95`  
		Last Modified: Thu, 29 Jun 2017 21:21:31 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aa363d655b159a668047db0fe4c09ea51bba1df23aea46059efd873dc1ae416`  
		Last Modified: Thu, 29 Jun 2017 21:21:31 GMT  
		Size: 732.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02a5c66a8b99ac43e9422d332673034c58442cd8136a2e0c82a9017d971a30a5`  
		Last Modified: Thu, 29 Jun 2017 21:21:31 GMT  
		Size: 30.0 KB (29971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
