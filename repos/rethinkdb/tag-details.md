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
$ docker pull rethinkdb@sha256:9535758cc8481d7196676c920f17981420c2aca9bdf68c77c80f035bd7619f61
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.0.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80666417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62b8da103eda00fcfbe7389a80d92c575089642a925ca9f32bbaa83553669b0a`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:28:01 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 14 Dec 2016 19:28:03 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 14 Dec 2016 19:28:04 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 14 Dec 2016 19:28:20 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.0.4~0jessie
# Wed, 14 Dec 2016 19:28:35 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:28:35 GMT
VOLUME [/data]
# Wed, 14 Dec 2016 19:28:36 GMT
WORKDIR /data
# Wed, 14 Dec 2016 19:28:36 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 14 Dec 2016 19:28:36 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2d8dd0ca87de7ac211847e11d87dbf3c5aa70f6a72473fecfd3914693bef00`  
		Last Modified: Wed, 21 Dec 2016 19:35:48 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56239563bb31e2c7a24debf49821e00c702cbbc3e5431d22a8ee8fc016d966a`  
		Last Modified: Wed, 21 Dec 2016 19:35:48 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fe7c74894e5010d1342794037bda44e440dfcce254b9ccc23bfadada28d06e`  
		Last Modified: Wed, 21 Dec 2016 19:35:58 GMT  
		Size: 29.3 MB (29301549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c4fcfe59c572a273955f8d938b09d8c8610633c0cf7368cefee5f690f63d80`  
		Last Modified: Wed, 21 Dec 2016 19:35:49 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.0`

```console
$ docker pull rethinkdb@sha256:9535758cc8481d7196676c920f17981420c2aca9bdf68c77c80f035bd7619f61
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80666417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62b8da103eda00fcfbe7389a80d92c575089642a925ca9f32bbaa83553669b0a`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:28:01 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 14 Dec 2016 19:28:03 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 14 Dec 2016 19:28:04 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 14 Dec 2016 19:28:20 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.0.4~0jessie
# Wed, 14 Dec 2016 19:28:35 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:28:35 GMT
VOLUME [/data]
# Wed, 14 Dec 2016 19:28:36 GMT
WORKDIR /data
# Wed, 14 Dec 2016 19:28:36 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 14 Dec 2016 19:28:36 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2d8dd0ca87de7ac211847e11d87dbf3c5aa70f6a72473fecfd3914693bef00`  
		Last Modified: Wed, 21 Dec 2016 19:35:48 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56239563bb31e2c7a24debf49821e00c702cbbc3e5431d22a8ee8fc016d966a`  
		Last Modified: Wed, 21 Dec 2016 19:35:48 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fe7c74894e5010d1342794037bda44e440dfcce254b9ccc23bfadada28d06e`  
		Last Modified: Wed, 21 Dec 2016 19:35:58 GMT  
		Size: 29.3 MB (29301549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c4fcfe59c572a273955f8d938b09d8c8610633c0cf7368cefee5f690f63d80`  
		Last Modified: Wed, 21 Dec 2016 19:35:49 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.1.6`

```console
$ docker pull rethinkdb@sha256:c922330a01373aaed05d4db40d8de2df9c9680f2a40ab4aee404f00822c9e8f8
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.1.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.3 MB (75284007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79b39d7e376ee6f93b3b6cff1b58b5cd127c645f1018e90c5aa7706a2f595ab9`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:28:01 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 14 Dec 2016 19:28:03 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 14 Dec 2016 19:28:04 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 14 Dec 2016 19:28:37 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.1.6+1~0jessie
# Wed, 14 Dec 2016 19:28:50 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:28:51 GMT
VOLUME [/data]
# Wed, 14 Dec 2016 19:28:51 GMT
WORKDIR /data
# Wed, 14 Dec 2016 19:28:51 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 14 Dec 2016 19:28:52 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2d8dd0ca87de7ac211847e11d87dbf3c5aa70f6a72473fecfd3914693bef00`  
		Last Modified: Wed, 21 Dec 2016 19:35:48 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56239563bb31e2c7a24debf49821e00c702cbbc3e5431d22a8ee8fc016d966a`  
		Last Modified: Wed, 21 Dec 2016 19:35:48 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85ba7ff15e947ce82d09bac635700c6e7bc20d7c423137548418f71d20c430a`  
		Last Modified: Wed, 21 Dec 2016 19:36:56 GMT  
		Size: 23.9 MB (23919139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6baf98ffa429f7a1e6bbe22a156387054ec37f34743896fc0eff48f68d7817cd`  
		Last Modified: Wed, 21 Dec 2016 19:36:48 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.1`

```console
$ docker pull rethinkdb@sha256:c922330a01373aaed05d4db40d8de2df9c9680f2a40ab4aee404f00822c9e8f8
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.3 MB (75284007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79b39d7e376ee6f93b3b6cff1b58b5cd127c645f1018e90c5aa7706a2f595ab9`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:28:01 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 14 Dec 2016 19:28:03 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 14 Dec 2016 19:28:04 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 14 Dec 2016 19:28:37 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.1.6+1~0jessie
# Wed, 14 Dec 2016 19:28:50 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:28:51 GMT
VOLUME [/data]
# Wed, 14 Dec 2016 19:28:51 GMT
WORKDIR /data
# Wed, 14 Dec 2016 19:28:51 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 14 Dec 2016 19:28:52 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2d8dd0ca87de7ac211847e11d87dbf3c5aa70f6a72473fecfd3914693bef00`  
		Last Modified: Wed, 21 Dec 2016 19:35:48 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56239563bb31e2c7a24debf49821e00c702cbbc3e5431d22a8ee8fc016d966a`  
		Last Modified: Wed, 21 Dec 2016 19:35:48 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85ba7ff15e947ce82d09bac635700c6e7bc20d7c423137548418f71d20c430a`  
		Last Modified: Wed, 21 Dec 2016 19:36:56 GMT  
		Size: 23.9 MB (23919139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6baf98ffa429f7a1e6bbe22a156387054ec37f34743896fc0eff48f68d7817cd`  
		Last Modified: Wed, 21 Dec 2016 19:36:48 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.2.6`

```console
$ docker pull rethinkdb@sha256:cf896ca99038540e137801d032dd8cb831ae5a2fb031d911cfaa702350365c88
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.2.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.5 MB (75465822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28a14ef748489d4f815be1687f5bc834a7c9c1c8b24f643dece6b7f905fc9df7`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:28:01 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 14 Dec 2016 19:28:03 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 14 Dec 2016 19:28:04 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 14 Dec 2016 19:28:52 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.2.6~0jessie
# Wed, 14 Dec 2016 19:29:06 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:06 GMT
VOLUME [/data]
# Wed, 14 Dec 2016 19:29:06 GMT
WORKDIR /data
# Wed, 14 Dec 2016 19:29:06 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 14 Dec 2016 19:29:07 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2d8dd0ca87de7ac211847e11d87dbf3c5aa70f6a72473fecfd3914693bef00`  
		Last Modified: Wed, 21 Dec 2016 19:35:48 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56239563bb31e2c7a24debf49821e00c702cbbc3e5431d22a8ee8fc016d966a`  
		Last Modified: Wed, 21 Dec 2016 19:35:48 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc1f42e02a8c3cb42e55f906ad622b547d454d7b65adee397a47f767c25a651`  
		Last Modified: Wed, 21 Dec 2016 19:37:50 GMT  
		Size: 24.1 MB (24100954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc961330fca67d3fec6dbbeed3f5aaff1baaec5d17fde0df576479f15a06409`  
		Last Modified: Wed, 21 Dec 2016 19:37:43 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.2`

```console
$ docker pull rethinkdb@sha256:cf896ca99038540e137801d032dd8cb831ae5a2fb031d911cfaa702350365c88
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.5 MB (75465822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28a14ef748489d4f815be1687f5bc834a7c9c1c8b24f643dece6b7f905fc9df7`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:28:01 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 14 Dec 2016 19:28:03 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 14 Dec 2016 19:28:04 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 14 Dec 2016 19:28:52 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.2.6~0jessie
# Wed, 14 Dec 2016 19:29:06 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:06 GMT
VOLUME [/data]
# Wed, 14 Dec 2016 19:29:06 GMT
WORKDIR /data
# Wed, 14 Dec 2016 19:29:06 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 14 Dec 2016 19:29:07 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2d8dd0ca87de7ac211847e11d87dbf3c5aa70f6a72473fecfd3914693bef00`  
		Last Modified: Wed, 21 Dec 2016 19:35:48 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56239563bb31e2c7a24debf49821e00c702cbbc3e5431d22a8ee8fc016d966a`  
		Last Modified: Wed, 21 Dec 2016 19:35:48 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc1f42e02a8c3cb42e55f906ad622b547d454d7b65adee397a47f767c25a651`  
		Last Modified: Wed, 21 Dec 2016 19:37:50 GMT  
		Size: 24.1 MB (24100954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc961330fca67d3fec6dbbeed3f5aaff1baaec5d17fde0df576479f15a06409`  
		Last Modified: Wed, 21 Dec 2016 19:37:43 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3.4`

```console
$ docker pull rethinkdb@sha256:dee3a5d27c146924dbcf7ba98214e8f8262b7949f959b94ac752d53bb0e3934a
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75965040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bce1b7573876cc2657054ee991a95f1e910bc5325d1842292e11b9904ffac34c`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:28:01 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 14 Dec 2016 19:28:03 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 14 Dec 2016 19:28:04 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 14 Dec 2016 19:29:07 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.4~0jessie
# Wed, 14 Dec 2016 19:29:21 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:21 GMT
VOLUME [/data]
# Wed, 14 Dec 2016 19:29:22 GMT
WORKDIR /data
# Wed, 14 Dec 2016 19:29:22 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 14 Dec 2016 19:29:22 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2d8dd0ca87de7ac211847e11d87dbf3c5aa70f6a72473fecfd3914693bef00`  
		Last Modified: Wed, 21 Dec 2016 19:35:48 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56239563bb31e2c7a24debf49821e00c702cbbc3e5431d22a8ee8fc016d966a`  
		Last Modified: Wed, 21 Dec 2016 19:35:48 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dccf15ffcb29ee437f804926c6cf50c34d1a84d294beb8add31b63d22112ec9`  
		Last Modified: Wed, 21 Dec 2016 19:38:49 GMT  
		Size: 24.6 MB (24600172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89b6eb9b19440cb5b27a64c5eb391ff96d39ac24002c12331e592fc9cbd0771`  
		Last Modified: Wed, 21 Dec 2016 19:38:41 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3.5`

```console
$ docker pull rethinkdb@sha256:ab81bd8c5d8514b416331a00da048f0c041787e0a3f0d93219e46db069d65a58
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75969234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4415cabf295ee238834d7daed0c545469d13d6ff18a80eea8fb620874a352fa4`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:28:01 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 14 Dec 2016 19:28:03 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 14 Dec 2016 19:28:04 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 14 Dec 2016 19:28:04 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Wed, 14 Dec 2016 19:28:18 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:28:18 GMT
VOLUME [/data]
# Wed, 14 Dec 2016 19:28:18 GMT
WORKDIR /data
# Wed, 14 Dec 2016 19:28:19 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 14 Dec 2016 19:28:19 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2d8dd0ca87de7ac211847e11d87dbf3c5aa70f6a72473fecfd3914693bef00`  
		Last Modified: Wed, 21 Dec 2016 19:35:48 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56239563bb31e2c7a24debf49821e00c702cbbc3e5431d22a8ee8fc016d966a`  
		Last Modified: Wed, 21 Dec 2016 19:35:48 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf0f28d27004ef85ee999ac44eef81cab6782fc9c3cd511674f16fae50809fc5`  
		Last Modified: Wed, 21 Dec 2016 19:39:27 GMT  
		Size: 24.6 MB (24604366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6ba2c166ad0376ac7194831abdc4915fc623f5021405d96bee9a9f3631bd92`  
		Last Modified: Wed, 21 Dec 2016 19:39:19 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3`

```console
$ docker pull rethinkdb@sha256:ab81bd8c5d8514b416331a00da048f0c041787e0a3f0d93219e46db069d65a58
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75969234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4415cabf295ee238834d7daed0c545469d13d6ff18a80eea8fb620874a352fa4`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:28:01 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 14 Dec 2016 19:28:03 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 14 Dec 2016 19:28:04 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 14 Dec 2016 19:28:04 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Wed, 14 Dec 2016 19:28:18 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:28:18 GMT
VOLUME [/data]
# Wed, 14 Dec 2016 19:28:18 GMT
WORKDIR /data
# Wed, 14 Dec 2016 19:28:19 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 14 Dec 2016 19:28:19 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2d8dd0ca87de7ac211847e11d87dbf3c5aa70f6a72473fecfd3914693bef00`  
		Last Modified: Wed, 21 Dec 2016 19:35:48 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56239563bb31e2c7a24debf49821e00c702cbbc3e5431d22a8ee8fc016d966a`  
		Last Modified: Wed, 21 Dec 2016 19:35:48 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf0f28d27004ef85ee999ac44eef81cab6782fc9c3cd511674f16fae50809fc5`  
		Last Modified: Wed, 21 Dec 2016 19:39:27 GMT  
		Size: 24.6 MB (24604366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6ba2c166ad0376ac7194831abdc4915fc623f5021405d96bee9a9f3631bd92`  
		Last Modified: Wed, 21 Dec 2016 19:39:19 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2`

```console
$ docker pull rethinkdb@sha256:ab81bd8c5d8514b416331a00da048f0c041787e0a3f0d93219e46db069d65a58
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75969234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4415cabf295ee238834d7daed0c545469d13d6ff18a80eea8fb620874a352fa4`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:28:01 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 14 Dec 2016 19:28:03 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 14 Dec 2016 19:28:04 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 14 Dec 2016 19:28:04 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Wed, 14 Dec 2016 19:28:18 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:28:18 GMT
VOLUME [/data]
# Wed, 14 Dec 2016 19:28:18 GMT
WORKDIR /data
# Wed, 14 Dec 2016 19:28:19 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 14 Dec 2016 19:28:19 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2d8dd0ca87de7ac211847e11d87dbf3c5aa70f6a72473fecfd3914693bef00`  
		Last Modified: Wed, 21 Dec 2016 19:35:48 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56239563bb31e2c7a24debf49821e00c702cbbc3e5431d22a8ee8fc016d966a`  
		Last Modified: Wed, 21 Dec 2016 19:35:48 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf0f28d27004ef85ee999ac44eef81cab6782fc9c3cd511674f16fae50809fc5`  
		Last Modified: Wed, 21 Dec 2016 19:39:27 GMT  
		Size: 24.6 MB (24604366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6ba2c166ad0376ac7194831abdc4915fc623f5021405d96bee9a9f3631bd92`  
		Last Modified: Wed, 21 Dec 2016 19:39:19 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:latest`

```console
$ docker pull rethinkdb@sha256:ab81bd8c5d8514b416331a00da048f0c041787e0a3f0d93219e46db069d65a58
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75969234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4415cabf295ee238834d7daed0c545469d13d6ff18a80eea8fb620874a352fa4`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:28:01 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 14 Dec 2016 19:28:03 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 14 Dec 2016 19:28:04 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 14 Dec 2016 19:28:04 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Wed, 14 Dec 2016 19:28:18 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:28:18 GMT
VOLUME [/data]
# Wed, 14 Dec 2016 19:28:18 GMT
WORKDIR /data
# Wed, 14 Dec 2016 19:28:19 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 14 Dec 2016 19:28:19 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2d8dd0ca87de7ac211847e11d87dbf3c5aa70f6a72473fecfd3914693bef00`  
		Last Modified: Wed, 21 Dec 2016 19:35:48 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56239563bb31e2c7a24debf49821e00c702cbbc3e5431d22a8ee8fc016d966a`  
		Last Modified: Wed, 21 Dec 2016 19:35:48 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf0f28d27004ef85ee999ac44eef81cab6782fc9c3cd511674f16fae50809fc5`  
		Last Modified: Wed, 21 Dec 2016 19:39:27 GMT  
		Size: 24.6 MB (24604366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6ba2c166ad0376ac7194831abdc4915fc623f5021405d96bee9a9f3631bd92`  
		Last Modified: Wed, 21 Dec 2016 19:39:19 GMT  
		Size: 92.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
