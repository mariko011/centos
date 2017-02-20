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
$ docker pull cassandra@sha256:4eb70a11b158120c51fe0f0b219b4670078573de10f29b3a9c3efce30a3101be
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.1.16` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.1 MB (167089875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f7ee69c06d0d96a9b5c1dc2743e393141d47aa29bda65a672efcf6b65ba29b6`
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
# Tue, 17 Jan 2017 00:03:36 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 17 Jan 2017 00:03:38 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 00:04:54 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 17 Jan 2017 00:04:54 GMT
ENV CASSANDRA_VERSION=2.1.16
# Tue, 17 Jan 2017 00:05:59 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:06:00 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 17 Jan 2017 00:06:00 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 17 Jan 2017 00:06:01 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 17 Jan 2017 00:06:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jan 2017 00:06:02 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 17 Jan 2017 00:06:02 GMT
VOLUME [/var/lib/cassandra]
# Tue, 17 Jan 2017 00:06:03 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 17 Jan 2017 00:06:03 GMT
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
	-	`sha256:5ce974d57b305a80328e707f1d7b5a027a14fa4e859b7481319ea92e0edea545`  
		Last Modified: Wed, 18 Jan 2017 03:09:19 GMT  
		Size: 18.2 KB (18212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1120c6c55207dcf6770db90770d9341c0110ba5dbdbda63ba33cb0295303e5`  
		Last Modified: Wed, 18 Jan 2017 03:09:17 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d885d4b74c99520f9a745d179b3c487c2fc477449c039b45548c3e2389b60684`  
		Last Modified: Wed, 18 Jan 2017 03:09:46 GMT  
		Size: 114.3 MB (114292157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd8d69f0d84b0e9c74034ba23b32fc1199512c255d3a9bb573880fb284dc181`  
		Last Modified: Wed, 18 Jan 2017 03:09:17 GMT  
		Size: 4.7 KB (4655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:020e5a6b2f6b64cb44ec5385a3f60a94c3a4392e9e3106b14c3e96bb6703a7a3`  
		Last Modified: Wed, 18 Jan 2017 03:09:16 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731bed524818f9dfebd7fa64e73f6da281a0e25474933e1445b1946302294f9d`  
		Last Modified: Wed, 18 Jan 2017 03:09:16 GMT  
		Size: 20.2 KB (20243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.1`

```console
$ docker pull cassandra@sha256:4eb70a11b158120c51fe0f0b219b4670078573de10f29b3a9c3efce30a3101be
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.1 MB (167089875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f7ee69c06d0d96a9b5c1dc2743e393141d47aa29bda65a672efcf6b65ba29b6`
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
# Tue, 17 Jan 2017 00:03:36 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 17 Jan 2017 00:03:38 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 00:04:54 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 21x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 17 Jan 2017 00:04:54 GMT
ENV CASSANDRA_VERSION=2.1.16
# Tue, 17 Jan 2017 00:05:59 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:06:00 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 17 Jan 2017 00:06:00 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 17 Jan 2017 00:06:01 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 17 Jan 2017 00:06:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jan 2017 00:06:02 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 17 Jan 2017 00:06:02 GMT
VOLUME [/var/lib/cassandra]
# Tue, 17 Jan 2017 00:06:03 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 17 Jan 2017 00:06:03 GMT
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
	-	`sha256:5ce974d57b305a80328e707f1d7b5a027a14fa4e859b7481319ea92e0edea545`  
		Last Modified: Wed, 18 Jan 2017 03:09:19 GMT  
		Size: 18.2 KB (18212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1120c6c55207dcf6770db90770d9341c0110ba5dbdbda63ba33cb0295303e5`  
		Last Modified: Wed, 18 Jan 2017 03:09:17 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d885d4b74c99520f9a745d179b3c487c2fc477449c039b45548c3e2389b60684`  
		Last Modified: Wed, 18 Jan 2017 03:09:46 GMT  
		Size: 114.3 MB (114292157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd8d69f0d84b0e9c74034ba23b32fc1199512c255d3a9bb573880fb284dc181`  
		Last Modified: Wed, 18 Jan 2017 03:09:17 GMT  
		Size: 4.7 KB (4655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:020e5a6b2f6b64cb44ec5385a3f60a94c3a4392e9e3106b14c3e96bb6703a7a3`  
		Last Modified: Wed, 18 Jan 2017 03:09:16 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731bed524818f9dfebd7fa64e73f6da281a0e25474933e1445b1946302294f9d`  
		Last Modified: Wed, 18 Jan 2017 03:09:16 GMT  
		Size: 20.2 KB (20243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2.8`

```console
$ docker pull cassandra@sha256:e2a5dc69556de84b8997c49baf8abf2047643e8504d22aca2afa165bd00df9ab
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.2.8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171412194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ef9da826813416284994e13a261adc1ee89a908824c533e75882c9414539d07`
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
# Tue, 17 Jan 2017 00:03:36 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 17 Jan 2017 00:03:38 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 00:03:39 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 17 Jan 2017 00:03:40 GMT
ENV CASSANDRA_VERSION=2.2.8
# Tue, 17 Jan 2017 00:04:47 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:04:49 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 17 Jan 2017 00:04:49 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 17 Jan 2017 00:04:49 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 17 Jan 2017 00:04:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jan 2017 00:04:51 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 17 Jan 2017 00:04:52 GMT
VOLUME [/var/lib/cassandra]
# Tue, 17 Jan 2017 00:04:52 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 17 Jan 2017 00:04:52 GMT
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
	-	`sha256:5ce974d57b305a80328e707f1d7b5a027a14fa4e859b7481319ea92e0edea545`  
		Last Modified: Wed, 18 Jan 2017 03:09:19 GMT  
		Size: 18.2 KB (18212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1c0938ada4f9236d385bd28efdee4570133372c7efa6d4853876bb27f44f81`  
		Last Modified: Wed, 18 Jan 2017 03:10:25 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b00f6a8f68fc7a1be4bcd1eac40787391117ce2429b1e53b14e899a927ef4af`  
		Last Modified: Wed, 18 Jan 2017 03:10:53 GMT  
		Size: 118.6 MB (118613540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3b560773d18144242bae94e9b0ded459feab6b199fc5ab17fda3ba1cf4603f`  
		Last Modified: Wed, 18 Jan 2017 03:10:25 GMT  
		Size: 4.6 KB (4627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c789d8d5d8b2c12f1af8bd6852f3198bca45c3ac90852902331515d8ef785d`  
		Last Modified: Wed, 18 Jan 2017 03:10:25 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:728e5aef2756f332a5db45b811fa37f6593ed1bc5525fa0e6669c0855933f8f5`  
		Last Modified: Wed, 18 Jan 2017 03:10:25 GMT  
		Size: 21.2 KB (21208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2.2`

```console
$ docker pull cassandra@sha256:e2a5dc69556de84b8997c49baf8abf2047643e8504d22aca2afa165bd00df9ab
```

-	Platforms:
	-	linux; amd64

### `cassandra:2.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171412194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ef9da826813416284994e13a261adc1ee89a908824c533e75882c9414539d07`
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
# Tue, 17 Jan 2017 00:03:36 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 17 Jan 2017 00:03:38 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 00:03:39 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 17 Jan 2017 00:03:40 GMT
ENV CASSANDRA_VERSION=2.2.8
# Tue, 17 Jan 2017 00:04:47 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:04:49 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 17 Jan 2017 00:04:49 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 17 Jan 2017 00:04:49 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 17 Jan 2017 00:04:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jan 2017 00:04:51 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 17 Jan 2017 00:04:52 GMT
VOLUME [/var/lib/cassandra]
# Tue, 17 Jan 2017 00:04:52 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 17 Jan 2017 00:04:52 GMT
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
	-	`sha256:5ce974d57b305a80328e707f1d7b5a027a14fa4e859b7481319ea92e0edea545`  
		Last Modified: Wed, 18 Jan 2017 03:09:19 GMT  
		Size: 18.2 KB (18212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1c0938ada4f9236d385bd28efdee4570133372c7efa6d4853876bb27f44f81`  
		Last Modified: Wed, 18 Jan 2017 03:10:25 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b00f6a8f68fc7a1be4bcd1eac40787391117ce2429b1e53b14e899a927ef4af`  
		Last Modified: Wed, 18 Jan 2017 03:10:53 GMT  
		Size: 118.6 MB (118613540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3b560773d18144242bae94e9b0ded459feab6b199fc5ab17fda3ba1cf4603f`  
		Last Modified: Wed, 18 Jan 2017 03:10:25 GMT  
		Size: 4.6 KB (4627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c789d8d5d8b2c12f1af8bd6852f3198bca45c3ac90852902331515d8ef785d`  
		Last Modified: Wed, 18 Jan 2017 03:10:25 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:728e5aef2756f332a5db45b811fa37f6593ed1bc5525fa0e6669c0855933f8f5`  
		Last Modified: Wed, 18 Jan 2017 03:10:25 GMT  
		Size: 21.2 KB (21208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:2`

```console
$ docker pull cassandra@sha256:e2a5dc69556de84b8997c49baf8abf2047643e8504d22aca2afa165bd00df9ab
```

-	Platforms:
	-	linux; amd64

### `cassandra:2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171412194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ef9da826813416284994e13a261adc1ee89a908824c533e75882c9414539d07`
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
# Tue, 17 Jan 2017 00:03:36 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 17 Jan 2017 00:03:38 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 00:03:39 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 22x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 17 Jan 2017 00:03:40 GMT
ENV CASSANDRA_VERSION=2.2.8
# Tue, 17 Jan 2017 00:04:47 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:04:49 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 17 Jan 2017 00:04:49 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 17 Jan 2017 00:04:49 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 17 Jan 2017 00:04:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jan 2017 00:04:51 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 17 Jan 2017 00:04:52 GMT
VOLUME [/var/lib/cassandra]
# Tue, 17 Jan 2017 00:04:52 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 17 Jan 2017 00:04:52 GMT
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
	-	`sha256:5ce974d57b305a80328e707f1d7b5a027a14fa4e859b7481319ea92e0edea545`  
		Last Modified: Wed, 18 Jan 2017 03:09:19 GMT  
		Size: 18.2 KB (18212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1c0938ada4f9236d385bd28efdee4570133372c7efa6d4853876bb27f44f81`  
		Last Modified: Wed, 18 Jan 2017 03:10:25 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b00f6a8f68fc7a1be4bcd1eac40787391117ce2429b1e53b14e899a927ef4af`  
		Last Modified: Wed, 18 Jan 2017 03:10:53 GMT  
		Size: 118.6 MB (118613540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3b560773d18144242bae94e9b0ded459feab6b199fc5ab17fda3ba1cf4603f`  
		Last Modified: Wed, 18 Jan 2017 03:10:25 GMT  
		Size: 4.6 KB (4627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c789d8d5d8b2c12f1af8bd6852f3198bca45c3ac90852902331515d8ef785d`  
		Last Modified: Wed, 18 Jan 2017 03:10:25 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:728e5aef2756f332a5db45b811fa37f6593ed1bc5525fa0e6669c0855933f8f5`  
		Last Modified: Wed, 18 Jan 2017 03:10:25 GMT  
		Size: 21.2 KB (21208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0.10`

```console
$ docker pull cassandra@sha256:fb9c319373574b902ba593656a1fc1df69d529fb07815c98132c7912014d54de
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.0.10` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.5 MB (157494729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:829476bce1528fd8e6212a75d6e40dff8898d5d5ec8e6165ffa7ef5e27770d46`
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
# Tue, 17 Jan 2017 00:03:36 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 17 Jan 2017 00:03:38 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 00:06:49 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 17 Jan 2017 00:06:50 GMT
ENV CASSANDRA_VERSION=3.0.10
# Tue, 17 Jan 2017 00:07:34 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:07:36 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 17 Jan 2017 00:07:37 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 17 Jan 2017 00:07:37 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 17 Jan 2017 00:07:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jan 2017 00:07:38 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 17 Jan 2017 00:07:39 GMT
VOLUME [/var/lib/cassandra]
# Tue, 17 Jan 2017 00:07:39 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 17 Jan 2017 00:07:40 GMT
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
	-	`sha256:5ce974d57b305a80328e707f1d7b5a027a14fa4e859b7481319ea92e0edea545`  
		Last Modified: Wed, 18 Jan 2017 03:09:19 GMT  
		Size: 18.2 KB (18212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae6530495bec96bf32c632899abcdc0211104b124367172eee06bb8ce1aaec94`  
		Last Modified: Wed, 18 Jan 2017 03:11:46 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03cc02fea514348b5931c07bd9cc88ab8a86f031b3702a51a2fab97827a849c0`  
		Last Modified: Wed, 18 Jan 2017 03:12:14 GMT  
		Size: 104.7 MB (104693479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:008ca26edff653e5e41f11e010f2c0294aa0bdc677588445ceb5830e807852cf`  
		Last Modified: Wed, 18 Jan 2017 03:11:44 GMT  
		Size: 4.7 KB (4697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00bb06d9f0787c7a369c515352c075139200fb1e6fdb435eef639d34d0eb93ba`  
		Last Modified: Wed, 18 Jan 2017 03:11:45 GMT  
		Size: 719.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51134aea7245b3cb5fe67803e184809642e5dca99b6d204fa29c3979a39b8294`  
		Last Modified: Wed, 18 Jan 2017 03:11:45 GMT  
		Size: 23.7 KB (23735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.0`

```console
$ docker pull cassandra@sha256:fb9c319373574b902ba593656a1fc1df69d529fb07815c98132c7912014d54de
```

-	Platforms:
	-	linux; amd64

### `cassandra:3.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.5 MB (157494729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:829476bce1528fd8e6212a75d6e40dff8898d5d5ec8e6165ffa7ef5e27770d46`
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
# Tue, 17 Jan 2017 00:03:36 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 17 Jan 2017 00:03:38 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 00:06:49 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 17 Jan 2017 00:06:50 GMT
ENV CASSANDRA_VERSION=3.0.10
# Tue, 17 Jan 2017 00:07:34 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:07:36 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 17 Jan 2017 00:07:37 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 17 Jan 2017 00:07:37 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 17 Jan 2017 00:07:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jan 2017 00:07:38 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 17 Jan 2017 00:07:39 GMT
VOLUME [/var/lib/cassandra]
# Tue, 17 Jan 2017 00:07:39 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 17 Jan 2017 00:07:40 GMT
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
	-	`sha256:5ce974d57b305a80328e707f1d7b5a027a14fa4e859b7481319ea92e0edea545`  
		Last Modified: Wed, 18 Jan 2017 03:09:19 GMT  
		Size: 18.2 KB (18212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae6530495bec96bf32c632899abcdc0211104b124367172eee06bb8ce1aaec94`  
		Last Modified: Wed, 18 Jan 2017 03:11:46 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03cc02fea514348b5931c07bd9cc88ab8a86f031b3702a51a2fab97827a849c0`  
		Last Modified: Wed, 18 Jan 2017 03:12:14 GMT  
		Size: 104.7 MB (104693479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:008ca26edff653e5e41f11e010f2c0294aa0bdc677588445ceb5830e807852cf`  
		Last Modified: Wed, 18 Jan 2017 03:11:44 GMT  
		Size: 4.7 KB (4697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00bb06d9f0787c7a369c515352c075139200fb1e6fdb435eef639d34d0eb93ba`  
		Last Modified: Wed, 18 Jan 2017 03:11:45 GMT  
		Size: 719.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51134aea7245b3cb5fe67803e184809642e5dca99b6d204fa29c3979a39b8294`  
		Last Modified: Wed, 18 Jan 2017 03:11:45 GMT  
		Size: 23.7 KB (23735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:3.10`

**does not exist** (yet?)

## `cassandra:3`

```console
$ docker pull cassandra@sha256:919fd4a92f763cb344f70dce1c77a47283674dbb6c8bfda92879a8ebcf3c929f
```

-	Platforms:
	-	linux; amd64

### `cassandra:3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.0 MB (161963212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2da6dfd682cba9d3a03ae04497497d36def5936aea69a86e72b84c07773c82dc`
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
# Tue, 17 Jan 2017 00:03:36 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 17 Jan 2017 00:03:38 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 00:06:04 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 39x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 17 Jan 2017 00:06:05 GMT
ENV CASSANDRA_VERSION=3.9
# Tue, 17 Jan 2017 00:06:44 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:06:45 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 17 Jan 2017 00:06:46 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 17 Jan 2017 00:06:46 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 17 Jan 2017 00:06:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jan 2017 00:06:47 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 17 Jan 2017 00:06:48 GMT
VOLUME [/var/lib/cassandra]
# Tue, 17 Jan 2017 00:06:48 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 17 Jan 2017 00:06:48 GMT
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
	-	`sha256:5ce974d57b305a80328e707f1d7b5a027a14fa4e859b7481319ea92e0edea545`  
		Last Modified: Wed, 18 Jan 2017 03:09:19 GMT  
		Size: 18.2 KB (18212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f798570eda1fb4f8af3d9eaa2f9746dbd0e6c32bf11dcbb5de46db45b8bb7845`  
		Last Modified: Wed, 18 Jan 2017 03:12:51 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de4d23c77cdf6ddb14f6cad4348a77aaaf4ea3c24f9521c87da720f0e1423c3`  
		Last Modified: Wed, 18 Jan 2017 03:13:19 GMT  
		Size: 109.2 MB (109158733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672d615237f1bb3a16c06eaf72100fd6075a7d826c876e2caf94cf3d5d69fc9e`  
		Last Modified: Wed, 18 Jan 2017 03:12:51 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b219d2c0bdf38abfa77bc3f9cbc24a4fe5570bf46f8f9da4345ba6dadb083207`  
		Last Modified: Wed, 18 Jan 2017 03:12:51 GMT  
		Size: 717.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d1bbadfbe2433423b51cb40e91046c8f00dd45f9137ada76f740b91e0dc839`  
		Last Modified: Wed, 18 Jan 2017 03:12:51 GMT  
		Size: 27.3 KB (27267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `cassandra:latest`

```console
$ docker pull cassandra@sha256:919fd4a92f763cb344f70dce1c77a47283674dbb6c8bfda92879a8ebcf3c929f
```

-	Platforms:
	-	linux; amd64

### `cassandra:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.0 MB (161963212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2da6dfd682cba9d3a03ae04497497d36def5936aea69a86e72b84c07773c82dc`
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
# Tue, 17 Jan 2017 00:03:36 GMT
ENV GPG_KEYS=514A2AD631A57A16DD0047EC749D6EEC0353B12C 	A26E528B271F19B9E5D8E19EA278B781FE4B2BDA
# Tue, 17 Jan 2017 00:03:38 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/cassandra.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 00:06:04 GMT
RUN echo 'deb http://www.apache.org/dist/cassandra/debian 39x main' >> /etc/apt/sources.list.d/cassandra.list
# Tue, 17 Jan 2017 00:06:05 GMT
ENV CASSANDRA_VERSION=3.9
# Tue, 17 Jan 2017 00:06:44 GMT
RUN apt-get update 	&& apt-get install -y cassandra="$CASSANDRA_VERSION" 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:06:45 GMT
RUN sed -ri 's/^(JVM_PATCH_VERSION)=.*/\1=25/' /etc/cassandra/cassandra-env.sh
# Tue, 17 Jan 2017 00:06:46 GMT
ENV CASSANDRA_CONFIG=/etc/cassandra
# Tue, 17 Jan 2017 00:06:46 GMT
COPY file:fe6ed91be8debf19da443f09935b578bf6599e644b7a670bf7048d33fb2efa9e in /docker-entrypoint.sh 
# Tue, 17 Jan 2017 00:06:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 17 Jan 2017 00:06:47 GMT
RUN mkdir -p /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chown -R cassandra:cassandra /var/lib/cassandra "$CASSANDRA_CONFIG" 	&& chmod 777 /var/lib/cassandra "$CASSANDRA_CONFIG"
# Tue, 17 Jan 2017 00:06:48 GMT
VOLUME [/var/lib/cassandra]
# Tue, 17 Jan 2017 00:06:48 GMT
EXPOSE 7000/tcp 7001/tcp 7199/tcp 9042/tcp 9160/tcp
# Tue, 17 Jan 2017 00:06:48 GMT
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
	-	`sha256:5ce974d57b305a80328e707f1d7b5a027a14fa4e859b7481319ea92e0edea545`  
		Last Modified: Wed, 18 Jan 2017 03:09:19 GMT  
		Size: 18.2 KB (18212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f798570eda1fb4f8af3d9eaa2f9746dbd0e6c32bf11dcbb5de46db45b8bb7845`  
		Last Modified: Wed, 18 Jan 2017 03:12:51 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de4d23c77cdf6ddb14f6cad4348a77aaaf4ea3c24f9521c87da720f0e1423c3`  
		Last Modified: Wed, 18 Jan 2017 03:13:19 GMT  
		Size: 109.2 MB (109158733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672d615237f1bb3a16c06eaf72100fd6075a7d826c876e2caf94cf3d5d69fc9e`  
		Last Modified: Wed, 18 Jan 2017 03:12:51 GMT  
		Size: 4.4 KB (4396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b219d2c0bdf38abfa77bc3f9cbc24a4fe5570bf46f8f9da4345ba6dadb083207`  
		Last Modified: Wed, 18 Jan 2017 03:12:51 GMT  
		Size: 717.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d1bbadfbe2433423b51cb40e91046c8f00dd45f9137ada76f740b91e0dc839`  
		Last Modified: Wed, 18 Jan 2017 03:12:51 GMT  
		Size: 27.3 KB (27267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
