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
$ docker pull cassandra@sha256:a53eebaf407f5170749b04ff9c77c434067a520483ffe0fb015b2644a075fdcb
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.1.16` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.9 MB (166878673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d8fd84ab99fbcd44afb172ea08b809981986d34d1a88f943e49b431703d5e0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:08:52 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Fri, 23 Sep 2016 18:30:08 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 23 Sep 2016 18:30:08 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 18:30:26 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 28 Sep 2016 23:32:01 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 28 Sep 2016 23:32:04 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 28 Sep 2016 23:32:05 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' >> /etc/apt/sources.list.d/cassandra.list
# Fri, 14 Oct 2016 17:10:34 GMT
ENV CASSANDRA_VERSION=2.1.16
# Fri, 14 Oct 2016 17:11:30 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Oct 2016 17:11:31 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Fri, 14 Oct 2016 17:11:31 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 14 Oct 2016 17:11:32 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 14 Oct 2016 17:11:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:11:33 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 14 Oct 2016 17:11:33 GMT
VOLUME [/var/lib/cassandra]
# Fri, 14 Oct 2016 17:11:34 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 14 Oct 2016 17:11:34 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e4c6575710bc50da5d4f58d23123f265c46466a6e93f03fd57fc56f746b9a3`  
		Last Modified: Fri, 23 Sep 2016 18:10:59 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8288e3be5a2925b92f9519314618e14f48da21a307cec51ef255d15286b3b50`  
		Last Modified: Fri, 23 Sep 2016 18:31:31 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d111f542073e14249cb5180c9d21cea686ebab9c08a3d3a243c3ddfd36de254f`  
		Last Modified: Fri, 23 Sep 2016 18:31:31 GMT  
		Size: 1.2 MB (1216335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2549cfb76ce69b18d4721486af1b093e3234254c0ee2be6e527eafc1be795dda`  
		Last Modified: Wed, 28 Sep 2016 23:40:55 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e403c05abf5eefa235a14a06c0ac4905b0a22e5ec18fd7e662e531ca1c578611`  
		Last Modified: Wed, 28 Sep 2016 23:40:53 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b49c5b306fa25b8f46291fb6f9038f949e4779327e5a942734adab23bca142a1`  
		Last Modified: Fri, 14 Oct 2016 17:12:02 GMT  
		Size: 114.3 MB (114261585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ded15ad56e677a99955766df778d691efebc01c7c8c1fca6250c30a87cfd48`  
		Last Modified: Fri, 14 Oct 2016 17:11:43 GMT  
		Size: 4.7 KB (4656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d046d1c46060ac23a7f8509013974520d22a014a568336a6d32cb22884fc42c`  
		Last Modified: Fri, 14 Oct 2016 17:11:44 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e37338eccacf874fda1e2b5097845dea17b4470aa58eb81e82f9c3b2d7532cd`  
		Last Modified: Fri, 14 Oct 2016 17:11:43 GMT  
		Size: 20.2 KB (20233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.1`

```console
$ docker pull cassandra@sha256:a53eebaf407f5170749b04ff9c77c434067a520483ffe0fb015b2644a075fdcb
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.9 MB (166878673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d8fd84ab99fbcd44afb172ea08b809981986d34d1a88f943e49b431703d5e0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:08:52 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Fri, 23 Sep 2016 18:30:08 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 23 Sep 2016 18:30:08 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 18:30:26 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 28 Sep 2016 23:32:01 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 28 Sep 2016 23:32:04 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 28 Sep 2016 23:32:05 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' >> /etc/apt/sources.list.d/cassandra.list
# Fri, 14 Oct 2016 17:10:34 GMT
ENV CASSANDRA_VERSION=2.1.16
# Fri, 14 Oct 2016 17:11:30 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 14 Oct 2016 17:11:31 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Fri, 14 Oct 2016 17:11:31 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 14 Oct 2016 17:11:32 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 14 Oct 2016 17:11:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Oct 2016 17:11:33 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 14 Oct 2016 17:11:33 GMT
VOLUME [/var/lib/cassandra]
# Fri, 14 Oct 2016 17:11:34 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 14 Oct 2016 17:11:34 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e4c6575710bc50da5d4f58d23123f265c46466a6e93f03fd57fc56f746b9a3`  
		Last Modified: Fri, 23 Sep 2016 18:10:59 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8288e3be5a2925b92f9519314618e14f48da21a307cec51ef255d15286b3b50`  
		Last Modified: Fri, 23 Sep 2016 18:31:31 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d111f542073e14249cb5180c9d21cea686ebab9c08a3d3a243c3ddfd36de254f`  
		Last Modified: Fri, 23 Sep 2016 18:31:31 GMT  
		Size: 1.2 MB (1216335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2549cfb76ce69b18d4721486af1b093e3234254c0ee2be6e527eafc1be795dda`  
		Last Modified: Wed, 28 Sep 2016 23:40:55 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e403c05abf5eefa235a14a06c0ac4905b0a22e5ec18fd7e662e531ca1c578611`  
		Last Modified: Wed, 28 Sep 2016 23:40:53 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b49c5b306fa25b8f46291fb6f9038f949e4779327e5a942734adab23bca142a1`  
		Last Modified: Fri, 14 Oct 2016 17:12:02 GMT  
		Size: 114.3 MB (114261585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ded15ad56e677a99955766df778d691efebc01c7c8c1fca6250c30a87cfd48`  
		Last Modified: Fri, 14 Oct 2016 17:11:43 GMT  
		Size: 4.7 KB (4656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d046d1c46060ac23a7f8509013974520d22a014a568336a6d32cb22884fc42c`  
		Last Modified: Fri, 14 Oct 2016 17:11:44 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e37338eccacf874fda1e2b5097845dea17b4470aa58eb81e82f9c3b2d7532cd`  
		Last Modified: Fri, 14 Oct 2016 17:11:43 GMT  
		Size: 20.2 KB (20233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2.8`

```console
$ docker pull cassandra@sha256:585c655122b3aa1464e1c9e638a46ecbdb8f4bd6dd32b2506a4cad9385b9b622
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.2.8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.2 MB (171164847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f74c33ce166088428e48d8d2b2eeda33473ca414384278502732ba3081441f8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:08:52 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Fri, 23 Sep 2016 18:30:08 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 23 Sep 2016 18:30:08 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 18:30:26 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 28 Sep 2016 23:32:01 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 28 Sep 2016 23:32:04 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 28 Sep 2016 23:32:54 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Wed, 28 Sep 2016 23:32:54 GMT
ENV CASSANDRA_VERSION=2.2.8
# Wed, 28 Sep 2016 23:39:01 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 23:39:02 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Wed, 28 Sep 2016 23:39:02 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Wed, 28 Sep 2016 23:39:03 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Wed, 28 Sep 2016 23:39:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Sep 2016 23:39:04 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Wed, 28 Sep 2016 23:39:04 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Sep 2016 23:39:04 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Wed, 28 Sep 2016 23:39:05 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e4c6575710bc50da5d4f58d23123f265c46466a6e93f03fd57fc56f746b9a3`  
		Last Modified: Fri, 23 Sep 2016 18:10:59 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8288e3be5a2925b92f9519314618e14f48da21a307cec51ef255d15286b3b50`  
		Last Modified: Fri, 23 Sep 2016 18:31:31 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d111f542073e14249cb5180c9d21cea686ebab9c08a3d3a243c3ddfd36de254f`  
		Last Modified: Fri, 23 Sep 2016 18:31:31 GMT  
		Size: 1.2 MB (1216335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2549cfb76ce69b18d4721486af1b093e3234254c0ee2be6e527eafc1be795dda`  
		Last Modified: Wed, 28 Sep 2016 23:40:55 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad61613d8bd0458d3ce8f076aeaa0011b0a197a801e62c86154dcfceb44110d`  
		Last Modified: Wed, 28 Sep 2016 23:41:39 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:946c5e135a529995929594aaac156959f4eda25aa4ae2b57df4d3410cdeac9d3`  
		Last Modified: Wed, 28 Sep 2016 23:42:00 GMT  
		Size: 118.5 MB (118546820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33874465828197f2f41e0d23b7f777ea33482a1c21e57f7b01767b90426227c3`  
		Last Modified: Wed, 28 Sep 2016 23:41:38 GMT  
		Size: 4.6 KB (4627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c235aa6e97b8eb44ac1b5143a72c959046c695b2e900dcd1be048fe3406d27c`  
		Last Modified: Wed, 28 Sep 2016 23:41:39 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e257f936c235b7df7d0337c8bf3e4b4c34eac1cb1d4f5c3e5854a13eb7a6c7ca`  
		Last Modified: Wed, 28 Sep 2016 23:41:39 GMT  
		Size: 21.2 KB (21201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2`

```console
$ docker pull cassandra@sha256:585c655122b3aa1464e1c9e638a46ecbdb8f4bd6dd32b2506a4cad9385b9b622
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.2 MB (171164847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f74c33ce166088428e48d8d2b2eeda33473ca414384278502732ba3081441f8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:08:52 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Fri, 23 Sep 2016 18:30:08 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 23 Sep 2016 18:30:08 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 18:30:26 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 28 Sep 2016 23:32:01 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 28 Sep 2016 23:32:04 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 28 Sep 2016 23:32:54 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Wed, 28 Sep 2016 23:32:54 GMT
ENV CASSANDRA_VERSION=2.2.8
# Wed, 28 Sep 2016 23:39:01 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 23:39:02 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Wed, 28 Sep 2016 23:39:02 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Wed, 28 Sep 2016 23:39:03 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Wed, 28 Sep 2016 23:39:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Sep 2016 23:39:04 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Wed, 28 Sep 2016 23:39:04 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Sep 2016 23:39:04 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Wed, 28 Sep 2016 23:39:05 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e4c6575710bc50da5d4f58d23123f265c46466a6e93f03fd57fc56f746b9a3`  
		Last Modified: Fri, 23 Sep 2016 18:10:59 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8288e3be5a2925b92f9519314618e14f48da21a307cec51ef255d15286b3b50`  
		Last Modified: Fri, 23 Sep 2016 18:31:31 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d111f542073e14249cb5180c9d21cea686ebab9c08a3d3a243c3ddfd36de254f`  
		Last Modified: Fri, 23 Sep 2016 18:31:31 GMT  
		Size: 1.2 MB (1216335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2549cfb76ce69b18d4721486af1b093e3234254c0ee2be6e527eafc1be795dda`  
		Last Modified: Wed, 28 Sep 2016 23:40:55 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad61613d8bd0458d3ce8f076aeaa0011b0a197a801e62c86154dcfceb44110d`  
		Last Modified: Wed, 28 Sep 2016 23:41:39 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:946c5e135a529995929594aaac156959f4eda25aa4ae2b57df4d3410cdeac9d3`  
		Last Modified: Wed, 28 Sep 2016 23:42:00 GMT  
		Size: 118.5 MB (118546820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33874465828197f2f41e0d23b7f777ea33482a1c21e57f7b01767b90426227c3`  
		Last Modified: Wed, 28 Sep 2016 23:41:38 GMT  
		Size: 4.6 KB (4627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c235aa6e97b8eb44ac1b5143a72c959046c695b2e900dcd1be048fe3406d27c`  
		Last Modified: Wed, 28 Sep 2016 23:41:39 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e257f936c235b7df7d0337c8bf3e4b4c34eac1cb1d4f5c3e5854a13eb7a6c7ca`  
		Last Modified: Wed, 28 Sep 2016 23:41:39 GMT  
		Size: 21.2 KB (21201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2`

```console
$ docker pull cassandra@sha256:585c655122b3aa1464e1c9e638a46ecbdb8f4bd6dd32b2506a4cad9385b9b622
```

-	Platforms:
	-	linux; amd64

### `cassandra:2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.2 MB (171164847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f74c33ce166088428e48d8d2b2eeda33473ca414384278502732ba3081441f8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:08:52 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Fri, 23 Sep 2016 18:30:08 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 23 Sep 2016 18:30:08 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 18:30:26 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 28 Sep 2016 23:32:01 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 28 Sep 2016 23:32:04 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 28 Sep 2016 23:32:54 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Wed, 28 Sep 2016 23:32:54 GMT
ENV CASSANDRA_VERSION=2.2.8
# Wed, 28 Sep 2016 23:39:01 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 23:39:02 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Wed, 28 Sep 2016 23:39:02 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Wed, 28 Sep 2016 23:39:03 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Wed, 28 Sep 2016 23:39:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Sep 2016 23:39:04 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Wed, 28 Sep 2016 23:39:04 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Sep 2016 23:39:04 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Wed, 28 Sep 2016 23:39:05 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e4c6575710bc50da5d4f58d23123f265c46466a6e93f03fd57fc56f746b9a3`  
		Last Modified: Fri, 23 Sep 2016 18:10:59 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8288e3be5a2925b92f9519314618e14f48da21a307cec51ef255d15286b3b50`  
		Last Modified: Fri, 23 Sep 2016 18:31:31 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d111f542073e14249cb5180c9d21cea686ebab9c08a3d3a243c3ddfd36de254f`  
		Last Modified: Fri, 23 Sep 2016 18:31:31 GMT  
		Size: 1.2 MB (1216335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2549cfb76ce69b18d4721486af1b093e3234254c0ee2be6e527eafc1be795dda`  
		Last Modified: Wed, 28 Sep 2016 23:40:55 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad61613d8bd0458d3ce8f076aeaa0011b0a197a801e62c86154dcfceb44110d`  
		Last Modified: Wed, 28 Sep 2016 23:41:39 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:946c5e135a529995929594aaac156959f4eda25aa4ae2b57df4d3410cdeac9d3`  
		Last Modified: Wed, 28 Sep 2016 23:42:00 GMT  
		Size: 118.5 MB (118546820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33874465828197f2f41e0d23b7f777ea33482a1c21e57f7b01767b90426227c3`  
		Last Modified: Wed, 28 Sep 2016 23:41:38 GMT  
		Size: 4.6 KB (4627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c235aa6e97b8eb44ac1b5143a72c959046c695b2e900dcd1be048fe3406d27c`  
		Last Modified: Wed, 28 Sep 2016 23:41:39 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e257f936c235b7df7d0337c8bf3e4b4c34eac1cb1d4f5c3e5854a13eb7a6c7ca`  
		Last Modified: Wed, 28 Sep 2016 23:41:39 GMT  
		Size: 21.2 KB (21201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0.9`

```console
$ docker pull cassandra@sha256:d4dd6624018b938e92202429a71ae1b905e9d059069b311bad00177d8072a756
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.0.9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.2 MB (157173156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c09a59a95f6f1ac7141ad2ff3063dd627cd357699dd266479ca1a2677a4e525`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:08:52 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Fri, 23 Sep 2016 18:30:08 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 23 Sep 2016 18:30:08 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 18:30:26 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 28 Sep 2016 23:32:01 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 28 Sep 2016 23:32:04 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 28 Sep 2016 23:39:06 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' >> /etc/apt/sources.list.d/cassandra.list
# Wed, 28 Sep 2016 23:39:06 GMT
ENV CASSANDRA_VERSION=3.0.9
# Wed, 28 Sep 2016 23:39:50 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 23:39:51 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Wed, 28 Sep 2016 23:39:51 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Wed, 28 Sep 2016 23:39:52 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Wed, 28 Sep 2016 23:39:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Sep 2016 23:39:53 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Wed, 28 Sep 2016 23:39:53 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Sep 2016 23:39:54 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Wed, 28 Sep 2016 23:39:54 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e4c6575710bc50da5d4f58d23123f265c46466a6e93f03fd57fc56f746b9a3`  
		Last Modified: Fri, 23 Sep 2016 18:10:59 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8288e3be5a2925b92f9519314618e14f48da21a307cec51ef255d15286b3b50`  
		Last Modified: Fri, 23 Sep 2016 18:31:31 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d111f542073e14249cb5180c9d21cea686ebab9c08a3d3a243c3ddfd36de254f`  
		Last Modified: Fri, 23 Sep 2016 18:31:31 GMT  
		Size: 1.2 MB (1216335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2549cfb76ce69b18d4721486af1b093e3234254c0ee2be6e527eafc1be795dda`  
		Last Modified: Wed, 28 Sep 2016 23:40:55 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568adc6391e5d6bdb5bb48d3d5c31708a0dd69dd9af16b223cfac3d0631a611b`  
		Last Modified: Wed, 28 Sep 2016 23:42:38 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaaf3c295632b35567901356d9d1efc8b236aee50025b43f0a67b52c5c1447b1`  
		Last Modified: Wed, 28 Sep 2016 23:42:59 GMT  
		Size: 104.6 MB (104552529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5576f088a6fe0622f749b7e8e6c6cf2bfef5474a545401db3fad26c9a17dac6e`  
		Last Modified: Wed, 28 Sep 2016 23:42:38 GMT  
		Size: 4.7 KB (4700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86681b5464d21fd1f2aa75ec3805851d24ddac8e6b3a99768d79dac624a47837`  
		Last Modified: Wed, 28 Sep 2016 23:42:38 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c1851b5051bc55751faa998ed1a275cfed918205da81fd1ec5f20f1a782860`  
		Last Modified: Wed, 28 Sep 2016 23:42:38 GMT  
		Size: 23.7 KB (23728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0`

```console
$ docker pull cassandra@sha256:d4dd6624018b938e92202429a71ae1b905e9d059069b311bad00177d8072a756
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.2 MB (157173156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c09a59a95f6f1ac7141ad2ff3063dd627cd357699dd266479ca1a2677a4e525`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:08:52 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Fri, 23 Sep 2016 18:30:08 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 23 Sep 2016 18:30:08 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 18:30:26 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 28 Sep 2016 23:32:01 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 28 Sep 2016 23:32:04 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 28 Sep 2016 23:39:06 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' >> /etc/apt/sources.list.d/cassandra.list
# Wed, 28 Sep 2016 23:39:06 GMT
ENV CASSANDRA_VERSION=3.0.9
# Wed, 28 Sep 2016 23:39:50 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 23:39:51 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Wed, 28 Sep 2016 23:39:51 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Wed, 28 Sep 2016 23:39:52 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Wed, 28 Sep 2016 23:39:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Sep 2016 23:39:53 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Wed, 28 Sep 2016 23:39:53 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Sep 2016 23:39:54 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Wed, 28 Sep 2016 23:39:54 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e4c6575710bc50da5d4f58d23123f265c46466a6e93f03fd57fc56f746b9a3`  
		Last Modified: Fri, 23 Sep 2016 18:10:59 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8288e3be5a2925b92f9519314618e14f48da21a307cec51ef255d15286b3b50`  
		Last Modified: Fri, 23 Sep 2016 18:31:31 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d111f542073e14249cb5180c9d21cea686ebab9c08a3d3a243c3ddfd36de254f`  
		Last Modified: Fri, 23 Sep 2016 18:31:31 GMT  
		Size: 1.2 MB (1216335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2549cfb76ce69b18d4721486af1b093e3234254c0ee2be6e527eafc1be795dda`  
		Last Modified: Wed, 28 Sep 2016 23:40:55 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568adc6391e5d6bdb5bb48d3d5c31708a0dd69dd9af16b223cfac3d0631a611b`  
		Last Modified: Wed, 28 Sep 2016 23:42:38 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaaf3c295632b35567901356d9d1efc8b236aee50025b43f0a67b52c5c1447b1`  
		Last Modified: Wed, 28 Sep 2016 23:42:59 GMT  
		Size: 104.6 MB (104552529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5576f088a6fe0622f749b7e8e6c6cf2bfef5474a545401db3fad26c9a17dac6e`  
		Last Modified: Wed, 28 Sep 2016 23:42:38 GMT  
		Size: 4.7 KB (4700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86681b5464d21fd1f2aa75ec3805851d24ddac8e6b3a99768d79dac624a47837`  
		Last Modified: Wed, 28 Sep 2016 23:42:38 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c1851b5051bc55751faa998ed1a275cfed918205da81fd1ec5f20f1a782860`  
		Last Modified: Wed, 28 Sep 2016 23:42:38 GMT  
		Size: 23.7 KB (23728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.9`

```console
$ docker pull cassandra@sha256:d593202e05cb566996dd4efe436f1d07790a77b1d67ff2c8da1e1213d31edfa6
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.8 MB (161769211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a552f6550254e19928bf364e094700e7f878af46111d0e8c3abd28cd20813368`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:08:52 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Fri, 23 Sep 2016 18:30:08 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 23 Sep 2016 18:30:08 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 18:30:26 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 28 Sep 2016 23:32:01 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 28 Sep 2016 23:32:04 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 05 Oct 2016 20:10:41 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 39x main' >> /etc/apt/sources.list.d/cassandra.list
# Wed, 05 Oct 2016 20:10:42 GMT
ENV CASSANDRA_VERSION=3.9
# Wed, 05 Oct 2016 20:11:21 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Oct 2016 20:11:23 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Wed, 05 Oct 2016 20:11:23 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Wed, 05 Oct 2016 20:11:24 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Wed, 05 Oct 2016 20:11:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Oct 2016 20:11:25 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Wed, 05 Oct 2016 20:11:25 GMT
VOLUME [/var/lib/cassandra]
# Wed, 05 Oct 2016 20:11:26 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Wed, 05 Oct 2016 20:11:26 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e4c6575710bc50da5d4f58d23123f265c46466a6e93f03fd57fc56f746b9a3`  
		Last Modified: Fri, 23 Sep 2016 18:10:59 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8288e3be5a2925b92f9519314618e14f48da21a307cec51ef255d15286b3b50`  
		Last Modified: Fri, 23 Sep 2016 18:31:31 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d111f542073e14249cb5180c9d21cea686ebab9c08a3d3a243c3ddfd36de254f`  
		Last Modified: Fri, 23 Sep 2016 18:31:31 GMT  
		Size: 1.2 MB (1216335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2549cfb76ce69b18d4721486af1b093e3234254c0ee2be6e527eafc1be795dda`  
		Last Modified: Wed, 28 Sep 2016 23:40:55 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b08c8bf2faf6a47b4b5158ad9b5bcbf53453657fa9306ca76f620dc3378d61c`  
		Last Modified: Wed, 05 Oct 2016 20:15:21 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30fe08da8b46b0810d43735dfcf757379a4ff271ab871c001d6a44f19765900d`  
		Last Modified: Wed, 05 Oct 2016 20:15:42 GMT  
		Size: 109.1 MB (109145348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92992ea163cd493dbb2aaf395aa407fa83d592cd311410e9933fee633e95db75`  
		Last Modified: Wed, 05 Oct 2016 20:15:22 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f182c20c76fef8cf989a532df4c3362e4d52f32c9414e6fff6cf950197c5273b`  
		Last Modified: Wed, 05 Oct 2016 20:15:21 GMT  
		Size: 719.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ffb98ed69bada5ba76da8c5529e4e85d790e69061abfa87b1723ec0588d486c`  
		Last Modified: Wed, 05 Oct 2016 20:15:21 GMT  
		Size: 27.3 KB (27269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3`

```console
$ docker pull cassandra@sha256:d593202e05cb566996dd4efe436f1d07790a77b1d67ff2c8da1e1213d31edfa6
```

-	Platforms:
	-	linux; amd64

### `cassandra:3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.8 MB (161769211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a552f6550254e19928bf364e094700e7f878af46111d0e8c3abd28cd20813368`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:08:52 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Fri, 23 Sep 2016 18:30:08 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 23 Sep 2016 18:30:08 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 18:30:26 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 28 Sep 2016 23:32:01 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 28 Sep 2016 23:32:04 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 05 Oct 2016 20:10:41 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 39x main' >> /etc/apt/sources.list.d/cassandra.list
# Wed, 05 Oct 2016 20:10:42 GMT
ENV CASSANDRA_VERSION=3.9
# Wed, 05 Oct 2016 20:11:21 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Oct 2016 20:11:23 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Wed, 05 Oct 2016 20:11:23 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Wed, 05 Oct 2016 20:11:24 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Wed, 05 Oct 2016 20:11:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Oct 2016 20:11:25 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Wed, 05 Oct 2016 20:11:25 GMT
VOLUME [/var/lib/cassandra]
# Wed, 05 Oct 2016 20:11:26 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Wed, 05 Oct 2016 20:11:26 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e4c6575710bc50da5d4f58d23123f265c46466a6e93f03fd57fc56f746b9a3`  
		Last Modified: Fri, 23 Sep 2016 18:10:59 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8288e3be5a2925b92f9519314618e14f48da21a307cec51ef255d15286b3b50`  
		Last Modified: Fri, 23 Sep 2016 18:31:31 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d111f542073e14249cb5180c9d21cea686ebab9c08a3d3a243c3ddfd36de254f`  
		Last Modified: Fri, 23 Sep 2016 18:31:31 GMT  
		Size: 1.2 MB (1216335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2549cfb76ce69b18d4721486af1b093e3234254c0ee2be6e527eafc1be795dda`  
		Last Modified: Wed, 28 Sep 2016 23:40:55 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b08c8bf2faf6a47b4b5158ad9b5bcbf53453657fa9306ca76f620dc3378d61c`  
		Last Modified: Wed, 05 Oct 2016 20:15:21 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30fe08da8b46b0810d43735dfcf757379a4ff271ab871c001d6a44f19765900d`  
		Last Modified: Wed, 05 Oct 2016 20:15:42 GMT  
		Size: 109.1 MB (109145348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92992ea163cd493dbb2aaf395aa407fa83d592cd311410e9933fee633e95db75`  
		Last Modified: Wed, 05 Oct 2016 20:15:22 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f182c20c76fef8cf989a532df4c3362e4d52f32c9414e6fff6cf950197c5273b`  
		Last Modified: Wed, 05 Oct 2016 20:15:21 GMT  
		Size: 719.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ffb98ed69bada5ba76da8c5529e4e85d790e69061abfa87b1723ec0588d486c`  
		Last Modified: Wed, 05 Oct 2016 20:15:21 GMT  
		Size: 27.3 KB (27269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:latest`

```console
$ docker pull cassandra@sha256:d593202e05cb566996dd4efe436f1d07790a77b1d67ff2c8da1e1213d31edfa6
```

-	Platforms:
	-	linux; amd64

### `cassandra:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.8 MB (161769211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a552f6550254e19928bf364e094700e7f878af46111d0e8c3abd28cd20813368`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:08:52 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Fri, 23 Sep 2016 18:30:08 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Fri, 23 Sep 2016 18:30:08 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 18:30:26 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 28 Sep 2016 23:32:01 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Wed, 28 Sep 2016 23:32:04 GMT
RUN set -ex 	&& for key in $GPG_KEYS; do 		apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done
# Wed, 05 Oct 2016 20:10:41 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 39x main' >> /etc/apt/sources.list.d/cassandra.list
# Wed, 05 Oct 2016 20:10:42 GMT
ENV CASSANDRA_VERSION=3.9
# Wed, 05 Oct 2016 20:11:21 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Oct 2016 20:11:23 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Wed, 05 Oct 2016 20:11:23 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Wed, 05 Oct 2016 20:11:24 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Wed, 05 Oct 2016 20:11:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Oct 2016 20:11:25 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Wed, 05 Oct 2016 20:11:25 GMT
VOLUME [/var/lib/cassandra]
# Wed, 05 Oct 2016 20:11:26 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Wed, 05 Oct 2016 20:11:26 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e4c6575710bc50da5d4f58d23123f265c46466a6e93f03fd57fc56f746b9a3`  
		Last Modified: Fri, 23 Sep 2016 18:10:59 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8288e3be5a2925b92f9519314618e14f48da21a307cec51ef255d15286b3b50`  
		Last Modified: Fri, 23 Sep 2016 18:31:31 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d111f542073e14249cb5180c9d21cea686ebab9c08a3d3a243c3ddfd36de254f`  
		Last Modified: Fri, 23 Sep 2016 18:31:31 GMT  
		Size: 1.2 MB (1216335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2549cfb76ce69b18d4721486af1b093e3234254c0ee2be6e527eafc1be795dda`  
		Last Modified: Wed, 28 Sep 2016 23:40:55 GMT  
		Size: 18.3 KB (18301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b08c8bf2faf6a47b4b5158ad9b5bcbf53453657fa9306ca76f620dc3378d61c`  
		Last Modified: Wed, 05 Oct 2016 20:15:21 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30fe08da8b46b0810d43735dfcf757379a4ff271ab871c001d6a44f19765900d`  
		Last Modified: Wed, 05 Oct 2016 20:15:42 GMT  
		Size: 109.1 MB (109145348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92992ea163cd493dbb2aaf395aa407fa83d592cd311410e9933fee633e95db75`  
		Last Modified: Wed, 05 Oct 2016 20:15:22 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f182c20c76fef8cf989a532df4c3362e4d52f32c9414e6fff6cf950197c5273b`  
		Last Modified: Wed, 05 Oct 2016 20:15:21 GMT  
		Size: 719.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ffb98ed69bada5ba76da8c5529e4e85d790e69061abfa87b1723ec0588d486c`  
		Last Modified: Wed, 05 Oct 2016 20:15:21 GMT  
		Size: 27.3 KB (27269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
