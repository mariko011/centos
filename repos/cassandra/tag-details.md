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
$ docker pull cassandra@sha256:9ae9c9acb9c651216b6b42cac15d669cec1eb43ce0676704d939f7cb56a9c25e
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.1.16` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167290772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80cf6949bd1fc2bea29b0a549f85a61b21a5c3155cd658210f8befa09a3f8d24`
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
# Tue, 08 Nov 2016 18:51:58 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 08 Nov 2016 18:52:01 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 08 Nov 2016 18:54:43 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 08 Nov 2016 18:54:44 GMT
ENV CASSANDRA_VERSION=2.1.16
# Tue, 08 Nov 2016 18:55:56 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:55:57 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 08 Nov 2016 18:55:58 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 08 Nov 2016 18:55:58 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 08 Nov 2016 18:55:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 18:55:59 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 08 Nov 2016 18:56:00 GMT
VOLUME [/var/lib/cassandra]
# Tue, 08 Nov 2016 18:56:00 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 08 Nov 2016 18:56:00 GMT
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
	-	`sha256:09117fded1bd7373bf0060f14acfeff113210de435125edc82ec28cab1819f78`  
		Last Modified: Tue, 08 Nov 2016 18:53:44 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dcc8be9c1de0780dc18b326544bd6e383403fc3a54ccf4f82e226d5ab123550`  
		Last Modified: Tue, 08 Nov 2016 18:56:15 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:903fae0841a11663b5ee4f5ba258865575136a97f3d4edd7b69665adf05d558e`  
		Last Modified: Tue, 08 Nov 2016 18:56:31 GMT  
		Size: 114.7 MB (114670949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df40ab7d1a41b41157f28013c988f0c782f1faa8127786a0f00b42bc280b3a`  
		Last Modified: Tue, 08 Nov 2016 18:56:12 GMT  
		Size: 4.7 KB (4655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3bfe8f876702c80fb68cbabdce6beffdcb00845010b522faa74dda214d9e3f`  
		Last Modified: Tue, 08 Nov 2016 18:56:12 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe149449d1b59ac66968eba59a182e6169543c2acb0349c6ef10e8738108f67`  
		Last Modified: Tue, 08 Nov 2016 18:56:12 GMT  
		Size: 20.2 KB (20240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.1`

```console
$ docker pull cassandra@sha256:9ae9c9acb9c651216b6b42cac15d669cec1eb43ce0676704d939f7cb56a9c25e
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167290772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80cf6949bd1fc2bea29b0a549f85a61b21a5c3155cd658210f8befa09a3f8d24`
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
# Tue, 08 Nov 2016 18:51:58 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 08 Nov 2016 18:52:01 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 08 Nov 2016 18:54:43 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 08 Nov 2016 18:54:44 GMT
ENV CASSANDRA_VERSION=2.1.16
# Tue, 08 Nov 2016 18:55:56 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:55:57 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 08 Nov 2016 18:55:58 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 08 Nov 2016 18:55:58 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 08 Nov 2016 18:55:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 18:55:59 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 08 Nov 2016 18:56:00 GMT
VOLUME [/var/lib/cassandra]
# Tue, 08 Nov 2016 18:56:00 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 08 Nov 2016 18:56:00 GMT
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
	-	`sha256:09117fded1bd7373bf0060f14acfeff113210de435125edc82ec28cab1819f78`  
		Last Modified: Tue, 08 Nov 2016 18:53:44 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dcc8be9c1de0780dc18b326544bd6e383403fc3a54ccf4f82e226d5ab123550`  
		Last Modified: Tue, 08 Nov 2016 18:56:15 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:903fae0841a11663b5ee4f5ba258865575136a97f3d4edd7b69665adf05d558e`  
		Last Modified: Tue, 08 Nov 2016 18:56:31 GMT  
		Size: 114.7 MB (114670949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63df40ab7d1a41b41157f28013c988f0c782f1faa8127786a0f00b42bc280b3a`  
		Last Modified: Tue, 08 Nov 2016 18:56:12 GMT  
		Size: 4.7 KB (4655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3bfe8f876702c80fb68cbabdce6beffdcb00845010b522faa74dda214d9e3f`  
		Last Modified: Tue, 08 Nov 2016 18:56:12 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe149449d1b59ac66968eba59a182e6169543c2acb0349c6ef10e8738108f67`  
		Last Modified: Tue, 08 Nov 2016 18:56:12 GMT  
		Size: 20.2 KB (20240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2.8`

```console
$ docker pull cassandra@sha256:9cbc8ca8fa6dae32d302240006dc7abfe164e8db4970523581b1366a15cc5750
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.2.8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.6 MB (171608400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c2f608e06c26b32e8367a15ec1c2cbb4779a1f970137de3628951aeaee6b3fb`
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
# Tue, 08 Nov 2016 18:51:58 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 08 Nov 2016 18:52:01 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 08 Nov 2016 18:52:02 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 08 Nov 2016 18:52:03 GMT
ENV CASSANDRA_VERSION=2.2.8
# Tue, 08 Nov 2016 18:53:25 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:53:26 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 08 Nov 2016 18:53:27 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 08 Nov 2016 18:53:27 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 08 Nov 2016 18:53:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 18:53:29 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 08 Nov 2016 18:53:29 GMT
VOLUME [/var/lib/cassandra]
# Tue, 08 Nov 2016 18:53:29 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 08 Nov 2016 18:53:30 GMT
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
	-	`sha256:09117fded1bd7373bf0060f14acfeff113210de435125edc82ec28cab1819f78`  
		Last Modified: Tue, 08 Nov 2016 18:53:44 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110e97e70ffd0661e81329f50bea43d6dd646580688b49091349d26608c85759`  
		Last Modified: Tue, 08 Nov 2016 18:53:41 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97fe7eb5ed5b61bda99df0050c4ca36fa308cdcaf6fd67e896be05fcfba5abd`  
		Last Modified: Tue, 08 Nov 2016 18:54:05 GMT  
		Size: 119.0 MB (118987642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9b766262c5f0dd473eab52ee35ebbdbeda31efb2baa8d8209e9d0d3b8b15ce`  
		Last Modified: Tue, 08 Nov 2016 18:53:42 GMT  
		Size: 4.6 KB (4627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca8d9efb69a615b277353c8ab0f20f85ccbaa402b9ef42c00128d4e3f0355822`  
		Last Modified: Tue, 08 Nov 2016 18:53:42 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1c587f44d5b1665adb326711d965e4d8559f37a1c2ed97ad3af499947fec23`  
		Last Modified: Tue, 08 Nov 2016 18:53:41 GMT  
		Size: 21.2 KB (21204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2`

```console
$ docker pull cassandra@sha256:9cbc8ca8fa6dae32d302240006dc7abfe164e8db4970523581b1366a15cc5750
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.6 MB (171608400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c2f608e06c26b32e8367a15ec1c2cbb4779a1f970137de3628951aeaee6b3fb`
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
# Tue, 08 Nov 2016 18:51:58 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 08 Nov 2016 18:52:01 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 08 Nov 2016 18:52:02 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 08 Nov 2016 18:52:03 GMT
ENV CASSANDRA_VERSION=2.2.8
# Tue, 08 Nov 2016 18:53:25 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:53:26 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 08 Nov 2016 18:53:27 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 08 Nov 2016 18:53:27 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 08 Nov 2016 18:53:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 18:53:29 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 08 Nov 2016 18:53:29 GMT
VOLUME [/var/lib/cassandra]
# Tue, 08 Nov 2016 18:53:29 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 08 Nov 2016 18:53:30 GMT
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
	-	`sha256:09117fded1bd7373bf0060f14acfeff113210de435125edc82ec28cab1819f78`  
		Last Modified: Tue, 08 Nov 2016 18:53:44 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110e97e70ffd0661e81329f50bea43d6dd646580688b49091349d26608c85759`  
		Last Modified: Tue, 08 Nov 2016 18:53:41 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97fe7eb5ed5b61bda99df0050c4ca36fa308cdcaf6fd67e896be05fcfba5abd`  
		Last Modified: Tue, 08 Nov 2016 18:54:05 GMT  
		Size: 119.0 MB (118987642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9b766262c5f0dd473eab52ee35ebbdbeda31efb2baa8d8209e9d0d3b8b15ce`  
		Last Modified: Tue, 08 Nov 2016 18:53:42 GMT  
		Size: 4.6 KB (4627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca8d9efb69a615b277353c8ab0f20f85ccbaa402b9ef42c00128d4e3f0355822`  
		Last Modified: Tue, 08 Nov 2016 18:53:42 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1c587f44d5b1665adb326711d965e4d8559f37a1c2ed97ad3af499947fec23`  
		Last Modified: Tue, 08 Nov 2016 18:53:41 GMT  
		Size: 21.2 KB (21204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2`

```console
$ docker pull cassandra@sha256:9cbc8ca8fa6dae32d302240006dc7abfe164e8db4970523581b1366a15cc5750
```

-	Platforms:
	-	linux; amd64

### `cassandra:2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.6 MB (171608400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c2f608e06c26b32e8367a15ec1c2cbb4779a1f970137de3628951aeaee6b3fb`
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
# Tue, 08 Nov 2016 18:51:58 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 08 Nov 2016 18:52:01 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 08 Nov 2016 18:52:02 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 08 Nov 2016 18:52:03 GMT
ENV CASSANDRA_VERSION=2.2.8
# Tue, 08 Nov 2016 18:53:25 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:53:26 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 08 Nov 2016 18:53:27 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 08 Nov 2016 18:53:27 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 08 Nov 2016 18:53:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 18:53:29 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 08 Nov 2016 18:53:29 GMT
VOLUME [/var/lib/cassandra]
# Tue, 08 Nov 2016 18:53:29 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 08 Nov 2016 18:53:30 GMT
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
	-	`sha256:09117fded1bd7373bf0060f14acfeff113210de435125edc82ec28cab1819f78`  
		Last Modified: Tue, 08 Nov 2016 18:53:44 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110e97e70ffd0661e81329f50bea43d6dd646580688b49091349d26608c85759`  
		Last Modified: Tue, 08 Nov 2016 18:53:41 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97fe7eb5ed5b61bda99df0050c4ca36fa308cdcaf6fd67e896be05fcfba5abd`  
		Last Modified: Tue, 08 Nov 2016 18:54:05 GMT  
		Size: 119.0 MB (118987642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9b766262c5f0dd473eab52ee35ebbdbeda31efb2baa8d8209e9d0d3b8b15ce`  
		Last Modified: Tue, 08 Nov 2016 18:53:42 GMT  
		Size: 4.6 KB (4627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca8d9efb69a615b277353c8ab0f20f85ccbaa402b9ef42c00128d4e3f0355822`  
		Last Modified: Tue, 08 Nov 2016 18:53:42 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1c587f44d5b1665adb326711d965e4d8559f37a1c2ed97ad3af499947fec23`  
		Last Modified: Tue, 08 Nov 2016 18:53:41 GMT  
		Size: 21.2 KB (21204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0.9`

```console
$ docker pull cassandra@sha256:335063ec9b600c3b176d11006791a178e6be3f9d0b6d76afc5134f6ed01e47fd
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.0.9` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.2 MB (157231158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bb0e2c0eeda116674efd3b49f8613703872e1d7b2dae7baca7123455c184492`
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
# Tue, 08 Nov 2016 18:51:58 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 08 Nov 2016 18:52:01 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 08 Nov 2016 18:59:03 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 08 Nov 2016 18:59:03 GMT
ENV CASSANDRA_VERSION=3.0.9
# Tue, 08 Nov 2016 18:59:41 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:59:42 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 08 Nov 2016 18:59:43 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 08 Nov 2016 18:59:43 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 08 Nov 2016 18:59:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 18:59:45 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 08 Nov 2016 18:59:45 GMT
VOLUME [/var/lib/cassandra]
# Tue, 08 Nov 2016 18:59:45 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 08 Nov 2016 18:59:46 GMT
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
	-	`sha256:09117fded1bd7373bf0060f14acfeff113210de435125edc82ec28cab1819f78`  
		Last Modified: Tue, 08 Nov 2016 18:53:44 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed019377fa53c8237f4f26729f2c18234e7223ea482a494cf7bf6af54462591`  
		Last Modified: Tue, 08 Nov 2016 19:00:00 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2545cdc6d6b777a924d0c1e20bd4e1b3c838e26c72d27e2e88639e118bff6f37`  
		Last Modified: Tue, 08 Nov 2016 19:00:22 GMT  
		Size: 104.6 MB (104607808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1604c0ca3c62f759ab7ab9450976cb5279ba956e7b29e83b6002394cac1b8aa6`  
		Last Modified: Tue, 08 Nov 2016 18:59:57 GMT  
		Size: 4.7 KB (4698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27aa7a3ab705e82c3f9be508bba47e31b8babe34646b05d9f8a677e2280b687b`  
		Last Modified: Tue, 08 Nov 2016 18:59:58 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aeb8c2e0765ec048e914780f69248b9b5467afc4a2c91f6a2232742175e0611`  
		Last Modified: Tue, 08 Nov 2016 18:59:57 GMT  
		Size: 23.7 KB (23726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0`

```console
$ docker pull cassandra@sha256:335063ec9b600c3b176d11006791a178e6be3f9d0b6d76afc5134f6ed01e47fd
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.2 MB (157231158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bb0e2c0eeda116674efd3b49f8613703872e1d7b2dae7baca7123455c184492`
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
# Tue, 08 Nov 2016 18:51:58 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 08 Nov 2016 18:52:01 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 08 Nov 2016 18:59:03 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 08 Nov 2016 18:59:03 GMT
ENV CASSANDRA_VERSION=3.0.9
# Tue, 08 Nov 2016 18:59:41 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:59:42 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 08 Nov 2016 18:59:43 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 08 Nov 2016 18:59:43 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 08 Nov 2016 18:59:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 18:59:45 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 08 Nov 2016 18:59:45 GMT
VOLUME [/var/lib/cassandra]
# Tue, 08 Nov 2016 18:59:45 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 08 Nov 2016 18:59:46 GMT
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
	-	`sha256:09117fded1bd7373bf0060f14acfeff113210de435125edc82ec28cab1819f78`  
		Last Modified: Tue, 08 Nov 2016 18:53:44 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed019377fa53c8237f4f26729f2c18234e7223ea482a494cf7bf6af54462591`  
		Last Modified: Tue, 08 Nov 2016 19:00:00 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2545cdc6d6b777a924d0c1e20bd4e1b3c838e26c72d27e2e88639e118bff6f37`  
		Last Modified: Tue, 08 Nov 2016 19:00:22 GMT  
		Size: 104.6 MB (104607808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1604c0ca3c62f759ab7ab9450976cb5279ba956e7b29e83b6002394cac1b8aa6`  
		Last Modified: Tue, 08 Nov 2016 18:59:57 GMT  
		Size: 4.7 KB (4698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27aa7a3ab705e82c3f9be508bba47e31b8babe34646b05d9f8a677e2280b687b`  
		Last Modified: Tue, 08 Nov 2016 18:59:58 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aeb8c2e0765ec048e914780f69248b9b5467afc4a2c91f6a2232742175e0611`  
		Last Modified: Tue, 08 Nov 2016 18:59:57 GMT  
		Size: 23.7 KB (23726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.9`

```console
$ docker pull cassandra@sha256:183389ac8542e14a4bcaa7ef58f307501506263bca1b6c8462538c0f6408102b
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.9` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.8 MB (161783728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:819c6fff05724dc9aab13d97976b8ccedc3109a8f778f4a51f01bc217b6a74a7`
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
# Tue, 08 Nov 2016 18:51:58 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 08 Nov 2016 18:52:01 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 08 Nov 2016 18:57:04 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 39x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 08 Nov 2016 18:57:04 GMT
ENV CASSANDRA_VERSION=3.9
# Tue, 08 Nov 2016 18:57:42 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:57:44 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 08 Nov 2016 18:57:45 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 08 Nov 2016 18:57:45 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 08 Nov 2016 18:57:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 18:57:46 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 08 Nov 2016 18:57:47 GMT
VOLUME [/var/lib/cassandra]
# Tue, 08 Nov 2016 18:57:47 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 08 Nov 2016 18:57:48 GMT
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
	-	`sha256:09117fded1bd7373bf0060f14acfeff113210de435125edc82ec28cab1819f78`  
		Last Modified: Tue, 08 Nov 2016 18:53:44 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d74aa324f865a1c371f28bc0a19db1385ee2ea2c7abc4bc039ce20fabea28b99`  
		Last Modified: Tue, 08 Nov 2016 18:57:59 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854d760fd0ab7344bae0502ef4eea13708e6c51a2a9fc9122c492c4bef98801c`  
		Last Modified: Tue, 08 Nov 2016 18:58:21 GMT  
		Size: 109.2 MB (109157140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be5cf4da17c414bccb93310ba2ad130170e588de2f03fd9e4571d15c4cdd44b`  
		Last Modified: Tue, 08 Nov 2016 18:57:58 GMT  
		Size: 4.4 KB (4394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1287e9e8fed3c93a2081f88523819d2b067d7134ab60f7c37751ffc224b40dd`  
		Last Modified: Tue, 08 Nov 2016 18:57:59 GMT  
		Size: 719.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ebac432e328473121f43d8d85a91a54d4a9a26fbc19a4a5d95760cfd56dee2c`  
		Last Modified: Tue, 08 Nov 2016 18:58:00 GMT  
		Size: 27.3 KB (27270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3`

```console
$ docker pull cassandra@sha256:183389ac8542e14a4bcaa7ef58f307501506263bca1b6c8462538c0f6408102b
```

-	Platforms:
	-	linux; amd64

### `cassandra:3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.8 MB (161783728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:819c6fff05724dc9aab13d97976b8ccedc3109a8f778f4a51f01bc217b6a74a7`
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
# Tue, 08 Nov 2016 18:51:58 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 08 Nov 2016 18:52:01 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 08 Nov 2016 18:57:04 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 39x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 08 Nov 2016 18:57:04 GMT
ENV CASSANDRA_VERSION=3.9
# Tue, 08 Nov 2016 18:57:42 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:57:44 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 08 Nov 2016 18:57:45 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 08 Nov 2016 18:57:45 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 08 Nov 2016 18:57:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 18:57:46 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 08 Nov 2016 18:57:47 GMT
VOLUME [/var/lib/cassandra]
# Tue, 08 Nov 2016 18:57:47 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 08 Nov 2016 18:57:48 GMT
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
	-	`sha256:09117fded1bd7373bf0060f14acfeff113210de435125edc82ec28cab1819f78`  
		Last Modified: Tue, 08 Nov 2016 18:53:44 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d74aa324f865a1c371f28bc0a19db1385ee2ea2c7abc4bc039ce20fabea28b99`  
		Last Modified: Tue, 08 Nov 2016 18:57:59 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854d760fd0ab7344bae0502ef4eea13708e6c51a2a9fc9122c492c4bef98801c`  
		Last Modified: Tue, 08 Nov 2016 18:58:21 GMT  
		Size: 109.2 MB (109157140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be5cf4da17c414bccb93310ba2ad130170e588de2f03fd9e4571d15c4cdd44b`  
		Last Modified: Tue, 08 Nov 2016 18:57:58 GMT  
		Size: 4.4 KB (4394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1287e9e8fed3c93a2081f88523819d2b067d7134ab60f7c37751ffc224b40dd`  
		Last Modified: Tue, 08 Nov 2016 18:57:59 GMT  
		Size: 719.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ebac432e328473121f43d8d85a91a54d4a9a26fbc19a4a5d95760cfd56dee2c`  
		Last Modified: Tue, 08 Nov 2016 18:58:00 GMT  
		Size: 27.3 KB (27270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:latest`

```console
$ docker pull cassandra@sha256:183389ac8542e14a4bcaa7ef58f307501506263bca1b6c8462538c0f6408102b
```

-	Platforms:
	-	linux; amd64

### `cassandra:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.8 MB (161783728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:819c6fff05724dc9aab13d97976b8ccedc3109a8f778f4a51f01bc217b6a74a7`
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
# Tue, 08 Nov 2016 18:51:58 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 08 Nov 2016 18:52:01 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 08 Nov 2016 18:57:04 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 39x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 08 Nov 2016 18:57:04 GMT
ENV CASSANDRA_VERSION=3.9
# Tue, 08 Nov 2016 18:57:42 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:57:44 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 08 Nov 2016 18:57:45 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 08 Nov 2016 18:57:45 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 08 Nov 2016 18:57:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Nov 2016 18:57:46 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 08 Nov 2016 18:57:47 GMT
VOLUME [/var/lib/cassandra]
# Tue, 08 Nov 2016 18:57:47 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 08 Nov 2016 18:57:48 GMT
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
	-	`sha256:09117fded1bd7373bf0060f14acfeff113210de435125edc82ec28cab1819f78`  
		Last Modified: Tue, 08 Nov 2016 18:53:44 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d74aa324f865a1c371f28bc0a19db1385ee2ea2c7abc4bc039ce20fabea28b99`  
		Last Modified: Tue, 08 Nov 2016 18:57:59 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854d760fd0ab7344bae0502ef4eea13708e6c51a2a9fc9122c492c4bef98801c`  
		Last Modified: Tue, 08 Nov 2016 18:58:21 GMT  
		Size: 109.2 MB (109157140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be5cf4da17c414bccb93310ba2ad130170e588de2f03fd9e4571d15c4cdd44b`  
		Last Modified: Tue, 08 Nov 2016 18:57:58 GMT  
		Size: 4.4 KB (4394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1287e9e8fed3c93a2081f88523819d2b067d7134ab60f7c37751ffc224b40dd`  
		Last Modified: Tue, 08 Nov 2016 18:57:59 GMT  
		Size: 719.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ebac432e328473121f43d8d85a91a54d4a9a26fbc19a4a5d95760cfd56dee2c`  
		Last Modified: Tue, 08 Nov 2016 18:58:00 GMT  
		Size: 27.3 KB (27270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
