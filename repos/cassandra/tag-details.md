<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `cassandra`

-	[`cassandra:2.1.16`](#cassandra2116)
-	[`cassandra:2.1`](#cassandra21)
-	[`cassandra:2.2.8`](#cassandra228)
-	[`cassandra:2.2`](#cassandra22)
-	[`cassandra:2`](#cassandra2)
-	[`cassandra:3.0.10`](#cassandra3010)
-	[`cassandra:3.0`](#cassandra30)
-	[`cassandra:3.10`](#cassandra310)
-	[`cassandra:3`](#cassandra3)
-	[`cassandra:latest`](#cassandralatest)

## `cassandra:2.1.16`

```console
$ docker pull cassandra@sha256:1f119aa0f6c063a7df4595f9307b78c15900932329449e6e01fe436d61cc2d80
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.1.16` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.2 MB (167150046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c52a22a3f81d8ff9c534f852d9b6a93fa3b25a143b0f296bc670f5f46b10ff15`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Mon, 16 Jan 2017 20:35:44 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 17 Jan 2017 00:03:13 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jan 2017 00:03:14 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 00:03:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 00:03:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 20 Feb 2017 18:26:50 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 20 Feb 2017 18:26:51 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 20 Feb 2017 18:26:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 20 Feb 2017 18:26:54 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 20 Feb 2017 18:26:54 GMT
ENV CASSANDRA_VERSION=2.1.16
# Mon, 20 Feb 2017 18:31:46 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 20 Feb 2017 18:31:47 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Mon, 20 Feb 2017 18:31:48 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 20 Feb 2017 18:31:48 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 20 Feb 2017 18:31:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 20 Feb 2017 18:31:50 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 20 Feb 2017 18:31:51 GMT
VOLUME [/var/lib/cassandra]
# Mon, 20 Feb 2017 18:31:51 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 20 Feb 2017 18:31:52 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63408554ba61cfbcf981dd3226280179968072fe475f9e8d7bbae7ef1df513ae`  
		Last Modified: Mon, 16 Jan 2017 20:45:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f63b9a75897e466a1e645943375583c0d2cca3012dabe6af4190c472d9609f`  
		Last Modified: Wed, 18 Jan 2017 03:09:20 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8579ed1d2f83ded811c90855068d7894fec5830cae61435ceafe2fca0e873193`  
		Last Modified: Wed, 18 Jan 2017 03:09:21 GMT  
		Size: 1.2 MB (1216678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef7c2f67d61627969da5ad84275bf59087a52c7176fe90a3c2e03cb2f0534a90`  
		Last Modified: Wed, 18 Jan 2017 03:09:20 GMT  
		Size: 173.5 KB (173521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041174996479d2904d87c35f95388d2ab7448e3567e69455228b8ee69eae09ac`  
		Last Modified: Mon, 20 Feb 2017 18:38:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50664714a36043cafea535808535fd2953235a6d5b111a09abbb1c442a306343`  
		Last Modified: Mon, 20 Feb 2017 18:38:24 GMT  
		Size: 18.2 KB (18216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e34272282013db0431c6579da124d7b0dbaf47c5272654fa1bdc54cb8dfff32`  
		Last Modified: Mon, 20 Feb 2017 18:38:22 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a30ffd5c360d3d733ad19a328f7df0cbaaa657725ac7920a86509823b56b311c`  
		Last Modified: Mon, 20 Feb 2017 18:38:41 GMT  
		Size: 114.4 MB (114352077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb4523244b5661af0dc41855443a8764cbee994275ec2732a3315f92bde5307`  
		Last Modified: Mon, 20 Feb 2017 18:38:22 GMT  
		Size: 4.7 KB (4658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61a53826b46eb211d14ab276128caa3116172c866d0c24d1546b2e526dca1a26`  
		Last Modified: Mon, 20 Feb 2017 18:38:22 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b6ab73b7dc0032008f7b49f23321ef356a0320c4eb37fee5c16b9329db2268f`  
		Last Modified: Mon, 20 Feb 2017 18:38:23 GMT  
		Size: 20.2 KB (20240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.1`

```console
$ docker pull cassandra@sha256:1f119aa0f6c063a7df4595f9307b78c15900932329449e6e01fe436d61cc2d80
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.2 MB (167150046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c52a22a3f81d8ff9c534f852d9b6a93fa3b25a143b0f296bc670f5f46b10ff15`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Mon, 16 Jan 2017 20:35:44 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 17 Jan 2017 00:03:13 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jan 2017 00:03:14 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 00:03:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 00:03:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 20 Feb 2017 18:26:50 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 20 Feb 2017 18:26:51 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 20 Feb 2017 18:26:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 20 Feb 2017 18:26:54 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 20 Feb 2017 18:26:54 GMT
ENV CASSANDRA_VERSION=2.1.16
# Mon, 20 Feb 2017 18:31:46 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 20 Feb 2017 18:31:47 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Mon, 20 Feb 2017 18:31:48 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 20 Feb 2017 18:31:48 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 20 Feb 2017 18:31:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 20 Feb 2017 18:31:50 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 20 Feb 2017 18:31:51 GMT
VOLUME [/var/lib/cassandra]
# Mon, 20 Feb 2017 18:31:51 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 20 Feb 2017 18:31:52 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63408554ba61cfbcf981dd3226280179968072fe475f9e8d7bbae7ef1df513ae`  
		Last Modified: Mon, 16 Jan 2017 20:45:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f63b9a75897e466a1e645943375583c0d2cca3012dabe6af4190c472d9609f`  
		Last Modified: Wed, 18 Jan 2017 03:09:20 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8579ed1d2f83ded811c90855068d7894fec5830cae61435ceafe2fca0e873193`  
		Last Modified: Wed, 18 Jan 2017 03:09:21 GMT  
		Size: 1.2 MB (1216678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef7c2f67d61627969da5ad84275bf59087a52c7176fe90a3c2e03cb2f0534a90`  
		Last Modified: Wed, 18 Jan 2017 03:09:20 GMT  
		Size: 173.5 KB (173521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041174996479d2904d87c35f95388d2ab7448e3567e69455228b8ee69eae09ac`  
		Last Modified: Mon, 20 Feb 2017 18:38:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50664714a36043cafea535808535fd2953235a6d5b111a09abbb1c442a306343`  
		Last Modified: Mon, 20 Feb 2017 18:38:24 GMT  
		Size: 18.2 KB (18216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e34272282013db0431c6579da124d7b0dbaf47c5272654fa1bdc54cb8dfff32`  
		Last Modified: Mon, 20 Feb 2017 18:38:22 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a30ffd5c360d3d733ad19a328f7df0cbaaa657725ac7920a86509823b56b311c`  
		Last Modified: Mon, 20 Feb 2017 18:38:41 GMT  
		Size: 114.4 MB (114352077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb4523244b5661af0dc41855443a8764cbee994275ec2732a3315f92bde5307`  
		Last Modified: Mon, 20 Feb 2017 18:38:22 GMT  
		Size: 4.7 KB (4658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61a53826b46eb211d14ab276128caa3116172c866d0c24d1546b2e526dca1a26`  
		Last Modified: Mon, 20 Feb 2017 18:38:22 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b6ab73b7dc0032008f7b49f23321ef356a0320c4eb37fee5c16b9329db2268f`  
		Last Modified: Mon, 20 Feb 2017 18:38:23 GMT  
		Size: 20.2 KB (20240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2.8`

```console
$ docker pull cassandra@sha256:2cf26feb9e7726bfc6c8b6cf788ed73193cba3f504461901fe26ee488b24a2d2
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.2.8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.5 MB (171475708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5225054ba18db58e7f44ed6e63d3e1b5dc0d93f82c8bbddec3c3b643b8260e08`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Mon, 16 Jan 2017 20:35:44 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 17 Jan 2017 00:03:13 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jan 2017 00:03:14 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 00:03:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 00:03:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 20 Feb 2017 18:26:50 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 20 Feb 2017 18:26:51 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 20 Feb 2017 18:26:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 20 Feb 2017 18:31:53 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 20 Feb 2017 18:31:54 GMT
ENV CASSANDRA_VERSION=2.2.8
# Mon, 20 Feb 2017 18:34:29 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 20 Feb 2017 18:34:30 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Mon, 20 Feb 2017 18:34:30 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 20 Feb 2017 18:34:31 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 20 Feb 2017 18:34:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 20 Feb 2017 18:34:33 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 20 Feb 2017 18:34:34 GMT
VOLUME [/var/lib/cassandra]
# Mon, 20 Feb 2017 18:34:34 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 20 Feb 2017 18:34:35 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63408554ba61cfbcf981dd3226280179968072fe475f9e8d7bbae7ef1df513ae`  
		Last Modified: Mon, 16 Jan 2017 20:45:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f63b9a75897e466a1e645943375583c0d2cca3012dabe6af4190c472d9609f`  
		Last Modified: Wed, 18 Jan 2017 03:09:20 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8579ed1d2f83ded811c90855068d7894fec5830cae61435ceafe2fca0e873193`  
		Last Modified: Wed, 18 Jan 2017 03:09:21 GMT  
		Size: 1.2 MB (1216678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef7c2f67d61627969da5ad84275bf59087a52c7176fe90a3c2e03cb2f0534a90`  
		Last Modified: Wed, 18 Jan 2017 03:09:20 GMT  
		Size: 173.5 KB (173521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041174996479d2904d87c35f95388d2ab7448e3567e69455228b8ee69eae09ac`  
		Last Modified: Mon, 20 Feb 2017 18:38:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50664714a36043cafea535808535fd2953235a6d5b111a09abbb1c442a306343`  
		Last Modified: Mon, 20 Feb 2017 18:38:24 GMT  
		Size: 18.2 KB (18216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c42e6aabd81e27afd6d2505486ab8baf2fc1fee2fe4400582d300ccbc5c8e2`  
		Last Modified: Mon, 20 Feb 2017 18:39:19 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7830a239b89ec7aa8205d41c7517bf4c222d178b44258393073640fd9acb432`  
		Last Modified: Mon, 20 Feb 2017 18:39:41 GMT  
		Size: 118.7 MB (118676804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7adf5b5e4fa2307be50a67003dc504565a2c46746fb116514802d7eb6671df3`  
		Last Modified: Mon, 20 Feb 2017 18:39:18 GMT  
		Size: 4.6 KB (4627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddff021a53615e40683d32e6ede2b79dbdbb1926dbb1969cd85c618acba61585`  
		Last Modified: Mon, 20 Feb 2017 18:39:19 GMT  
		Size: 720.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e12ad63f1b054d3c809d0549b860e5f149023cffaacea6c155753a5b2e42a16`  
		Last Modified: Mon, 20 Feb 2017 18:39:18 GMT  
		Size: 21.2 KB (21207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2`

```console
$ docker pull cassandra@sha256:2cf26feb9e7726bfc6c8b6cf788ed73193cba3f504461901fe26ee488b24a2d2
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.5 MB (171475708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5225054ba18db58e7f44ed6e63d3e1b5dc0d93f82c8bbddec3c3b643b8260e08`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Mon, 16 Jan 2017 20:35:44 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 17 Jan 2017 00:03:13 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jan 2017 00:03:14 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 00:03:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 00:03:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 20 Feb 2017 18:26:50 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 20 Feb 2017 18:26:51 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 20 Feb 2017 18:26:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 20 Feb 2017 18:31:53 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 20 Feb 2017 18:31:54 GMT
ENV CASSANDRA_VERSION=2.2.8
# Mon, 20 Feb 2017 18:34:29 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 20 Feb 2017 18:34:30 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Mon, 20 Feb 2017 18:34:30 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 20 Feb 2017 18:34:31 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 20 Feb 2017 18:34:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 20 Feb 2017 18:34:33 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 20 Feb 2017 18:34:34 GMT
VOLUME [/var/lib/cassandra]
# Mon, 20 Feb 2017 18:34:34 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 20 Feb 2017 18:34:35 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63408554ba61cfbcf981dd3226280179968072fe475f9e8d7bbae7ef1df513ae`  
		Last Modified: Mon, 16 Jan 2017 20:45:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f63b9a75897e466a1e645943375583c0d2cca3012dabe6af4190c472d9609f`  
		Last Modified: Wed, 18 Jan 2017 03:09:20 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8579ed1d2f83ded811c90855068d7894fec5830cae61435ceafe2fca0e873193`  
		Last Modified: Wed, 18 Jan 2017 03:09:21 GMT  
		Size: 1.2 MB (1216678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef7c2f67d61627969da5ad84275bf59087a52c7176fe90a3c2e03cb2f0534a90`  
		Last Modified: Wed, 18 Jan 2017 03:09:20 GMT  
		Size: 173.5 KB (173521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041174996479d2904d87c35f95388d2ab7448e3567e69455228b8ee69eae09ac`  
		Last Modified: Mon, 20 Feb 2017 18:38:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50664714a36043cafea535808535fd2953235a6d5b111a09abbb1c442a306343`  
		Last Modified: Mon, 20 Feb 2017 18:38:24 GMT  
		Size: 18.2 KB (18216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c42e6aabd81e27afd6d2505486ab8baf2fc1fee2fe4400582d300ccbc5c8e2`  
		Last Modified: Mon, 20 Feb 2017 18:39:19 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7830a239b89ec7aa8205d41c7517bf4c222d178b44258393073640fd9acb432`  
		Last Modified: Mon, 20 Feb 2017 18:39:41 GMT  
		Size: 118.7 MB (118676804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7adf5b5e4fa2307be50a67003dc504565a2c46746fb116514802d7eb6671df3`  
		Last Modified: Mon, 20 Feb 2017 18:39:18 GMT  
		Size: 4.6 KB (4627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddff021a53615e40683d32e6ede2b79dbdbb1926dbb1969cd85c618acba61585`  
		Last Modified: Mon, 20 Feb 2017 18:39:19 GMT  
		Size: 720.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e12ad63f1b054d3c809d0549b860e5f149023cffaacea6c155753a5b2e42a16`  
		Last Modified: Mon, 20 Feb 2017 18:39:18 GMT  
		Size: 21.2 KB (21207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2`

```console
$ docker pull cassandra@sha256:2cf26feb9e7726bfc6c8b6cf788ed73193cba3f504461901fe26ee488b24a2d2
```

-	Platforms:
	-	linux; amd64

### `cassandra:2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.5 MB (171475708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5225054ba18db58e7f44ed6e63d3e1b5dc0d93f82c8bbddec3c3b643b8260e08`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Mon, 16 Jan 2017 20:35:44 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 17 Jan 2017 00:03:13 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jan 2017 00:03:14 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 00:03:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 00:03:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 20 Feb 2017 18:26:50 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 20 Feb 2017 18:26:51 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 20 Feb 2017 18:26:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 20 Feb 2017 18:31:53 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 20 Feb 2017 18:31:54 GMT
ENV CASSANDRA_VERSION=2.2.8
# Mon, 20 Feb 2017 18:34:29 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 20 Feb 2017 18:34:30 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Mon, 20 Feb 2017 18:34:30 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 20 Feb 2017 18:34:31 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 20 Feb 2017 18:34:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 20 Feb 2017 18:34:33 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 20 Feb 2017 18:34:34 GMT
VOLUME [/var/lib/cassandra]
# Mon, 20 Feb 2017 18:34:34 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 20 Feb 2017 18:34:35 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63408554ba61cfbcf981dd3226280179968072fe475f9e8d7bbae7ef1df513ae`  
		Last Modified: Mon, 16 Jan 2017 20:45:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f63b9a75897e466a1e645943375583c0d2cca3012dabe6af4190c472d9609f`  
		Last Modified: Wed, 18 Jan 2017 03:09:20 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8579ed1d2f83ded811c90855068d7894fec5830cae61435ceafe2fca0e873193`  
		Last Modified: Wed, 18 Jan 2017 03:09:21 GMT  
		Size: 1.2 MB (1216678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef7c2f67d61627969da5ad84275bf59087a52c7176fe90a3c2e03cb2f0534a90`  
		Last Modified: Wed, 18 Jan 2017 03:09:20 GMT  
		Size: 173.5 KB (173521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041174996479d2904d87c35f95388d2ab7448e3567e69455228b8ee69eae09ac`  
		Last Modified: Mon, 20 Feb 2017 18:38:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50664714a36043cafea535808535fd2953235a6d5b111a09abbb1c442a306343`  
		Last Modified: Mon, 20 Feb 2017 18:38:24 GMT  
		Size: 18.2 KB (18216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c42e6aabd81e27afd6d2505486ab8baf2fc1fee2fe4400582d300ccbc5c8e2`  
		Last Modified: Mon, 20 Feb 2017 18:39:19 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7830a239b89ec7aa8205d41c7517bf4c222d178b44258393073640fd9acb432`  
		Last Modified: Mon, 20 Feb 2017 18:39:41 GMT  
		Size: 118.7 MB (118676804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7adf5b5e4fa2307be50a67003dc504565a2c46746fb116514802d7eb6671df3`  
		Last Modified: Mon, 20 Feb 2017 18:39:18 GMT  
		Size: 4.6 KB (4627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddff021a53615e40683d32e6ede2b79dbdbb1926dbb1969cd85c618acba61585`  
		Last Modified: Mon, 20 Feb 2017 18:39:19 GMT  
		Size: 720.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e12ad63f1b054d3c809d0549b860e5f149023cffaacea6c155753a5b2e42a16`  
		Last Modified: Mon, 20 Feb 2017 18:39:18 GMT  
		Size: 21.2 KB (21207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0.10`

```console
$ docker pull cassandra@sha256:afac5c3522e20aa2d46b26e3d16b5f7e64fe876a40cfbd628617ae5cb5dc948d
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.0.10` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.7 MB (157697032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3be4b15c3fe24bf9d20e75fc49da867950682c084791cc2a1e3b735d293cd886`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Mon, 16 Jan 2017 20:35:44 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 17 Jan 2017 00:03:13 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jan 2017 00:03:14 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 00:03:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 00:03:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 20 Feb 2017 18:26:50 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 20 Feb 2017 18:26:51 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 20 Feb 2017 18:26:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 20 Feb 2017 18:34:36 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 20 Feb 2017 18:34:37 GMT
ENV CASSANDRA_VERSION=3.0.10
# Mon, 20 Feb 2017 18:37:19 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 20 Feb 2017 18:37:21 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Mon, 20 Feb 2017 18:37:21 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 20 Feb 2017 18:37:22 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 20 Feb 2017 18:37:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 20 Feb 2017 18:37:24 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 20 Feb 2017 18:37:24 GMT
VOLUME [/var/lib/cassandra]
# Mon, 20 Feb 2017 18:37:25 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 20 Feb 2017 18:37:25 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63408554ba61cfbcf981dd3226280179968072fe475f9e8d7bbae7ef1df513ae`  
		Last Modified: Mon, 16 Jan 2017 20:45:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f63b9a75897e466a1e645943375583c0d2cca3012dabe6af4190c472d9609f`  
		Last Modified: Wed, 18 Jan 2017 03:09:20 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8579ed1d2f83ded811c90855068d7894fec5830cae61435ceafe2fca0e873193`  
		Last Modified: Wed, 18 Jan 2017 03:09:21 GMT  
		Size: 1.2 MB (1216678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef7c2f67d61627969da5ad84275bf59087a52c7176fe90a3c2e03cb2f0534a90`  
		Last Modified: Wed, 18 Jan 2017 03:09:20 GMT  
		Size: 173.5 KB (173521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041174996479d2904d87c35f95388d2ab7448e3567e69455228b8ee69eae09ac`  
		Last Modified: Mon, 20 Feb 2017 18:38:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50664714a36043cafea535808535fd2953235a6d5b111a09abbb1c442a306343`  
		Last Modified: Mon, 20 Feb 2017 18:38:24 GMT  
		Size: 18.2 KB (18216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd7945c95de45dc8e7f9d722febee5c0df92e59871855e81d05e8d4eeb8bd01`  
		Last Modified: Mon, 20 Feb 2017 18:40:35 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b522341a4e30eebb8d23b92b5e472c087e56082d85a8a091b14bfcf3c96d484`  
		Last Modified: Mon, 20 Feb 2017 18:40:54 GMT  
		Size: 104.9 MB (104895535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a42dac4a2c84d7595000c24d0868a5b9b373ac7c6d6909bfa5b30a0343b5abb`  
		Last Modified: Mon, 20 Feb 2017 18:40:35 GMT  
		Size: 4.7 KB (4696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d00a6806eaa0eed70e54134c141d806b06964ac2cca3d126396f90b36d8a64`  
		Last Modified: Mon, 20 Feb 2017 18:40:35 GMT  
		Size: 719.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3342590046a30f6428aea5c3d80f0a5c726ada83fd0a1d0e26e9b0799feb0017`  
		Last Modified: Mon, 20 Feb 2017 18:40:35 GMT  
		Size: 23.7 KB (23731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0`

```console
$ docker pull cassandra@sha256:afac5c3522e20aa2d46b26e3d16b5f7e64fe876a40cfbd628617ae5cb5dc948d
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.7 MB (157697032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3be4b15c3fe24bf9d20e75fc49da867950682c084791cc2a1e3b735d293cd886`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Mon, 16 Jan 2017 20:35:44 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 17 Jan 2017 00:03:13 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jan 2017 00:03:14 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 00:03:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 00:03:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 20 Feb 2017 18:26:50 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 20 Feb 2017 18:26:51 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 20 Feb 2017 18:26:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 20 Feb 2017 18:34:36 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 20 Feb 2017 18:34:37 GMT
ENV CASSANDRA_VERSION=3.0.10
# Mon, 20 Feb 2017 18:37:19 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 20 Feb 2017 18:37:21 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Mon, 20 Feb 2017 18:37:21 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 20 Feb 2017 18:37:22 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 20 Feb 2017 18:37:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 20 Feb 2017 18:37:24 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 20 Feb 2017 18:37:24 GMT
VOLUME [/var/lib/cassandra]
# Mon, 20 Feb 2017 18:37:25 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 20 Feb 2017 18:37:25 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63408554ba61cfbcf981dd3226280179968072fe475f9e8d7bbae7ef1df513ae`  
		Last Modified: Mon, 16 Jan 2017 20:45:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f63b9a75897e466a1e645943375583c0d2cca3012dabe6af4190c472d9609f`  
		Last Modified: Wed, 18 Jan 2017 03:09:20 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8579ed1d2f83ded811c90855068d7894fec5830cae61435ceafe2fca0e873193`  
		Last Modified: Wed, 18 Jan 2017 03:09:21 GMT  
		Size: 1.2 MB (1216678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef7c2f67d61627969da5ad84275bf59087a52c7176fe90a3c2e03cb2f0534a90`  
		Last Modified: Wed, 18 Jan 2017 03:09:20 GMT  
		Size: 173.5 KB (173521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041174996479d2904d87c35f95388d2ab7448e3567e69455228b8ee69eae09ac`  
		Last Modified: Mon, 20 Feb 2017 18:38:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50664714a36043cafea535808535fd2953235a6d5b111a09abbb1c442a306343`  
		Last Modified: Mon, 20 Feb 2017 18:38:24 GMT  
		Size: 18.2 KB (18216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd7945c95de45dc8e7f9d722febee5c0df92e59871855e81d05e8d4eeb8bd01`  
		Last Modified: Mon, 20 Feb 2017 18:40:35 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b522341a4e30eebb8d23b92b5e472c087e56082d85a8a091b14bfcf3c96d484`  
		Last Modified: Mon, 20 Feb 2017 18:40:54 GMT  
		Size: 104.9 MB (104895535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a42dac4a2c84d7595000c24d0868a5b9b373ac7c6d6909bfa5b30a0343b5abb`  
		Last Modified: Mon, 20 Feb 2017 18:40:35 GMT  
		Size: 4.7 KB (4696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d00a6806eaa0eed70e54134c141d806b06964ac2cca3d126396f90b36d8a64`  
		Last Modified: Mon, 20 Feb 2017 18:40:35 GMT  
		Size: 719.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3342590046a30f6428aea5c3d80f0a5c726ada83fd0a1d0e26e9b0799feb0017`  
		Last Modified: Mon, 20 Feb 2017 18:40:35 GMT  
		Size: 23.7 KB (23731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.10`

```console
$ docker pull cassandra@sha256:6c2d85e8be242749e1294af43029f040e487d587bf56719c0e904188f74db1ab
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.10` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.7 MB (162699688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb079b740fd9e42555d681748af420cb15c86afb7a1c6b0b8c07e19405ff2f5c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Mon, 16 Jan 2017 20:35:44 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 17 Jan 2017 00:03:13 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jan 2017 00:03:14 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 00:03:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 00:03:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 20 Feb 2017 18:26:50 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 20 Feb 2017 18:26:51 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 20 Feb 2017 18:26:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 20 Feb 2017 18:37:27 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 310x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 20 Feb 2017 18:37:27 GMT
ENV CASSANDRA_VERSION=3.10
# Mon, 20 Feb 2017 18:37:58 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 20 Feb 2017 18:37:59 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Mon, 20 Feb 2017 18:38:00 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 20 Feb 2017 18:38:00 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 20 Feb 2017 18:38:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 20 Feb 2017 18:38:02 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 20 Feb 2017 18:38:03 GMT
VOLUME [/var/lib/cassandra]
# Mon, 20 Feb 2017 18:38:03 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 20 Feb 2017 18:38:04 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63408554ba61cfbcf981dd3226280179968072fe475f9e8d7bbae7ef1df513ae`  
		Last Modified: Mon, 16 Jan 2017 20:45:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f63b9a75897e466a1e645943375583c0d2cca3012dabe6af4190c472d9609f`  
		Last Modified: Wed, 18 Jan 2017 03:09:20 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8579ed1d2f83ded811c90855068d7894fec5830cae61435ceafe2fca0e873193`  
		Last Modified: Wed, 18 Jan 2017 03:09:21 GMT  
		Size: 1.2 MB (1216678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef7c2f67d61627969da5ad84275bf59087a52c7176fe90a3c2e03cb2f0534a90`  
		Last Modified: Wed, 18 Jan 2017 03:09:20 GMT  
		Size: 173.5 KB (173521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041174996479d2904d87c35f95388d2ab7448e3567e69455228b8ee69eae09ac`  
		Last Modified: Mon, 20 Feb 2017 18:38:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50664714a36043cafea535808535fd2953235a6d5b111a09abbb1c442a306343`  
		Last Modified: Mon, 20 Feb 2017 18:38:24 GMT  
		Size: 18.2 KB (18216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b0fb128e2bd3f70bd5f9fd6b2bb63ce8846f29c2b4e5c6276d7e76693f0a112`  
		Last Modified: Mon, 20 Feb 2017 18:41:34 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d4c03db14e6a2e9a10841a118c366ea7b7a9b250e8894f9b1819bb6bce0fcf`  
		Last Modified: Mon, 20 Feb 2017 18:41:54 GMT  
		Size: 109.9 MB (109893873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d791f3187ceaf9ec570f0e01010141cd7945d348768b118477be6d8709b70b`  
		Last Modified: Mon, 20 Feb 2017 18:41:34 GMT  
		Size: 4.4 KB (4399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65b2acaf80bce8af7c3577bd770542486beea4dbe9067fac264d8a8925bbe17`  
		Last Modified: Mon, 20 Feb 2017 18:41:34 GMT  
		Size: 723.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00adee9f13e8fee50652dcaf54baf8afd0e9626832ee95c8e4a5c770191098f2`  
		Last Modified: Mon, 20 Feb 2017 18:41:34 GMT  
		Size: 28.3 KB (28342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3`

```console
$ docker pull cassandra@sha256:6c2d85e8be242749e1294af43029f040e487d587bf56719c0e904188f74db1ab
```

-	Platforms:
	-	linux; amd64

### `cassandra:3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.7 MB (162699688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb079b740fd9e42555d681748af420cb15c86afb7a1c6b0b8c07e19405ff2f5c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Mon, 16 Jan 2017 20:35:44 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 17 Jan 2017 00:03:13 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jan 2017 00:03:14 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 00:03:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 00:03:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 20 Feb 2017 18:26:50 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 20 Feb 2017 18:26:51 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 20 Feb 2017 18:26:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 20 Feb 2017 18:37:27 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 310x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 20 Feb 2017 18:37:27 GMT
ENV CASSANDRA_VERSION=3.10
# Mon, 20 Feb 2017 18:37:58 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 20 Feb 2017 18:37:59 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Mon, 20 Feb 2017 18:38:00 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 20 Feb 2017 18:38:00 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 20 Feb 2017 18:38:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 20 Feb 2017 18:38:02 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 20 Feb 2017 18:38:03 GMT
VOLUME [/var/lib/cassandra]
# Mon, 20 Feb 2017 18:38:03 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 20 Feb 2017 18:38:04 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63408554ba61cfbcf981dd3226280179968072fe475f9e8d7bbae7ef1df513ae`  
		Last Modified: Mon, 16 Jan 2017 20:45:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f63b9a75897e466a1e645943375583c0d2cca3012dabe6af4190c472d9609f`  
		Last Modified: Wed, 18 Jan 2017 03:09:20 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8579ed1d2f83ded811c90855068d7894fec5830cae61435ceafe2fca0e873193`  
		Last Modified: Wed, 18 Jan 2017 03:09:21 GMT  
		Size: 1.2 MB (1216678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef7c2f67d61627969da5ad84275bf59087a52c7176fe90a3c2e03cb2f0534a90`  
		Last Modified: Wed, 18 Jan 2017 03:09:20 GMT  
		Size: 173.5 KB (173521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041174996479d2904d87c35f95388d2ab7448e3567e69455228b8ee69eae09ac`  
		Last Modified: Mon, 20 Feb 2017 18:38:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50664714a36043cafea535808535fd2953235a6d5b111a09abbb1c442a306343`  
		Last Modified: Mon, 20 Feb 2017 18:38:24 GMT  
		Size: 18.2 KB (18216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b0fb128e2bd3f70bd5f9fd6b2bb63ce8846f29c2b4e5c6276d7e76693f0a112`  
		Last Modified: Mon, 20 Feb 2017 18:41:34 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d4c03db14e6a2e9a10841a118c366ea7b7a9b250e8894f9b1819bb6bce0fcf`  
		Last Modified: Mon, 20 Feb 2017 18:41:54 GMT  
		Size: 109.9 MB (109893873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d791f3187ceaf9ec570f0e01010141cd7945d348768b118477be6d8709b70b`  
		Last Modified: Mon, 20 Feb 2017 18:41:34 GMT  
		Size: 4.4 KB (4399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65b2acaf80bce8af7c3577bd770542486beea4dbe9067fac264d8a8925bbe17`  
		Last Modified: Mon, 20 Feb 2017 18:41:34 GMT  
		Size: 723.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00adee9f13e8fee50652dcaf54baf8afd0e9626832ee95c8e4a5c770191098f2`  
		Last Modified: Mon, 20 Feb 2017 18:41:34 GMT  
		Size: 28.3 KB (28342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:latest`

```console
$ docker pull cassandra@sha256:6c2d85e8be242749e1294af43029f040e487d587bf56719c0e904188f74db1ab
```

-	Platforms:
	-	linux; amd64

### `cassandra:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.7 MB (162699688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb079b740fd9e42555d681748af420cb15c86afb7a1c6b0b8c07e19405ff2f5c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["cassandra","-f"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Mon, 16 Jan 2017 20:35:44 GMT
RUN awk '$1 ~ "^deb" { $3 = $3 "-backports"; print; exit }' /etc/apt/sources.list > /etc/apt/sources.list.d/backports.list
# Tue, 17 Jan 2017 00:03:13 GMT
RUN groupadd -r cassandra --gid=999 && useradd -r -g cassandra --uid=999 cassandra
# Tue, 17 Jan 2017 00:03:14 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 00:03:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 00:03:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends libjemalloc1 && rm -rf /var/lib/apt/lists/*
# Mon, 20 Feb 2017 18:26:50 GMT
RUN { 		echo 'Package: openjdk-* ca-certificates-java'; 		echo 'Pin: release n=*-backports'; 		echo 'Pin-Priority: 990'; 	} > /etc/apt/preferences.d/java-backports
# Mon, 20 Feb 2017 18:26:51 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Mon, 20 Feb 2017 18:26:53 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 20 Feb 2017 18:37:27 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 310x main' >> /etc/apt/sources.list.d/cassandra.list
# Mon, 20 Feb 2017 18:37:27 GMT
ENV CASSANDRA_VERSION=3.10
# Mon, 20 Feb 2017 18:37:58 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Mon, 20 Feb 2017 18:37:59 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Mon, 20 Feb 2017 18:38:00 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Mon, 20 Feb 2017 18:38:00 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Mon, 20 Feb 2017 18:38:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 20 Feb 2017 18:38:02 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Mon, 20 Feb 2017 18:38:03 GMT
VOLUME [/var/lib/cassandra]
# Mon, 20 Feb 2017 18:38:03 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Mon, 20 Feb 2017 18:38:04 GMT
CMD ["cassandra" "-f"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63408554ba61cfbcf981dd3226280179968072fe475f9e8d7bbae7ef1df513ae`  
		Last Modified: Mon, 16 Jan 2017 20:45:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f63b9a75897e466a1e645943375583c0d2cca3012dabe6af4190c472d9609f`  
		Last Modified: Wed, 18 Jan 2017 03:09:20 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8579ed1d2f83ded811c90855068d7894fec5830cae61435ceafe2fca0e873193`  
		Last Modified: Wed, 18 Jan 2017 03:09:21 GMT  
		Size: 1.2 MB (1216678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef7c2f67d61627969da5ad84275bf59087a52c7176fe90a3c2e03cb2f0534a90`  
		Last Modified: Wed, 18 Jan 2017 03:09:20 GMT  
		Size: 173.5 KB (173521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041174996479d2904d87c35f95388d2ab7448e3567e69455228b8ee69eae09ac`  
		Last Modified: Mon, 20 Feb 2017 18:38:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50664714a36043cafea535808535fd2953235a6d5b111a09abbb1c442a306343`  
		Last Modified: Mon, 20 Feb 2017 18:38:24 GMT  
		Size: 18.2 KB (18216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b0fb128e2bd3f70bd5f9fd6b2bb63ce8846f29c2b4e5c6276d7e76693f0a112`  
		Last Modified: Mon, 20 Feb 2017 18:41:34 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d4c03db14e6a2e9a10841a118c366ea7b7a9b250e8894f9b1819bb6bce0fcf`  
		Last Modified: Mon, 20 Feb 2017 18:41:54 GMT  
		Size: 109.9 MB (109893873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d791f3187ceaf9ec570f0e01010141cd7945d348768b118477be6d8709b70b`  
		Last Modified: Mon, 20 Feb 2017 18:41:34 GMT  
		Size: 4.4 KB (4399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65b2acaf80bce8af7c3577bd770542486beea4dbe9067fac264d8a8925bbe17`  
		Last Modified: Mon, 20 Feb 2017 18:41:34 GMT  
		Size: 723.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00adee9f13e8fee50652dcaf54baf8afd0e9626832ee95c8e4a5c770191098f2`  
		Last Modified: Mon, 20 Feb 2017 18:41:34 GMT  
		Size: 28.3 KB (28342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
