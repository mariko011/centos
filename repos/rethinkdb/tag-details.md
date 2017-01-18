<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rethinkdb`

-	[`rethinkdb:2.0.4`](#rethinkdb204)
-	[`rethinkdb:2.0`](#rethinkdb20)
-	[`rethinkdb:2.1.6`](#rethinkdb216)
-	[`rethinkdb:2.1`](#rethinkdb21)
-	[`rethinkdb:2.2.6`](#rethinkdb226)
-	[`rethinkdb:2.2`](#rethinkdb22)
-	[`rethinkdb:2.3.4`](#rethinkdb234)
-	[`rethinkdb:2.3.5`](#rethinkdb235)
-	[`rethinkdb:2.3`](#rethinkdb23)
-	[`rethinkdb:2`](#rethinkdb2)
-	[`rethinkdb:latest`](#rethinkdblatest)

## `rethinkdb:2.0.4`

```console
$ docker pull rethinkdb@sha256:50ff8c90b1be2d6f5afd0a059d956fd5ba88ffc5b3b703662cd3c47385428bec
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.0.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80667126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:614ee1ed227414554e888e181947a04932f12ea34fff1b6a576fb56d69012331`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:09:27 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 17 Jan 2017 20:10:08 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 17 Jan 2017 20:10:09 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 17 Jan 2017 20:10:27 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.0.4~0jessie
# Tue, 17 Jan 2017 20:10:39 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:10:40 GMT
VOLUME [/data]
# Tue, 17 Jan 2017 20:10:40 GMT
WORKDIR /data
# Tue, 17 Jan 2017 20:10:40 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 17 Jan 2017 20:10:40 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902449b396bbbafd940c336125926fe04ae010b0a63750a25565f024c8c07d20`  
		Last Modified: Wed, 18 Jan 2017 07:17:31 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a4fa5706b014d41e977e0aee118b834911b32933fffc21cc39df2470103cfc`  
		Last Modified: Wed, 18 Jan 2017 07:17:31 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7492e54554a282677b9c9fa7fee79d4cd573d3ca4c1fbb027743d65c8ab68fd0`  
		Last Modified: Wed, 18 Jan 2017 07:17:40 GMT  
		Size: 29.3 MB (29304170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5157377d7119e90a2c9ae4a33ab017024fb6e0b76390363e8b60132dab4e2f`  
		Last Modified: Wed, 18 Jan 2017 07:17:31 GMT  
		Size: 90.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.0`

```console
$ docker pull rethinkdb@sha256:50ff8c90b1be2d6f5afd0a059d956fd5ba88ffc5b3b703662cd3c47385428bec
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80667126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:614ee1ed227414554e888e181947a04932f12ea34fff1b6a576fb56d69012331`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:09:27 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 17 Jan 2017 20:10:08 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 17 Jan 2017 20:10:09 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 17 Jan 2017 20:10:27 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.0.4~0jessie
# Tue, 17 Jan 2017 20:10:39 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:10:40 GMT
VOLUME [/data]
# Tue, 17 Jan 2017 20:10:40 GMT
WORKDIR /data
# Tue, 17 Jan 2017 20:10:40 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 17 Jan 2017 20:10:40 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902449b396bbbafd940c336125926fe04ae010b0a63750a25565f024c8c07d20`  
		Last Modified: Wed, 18 Jan 2017 07:17:31 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a4fa5706b014d41e977e0aee118b834911b32933fffc21cc39df2470103cfc`  
		Last Modified: Wed, 18 Jan 2017 07:17:31 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7492e54554a282677b9c9fa7fee79d4cd573d3ca4c1fbb027743d65c8ab68fd0`  
		Last Modified: Wed, 18 Jan 2017 07:17:40 GMT  
		Size: 29.3 MB (29304170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5157377d7119e90a2c9ae4a33ab017024fb6e0b76390363e8b60132dab4e2f`  
		Last Modified: Wed, 18 Jan 2017 07:17:31 GMT  
		Size: 90.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.1.6`

```console
$ docker pull rethinkdb@sha256:dcbac4100b9b9a28bfe44977a2fe0e136b42cf70ce2cfca6ac22d7a1ed64914b
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.1.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.3 MB (75293863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:663f490c5d594d624207ea36615f2d0e6519b8595375e0a85dd1b5c5d4152abe`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:09:27 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 17 Jan 2017 20:10:08 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 17 Jan 2017 20:10:09 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 17 Jan 2017 20:10:41 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.1.6+1~0jessie
# Tue, 17 Jan 2017 20:10:55 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:10:56 GMT
VOLUME [/data]
# Tue, 17 Jan 2017 20:10:56 GMT
WORKDIR /data
# Tue, 17 Jan 2017 20:10:56 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 17 Jan 2017 20:10:56 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902449b396bbbafd940c336125926fe04ae010b0a63750a25565f024c8c07d20`  
		Last Modified: Wed, 18 Jan 2017 07:17:31 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a4fa5706b014d41e977e0aee118b834911b32933fffc21cc39df2470103cfc`  
		Last Modified: Wed, 18 Jan 2017 07:17:31 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f669e119727df4b595dd234075836de6994ab35be74d1426f2ff7c14301ddb`  
		Last Modified: Wed, 18 Jan 2017 07:18:42 GMT  
		Size: 23.9 MB (23930906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a86d2731d0a7418aa8ea9962c546004abc6776386c530ff430d1d4b052271d6a`  
		Last Modified: Wed, 18 Jan 2017 07:18:35 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.1`

```console
$ docker pull rethinkdb@sha256:dcbac4100b9b9a28bfe44977a2fe0e136b42cf70ce2cfca6ac22d7a1ed64914b
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.3 MB (75293863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:663f490c5d594d624207ea36615f2d0e6519b8595375e0a85dd1b5c5d4152abe`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:09:27 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 17 Jan 2017 20:10:08 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 17 Jan 2017 20:10:09 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 17 Jan 2017 20:10:41 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.1.6+1~0jessie
# Tue, 17 Jan 2017 20:10:55 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:10:56 GMT
VOLUME [/data]
# Tue, 17 Jan 2017 20:10:56 GMT
WORKDIR /data
# Tue, 17 Jan 2017 20:10:56 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 17 Jan 2017 20:10:56 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902449b396bbbafd940c336125926fe04ae010b0a63750a25565f024c8c07d20`  
		Last Modified: Wed, 18 Jan 2017 07:17:31 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a4fa5706b014d41e977e0aee118b834911b32933fffc21cc39df2470103cfc`  
		Last Modified: Wed, 18 Jan 2017 07:17:31 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f669e119727df4b595dd234075836de6994ab35be74d1426f2ff7c14301ddb`  
		Last Modified: Wed, 18 Jan 2017 07:18:42 GMT  
		Size: 23.9 MB (23930906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a86d2731d0a7418aa8ea9962c546004abc6776386c530ff430d1d4b052271d6a`  
		Last Modified: Wed, 18 Jan 2017 07:18:35 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.2.6`

```console
$ docker pull rethinkdb@sha256:29a38a6f881eb106aef0f3dd74678d8424524a74bef74878afc67ccf977ceb8d
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.2.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.5 MB (75468497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8357a0a90de93e71d2a71c9a57315743c6c5f9fda610a2a4a724d87300c129d2`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:09:27 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 17 Jan 2017 20:10:08 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 17 Jan 2017 20:10:09 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 17 Jan 2017 20:10:57 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.2.6~0jessie
# Tue, 17 Jan 2017 20:11:12 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:11:12 GMT
VOLUME [/data]
# Tue, 17 Jan 2017 20:11:13 GMT
WORKDIR /data
# Tue, 17 Jan 2017 20:11:13 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 17 Jan 2017 20:11:13 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902449b396bbbafd940c336125926fe04ae010b0a63750a25565f024c8c07d20`  
		Last Modified: Wed, 18 Jan 2017 07:17:31 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a4fa5706b014d41e977e0aee118b834911b32933fffc21cc39df2470103cfc`  
		Last Modified: Wed, 18 Jan 2017 07:17:31 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab7eb27af0f95645265ec0f365ef7dfbc68fb291fa3c4dc77a75700544343c1d`  
		Last Modified: Wed, 18 Jan 2017 07:19:35 GMT  
		Size: 24.1 MB (24105539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d4be596b00217391b043e41e02e8770e6810ff08c098f69f8a9e9758fa9e2c`  
		Last Modified: Wed, 18 Jan 2017 07:19:28 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.2`

```console
$ docker pull rethinkdb@sha256:29a38a6f881eb106aef0f3dd74678d8424524a74bef74878afc67ccf977ceb8d
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.5 MB (75468497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8357a0a90de93e71d2a71c9a57315743c6c5f9fda610a2a4a724d87300c129d2`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:09:27 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 17 Jan 2017 20:10:08 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 17 Jan 2017 20:10:09 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 17 Jan 2017 20:10:57 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.2.6~0jessie
# Tue, 17 Jan 2017 20:11:12 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:11:12 GMT
VOLUME [/data]
# Tue, 17 Jan 2017 20:11:13 GMT
WORKDIR /data
# Tue, 17 Jan 2017 20:11:13 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 17 Jan 2017 20:11:13 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902449b396bbbafd940c336125926fe04ae010b0a63750a25565f024c8c07d20`  
		Last Modified: Wed, 18 Jan 2017 07:17:31 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a4fa5706b014d41e977e0aee118b834911b32933fffc21cc39df2470103cfc`  
		Last Modified: Wed, 18 Jan 2017 07:17:31 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab7eb27af0f95645265ec0f365ef7dfbc68fb291fa3c4dc77a75700544343c1d`  
		Last Modified: Wed, 18 Jan 2017 07:19:35 GMT  
		Size: 24.1 MB (24105539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d4be596b00217391b043e41e02e8770e6810ff08c098f69f8a9e9758fa9e2c`  
		Last Modified: Wed, 18 Jan 2017 07:19:28 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3.4`

```console
$ docker pull rethinkdb@sha256:6b7f543b53a97e00d9d3c1ce4c2db093b471093bdd2e37926266ccc773143a81
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75962314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b287abf6d551afc13e822963ba7234aaa6655cbcb9e7325ebf47c7f0dcff1894`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:09:27 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 17 Jan 2017 20:10:08 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 17 Jan 2017 20:10:09 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 17 Jan 2017 20:11:14 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.4~0jessie
# Tue, 17 Jan 2017 20:11:29 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:11:30 GMT
VOLUME [/data]
# Tue, 17 Jan 2017 20:11:30 GMT
WORKDIR /data
# Tue, 17 Jan 2017 20:11:30 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 17 Jan 2017 20:11:31 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902449b396bbbafd940c336125926fe04ae010b0a63750a25565f024c8c07d20`  
		Last Modified: Wed, 18 Jan 2017 07:17:31 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a4fa5706b014d41e977e0aee118b834911b32933fffc21cc39df2470103cfc`  
		Last Modified: Wed, 18 Jan 2017 07:17:31 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c187f614e1003fcf48ae566264e30505bd241d8fccd538bf1ce4c3fa764bd5b`  
		Last Modified: Wed, 18 Jan 2017 07:20:40 GMT  
		Size: 24.6 MB (24599356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:960adbe492d25922ab834612fd13817178be5a89b3184463fe7368fa6386738a`  
		Last Modified: Wed, 18 Jan 2017 07:20:33 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3.5`

```console
$ docker pull rethinkdb@sha256:4308852f1d72beeeb7b47b6c715e2df0f1d8f7063a2dc5b6c6de430e29e1bb58
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75979083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58283079a43dc4742390580f968106f5d2cdd519e6f94050a7d0aa0987a1bd96`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:09:27 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 17 Jan 2017 20:10:08 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 17 Jan 2017 20:10:09 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 17 Jan 2017 20:10:09 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Tue, 17 Jan 2017 20:10:25 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:10:25 GMT
VOLUME [/data]
# Tue, 17 Jan 2017 20:10:26 GMT
WORKDIR /data
# Tue, 17 Jan 2017 20:10:26 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 17 Jan 2017 20:10:26 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902449b396bbbafd940c336125926fe04ae010b0a63750a25565f024c8c07d20`  
		Last Modified: Wed, 18 Jan 2017 07:17:31 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a4fa5706b014d41e977e0aee118b834911b32933fffc21cc39df2470103cfc`  
		Last Modified: Wed, 18 Jan 2017 07:17:31 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d9e503a4e8ec28460695b3bad4f3e60bcb559b1699cb9c31cdcbf5387a80a1`  
		Last Modified: Wed, 18 Jan 2017 07:21:09 GMT  
		Size: 24.6 MB (24616125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0c06b995f6a8c4bd3e6e8425e2ff3f9fb953eeb87fc81faf70dc0bf5e1f5dd`  
		Last Modified: Wed, 18 Jan 2017 07:21:01 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3`

```console
$ docker pull rethinkdb@sha256:4308852f1d72beeeb7b47b6c715e2df0f1d8f7063a2dc5b6c6de430e29e1bb58
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75979083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58283079a43dc4742390580f968106f5d2cdd519e6f94050a7d0aa0987a1bd96`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:09:27 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 17 Jan 2017 20:10:08 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 17 Jan 2017 20:10:09 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 17 Jan 2017 20:10:09 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Tue, 17 Jan 2017 20:10:25 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:10:25 GMT
VOLUME [/data]
# Tue, 17 Jan 2017 20:10:26 GMT
WORKDIR /data
# Tue, 17 Jan 2017 20:10:26 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 17 Jan 2017 20:10:26 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902449b396bbbafd940c336125926fe04ae010b0a63750a25565f024c8c07d20`  
		Last Modified: Wed, 18 Jan 2017 07:17:31 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a4fa5706b014d41e977e0aee118b834911b32933fffc21cc39df2470103cfc`  
		Last Modified: Wed, 18 Jan 2017 07:17:31 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d9e503a4e8ec28460695b3bad4f3e60bcb559b1699cb9c31cdcbf5387a80a1`  
		Last Modified: Wed, 18 Jan 2017 07:21:09 GMT  
		Size: 24.6 MB (24616125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0c06b995f6a8c4bd3e6e8425e2ff3f9fb953eeb87fc81faf70dc0bf5e1f5dd`  
		Last Modified: Wed, 18 Jan 2017 07:21:01 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2`

```console
$ docker pull rethinkdb@sha256:4308852f1d72beeeb7b47b6c715e2df0f1d8f7063a2dc5b6c6de430e29e1bb58
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75979083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58283079a43dc4742390580f968106f5d2cdd519e6f94050a7d0aa0987a1bd96`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:09:27 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 17 Jan 2017 20:10:08 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 17 Jan 2017 20:10:09 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 17 Jan 2017 20:10:09 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Tue, 17 Jan 2017 20:10:25 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:10:25 GMT
VOLUME [/data]
# Tue, 17 Jan 2017 20:10:26 GMT
WORKDIR /data
# Tue, 17 Jan 2017 20:10:26 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 17 Jan 2017 20:10:26 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902449b396bbbafd940c336125926fe04ae010b0a63750a25565f024c8c07d20`  
		Last Modified: Wed, 18 Jan 2017 07:17:31 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a4fa5706b014d41e977e0aee118b834911b32933fffc21cc39df2470103cfc`  
		Last Modified: Wed, 18 Jan 2017 07:17:31 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d9e503a4e8ec28460695b3bad4f3e60bcb559b1699cb9c31cdcbf5387a80a1`  
		Last Modified: Wed, 18 Jan 2017 07:21:09 GMT  
		Size: 24.6 MB (24616125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0c06b995f6a8c4bd3e6e8425e2ff3f9fb953eeb87fc81faf70dc0bf5e1f5dd`  
		Last Modified: Wed, 18 Jan 2017 07:21:01 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:latest`

```console
$ docker pull rethinkdb@sha256:4308852f1d72beeeb7b47b6c715e2df0f1d8f7063a2dc5b6c6de430e29e1bb58
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75979083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58283079a43dc4742390580f968106f5d2cdd519e6f94050a7d0aa0987a1bd96`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:09:27 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Tue, 17 Jan 2017 20:10:08 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Tue, 17 Jan 2017 20:10:09 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Tue, 17 Jan 2017 20:10:09 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Tue, 17 Jan 2017 20:10:25 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:10:25 GMT
VOLUME [/data]
# Tue, 17 Jan 2017 20:10:26 GMT
WORKDIR /data
# Tue, 17 Jan 2017 20:10:26 GMT
CMD ["rethinkdb" "--bind" "all"]
# Tue, 17 Jan 2017 20:10:26 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902449b396bbbafd940c336125926fe04ae010b0a63750a25565f024c8c07d20`  
		Last Modified: Wed, 18 Jan 2017 07:17:31 GMT  
		Size: 1.4 KB (1441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a4fa5706b014d41e977e0aee118b834911b32933fffc21cc39df2470103cfc`  
		Last Modified: Wed, 18 Jan 2017 07:17:31 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d9e503a4e8ec28460695b3bad4f3e60bcb559b1699cb9c31cdcbf5387a80a1`  
		Last Modified: Wed, 18 Jan 2017 07:21:09 GMT  
		Size: 24.6 MB (24616125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0c06b995f6a8c4bd3e6e8425e2ff3f9fb953eeb87fc81faf70dc0bf5e1f5dd`  
		Last Modified: Wed, 18 Jan 2017 07:21:01 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
