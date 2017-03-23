<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `cassandra`

-	[`cassandra:2.1.17`](#cassandra2117)
-	[`cassandra:2.1`](#cassandra21)
-	[`cassandra:2.2.9`](#cassandra229)
-	[`cassandra:2.2`](#cassandra22)
-	[`cassandra:2`](#cassandra2)
-	[`cassandra:3.0.12`](#cassandra3012)
-	[`cassandra:3.0`](#cassandra30)
-	[`cassandra:3.10`](#cassandra310)
-	[`cassandra:3`](#cassandra3)
-	[`cassandra:latest`](#cassandralatest)

## `cassandra:2.1.17`

```console
$ docker pull cassandra@sha256:61e940b24bcfa090f396def6f698e91270915977b8b67cb288c6f0bd29f623ec
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.1.17` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167871723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d84db27baa34356d61d6768c65dd5911d34db8f6fe317676e9f350dd22a89658`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:29:42 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 21 Mar 2017 20:08:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 21 Mar 2017 20:08:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 20:08:27 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 20:08:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:09:02 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Tue, 21 Mar 2017 20:09:03 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 21 Mar 2017 20:09:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 20:10:30 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 21 Mar 2017 20:10:31 GMT
ENV CASSANDRA_VERSION=2.1.17
# Tue, 21 Mar 2017 20:11:38 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:11:40 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 21 Mar 2017 20:11:58 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 21 Mar 2017 20:11:59 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 21 Mar 2017 20:11:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 21 Mar 2017 20:12:01 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 21 Mar 2017 20:12:18 GMT
VOLUME [/var/lib/cassandra]
# Tue, 21 Mar 2017 20:12:18 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 21 Mar 2017 20:12:19 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40da44b9cf65c4d0abb9ac001635a4f403b998afc222553452635bba9b4e2f9`  
		Last Modified: Tue, 21 Mar 2017 18:41:23 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df94093a4823db85db41bd49fbe035a0d184596b97ba3ab217a34fb5885959e`  
		Last Modified: Thu, 23 Mar 2017 17:15:14 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69c62cdaf1094400b0b8301900c5aff4ebaeff1815a7e90aac28e9194958b4dc`  
		Last Modified: Thu, 23 Mar 2017 17:15:14 GMT  
		Size: 1.3 MB (1288976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58fee5f530aede99ef0a93463f766cc60e247ba91001e3afa8c84299efde677e`  
		Last Modified: Thu, 23 Mar 2017 17:15:14 GMT  
		Size: 173.8 KB (173809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234ebc91ad7480550a52916853b805c517f51ad74144b6870fa0f9910fd6e405`  
		Last Modified: Thu, 23 Mar 2017 17:15:12 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f36b8fa286fc8ef01de4ccea7d7853336508a3f7b8220cbfc8c22a02c6056b2`  
		Last Modified: Thu, 23 Mar 2017 17:15:12 GMT  
		Size: 18.2 KB (18216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68fb8236566d79b432e9dfb64c4b9b48d6fd18fe75875b9b2bd4ab114ac0065`  
		Last Modified: Thu, 23 Mar 2017 17:15:11 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191205517a36f39a57af938e7008e6459ddb16a1c31c11b203f902577dbee1ba`  
		Last Modified: Thu, 23 Mar 2017 17:15:39 GMT  
		Size: 114.9 MB (114923897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7bf1b9078649ac2aa36d23ba763c432647a620bce699cdf2c731a604af47a3`  
		Last Modified: Thu, 23 Mar 2017 17:15:10 GMT  
		Size: 4.7 KB (4658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a839012f00f44d9ec8d41201a32b1b75fed621f63f780d4b33f97a1317d0144e`  
		Last Modified: Thu, 23 Mar 2017 17:15:10 GMT  
		Size: 724.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c79fe08507e553a00d541d55831846e4ab8124f619ab20bd4059cf67dd66b6be`  
		Last Modified: Thu, 23 Mar 2017 17:15:10 GMT  
		Size: 20.2 KB (20238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.1`

```console
$ docker pull cassandra@sha256:61e940b24bcfa090f396def6f698e91270915977b8b67cb288c6f0bd29f623ec
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167871723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d84db27baa34356d61d6768c65dd5911d34db8f6fe317676e9f350dd22a89658`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:29:42 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 21 Mar 2017 20:08:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 21 Mar 2017 20:08:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 20:08:27 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 20:08:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:09:02 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Tue, 21 Mar 2017 20:09:03 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 21 Mar 2017 20:09:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 20:10:30 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 21 Mar 2017 20:10:31 GMT
ENV CASSANDRA_VERSION=2.1.17
# Tue, 21 Mar 2017 20:11:38 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:11:40 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 21 Mar 2017 20:11:58 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 21 Mar 2017 20:11:59 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 21 Mar 2017 20:11:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 21 Mar 2017 20:12:01 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 21 Mar 2017 20:12:18 GMT
VOLUME [/var/lib/cassandra]
# Tue, 21 Mar 2017 20:12:18 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 21 Mar 2017 20:12:19 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40da44b9cf65c4d0abb9ac001635a4f403b998afc222553452635bba9b4e2f9`  
		Last Modified: Tue, 21 Mar 2017 18:41:23 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df94093a4823db85db41bd49fbe035a0d184596b97ba3ab217a34fb5885959e`  
		Last Modified: Thu, 23 Mar 2017 17:15:14 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69c62cdaf1094400b0b8301900c5aff4ebaeff1815a7e90aac28e9194958b4dc`  
		Last Modified: Thu, 23 Mar 2017 17:15:14 GMT  
		Size: 1.3 MB (1288976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58fee5f530aede99ef0a93463f766cc60e247ba91001e3afa8c84299efde677e`  
		Last Modified: Thu, 23 Mar 2017 17:15:14 GMT  
		Size: 173.8 KB (173809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234ebc91ad7480550a52916853b805c517f51ad74144b6870fa0f9910fd6e405`  
		Last Modified: Thu, 23 Mar 2017 17:15:12 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f36b8fa286fc8ef01de4ccea7d7853336508a3f7b8220cbfc8c22a02c6056b2`  
		Last Modified: Thu, 23 Mar 2017 17:15:12 GMT  
		Size: 18.2 KB (18216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b68fb8236566d79b432e9dfb64c4b9b48d6fd18fe75875b9b2bd4ab114ac0065`  
		Last Modified: Thu, 23 Mar 2017 17:15:11 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191205517a36f39a57af938e7008e6459ddb16a1c31c11b203f902577dbee1ba`  
		Last Modified: Thu, 23 Mar 2017 17:15:39 GMT  
		Size: 114.9 MB (114923897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7bf1b9078649ac2aa36d23ba763c432647a620bce699cdf2c731a604af47a3`  
		Last Modified: Thu, 23 Mar 2017 17:15:10 GMT  
		Size: 4.7 KB (4658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a839012f00f44d9ec8d41201a32b1b75fed621f63f780d4b33f97a1317d0144e`  
		Last Modified: Thu, 23 Mar 2017 17:15:10 GMT  
		Size: 724.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c79fe08507e553a00d541d55831846e4ab8124f619ab20bd4059cf67dd66b6be`  
		Last Modified: Thu, 23 Mar 2017 17:15:10 GMT  
		Size: 20.2 KB (20238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2.9`

```console
$ docker pull cassandra@sha256:820ac4ccf4199d3a5cca7b39869569ace1e940ed2a71fb3dceb3831477c3bfe0
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.2.9` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.2 MB (172224306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0ac6f1e1f94340927ef467245cba25c061fece18ae3164642e4c1cacc37461d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:29:42 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 21 Mar 2017 20:08:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 21 Mar 2017 20:08:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 20:08:27 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 20:08:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:09:02 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Tue, 21 Mar 2017 20:09:03 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 21 Mar 2017 20:09:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 20:09:22 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 21 Mar 2017 20:09:22 GMT
ENV CASSANDRA_VERSION=2.2.9
# Tue, 21 Mar 2017 20:10:22 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:10:23 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 21 Mar 2017 20:10:24 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 21 Mar 2017 20:10:25 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 21 Mar 2017 20:10:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 21 Mar 2017 20:10:27 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 21 Mar 2017 20:10:27 GMT
VOLUME [/var/lib/cassandra]
# Tue, 21 Mar 2017 20:10:28 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 21 Mar 2017 20:10:29 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40da44b9cf65c4d0abb9ac001635a4f403b998afc222553452635bba9b4e2f9`  
		Last Modified: Tue, 21 Mar 2017 18:41:23 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df94093a4823db85db41bd49fbe035a0d184596b97ba3ab217a34fb5885959e`  
		Last Modified: Thu, 23 Mar 2017 17:15:14 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69c62cdaf1094400b0b8301900c5aff4ebaeff1815a7e90aac28e9194958b4dc`  
		Last Modified: Thu, 23 Mar 2017 17:15:14 GMT  
		Size: 1.3 MB (1288976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58fee5f530aede99ef0a93463f766cc60e247ba91001e3afa8c84299efde677e`  
		Last Modified: Thu, 23 Mar 2017 17:15:14 GMT  
		Size: 173.8 KB (173809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234ebc91ad7480550a52916853b805c517f51ad74144b6870fa0f9910fd6e405`  
		Last Modified: Thu, 23 Mar 2017 17:15:12 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f36b8fa286fc8ef01de4ccea7d7853336508a3f7b8220cbfc8c22a02c6056b2`  
		Last Modified: Thu, 23 Mar 2017 17:15:12 GMT  
		Size: 18.2 KB (18216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffe6ad1d044687451afb5706ea8865374f858a243e8cca6861dfba1724681fd`  
		Last Modified: Thu, 23 Mar 2017 17:16:55 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0bb36248ae5854ba33e20d033a8d6e8a05194f16142c743d1b737d550b5fa5d`  
		Last Modified: Thu, 23 Mar 2017 17:17:24 GMT  
		Size: 119.3 MB (119274746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4171aca0ea2964dbeb85601ba099fd44cef38efe6c57990f2b61140f03a35609`  
		Last Modified: Thu, 23 Mar 2017 17:16:55 GMT  
		Size: 4.6 KB (4629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d7af8f581ff383922b353b4b39f3b25d11795a8b825735e1ba0ba91d94b9d07`  
		Last Modified: Thu, 23 Mar 2017 17:16:55 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f565084e9778e9e257267bae90f468ef874ab57c612ec0eaf0b9bdfae2f629d`  
		Last Modified: Thu, 23 Mar 2017 17:16:55 GMT  
		Size: 22.0 KB (22004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2`

```console
$ docker pull cassandra@sha256:820ac4ccf4199d3a5cca7b39869569ace1e940ed2a71fb3dceb3831477c3bfe0
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.2 MB (172224306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0ac6f1e1f94340927ef467245cba25c061fece18ae3164642e4c1cacc37461d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:29:42 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 21 Mar 2017 20:08:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 21 Mar 2017 20:08:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 20:08:27 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 20:08:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:09:02 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Tue, 21 Mar 2017 20:09:03 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 21 Mar 2017 20:09:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 20:09:22 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 21 Mar 2017 20:09:22 GMT
ENV CASSANDRA_VERSION=2.2.9
# Tue, 21 Mar 2017 20:10:22 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:10:23 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 21 Mar 2017 20:10:24 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 21 Mar 2017 20:10:25 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 21 Mar 2017 20:10:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 21 Mar 2017 20:10:27 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 21 Mar 2017 20:10:27 GMT
VOLUME [/var/lib/cassandra]
# Tue, 21 Mar 2017 20:10:28 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 21 Mar 2017 20:10:29 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40da44b9cf65c4d0abb9ac001635a4f403b998afc222553452635bba9b4e2f9`  
		Last Modified: Tue, 21 Mar 2017 18:41:23 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df94093a4823db85db41bd49fbe035a0d184596b97ba3ab217a34fb5885959e`  
		Last Modified: Thu, 23 Mar 2017 17:15:14 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69c62cdaf1094400b0b8301900c5aff4ebaeff1815a7e90aac28e9194958b4dc`  
		Last Modified: Thu, 23 Mar 2017 17:15:14 GMT  
		Size: 1.3 MB (1288976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58fee5f530aede99ef0a93463f766cc60e247ba91001e3afa8c84299efde677e`  
		Last Modified: Thu, 23 Mar 2017 17:15:14 GMT  
		Size: 173.8 KB (173809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234ebc91ad7480550a52916853b805c517f51ad74144b6870fa0f9910fd6e405`  
		Last Modified: Thu, 23 Mar 2017 17:15:12 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f36b8fa286fc8ef01de4ccea7d7853336508a3f7b8220cbfc8c22a02c6056b2`  
		Last Modified: Thu, 23 Mar 2017 17:15:12 GMT  
		Size: 18.2 KB (18216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffe6ad1d044687451afb5706ea8865374f858a243e8cca6861dfba1724681fd`  
		Last Modified: Thu, 23 Mar 2017 17:16:55 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0bb36248ae5854ba33e20d033a8d6e8a05194f16142c743d1b737d550b5fa5d`  
		Last Modified: Thu, 23 Mar 2017 17:17:24 GMT  
		Size: 119.3 MB (119274746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4171aca0ea2964dbeb85601ba099fd44cef38efe6c57990f2b61140f03a35609`  
		Last Modified: Thu, 23 Mar 2017 17:16:55 GMT  
		Size: 4.6 KB (4629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d7af8f581ff383922b353b4b39f3b25d11795a8b825735e1ba0ba91d94b9d07`  
		Last Modified: Thu, 23 Mar 2017 17:16:55 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f565084e9778e9e257267bae90f468ef874ab57c612ec0eaf0b9bdfae2f629d`  
		Last Modified: Thu, 23 Mar 2017 17:16:55 GMT  
		Size: 22.0 KB (22004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2`

```console
$ docker pull cassandra@sha256:820ac4ccf4199d3a5cca7b39869569ace1e940ed2a71fb3dceb3831477c3bfe0
```

-	Platforms:
	-	linux; amd64

### `cassandra:2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.2 MB (172224306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0ac6f1e1f94340927ef467245cba25c061fece18ae3164642e4c1cacc37461d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:29:42 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 21 Mar 2017 20:08:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 21 Mar 2017 20:08:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 20:08:27 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 20:08:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:09:02 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Tue, 21 Mar 2017 20:09:03 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 21 Mar 2017 20:09:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 20:09:22 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 21 Mar 2017 20:09:22 GMT
ENV CASSANDRA_VERSION=2.2.9
# Tue, 21 Mar 2017 20:10:22 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:10:23 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 21 Mar 2017 20:10:24 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 21 Mar 2017 20:10:25 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 21 Mar 2017 20:10:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 21 Mar 2017 20:10:27 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 21 Mar 2017 20:10:27 GMT
VOLUME [/var/lib/cassandra]
# Tue, 21 Mar 2017 20:10:28 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 21 Mar 2017 20:10:29 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40da44b9cf65c4d0abb9ac001635a4f403b998afc222553452635bba9b4e2f9`  
		Last Modified: Tue, 21 Mar 2017 18:41:23 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df94093a4823db85db41bd49fbe035a0d184596b97ba3ab217a34fb5885959e`  
		Last Modified: Thu, 23 Mar 2017 17:15:14 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69c62cdaf1094400b0b8301900c5aff4ebaeff1815a7e90aac28e9194958b4dc`  
		Last Modified: Thu, 23 Mar 2017 17:15:14 GMT  
		Size: 1.3 MB (1288976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58fee5f530aede99ef0a93463f766cc60e247ba91001e3afa8c84299efde677e`  
		Last Modified: Thu, 23 Mar 2017 17:15:14 GMT  
		Size: 173.8 KB (173809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234ebc91ad7480550a52916853b805c517f51ad74144b6870fa0f9910fd6e405`  
		Last Modified: Thu, 23 Mar 2017 17:15:12 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f36b8fa286fc8ef01de4ccea7d7853336508a3f7b8220cbfc8c22a02c6056b2`  
		Last Modified: Thu, 23 Mar 2017 17:15:12 GMT  
		Size: 18.2 KB (18216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffe6ad1d044687451afb5706ea8865374f858a243e8cca6861dfba1724681fd`  
		Last Modified: Thu, 23 Mar 2017 17:16:55 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0bb36248ae5854ba33e20d033a8d6e8a05194f16142c743d1b737d550b5fa5d`  
		Last Modified: Thu, 23 Mar 2017 17:17:24 GMT  
		Size: 119.3 MB (119274746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4171aca0ea2964dbeb85601ba099fd44cef38efe6c57990f2b61140f03a35609`  
		Last Modified: Thu, 23 Mar 2017 17:16:55 GMT  
		Size: 4.6 KB (4629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d7af8f581ff383922b353b4b39f3b25d11795a8b825735e1ba0ba91d94b9d07`  
		Last Modified: Thu, 23 Mar 2017 17:16:55 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f565084e9778e9e257267bae90f468ef874ab57c612ec0eaf0b9bdfae2f629d`  
		Last Modified: Thu, 23 Mar 2017 17:16:55 GMT  
		Size: 22.0 KB (22004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0.12`

```console
$ docker pull cassandra@sha256:6bafce6b259f722c3e9af127c8d5868864fca706805dd6034df64b42a54b8511
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.0.12` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.5 MB (158465984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1822cf06d7766e8a0f3c4c7d7fa2e0234d01ebf12b6839d8f5ca602d3a1b9cb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:29:42 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 21 Mar 2017 20:08:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 21 Mar 2017 20:08:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 20:08:27 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 20:08:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:09:02 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Tue, 21 Mar 2017 20:09:03 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 21 Mar 2017 20:09:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 20:14:02 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 21 Mar 2017 20:14:02 GMT
ENV CASSANDRA_VERSION=3.0.12
# Tue, 21 Mar 2017 20:14:35 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:14:43 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 21 Mar 2017 20:14:44 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 21 Mar 2017 20:14:44 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 21 Mar 2017 20:14:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 21 Mar 2017 20:14:46 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 21 Mar 2017 20:14:47 GMT
VOLUME [/var/lib/cassandra]
# Tue, 21 Mar 2017 20:14:48 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 21 Mar 2017 20:14:49 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40da44b9cf65c4d0abb9ac001635a4f403b998afc222553452635bba9b4e2f9`  
		Last Modified: Tue, 21 Mar 2017 18:41:23 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df94093a4823db85db41bd49fbe035a0d184596b97ba3ab217a34fb5885959e`  
		Last Modified: Thu, 23 Mar 2017 17:15:14 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69c62cdaf1094400b0b8301900c5aff4ebaeff1815a7e90aac28e9194958b4dc`  
		Last Modified: Thu, 23 Mar 2017 17:15:14 GMT  
		Size: 1.3 MB (1288976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58fee5f530aede99ef0a93463f766cc60e247ba91001e3afa8c84299efde677e`  
		Last Modified: Thu, 23 Mar 2017 17:15:14 GMT  
		Size: 173.8 KB (173809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234ebc91ad7480550a52916853b805c517f51ad74144b6870fa0f9910fd6e405`  
		Last Modified: Thu, 23 Mar 2017 17:15:12 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f36b8fa286fc8ef01de4ccea7d7853336508a3f7b8220cbfc8c22a02c6056b2`  
		Last Modified: Thu, 23 Mar 2017 17:15:12 GMT  
		Size: 18.2 KB (18216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c27c853d456a7065a03d86c6783a5f2db0111170282c6c9fd2b300a6ac4bdcd`  
		Last Modified: Thu, 23 Mar 2017 17:19:02 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eea439e9546ed39c61e1638996992f20ee6b63b732d5d524f1226ae471697de`  
		Last Modified: Thu, 23 Mar 2017 17:19:30 GMT  
		Size: 105.5 MB (105513828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd1745545a345b2c03362e2daeba6e9fda445413c65214f777a22d778465661`  
		Last Modified: Thu, 23 Mar 2017 17:19:01 GMT  
		Size: 4.7 KB (4700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e729a52736f41237cccd36bb367f0e23558a27b329166c713a8f791faaf1224a`  
		Last Modified: Thu, 23 Mar 2017 17:19:01 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34e8c8fb7c3fc46642eebb8b35dcc5c760f8e0ad516d9ff4d0bde5793894b88e`  
		Last Modified: Thu, 23 Mar 2017 17:19:01 GMT  
		Size: 24.5 KB (24530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0`

```console
$ docker pull cassandra@sha256:6bafce6b259f722c3e9af127c8d5868864fca706805dd6034df64b42a54b8511
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.5 MB (158465984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1822cf06d7766e8a0f3c4c7d7fa2e0234d01ebf12b6839d8f5ca602d3a1b9cb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:29:42 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 21 Mar 2017 20:08:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 21 Mar 2017 20:08:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 20:08:27 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 20:08:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:09:02 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Tue, 21 Mar 2017 20:09:03 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 21 Mar 2017 20:09:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 20:14:02 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 21 Mar 2017 20:14:02 GMT
ENV CASSANDRA_VERSION=3.0.12
# Tue, 21 Mar 2017 20:14:35 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:14:43 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 21 Mar 2017 20:14:44 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 21 Mar 2017 20:14:44 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 21 Mar 2017 20:14:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 21 Mar 2017 20:14:46 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 21 Mar 2017 20:14:47 GMT
VOLUME [/var/lib/cassandra]
# Tue, 21 Mar 2017 20:14:48 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 21 Mar 2017 20:14:49 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40da44b9cf65c4d0abb9ac001635a4f403b998afc222553452635bba9b4e2f9`  
		Last Modified: Tue, 21 Mar 2017 18:41:23 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df94093a4823db85db41bd49fbe035a0d184596b97ba3ab217a34fb5885959e`  
		Last Modified: Thu, 23 Mar 2017 17:15:14 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69c62cdaf1094400b0b8301900c5aff4ebaeff1815a7e90aac28e9194958b4dc`  
		Last Modified: Thu, 23 Mar 2017 17:15:14 GMT  
		Size: 1.3 MB (1288976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58fee5f530aede99ef0a93463f766cc60e247ba91001e3afa8c84299efde677e`  
		Last Modified: Thu, 23 Mar 2017 17:15:14 GMT  
		Size: 173.8 KB (173809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234ebc91ad7480550a52916853b805c517f51ad74144b6870fa0f9910fd6e405`  
		Last Modified: Thu, 23 Mar 2017 17:15:12 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f36b8fa286fc8ef01de4ccea7d7853336508a3f7b8220cbfc8c22a02c6056b2`  
		Last Modified: Thu, 23 Mar 2017 17:15:12 GMT  
		Size: 18.2 KB (18216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c27c853d456a7065a03d86c6783a5f2db0111170282c6c9fd2b300a6ac4bdcd`  
		Last Modified: Thu, 23 Mar 2017 17:19:02 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eea439e9546ed39c61e1638996992f20ee6b63b732d5d524f1226ae471697de`  
		Last Modified: Thu, 23 Mar 2017 17:19:30 GMT  
		Size: 105.5 MB (105513828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd1745545a345b2c03362e2daeba6e9fda445413c65214f777a22d778465661`  
		Last Modified: Thu, 23 Mar 2017 17:19:01 GMT  
		Size: 4.7 KB (4700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e729a52736f41237cccd36bb367f0e23558a27b329166c713a8f791faaf1224a`  
		Last Modified: Thu, 23 Mar 2017 17:19:01 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34e8c8fb7c3fc46642eebb8b35dcc5c760f8e0ad516d9ff4d0bde5793894b88e`  
		Last Modified: Thu, 23 Mar 2017 17:19:01 GMT  
		Size: 24.5 KB (24530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.10`

```console
$ docker pull cassandra@sha256:b7fca4d04fdaa10ba4f187d74649f4cd59a4b5018253d58b837cdd1b02ddfe3f
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.10` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.9 MB (162925177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:069269e2357899979df679173096db557fbdd84a82ffd2b08b139f974a36457a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:29:42 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 21 Mar 2017 20:08:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 21 Mar 2017 20:08:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 20:08:27 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 20:08:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:09:02 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Tue, 21 Mar 2017 20:09:03 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 21 Mar 2017 20:09:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 20:12:21 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 310x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 21 Mar 2017 20:12:37 GMT
ENV CASSANDRA_VERSION=3.10
# Tue, 21 Mar 2017 20:13:18 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:13:22 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 21 Mar 2017 20:13:23 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 21 Mar 2017 20:13:23 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 21 Mar 2017 20:13:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 21 Mar 2017 20:13:41 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 21 Mar 2017 20:13:42 GMT
VOLUME [/var/lib/cassandra]
# Tue, 21 Mar 2017 20:13:43 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 21 Mar 2017 20:13:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40da44b9cf65c4d0abb9ac001635a4f403b998afc222553452635bba9b4e2f9`  
		Last Modified: Tue, 21 Mar 2017 18:41:23 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df94093a4823db85db41bd49fbe035a0d184596b97ba3ab217a34fb5885959e`  
		Last Modified: Thu, 23 Mar 2017 17:15:14 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69c62cdaf1094400b0b8301900c5aff4ebaeff1815a7e90aac28e9194958b4dc`  
		Last Modified: Thu, 23 Mar 2017 17:15:14 GMT  
		Size: 1.3 MB (1288976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58fee5f530aede99ef0a93463f766cc60e247ba91001e3afa8c84299efde677e`  
		Last Modified: Thu, 23 Mar 2017 17:15:14 GMT  
		Size: 173.8 KB (173809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234ebc91ad7480550a52916853b805c517f51ad74144b6870fa0f9910fd6e405`  
		Last Modified: Thu, 23 Mar 2017 17:15:12 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f36b8fa286fc8ef01de4ccea7d7853336508a3f7b8220cbfc8c22a02c6056b2`  
		Last Modified: Thu, 23 Mar 2017 17:15:12 GMT  
		Size: 18.2 KB (18216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af29c2404815a9b72068600d797ba45675e3e8e54ba2ad1adb750fd54bbbbe9e`  
		Last Modified: Thu, 23 Mar 2017 17:20:35 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b116b361bc498e476e9826c94031011aae5f953137b81dc904eec2caaed5c72`  
		Last Modified: Thu, 23 Mar 2017 17:21:05 GMT  
		Size: 110.0 MB (109969511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21487872727d68b30342647dc1308b23ed40908e6168597221be67d29d2cf355`  
		Last Modified: Thu, 23 Mar 2017 17:20:35 GMT  
		Size: 4.4 KB (4397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe76327c695980044775b9a208ab099961e5a7b33a146a543b385ea2fef991f`  
		Last Modified: Thu, 23 Mar 2017 17:20:37 GMT  
		Size: 724.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206d5c7da9747aae1539cd3bd0b7dd9309fd8212121469bfd2489ca52d99d68d`  
		Last Modified: Thu, 23 Mar 2017 17:20:35 GMT  
		Size: 28.3 KB (28339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3`

```console
$ docker pull cassandra@sha256:b7fca4d04fdaa10ba4f187d74649f4cd59a4b5018253d58b837cdd1b02ddfe3f
```

-	Platforms:
	-	linux; amd64

### `cassandra:3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.9 MB (162925177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:069269e2357899979df679173096db557fbdd84a82ffd2b08b139f974a36457a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:29:42 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 21 Mar 2017 20:08:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 21 Mar 2017 20:08:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 20:08:27 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 20:08:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:09:02 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Tue, 21 Mar 2017 20:09:03 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 21 Mar 2017 20:09:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 20:12:21 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 310x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 21 Mar 2017 20:12:37 GMT
ENV CASSANDRA_VERSION=3.10
# Tue, 21 Mar 2017 20:13:18 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:13:22 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 21 Mar 2017 20:13:23 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 21 Mar 2017 20:13:23 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 21 Mar 2017 20:13:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 21 Mar 2017 20:13:41 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 21 Mar 2017 20:13:42 GMT
VOLUME [/var/lib/cassandra]
# Tue, 21 Mar 2017 20:13:43 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 21 Mar 2017 20:13:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40da44b9cf65c4d0abb9ac001635a4f403b998afc222553452635bba9b4e2f9`  
		Last Modified: Tue, 21 Mar 2017 18:41:23 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df94093a4823db85db41bd49fbe035a0d184596b97ba3ab217a34fb5885959e`  
		Last Modified: Thu, 23 Mar 2017 17:15:14 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69c62cdaf1094400b0b8301900c5aff4ebaeff1815a7e90aac28e9194958b4dc`  
		Last Modified: Thu, 23 Mar 2017 17:15:14 GMT  
		Size: 1.3 MB (1288976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58fee5f530aede99ef0a93463f766cc60e247ba91001e3afa8c84299efde677e`  
		Last Modified: Thu, 23 Mar 2017 17:15:14 GMT  
		Size: 173.8 KB (173809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234ebc91ad7480550a52916853b805c517f51ad74144b6870fa0f9910fd6e405`  
		Last Modified: Thu, 23 Mar 2017 17:15:12 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f36b8fa286fc8ef01de4ccea7d7853336508a3f7b8220cbfc8c22a02c6056b2`  
		Last Modified: Thu, 23 Mar 2017 17:15:12 GMT  
		Size: 18.2 KB (18216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af29c2404815a9b72068600d797ba45675e3e8e54ba2ad1adb750fd54bbbbe9e`  
		Last Modified: Thu, 23 Mar 2017 17:20:35 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b116b361bc498e476e9826c94031011aae5f953137b81dc904eec2caaed5c72`  
		Last Modified: Thu, 23 Mar 2017 17:21:05 GMT  
		Size: 110.0 MB (109969511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21487872727d68b30342647dc1308b23ed40908e6168597221be67d29d2cf355`  
		Last Modified: Thu, 23 Mar 2017 17:20:35 GMT  
		Size: 4.4 KB (4397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe76327c695980044775b9a208ab099961e5a7b33a146a543b385ea2fef991f`  
		Last Modified: Thu, 23 Mar 2017 17:20:37 GMT  
		Size: 724.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206d5c7da9747aae1539cd3bd0b7dd9309fd8212121469bfd2489ca52d99d68d`  
		Last Modified: Thu, 23 Mar 2017 17:20:35 GMT  
		Size: 28.3 KB (28339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:latest`

```console
$ docker pull cassandra@sha256:b7fca4d04fdaa10ba4f187d74649f4cd59a4b5018253d58b837cdd1b02ddfe3f
```

-	Platforms:
	-	linux; amd64

### `cassandra:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.9 MB (162925177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:069269e2357899979df679173096db557fbdd84a82ffd2b08b139f974a36457a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:29:42 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 21 Mar 2017 20:08:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 21 Mar 2017 20:08:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 20:08:27 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 20:08:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:09:02 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Tue, 21 Mar 2017 20:09:03 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 21 Mar 2017 20:09:05 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 20:12:21 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 310x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 21 Mar 2017 20:12:37 GMT
ENV CASSANDRA_VERSION=3.10
# Tue, 21 Mar 2017 20:13:18 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:13:22 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 21 Mar 2017 20:13:23 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 21 Mar 2017 20:13:23 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 21 Mar 2017 20:13:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 21 Mar 2017 20:13:41 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 21 Mar 2017 20:13:42 GMT
VOLUME [/var/lib/cassandra]
# Tue, 21 Mar 2017 20:13:43 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 21 Mar 2017 20:13:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40da44b9cf65c4d0abb9ac001635a4f403b998afc222553452635bba9b4e2f9`  
		Last Modified: Tue, 21 Mar 2017 18:41:23 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df94093a4823db85db41bd49fbe035a0d184596b97ba3ab217a34fb5885959e`  
		Last Modified: Thu, 23 Mar 2017 17:15:14 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69c62cdaf1094400b0b8301900c5aff4ebaeff1815a7e90aac28e9194958b4dc`  
		Last Modified: Thu, 23 Mar 2017 17:15:14 GMT  
		Size: 1.3 MB (1288976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58fee5f530aede99ef0a93463f766cc60e247ba91001e3afa8c84299efde677e`  
		Last Modified: Thu, 23 Mar 2017 17:15:14 GMT  
		Size: 173.8 KB (173809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234ebc91ad7480550a52916853b805c517f51ad74144b6870fa0f9910fd6e405`  
		Last Modified: Thu, 23 Mar 2017 17:15:12 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f36b8fa286fc8ef01de4ccea7d7853336508a3f7b8220cbfc8c22a02c6056b2`  
		Last Modified: Thu, 23 Mar 2017 17:15:12 GMT  
		Size: 18.2 KB (18216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af29c2404815a9b72068600d797ba45675e3e8e54ba2ad1adb750fd54bbbbe9e`  
		Last Modified: Thu, 23 Mar 2017 17:20:35 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b116b361bc498e476e9826c94031011aae5f953137b81dc904eec2caaed5c72`  
		Last Modified: Thu, 23 Mar 2017 17:21:05 GMT  
		Size: 110.0 MB (109969511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21487872727d68b30342647dc1308b23ed40908e6168597221be67d29d2cf355`  
		Last Modified: Thu, 23 Mar 2017 17:20:35 GMT  
		Size: 4.4 KB (4397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe76327c695980044775b9a208ab099961e5a7b33a146a543b385ea2fef991f`  
		Last Modified: Thu, 23 Mar 2017 17:20:37 GMT  
		Size: 724.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206d5c7da9747aae1539cd3bd0b7dd9309fd8212121469bfd2489ca52d99d68d`  
		Last Modified: Thu, 23 Mar 2017 17:20:35 GMT  
		Size: 28.3 KB (28339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
