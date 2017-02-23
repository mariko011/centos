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
$ docker pull cassandra@sha256:787d375079af5d7edec8d1062ac89a53284b3391cff3a42c030a51b3039bac77
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.1.17` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.6 MB (167641299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba18fd807c0cf2cf2a8f26b0b06a0cdfaa79dd64591e0dac0586ef5fda4c4829`
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
# Thu, 23 Feb 2017 19:15:35 GMT
ENV CASSANDRA_VERSION=2.1.17
# Thu, 23 Feb 2017 19:16:29 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Feb 2017 19:16:30 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Thu, 23 Feb 2017 19:16:30 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 23 Feb 2017 19:16:31 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Thu, 23 Feb 2017 19:16:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Feb 2017 19:16:32 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 23 Feb 2017 19:16:32 GMT
VOLUME [/var/lib/cassandra]
# Thu, 23 Feb 2017 19:16:33 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 23 Feb 2017 19:16:33 GMT
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
	-	`sha256:66ca43e701be7ca35a91f08ff8d68ad32672b6050b38486f106ade7cbd9511e9`  
		Last Modified: Thu, 23 Feb 2017 19:19:02 GMT  
		Size: 114.8 MB (114843344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630e78d4a10ebaff95673b9f49f5ad7ed24fd9da58731a46a9f5318af33004dc`  
		Last Modified: Thu, 23 Feb 2017 19:18:43 GMT  
		Size: 4.7 KB (4656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b59d7485c80b2c30a535fa4d93b5262e3c0edf79dc5c492074a03df5a9c9f1`  
		Last Modified: Thu, 23 Feb 2017 19:18:44 GMT  
		Size: 719.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917408e8bc9d9c3e79951d19d767425f9e492aa3e05e37a80302c1b62c28e50a`  
		Last Modified: Thu, 23 Feb 2017 19:18:45 GMT  
		Size: 20.2 KB (20231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.1`

```console
$ docker pull cassandra@sha256:787d375079af5d7edec8d1062ac89a53284b3391cff3a42c030a51b3039bac77
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.6 MB (167641299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba18fd807c0cf2cf2a8f26b0b06a0cdfaa79dd64591e0dac0586ef5fda4c4829`
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
# Thu, 23 Feb 2017 19:15:35 GMT
ENV CASSANDRA_VERSION=2.1.17
# Thu, 23 Feb 2017 19:16:29 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Feb 2017 19:16:30 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Thu, 23 Feb 2017 19:16:30 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 23 Feb 2017 19:16:31 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Thu, 23 Feb 2017 19:16:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Feb 2017 19:16:32 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 23 Feb 2017 19:16:32 GMT
VOLUME [/var/lib/cassandra]
# Thu, 23 Feb 2017 19:16:33 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 23 Feb 2017 19:16:33 GMT
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
	-	`sha256:66ca43e701be7ca35a91f08ff8d68ad32672b6050b38486f106ade7cbd9511e9`  
		Last Modified: Thu, 23 Feb 2017 19:19:02 GMT  
		Size: 114.8 MB (114843344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630e78d4a10ebaff95673b9f49f5ad7ed24fd9da58731a46a9f5318af33004dc`  
		Last Modified: Thu, 23 Feb 2017 19:18:43 GMT  
		Size: 4.7 KB (4656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b59d7485c80b2c30a535fa4d93b5262e3c0edf79dc5c492074a03df5a9c9f1`  
		Last Modified: Thu, 23 Feb 2017 19:18:44 GMT  
		Size: 719.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:917408e8bc9d9c3e79951d19d767425f9e492aa3e05e37a80302c1b62c28e50a`  
		Last Modified: Thu, 23 Feb 2017 19:18:45 GMT  
		Size: 20.2 KB (20231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2.9`

```console
$ docker pull cassandra@sha256:c956f0c3b62d0639d1e99a63f3b5720e982e5386db4e5a156e20a2fff65e5aa9
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.2.9` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.0 MB (172000332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44cd64cf13cb4632887221c807c416e11ed8dc49e1dc7a7ea73e23707eba34e8`
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
# Thu, 23 Feb 2017 19:16:34 GMT
ENV CASSANDRA_VERSION=2.2.9
# Thu, 23 Feb 2017 19:17:30 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Feb 2017 19:17:32 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Thu, 23 Feb 2017 19:17:32 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 23 Feb 2017 19:17:32 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Thu, 23 Feb 2017 19:17:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Feb 2017 19:17:34 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 23 Feb 2017 19:17:34 GMT
VOLUME [/var/lib/cassandra]
# Thu, 23 Feb 2017 19:17:34 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 23 Feb 2017 19:17:35 GMT
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
	-	`sha256:754af9d8a5d94add8efb040f04525b5ba213bb34261cae1482df45fcf2217c89`  
		Last Modified: Thu, 23 Feb 2017 19:20:01 GMT  
		Size: 119.2 MB (119200633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3089d71a7d6b197856ca8e9d50d72f4c601c52ff42a681b9b7e8295219fbd7`  
		Last Modified: Thu, 23 Feb 2017 19:19:40 GMT  
		Size: 4.6 KB (4627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53dc8d0d3f01ce66cf8e31f5ef9e5ec2693633e85de623617fe5267939218c8d`  
		Last Modified: Thu, 23 Feb 2017 19:19:40 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fad3bd4b56aa706c7a30278808ff7b42117a7e59feb8f0e9bff94fb74ec03e7`  
		Last Modified: Thu, 23 Feb 2017 19:19:41 GMT  
		Size: 22.0 KB (22000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2`

```console
$ docker pull cassandra@sha256:c956f0c3b62d0639d1e99a63f3b5720e982e5386db4e5a156e20a2fff65e5aa9
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.0 MB (172000332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44cd64cf13cb4632887221c807c416e11ed8dc49e1dc7a7ea73e23707eba34e8`
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
# Thu, 23 Feb 2017 19:16:34 GMT
ENV CASSANDRA_VERSION=2.2.9
# Thu, 23 Feb 2017 19:17:30 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Feb 2017 19:17:32 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Thu, 23 Feb 2017 19:17:32 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 23 Feb 2017 19:17:32 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Thu, 23 Feb 2017 19:17:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Feb 2017 19:17:34 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 23 Feb 2017 19:17:34 GMT
VOLUME [/var/lib/cassandra]
# Thu, 23 Feb 2017 19:17:34 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 23 Feb 2017 19:17:35 GMT
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
	-	`sha256:754af9d8a5d94add8efb040f04525b5ba213bb34261cae1482df45fcf2217c89`  
		Last Modified: Thu, 23 Feb 2017 19:20:01 GMT  
		Size: 119.2 MB (119200633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3089d71a7d6b197856ca8e9d50d72f4c601c52ff42a681b9b7e8295219fbd7`  
		Last Modified: Thu, 23 Feb 2017 19:19:40 GMT  
		Size: 4.6 KB (4627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53dc8d0d3f01ce66cf8e31f5ef9e5ec2693633e85de623617fe5267939218c8d`  
		Last Modified: Thu, 23 Feb 2017 19:19:40 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fad3bd4b56aa706c7a30278808ff7b42117a7e59feb8f0e9bff94fb74ec03e7`  
		Last Modified: Thu, 23 Feb 2017 19:19:41 GMT  
		Size: 22.0 KB (22000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2`

```console
$ docker pull cassandra@sha256:c956f0c3b62d0639d1e99a63f3b5720e982e5386db4e5a156e20a2fff65e5aa9
```

-	Platforms:
	-	linux; amd64

### `cassandra:2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.0 MB (172000332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44cd64cf13cb4632887221c807c416e11ed8dc49e1dc7a7ea73e23707eba34e8`
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
# Thu, 23 Feb 2017 19:16:34 GMT
ENV CASSANDRA_VERSION=2.2.9
# Thu, 23 Feb 2017 19:17:30 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Feb 2017 19:17:32 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Thu, 23 Feb 2017 19:17:32 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 23 Feb 2017 19:17:32 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Thu, 23 Feb 2017 19:17:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Feb 2017 19:17:34 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 23 Feb 2017 19:17:34 GMT
VOLUME [/var/lib/cassandra]
# Thu, 23 Feb 2017 19:17:34 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 23 Feb 2017 19:17:35 GMT
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
	-	`sha256:754af9d8a5d94add8efb040f04525b5ba213bb34261cae1482df45fcf2217c89`  
		Last Modified: Thu, 23 Feb 2017 19:20:01 GMT  
		Size: 119.2 MB (119200633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3089d71a7d6b197856ca8e9d50d72f4c601c52ff42a681b9b7e8295219fbd7`  
		Last Modified: Thu, 23 Feb 2017 19:19:40 GMT  
		Size: 4.6 KB (4627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53dc8d0d3f01ce66cf8e31f5ef9e5ec2693633e85de623617fe5267939218c8d`  
		Last Modified: Thu, 23 Feb 2017 19:19:40 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fad3bd4b56aa706c7a30278808ff7b42117a7e59feb8f0e9bff94fb74ec03e7`  
		Last Modified: Thu, 23 Feb 2017 19:19:41 GMT  
		Size: 22.0 KB (22000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0.11`

```console
$ docker pull cassandra@sha256:04ce1d4430bc588a9a8ce07d27866ae51e4129c1f219426432665a4a9c2928ce
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.0.11` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158233332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d857cc07e1d84bce617bc669fbf62e8224633a370088f0e661f710d92f502252`
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
# Thu, 23 Feb 2017 19:17:36 GMT
ENV CASSANDRA_VERSION=3.0.11
# Thu, 23 Feb 2017 19:18:20 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Feb 2017 19:18:21 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Thu, 23 Feb 2017 19:18:21 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 23 Feb 2017 19:18:22 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Thu, 23 Feb 2017 19:18:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Feb 2017 19:18:23 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 23 Feb 2017 19:18:24 GMT
VOLUME [/var/lib/cassandra]
# Thu, 23 Feb 2017 19:18:24 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 23 Feb 2017 19:18:24 GMT
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
	-	`sha256:f680b3526baf204cc322eac1f0aa645051a31d56f1e65a149172c487f0779207`  
		Last Modified: Thu, 23 Feb 2017 19:21:18 GMT  
		Size: 105.4 MB (105431099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f612220d982c88be9efcc0fdb5b0866242e3dd617d1595096c95db70ef01c85a`  
		Last Modified: Thu, 23 Feb 2017 19:20:57 GMT  
		Size: 4.7 KB (4698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b39c5a20e721887c4c0a5e00b2dce735a36ed69e87077c82dff4b7bc4ec94e1`  
		Last Modified: Thu, 23 Feb 2017 19:20:57 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0da5216ce618f1d126869734a7c438f249a5113c23f4e3c8cddafe2c32bfbf8`  
		Last Modified: Thu, 23 Feb 2017 19:20:57 GMT  
		Size: 24.5 KB (24462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0`

```console
$ docker pull cassandra@sha256:04ce1d4430bc588a9a8ce07d27866ae51e4129c1f219426432665a4a9c2928ce
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.2 MB (158233332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d857cc07e1d84bce617bc669fbf62e8224633a370088f0e661f710d92f502252`
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
# Thu, 23 Feb 2017 19:17:36 GMT
ENV CASSANDRA_VERSION=3.0.11
# Thu, 23 Feb 2017 19:18:20 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Feb 2017 19:18:21 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Thu, 23 Feb 2017 19:18:21 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Thu, 23 Feb 2017 19:18:22 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Thu, 23 Feb 2017 19:18:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Feb 2017 19:18:23 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Thu, 23 Feb 2017 19:18:24 GMT
VOLUME [/var/lib/cassandra]
# Thu, 23 Feb 2017 19:18:24 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Thu, 23 Feb 2017 19:18:24 GMT
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
	-	`sha256:f680b3526baf204cc322eac1f0aa645051a31d56f1e65a149172c487f0779207`  
		Last Modified: Thu, 23 Feb 2017 19:21:18 GMT  
		Size: 105.4 MB (105431099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f612220d982c88be9efcc0fdb5b0866242e3dd617d1595096c95db70ef01c85a`  
		Last Modified: Thu, 23 Feb 2017 19:20:57 GMT  
		Size: 4.7 KB (4698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b39c5a20e721887c4c0a5e00b2dce735a36ed69e87077c82dff4b7bc4ec94e1`  
		Last Modified: Thu, 23 Feb 2017 19:20:57 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0da5216ce618f1d126869734a7c438f249a5113c23f4e3c8cddafe2c32bfbf8`  
		Last Modified: Thu, 23 Feb 2017 19:20:57 GMT  
		Size: 24.5 KB (24462 bytes)  
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
