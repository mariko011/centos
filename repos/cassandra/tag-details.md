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
$ docker pull cassandra@sha256:f4c73bca62800e578f12008b02120cb3c4d0165979acb58f1c155ca30547a99a
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.1.18` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.1 MB (170142850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e7b50baf846a1572e6f7f3e275dfa66a9ec86de7754cee3b98a257af92c7614`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 16:51:28 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 25 Jul 2017 00:21:45 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 25 Jul 2017 00:21:45 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Jul 2017 00:22:12 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 25 Jul 2017 00:22:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 00:22:28 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Tue, 25 Jul 2017 00:22:28 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 25 Jul 2017 00:22:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 25 Jul 2017 00:22:34 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 25 Jul 2017 00:22:34 GMT
ENV CASSANDRA_VERSION=2.1.18
# Tue, 25 Jul 2017 00:23:39 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 00:23:40 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 25 Jul 2017 00:23:41 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 25 Jul 2017 00:23:41 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 25 Jul 2017 00:23:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Jul 2017 00:23:42 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 25 Jul 2017 00:23:42 GMT
VOLUME [/var/lib/cassandra]
# Tue, 25 Jul 2017 00:23:42 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 25 Jul 2017 00:23:42 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d839585b9c7f4b7b265fa2396f6966ea7274dbf33ca9f21129e1b7ad7a625f1`  
		Last Modified: Mon, 24 Jul 2017 16:55:41 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87bb16b5ac4e0b0810327a38e0d628ac682ad4d21a44dae279c62153104686d`  
		Last Modified: Tue, 25 Jul 2017 00:26:53 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efe12bc4a3a0cbe1a77061cf4903a5c5933287328acebdd620bd2a7f2aafebd`  
		Last Modified: Tue, 25 Jul 2017 00:26:53 GMT  
		Size: 1.3 MB (1302800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e70f89f15dec1b784a2fd53b0c0eb8eda3151599edbbfc4cc5e92c666325190`  
		Last Modified: Tue, 25 Jul 2017 00:26:53 GMT  
		Size: 172.3 KB (172333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:018f519cb9b0d0d23bf55a034660f73098911b192110a615005e4ef5f35460bd`  
		Last Modified: Tue, 25 Jul 2017 00:26:52 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5014cb189120c0f4ab096f29e2d5bf18d46a6287b7b7682b8bbe21718d5657`  
		Last Modified: Tue, 25 Jul 2017 00:26:50 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2829bb58d24df87c0a0d7fa5b0d9a4673da69bc741fab11a09bb0cb99a4a47dc`  
		Last Modified: Tue, 25 Jul 2017 00:26:51 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03c529924832616ea1a2397d3f0251216135a84d22d593dbe7ce8e9fa0a3019`  
		Last Modified: Tue, 25 Jul 2017 00:27:02 GMT  
		Size: 116.0 MB (116015177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6864ff219c3e5384bf76ed868997c25909735b326a8d02bac76050fe6f17fd18`  
		Last Modified: Tue, 25 Jul 2017 00:26:50 GMT  
		Size: 4.7 KB (4670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd43fa46f4ee37b6a37fbce8ceb838af54756a5c5b36240b9fdcee9169c43cf`  
		Last Modified: Tue, 25 Jul 2017 00:26:50 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6875a33ec359a910a7cbc378315442806f5f4e7bc141a016b55c363efd591862`  
		Last Modified: Tue, 25 Jul 2017 00:26:51 GMT  
		Size: 20.5 KB (20533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.1`

```console
$ docker pull cassandra@sha256:f4c73bca62800e578f12008b02120cb3c4d0165979acb58f1c155ca30547a99a
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.1 MB (170142850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e7b50baf846a1572e6f7f3e275dfa66a9ec86de7754cee3b98a257af92c7614`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 16:51:28 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 25 Jul 2017 00:21:45 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 25 Jul 2017 00:21:45 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Jul 2017 00:22:12 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 25 Jul 2017 00:22:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 00:22:28 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Tue, 25 Jul 2017 00:22:28 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 25 Jul 2017 00:22:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 25 Jul 2017 00:22:34 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 25 Jul 2017 00:22:34 GMT
ENV CASSANDRA_VERSION=2.1.18
# Tue, 25 Jul 2017 00:23:39 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 00:23:40 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 25 Jul 2017 00:23:41 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 25 Jul 2017 00:23:41 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 25 Jul 2017 00:23:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Jul 2017 00:23:42 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 25 Jul 2017 00:23:42 GMT
VOLUME [/var/lib/cassandra]
# Tue, 25 Jul 2017 00:23:42 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 25 Jul 2017 00:23:42 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d839585b9c7f4b7b265fa2396f6966ea7274dbf33ca9f21129e1b7ad7a625f1`  
		Last Modified: Mon, 24 Jul 2017 16:55:41 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87bb16b5ac4e0b0810327a38e0d628ac682ad4d21a44dae279c62153104686d`  
		Last Modified: Tue, 25 Jul 2017 00:26:53 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efe12bc4a3a0cbe1a77061cf4903a5c5933287328acebdd620bd2a7f2aafebd`  
		Last Modified: Tue, 25 Jul 2017 00:26:53 GMT  
		Size: 1.3 MB (1302800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e70f89f15dec1b784a2fd53b0c0eb8eda3151599edbbfc4cc5e92c666325190`  
		Last Modified: Tue, 25 Jul 2017 00:26:53 GMT  
		Size: 172.3 KB (172333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:018f519cb9b0d0d23bf55a034660f73098911b192110a615005e4ef5f35460bd`  
		Last Modified: Tue, 25 Jul 2017 00:26:52 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5014cb189120c0f4ab096f29e2d5bf18d46a6287b7b7682b8bbe21718d5657`  
		Last Modified: Tue, 25 Jul 2017 00:26:50 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2829bb58d24df87c0a0d7fa5b0d9a4673da69bc741fab11a09bb0cb99a4a47dc`  
		Last Modified: Tue, 25 Jul 2017 00:26:51 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03c529924832616ea1a2397d3f0251216135a84d22d593dbe7ce8e9fa0a3019`  
		Last Modified: Tue, 25 Jul 2017 00:27:02 GMT  
		Size: 116.0 MB (116015177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6864ff219c3e5384bf76ed868997c25909735b326a8d02bac76050fe6f17fd18`  
		Last Modified: Tue, 25 Jul 2017 00:26:50 GMT  
		Size: 4.7 KB (4670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd43fa46f4ee37b6a37fbce8ceb838af54756a5c5b36240b9fdcee9169c43cf`  
		Last Modified: Tue, 25 Jul 2017 00:26:50 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6875a33ec359a910a7cbc378315442806f5f4e7bc141a016b55c363efd591862`  
		Last Modified: Tue, 25 Jul 2017 00:26:51 GMT  
		Size: 20.5 KB (20533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2.10`

```console
$ docker pull cassandra@sha256:54d2dec8692e8e4e6b7e2aff4daf4662e12dbdb91812a4e4d5cc7631b7b01de2
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.2.10` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.5 MB (174538961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca257e5d7c68cb6d99c1472e64e100670e4364a23f8a691d167deaedecc3b117`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 16:51:28 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 25 Jul 2017 00:21:45 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 25 Jul 2017 00:21:45 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Jul 2017 00:22:12 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 25 Jul 2017 00:22:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 00:22:28 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Tue, 25 Jul 2017 00:22:28 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 25 Jul 2017 00:22:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 25 Jul 2017 00:23:45 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 25 Jul 2017 00:23:45 GMT
ENV CASSANDRA_VERSION=2.2.10
# Tue, 25 Jul 2017 00:24:35 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 00:24:36 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 25 Jul 2017 00:24:36 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 25 Jul 2017 00:24:37 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 25 Jul 2017 00:24:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Jul 2017 00:24:38 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 25 Jul 2017 00:24:38 GMT
VOLUME [/var/lib/cassandra]
# Tue, 25 Jul 2017 00:24:38 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 25 Jul 2017 00:24:38 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d839585b9c7f4b7b265fa2396f6966ea7274dbf33ca9f21129e1b7ad7a625f1`  
		Last Modified: Mon, 24 Jul 2017 16:55:41 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87bb16b5ac4e0b0810327a38e0d628ac682ad4d21a44dae279c62153104686d`  
		Last Modified: Tue, 25 Jul 2017 00:26:53 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efe12bc4a3a0cbe1a77061cf4903a5c5933287328acebdd620bd2a7f2aafebd`  
		Last Modified: Tue, 25 Jul 2017 00:26:53 GMT  
		Size: 1.3 MB (1302800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e70f89f15dec1b784a2fd53b0c0eb8eda3151599edbbfc4cc5e92c666325190`  
		Last Modified: Tue, 25 Jul 2017 00:26:53 GMT  
		Size: 172.3 KB (172333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:018f519cb9b0d0d23bf55a034660f73098911b192110a615005e4ef5f35460bd`  
		Last Modified: Tue, 25 Jul 2017 00:26:52 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5014cb189120c0f4ab096f29e2d5bf18d46a6287b7b7682b8bbe21718d5657`  
		Last Modified: Tue, 25 Jul 2017 00:26:50 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea0dfc232b74b5e6d7698e16eeac5a8c3190c1f3ba459dc018ce99e0fe6f68eb`  
		Last Modified: Tue, 25 Jul 2017 00:27:17 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84243c87c69adc57a24839e2fc46a27c08a771daf913c1af0c7a677bba309be1`  
		Last Modified: Tue, 25 Jul 2017 00:27:34 GMT  
		Size: 120.4 MB (120409509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb561c11dbaded0df9390d7025da840da4bf240120fd0a65c6927bef8d50b26`  
		Last Modified: Tue, 25 Jul 2017 00:27:17 GMT  
		Size: 4.6 KB (4638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a092cb3d0cee320174b6bf5010818f3f0f815b8459b2cec384857e5381831de4`  
		Last Modified: Tue, 25 Jul 2017 00:27:17 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85bd7c0bc76dc9bae4f45686176f5069a504c4433a9db87cc5526828afc4f3ab`  
		Last Modified: Tue, 25 Jul 2017 00:27:17 GMT  
		Size: 22.3 KB (22345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2`

```console
$ docker pull cassandra@sha256:54d2dec8692e8e4e6b7e2aff4daf4662e12dbdb91812a4e4d5cc7631b7b01de2
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.5 MB (174538961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca257e5d7c68cb6d99c1472e64e100670e4364a23f8a691d167deaedecc3b117`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 16:51:28 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 25 Jul 2017 00:21:45 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 25 Jul 2017 00:21:45 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Jul 2017 00:22:12 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 25 Jul 2017 00:22:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 00:22:28 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Tue, 25 Jul 2017 00:22:28 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 25 Jul 2017 00:22:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 25 Jul 2017 00:23:45 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 25 Jul 2017 00:23:45 GMT
ENV CASSANDRA_VERSION=2.2.10
# Tue, 25 Jul 2017 00:24:35 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 00:24:36 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 25 Jul 2017 00:24:36 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 25 Jul 2017 00:24:37 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 25 Jul 2017 00:24:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Jul 2017 00:24:38 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 25 Jul 2017 00:24:38 GMT
VOLUME [/var/lib/cassandra]
# Tue, 25 Jul 2017 00:24:38 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 25 Jul 2017 00:24:38 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d839585b9c7f4b7b265fa2396f6966ea7274dbf33ca9f21129e1b7ad7a625f1`  
		Last Modified: Mon, 24 Jul 2017 16:55:41 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87bb16b5ac4e0b0810327a38e0d628ac682ad4d21a44dae279c62153104686d`  
		Last Modified: Tue, 25 Jul 2017 00:26:53 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efe12bc4a3a0cbe1a77061cf4903a5c5933287328acebdd620bd2a7f2aafebd`  
		Last Modified: Tue, 25 Jul 2017 00:26:53 GMT  
		Size: 1.3 MB (1302800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e70f89f15dec1b784a2fd53b0c0eb8eda3151599edbbfc4cc5e92c666325190`  
		Last Modified: Tue, 25 Jul 2017 00:26:53 GMT  
		Size: 172.3 KB (172333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:018f519cb9b0d0d23bf55a034660f73098911b192110a615005e4ef5f35460bd`  
		Last Modified: Tue, 25 Jul 2017 00:26:52 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5014cb189120c0f4ab096f29e2d5bf18d46a6287b7b7682b8bbe21718d5657`  
		Last Modified: Tue, 25 Jul 2017 00:26:50 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea0dfc232b74b5e6d7698e16eeac5a8c3190c1f3ba459dc018ce99e0fe6f68eb`  
		Last Modified: Tue, 25 Jul 2017 00:27:17 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84243c87c69adc57a24839e2fc46a27c08a771daf913c1af0c7a677bba309be1`  
		Last Modified: Tue, 25 Jul 2017 00:27:34 GMT  
		Size: 120.4 MB (120409509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb561c11dbaded0df9390d7025da840da4bf240120fd0a65c6927bef8d50b26`  
		Last Modified: Tue, 25 Jul 2017 00:27:17 GMT  
		Size: 4.6 KB (4638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a092cb3d0cee320174b6bf5010818f3f0f815b8459b2cec384857e5381831de4`  
		Last Modified: Tue, 25 Jul 2017 00:27:17 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85bd7c0bc76dc9bae4f45686176f5069a504c4433a9db87cc5526828afc4f3ab`  
		Last Modified: Tue, 25 Jul 2017 00:27:17 GMT  
		Size: 22.3 KB (22345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2`

```console
$ docker pull cassandra@sha256:54d2dec8692e8e4e6b7e2aff4daf4662e12dbdb91812a4e4d5cc7631b7b01de2
```

-	Platforms:
	-	linux; amd64

### `cassandra:2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.5 MB (174538961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca257e5d7c68cb6d99c1472e64e100670e4364a23f8a691d167deaedecc3b117`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 16:51:28 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 25 Jul 2017 00:21:45 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 25 Jul 2017 00:21:45 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Jul 2017 00:22:12 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 25 Jul 2017 00:22:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 00:22:28 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Tue, 25 Jul 2017 00:22:28 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 25 Jul 2017 00:22:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 25 Jul 2017 00:23:45 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 25 Jul 2017 00:23:45 GMT
ENV CASSANDRA_VERSION=2.2.10
# Tue, 25 Jul 2017 00:24:35 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 00:24:36 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 25 Jul 2017 00:24:36 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 25 Jul 2017 00:24:37 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 25 Jul 2017 00:24:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Jul 2017 00:24:38 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 25 Jul 2017 00:24:38 GMT
VOLUME [/var/lib/cassandra]
# Tue, 25 Jul 2017 00:24:38 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 25 Jul 2017 00:24:38 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d839585b9c7f4b7b265fa2396f6966ea7274dbf33ca9f21129e1b7ad7a625f1`  
		Last Modified: Mon, 24 Jul 2017 16:55:41 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87bb16b5ac4e0b0810327a38e0d628ac682ad4d21a44dae279c62153104686d`  
		Last Modified: Tue, 25 Jul 2017 00:26:53 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efe12bc4a3a0cbe1a77061cf4903a5c5933287328acebdd620bd2a7f2aafebd`  
		Last Modified: Tue, 25 Jul 2017 00:26:53 GMT  
		Size: 1.3 MB (1302800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e70f89f15dec1b784a2fd53b0c0eb8eda3151599edbbfc4cc5e92c666325190`  
		Last Modified: Tue, 25 Jul 2017 00:26:53 GMT  
		Size: 172.3 KB (172333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:018f519cb9b0d0d23bf55a034660f73098911b192110a615005e4ef5f35460bd`  
		Last Modified: Tue, 25 Jul 2017 00:26:52 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5014cb189120c0f4ab096f29e2d5bf18d46a6287b7b7682b8bbe21718d5657`  
		Last Modified: Tue, 25 Jul 2017 00:26:50 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea0dfc232b74b5e6d7698e16eeac5a8c3190c1f3ba459dc018ce99e0fe6f68eb`  
		Last Modified: Tue, 25 Jul 2017 00:27:17 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84243c87c69adc57a24839e2fc46a27c08a771daf913c1af0c7a677bba309be1`  
		Last Modified: Tue, 25 Jul 2017 00:27:34 GMT  
		Size: 120.4 MB (120409509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb561c11dbaded0df9390d7025da840da4bf240120fd0a65c6927bef8d50b26`  
		Last Modified: Tue, 25 Jul 2017 00:27:17 GMT  
		Size: 4.6 KB (4638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a092cb3d0cee320174b6bf5010818f3f0f815b8459b2cec384857e5381831de4`  
		Last Modified: Tue, 25 Jul 2017 00:27:17 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85bd7c0bc76dc9bae4f45686176f5069a504c4433a9db87cc5526828afc4f3ab`  
		Last Modified: Tue, 25 Jul 2017 00:27:17 GMT  
		Size: 22.3 KB (22345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0.14`

```console
$ docker pull cassandra@sha256:a0f46c193fe4a7df96e9af49dcb60c8a3c8526096748382a4cb828f13537b868
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.0.14` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.7 MB (160689758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bae523739546e7ff00caf50bc6897770cd41411f79d7fd70399dbbe739877c0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 16:51:28 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 25 Jul 2017 00:21:45 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 25 Jul 2017 00:21:45 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Jul 2017 00:22:12 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 25 Jul 2017 00:22:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 00:22:28 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Tue, 25 Jul 2017 00:22:28 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 25 Jul 2017 00:22:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 25 Jul 2017 00:24:42 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 25 Jul 2017 00:24:42 GMT
ENV CASSANDRA_VERSION=3.0.14
# Tue, 25 Jul 2017 00:25:37 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 00:25:38 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 25 Jul 2017 00:25:39 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 25 Jul 2017 00:25:39 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 25 Jul 2017 00:25:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Jul 2017 00:25:40 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 25 Jul 2017 00:25:40 GMT
VOLUME [/var/lib/cassandra]
# Tue, 25 Jul 2017 00:25:40 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 25 Jul 2017 00:25:40 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d839585b9c7f4b7b265fa2396f6966ea7274dbf33ca9f21129e1b7ad7a625f1`  
		Last Modified: Mon, 24 Jul 2017 16:55:41 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87bb16b5ac4e0b0810327a38e0d628ac682ad4d21a44dae279c62153104686d`  
		Last Modified: Tue, 25 Jul 2017 00:26:53 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efe12bc4a3a0cbe1a77061cf4903a5c5933287328acebdd620bd2a7f2aafebd`  
		Last Modified: Tue, 25 Jul 2017 00:26:53 GMT  
		Size: 1.3 MB (1302800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e70f89f15dec1b784a2fd53b0c0eb8eda3151599edbbfc4cc5e92c666325190`  
		Last Modified: Tue, 25 Jul 2017 00:26:53 GMT  
		Size: 172.3 KB (172333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:018f519cb9b0d0d23bf55a034660f73098911b192110a615005e4ef5f35460bd`  
		Last Modified: Tue, 25 Jul 2017 00:26:52 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5014cb189120c0f4ab096f29e2d5bf18d46a6287b7b7682b8bbe21718d5657`  
		Last Modified: Tue, 25 Jul 2017 00:26:50 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:505ff471c720f63ba5de0050f7d4a6cac4c58afd9449082bee652bf236426428`  
		Last Modified: Tue, 25 Jul 2017 00:27:54 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09a254bd42af5d5ae5cf3cc6ceb64ab0f08dd81e33559dc99eb99ab73d038efa`  
		Last Modified: Tue, 25 Jul 2017 00:28:07 GMT  
		Size: 106.6 MB (106557272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81da9868f117ab35f39f8d8b028d1c8cb3b405d1ab39ea5ab8c37890a52ffff9`  
		Last Modified: Tue, 25 Jul 2017 00:27:54 GMT  
		Size: 4.7 KB (4705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f3dd5e902236ea03072eb9c3dd9b9d4bd2719fa51be5ce98241d72ee4e9408`  
		Last Modified: Tue, 25 Jul 2017 00:27:54 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa28ceb9dda85591aeddb2d2755696a40624ca24fff1bb801050084bcb8b6edb`  
		Last Modified: Tue, 25 Jul 2017 00:27:54 GMT  
		Size: 25.3 KB (25311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0`

```console
$ docker pull cassandra@sha256:a0f46c193fe4a7df96e9af49dcb60c8a3c8526096748382a4cb828f13537b868
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.7 MB (160689758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bae523739546e7ff00caf50bc6897770cd41411f79d7fd70399dbbe739877c0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 16:51:28 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 25 Jul 2017 00:21:45 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 25 Jul 2017 00:21:45 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Jul 2017 00:22:12 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 25 Jul 2017 00:22:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 00:22:28 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Tue, 25 Jul 2017 00:22:28 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 25 Jul 2017 00:22:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 25 Jul 2017 00:24:42 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 25 Jul 2017 00:24:42 GMT
ENV CASSANDRA_VERSION=3.0.14
# Tue, 25 Jul 2017 00:25:37 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 00:25:38 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 25 Jul 2017 00:25:39 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 25 Jul 2017 00:25:39 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 25 Jul 2017 00:25:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Jul 2017 00:25:40 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 25 Jul 2017 00:25:40 GMT
VOLUME [/var/lib/cassandra]
# Tue, 25 Jul 2017 00:25:40 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 25 Jul 2017 00:25:40 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d839585b9c7f4b7b265fa2396f6966ea7274dbf33ca9f21129e1b7ad7a625f1`  
		Last Modified: Mon, 24 Jul 2017 16:55:41 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87bb16b5ac4e0b0810327a38e0d628ac682ad4d21a44dae279c62153104686d`  
		Last Modified: Tue, 25 Jul 2017 00:26:53 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efe12bc4a3a0cbe1a77061cf4903a5c5933287328acebdd620bd2a7f2aafebd`  
		Last Modified: Tue, 25 Jul 2017 00:26:53 GMT  
		Size: 1.3 MB (1302800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e70f89f15dec1b784a2fd53b0c0eb8eda3151599edbbfc4cc5e92c666325190`  
		Last Modified: Tue, 25 Jul 2017 00:26:53 GMT  
		Size: 172.3 KB (172333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:018f519cb9b0d0d23bf55a034660f73098911b192110a615005e4ef5f35460bd`  
		Last Modified: Tue, 25 Jul 2017 00:26:52 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5014cb189120c0f4ab096f29e2d5bf18d46a6287b7b7682b8bbe21718d5657`  
		Last Modified: Tue, 25 Jul 2017 00:26:50 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:505ff471c720f63ba5de0050f7d4a6cac4c58afd9449082bee652bf236426428`  
		Last Modified: Tue, 25 Jul 2017 00:27:54 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09a254bd42af5d5ae5cf3cc6ceb64ab0f08dd81e33559dc99eb99ab73d038efa`  
		Last Modified: Tue, 25 Jul 2017 00:28:07 GMT  
		Size: 106.6 MB (106557272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81da9868f117ab35f39f8d8b028d1c8cb3b405d1ab39ea5ab8c37890a52ffff9`  
		Last Modified: Tue, 25 Jul 2017 00:27:54 GMT  
		Size: 4.7 KB (4705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f3dd5e902236ea03072eb9c3dd9b9d4bd2719fa51be5ce98241d72ee4e9408`  
		Last Modified: Tue, 25 Jul 2017 00:27:54 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa28ceb9dda85591aeddb2d2755696a40624ca24fff1bb801050084bcb8b6edb`  
		Last Modified: Tue, 25 Jul 2017 00:27:54 GMT  
		Size: 25.3 KB (25311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.11.0`

```console
$ docker pull cassandra@sha256:b67d5670417fb67c6b624f118f396439d2c5958a541c6c2f35c5106fa60543eb
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.11.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165238069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:535a7b98d04dd8e50bd8a908ed3958a141c3a79274c86b19987304169a8da096`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 16:51:28 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 25 Jul 2017 00:21:45 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 25 Jul 2017 00:21:45 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Jul 2017 00:22:12 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 25 Jul 2017 00:22:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 00:22:28 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Tue, 25 Jul 2017 00:22:28 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 25 Jul 2017 00:22:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 25 Jul 2017 00:25:43 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 25 Jul 2017 00:25:44 GMT
ENV CASSANDRA_VERSION=3.11.0
# Tue, 25 Jul 2017 00:26:41 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 00:26:42 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 25 Jul 2017 00:26:43 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 25 Jul 2017 00:26:43 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 25 Jul 2017 00:26:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Jul 2017 00:26:44 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 25 Jul 2017 00:26:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 25 Jul 2017 00:26:44 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 25 Jul 2017 00:26:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d839585b9c7f4b7b265fa2396f6966ea7274dbf33ca9f21129e1b7ad7a625f1`  
		Last Modified: Mon, 24 Jul 2017 16:55:41 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87bb16b5ac4e0b0810327a38e0d628ac682ad4d21a44dae279c62153104686d`  
		Last Modified: Tue, 25 Jul 2017 00:26:53 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efe12bc4a3a0cbe1a77061cf4903a5c5933287328acebdd620bd2a7f2aafebd`  
		Last Modified: Tue, 25 Jul 2017 00:26:53 GMT  
		Size: 1.3 MB (1302800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e70f89f15dec1b784a2fd53b0c0eb8eda3151599edbbfc4cc5e92c666325190`  
		Last Modified: Tue, 25 Jul 2017 00:26:53 GMT  
		Size: 172.3 KB (172333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:018f519cb9b0d0d23bf55a034660f73098911b192110a615005e4ef5f35460bd`  
		Last Modified: Tue, 25 Jul 2017 00:26:52 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5014cb189120c0f4ab096f29e2d5bf18d46a6287b7b7682b8bbe21718d5657`  
		Last Modified: Tue, 25 Jul 2017 00:26:50 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3074694c98521420a5f256887eba3f61f3e8c42022ed42d4a1381c63a3ac93f`  
		Last Modified: Tue, 25 Jul 2017 00:28:22 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12104f1070b9f6f03672405fb0a4d545f376df6453a223f57fa7f49a89acb19f`  
		Last Modified: Tue, 25 Jul 2017 00:28:37 GMT  
		Size: 111.1 MB (111101236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1138a96ac8db20c1e552e41a8cb78d7df388ea9a627c4156b50196d28aedd0`  
		Last Modified: Tue, 25 Jul 2017 00:28:22 GMT  
		Size: 4.4 KB (4395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043fc3d5ab571f03a678184426bce0387f7b02af37667d22521e372546ccee27`  
		Last Modified: Tue, 25 Jul 2017 00:28:22 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f0fea95e202a955d354a2e17bb2a514d5378e814264a6415256cca6d0b4bc3`  
		Last Modified: Tue, 25 Jul 2017 00:28:22 GMT  
		Size: 30.0 KB (29969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.11`

```console
$ docker pull cassandra@sha256:b67d5670417fb67c6b624f118f396439d2c5958a541c6c2f35c5106fa60543eb
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.11` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165238069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:535a7b98d04dd8e50bd8a908ed3958a141c3a79274c86b19987304169a8da096`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 16:51:28 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 25 Jul 2017 00:21:45 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 25 Jul 2017 00:21:45 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Jul 2017 00:22:12 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 25 Jul 2017 00:22:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 00:22:28 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Tue, 25 Jul 2017 00:22:28 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 25 Jul 2017 00:22:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 25 Jul 2017 00:25:43 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 25 Jul 2017 00:25:44 GMT
ENV CASSANDRA_VERSION=3.11.0
# Tue, 25 Jul 2017 00:26:41 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 00:26:42 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 25 Jul 2017 00:26:43 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 25 Jul 2017 00:26:43 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 25 Jul 2017 00:26:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Jul 2017 00:26:44 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 25 Jul 2017 00:26:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 25 Jul 2017 00:26:44 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 25 Jul 2017 00:26:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d839585b9c7f4b7b265fa2396f6966ea7274dbf33ca9f21129e1b7ad7a625f1`  
		Last Modified: Mon, 24 Jul 2017 16:55:41 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87bb16b5ac4e0b0810327a38e0d628ac682ad4d21a44dae279c62153104686d`  
		Last Modified: Tue, 25 Jul 2017 00:26:53 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efe12bc4a3a0cbe1a77061cf4903a5c5933287328acebdd620bd2a7f2aafebd`  
		Last Modified: Tue, 25 Jul 2017 00:26:53 GMT  
		Size: 1.3 MB (1302800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e70f89f15dec1b784a2fd53b0c0eb8eda3151599edbbfc4cc5e92c666325190`  
		Last Modified: Tue, 25 Jul 2017 00:26:53 GMT  
		Size: 172.3 KB (172333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:018f519cb9b0d0d23bf55a034660f73098911b192110a615005e4ef5f35460bd`  
		Last Modified: Tue, 25 Jul 2017 00:26:52 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5014cb189120c0f4ab096f29e2d5bf18d46a6287b7b7682b8bbe21718d5657`  
		Last Modified: Tue, 25 Jul 2017 00:26:50 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3074694c98521420a5f256887eba3f61f3e8c42022ed42d4a1381c63a3ac93f`  
		Last Modified: Tue, 25 Jul 2017 00:28:22 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12104f1070b9f6f03672405fb0a4d545f376df6453a223f57fa7f49a89acb19f`  
		Last Modified: Tue, 25 Jul 2017 00:28:37 GMT  
		Size: 111.1 MB (111101236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1138a96ac8db20c1e552e41a8cb78d7df388ea9a627c4156b50196d28aedd0`  
		Last Modified: Tue, 25 Jul 2017 00:28:22 GMT  
		Size: 4.4 KB (4395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043fc3d5ab571f03a678184426bce0387f7b02af37667d22521e372546ccee27`  
		Last Modified: Tue, 25 Jul 2017 00:28:22 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f0fea95e202a955d354a2e17bb2a514d5378e814264a6415256cca6d0b4bc3`  
		Last Modified: Tue, 25 Jul 2017 00:28:22 GMT  
		Size: 30.0 KB (29969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3`

```console
$ docker pull cassandra@sha256:b67d5670417fb67c6b624f118f396439d2c5958a541c6c2f35c5106fa60543eb
```

-	Platforms:
	-	linux; amd64

### `cassandra:3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165238069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:535a7b98d04dd8e50bd8a908ed3958a141c3a79274c86b19987304169a8da096`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 16:51:28 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 25 Jul 2017 00:21:45 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 25 Jul 2017 00:21:45 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Jul 2017 00:22:12 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 25 Jul 2017 00:22:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 00:22:28 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Tue, 25 Jul 2017 00:22:28 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 25 Jul 2017 00:22:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 25 Jul 2017 00:25:43 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 25 Jul 2017 00:25:44 GMT
ENV CASSANDRA_VERSION=3.11.0
# Tue, 25 Jul 2017 00:26:41 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 00:26:42 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 25 Jul 2017 00:26:43 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 25 Jul 2017 00:26:43 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 25 Jul 2017 00:26:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Jul 2017 00:26:44 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 25 Jul 2017 00:26:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 25 Jul 2017 00:26:44 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 25 Jul 2017 00:26:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d839585b9c7f4b7b265fa2396f6966ea7274dbf33ca9f21129e1b7ad7a625f1`  
		Last Modified: Mon, 24 Jul 2017 16:55:41 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87bb16b5ac4e0b0810327a38e0d628ac682ad4d21a44dae279c62153104686d`  
		Last Modified: Tue, 25 Jul 2017 00:26:53 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efe12bc4a3a0cbe1a77061cf4903a5c5933287328acebdd620bd2a7f2aafebd`  
		Last Modified: Tue, 25 Jul 2017 00:26:53 GMT  
		Size: 1.3 MB (1302800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e70f89f15dec1b784a2fd53b0c0eb8eda3151599edbbfc4cc5e92c666325190`  
		Last Modified: Tue, 25 Jul 2017 00:26:53 GMT  
		Size: 172.3 KB (172333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:018f519cb9b0d0d23bf55a034660f73098911b192110a615005e4ef5f35460bd`  
		Last Modified: Tue, 25 Jul 2017 00:26:52 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5014cb189120c0f4ab096f29e2d5bf18d46a6287b7b7682b8bbe21718d5657`  
		Last Modified: Tue, 25 Jul 2017 00:26:50 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3074694c98521420a5f256887eba3f61f3e8c42022ed42d4a1381c63a3ac93f`  
		Last Modified: Tue, 25 Jul 2017 00:28:22 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12104f1070b9f6f03672405fb0a4d545f376df6453a223f57fa7f49a89acb19f`  
		Last Modified: Tue, 25 Jul 2017 00:28:37 GMT  
		Size: 111.1 MB (111101236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1138a96ac8db20c1e552e41a8cb78d7df388ea9a627c4156b50196d28aedd0`  
		Last Modified: Tue, 25 Jul 2017 00:28:22 GMT  
		Size: 4.4 KB (4395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043fc3d5ab571f03a678184426bce0387f7b02af37667d22521e372546ccee27`  
		Last Modified: Tue, 25 Jul 2017 00:28:22 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f0fea95e202a955d354a2e17bb2a514d5378e814264a6415256cca6d0b4bc3`  
		Last Modified: Tue, 25 Jul 2017 00:28:22 GMT  
		Size: 30.0 KB (29969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:latest`

```console
$ docker pull cassandra@sha256:b67d5670417fb67c6b624f118f396439d2c5958a541c6c2f35c5106fa60543eb
```

-	Platforms:
	-	linux; amd64

### `cassandra:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165238069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:535a7b98d04dd8e50bd8a908ed3958a141c3a79274c86b19987304169a8da096`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 16:51:28 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/backports.list
# Tue, 25 Jul 2017 00:21:45 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 25 Jul 2017 00:21:45 GMT
ENV GOSU_VERSION=1.7
# Tue, 25 Jul 2017 00:22:12 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 25 Jul 2017 00:22:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 00:22:28 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Tue, 25 Jul 2017 00:22:28 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 25 Jul 2017 00:22:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 25 Jul 2017 00:25:43 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 311x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 25 Jul 2017 00:25:44 GMT
ENV CASSANDRA_VERSION=3.11.0
# Tue, 25 Jul 2017 00:26:41 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 00:26:42 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 25 Jul 2017 00:26:43 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 25 Jul 2017 00:26:43 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 25 Jul 2017 00:26:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Jul 2017 00:26:44 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 25 Jul 2017 00:26:44 GMT
VOLUME [/var/lib/cassandra]
# Tue, 25 Jul 2017 00:26:44 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 25 Jul 2017 00:26:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d839585b9c7f4b7b265fa2396f6966ea7274dbf33ca9f21129e1b7ad7a625f1`  
		Last Modified: Mon, 24 Jul 2017 16:55:41 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87bb16b5ac4e0b0810327a38e0d628ac682ad4d21a44dae279c62153104686d`  
		Last Modified: Tue, 25 Jul 2017 00:26:53 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efe12bc4a3a0cbe1a77061cf4903a5c5933287328acebdd620bd2a7f2aafebd`  
		Last Modified: Tue, 25 Jul 2017 00:26:53 GMT  
		Size: 1.3 MB (1302800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e70f89f15dec1b784a2fd53b0c0eb8eda3151599edbbfc4cc5e92c666325190`  
		Last Modified: Tue, 25 Jul 2017 00:26:53 GMT  
		Size: 172.3 KB (172333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:018f519cb9b0d0d23bf55a034660f73098911b192110a615005e4ef5f35460bd`  
		Last Modified: Tue, 25 Jul 2017 00:26:52 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5014cb189120c0f4ab096f29e2d5bf18d46a6287b7b7682b8bbe21718d5657`  
		Last Modified: Tue, 25 Jul 2017 00:26:50 GMT  
		Size: 18.2 KB (18232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3074694c98521420a5f256887eba3f61f3e8c42022ed42d4a1381c63a3ac93f`  
		Last Modified: Tue, 25 Jul 2017 00:28:22 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12104f1070b9f6f03672405fb0a4d545f376df6453a223f57fa7f49a89acb19f`  
		Last Modified: Tue, 25 Jul 2017 00:28:37 GMT  
		Size: 111.1 MB (111101236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1138a96ac8db20c1e552e41a8cb78d7df388ea9a627c4156b50196d28aedd0`  
		Last Modified: Tue, 25 Jul 2017 00:28:22 GMT  
		Size: 4.4 KB (4395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043fc3d5ab571f03a678184426bce0387f7b02af37667d22521e372546ccee27`  
		Last Modified: Tue, 25 Jul 2017 00:28:22 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f0fea95e202a955d354a2e17bb2a514d5378e814264a6415256cca6d0b4bc3`  
		Last Modified: Tue, 25 Jul 2017 00:28:22 GMT  
		Size: 30.0 KB (29969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
