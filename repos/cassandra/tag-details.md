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
$ docker pull cassandra@sha256:99069bd41dffd47a2890890172fab201d7a6d731bd6f3d017394702b598b6448
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.1.16` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.1 MB (167078296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf762736872527d88cc81a3679d879783e4ff748090976c6e3e98f58cc8f053e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 22:11:18 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 13 Dec 2016 23:02:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 13 Dec 2016 23:02:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 13 Dec 2016 23:02:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 13 Dec 2016 23:02:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:02:31 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 13 Jan 2017 17:43:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 13 Jan 2017 17:43:53 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' >> /etc/apt/sources.list.d/cassandra.list
# Fri, 13 Jan 2017 17:43:53 GMT
ENV CASSANDRA_VERSION=2.1.16
# Fri, 13 Jan 2017 17:44:29 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Jan 2017 17:44:30 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Fri, 13 Jan 2017 17:44:30 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 13 Jan 2017 17:44:30 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 13 Jan 2017 17:44:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Jan 2017 17:44:31 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 13 Jan 2017 17:44:32 GMT
VOLUME [/var/lib/cassandra]
# Fri, 13 Jan 2017 17:44:32 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 13 Jan 2017 17:44:32 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924bee5e776fd6b58543055615dcd4ebd1d390cba2b2c8c51b1ab159de44c406`  
		Last Modified: Tue, 13 Dec 2016 22:18:20 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77f726dd12d5bb997401801cf4cbe0130661cb5867b9990a0bcfdb15380fd59`  
		Last Modified: Mon, 19 Dec 2016 18:10:08 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b766f86087a7130baab4f2e7bc91941b9eebec493731ea81fc4444997ab286c9`  
		Last Modified: Mon, 19 Dec 2016 18:10:11 GMT  
		Size: 1.2 MB (1216947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7619f1fd7136e5e4c4fb063118a26443151ed6d13822f9f8a84498bc77d4378`  
		Last Modified: Mon, 19 Dec 2016 18:10:06 GMT  
		Size: 173.8 KB (173771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cada1415a4d707a059a3867c761fe362cac69b6625681831b456165be9edee`  
		Last Modified: Fri, 13 Jan 2017 17:47:02 GMT  
		Size: 18.2 KB (18216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11339f57486d06b2227bc74726d5598ba9f5b61d0e9f2da61fcedb892269ef2`  
		Last Modified: Fri, 13 Jan 2017 17:46:59 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6eb7712b96aa3f5977f2e40be1668f00a60fbb57c491fe86287fde21f6f1a25`  
		Last Modified: Fri, 13 Jan 2017 17:47:20 GMT  
		Size: 114.3 MB (114278148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b019bab21511e07ea89fe5c901e2ec80e98d0326937826231ccce18ec9879c37`  
		Last Modified: Fri, 13 Jan 2017 17:47:00 GMT  
		Size: 4.7 KB (4656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90bb8ad7d123940e5748938ee4802831fd1447220c8386dec19055a1113dc6a4`  
		Last Modified: Fri, 13 Jan 2017 17:47:00 GMT  
		Size: 720.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc40cfb79d40840a6c322121125ba1abd51e93768d57d8966ad960a757531621`  
		Last Modified: Fri, 13 Jan 2017 17:46:59 GMT  
		Size: 20.2 KB (20241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.1`

```console
$ docker pull cassandra@sha256:99069bd41dffd47a2890890172fab201d7a6d731bd6f3d017394702b598b6448
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.1 MB (167078296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf762736872527d88cc81a3679d879783e4ff748090976c6e3e98f58cc8f053e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 22:11:18 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 13 Dec 2016 23:02:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 13 Dec 2016 23:02:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 13 Dec 2016 23:02:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 13 Dec 2016 23:02:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:02:31 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 13 Jan 2017 17:43:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 13 Jan 2017 17:43:53 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' >> /etc/apt/sources.list.d/cassandra.list
# Fri, 13 Jan 2017 17:43:53 GMT
ENV CASSANDRA_VERSION=2.1.16
# Fri, 13 Jan 2017 17:44:29 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Jan 2017 17:44:30 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Fri, 13 Jan 2017 17:44:30 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 13 Jan 2017 17:44:30 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 13 Jan 2017 17:44:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Jan 2017 17:44:31 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 13 Jan 2017 17:44:32 GMT
VOLUME [/var/lib/cassandra]
# Fri, 13 Jan 2017 17:44:32 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 13 Jan 2017 17:44:32 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924bee5e776fd6b58543055615dcd4ebd1d390cba2b2c8c51b1ab159de44c406`  
		Last Modified: Tue, 13 Dec 2016 22:18:20 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77f726dd12d5bb997401801cf4cbe0130661cb5867b9990a0bcfdb15380fd59`  
		Last Modified: Mon, 19 Dec 2016 18:10:08 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b766f86087a7130baab4f2e7bc91941b9eebec493731ea81fc4444997ab286c9`  
		Last Modified: Mon, 19 Dec 2016 18:10:11 GMT  
		Size: 1.2 MB (1216947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7619f1fd7136e5e4c4fb063118a26443151ed6d13822f9f8a84498bc77d4378`  
		Last Modified: Mon, 19 Dec 2016 18:10:06 GMT  
		Size: 173.8 KB (173771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cada1415a4d707a059a3867c761fe362cac69b6625681831b456165be9edee`  
		Last Modified: Fri, 13 Jan 2017 17:47:02 GMT  
		Size: 18.2 KB (18216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11339f57486d06b2227bc74726d5598ba9f5b61d0e9f2da61fcedb892269ef2`  
		Last Modified: Fri, 13 Jan 2017 17:46:59 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6eb7712b96aa3f5977f2e40be1668f00a60fbb57c491fe86287fde21f6f1a25`  
		Last Modified: Fri, 13 Jan 2017 17:47:20 GMT  
		Size: 114.3 MB (114278148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b019bab21511e07ea89fe5c901e2ec80e98d0326937826231ccce18ec9879c37`  
		Last Modified: Fri, 13 Jan 2017 17:47:00 GMT  
		Size: 4.7 KB (4656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90bb8ad7d123940e5748938ee4802831fd1447220c8386dec19055a1113dc6a4`  
		Last Modified: Fri, 13 Jan 2017 17:47:00 GMT  
		Size: 720.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc40cfb79d40840a6c322121125ba1abd51e93768d57d8966ad960a757531621`  
		Last Modified: Fri, 13 Jan 2017 17:46:59 GMT  
		Size: 20.2 KB (20241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2.8`

```console
$ docker pull cassandra@sha256:67ab58d8ed3aae951e64da7e6a0e09398303b6b66d826e0e777c5d9936020638
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.2.8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171397547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75321dd0d346c264c4c1fb6e39db439a6c522e6677299415cae3fb1d992a5535`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 22:11:18 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 13 Dec 2016 23:02:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 13 Dec 2016 23:02:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 13 Dec 2016 23:02:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 13 Dec 2016 23:02:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:02:31 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 13 Jan 2017 17:43:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 13 Jan 2017 17:44:34 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Fri, 13 Jan 2017 17:44:34 GMT
ENV CASSANDRA_VERSION=2.2.8
# Fri, 13 Jan 2017 17:45:19 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Jan 2017 17:45:21 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Fri, 13 Jan 2017 17:45:21 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 13 Jan 2017 17:45:22 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 13 Jan 2017 17:45:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Jan 2017 17:45:23 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 13 Jan 2017 17:45:23 GMT
VOLUME [/var/lib/cassandra]
# Fri, 13 Jan 2017 17:45:24 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 13 Jan 2017 17:45:24 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924bee5e776fd6b58543055615dcd4ebd1d390cba2b2c8c51b1ab159de44c406`  
		Last Modified: Tue, 13 Dec 2016 22:18:20 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77f726dd12d5bb997401801cf4cbe0130661cb5867b9990a0bcfdb15380fd59`  
		Last Modified: Mon, 19 Dec 2016 18:10:08 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b766f86087a7130baab4f2e7bc91941b9eebec493731ea81fc4444997ab286c9`  
		Last Modified: Mon, 19 Dec 2016 18:10:11 GMT  
		Size: 1.2 MB (1216947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7619f1fd7136e5e4c4fb063118a26443151ed6d13822f9f8a84498bc77d4378`  
		Last Modified: Mon, 19 Dec 2016 18:10:06 GMT  
		Size: 173.8 KB (173771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cada1415a4d707a059a3867c761fe362cac69b6625681831b456165be9edee`  
		Last Modified: Fri, 13 Jan 2017 17:47:02 GMT  
		Size: 18.2 KB (18216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4afa76637b475c351d3bb0b88a1f8b5c9febe686a24edcfbf326d80e54ebf4e`  
		Last Modified: Fri, 13 Jan 2017 17:47:55 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1bf552ae6d145953df9f1f91638ab5f1d129a12835dac60eba0b06b593217b`  
		Last Modified: Fri, 13 Jan 2017 17:48:17 GMT  
		Size: 118.6 MB (118596461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cba1eb94941792dc7fc7634d6f9a8e383a28bacdbfa8bb6eef8f125ac06332b`  
		Last Modified: Fri, 13 Jan 2017 17:47:54 GMT  
		Size: 4.6 KB (4625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b23c28ee782d600ce6da46fc1a48320d8f1ab2595678b53a56bdd4533cdd844`  
		Last Modified: Fri, 13 Jan 2017 17:47:54 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58275ab90425666874c4f770794cc974b8086c01151d6b1390e90d030bc4c6c`  
		Last Modified: Fri, 13 Jan 2017 17:47:54 GMT  
		Size: 21.2 KB (21207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2`

```console
$ docker pull cassandra@sha256:67ab58d8ed3aae951e64da7e6a0e09398303b6b66d826e0e777c5d9936020638
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171397547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75321dd0d346c264c4c1fb6e39db439a6c522e6677299415cae3fb1d992a5535`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 22:11:18 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 13 Dec 2016 23:02:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 13 Dec 2016 23:02:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 13 Dec 2016 23:02:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 13 Dec 2016 23:02:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:02:31 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 13 Jan 2017 17:43:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 13 Jan 2017 17:44:34 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Fri, 13 Jan 2017 17:44:34 GMT
ENV CASSANDRA_VERSION=2.2.8
# Fri, 13 Jan 2017 17:45:19 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Jan 2017 17:45:21 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Fri, 13 Jan 2017 17:45:21 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 13 Jan 2017 17:45:22 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 13 Jan 2017 17:45:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Jan 2017 17:45:23 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 13 Jan 2017 17:45:23 GMT
VOLUME [/var/lib/cassandra]
# Fri, 13 Jan 2017 17:45:24 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 13 Jan 2017 17:45:24 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924bee5e776fd6b58543055615dcd4ebd1d390cba2b2c8c51b1ab159de44c406`  
		Last Modified: Tue, 13 Dec 2016 22:18:20 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77f726dd12d5bb997401801cf4cbe0130661cb5867b9990a0bcfdb15380fd59`  
		Last Modified: Mon, 19 Dec 2016 18:10:08 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b766f86087a7130baab4f2e7bc91941b9eebec493731ea81fc4444997ab286c9`  
		Last Modified: Mon, 19 Dec 2016 18:10:11 GMT  
		Size: 1.2 MB (1216947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7619f1fd7136e5e4c4fb063118a26443151ed6d13822f9f8a84498bc77d4378`  
		Last Modified: Mon, 19 Dec 2016 18:10:06 GMT  
		Size: 173.8 KB (173771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cada1415a4d707a059a3867c761fe362cac69b6625681831b456165be9edee`  
		Last Modified: Fri, 13 Jan 2017 17:47:02 GMT  
		Size: 18.2 KB (18216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4afa76637b475c351d3bb0b88a1f8b5c9febe686a24edcfbf326d80e54ebf4e`  
		Last Modified: Fri, 13 Jan 2017 17:47:55 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1bf552ae6d145953df9f1f91638ab5f1d129a12835dac60eba0b06b593217b`  
		Last Modified: Fri, 13 Jan 2017 17:48:17 GMT  
		Size: 118.6 MB (118596461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cba1eb94941792dc7fc7634d6f9a8e383a28bacdbfa8bb6eef8f125ac06332b`  
		Last Modified: Fri, 13 Jan 2017 17:47:54 GMT  
		Size: 4.6 KB (4625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b23c28ee782d600ce6da46fc1a48320d8f1ab2595678b53a56bdd4533cdd844`  
		Last Modified: Fri, 13 Jan 2017 17:47:54 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58275ab90425666874c4f770794cc974b8086c01151d6b1390e90d030bc4c6c`  
		Last Modified: Fri, 13 Jan 2017 17:47:54 GMT  
		Size: 21.2 KB (21207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2`

```console
$ docker pull cassandra@sha256:67ab58d8ed3aae951e64da7e6a0e09398303b6b66d826e0e777c5d9936020638
```

-	Platforms:
	-	linux; amd64

### `cassandra:2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171397547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75321dd0d346c264c4c1fb6e39db439a6c522e6677299415cae3fb1d992a5535`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 22:11:18 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 13 Dec 2016 23:02:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 13 Dec 2016 23:02:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 13 Dec 2016 23:02:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 13 Dec 2016 23:02:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:02:31 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 13 Jan 2017 17:43:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 13 Jan 2017 17:44:34 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Fri, 13 Jan 2017 17:44:34 GMT
ENV CASSANDRA_VERSION=2.2.8
# Fri, 13 Jan 2017 17:45:19 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Jan 2017 17:45:21 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Fri, 13 Jan 2017 17:45:21 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 13 Jan 2017 17:45:22 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 13 Jan 2017 17:45:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Jan 2017 17:45:23 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 13 Jan 2017 17:45:23 GMT
VOLUME [/var/lib/cassandra]
# Fri, 13 Jan 2017 17:45:24 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 13 Jan 2017 17:45:24 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924bee5e776fd6b58543055615dcd4ebd1d390cba2b2c8c51b1ab159de44c406`  
		Last Modified: Tue, 13 Dec 2016 22:18:20 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77f726dd12d5bb997401801cf4cbe0130661cb5867b9990a0bcfdb15380fd59`  
		Last Modified: Mon, 19 Dec 2016 18:10:08 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b766f86087a7130baab4f2e7bc91941b9eebec493731ea81fc4444997ab286c9`  
		Last Modified: Mon, 19 Dec 2016 18:10:11 GMT  
		Size: 1.2 MB (1216947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7619f1fd7136e5e4c4fb063118a26443151ed6d13822f9f8a84498bc77d4378`  
		Last Modified: Mon, 19 Dec 2016 18:10:06 GMT  
		Size: 173.8 KB (173771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cada1415a4d707a059a3867c761fe362cac69b6625681831b456165be9edee`  
		Last Modified: Fri, 13 Jan 2017 17:47:02 GMT  
		Size: 18.2 KB (18216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4afa76637b475c351d3bb0b88a1f8b5c9febe686a24edcfbf326d80e54ebf4e`  
		Last Modified: Fri, 13 Jan 2017 17:47:55 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1bf552ae6d145953df9f1f91638ab5f1d129a12835dac60eba0b06b593217b`  
		Last Modified: Fri, 13 Jan 2017 17:48:17 GMT  
		Size: 118.6 MB (118596461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cba1eb94941792dc7fc7634d6f9a8e383a28bacdbfa8bb6eef8f125ac06332b`  
		Last Modified: Fri, 13 Jan 2017 17:47:54 GMT  
		Size: 4.6 KB (4625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b23c28ee782d600ce6da46fc1a48320d8f1ab2595678b53a56bdd4533cdd844`  
		Last Modified: Fri, 13 Jan 2017 17:47:54 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58275ab90425666874c4f770794cc974b8086c01151d6b1390e90d030bc4c6c`  
		Last Modified: Fri, 13 Jan 2017 17:47:54 GMT  
		Size: 21.2 KB (21207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0.10`

```console
$ docker pull cassandra@sha256:06a960bf354d80731df2bc16160921457e365da1e45d3de5b0d2bb9f74b4233e
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.0.10` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.5 MB (157498505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:839701e07c565d4e91ef9cb0f2c5b4b9c809983c46fa4f78be1ef10a9dc06258`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 22:11:18 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 13 Dec 2016 23:02:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 13 Dec 2016 23:02:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 13 Dec 2016 23:02:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 13 Dec 2016 23:02:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:02:31 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 13 Jan 2017 17:43:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 13 Jan 2017 17:45:25 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' >> /etc/apt/sources.list.d/cassandra.list
# Fri, 13 Jan 2017 17:45:26 GMT
ENV CASSANDRA_VERSION=3.0.10
# Fri, 13 Jan 2017 17:45:59 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Jan 2017 17:46:01 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Fri, 13 Jan 2017 17:46:01 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 13 Jan 2017 17:46:01 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 13 Jan 2017 17:46:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Jan 2017 17:46:03 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 13 Jan 2017 17:46:03 GMT
VOLUME [/var/lib/cassandra]
# Fri, 13 Jan 2017 17:46:03 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 13 Jan 2017 17:46:04 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924bee5e776fd6b58543055615dcd4ebd1d390cba2b2c8c51b1ab159de44c406`  
		Last Modified: Tue, 13 Dec 2016 22:18:20 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77f726dd12d5bb997401801cf4cbe0130661cb5867b9990a0bcfdb15380fd59`  
		Last Modified: Mon, 19 Dec 2016 18:10:08 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b766f86087a7130baab4f2e7bc91941b9eebec493731ea81fc4444997ab286c9`  
		Last Modified: Mon, 19 Dec 2016 18:10:11 GMT  
		Size: 1.2 MB (1216947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7619f1fd7136e5e4c4fb063118a26443151ed6d13822f9f8a84498bc77d4378`  
		Last Modified: Mon, 19 Dec 2016 18:10:06 GMT  
		Size: 173.8 KB (173771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cada1415a4d707a059a3867c761fe362cac69b6625681831b456165be9edee`  
		Last Modified: Fri, 13 Jan 2017 17:47:02 GMT  
		Size: 18.2 KB (18216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c82346775b48daadbc10ee18e42319ed83adabad1798ab87635e3a7f8f5ffb9`  
		Last Modified: Fri, 13 Jan 2017 17:49:05 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a1bfcb98625d59995d39de4dbb03aa061ad6c6b75866c27391655dda09e87ff`  
		Last Modified: Fri, 13 Jan 2017 17:49:27 GMT  
		Size: 104.7 MB (104694818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd92432dc5ba0b04ac6894550de041fd5759fdbbab2d43a6bd781d6ebcc73921`  
		Last Modified: Fri, 13 Jan 2017 17:49:04 GMT  
		Size: 4.7 KB (4698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d82503206ce79267ded588201451d3198084799e1013eb95001e90ac359bde`  
		Last Modified: Fri, 13 Jan 2017 17:49:04 GMT  
		Size: 723.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f478e42c349b66c31e43d98f70bb6702c91dc2faba9afa566464f8869a9ed050`  
		Last Modified: Fri, 13 Jan 2017 17:49:04 GMT  
		Size: 23.7 KB (23736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0`

```console
$ docker pull cassandra@sha256:06a960bf354d80731df2bc16160921457e365da1e45d3de5b0d2bb9f74b4233e
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.5 MB (157498505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:839701e07c565d4e91ef9cb0f2c5b4b9c809983c46fa4f78be1ef10a9dc06258`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 22:11:18 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 13 Dec 2016 23:02:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 13 Dec 2016 23:02:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 13 Dec 2016 23:02:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 13 Dec 2016 23:02:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:02:31 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 13 Jan 2017 17:43:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 13 Jan 2017 17:45:25 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' >> /etc/apt/sources.list.d/cassandra.list
# Fri, 13 Jan 2017 17:45:26 GMT
ENV CASSANDRA_VERSION=3.0.10
# Fri, 13 Jan 2017 17:45:59 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Jan 2017 17:46:01 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Fri, 13 Jan 2017 17:46:01 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 13 Jan 2017 17:46:01 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 13 Jan 2017 17:46:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Jan 2017 17:46:03 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 13 Jan 2017 17:46:03 GMT
VOLUME [/var/lib/cassandra]
# Fri, 13 Jan 2017 17:46:03 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 13 Jan 2017 17:46:04 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924bee5e776fd6b58543055615dcd4ebd1d390cba2b2c8c51b1ab159de44c406`  
		Last Modified: Tue, 13 Dec 2016 22:18:20 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77f726dd12d5bb997401801cf4cbe0130661cb5867b9990a0bcfdb15380fd59`  
		Last Modified: Mon, 19 Dec 2016 18:10:08 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b766f86087a7130baab4f2e7bc91941b9eebec493731ea81fc4444997ab286c9`  
		Last Modified: Mon, 19 Dec 2016 18:10:11 GMT  
		Size: 1.2 MB (1216947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7619f1fd7136e5e4c4fb063118a26443151ed6d13822f9f8a84498bc77d4378`  
		Last Modified: Mon, 19 Dec 2016 18:10:06 GMT  
		Size: 173.8 KB (173771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cada1415a4d707a059a3867c761fe362cac69b6625681831b456165be9edee`  
		Last Modified: Fri, 13 Jan 2017 17:47:02 GMT  
		Size: 18.2 KB (18216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c82346775b48daadbc10ee18e42319ed83adabad1798ab87635e3a7f8f5ffb9`  
		Last Modified: Fri, 13 Jan 2017 17:49:05 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a1bfcb98625d59995d39de4dbb03aa061ad6c6b75866c27391655dda09e87ff`  
		Last Modified: Fri, 13 Jan 2017 17:49:27 GMT  
		Size: 104.7 MB (104694818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd92432dc5ba0b04ac6894550de041fd5759fdbbab2d43a6bd781d6ebcc73921`  
		Last Modified: Fri, 13 Jan 2017 17:49:04 GMT  
		Size: 4.7 KB (4698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d82503206ce79267ded588201451d3198084799e1013eb95001e90ac359bde`  
		Last Modified: Fri, 13 Jan 2017 17:49:04 GMT  
		Size: 723.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f478e42c349b66c31e43d98f70bb6702c91dc2faba9afa566464f8869a9ed050`  
		Last Modified: Fri, 13 Jan 2017 17:49:04 GMT  
		Size: 23.7 KB (23736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.9`

```console
$ docker pull cassandra@sha256:23cf025caf41c5d84cf7d8cdded73c56c6c6e654d4df2f1b80b961b8e60d8dc0
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.9` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.0 MB (161964336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:183ce21b9193dd451482c8a6db0a13621cb14f141ebc6650135a2c030874183d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 22:11:18 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 13 Dec 2016 23:02:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 13 Dec 2016 23:02:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 13 Dec 2016 23:02:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 13 Dec 2016 23:02:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:02:31 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 13 Jan 2017 17:43:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 13 Jan 2017 17:46:05 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 39x main' >> /etc/apt/sources.list.d/cassandra.list
# Fri, 13 Jan 2017 17:46:05 GMT
ENV CASSANDRA_VERSION=3.9
# Fri, 13 Jan 2017 17:46:39 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Jan 2017 17:46:40 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Fri, 13 Jan 2017 17:46:41 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 13 Jan 2017 17:46:41 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 13 Jan 2017 17:46:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Jan 2017 17:46:43 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 13 Jan 2017 17:46:43 GMT
VOLUME [/var/lib/cassandra]
# Fri, 13 Jan 2017 17:46:43 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 13 Jan 2017 17:46:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924bee5e776fd6b58543055615dcd4ebd1d390cba2b2c8c51b1ab159de44c406`  
		Last Modified: Tue, 13 Dec 2016 22:18:20 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77f726dd12d5bb997401801cf4cbe0130661cb5867b9990a0bcfdb15380fd59`  
		Last Modified: Mon, 19 Dec 2016 18:10:08 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b766f86087a7130baab4f2e7bc91941b9eebec493731ea81fc4444997ab286c9`  
		Last Modified: Mon, 19 Dec 2016 18:10:11 GMT  
		Size: 1.2 MB (1216947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7619f1fd7136e5e4c4fb063118a26443151ed6d13822f9f8a84498bc77d4378`  
		Last Modified: Mon, 19 Dec 2016 18:10:06 GMT  
		Size: 173.8 KB (173771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cada1415a4d707a059a3867c761fe362cac69b6625681831b456165be9edee`  
		Last Modified: Fri, 13 Jan 2017 17:47:02 GMT  
		Size: 18.2 KB (18216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a1e4fd47751e3c52d5ea33a3ddaefaa538f539fefee0c39b73d6660c281480`  
		Last Modified: Fri, 13 Jan 2017 17:50:03 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b582cf779e676d570b9ecc828226c41cf9eff9c55c7e354f4698d7f8532c6f7`  
		Last Modified: Fri, 13 Jan 2017 17:50:24 GMT  
		Size: 109.2 MB (109157417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba656a2626925237b4d38383338dc5f0078c1f47569f445dd2ef6ffd98172616`  
		Last Modified: Fri, 13 Jan 2017 17:50:04 GMT  
		Size: 4.4 KB (4395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f089ad896d917dabcfb09e426eb5adfd438df454a4eb7be47dd3db1041015cd`  
		Last Modified: Fri, 13 Jan 2017 17:50:06 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a35233212df37d50cfbc405ef08481ddfbc2e34016f1923af88707eaaf057d1`  
		Last Modified: Fri, 13 Jan 2017 17:50:03 GMT  
		Size: 27.3 KB (27269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3`

```console
$ docker pull cassandra@sha256:23cf025caf41c5d84cf7d8cdded73c56c6c6e654d4df2f1b80b961b8e60d8dc0
```

-	Platforms:
	-	linux; amd64

### `cassandra:3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.0 MB (161964336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:183ce21b9193dd451482c8a6db0a13621cb14f141ebc6650135a2c030874183d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 22:11:18 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 13 Dec 2016 23:02:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 13 Dec 2016 23:02:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 13 Dec 2016 23:02:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 13 Dec 2016 23:02:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:02:31 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 13 Jan 2017 17:43:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 13 Jan 2017 17:46:05 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 39x main' >> /etc/apt/sources.list.d/cassandra.list
# Fri, 13 Jan 2017 17:46:05 GMT
ENV CASSANDRA_VERSION=3.9
# Fri, 13 Jan 2017 17:46:39 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Jan 2017 17:46:40 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Fri, 13 Jan 2017 17:46:41 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 13 Jan 2017 17:46:41 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 13 Jan 2017 17:46:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Jan 2017 17:46:43 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 13 Jan 2017 17:46:43 GMT
VOLUME [/var/lib/cassandra]
# Fri, 13 Jan 2017 17:46:43 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 13 Jan 2017 17:46:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924bee5e776fd6b58543055615dcd4ebd1d390cba2b2c8c51b1ab159de44c406`  
		Last Modified: Tue, 13 Dec 2016 22:18:20 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77f726dd12d5bb997401801cf4cbe0130661cb5867b9990a0bcfdb15380fd59`  
		Last Modified: Mon, 19 Dec 2016 18:10:08 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b766f86087a7130baab4f2e7bc91941b9eebec493731ea81fc4444997ab286c9`  
		Last Modified: Mon, 19 Dec 2016 18:10:11 GMT  
		Size: 1.2 MB (1216947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7619f1fd7136e5e4c4fb063118a26443151ed6d13822f9f8a84498bc77d4378`  
		Last Modified: Mon, 19 Dec 2016 18:10:06 GMT  
		Size: 173.8 KB (173771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cada1415a4d707a059a3867c761fe362cac69b6625681831b456165be9edee`  
		Last Modified: Fri, 13 Jan 2017 17:47:02 GMT  
		Size: 18.2 KB (18216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a1e4fd47751e3c52d5ea33a3ddaefaa538f539fefee0c39b73d6660c281480`  
		Last Modified: Fri, 13 Jan 2017 17:50:03 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b582cf779e676d570b9ecc828226c41cf9eff9c55c7e354f4698d7f8532c6f7`  
		Last Modified: Fri, 13 Jan 2017 17:50:24 GMT  
		Size: 109.2 MB (109157417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba656a2626925237b4d38383338dc5f0078c1f47569f445dd2ef6ffd98172616`  
		Last Modified: Fri, 13 Jan 2017 17:50:04 GMT  
		Size: 4.4 KB (4395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f089ad896d917dabcfb09e426eb5adfd438df454a4eb7be47dd3db1041015cd`  
		Last Modified: Fri, 13 Jan 2017 17:50:06 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a35233212df37d50cfbc405ef08481ddfbc2e34016f1923af88707eaaf057d1`  
		Last Modified: Fri, 13 Jan 2017 17:50:03 GMT  
		Size: 27.3 KB (27269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:latest`

```console
$ docker pull cassandra@sha256:23cf025caf41c5d84cf7d8cdded73c56c6c6e654d4df2f1b80b961b8e60d8dc0
```

-	Platforms:
	-	linux; amd64

### `cassandra:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.0 MB (161964336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:183ce21b9193dd451482c8a6db0a13621cb14f141ebc6650135a2c030874183d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 22:11:18 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 13 Dec 2016 23:02:10 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 13 Dec 2016 23:02:10 GMT
ENV GOSU_VERSION=1.7
# Tue, 13 Dec 2016 23:02:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 13 Dec 2016 23:02:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:02:31 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Fri, 13 Jan 2017 17:43:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 13 Jan 2017 17:46:05 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 39x main' >> /etc/apt/sources.list.d/cassandra.list
# Fri, 13 Jan 2017 17:46:05 GMT
ENV CASSANDRA_VERSION=3.9
# Fri, 13 Jan 2017 17:46:39 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Jan 2017 17:46:40 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Fri, 13 Jan 2017 17:46:41 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 13 Jan 2017 17:46:41 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 13 Jan 2017 17:46:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Jan 2017 17:46:43 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 13 Jan 2017 17:46:43 GMT
VOLUME [/var/lib/cassandra]
# Fri, 13 Jan 2017 17:46:43 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 13 Jan 2017 17:46:44 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924bee5e776fd6b58543055615dcd4ebd1d390cba2b2c8c51b1ab159de44c406`  
		Last Modified: Tue, 13 Dec 2016 22:18:20 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77f726dd12d5bb997401801cf4cbe0130661cb5867b9990a0bcfdb15380fd59`  
		Last Modified: Mon, 19 Dec 2016 18:10:08 GMT  
		Size: 2.0 KB (2037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b766f86087a7130baab4f2e7bc91941b9eebec493731ea81fc4444997ab286c9`  
		Last Modified: Mon, 19 Dec 2016 18:10:11 GMT  
		Size: 1.2 MB (1216947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7619f1fd7136e5e4c4fb063118a26443151ed6d13822f9f8a84498bc77d4378`  
		Last Modified: Mon, 19 Dec 2016 18:10:06 GMT  
		Size: 173.8 KB (173771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cada1415a4d707a059a3867c761fe362cac69b6625681831b456165be9edee`  
		Last Modified: Fri, 13 Jan 2017 17:47:02 GMT  
		Size: 18.2 KB (18216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a1e4fd47751e3c52d5ea33a3ddaefaa538f539fefee0c39b73d6660c281480`  
		Last Modified: Fri, 13 Jan 2017 17:50:03 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b582cf779e676d570b9ecc828226c41cf9eff9c55c7e354f4698d7f8532c6f7`  
		Last Modified: Fri, 13 Jan 2017 17:50:24 GMT  
		Size: 109.2 MB (109157417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba656a2626925237b4d38383338dc5f0078c1f47569f445dd2ef6ffd98172616`  
		Last Modified: Fri, 13 Jan 2017 17:50:04 GMT  
		Size: 4.4 KB (4395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f089ad896d917dabcfb09e426eb5adfd438df454a4eb7be47dd3db1041015cd`  
		Last Modified: Fri, 13 Jan 2017 17:50:06 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a35233212df37d50cfbc405ef08481ddfbc2e34016f1923af88707eaaf057d1`  
		Last Modified: Fri, 13 Jan 2017 17:50:03 GMT  
		Size: 27.3 KB (27269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
