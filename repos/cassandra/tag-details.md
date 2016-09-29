<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `cassandra`

-	[`cassandra:2.1.15`](#cassandra2115)
-	[`cassandra:2.1`](#cassandra21)
-	[`cassandra:2.2.8`](#cassandra228)
-	[`cassandra:2.2`](#cassandra22)
-	[`cassandra:2`](#cassandra2)
-	[`cassandra:3.0.9`](#cassandra309)
-	[`cassandra:3.0`](#cassandra30)
-	[`cassandra:3.7`](#cassandra37)
-	[`cassandra:3`](#cassandra3)
-	[`cassandra:latest`](#cassandralatest)

## `cassandra:2.1.15`

```console
$ docker pull cassandra@sha256:79092b7715f19960358bac74210d68aad258a902f952502b3589973c2d243376
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.1.15` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166720145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb1030e4b91b8e79291ae83c461b81bbd4161bf7f112e0f624c52d8921676da9`
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
# Fri, 23 Sep 2016 18:30:27 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 514A2AD631A57A16DD0047EC749D6EEC0353B12C
# Fri, 23 Sep 2016 18:32:21 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' >> /etc/apt/sources.list.d/cassandra.list
# Fri, 23 Sep 2016 18:32:22 GMT
ENV CASSANDRA_VERSION=2.1.15
# Fri, 23 Sep 2016 18:33:09 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:33:13 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Fri, 23 Sep 2016 18:33:13 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 23 Sep 2016 18:33:14 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 23 Sep 2016 18:33:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 18:33:15 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 23 Sep 2016 18:33:15 GMT
VOLUME [/var/lib/cassandra]
# Fri, 23 Sep 2016 18:33:16 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 23 Sep 2016 18:33:16 GMT
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
	-	`sha256:cd2fd81bda3a3b6b98a350382463234e090fe8726cea033bc2e490c4aab24bb4`  
		Last Modified: Fri, 23 Sep 2016 18:31:30 GMT  
		Size: 3.0 KB (3045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3db62ffa6d6b65dbf8085146998c7047ca86dfafe7126c5ccc0aa420ca481ac`  
		Last Modified: Fri, 23 Sep 2016 18:33:27 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:632d1955aa6e5b61644867c978640891a84f57459a2e31792a0cd73c3011c1d3`  
		Last Modified: Fri, 23 Sep 2016 18:33:49 GMT  
		Size: 114.1 MB (114118356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec89fb0d6407322841087dcf112cc5950c372d93466df1981d5ed92053202c2`  
		Last Modified: Fri, 23 Sep 2016 18:33:24 GMT  
		Size: 4.7 KB (4655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d672194677f2316d288990237e331568ecf5ca83503ea73abd11d8d2cedd51ec`  
		Last Modified: Fri, 23 Sep 2016 18:33:24 GMT  
		Size: 720.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f276aa50b653a2354f7606e274dac38930985865d46ae081a0c70cbd46bd495c`  
		Last Modified: Fri, 23 Sep 2016 18:33:24 GMT  
		Size: 20.2 KB (20193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.1`

```console
$ docker pull cassandra@sha256:79092b7715f19960358bac74210d68aad258a902f952502b3589973c2d243376
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166720145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb1030e4b91b8e79291ae83c461b81bbd4161bf7f112e0f624c52d8921676da9`
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
# Fri, 23 Sep 2016 18:30:27 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 514A2AD631A57A16DD0047EC749D6EEC0353B12C
# Fri, 23 Sep 2016 18:32:21 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' >> /etc/apt/sources.list.d/cassandra.list
# Fri, 23 Sep 2016 18:32:22 GMT
ENV CASSANDRA_VERSION=2.1.15
# Fri, 23 Sep 2016 18:33:09 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:33:13 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Fri, 23 Sep 2016 18:33:13 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 23 Sep 2016 18:33:14 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 23 Sep 2016 18:33:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 18:33:15 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 23 Sep 2016 18:33:15 GMT
VOLUME [/var/lib/cassandra]
# Fri, 23 Sep 2016 18:33:16 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 23 Sep 2016 18:33:16 GMT
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
	-	`sha256:cd2fd81bda3a3b6b98a350382463234e090fe8726cea033bc2e490c4aab24bb4`  
		Last Modified: Fri, 23 Sep 2016 18:31:30 GMT  
		Size: 3.0 KB (3045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3db62ffa6d6b65dbf8085146998c7047ca86dfafe7126c5ccc0aa420ca481ac`  
		Last Modified: Fri, 23 Sep 2016 18:33:27 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:632d1955aa6e5b61644867c978640891a84f57459a2e31792a0cd73c3011c1d3`  
		Last Modified: Fri, 23 Sep 2016 18:33:49 GMT  
		Size: 114.1 MB (114118356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec89fb0d6407322841087dcf112cc5950c372d93466df1981d5ed92053202c2`  
		Last Modified: Fri, 23 Sep 2016 18:33:24 GMT  
		Size: 4.7 KB (4655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d672194677f2316d288990237e331568ecf5ca83503ea73abd11d8d2cedd51ec`  
		Last Modified: Fri, 23 Sep 2016 18:33:24 GMT  
		Size: 720.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f276aa50b653a2354f7606e274dac38930985865d46ae081a0c70cbd46bd495c`  
		Last Modified: Fri, 23 Sep 2016 18:33:24 GMT  
		Size: 20.2 KB (20193 bytes)  
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
$ docker pull cassandra@sha256:8f044e137079d2ce91fdbfa976f1a6a7b9b246d96f440edf62828d6c85518671
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.0 MB (171002633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b556f467c0ba94238ddd2a3238d8f0fc8fd168d51dcd5edb3d3a931c2a939786`
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
# Fri, 23 Sep 2016 18:30:27 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 514A2AD631A57A16DD0047EC749D6EEC0353B12C
# Fri, 23 Sep 2016 18:30:28 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Fri, 23 Sep 2016 18:30:29 GMT
ENV CASSANDRA_VERSION=2.2.7
# Fri, 23 Sep 2016 18:31:14 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:31:17 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Fri, 23 Sep 2016 18:31:17 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 23 Sep 2016 18:31:18 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 23 Sep 2016 18:31:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 18:31:19 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 23 Sep 2016 18:31:19 GMT
VOLUME [/var/lib/cassandra]
# Fri, 23 Sep 2016 18:31:20 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 23 Sep 2016 18:31:20 GMT
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
	-	`sha256:cd2fd81bda3a3b6b98a350382463234e090fe8726cea033bc2e490c4aab24bb4`  
		Last Modified: Fri, 23 Sep 2016 18:31:30 GMT  
		Size: 3.0 KB (3045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45ef9e7b35ad3418ce98691764f35d45cc547b5048ec2dc7eaca123bf7d86159`  
		Last Modified: Fri, 23 Sep 2016 18:31:27 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:522ec65f3299f54fa7c9444f1dbfd090d0d4d5503e10a3baa8d1d3b7b7a15e66`  
		Last Modified: Fri, 23 Sep 2016 18:31:50 GMT  
		Size: 118.4 MB (118399972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b1fc40ad97ad2127e3c1385a0c3344e215f0192dd41671599b6d92b28ca411`  
		Last Modified: Fri, 23 Sep 2016 18:31:27 GMT  
		Size: 4.6 KB (4628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093dec8b7f23e0407d2579a13ba2feef5179289bdbb55aec24fbd00ff68fbc9c`  
		Last Modified: Fri, 23 Sep 2016 18:31:28 GMT  
		Size: 719.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5465a0e4726a6212bd992305252da973c422eebff051839e3428bb8a91b6a60`  
		Last Modified: Fri, 23 Sep 2016 18:31:29 GMT  
		Size: 21.1 KB (21091 bytes)  
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
$ docker pull cassandra@sha256:1f6ef22bf4665dd071792efec8cf88275a014a11dcc064c4a7140a577c52dbed
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.0.9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.2 MB (157157958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a102db780fbc8fadd556f2135259c2e87f36cc002b67dab3195b03acb5136013`
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
# Fri, 23 Sep 2016 18:30:27 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 514A2AD631A57A16DD0047EC749D6EEC0353B12C
# Fri, 23 Sep 2016 18:35:48 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' >> /etc/apt/sources.list.d/cassandra.list
# Fri, 23 Sep 2016 18:35:49 GMT
ENV CASSANDRA_VERSION=3.0.9
# Fri, 23 Sep 2016 18:36:25 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:36:28 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Fri, 23 Sep 2016 18:36:28 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 23 Sep 2016 18:36:29 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 23 Sep 2016 18:36:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 18:36:30 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 23 Sep 2016 18:36:30 GMT
VOLUME [/var/lib/cassandra]
# Fri, 23 Sep 2016 18:36:30 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 23 Sep 2016 18:36:31 GMT
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
	-	`sha256:cd2fd81bda3a3b6b98a350382463234e090fe8726cea033bc2e490c4aab24bb4`  
		Last Modified: Fri, 23 Sep 2016 18:31:30 GMT  
		Size: 3.0 KB (3045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4565b5140e1260a5ad32dda0b8a0b02674f15500f7a70fdd6c54140966919de6`  
		Last Modified: Fri, 23 Sep 2016 18:36:38 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b076b7c9d5f69d5aac6cbfba9e8dc0b30b707b147ceebc368c5fa4d687c7e72`  
		Last Modified: Fri, 23 Sep 2016 18:37:00 GMT  
		Size: 104.6 MB (104552595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7370f121a8dbdbc6954f571d8095e18327b4859de6a2a5b78dbc282374d224d7`  
		Last Modified: Fri, 23 Sep 2016 18:36:38 GMT  
		Size: 4.7 KB (4698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1707e416f376274f157e71605beb9b5e4aaf3df060d541585c5954bfdd537c48`  
		Last Modified: Fri, 23 Sep 2016 18:36:38 GMT  
		Size: 719.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ffeb64e264c6683a4bdca523d4450068b00148c8dddacb7ee4c85acd1bc0023`  
		Last Modified: Fri, 23 Sep 2016 18:36:38 GMT  
		Size: 23.7 KB (23723 bytes)  
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

## `cassandra:3.7`

```console
$ docker pull cassandra@sha256:a2472764debdcc344e233c48a7cdf78aabf642623ecceab8d4c7028ee133516e
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.3 MB (161308643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e8fe2480b492efde0e1e01e71b701172ec564f32ed09e530b9756225014ef89`
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
# Fri, 23 Sep 2016 18:30:27 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 514A2AD631A57A16DD0047EC749D6EEC0353B12C
# Fri, 23 Sep 2016 18:34:09 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 37x main' >> /etc/apt/sources.list.d/cassandra.list
# Fri, 23 Sep 2016 18:34:09 GMT
ENV CASSANDRA_VERSION=3.7
# Fri, 23 Sep 2016 18:34:46 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:34:48 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Fri, 23 Sep 2016 18:34:48 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 23 Sep 2016 18:34:49 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 23 Sep 2016 18:34:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 18:34:50 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 23 Sep 2016 18:34:51 GMT
VOLUME [/var/lib/cassandra]
# Fri, 23 Sep 2016 18:34:51 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 23 Sep 2016 18:34:51 GMT
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
	-	`sha256:cd2fd81bda3a3b6b98a350382463234e090fe8726cea033bc2e490c4aab24bb4`  
		Last Modified: Fri, 23 Sep 2016 18:31:30 GMT  
		Size: 3.0 KB (3045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e6b3e808aaaff6dea2c1dfda7e072f37f2db5cd5d344bf2977ed745a28620d`  
		Last Modified: Fri, 23 Sep 2016 18:34:59 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33fac1ec9ee3b03b31cf9d1d0d1ec727b136e831bc961230f87ae1610d21a7f`  
		Last Modified: Fri, 23 Sep 2016 18:35:21 GMT  
		Size: 108.7 MB (108700858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fcfa1ed015bf8c2ee7c8a34c13a38de55bc7918d078226b4384bcc21af2e40`  
		Last Modified: Fri, 23 Sep 2016 18:34:58 GMT  
		Size: 4.3 KB (4280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17734aff188ce9d3b5eb0e325c9ff934f882c34ed19a904763867c30111281a1`  
		Last Modified: Fri, 23 Sep 2016 18:34:59 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ad09e14c581985beb5b7451114a1aa90c2187e77a3a4759860c275d8c235ba`  
		Last Modified: Fri, 23 Sep 2016 18:34:59 GMT  
		Size: 26.6 KB (26561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3`

```console
$ docker pull cassandra@sha256:a2472764debdcc344e233c48a7cdf78aabf642623ecceab8d4c7028ee133516e
```

-	Platforms:
	-	linux; amd64

### `cassandra:3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.3 MB (161308643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e8fe2480b492efde0e1e01e71b701172ec564f32ed09e530b9756225014ef89`
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
# Fri, 23 Sep 2016 18:30:27 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 514A2AD631A57A16DD0047EC749D6EEC0353B12C
# Fri, 23 Sep 2016 18:34:09 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 37x main' >> /etc/apt/sources.list.d/cassandra.list
# Fri, 23 Sep 2016 18:34:09 GMT
ENV CASSANDRA_VERSION=3.7
# Fri, 23 Sep 2016 18:34:46 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:34:48 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Fri, 23 Sep 2016 18:34:48 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Fri, 23 Sep 2016 18:34:49 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Fri, 23 Sep 2016 18:34:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 18:34:50 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Fri, 23 Sep 2016 18:34:51 GMT
VOLUME [/var/lib/cassandra]
# Fri, 23 Sep 2016 18:34:51 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Fri, 23 Sep 2016 18:34:51 GMT
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
	-	`sha256:cd2fd81bda3a3b6b98a350382463234e090fe8726cea033bc2e490c4aab24bb4`  
		Last Modified: Fri, 23 Sep 2016 18:31:30 GMT  
		Size: 3.0 KB (3045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e6b3e808aaaff6dea2c1dfda7e072f37f2db5cd5d344bf2977ed745a28620d`  
		Last Modified: Fri, 23 Sep 2016 18:34:59 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33fac1ec9ee3b03b31cf9d1d0d1ec727b136e831bc961230f87ae1610d21a7f`  
		Last Modified: Fri, 23 Sep 2016 18:35:21 GMT  
		Size: 108.7 MB (108700858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fcfa1ed015bf8c2ee7c8a34c13a38de55bc7918d078226b4384bcc21af2e40`  
		Last Modified: Fri, 23 Sep 2016 18:34:58 GMT  
		Size: 4.3 KB (4280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17734aff188ce9d3b5eb0e325c9ff934f882c34ed19a904763867c30111281a1`  
		Last Modified: Fri, 23 Sep 2016 18:34:59 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ad09e14c581985beb5b7451114a1aa90c2187e77a3a4759860c275d8c235ba`  
		Last Modified: Fri, 23 Sep 2016 18:34:59 GMT  
		Size: 26.6 KB (26561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:latest`

```console
$ docker pull cassandra@sha256:bce66127d99ff99020f2c5370b585744c851df7a21b42e7843195a0b143b94e7
```

-	Platforms:
	-	linux; amd64

### `cassandra:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.3 MB (161324730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25427f35326994e4ad6590e6f355b5b2e1b805ceaafe000d678154d7094d2e91`
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
# Wed, 28 Sep 2016 23:39:55 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 37x main' >> /etc/apt/sources.list.d/cassandra.list
# Wed, 28 Sep 2016 23:39:55 GMT
ENV CASSANDRA_VERSION=3.7
# Wed, 28 Sep 2016 23:40:40 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 23:40:41 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Wed, 28 Sep 2016 23:40:42 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Wed, 28 Sep 2016 23:40:42 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Wed, 28 Sep 2016 23:40:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Sep 2016 23:40:43 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Wed, 28 Sep 2016 23:40:44 GMT
VOLUME [/var/lib/cassandra]
# Wed, 28 Sep 2016 23:40:44 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Wed, 28 Sep 2016 23:40:44 GMT
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
	-	`sha256:a375ee20c601751cc799fbb89027c38b3ab1534477f6fbf6dc2bf225a020a7a2`  
		Last Modified: Wed, 28 Sep 2016 23:43:27 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e678e60bfc4608008345f6076bc106325b972921352bc450577a96a7189270f`  
		Last Modified: Wed, 28 Sep 2016 23:43:57 GMT  
		Size: 108.7 MB (108701682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d5e7ed7dfcbd629747d3cafa2a1e5f7164a8e463899659a708edf333cfd7fa`  
		Last Modified: Wed, 28 Sep 2016 23:43:26 GMT  
		Size: 4.3 KB (4281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21015df69ccbf0aae457bed24c0aaabbf2fdd24c0bccbf06c65f5b36ab949254`  
		Last Modified: Wed, 28 Sep 2016 23:43:27 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b3a5d43f721f5e67cb57c05b21106ad6229382b00ce466f5ebf6b15164a686`  
		Last Modified: Wed, 28 Sep 2016 23:43:26 GMT  
		Size: 26.6 KB (26567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
