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
$ docker pull cassandra@sha256:391880a7ed6feed633723c40378dfdd2fd61c6248a0343ba44faa3da9832a727
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.1.16` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.1 MB (167078034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dc93ecefbccf900f3549d7e6dcf929d88ac0d55d10e280bd7284779caf16dd7`
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
# Tue, 13 Dec 2016 23:02:35 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 13 Dec 2016 23:03:22 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 13 Dec 2016 23:03:23 GMT
ENV CASSANDRA_VERSION=2.1.16
# Tue, 13 Dec 2016 23:04:13 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:04:15 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 13 Dec 2016 23:04:15 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 13 Dec 2016 23:04:15 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 13 Dec 2016 23:04:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 13 Dec 2016 23:04:17 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 13 Dec 2016 23:04:17 GMT
VOLUME [/var/lib/cassandra]
# Tue, 13 Dec 2016 23:04:17 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 13 Dec 2016 23:04:18 GMT
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
	-	`sha256:2d93d1e4ebba8821f89214ae10c927d124232befa337a3c54b03ac7b2ee7ad94`  
		Last Modified: Mon, 19 Dec 2016 18:10:07 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb98b03de57894f77e168a345568417901450e7a76c796aad0d686ab683f1684`  
		Last Modified: Mon, 19 Dec 2016 18:10:02 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:addf306a46702fe014d6256fb313064a5f257bba236a58026c135d2a84812f11`  
		Last Modified: Mon, 19 Dec 2016 18:10:27 GMT  
		Size: 114.3 MB (114277804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d41e7445b65ab9be85648e7295ee5d83d1f18b6805bb322d629ef989108aef8`  
		Last Modified: Mon, 19 Dec 2016 18:10:05 GMT  
		Size: 4.7 KB (4654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892bb2904f6040ca432b351a02a218e7125252dd9dbcf65e6ca916f4ad6e0533`  
		Last Modified: Mon, 19 Dec 2016 18:10:02 GMT  
		Size: 720.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac27ca456106fd8731acff4cf9d558aef2bf73a468649aee120bbbc44030fa19`  
		Last Modified: Mon, 19 Dec 2016 18:10:06 GMT  
		Size: 20.2 KB (20238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.1`

```console
$ docker pull cassandra@sha256:391880a7ed6feed633723c40378dfdd2fd61c6248a0343ba44faa3da9832a727
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.1 MB (167078034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dc93ecefbccf900f3549d7e6dcf929d88ac0d55d10e280bd7284779caf16dd7`
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
# Tue, 13 Dec 2016 23:02:35 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 13 Dec 2016 23:03:22 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 13 Dec 2016 23:03:23 GMT
ENV CASSANDRA_VERSION=2.1.16
# Tue, 13 Dec 2016 23:04:13 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:04:15 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 13 Dec 2016 23:04:15 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 13 Dec 2016 23:04:15 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 13 Dec 2016 23:04:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 13 Dec 2016 23:04:17 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 13 Dec 2016 23:04:17 GMT
VOLUME [/var/lib/cassandra]
# Tue, 13 Dec 2016 23:04:17 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 13 Dec 2016 23:04:18 GMT
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
	-	`sha256:2d93d1e4ebba8821f89214ae10c927d124232befa337a3c54b03ac7b2ee7ad94`  
		Last Modified: Mon, 19 Dec 2016 18:10:07 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb98b03de57894f77e168a345568417901450e7a76c796aad0d686ab683f1684`  
		Last Modified: Mon, 19 Dec 2016 18:10:02 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:addf306a46702fe014d6256fb313064a5f257bba236a58026c135d2a84812f11`  
		Last Modified: Mon, 19 Dec 2016 18:10:27 GMT  
		Size: 114.3 MB (114277804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d41e7445b65ab9be85648e7295ee5d83d1f18b6805bb322d629ef989108aef8`  
		Last Modified: Mon, 19 Dec 2016 18:10:05 GMT  
		Size: 4.7 KB (4654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:892bb2904f6040ca432b351a02a218e7125252dd9dbcf65e6ca916f4ad6e0533`  
		Last Modified: Mon, 19 Dec 2016 18:10:02 GMT  
		Size: 720.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac27ca456106fd8731acff4cf9d558aef2bf73a468649aee120bbbc44030fa19`  
		Last Modified: Mon, 19 Dec 2016 18:10:06 GMT  
		Size: 20.2 KB (20238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2.8`

```console
$ docker pull cassandra@sha256:f1c2f20d32313df7c22ea3832e8d70ef55130ff159128fd89fe43eb7dff6f587
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.2.8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171397685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6da981c1eebae57c25c5b5ac34b6e48c2a3f11680b57236da9a653cf952269c`
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
# Tue, 13 Dec 2016 23:02:35 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 13 Dec 2016 23:02:36 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 13 Dec 2016 23:02:36 GMT
ENV CASSANDRA_VERSION=2.2.8
# Tue, 13 Dec 2016 23:03:16 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:03:17 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 13 Dec 2016 23:03:18 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 13 Dec 2016 23:03:18 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 13 Dec 2016 23:03:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 13 Dec 2016 23:03:19 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 13 Dec 2016 23:03:20 GMT
VOLUME [/var/lib/cassandra]
# Tue, 13 Dec 2016 23:03:20 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 13 Dec 2016 23:03:20 GMT
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
	-	`sha256:2d93d1e4ebba8821f89214ae10c927d124232befa337a3c54b03ac7b2ee7ad94`  
		Last Modified: Mon, 19 Dec 2016 18:10:07 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbadbedfb91ed769341593944583273155ab8bccde62a2cbded4fc5929a69800`  
		Last Modified: Mon, 19 Dec 2016 18:11:06 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6faa1ad9fe53eaa60eedb6fbc59f0c9ea5435e4a5ff292d57387c222f80662`  
		Last Modified: Mon, 19 Dec 2016 18:11:32 GMT  
		Size: 118.6 MB (118596517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5457becd48b9b0e1b6074347f8645c53c8f227e3a4b89513ce2d5dea92ade0`  
		Last Modified: Mon, 19 Dec 2016 18:11:06 GMT  
		Size: 4.6 KB (4624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d718cb5222fad0f13f4c55ce80296390327e52784d8c3dd8fe43b2e2383450fe`  
		Last Modified: Mon, 19 Dec 2016 18:11:07 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8008fb3ba6c3f13c7061dd688681289dc2e79c2aa681e8d5d54470e9b152d70a`  
		Last Modified: Mon, 19 Dec 2016 18:11:07 GMT  
		Size: 21.2 KB (21204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2`

```console
$ docker pull cassandra@sha256:f1c2f20d32313df7c22ea3832e8d70ef55130ff159128fd89fe43eb7dff6f587
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171397685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6da981c1eebae57c25c5b5ac34b6e48c2a3f11680b57236da9a653cf952269c`
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
# Tue, 13 Dec 2016 23:02:35 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 13 Dec 2016 23:02:36 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 13 Dec 2016 23:02:36 GMT
ENV CASSANDRA_VERSION=2.2.8
# Tue, 13 Dec 2016 23:03:16 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:03:17 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 13 Dec 2016 23:03:18 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 13 Dec 2016 23:03:18 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 13 Dec 2016 23:03:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 13 Dec 2016 23:03:19 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 13 Dec 2016 23:03:20 GMT
VOLUME [/var/lib/cassandra]
# Tue, 13 Dec 2016 23:03:20 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 13 Dec 2016 23:03:20 GMT
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
	-	`sha256:2d93d1e4ebba8821f89214ae10c927d124232befa337a3c54b03ac7b2ee7ad94`  
		Last Modified: Mon, 19 Dec 2016 18:10:07 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbadbedfb91ed769341593944583273155ab8bccde62a2cbded4fc5929a69800`  
		Last Modified: Mon, 19 Dec 2016 18:11:06 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6faa1ad9fe53eaa60eedb6fbc59f0c9ea5435e4a5ff292d57387c222f80662`  
		Last Modified: Mon, 19 Dec 2016 18:11:32 GMT  
		Size: 118.6 MB (118596517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5457becd48b9b0e1b6074347f8645c53c8f227e3a4b89513ce2d5dea92ade0`  
		Last Modified: Mon, 19 Dec 2016 18:11:06 GMT  
		Size: 4.6 KB (4624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d718cb5222fad0f13f4c55ce80296390327e52784d8c3dd8fe43b2e2383450fe`  
		Last Modified: Mon, 19 Dec 2016 18:11:07 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8008fb3ba6c3f13c7061dd688681289dc2e79c2aa681e8d5d54470e9b152d70a`  
		Last Modified: Mon, 19 Dec 2016 18:11:07 GMT  
		Size: 21.2 KB (21204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2`

```console
$ docker pull cassandra@sha256:f1c2f20d32313df7c22ea3832e8d70ef55130ff159128fd89fe43eb7dff6f587
```

-	Platforms:
	-	linux; amd64

### `cassandra:2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171397685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6da981c1eebae57c25c5b5ac34b6e48c2a3f11680b57236da9a653cf952269c`
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
# Tue, 13 Dec 2016 23:02:35 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 13 Dec 2016 23:02:36 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 13 Dec 2016 23:02:36 GMT
ENV CASSANDRA_VERSION=2.2.8
# Tue, 13 Dec 2016 23:03:16 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:03:17 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 13 Dec 2016 23:03:18 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 13 Dec 2016 23:03:18 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 13 Dec 2016 23:03:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 13 Dec 2016 23:03:19 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 13 Dec 2016 23:03:20 GMT
VOLUME [/var/lib/cassandra]
# Tue, 13 Dec 2016 23:03:20 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 13 Dec 2016 23:03:20 GMT
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
	-	`sha256:2d93d1e4ebba8821f89214ae10c927d124232befa337a3c54b03ac7b2ee7ad94`  
		Last Modified: Mon, 19 Dec 2016 18:10:07 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbadbedfb91ed769341593944583273155ab8bccde62a2cbded4fc5929a69800`  
		Last Modified: Mon, 19 Dec 2016 18:11:06 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6faa1ad9fe53eaa60eedb6fbc59f0c9ea5435e4a5ff292d57387c222f80662`  
		Last Modified: Mon, 19 Dec 2016 18:11:32 GMT  
		Size: 118.6 MB (118596517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5457becd48b9b0e1b6074347f8645c53c8f227e3a4b89513ce2d5dea92ade0`  
		Last Modified: Mon, 19 Dec 2016 18:11:06 GMT  
		Size: 4.6 KB (4624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d718cb5222fad0f13f4c55ce80296390327e52784d8c3dd8fe43b2e2383450fe`  
		Last Modified: Mon, 19 Dec 2016 18:11:07 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8008fb3ba6c3f13c7061dd688681289dc2e79c2aa681e8d5d54470e9b152d70a`  
		Last Modified: Mon, 19 Dec 2016 18:11:07 GMT  
		Size: 21.2 KB (21204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0.10`

```console
$ docker pull cassandra@sha256:ede50e6cea590ab8064775fdf3769d8bffac4cdd56371c7bf5499bbb60ead3f4
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.0.10` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.5 MB (157498935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bde95173eaa242f28d7765b1faf99301bf555504567ee482338a81936040010`
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
# Tue, 13 Dec 2016 23:02:35 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 13 Dec 2016 23:05:00 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 13 Dec 2016 23:05:00 GMT
ENV CASSANDRA_VERSION=3.0.10
# Tue, 13 Dec 2016 23:06:04 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:06:05 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 13 Dec 2016 23:06:06 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 13 Dec 2016 23:06:06 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 13 Dec 2016 23:06:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 13 Dec 2016 23:06:07 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 13 Dec 2016 23:06:08 GMT
VOLUME [/var/lib/cassandra]
# Tue, 13 Dec 2016 23:06:08 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 13 Dec 2016 23:06:08 GMT
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
	-	`sha256:2d93d1e4ebba8821f89214ae10c927d124232befa337a3c54b03ac7b2ee7ad94`  
		Last Modified: Mon, 19 Dec 2016 18:10:07 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8129ab1a6c3401590ddc42836765b69637a57bba545248de82806e821bc87a21`  
		Last Modified: Mon, 19 Dec 2016 18:12:28 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:226033a703badfbee40005badaded748169edbd9505f16f571bf0d5059e48098`  
		Last Modified: Mon, 19 Dec 2016 18:12:52 GMT  
		Size: 104.7 MB (104695169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a126f0bac7f444f19ff7d1afaa73d85548eefacdd74aef4a09d1d9a9ee45f1b`  
		Last Modified: Mon, 19 Dec 2016 18:12:28 GMT  
		Size: 4.7 KB (4695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7a88eb61d8509f81191876ac6d4bfd4a2fe627c478aca3038278b4b5db7b8a`  
		Last Modified: Mon, 19 Dec 2016 18:12:28 GMT  
		Size: 720.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35bb870b6ebb45e8971c57e5480eb61ca4b421e929cf8157a258c23bbe374b5`  
		Last Modified: Mon, 19 Dec 2016 18:12:28 GMT  
		Size: 23.7 KB (23734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0`

```console
$ docker pull cassandra@sha256:ede50e6cea590ab8064775fdf3769d8bffac4cdd56371c7bf5499bbb60ead3f4
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.5 MB (157498935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bde95173eaa242f28d7765b1faf99301bf555504567ee482338a81936040010`
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
# Tue, 13 Dec 2016 23:02:35 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 13 Dec 2016 23:05:00 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 13 Dec 2016 23:05:00 GMT
ENV CASSANDRA_VERSION=3.0.10
# Tue, 13 Dec 2016 23:06:04 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:06:05 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 13 Dec 2016 23:06:06 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 13 Dec 2016 23:06:06 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 13 Dec 2016 23:06:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 13 Dec 2016 23:06:07 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 13 Dec 2016 23:06:08 GMT
VOLUME [/var/lib/cassandra]
# Tue, 13 Dec 2016 23:06:08 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 13 Dec 2016 23:06:08 GMT
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
	-	`sha256:2d93d1e4ebba8821f89214ae10c927d124232befa337a3c54b03ac7b2ee7ad94`  
		Last Modified: Mon, 19 Dec 2016 18:10:07 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8129ab1a6c3401590ddc42836765b69637a57bba545248de82806e821bc87a21`  
		Last Modified: Mon, 19 Dec 2016 18:12:28 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:226033a703badfbee40005badaded748169edbd9505f16f571bf0d5059e48098`  
		Last Modified: Mon, 19 Dec 2016 18:12:52 GMT  
		Size: 104.7 MB (104695169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a126f0bac7f444f19ff7d1afaa73d85548eefacdd74aef4a09d1d9a9ee45f1b`  
		Last Modified: Mon, 19 Dec 2016 18:12:28 GMT  
		Size: 4.7 KB (4695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7a88eb61d8509f81191876ac6d4bfd4a2fe627c478aca3038278b4b5db7b8a`  
		Last Modified: Mon, 19 Dec 2016 18:12:28 GMT  
		Size: 720.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35bb870b6ebb45e8971c57e5480eb61ca4b421e929cf8157a258c23bbe374b5`  
		Last Modified: Mon, 19 Dec 2016 18:12:28 GMT  
		Size: 23.7 KB (23734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.9`

```console
$ docker pull cassandra@sha256:ee74dfe2278a7b31dead213a804673d31f38238daef407928dde19e018ef5752
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.9` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.0 MB (161964365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:813f4d0ccb4c8e31b1017ec2878b0db60f0fb12082a49f27a66a10d81c1571a8`
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
# Tue, 13 Dec 2016 23:02:35 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 13 Dec 2016 23:04:19 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 39x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 13 Dec 2016 23:04:19 GMT
ENV CASSANDRA_VERSION=3.9
# Tue, 13 Dec 2016 23:04:54 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:04:55 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 13 Dec 2016 23:04:56 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 13 Dec 2016 23:04:56 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 13 Dec 2016 23:04:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 13 Dec 2016 23:04:57 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 13 Dec 2016 23:04:58 GMT
VOLUME [/var/lib/cassandra]
# Tue, 13 Dec 2016 23:04:58 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 13 Dec 2016 23:04:58 GMT
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
	-	`sha256:2d93d1e4ebba8821f89214ae10c927d124232befa337a3c54b03ac7b2ee7ad94`  
		Last Modified: Mon, 19 Dec 2016 18:10:07 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e714b632acd625d1303dbd2fe93bf3fe8d977e61e9fbc09d9f192f5e2dc3747f`  
		Last Modified: Mon, 19 Dec 2016 18:13:30 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277f5301a572d4317a73b9438d9e97350bcd9584a7939f7f95f09c6790eac0c3`  
		Last Modified: Mon, 19 Dec 2016 18:13:54 GMT  
		Size: 109.2 MB (109157365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a907682b9ca9eaded82a1cd9bbd729b20123b70e3becb8c5c8fc6c0837061d12`  
		Last Modified: Mon, 19 Dec 2016 18:13:30 GMT  
		Size: 4.4 KB (4395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926564adafe99cd873e54d0fe3c4d92f5ac2f9c12533643eec7db80c4c342634`  
		Last Modified: Mon, 19 Dec 2016 18:13:30 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4340a76a9458c0aa0a7bef40ae430db000356ec1626afd64463de240b99c897`  
		Last Modified: Mon, 19 Dec 2016 18:13:30 GMT  
		Size: 27.3 KB (27265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3`

```console
$ docker pull cassandra@sha256:ee74dfe2278a7b31dead213a804673d31f38238daef407928dde19e018ef5752
```

-	Platforms:
	-	linux; amd64

### `cassandra:3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.0 MB (161964365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:813f4d0ccb4c8e31b1017ec2878b0db60f0fb12082a49f27a66a10d81c1571a8`
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
# Tue, 13 Dec 2016 23:02:35 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 13 Dec 2016 23:04:19 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 39x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 13 Dec 2016 23:04:19 GMT
ENV CASSANDRA_VERSION=3.9
# Tue, 13 Dec 2016 23:04:54 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:04:55 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 13 Dec 2016 23:04:56 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 13 Dec 2016 23:04:56 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 13 Dec 2016 23:04:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 13 Dec 2016 23:04:57 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 13 Dec 2016 23:04:58 GMT
VOLUME [/var/lib/cassandra]
# Tue, 13 Dec 2016 23:04:58 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 13 Dec 2016 23:04:58 GMT
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
	-	`sha256:2d93d1e4ebba8821f89214ae10c927d124232befa337a3c54b03ac7b2ee7ad94`  
		Last Modified: Mon, 19 Dec 2016 18:10:07 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e714b632acd625d1303dbd2fe93bf3fe8d977e61e9fbc09d9f192f5e2dc3747f`  
		Last Modified: Mon, 19 Dec 2016 18:13:30 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277f5301a572d4317a73b9438d9e97350bcd9584a7939f7f95f09c6790eac0c3`  
		Last Modified: Mon, 19 Dec 2016 18:13:54 GMT  
		Size: 109.2 MB (109157365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a907682b9ca9eaded82a1cd9bbd729b20123b70e3becb8c5c8fc6c0837061d12`  
		Last Modified: Mon, 19 Dec 2016 18:13:30 GMT  
		Size: 4.4 KB (4395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926564adafe99cd873e54d0fe3c4d92f5ac2f9c12533643eec7db80c4c342634`  
		Last Modified: Mon, 19 Dec 2016 18:13:30 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4340a76a9458c0aa0a7bef40ae430db000356ec1626afd64463de240b99c897`  
		Last Modified: Mon, 19 Dec 2016 18:13:30 GMT  
		Size: 27.3 KB (27265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:latest`

```console
$ docker pull cassandra@sha256:ee74dfe2278a7b31dead213a804673d31f38238daef407928dde19e018ef5752
```

-	Platforms:
	-	linux; amd64

### `cassandra:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.0 MB (161964365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:813f4d0ccb4c8e31b1017ec2878b0db60f0fb12082a49f27a66a10d81c1571a8`
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
# Tue, 13 Dec 2016 23:02:35 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Tue, 13 Dec 2016 23:04:19 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 39x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 13 Dec 2016 23:04:19 GMT
ENV CASSANDRA_VERSION=3.9
# Tue, 13 Dec 2016 23:04:54 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:04:55 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 13 Dec 2016 23:04:56 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 13 Dec 2016 23:04:56 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 13 Dec 2016 23:04:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 13 Dec 2016 23:04:57 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 13 Dec 2016 23:04:58 GMT
VOLUME [/var/lib/cassandra]
# Tue, 13 Dec 2016 23:04:58 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 13 Dec 2016 23:04:58 GMT
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
	-	`sha256:2d93d1e4ebba8821f89214ae10c927d124232befa337a3c54b03ac7b2ee7ad94`  
		Last Modified: Mon, 19 Dec 2016 18:10:07 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e714b632acd625d1303dbd2fe93bf3fe8d977e61e9fbc09d9f192f5e2dc3747f`  
		Last Modified: Mon, 19 Dec 2016 18:13:30 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277f5301a572d4317a73b9438d9e97350bcd9584a7939f7f95f09c6790eac0c3`  
		Last Modified: Mon, 19 Dec 2016 18:13:54 GMT  
		Size: 109.2 MB (109157365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a907682b9ca9eaded82a1cd9bbd729b20123b70e3becb8c5c8fc6c0837061d12`  
		Last Modified: Mon, 19 Dec 2016 18:13:30 GMT  
		Size: 4.4 KB (4395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926564adafe99cd873e54d0fe3c4d92f5ac2f9c12533643eec7db80c4c342634`  
		Last Modified: Mon, 19 Dec 2016 18:13:30 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4340a76a9458c0aa0a7bef40ae430db000356ec1626afd64463de240b99c897`  
		Last Modified: Mon, 19 Dec 2016 18:13:30 GMT  
		Size: 27.3 KB (27265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
