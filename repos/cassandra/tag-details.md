<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `cassandra`

-	[`cassandra:2.1.17`](#cassandra2117)
-	[`cassandra:2.1`](#cassandra21)
-	[`cassandra:2.2.9`](#cassandra229)
-	[`cassandra:2.2`](#cassandra22)
-	[`cassandra:2`](#cassandra2)
-	[`cassandra:3.0.11`](#cassandra3011)
-	[`cassandra:3.0`](#cassandra30)
-	[`cassandra:3.10`](#cassandra310)
-	[`cassandra:3`](#cassandra3)
-	[`cassandra:latest`](#cassandralatest)

## `cassandra:2.1.17`

```console
$ docker pull cassandra@sha256:f063a9ca0866ecec6c5f4c520fe9606cf601145ce783871e4f5c452f2d9db736
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.1.17` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.7 MB (167653877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc491c5442ff47d444fc4479f43f7643bbb4a42a317355633ba543dbf3be66c3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 20:34:58 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Mon, 27 Feb 2017 22:44:43 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 27 Feb 2017 22:44:43 GMT
ENV GOSU_VERSION=1.7
# Mon, 27 Feb 2017 22:45:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 27 Feb 2017 22:45:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 22:45:07 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 27 Feb 2017 22:45:08 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 27 Feb 2017 22:45:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 27 Feb 2017 22:46:17 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 27 Feb 2017 22:46:17 GMT
ENV CASSANDRA_VERSION=2.1.17
# Thu, 09 Mar 2017 18:33:48 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Mar 2017 18:33:49 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Thu, 09 Mar 2017 18:33:50 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 09 Mar 2017 18:33:51 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Thu, 09 Mar 2017 18:33:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 Mar 2017 18:33:53 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 09 Mar 2017 18:33:53 GMT
VOLUME [/var/lib/cassandra]
# Thu, 09 Mar 2017 18:33:54 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 09 Mar 2017 18:33:55 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ea63cb951e03df877a857b8770d8060854997c63c8430aea0719576fca9cb5`  
		Last Modified: Mon, 27 Feb 2017 20:42:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b90127421de77945e14cdf88ceb1fab6b0207a5d58f21597bcb42d59766e270`  
		Last Modified: Wed, 01 Mar 2017 22:47:14 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7062d88fe3278ee31e139a1ae4360a2c256fcdf9f27135a434f9b791c0fc899`  
		Last Modified: Wed, 01 Mar 2017 22:47:13 GMT  
		Size: 1.2 MB (1216859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61435d1a80f412facb46191efcd6d442111490ccf7dc1bb1b5df2321a5cd69a`  
		Last Modified: Wed, 01 Mar 2017 22:47:12 GMT  
		Size: 173.7 KB (173694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87acc16504aca64444dba527620872464d3ee69db61a04c6d881e6a8fb51328b`  
		Last Modified: Wed, 01 Mar 2017 22:47:12 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da3b3274ccbb0e6d050043f93e4179164c7cec717e2e49383b861f615491f78`  
		Last Modified: Wed, 01 Mar 2017 22:47:12 GMT  
		Size: 18.2 KB (18215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a166fe281e98fc6ea5044a85fbed9ce652e40b98e0977bfe357eceb461cf3ee`  
		Last Modified: Wed, 01 Mar 2017 22:47:10 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1e505d72f349636db38f3028de97a7e8138689e7b6516f4f5aac040980bf57`  
		Last Modified: Thu, 09 Mar 2017 18:38:25 GMT  
		Size: 114.9 MB (114853394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e9315c87aaee63ad604d8ed57ed6bdb5f841afdaf727b41658cb781771e5463`  
		Last Modified: Thu, 09 Mar 2017 18:38:08 GMT  
		Size: 4.7 KB (4655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e4736467125e7770c17234f1d4692244adb9cb69546b3278729b3369774b5e`  
		Last Modified: Thu, 09 Mar 2017 18:38:08 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69c5fd93dc276ade63e1fb569cd10d5b626902429828931fa2799fb5f91328f0`  
		Last Modified: Thu, 09 Mar 2017 18:38:07 GMT  
		Size: 20.2 KB (20237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.1`

```console
$ docker pull cassandra@sha256:f063a9ca0866ecec6c5f4c520fe9606cf601145ce783871e4f5c452f2d9db736
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.7 MB (167653877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc491c5442ff47d444fc4479f43f7643bbb4a42a317355633ba543dbf3be66c3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 20:34:58 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Mon, 27 Feb 2017 22:44:43 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 27 Feb 2017 22:44:43 GMT
ENV GOSU_VERSION=1.7
# Mon, 27 Feb 2017 22:45:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 27 Feb 2017 22:45:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 22:45:07 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 27 Feb 2017 22:45:08 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 27 Feb 2017 22:45:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 27 Feb 2017 22:46:17 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 27 Feb 2017 22:46:17 GMT
ENV CASSANDRA_VERSION=2.1.17
# Thu, 09 Mar 2017 18:33:48 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Mar 2017 18:33:49 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Thu, 09 Mar 2017 18:33:50 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 09 Mar 2017 18:33:51 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Thu, 09 Mar 2017 18:33:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 Mar 2017 18:33:53 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 09 Mar 2017 18:33:53 GMT
VOLUME [/var/lib/cassandra]
# Thu, 09 Mar 2017 18:33:54 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 09 Mar 2017 18:33:55 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ea63cb951e03df877a857b8770d8060854997c63c8430aea0719576fca9cb5`  
		Last Modified: Mon, 27 Feb 2017 20:42:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b90127421de77945e14cdf88ceb1fab6b0207a5d58f21597bcb42d59766e270`  
		Last Modified: Wed, 01 Mar 2017 22:47:14 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7062d88fe3278ee31e139a1ae4360a2c256fcdf9f27135a434f9b791c0fc899`  
		Last Modified: Wed, 01 Mar 2017 22:47:13 GMT  
		Size: 1.2 MB (1216859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61435d1a80f412facb46191efcd6d442111490ccf7dc1bb1b5df2321a5cd69a`  
		Last Modified: Wed, 01 Mar 2017 22:47:12 GMT  
		Size: 173.7 KB (173694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87acc16504aca64444dba527620872464d3ee69db61a04c6d881e6a8fb51328b`  
		Last Modified: Wed, 01 Mar 2017 22:47:12 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da3b3274ccbb0e6d050043f93e4179164c7cec717e2e49383b861f615491f78`  
		Last Modified: Wed, 01 Mar 2017 22:47:12 GMT  
		Size: 18.2 KB (18215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a166fe281e98fc6ea5044a85fbed9ce652e40b98e0977bfe357eceb461cf3ee`  
		Last Modified: Wed, 01 Mar 2017 22:47:10 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1e505d72f349636db38f3028de97a7e8138689e7b6516f4f5aac040980bf57`  
		Last Modified: Thu, 09 Mar 2017 18:38:25 GMT  
		Size: 114.9 MB (114853394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e9315c87aaee63ad604d8ed57ed6bdb5f841afdaf727b41658cb781771e5463`  
		Last Modified: Thu, 09 Mar 2017 18:38:08 GMT  
		Size: 4.7 KB (4655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e4736467125e7770c17234f1d4692244adb9cb69546b3278729b3369774b5e`  
		Last Modified: Thu, 09 Mar 2017 18:38:08 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69c5fd93dc276ade63e1fb569cd10d5b626902429828931fa2799fb5f91328f0`  
		Last Modified: Thu, 09 Mar 2017 18:38:07 GMT  
		Size: 20.2 KB (20237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2.9`

```console
$ docker pull cassandra@sha256:5d501809163da81d13c346e230187cf8bfc3bed15bec140f9340410c841ea812
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.2.9` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.0 MB (172004526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e99f7db0fd154a7294f763a45e24ca17a8a55c99e4022c784c6707e71d77683`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 20:34:58 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Mon, 27 Feb 2017 22:44:43 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 27 Feb 2017 22:44:43 GMT
ENV GOSU_VERSION=1.7
# Mon, 27 Feb 2017 22:45:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 27 Feb 2017 22:45:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 22:45:07 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 27 Feb 2017 22:45:08 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 27 Feb 2017 22:45:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 27 Feb 2017 22:45:10 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 27 Feb 2017 22:45:11 GMT
ENV CASSANDRA_VERSION=2.2.9
# Thu, 09 Mar 2017 18:34:39 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Mar 2017 18:34:41 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Thu, 09 Mar 2017 18:34:41 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 09 Mar 2017 18:34:42 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Thu, 09 Mar 2017 18:34:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 Mar 2017 18:34:44 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 09 Mar 2017 18:34:45 GMT
VOLUME [/var/lib/cassandra]
# Thu, 09 Mar 2017 18:34:46 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 09 Mar 2017 18:34:46 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ea63cb951e03df877a857b8770d8060854997c63c8430aea0719576fca9cb5`  
		Last Modified: Mon, 27 Feb 2017 20:42:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b90127421de77945e14cdf88ceb1fab6b0207a5d58f21597bcb42d59766e270`  
		Last Modified: Wed, 01 Mar 2017 22:47:14 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7062d88fe3278ee31e139a1ae4360a2c256fcdf9f27135a434f9b791c0fc899`  
		Last Modified: Wed, 01 Mar 2017 22:47:13 GMT  
		Size: 1.2 MB (1216859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61435d1a80f412facb46191efcd6d442111490ccf7dc1bb1b5df2321a5cd69a`  
		Last Modified: Wed, 01 Mar 2017 22:47:12 GMT  
		Size: 173.7 KB (173694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87acc16504aca64444dba527620872464d3ee69db61a04c6d881e6a8fb51328b`  
		Last Modified: Wed, 01 Mar 2017 22:47:12 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da3b3274ccbb0e6d050043f93e4179164c7cec717e2e49383b861f615491f78`  
		Last Modified: Wed, 01 Mar 2017 22:47:12 GMT  
		Size: 18.2 KB (18215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cab60b7138b76f1bb30024e07f94c0d0f8c3dd9b913037c41318fbec1213580`  
		Last Modified: Wed, 01 Mar 2017 22:48:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9748d84acc89f482ec3622ad7557af53da85ef1436b7fb06d5789055e2ac8d2`  
		Last Modified: Thu, 09 Mar 2017 18:39:31 GMT  
		Size: 119.2 MB (119202310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17d11cc32058335834f854debc789e23e6e3813d8a5a1b159e3637f65fb36f8a`  
		Last Modified: Thu, 09 Mar 2017 18:39:11 GMT  
		Size: 4.6 KB (4624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdff5f2b74f212b7552b6b57e8cba584bab865c2e0f35affe75f6cd68f62b1ac`  
		Last Modified: Thu, 09 Mar 2017 18:39:11 GMT  
		Size: 720.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6199992d71de90ab35c2ce2539ac8d8f56f74ad7f3bd42984ab84eca82eae1ff`  
		Last Modified: Thu, 09 Mar 2017 18:39:11 GMT  
		Size: 22.0 KB (22003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2`

```console
$ docker pull cassandra@sha256:5d501809163da81d13c346e230187cf8bfc3bed15bec140f9340410c841ea812
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.0 MB (172004526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e99f7db0fd154a7294f763a45e24ca17a8a55c99e4022c784c6707e71d77683`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 20:34:58 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Mon, 27 Feb 2017 22:44:43 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 27 Feb 2017 22:44:43 GMT
ENV GOSU_VERSION=1.7
# Mon, 27 Feb 2017 22:45:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 27 Feb 2017 22:45:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 22:45:07 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 27 Feb 2017 22:45:08 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 27 Feb 2017 22:45:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 27 Feb 2017 22:45:10 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 27 Feb 2017 22:45:11 GMT
ENV CASSANDRA_VERSION=2.2.9
# Thu, 09 Mar 2017 18:34:39 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Mar 2017 18:34:41 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Thu, 09 Mar 2017 18:34:41 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 09 Mar 2017 18:34:42 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Thu, 09 Mar 2017 18:34:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 Mar 2017 18:34:44 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 09 Mar 2017 18:34:45 GMT
VOLUME [/var/lib/cassandra]
# Thu, 09 Mar 2017 18:34:46 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 09 Mar 2017 18:34:46 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ea63cb951e03df877a857b8770d8060854997c63c8430aea0719576fca9cb5`  
		Last Modified: Mon, 27 Feb 2017 20:42:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b90127421de77945e14cdf88ceb1fab6b0207a5d58f21597bcb42d59766e270`  
		Last Modified: Wed, 01 Mar 2017 22:47:14 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7062d88fe3278ee31e139a1ae4360a2c256fcdf9f27135a434f9b791c0fc899`  
		Last Modified: Wed, 01 Mar 2017 22:47:13 GMT  
		Size: 1.2 MB (1216859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61435d1a80f412facb46191efcd6d442111490ccf7dc1bb1b5df2321a5cd69a`  
		Last Modified: Wed, 01 Mar 2017 22:47:12 GMT  
		Size: 173.7 KB (173694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87acc16504aca64444dba527620872464d3ee69db61a04c6d881e6a8fb51328b`  
		Last Modified: Wed, 01 Mar 2017 22:47:12 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da3b3274ccbb0e6d050043f93e4179164c7cec717e2e49383b861f615491f78`  
		Last Modified: Wed, 01 Mar 2017 22:47:12 GMT  
		Size: 18.2 KB (18215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cab60b7138b76f1bb30024e07f94c0d0f8c3dd9b913037c41318fbec1213580`  
		Last Modified: Wed, 01 Mar 2017 22:48:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9748d84acc89f482ec3622ad7557af53da85ef1436b7fb06d5789055e2ac8d2`  
		Last Modified: Thu, 09 Mar 2017 18:39:31 GMT  
		Size: 119.2 MB (119202310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17d11cc32058335834f854debc789e23e6e3813d8a5a1b159e3637f65fb36f8a`  
		Last Modified: Thu, 09 Mar 2017 18:39:11 GMT  
		Size: 4.6 KB (4624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdff5f2b74f212b7552b6b57e8cba584bab865c2e0f35affe75f6cd68f62b1ac`  
		Last Modified: Thu, 09 Mar 2017 18:39:11 GMT  
		Size: 720.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6199992d71de90ab35c2ce2539ac8d8f56f74ad7f3bd42984ab84eca82eae1ff`  
		Last Modified: Thu, 09 Mar 2017 18:39:11 GMT  
		Size: 22.0 KB (22003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2`

```console
$ docker pull cassandra@sha256:5d501809163da81d13c346e230187cf8bfc3bed15bec140f9340410c841ea812
```

-	Platforms:
	-	linux; amd64

### `cassandra:2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.0 MB (172004526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e99f7db0fd154a7294f763a45e24ca17a8a55c99e4022c784c6707e71d77683`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 20:34:58 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Mon, 27 Feb 2017 22:44:43 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 27 Feb 2017 22:44:43 GMT
ENV GOSU_VERSION=1.7
# Mon, 27 Feb 2017 22:45:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 27 Feb 2017 22:45:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 22:45:07 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 27 Feb 2017 22:45:08 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 27 Feb 2017 22:45:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 27 Feb 2017 22:45:10 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 27 Feb 2017 22:45:11 GMT
ENV CASSANDRA_VERSION=2.2.9
# Thu, 09 Mar 2017 18:34:39 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Mar 2017 18:34:41 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Thu, 09 Mar 2017 18:34:41 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 09 Mar 2017 18:34:42 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Thu, 09 Mar 2017 18:34:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 Mar 2017 18:34:44 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 09 Mar 2017 18:34:45 GMT
VOLUME [/var/lib/cassandra]
# Thu, 09 Mar 2017 18:34:46 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 09 Mar 2017 18:34:46 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ea63cb951e03df877a857b8770d8060854997c63c8430aea0719576fca9cb5`  
		Last Modified: Mon, 27 Feb 2017 20:42:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b90127421de77945e14cdf88ceb1fab6b0207a5d58f21597bcb42d59766e270`  
		Last Modified: Wed, 01 Mar 2017 22:47:14 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7062d88fe3278ee31e139a1ae4360a2c256fcdf9f27135a434f9b791c0fc899`  
		Last Modified: Wed, 01 Mar 2017 22:47:13 GMT  
		Size: 1.2 MB (1216859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61435d1a80f412facb46191efcd6d442111490ccf7dc1bb1b5df2321a5cd69a`  
		Last Modified: Wed, 01 Mar 2017 22:47:12 GMT  
		Size: 173.7 KB (173694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87acc16504aca64444dba527620872464d3ee69db61a04c6d881e6a8fb51328b`  
		Last Modified: Wed, 01 Mar 2017 22:47:12 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da3b3274ccbb0e6d050043f93e4179164c7cec717e2e49383b861f615491f78`  
		Last Modified: Wed, 01 Mar 2017 22:47:12 GMT  
		Size: 18.2 KB (18215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cab60b7138b76f1bb30024e07f94c0d0f8c3dd9b913037c41318fbec1213580`  
		Last Modified: Wed, 01 Mar 2017 22:48:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9748d84acc89f482ec3622ad7557af53da85ef1436b7fb06d5789055e2ac8d2`  
		Last Modified: Thu, 09 Mar 2017 18:39:31 GMT  
		Size: 119.2 MB (119202310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17d11cc32058335834f854debc789e23e6e3813d8a5a1b159e3637f65fb36f8a`  
		Last Modified: Thu, 09 Mar 2017 18:39:11 GMT  
		Size: 4.6 KB (4624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdff5f2b74f212b7552b6b57e8cba584bab865c2e0f35affe75f6cd68f62b1ac`  
		Last Modified: Thu, 09 Mar 2017 18:39:11 GMT  
		Size: 720.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6199992d71de90ab35c2ce2539ac8d8f56f74ad7f3bd42984ab84eca82eae1ff`  
		Last Modified: Thu, 09 Mar 2017 18:39:11 GMT  
		Size: 22.0 KB (22003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0.11`

```console
$ docker pull cassandra@sha256:93757147405e037f988927c675febe7301deaa0ae21ffb49799e47b926f33b8a
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.0.11` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158235246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d43ab81e5f1df3f392d4a5233aca7bda3eddad1e3a4413a4e023fae81c27a6d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 20:34:58 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Mon, 27 Feb 2017 22:44:43 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 27 Feb 2017 22:44:43 GMT
ENV GOSU_VERSION=1.7
# Mon, 27 Feb 2017 22:45:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 27 Feb 2017 22:45:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 22:45:07 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 27 Feb 2017 22:45:08 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 27 Feb 2017 22:45:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 27 Feb 2017 22:47:56 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 27 Feb 2017 22:47:56 GMT
ENV CASSANDRA_VERSION=3.0.11
# Thu, 09 Mar 2017 18:35:31 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Mar 2017 18:35:32 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Thu, 09 Mar 2017 18:35:33 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 09 Mar 2017 18:35:34 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Thu, 09 Mar 2017 18:35:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 Mar 2017 18:35:36 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 09 Mar 2017 18:35:36 GMT
VOLUME [/var/lib/cassandra]
# Thu, 09 Mar 2017 18:35:37 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 09 Mar 2017 18:35:37 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ea63cb951e03df877a857b8770d8060854997c63c8430aea0719576fca9cb5`  
		Last Modified: Mon, 27 Feb 2017 20:42:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b90127421de77945e14cdf88ceb1fab6b0207a5d58f21597bcb42d59766e270`  
		Last Modified: Wed, 01 Mar 2017 22:47:14 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7062d88fe3278ee31e139a1ae4360a2c256fcdf9f27135a434f9b791c0fc899`  
		Last Modified: Wed, 01 Mar 2017 22:47:13 GMT  
		Size: 1.2 MB (1216859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61435d1a80f412facb46191efcd6d442111490ccf7dc1bb1b5df2321a5cd69a`  
		Last Modified: Wed, 01 Mar 2017 22:47:12 GMT  
		Size: 173.7 KB (173694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87acc16504aca64444dba527620872464d3ee69db61a04c6d881e6a8fb51328b`  
		Last Modified: Wed, 01 Mar 2017 22:47:12 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da3b3274ccbb0e6d050043f93e4179164c7cec717e2e49383b861f615491f78`  
		Last Modified: Wed, 01 Mar 2017 22:47:12 GMT  
		Size: 18.2 KB (18215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55fd3e16c0005c2470ec9a9a835afd58f56351a62a2a42c9f1960cbac7b411bf`  
		Last Modified: Wed, 01 Mar 2017 22:49:41 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d764e62113a2fb23666d193691ee4c948d1f580b4f7623006dae82e343051690`  
		Last Modified: Thu, 09 Mar 2017 18:40:52 GMT  
		Size: 105.4 MB (105430496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3d4ae6a41d183075797be18c425845acfea6ad072eaa16d553a88fa250261e4`  
		Last Modified: Thu, 09 Mar 2017 18:40:31 GMT  
		Size: 4.7 KB (4697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e09d81bf91326c407c22008dea7ed053e2c680904822072bfa05c6573373c5e6`  
		Last Modified: Thu, 09 Mar 2017 18:40:31 GMT  
		Size: 719.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8305ee2ec23d63b1b670b2c70b2e9d924db136b1cdf012d35d8edd49e1c3eeda`  
		Last Modified: Thu, 09 Mar 2017 18:40:31 GMT  
		Size: 24.5 KB (24465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0`

```console
$ docker pull cassandra@sha256:93757147405e037f988927c675febe7301deaa0ae21ffb49799e47b926f33b8a
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158235246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d43ab81e5f1df3f392d4a5233aca7bda3eddad1e3a4413a4e023fae81c27a6d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 20:34:58 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Mon, 27 Feb 2017 22:44:43 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 27 Feb 2017 22:44:43 GMT
ENV GOSU_VERSION=1.7
# Mon, 27 Feb 2017 22:45:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 27 Feb 2017 22:45:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 22:45:07 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 27 Feb 2017 22:45:08 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 27 Feb 2017 22:45:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 27 Feb 2017 22:47:56 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 27 Feb 2017 22:47:56 GMT
ENV CASSANDRA_VERSION=3.0.11
# Thu, 09 Mar 2017 18:35:31 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Mar 2017 18:35:32 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Thu, 09 Mar 2017 18:35:33 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 09 Mar 2017 18:35:34 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Thu, 09 Mar 2017 18:35:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 Mar 2017 18:35:36 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 09 Mar 2017 18:35:36 GMT
VOLUME [/var/lib/cassandra]
# Thu, 09 Mar 2017 18:35:37 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 09 Mar 2017 18:35:37 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ea63cb951e03df877a857b8770d8060854997c63c8430aea0719576fca9cb5`  
		Last Modified: Mon, 27 Feb 2017 20:42:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b90127421de77945e14cdf88ceb1fab6b0207a5d58f21597bcb42d59766e270`  
		Last Modified: Wed, 01 Mar 2017 22:47:14 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7062d88fe3278ee31e139a1ae4360a2c256fcdf9f27135a434f9b791c0fc899`  
		Last Modified: Wed, 01 Mar 2017 22:47:13 GMT  
		Size: 1.2 MB (1216859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61435d1a80f412facb46191efcd6d442111490ccf7dc1bb1b5df2321a5cd69a`  
		Last Modified: Wed, 01 Mar 2017 22:47:12 GMT  
		Size: 173.7 KB (173694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87acc16504aca64444dba527620872464d3ee69db61a04c6d881e6a8fb51328b`  
		Last Modified: Wed, 01 Mar 2017 22:47:12 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da3b3274ccbb0e6d050043f93e4179164c7cec717e2e49383b861f615491f78`  
		Last Modified: Wed, 01 Mar 2017 22:47:12 GMT  
		Size: 18.2 KB (18215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55fd3e16c0005c2470ec9a9a835afd58f56351a62a2a42c9f1960cbac7b411bf`  
		Last Modified: Wed, 01 Mar 2017 22:49:41 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d764e62113a2fb23666d193691ee4c948d1f580b4f7623006dae82e343051690`  
		Last Modified: Thu, 09 Mar 2017 18:40:52 GMT  
		Size: 105.4 MB (105430496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3d4ae6a41d183075797be18c425845acfea6ad072eaa16d553a88fa250261e4`  
		Last Modified: Thu, 09 Mar 2017 18:40:31 GMT  
		Size: 4.7 KB (4697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e09d81bf91326c407c22008dea7ed053e2c680904822072bfa05c6573373c5e6`  
		Last Modified: Thu, 09 Mar 2017 18:40:31 GMT  
		Size: 719.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8305ee2ec23d63b1b670b2c70b2e9d924db136b1cdf012d35d8edd49e1c3eeda`  
		Last Modified: Thu, 09 Mar 2017 18:40:31 GMT  
		Size: 24.5 KB (24465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.10`

```console
$ docker pull cassandra@sha256:617fac89e2ab0c9fb54b503ab74bcb4d58fc9d25b36fdb2e0aa7f6a84a324e97
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.10` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.7 MB (162704895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:912969144d8a481fadd9f3769ee12a98146a0f35a3bea6a3535fe41084831dd6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 20:34:58 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Mon, 27 Feb 2017 22:44:43 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 27 Feb 2017 22:44:43 GMT
ENV GOSU_VERSION=1.7
# Mon, 27 Feb 2017 22:45:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 27 Feb 2017 22:45:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 22:45:07 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 27 Feb 2017 22:45:08 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 27 Feb 2017 22:45:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 27 Feb 2017 22:47:15 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 310x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 27 Feb 2017 22:47:15 GMT
ENV CASSANDRA_VERSION=3.10
# Thu, 09 Mar 2017 18:36:24 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Mar 2017 18:36:25 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Thu, 09 Mar 2017 18:36:26 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 09 Mar 2017 18:36:27 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Thu, 09 Mar 2017 18:36:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 Mar 2017 18:36:29 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 09 Mar 2017 18:36:29 GMT
VOLUME [/var/lib/cassandra]
# Thu, 09 Mar 2017 18:36:30 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 09 Mar 2017 18:36:31 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ea63cb951e03df877a857b8770d8060854997c63c8430aea0719576fca9cb5`  
		Last Modified: Mon, 27 Feb 2017 20:42:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b90127421de77945e14cdf88ceb1fab6b0207a5d58f21597bcb42d59766e270`  
		Last Modified: Wed, 01 Mar 2017 22:47:14 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7062d88fe3278ee31e139a1ae4360a2c256fcdf9f27135a434f9b791c0fc899`  
		Last Modified: Wed, 01 Mar 2017 22:47:13 GMT  
		Size: 1.2 MB (1216859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61435d1a80f412facb46191efcd6d442111490ccf7dc1bb1b5df2321a5cd69a`  
		Last Modified: Wed, 01 Mar 2017 22:47:12 GMT  
		Size: 173.7 KB (173694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87acc16504aca64444dba527620872464d3ee69db61a04c6d881e6a8fb51328b`  
		Last Modified: Wed, 01 Mar 2017 22:47:12 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da3b3274ccbb0e6d050043f93e4179164c7cec717e2e49383b861f615491f78`  
		Last Modified: Wed, 01 Mar 2017 22:47:12 GMT  
		Size: 18.2 KB (18215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b764081cab57e60916776c3dc704e03bab4477a78febbd95308b7f2eb17f2a`  
		Last Modified: Wed, 01 Mar 2017 22:50:47 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78be5ef80177786a207873512f2139093d0e10ff62ce12651279635c88b8d185`  
		Last Modified: Thu, 09 Mar 2017 18:41:57 GMT  
		Size: 109.9 MB (109896566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afd0c45990d4097a690cf2edfe089cd44e8b0a9ed18f572aab354524e970eb3`  
		Last Modified: Thu, 09 Mar 2017 18:41:36 GMT  
		Size: 4.4 KB (4399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b7fec16724540bc02997204a67f4a545b7f2ff7d3fe2b632622492220f63ef3`  
		Last Modified: Thu, 09 Mar 2017 18:41:33 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01405b8c84a1f68782aa7ba3312597a66cfc4479bb46e32cc17af18102fe2efd`  
		Last Modified: Thu, 09 Mar 2017 18:41:33 GMT  
		Size: 28.3 KB (28339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3`

```console
$ docker pull cassandra@sha256:617fac89e2ab0c9fb54b503ab74bcb4d58fc9d25b36fdb2e0aa7f6a84a324e97
```

-	Platforms:
	-	linux; amd64

### `cassandra:3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.7 MB (162704895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:912969144d8a481fadd9f3769ee12a98146a0f35a3bea6a3535fe41084831dd6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 20:34:58 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Mon, 27 Feb 2017 22:44:43 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 27 Feb 2017 22:44:43 GMT
ENV GOSU_VERSION=1.7
# Mon, 27 Feb 2017 22:45:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 27 Feb 2017 22:45:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 22:45:07 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 27 Feb 2017 22:45:08 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 27 Feb 2017 22:45:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 27 Feb 2017 22:47:15 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 310x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 27 Feb 2017 22:47:15 GMT
ENV CASSANDRA_VERSION=3.10
# Thu, 09 Mar 2017 18:36:24 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Mar 2017 18:36:25 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Thu, 09 Mar 2017 18:36:26 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 09 Mar 2017 18:36:27 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Thu, 09 Mar 2017 18:36:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 Mar 2017 18:36:29 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 09 Mar 2017 18:36:29 GMT
VOLUME [/var/lib/cassandra]
# Thu, 09 Mar 2017 18:36:30 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 09 Mar 2017 18:36:31 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ea63cb951e03df877a857b8770d8060854997c63c8430aea0719576fca9cb5`  
		Last Modified: Mon, 27 Feb 2017 20:42:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b90127421de77945e14cdf88ceb1fab6b0207a5d58f21597bcb42d59766e270`  
		Last Modified: Wed, 01 Mar 2017 22:47:14 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7062d88fe3278ee31e139a1ae4360a2c256fcdf9f27135a434f9b791c0fc899`  
		Last Modified: Wed, 01 Mar 2017 22:47:13 GMT  
		Size: 1.2 MB (1216859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61435d1a80f412facb46191efcd6d442111490ccf7dc1bb1b5df2321a5cd69a`  
		Last Modified: Wed, 01 Mar 2017 22:47:12 GMT  
		Size: 173.7 KB (173694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87acc16504aca64444dba527620872464d3ee69db61a04c6d881e6a8fb51328b`  
		Last Modified: Wed, 01 Mar 2017 22:47:12 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da3b3274ccbb0e6d050043f93e4179164c7cec717e2e49383b861f615491f78`  
		Last Modified: Wed, 01 Mar 2017 22:47:12 GMT  
		Size: 18.2 KB (18215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b764081cab57e60916776c3dc704e03bab4477a78febbd95308b7f2eb17f2a`  
		Last Modified: Wed, 01 Mar 2017 22:50:47 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78be5ef80177786a207873512f2139093d0e10ff62ce12651279635c88b8d185`  
		Last Modified: Thu, 09 Mar 2017 18:41:57 GMT  
		Size: 109.9 MB (109896566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afd0c45990d4097a690cf2edfe089cd44e8b0a9ed18f572aab354524e970eb3`  
		Last Modified: Thu, 09 Mar 2017 18:41:36 GMT  
		Size: 4.4 KB (4399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b7fec16724540bc02997204a67f4a545b7f2ff7d3fe2b632622492220f63ef3`  
		Last Modified: Thu, 09 Mar 2017 18:41:33 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01405b8c84a1f68782aa7ba3312597a66cfc4479bb46e32cc17af18102fe2efd`  
		Last Modified: Thu, 09 Mar 2017 18:41:33 GMT  
		Size: 28.3 KB (28339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:latest`

```console
$ docker pull cassandra@sha256:617fac89e2ab0c9fb54b503ab74bcb4d58fc9d25b36fdb2e0aa7f6a84a324e97
```

-	Platforms:
	-	linux; amd64

### `cassandra:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.7 MB (162704895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:912969144d8a481fadd9f3769ee12a98146a0f35a3bea6a3535fe41084831dd6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 20:34:58 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Mon, 27 Feb 2017 22:44:43 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Mon, 27 Feb 2017 22:44:43 GMT
ENV GOSU_VERSION=1.7
# Mon, 27 Feb 2017 22:45:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 27 Feb 2017 22:45:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 22:45:07 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 27 Feb 2017 22:45:08 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 27 Feb 2017 22:45:09 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 27 Feb 2017 22:47:15 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 310x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 27 Feb 2017 22:47:15 GMT
ENV CASSANDRA_VERSION=3.10
# Thu, 09 Mar 2017 18:36:24 GMT
RUN apt-get update 	&& apt-get install -y 		cassandra="$CASSANDRA_VERSION" 		cassandra-tools="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Mar 2017 18:36:25 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Thu, 09 Mar 2017 18:36:26 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 09 Mar 2017 18:36:27 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Thu, 09 Mar 2017 18:36:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 Mar 2017 18:36:29 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 09 Mar 2017 18:36:29 GMT
VOLUME [/var/lib/cassandra]
# Thu, 09 Mar 2017 18:36:30 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 09 Mar 2017 18:36:31 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ea63cb951e03df877a857b8770d8060854997c63c8430aea0719576fca9cb5`  
		Last Modified: Mon, 27 Feb 2017 20:42:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b90127421de77945e14cdf88ceb1fab6b0207a5d58f21597bcb42d59766e270`  
		Last Modified: Wed, 01 Mar 2017 22:47:14 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7062d88fe3278ee31e139a1ae4360a2c256fcdf9f27135a434f9b791c0fc899`  
		Last Modified: Wed, 01 Mar 2017 22:47:13 GMT  
		Size: 1.2 MB (1216859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61435d1a80f412facb46191efcd6d442111490ccf7dc1bb1b5df2321a5cd69a`  
		Last Modified: Wed, 01 Mar 2017 22:47:12 GMT  
		Size: 173.7 KB (173694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87acc16504aca64444dba527620872464d3ee69db61a04c6d881e6a8fb51328b`  
		Last Modified: Wed, 01 Mar 2017 22:47:12 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da3b3274ccbb0e6d050043f93e4179164c7cec717e2e49383b861f615491f78`  
		Last Modified: Wed, 01 Mar 2017 22:47:12 GMT  
		Size: 18.2 KB (18215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b764081cab57e60916776c3dc704e03bab4477a78febbd95308b7f2eb17f2a`  
		Last Modified: Wed, 01 Mar 2017 22:50:47 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78be5ef80177786a207873512f2139093d0e10ff62ce12651279635c88b8d185`  
		Last Modified: Thu, 09 Mar 2017 18:41:57 GMT  
		Size: 109.9 MB (109896566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afd0c45990d4097a690cf2edfe089cd44e8b0a9ed18f572aab354524e970eb3`  
		Last Modified: Thu, 09 Mar 2017 18:41:36 GMT  
		Size: 4.4 KB (4399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b7fec16724540bc02997204a67f4a545b7f2ff7d3fe2b632622492220f63ef3`  
		Last Modified: Thu, 09 Mar 2017 18:41:33 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01405b8c84a1f68782aa7ba3312597a66cfc4479bb46e32cc17af18102fe2efd`  
		Last Modified: Thu, 09 Mar 2017 18:41:33 GMT  
		Size: 28.3 KB (28339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
