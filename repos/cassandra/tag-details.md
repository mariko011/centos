<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `cassandra`

-	[`cassandra:2.1.17`](#cassandra2117)
-	[`cassandra:2.1`](#cassandra21)
-	[`cassandra:2.2.9`](#cassandra229)
-	[`cassandra:2.2`](#cassandra22)
-	[`cassandra:2`](#cassandra2)
-	[`cassandra:3.0.13`](#cassandra3013)
-	[`cassandra:3.0`](#cassandra30)
-	[`cassandra:3.10`](#cassandra310)
-	[`cassandra:3`](#cassandra3)
-	[`cassandra:latest`](#cassandralatest)

## `cassandra:2.1.17`

```console
$ docker pull cassandra@sha256:581bc494535414f8e4020f8d321c46f74995b221dbce4eb4d454c420b2e508d6
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.1.17` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.8 MB (169808406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50264b8073852f2d57a5fa565caa7bc17197c4bc641314ee95204e72ddcd0062`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:21:37 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Mon, 24 Apr 2017 20:01:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 24 Apr 2017 20:01:11 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Apr 2017 20:01:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 24 Apr 2017 20:01:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 20:01:49 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 24 Apr 2017 20:01:50 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 24 Apr 2017 20:01:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 24 Apr 2017 20:03:49 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 24 Apr 2017 20:03:49 GMT
ENV CASSANDRA_VERSION=2.1.17
# Mon, 24 Apr 2017 20:04:48 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 20:05:01 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Mon, 24 Apr 2017 20:05:01 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 24 Apr 2017 20:05:02 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 24 Apr 2017 20:05:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 24 Apr 2017 20:05:04 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 24 Apr 2017 20:05:05 GMT
VOLUME [/var/lib/cassandra]
# Mon, 24 Apr 2017 20:05:06 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 24 Apr 2017 20:05:06 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01bb42cce878d40beda38545b668a6751bc812305e2168de4d55516087c454d`  
		Last Modified: Mon, 24 Apr 2017 19:33:53 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c29d84dddd8133e6d081da4a2a3ab2ae2793aad9b3444850af4c03b7fcb6a13`  
		Last Modified: Mon, 24 Apr 2017 23:57:34 GMT  
		Size: 2.1 KB (2057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a47e062f3b9773c28d08fac6c9649249414a4ef7c0e1fd62f3fb3831b92d8f`  
		Last Modified: Mon, 24 Apr 2017 23:57:34 GMT  
		Size: 1.3 MB (1308203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9de956459abb79eb7ca2d24d69505af40ac05cfd69f592eff64145921104fa`  
		Last Modified: Mon, 24 Apr 2017 23:57:33 GMT  
		Size: 177.5 KB (177490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18aceaa518c783ceb928970c9bbedd9e8b7358bc43ce0aa10b50e8bb98b59aa2`  
		Last Modified: Mon, 24 Apr 2017 23:57:33 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82210922fae433aea790aff0d95c2840d12b5b7893b12700767fc7cadaecb10`  
		Last Modified: Mon, 24 Apr 2017 23:57:32 GMT  
		Size: 18.2 KB (18229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a1910bd5acccbe93f4ca6ee758af01ae4f27da7b490219bb468213b24a73a2`  
		Last Modified: Mon, 24 Apr 2017 23:57:30 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:332da3eb851874535bbd4f915280db523c488b5799ed3a7139dea04d9a3146cd`  
		Last Modified: Mon, 24 Apr 2017 23:57:48 GMT  
		Size: 115.7 MB (115725776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e39d070816cb5acad71e736006b1e1b58e84e4bc52bb0314d8b1554232c7a03`  
		Last Modified: Mon, 24 Apr 2017 23:57:30 GMT  
		Size: 4.7 KB (4671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db988d1ec823935b9733f8eb26ceadcc63b5c3768bc835662c306bdc39fcf01`  
		Last Modified: Mon, 24 Apr 2017 23:57:30 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7776890a7645a6304d03c07796f586ef0843045b3bf8e6856c3c8f79aad5be`  
		Last Modified: Mon, 24 Apr 2017 23:57:30 GMT  
		Size: 20.3 KB (20293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.1`

```console
$ docker pull cassandra@sha256:581bc494535414f8e4020f8d321c46f74995b221dbce4eb4d454c420b2e508d6
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.8 MB (169808406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50264b8073852f2d57a5fa565caa7bc17197c4bc641314ee95204e72ddcd0062`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:21:37 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Mon, 24 Apr 2017 20:01:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 24 Apr 2017 20:01:11 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Apr 2017 20:01:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 24 Apr 2017 20:01:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 20:01:49 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 24 Apr 2017 20:01:50 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 24 Apr 2017 20:01:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 24 Apr 2017 20:03:49 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 24 Apr 2017 20:03:49 GMT
ENV CASSANDRA_VERSION=2.1.17
# Mon, 24 Apr 2017 20:04:48 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 20:05:01 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Mon, 24 Apr 2017 20:05:01 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 24 Apr 2017 20:05:02 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 24 Apr 2017 20:05:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 24 Apr 2017 20:05:04 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 24 Apr 2017 20:05:05 GMT
VOLUME [/var/lib/cassandra]
# Mon, 24 Apr 2017 20:05:06 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 24 Apr 2017 20:05:06 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01bb42cce878d40beda38545b668a6751bc812305e2168de4d55516087c454d`  
		Last Modified: Mon, 24 Apr 2017 19:33:53 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c29d84dddd8133e6d081da4a2a3ab2ae2793aad9b3444850af4c03b7fcb6a13`  
		Last Modified: Mon, 24 Apr 2017 23:57:34 GMT  
		Size: 2.1 KB (2057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a47e062f3b9773c28d08fac6c9649249414a4ef7c0e1fd62f3fb3831b92d8f`  
		Last Modified: Mon, 24 Apr 2017 23:57:34 GMT  
		Size: 1.3 MB (1308203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9de956459abb79eb7ca2d24d69505af40ac05cfd69f592eff64145921104fa`  
		Last Modified: Mon, 24 Apr 2017 23:57:33 GMT  
		Size: 177.5 KB (177490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18aceaa518c783ceb928970c9bbedd9e8b7358bc43ce0aa10b50e8bb98b59aa2`  
		Last Modified: Mon, 24 Apr 2017 23:57:33 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82210922fae433aea790aff0d95c2840d12b5b7893b12700767fc7cadaecb10`  
		Last Modified: Mon, 24 Apr 2017 23:57:32 GMT  
		Size: 18.2 KB (18229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a1910bd5acccbe93f4ca6ee758af01ae4f27da7b490219bb468213b24a73a2`  
		Last Modified: Mon, 24 Apr 2017 23:57:30 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:332da3eb851874535bbd4f915280db523c488b5799ed3a7139dea04d9a3146cd`  
		Last Modified: Mon, 24 Apr 2017 23:57:48 GMT  
		Size: 115.7 MB (115725776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e39d070816cb5acad71e736006b1e1b58e84e4bc52bb0314d8b1554232c7a03`  
		Last Modified: Mon, 24 Apr 2017 23:57:30 GMT  
		Size: 4.7 KB (4671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db988d1ec823935b9733f8eb26ceadcc63b5c3768bc835662c306bdc39fcf01`  
		Last Modified: Mon, 24 Apr 2017 23:57:30 GMT  
		Size: 730.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7776890a7645a6304d03c07796f586ef0843045b3bf8e6856c3c8f79aad5be`  
		Last Modified: Mon, 24 Apr 2017 23:57:30 GMT  
		Size: 20.3 KB (20293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2.9`

```console
$ docker pull cassandra@sha256:6cee5c572d3159d057e94043f0c8b6fb7958448d442747aa570a5aab2f002297
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.2.9` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174202337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9a6a8af47255de77b3dad1f85433916dc857fc1cbb4bbd3ba32aeed066e88ee`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:21:37 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Mon, 24 Apr 2017 20:01:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 24 Apr 2017 20:01:11 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Apr 2017 20:01:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 24 Apr 2017 20:01:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 20:01:49 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 24 Apr 2017 20:01:50 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 24 Apr 2017 20:01:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 24 Apr 2017 20:02:08 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 24 Apr 2017 20:02:09 GMT
ENV CASSANDRA_VERSION=2.2.9
# Mon, 24 Apr 2017 20:02:58 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 20:03:09 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Mon, 24 Apr 2017 20:03:10 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 24 Apr 2017 20:03:11 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 24 Apr 2017 20:03:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 24 Apr 2017 20:03:28 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 24 Apr 2017 20:03:29 GMT
VOLUME [/var/lib/cassandra]
# Mon, 24 Apr 2017 20:03:29 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 24 Apr 2017 20:03:30 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01bb42cce878d40beda38545b668a6751bc812305e2168de4d55516087c454d`  
		Last Modified: Mon, 24 Apr 2017 19:33:53 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c29d84dddd8133e6d081da4a2a3ab2ae2793aad9b3444850af4c03b7fcb6a13`  
		Last Modified: Mon, 24 Apr 2017 23:57:34 GMT  
		Size: 2.1 KB (2057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a47e062f3b9773c28d08fac6c9649249414a4ef7c0e1fd62f3fb3831b92d8f`  
		Last Modified: Mon, 24 Apr 2017 23:57:34 GMT  
		Size: 1.3 MB (1308203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9de956459abb79eb7ca2d24d69505af40ac05cfd69f592eff64145921104fa`  
		Last Modified: Mon, 24 Apr 2017 23:57:33 GMT  
		Size: 177.5 KB (177490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18aceaa518c783ceb928970c9bbedd9e8b7358bc43ce0aa10b50e8bb98b59aa2`  
		Last Modified: Mon, 24 Apr 2017 23:57:33 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82210922fae433aea790aff0d95c2840d12b5b7893b12700767fc7cadaecb10`  
		Last Modified: Mon, 24 Apr 2017 23:57:32 GMT  
		Size: 18.2 KB (18229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae6bab7d6b0af0c8f0fc367ea56b67895ef4e482f8e8e16c66f276d458898252`  
		Last Modified: Mon, 24 Apr 2017 23:58:32 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7737fbe1cf2f1d9131554f6cd9e7e7cecaa9de80b0345c859cf39163fc96b44a`  
		Last Modified: Mon, 24 Apr 2017 23:58:52 GMT  
		Size: 120.1 MB (120117979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:347b77bccfcef91193736b1511e3b690452ed0289259d2746d461e86ac0bbb28`  
		Last Modified: Mon, 24 Apr 2017 23:58:32 GMT  
		Size: 4.6 KB (4639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24892e3635f8e38a6cff9f9675d2e47d4e13e5ee56a3fb3fb1ae345042a182b6`  
		Last Modified: Mon, 24 Apr 2017 23:58:32 GMT  
		Size: 732.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b00a013a4db89a2a11141e0bbdb2dd257f15b94beae9bd326a7ec8a7c590883`  
		Last Modified: Mon, 24 Apr 2017 23:58:32 GMT  
		Size: 22.1 KB (22051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2`

```console
$ docker pull cassandra@sha256:6cee5c572d3159d057e94043f0c8b6fb7958448d442747aa570a5aab2f002297
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174202337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9a6a8af47255de77b3dad1f85433916dc857fc1cbb4bbd3ba32aeed066e88ee`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:21:37 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Mon, 24 Apr 2017 20:01:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 24 Apr 2017 20:01:11 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Apr 2017 20:01:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 24 Apr 2017 20:01:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 20:01:49 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 24 Apr 2017 20:01:50 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 24 Apr 2017 20:01:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 24 Apr 2017 20:02:08 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 24 Apr 2017 20:02:09 GMT
ENV CASSANDRA_VERSION=2.2.9
# Mon, 24 Apr 2017 20:02:58 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 20:03:09 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Mon, 24 Apr 2017 20:03:10 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 24 Apr 2017 20:03:11 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 24 Apr 2017 20:03:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 24 Apr 2017 20:03:28 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 24 Apr 2017 20:03:29 GMT
VOLUME [/var/lib/cassandra]
# Mon, 24 Apr 2017 20:03:29 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 24 Apr 2017 20:03:30 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01bb42cce878d40beda38545b668a6751bc812305e2168de4d55516087c454d`  
		Last Modified: Mon, 24 Apr 2017 19:33:53 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c29d84dddd8133e6d081da4a2a3ab2ae2793aad9b3444850af4c03b7fcb6a13`  
		Last Modified: Mon, 24 Apr 2017 23:57:34 GMT  
		Size: 2.1 KB (2057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a47e062f3b9773c28d08fac6c9649249414a4ef7c0e1fd62f3fb3831b92d8f`  
		Last Modified: Mon, 24 Apr 2017 23:57:34 GMT  
		Size: 1.3 MB (1308203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9de956459abb79eb7ca2d24d69505af40ac05cfd69f592eff64145921104fa`  
		Last Modified: Mon, 24 Apr 2017 23:57:33 GMT  
		Size: 177.5 KB (177490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18aceaa518c783ceb928970c9bbedd9e8b7358bc43ce0aa10b50e8bb98b59aa2`  
		Last Modified: Mon, 24 Apr 2017 23:57:33 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82210922fae433aea790aff0d95c2840d12b5b7893b12700767fc7cadaecb10`  
		Last Modified: Mon, 24 Apr 2017 23:57:32 GMT  
		Size: 18.2 KB (18229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae6bab7d6b0af0c8f0fc367ea56b67895ef4e482f8e8e16c66f276d458898252`  
		Last Modified: Mon, 24 Apr 2017 23:58:32 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7737fbe1cf2f1d9131554f6cd9e7e7cecaa9de80b0345c859cf39163fc96b44a`  
		Last Modified: Mon, 24 Apr 2017 23:58:52 GMT  
		Size: 120.1 MB (120117979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:347b77bccfcef91193736b1511e3b690452ed0289259d2746d461e86ac0bbb28`  
		Last Modified: Mon, 24 Apr 2017 23:58:32 GMT  
		Size: 4.6 KB (4639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24892e3635f8e38a6cff9f9675d2e47d4e13e5ee56a3fb3fb1ae345042a182b6`  
		Last Modified: Mon, 24 Apr 2017 23:58:32 GMT  
		Size: 732.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b00a013a4db89a2a11141e0bbdb2dd257f15b94beae9bd326a7ec8a7c590883`  
		Last Modified: Mon, 24 Apr 2017 23:58:32 GMT  
		Size: 22.1 KB (22051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2`

```console
$ docker pull cassandra@sha256:6cee5c572d3159d057e94043f0c8b6fb7958448d442747aa570a5aab2f002297
```

-	Platforms:
	-	linux; amd64

### `cassandra:2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.2 MB (174202337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9a6a8af47255de77b3dad1f85433916dc857fc1cbb4bbd3ba32aeed066e88ee`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:21:37 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Mon, 24 Apr 2017 20:01:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 24 Apr 2017 20:01:11 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Apr 2017 20:01:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 24 Apr 2017 20:01:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 20:01:49 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 24 Apr 2017 20:01:50 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 24 Apr 2017 20:01:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 24 Apr 2017 20:02:08 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 24 Apr 2017 20:02:09 GMT
ENV CASSANDRA_VERSION=2.2.9
# Mon, 24 Apr 2017 20:02:58 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 20:03:09 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Mon, 24 Apr 2017 20:03:10 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 24 Apr 2017 20:03:11 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 24 Apr 2017 20:03:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 24 Apr 2017 20:03:28 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 24 Apr 2017 20:03:29 GMT
VOLUME [/var/lib/cassandra]
# Mon, 24 Apr 2017 20:03:29 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 24 Apr 2017 20:03:30 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01bb42cce878d40beda38545b668a6751bc812305e2168de4d55516087c454d`  
		Last Modified: Mon, 24 Apr 2017 19:33:53 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c29d84dddd8133e6d081da4a2a3ab2ae2793aad9b3444850af4c03b7fcb6a13`  
		Last Modified: Mon, 24 Apr 2017 23:57:34 GMT  
		Size: 2.1 KB (2057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a47e062f3b9773c28d08fac6c9649249414a4ef7c0e1fd62f3fb3831b92d8f`  
		Last Modified: Mon, 24 Apr 2017 23:57:34 GMT  
		Size: 1.3 MB (1308203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9de956459abb79eb7ca2d24d69505af40ac05cfd69f592eff64145921104fa`  
		Last Modified: Mon, 24 Apr 2017 23:57:33 GMT  
		Size: 177.5 KB (177490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18aceaa518c783ceb928970c9bbedd9e8b7358bc43ce0aa10b50e8bb98b59aa2`  
		Last Modified: Mon, 24 Apr 2017 23:57:33 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82210922fae433aea790aff0d95c2840d12b5b7893b12700767fc7cadaecb10`  
		Last Modified: Mon, 24 Apr 2017 23:57:32 GMT  
		Size: 18.2 KB (18229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae6bab7d6b0af0c8f0fc367ea56b67895ef4e482f8e8e16c66f276d458898252`  
		Last Modified: Mon, 24 Apr 2017 23:58:32 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7737fbe1cf2f1d9131554f6cd9e7e7cecaa9de80b0345c859cf39163fc96b44a`  
		Last Modified: Mon, 24 Apr 2017 23:58:52 GMT  
		Size: 120.1 MB (120117979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:347b77bccfcef91193736b1511e3b690452ed0289259d2746d461e86ac0bbb28`  
		Last Modified: Mon, 24 Apr 2017 23:58:32 GMT  
		Size: 4.6 KB (4639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24892e3635f8e38a6cff9f9675d2e47d4e13e5ee56a3fb3fb1ae345042a182b6`  
		Last Modified: Mon, 24 Apr 2017 23:58:32 GMT  
		Size: 732.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b00a013a4db89a2a11141e0bbdb2dd257f15b94beae9bd326a7ec8a7c590883`  
		Last Modified: Mon, 24 Apr 2017 23:58:32 GMT  
		Size: 22.1 KB (22051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0.13`

```console
$ docker pull cassandra@sha256:211e2bd40c80832134b670aa2428159916370fc19cf018353c7d0e5cf3f29405
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.0.13` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160440627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1708eb1f63c6a4801759916d49542c7945006eb121db006147f51f9e9b10f0af`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:21:37 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Mon, 24 Apr 2017 20:01:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 24 Apr 2017 20:01:11 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Apr 2017 20:01:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 24 Apr 2017 20:01:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 20:01:49 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 24 Apr 2017 20:01:50 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 24 Apr 2017 20:01:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 24 Apr 2017 20:06:39 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 24 Apr 2017 23:56:09 GMT
ENV CASSANDRA_VERSION=3.0.13
# Mon, 24 Apr 2017 23:57:00 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:57:02 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Mon, 24 Apr 2017 23:57:02 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 24 Apr 2017 23:57:03 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 24 Apr 2017 23:57:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 24 Apr 2017 23:57:05 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 24 Apr 2017 23:57:06 GMT
VOLUME [/var/lib/cassandra]
# Mon, 24 Apr 2017 23:57:06 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 24 Apr 2017 23:57:07 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01bb42cce878d40beda38545b668a6751bc812305e2168de4d55516087c454d`  
		Last Modified: Mon, 24 Apr 2017 19:33:53 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c29d84dddd8133e6d081da4a2a3ab2ae2793aad9b3444850af4c03b7fcb6a13`  
		Last Modified: Mon, 24 Apr 2017 23:57:34 GMT  
		Size: 2.1 KB (2057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a47e062f3b9773c28d08fac6c9649249414a4ef7c0e1fd62f3fb3831b92d8f`  
		Last Modified: Mon, 24 Apr 2017 23:57:34 GMT  
		Size: 1.3 MB (1308203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9de956459abb79eb7ca2d24d69505af40ac05cfd69f592eff64145921104fa`  
		Last Modified: Mon, 24 Apr 2017 23:57:33 GMT  
		Size: 177.5 KB (177490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18aceaa518c783ceb928970c9bbedd9e8b7358bc43ce0aa10b50e8bb98b59aa2`  
		Last Modified: Mon, 24 Apr 2017 23:57:33 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82210922fae433aea790aff0d95c2840d12b5b7893b12700767fc7cadaecb10`  
		Last Modified: Mon, 24 Apr 2017 23:57:32 GMT  
		Size: 18.2 KB (18229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a681978560041a0fa0be68204be3a1e3144f79d8f6bb2eb27e3de46582ea0ba`  
		Last Modified: Mon, 24 Apr 2017 23:59:56 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60dcc6c0b73b72912aed6a87cf0a28db76df27e208d31ac5cd1ab2d3d088fd46`  
		Last Modified: Tue, 25 Apr 2017 00:00:13 GMT  
		Size: 106.4 MB (106353165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84ffcc042c57fc834b074ecae6db14cfc09c3c3f63d191c3543f9908aa0a743b`  
		Last Modified: Mon, 24 Apr 2017 23:59:55 GMT  
		Size: 4.7 KB (4706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8233c8a56bb03e4dd9c9c9acdccb37d442ccc525abd66d5ffc520de98521f5`  
		Last Modified: Mon, 24 Apr 2017 23:59:55 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4082033bc0b8a72d20c17d735adad2d6647e9a228723fe8975dbb717adc9134e`  
		Last Modified: Mon, 24 Apr 2017 23:59:56 GMT  
		Size: 25.1 KB (25093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0`

```console
$ docker pull cassandra@sha256:211e2bd40c80832134b670aa2428159916370fc19cf018353c7d0e5cf3f29405
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160440627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1708eb1f63c6a4801759916d49542c7945006eb121db006147f51f9e9b10f0af`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:21:37 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Mon, 24 Apr 2017 20:01:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 24 Apr 2017 20:01:11 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Apr 2017 20:01:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 24 Apr 2017 20:01:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 20:01:49 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 24 Apr 2017 20:01:50 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 24 Apr 2017 20:01:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 24 Apr 2017 20:06:39 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 24 Apr 2017 23:56:09 GMT
ENV CASSANDRA_VERSION=3.0.13
# Mon, 24 Apr 2017 23:57:00 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:57:02 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Mon, 24 Apr 2017 23:57:02 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 24 Apr 2017 23:57:03 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 24 Apr 2017 23:57:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 24 Apr 2017 23:57:05 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 24 Apr 2017 23:57:06 GMT
VOLUME [/var/lib/cassandra]
# Mon, 24 Apr 2017 23:57:06 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 24 Apr 2017 23:57:07 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01bb42cce878d40beda38545b668a6751bc812305e2168de4d55516087c454d`  
		Last Modified: Mon, 24 Apr 2017 19:33:53 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c29d84dddd8133e6d081da4a2a3ab2ae2793aad9b3444850af4c03b7fcb6a13`  
		Last Modified: Mon, 24 Apr 2017 23:57:34 GMT  
		Size: 2.1 KB (2057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a47e062f3b9773c28d08fac6c9649249414a4ef7c0e1fd62f3fb3831b92d8f`  
		Last Modified: Mon, 24 Apr 2017 23:57:34 GMT  
		Size: 1.3 MB (1308203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9de956459abb79eb7ca2d24d69505af40ac05cfd69f592eff64145921104fa`  
		Last Modified: Mon, 24 Apr 2017 23:57:33 GMT  
		Size: 177.5 KB (177490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18aceaa518c783ceb928970c9bbedd9e8b7358bc43ce0aa10b50e8bb98b59aa2`  
		Last Modified: Mon, 24 Apr 2017 23:57:33 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82210922fae433aea790aff0d95c2840d12b5b7893b12700767fc7cadaecb10`  
		Last Modified: Mon, 24 Apr 2017 23:57:32 GMT  
		Size: 18.2 KB (18229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a681978560041a0fa0be68204be3a1e3144f79d8f6bb2eb27e3de46582ea0ba`  
		Last Modified: Mon, 24 Apr 2017 23:59:56 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60dcc6c0b73b72912aed6a87cf0a28db76df27e208d31ac5cd1ab2d3d088fd46`  
		Last Modified: Tue, 25 Apr 2017 00:00:13 GMT  
		Size: 106.4 MB (106353165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84ffcc042c57fc834b074ecae6db14cfc09c3c3f63d191c3543f9908aa0a743b`  
		Last Modified: Mon, 24 Apr 2017 23:59:55 GMT  
		Size: 4.7 KB (4706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8233c8a56bb03e4dd9c9c9acdccb37d442ccc525abd66d5ffc520de98521f5`  
		Last Modified: Mon, 24 Apr 2017 23:59:55 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4082033bc0b8a72d20c17d735adad2d6647e9a228723fe8975dbb717adc9134e`  
		Last Modified: Mon, 24 Apr 2017 23:59:56 GMT  
		Size: 25.1 KB (25093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.10`

```console
$ docker pull cassandra@sha256:f1bb633b9fc0b930a05980004bd772c18521987df4f34bece90c92e539094b69
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.10` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.9 MB (164888820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cb1818bd3b0333aeeff586326f9115f9f4fbc586a5648dfb6c6052f846b18c7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:21:37 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Mon, 24 Apr 2017 20:01:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 24 Apr 2017 20:01:11 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Apr 2017 20:01:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 24 Apr 2017 20:01:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 20:01:49 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 24 Apr 2017 20:01:50 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 24 Apr 2017 20:01:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 24 Apr 2017 20:05:24 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 310x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 24 Apr 2017 20:05:25 GMT
ENV CASSANDRA_VERSION=3.10
# Mon, 24 Apr 2017 20:06:14 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 20:06:16 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Mon, 24 Apr 2017 20:06:17 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 24 Apr 2017 20:06:18 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 24 Apr 2017 20:06:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 24 Apr 2017 20:06:20 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 24 Apr 2017 20:06:20 GMT
VOLUME [/var/lib/cassandra]
# Mon, 24 Apr 2017 20:06:21 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 24 Apr 2017 20:06:22 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01bb42cce878d40beda38545b668a6751bc812305e2168de4d55516087c454d`  
		Last Modified: Mon, 24 Apr 2017 19:33:53 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c29d84dddd8133e6d081da4a2a3ab2ae2793aad9b3444850af4c03b7fcb6a13`  
		Last Modified: Mon, 24 Apr 2017 23:57:34 GMT  
		Size: 2.1 KB (2057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a47e062f3b9773c28d08fac6c9649249414a4ef7c0e1fd62f3fb3831b92d8f`  
		Last Modified: Mon, 24 Apr 2017 23:57:34 GMT  
		Size: 1.3 MB (1308203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9de956459abb79eb7ca2d24d69505af40ac05cfd69f592eff64145921104fa`  
		Last Modified: Mon, 24 Apr 2017 23:57:33 GMT  
		Size: 177.5 KB (177490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18aceaa518c783ceb928970c9bbedd9e8b7358bc43ce0aa10b50e8bb98b59aa2`  
		Last Modified: Mon, 24 Apr 2017 23:57:33 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82210922fae433aea790aff0d95c2840d12b5b7893b12700767fc7cadaecb10`  
		Last Modified: Mon, 24 Apr 2017 23:57:32 GMT  
		Size: 18.2 KB (18229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:020154f6f049c04d21cf635a211ae7a2d44a328512373188c26dd7b36a76b30f`  
		Last Modified: Tue, 25 Apr 2017 00:00:56 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae00c45696a576d56e72459feb0a2426ae0d96a46422fb2eb401eaf1d27ab69`  
		Last Modified: Tue, 25 Apr 2017 00:01:16 GMT  
		Size: 110.8 MB (110798377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1df969de0e337c2b79d0de04fe9b97bcc7fee860e09ca997ae5b71e14360aa`  
		Last Modified: Tue, 25 Apr 2017 00:00:56 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2107f408122f6a1225f6f83289a0cb984d6991deb6a1435df048ac80b3d1a3a6`  
		Last Modified: Tue, 25 Apr 2017 00:00:56 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9003511416b6e42d7f15fae02a3f4174dffebd11ea9b3abf37a2b7193c51ff89`  
		Last Modified: Tue, 25 Apr 2017 00:00:56 GMT  
		Size: 28.4 KB (28378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3`

```console
$ docker pull cassandra@sha256:f1bb633b9fc0b930a05980004bd772c18521987df4f34bece90c92e539094b69
```

-	Platforms:
	-	linux; amd64

### `cassandra:3` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.9 MB (164888820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cb1818bd3b0333aeeff586326f9115f9f4fbc586a5648dfb6c6052f846b18c7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:21:37 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Mon, 24 Apr 2017 20:01:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 24 Apr 2017 20:01:11 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Apr 2017 20:01:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 24 Apr 2017 20:01:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 20:01:49 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 24 Apr 2017 20:01:50 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 24 Apr 2017 20:01:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 24 Apr 2017 20:05:24 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 310x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 24 Apr 2017 20:05:25 GMT
ENV CASSANDRA_VERSION=3.10
# Mon, 24 Apr 2017 20:06:14 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 20:06:16 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Mon, 24 Apr 2017 20:06:17 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 24 Apr 2017 20:06:18 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 24 Apr 2017 20:06:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 24 Apr 2017 20:06:20 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 24 Apr 2017 20:06:20 GMT
VOLUME [/var/lib/cassandra]
# Mon, 24 Apr 2017 20:06:21 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 24 Apr 2017 20:06:22 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01bb42cce878d40beda38545b668a6751bc812305e2168de4d55516087c454d`  
		Last Modified: Mon, 24 Apr 2017 19:33:53 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c29d84dddd8133e6d081da4a2a3ab2ae2793aad9b3444850af4c03b7fcb6a13`  
		Last Modified: Mon, 24 Apr 2017 23:57:34 GMT  
		Size: 2.1 KB (2057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a47e062f3b9773c28d08fac6c9649249414a4ef7c0e1fd62f3fb3831b92d8f`  
		Last Modified: Mon, 24 Apr 2017 23:57:34 GMT  
		Size: 1.3 MB (1308203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9de956459abb79eb7ca2d24d69505af40ac05cfd69f592eff64145921104fa`  
		Last Modified: Mon, 24 Apr 2017 23:57:33 GMT  
		Size: 177.5 KB (177490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18aceaa518c783ceb928970c9bbedd9e8b7358bc43ce0aa10b50e8bb98b59aa2`  
		Last Modified: Mon, 24 Apr 2017 23:57:33 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82210922fae433aea790aff0d95c2840d12b5b7893b12700767fc7cadaecb10`  
		Last Modified: Mon, 24 Apr 2017 23:57:32 GMT  
		Size: 18.2 KB (18229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:020154f6f049c04d21cf635a211ae7a2d44a328512373188c26dd7b36a76b30f`  
		Last Modified: Tue, 25 Apr 2017 00:00:56 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae00c45696a576d56e72459feb0a2426ae0d96a46422fb2eb401eaf1d27ab69`  
		Last Modified: Tue, 25 Apr 2017 00:01:16 GMT  
		Size: 110.8 MB (110798377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1df969de0e337c2b79d0de04fe9b97bcc7fee860e09ca997ae5b71e14360aa`  
		Last Modified: Tue, 25 Apr 2017 00:00:56 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2107f408122f6a1225f6f83289a0cb984d6991deb6a1435df048ac80b3d1a3a6`  
		Last Modified: Tue, 25 Apr 2017 00:00:56 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9003511416b6e42d7f15fae02a3f4174dffebd11ea9b3abf37a2b7193c51ff89`  
		Last Modified: Tue, 25 Apr 2017 00:00:56 GMT  
		Size: 28.4 KB (28378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:latest`

```console
$ docker pull cassandra@sha256:f1bb633b9fc0b930a05980004bd772c18521987df4f34bece90c92e539094b69
```

-	Platforms:
	-	linux; amd64

### `cassandra:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.9 MB (164888820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cb1818bd3b0333aeeff586326f9115f9f4fbc586a5648dfb6c6052f846b18c7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:21:37 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Mon, 24 Apr 2017 20:01:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 24 Apr 2017 20:01:11 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Apr 2017 20:01:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 24 Apr 2017 20:01:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 20:01:49 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 24 Apr 2017 20:01:50 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 24 Apr 2017 20:01:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 24 Apr 2017 20:05:24 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 310x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 24 Apr 2017 20:05:25 GMT
ENV CASSANDRA_VERSION=3.10
# Mon, 24 Apr 2017 20:06:14 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 20:06:16 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Mon, 24 Apr 2017 20:06:17 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 24 Apr 2017 20:06:18 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 24 Apr 2017 20:06:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 24 Apr 2017 20:06:20 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 24 Apr 2017 20:06:20 GMT
VOLUME [/var/lib/cassandra]
# Mon, 24 Apr 2017 20:06:21 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 24 Apr 2017 20:06:22 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01bb42cce878d40beda38545b668a6751bc812305e2168de4d55516087c454d`  
		Last Modified: Mon, 24 Apr 2017 19:33:53 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c29d84dddd8133e6d081da4a2a3ab2ae2793aad9b3444850af4c03b7fcb6a13`  
		Last Modified: Mon, 24 Apr 2017 23:57:34 GMT  
		Size: 2.1 KB (2057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a47e062f3b9773c28d08fac6c9649249414a4ef7c0e1fd62f3fb3831b92d8f`  
		Last Modified: Mon, 24 Apr 2017 23:57:34 GMT  
		Size: 1.3 MB (1308203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9de956459abb79eb7ca2d24d69505af40ac05cfd69f592eff64145921104fa`  
		Last Modified: Mon, 24 Apr 2017 23:57:33 GMT  
		Size: 177.5 KB (177490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18aceaa518c783ceb928970c9bbedd9e8b7358bc43ce0aa10b50e8bb98b59aa2`  
		Last Modified: Mon, 24 Apr 2017 23:57:33 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82210922fae433aea790aff0d95c2840d12b5b7893b12700767fc7cadaecb10`  
		Last Modified: Mon, 24 Apr 2017 23:57:32 GMT  
		Size: 18.2 KB (18229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:020154f6f049c04d21cf635a211ae7a2d44a328512373188c26dd7b36a76b30f`  
		Last Modified: Tue, 25 Apr 2017 00:00:56 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae00c45696a576d56e72459feb0a2426ae0d96a46422fb2eb401eaf1d27ab69`  
		Last Modified: Tue, 25 Apr 2017 00:01:16 GMT  
		Size: 110.8 MB (110798377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1df969de0e337c2b79d0de04fe9b97bcc7fee860e09ca997ae5b71e14360aa`  
		Last Modified: Tue, 25 Apr 2017 00:00:56 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2107f408122f6a1225f6f83289a0cb984d6991deb6a1435df048ac80b3d1a3a6`  
		Last Modified: Tue, 25 Apr 2017 00:00:56 GMT  
		Size: 731.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9003511416b6e42d7f15fae02a3f4174dffebd11ea9b3abf37a2b7193c51ff89`  
		Last Modified: Tue, 25 Apr 2017 00:00:56 GMT  
		Size: 28.4 KB (28378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
