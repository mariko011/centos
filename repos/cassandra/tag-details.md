<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `cassandra`

-	[`cassandra:2.1.16`](#cassandra2116)
-	[`cassandra:2.1`](#cassandra21)
-	[`cassandra:2.2.8`](#cassandra228)
-	[`cassandra:2.2`](#cassandra22)
-	[`cassandra:2`](#cassandra2)
-	[`cassandra:3.0.10`](#cassandra3010)
-	[`cassandra:3.0`](#cassandra30)
-	[`cassandra:3.9`](#cassandra39)
-	[`cassandra:3`](#cassandra3)
-	[`cassandra:latest`](#cassandralatest)

## `cassandra:2.1.16`

```console
$ docker pull cassandra@sha256:024b3889c8f1dd9aba9184b8b90aa77c0a32e6389268777db5f33c4feb68e94e
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.1.16` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167465508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e8b1daa17e3abe1af2235e4e4845ba6416d324bd1f7ce965c8dea10f8b68537`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 20:30:39 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 08 Nov 2016 18:51:31 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 08 Nov 2016 18:51:39 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 18:51:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 14 Nov 2016 22:43:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 14 Nov 2016 22:43:34 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 14 Nov 2016 22:43:37 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 14 Nov 2016 22:43:38 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 14 Nov 2016 22:43:38 GMT
ENV CASSANDRA_VERSION=2.1.16
# Mon, 14 Nov 2016 22:44:31 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 14 Nov 2016 22:44:32 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Mon, 14 Nov 2016 22:44:32 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 14 Nov 2016 22:44:33 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 14 Nov 2016 22:44:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 14 Nov 2016 22:44:34 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 14 Nov 2016 22:44:35 GMT
VOLUME [/var/lib/cassandra]
# Mon, 14 Nov 2016 22:44:35 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 14 Nov 2016 22:44:36 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4bd24d76b787add0667caa04ca4427ac36631f5927588c78adfb51048c6e711`  
		Last Modified: Mon, 07 Nov 2016 20:35:28 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccb1c31767242926e928c13ce22ffab8274502feb989c9dcfc6426bb87a7b6a`  
		Last Modified: Tue, 08 Nov 2016 18:53:44 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7ffd548f7384d0c39921aca017c4e99a0f77980c00ed15bf361c0067d057efe`  
		Last Modified: Tue, 08 Nov 2016 18:53:46 GMT  
		Size: 1.2 MB (1216432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f6138be8041fbb587135a5d96089598f72031228fe643d40d370cd10ad3118`  
		Last Modified: Mon, 14 Nov 2016 22:46:51 GMT  
		Size: 173.7 KB (173685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756363f453c928fd9da1f152db398ecfc6421827ae250449b04bfe5d27885ab0`  
		Last Modified: Mon, 14 Nov 2016 22:46:50 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4190a4ea704e5a231ff21889e2b2e10f578ed9547095bf0fc770aba85899dac3`  
		Last Modified: Mon, 14 Nov 2016 22:46:48 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67156f00f5a211f05d04d88701d20d18a38b2768b40d699250552063ec64450b`  
		Last Modified: Mon, 14 Nov 2016 22:47:08 GMT  
		Size: 114.7 MB (114671995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede31803d2170ef10a498a855afbec30aebabd7fc86bb33779cac033b340ba38`  
		Last Modified: Mon, 14 Nov 2016 22:46:48 GMT  
		Size: 4.7 KB (4656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce8a255e855392e58a78afd339184b5132bec70f50774e5fb471f2a9385f1ed7`  
		Last Modified: Mon, 14 Nov 2016 22:46:48 GMT  
		Size: 723.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40930e2e3b1287e20ceba3e2f185e2dd676788d1e36b989106db3038a9592c8f`  
		Last Modified: Mon, 14 Nov 2016 22:46:48 GMT  
		Size: 20.2 KB (20244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.1`

```console
$ docker pull cassandra@sha256:024b3889c8f1dd9aba9184b8b90aa77c0a32e6389268777db5f33c4feb68e94e
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167465508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e8b1daa17e3abe1af2235e4e4845ba6416d324bd1f7ce965c8dea10f8b68537`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 20:30:39 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 08 Nov 2016 18:51:31 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 08 Nov 2016 18:51:39 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 18:51:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 14 Nov 2016 22:43:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 14 Nov 2016 22:43:34 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 14 Nov 2016 22:43:37 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 14 Nov 2016 22:43:38 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 14 Nov 2016 22:43:38 GMT
ENV CASSANDRA_VERSION=2.1.16
# Mon, 14 Nov 2016 22:44:31 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 14 Nov 2016 22:44:32 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Mon, 14 Nov 2016 22:44:32 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 14 Nov 2016 22:44:33 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 14 Nov 2016 22:44:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 14 Nov 2016 22:44:34 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 14 Nov 2016 22:44:35 GMT
VOLUME [/var/lib/cassandra]
# Mon, 14 Nov 2016 22:44:35 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 14 Nov 2016 22:44:36 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4bd24d76b787add0667caa04ca4427ac36631f5927588c78adfb51048c6e711`  
		Last Modified: Mon, 07 Nov 2016 20:35:28 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccb1c31767242926e928c13ce22ffab8274502feb989c9dcfc6426bb87a7b6a`  
		Last Modified: Tue, 08 Nov 2016 18:53:44 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7ffd548f7384d0c39921aca017c4e99a0f77980c00ed15bf361c0067d057efe`  
		Last Modified: Tue, 08 Nov 2016 18:53:46 GMT  
		Size: 1.2 MB (1216432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f6138be8041fbb587135a5d96089598f72031228fe643d40d370cd10ad3118`  
		Last Modified: Mon, 14 Nov 2016 22:46:51 GMT  
		Size: 173.7 KB (173685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756363f453c928fd9da1f152db398ecfc6421827ae250449b04bfe5d27885ab0`  
		Last Modified: Mon, 14 Nov 2016 22:46:50 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4190a4ea704e5a231ff21889e2b2e10f578ed9547095bf0fc770aba85899dac3`  
		Last Modified: Mon, 14 Nov 2016 22:46:48 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67156f00f5a211f05d04d88701d20d18a38b2768b40d699250552063ec64450b`  
		Last Modified: Mon, 14 Nov 2016 22:47:08 GMT  
		Size: 114.7 MB (114671995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede31803d2170ef10a498a855afbec30aebabd7fc86bb33779cac033b340ba38`  
		Last Modified: Mon, 14 Nov 2016 22:46:48 GMT  
		Size: 4.7 KB (4656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce8a255e855392e58a78afd339184b5132bec70f50774e5fb471f2a9385f1ed7`  
		Last Modified: Mon, 14 Nov 2016 22:46:48 GMT  
		Size: 723.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40930e2e3b1287e20ceba3e2f185e2dd676788d1e36b989106db3038a9592c8f`  
		Last Modified: Mon, 14 Nov 2016 22:46:48 GMT  
		Size: 20.2 KB (20244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2.8`

```console
$ docker pull cassandra@sha256:de3ec1cd2b91b850ebc31a98d465e54a704d6cdd4becbe8a404a987c48e679dd
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.2.8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.8 MB (171784214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18daa90e3197d490f56fef546f8235e9770ec405bd0e6c257190de763000a7ad`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 20:30:39 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 08 Nov 2016 18:51:31 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 08 Nov 2016 18:51:39 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 18:51:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 14 Nov 2016 22:43:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 14 Nov 2016 22:43:34 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 14 Nov 2016 22:43:37 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 14 Nov 2016 22:44:37 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 14 Nov 2016 22:44:38 GMT
ENV CASSANDRA_VERSION=2.2.8
# Mon, 14 Nov 2016 22:45:15 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 14 Nov 2016 22:45:16 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Mon, 14 Nov 2016 22:45:16 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 14 Nov 2016 22:45:17 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 14 Nov 2016 22:45:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 14 Nov 2016 22:45:18 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 14 Nov 2016 22:45:19 GMT
VOLUME [/var/lib/cassandra]
# Mon, 14 Nov 2016 22:45:19 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 14 Nov 2016 22:45:20 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4bd24d76b787add0667caa04ca4427ac36631f5927588c78adfb51048c6e711`  
		Last Modified: Mon, 07 Nov 2016 20:35:28 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccb1c31767242926e928c13ce22ffab8274502feb989c9dcfc6426bb87a7b6a`  
		Last Modified: Tue, 08 Nov 2016 18:53:44 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7ffd548f7384d0c39921aca017c4e99a0f77980c00ed15bf361c0067d057efe`  
		Last Modified: Tue, 08 Nov 2016 18:53:46 GMT  
		Size: 1.2 MB (1216432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f6138be8041fbb587135a5d96089598f72031228fe643d40d370cd10ad3118`  
		Last Modified: Mon, 14 Nov 2016 22:46:51 GMT  
		Size: 173.7 KB (173685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756363f453c928fd9da1f152db398ecfc6421827ae250449b04bfe5d27885ab0`  
		Last Modified: Mon, 14 Nov 2016 22:46:50 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:673cfd2100f3c15b72cdfc97a06eb4cafc08a1b4bdefa8eb1c214f563baf49ff`  
		Last Modified: Mon, 14 Nov 2016 22:47:41 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1450a56db73a52b64ed8e5708cd666414f0809d37f35eb404b24bde2d772cae`  
		Last Modified: Mon, 14 Nov 2016 22:48:02 GMT  
		Size: 119.0 MB (118989772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e22d3303bf7410c6f3640b2055388d1ae883e361ab4388897e04030ee79035`  
		Last Modified: Mon, 14 Nov 2016 22:47:42 GMT  
		Size: 4.6 KB (4627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a535cdb906b50cf94c385bdfd5c54829a002f2b9ce30bdf98768293b9d7f0dec`  
		Last Modified: Mon, 14 Nov 2016 22:47:42 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d59524562129eff3a646b47e8038b4ce47a54a9a3de95e6c7d7aebe918cafd`  
		Last Modified: Mon, 14 Nov 2016 22:47:42 GMT  
		Size: 21.2 KB (21206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2`

```console
$ docker pull cassandra@sha256:de3ec1cd2b91b850ebc31a98d465e54a704d6cdd4becbe8a404a987c48e679dd
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.8 MB (171784214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18daa90e3197d490f56fef546f8235e9770ec405bd0e6c257190de763000a7ad`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 20:30:39 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 08 Nov 2016 18:51:31 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 08 Nov 2016 18:51:39 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 18:51:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 14 Nov 2016 22:43:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 14 Nov 2016 22:43:34 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 14 Nov 2016 22:43:37 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 14 Nov 2016 22:44:37 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 14 Nov 2016 22:44:38 GMT
ENV CASSANDRA_VERSION=2.2.8
# Mon, 14 Nov 2016 22:45:15 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 14 Nov 2016 22:45:16 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Mon, 14 Nov 2016 22:45:16 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 14 Nov 2016 22:45:17 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 14 Nov 2016 22:45:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 14 Nov 2016 22:45:18 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 14 Nov 2016 22:45:19 GMT
VOLUME [/var/lib/cassandra]
# Mon, 14 Nov 2016 22:45:19 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 14 Nov 2016 22:45:20 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4bd24d76b787add0667caa04ca4427ac36631f5927588c78adfb51048c6e711`  
		Last Modified: Mon, 07 Nov 2016 20:35:28 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccb1c31767242926e928c13ce22ffab8274502feb989c9dcfc6426bb87a7b6a`  
		Last Modified: Tue, 08 Nov 2016 18:53:44 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7ffd548f7384d0c39921aca017c4e99a0f77980c00ed15bf361c0067d057efe`  
		Last Modified: Tue, 08 Nov 2016 18:53:46 GMT  
		Size: 1.2 MB (1216432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f6138be8041fbb587135a5d96089598f72031228fe643d40d370cd10ad3118`  
		Last Modified: Mon, 14 Nov 2016 22:46:51 GMT  
		Size: 173.7 KB (173685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756363f453c928fd9da1f152db398ecfc6421827ae250449b04bfe5d27885ab0`  
		Last Modified: Mon, 14 Nov 2016 22:46:50 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:673cfd2100f3c15b72cdfc97a06eb4cafc08a1b4bdefa8eb1c214f563baf49ff`  
		Last Modified: Mon, 14 Nov 2016 22:47:41 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1450a56db73a52b64ed8e5708cd666414f0809d37f35eb404b24bde2d772cae`  
		Last Modified: Mon, 14 Nov 2016 22:48:02 GMT  
		Size: 119.0 MB (118989772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e22d3303bf7410c6f3640b2055388d1ae883e361ab4388897e04030ee79035`  
		Last Modified: Mon, 14 Nov 2016 22:47:42 GMT  
		Size: 4.6 KB (4627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a535cdb906b50cf94c385bdfd5c54829a002f2b9ce30bdf98768293b9d7f0dec`  
		Last Modified: Mon, 14 Nov 2016 22:47:42 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d59524562129eff3a646b47e8038b4ce47a54a9a3de95e6c7d7aebe918cafd`  
		Last Modified: Mon, 14 Nov 2016 22:47:42 GMT  
		Size: 21.2 KB (21206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2`

```console
$ docker pull cassandra@sha256:de3ec1cd2b91b850ebc31a98d465e54a704d6cdd4becbe8a404a987c48e679dd
```

-	Platforms:
	-	linux; amd64

### `cassandra:2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.8 MB (171784214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18daa90e3197d490f56fef546f8235e9770ec405bd0e6c257190de763000a7ad`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 20:30:39 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 08 Nov 2016 18:51:31 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 08 Nov 2016 18:51:39 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 18:51:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 14 Nov 2016 22:43:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 14 Nov 2016 22:43:34 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 14 Nov 2016 22:43:37 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 14 Nov 2016 22:44:37 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 14 Nov 2016 22:44:38 GMT
ENV CASSANDRA_VERSION=2.2.8
# Mon, 14 Nov 2016 22:45:15 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 14 Nov 2016 22:45:16 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Mon, 14 Nov 2016 22:45:16 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 14 Nov 2016 22:45:17 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 14 Nov 2016 22:45:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 14 Nov 2016 22:45:18 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 14 Nov 2016 22:45:19 GMT
VOLUME [/var/lib/cassandra]
# Mon, 14 Nov 2016 22:45:19 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 14 Nov 2016 22:45:20 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4bd24d76b787add0667caa04ca4427ac36631f5927588c78adfb51048c6e711`  
		Last Modified: Mon, 07 Nov 2016 20:35:28 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccb1c31767242926e928c13ce22ffab8274502feb989c9dcfc6426bb87a7b6a`  
		Last Modified: Tue, 08 Nov 2016 18:53:44 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7ffd548f7384d0c39921aca017c4e99a0f77980c00ed15bf361c0067d057efe`  
		Last Modified: Tue, 08 Nov 2016 18:53:46 GMT  
		Size: 1.2 MB (1216432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f6138be8041fbb587135a5d96089598f72031228fe643d40d370cd10ad3118`  
		Last Modified: Mon, 14 Nov 2016 22:46:51 GMT  
		Size: 173.7 KB (173685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756363f453c928fd9da1f152db398ecfc6421827ae250449b04bfe5d27885ab0`  
		Last Modified: Mon, 14 Nov 2016 22:46:50 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:673cfd2100f3c15b72cdfc97a06eb4cafc08a1b4bdefa8eb1c214f563baf49ff`  
		Last Modified: Mon, 14 Nov 2016 22:47:41 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1450a56db73a52b64ed8e5708cd666414f0809d37f35eb404b24bde2d772cae`  
		Last Modified: Mon, 14 Nov 2016 22:48:02 GMT  
		Size: 119.0 MB (118989772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e22d3303bf7410c6f3640b2055388d1ae883e361ab4388897e04030ee79035`  
		Last Modified: Mon, 14 Nov 2016 22:47:42 GMT  
		Size: 4.6 KB (4627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a535cdb906b50cf94c385bdfd5c54829a002f2b9ce30bdf98768293b9d7f0dec`  
		Last Modified: Mon, 14 Nov 2016 22:47:42 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d59524562129eff3a646b47e8038b4ce47a54a9a3de95e6c7d7aebe918cafd`  
		Last Modified: Mon, 14 Nov 2016 22:47:42 GMT  
		Size: 21.2 KB (21206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0.10`

**does not exist** (yet?)

## `cassandra:3.0`

```console
$ docker pull cassandra@sha256:32660b3d988a33f3bdd9f191e7dbb11d3e7ba4293c07b2923380dc3cf720efbf
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.4 MB (157404690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bee4b1aa9fa707d578cff6a48eeaaf8405166deb3694831de1896a6a02f73e2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 20:30:39 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 08 Nov 2016 18:51:31 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 08 Nov 2016 18:51:39 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 18:51:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 14 Nov 2016 22:43:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 14 Nov 2016 22:43:34 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 14 Nov 2016 22:43:37 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 14 Nov 2016 22:45:21 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 14 Nov 2016 22:45:22 GMT
ENV CASSANDRA_VERSION=3.0.9
# Mon, 14 Nov 2016 22:45:51 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 14 Nov 2016 22:45:52 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Mon, 14 Nov 2016 22:45:53 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 14 Nov 2016 22:45:53 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 14 Nov 2016 22:45:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 14 Nov 2016 22:45:55 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 14 Nov 2016 22:45:55 GMT
VOLUME [/var/lib/cassandra]
# Mon, 14 Nov 2016 22:45:56 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 14 Nov 2016 22:45:56 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4bd24d76b787add0667caa04ca4427ac36631f5927588c78adfb51048c6e711`  
		Last Modified: Mon, 07 Nov 2016 20:35:28 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccb1c31767242926e928c13ce22ffab8274502feb989c9dcfc6426bb87a7b6a`  
		Last Modified: Tue, 08 Nov 2016 18:53:44 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7ffd548f7384d0c39921aca017c4e99a0f77980c00ed15bf361c0067d057efe`  
		Last Modified: Tue, 08 Nov 2016 18:53:46 GMT  
		Size: 1.2 MB (1216432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f6138be8041fbb587135a5d96089598f72031228fe643d40d370cd10ad3118`  
		Last Modified: Mon, 14 Nov 2016 22:46:51 GMT  
		Size: 173.7 KB (173685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756363f453c928fd9da1f152db398ecfc6421827ae250449b04bfe5d27885ab0`  
		Last Modified: Mon, 14 Nov 2016 22:46:50 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075f05dfd2b80a1a0ad3342219bf2a7ccfa72c0f75c2aa9f106b3af388a9da81`  
		Last Modified: Mon, 14 Nov 2016 22:48:52 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88177094a5bb4a6708f4025341b7f723dfe1ab84a134571e74b06a4fd96da4ef`  
		Last Modified: Mon, 14 Nov 2016 22:49:26 GMT  
		Size: 104.6 MB (104607653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e1597ddd7161e3f84091d9f38a49afc2b7fa5937ef5eb459c3e4dfbed9d72f`  
		Last Modified: Mon, 14 Nov 2016 22:48:53 GMT  
		Size: 4.7 KB (4697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:778cb03b7d8d6a2163ee49165ae837712ed75a0d29b1a7c0d5217b7e7ae0527a`  
		Last Modified: Mon, 14 Nov 2016 22:48:51 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d955d531f7d28750f56a11fc3de219213e679995e7937f765e00dfd3458616`  
		Last Modified: Mon, 14 Nov 2016 22:48:51 GMT  
		Size: 23.7 KB (23727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.9`

```console
$ docker pull cassandra@sha256:f5b1391b457ead432dc05d34797212f038bd9bd4f0b0260d90ce74e53cbe7ca9
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.9` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.0 MB (161956595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5782481efe9b62b1eea16ec8748d2ca577603e5600a60c29521910c38233718`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 20:30:39 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 08 Nov 2016 18:51:31 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 08 Nov 2016 18:51:39 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 18:51:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 14 Nov 2016 22:43:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 14 Nov 2016 22:43:34 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 14 Nov 2016 22:43:37 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 14 Nov 2016 22:45:57 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 39x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 14 Nov 2016 22:45:58 GMT
ENV CASSANDRA_VERSION=3.9
# Mon, 14 Nov 2016 22:46:31 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 14 Nov 2016 22:46:32 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Mon, 14 Nov 2016 22:46:33 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 14 Nov 2016 22:46:33 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 14 Nov 2016 22:46:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 14 Nov 2016 22:46:34 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 14 Nov 2016 22:46:35 GMT
VOLUME [/var/lib/cassandra]
# Mon, 14 Nov 2016 22:46:35 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 14 Nov 2016 22:46:36 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4bd24d76b787add0667caa04ca4427ac36631f5927588c78adfb51048c6e711`  
		Last Modified: Mon, 07 Nov 2016 20:35:28 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccb1c31767242926e928c13ce22ffab8274502feb989c9dcfc6426bb87a7b6a`  
		Last Modified: Tue, 08 Nov 2016 18:53:44 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7ffd548f7384d0c39921aca017c4e99a0f77980c00ed15bf361c0067d057efe`  
		Last Modified: Tue, 08 Nov 2016 18:53:46 GMT  
		Size: 1.2 MB (1216432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f6138be8041fbb587135a5d96089598f72031228fe643d40d370cd10ad3118`  
		Last Modified: Mon, 14 Nov 2016 22:46:51 GMT  
		Size: 173.7 KB (173685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756363f453c928fd9da1f152db398ecfc6421827ae250449b04bfe5d27885ab0`  
		Last Modified: Mon, 14 Nov 2016 22:46:50 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26258521e648f3947cc9ce189a29ddb4ea00c88df754f8d15a48f2619b9f74da`  
		Last Modified: Mon, 14 Nov 2016 22:50:06 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb207e348163b6e437a4e16ecf47546799be003e51267782e261d006457453fb`  
		Last Modified: Mon, 14 Nov 2016 22:50:25 GMT  
		Size: 109.2 MB (109156317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9a7ac16b1d5331314095d7e46e2ee3392789caa93514cb74aef97e708420db`  
		Last Modified: Mon, 14 Nov 2016 22:50:01 GMT  
		Size: 4.4 KB (4397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e0632fe1f146470a3f7216b41a6902ba74989340ad8c9873c7481804aadcc7`  
		Last Modified: Mon, 14 Nov 2016 22:50:02 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba775b0b41f4ccab25c02332345240d96fb3b7cf577c04e14f5eef0d0acc08c7`  
		Last Modified: Mon, 14 Nov 2016 22:50:01 GMT  
		Size: 27.3 KB (27268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3`

```console
$ docker pull cassandra@sha256:f5b1391b457ead432dc05d34797212f038bd9bd4f0b0260d90ce74e53cbe7ca9
```

-	Platforms:
	-	linux; amd64

### `cassandra:3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.0 MB (161956595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5782481efe9b62b1eea16ec8748d2ca577603e5600a60c29521910c38233718`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 20:30:39 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 08 Nov 2016 18:51:31 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 08 Nov 2016 18:51:39 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 18:51:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 14 Nov 2016 22:43:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 14 Nov 2016 22:43:34 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 14 Nov 2016 22:43:37 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 14 Nov 2016 22:45:57 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 39x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 14 Nov 2016 22:45:58 GMT
ENV CASSANDRA_VERSION=3.9
# Mon, 14 Nov 2016 22:46:31 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 14 Nov 2016 22:46:32 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Mon, 14 Nov 2016 22:46:33 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 14 Nov 2016 22:46:33 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 14 Nov 2016 22:46:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 14 Nov 2016 22:46:34 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 14 Nov 2016 22:46:35 GMT
VOLUME [/var/lib/cassandra]
# Mon, 14 Nov 2016 22:46:35 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 14 Nov 2016 22:46:36 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4bd24d76b787add0667caa04ca4427ac36631f5927588c78adfb51048c6e711`  
		Last Modified: Mon, 07 Nov 2016 20:35:28 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccb1c31767242926e928c13ce22ffab8274502feb989c9dcfc6426bb87a7b6a`  
		Last Modified: Tue, 08 Nov 2016 18:53:44 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7ffd548f7384d0c39921aca017c4e99a0f77980c00ed15bf361c0067d057efe`  
		Last Modified: Tue, 08 Nov 2016 18:53:46 GMT  
		Size: 1.2 MB (1216432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f6138be8041fbb587135a5d96089598f72031228fe643d40d370cd10ad3118`  
		Last Modified: Mon, 14 Nov 2016 22:46:51 GMT  
		Size: 173.7 KB (173685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756363f453c928fd9da1f152db398ecfc6421827ae250449b04bfe5d27885ab0`  
		Last Modified: Mon, 14 Nov 2016 22:46:50 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26258521e648f3947cc9ce189a29ddb4ea00c88df754f8d15a48f2619b9f74da`  
		Last Modified: Mon, 14 Nov 2016 22:50:06 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb207e348163b6e437a4e16ecf47546799be003e51267782e261d006457453fb`  
		Last Modified: Mon, 14 Nov 2016 22:50:25 GMT  
		Size: 109.2 MB (109156317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9a7ac16b1d5331314095d7e46e2ee3392789caa93514cb74aef97e708420db`  
		Last Modified: Mon, 14 Nov 2016 22:50:01 GMT  
		Size: 4.4 KB (4397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e0632fe1f146470a3f7216b41a6902ba74989340ad8c9873c7481804aadcc7`  
		Last Modified: Mon, 14 Nov 2016 22:50:02 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba775b0b41f4ccab25c02332345240d96fb3b7cf577c04e14f5eef0d0acc08c7`  
		Last Modified: Mon, 14 Nov 2016 22:50:01 GMT  
		Size: 27.3 KB (27268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:latest`

```console
$ docker pull cassandra@sha256:f5b1391b457ead432dc05d34797212f038bd9bd4f0b0260d90ce74e53cbe7ca9
```

-	Platforms:
	-	linux; amd64

### `cassandra:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.0 MB (161956595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5782481efe9b62b1eea16ec8748d2ca577603e5600a60c29521910c38233718`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 20:30:39 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 08 Nov 2016 18:51:31 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 08 Nov 2016 18:51:39 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 18:51:58 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 14 Nov 2016 22:43:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 14 Nov 2016 22:43:34 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 14 Nov 2016 22:43:37 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Mon, 14 Nov 2016 22:45:57 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 39x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 14 Nov 2016 22:45:58 GMT
ENV CASSANDRA_VERSION=3.9
# Mon, 14 Nov 2016 22:46:31 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 14 Nov 2016 22:46:32 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Mon, 14 Nov 2016 22:46:33 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 14 Nov 2016 22:46:33 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 14 Nov 2016 22:46:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 14 Nov 2016 22:46:34 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 14 Nov 2016 22:46:35 GMT
VOLUME [/var/lib/cassandra]
# Mon, 14 Nov 2016 22:46:35 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 14 Nov 2016 22:46:36 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4bd24d76b787add0667caa04ca4427ac36631f5927588c78adfb51048c6e711`  
		Last Modified: Mon, 07 Nov 2016 20:35:28 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccb1c31767242926e928c13ce22ffab8274502feb989c9dcfc6426bb87a7b6a`  
		Last Modified: Tue, 08 Nov 2016 18:53:44 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7ffd548f7384d0c39921aca017c4e99a0f77980c00ed15bf361c0067d057efe`  
		Last Modified: Tue, 08 Nov 2016 18:53:46 GMT  
		Size: 1.2 MB (1216432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f6138be8041fbb587135a5d96089598f72031228fe643d40d370cd10ad3118`  
		Last Modified: Mon, 14 Nov 2016 22:46:51 GMT  
		Size: 173.7 KB (173685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756363f453c928fd9da1f152db398ecfc6421827ae250449b04bfe5d27885ab0`  
		Last Modified: Mon, 14 Nov 2016 22:46:50 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26258521e648f3947cc9ce189a29ddb4ea00c88df754f8d15a48f2619b9f74da`  
		Last Modified: Mon, 14 Nov 2016 22:50:06 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb207e348163b6e437a4e16ecf47546799be003e51267782e261d006457453fb`  
		Last Modified: Mon, 14 Nov 2016 22:50:25 GMT  
		Size: 109.2 MB (109156317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9a7ac16b1d5331314095d7e46e2ee3392789caa93514cb74aef97e708420db`  
		Last Modified: Mon, 14 Nov 2016 22:50:01 GMT  
		Size: 4.4 KB (4397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e0632fe1f146470a3f7216b41a6902ba74989340ad8c9873c7481804aadcc7`  
		Last Modified: Mon, 14 Nov 2016 22:50:02 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba775b0b41f4ccab25c02332345240d96fb3b7cf577c04e14f5eef0d0acc08c7`  
		Last Modified: Mon, 14 Nov 2016 22:50:01 GMT  
		Size: 27.3 KB (27268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
