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
$ docker pull rethinkdb@sha256:45ec30652b20f297413ab006bc2269e071d70f740033af55a1e3800a9d2a56fa
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.0.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80655681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:074a3bee120648f064caae392734cc4147a0b85574326627a72cce6782c3c83e`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:08:10 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 09 Nov 2016 01:08:12 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 09 Nov 2016 01:08:13 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 09 Nov 2016 01:09:32 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.0.4~0jessie
# Wed, 09 Nov 2016 01:09:46 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:09:46 GMT
VOLUME [/data]
# Wed, 09 Nov 2016 01:09:47 GMT
WORKDIR /data
# Wed, 09 Nov 2016 01:09:47 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 09 Nov 2016 01:09:48 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0ce168200d1f2b683ae06b95054485d80f68b684b65af53ea5ff250661288a`  
		Last Modified: Wed, 09 Nov 2016 01:08:41 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:445819b58189c634db5a0690719b0f3abd1374dc7cb9690675dd54916fdb310d`  
		Last Modified: Wed, 09 Nov 2016 01:08:42 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9f660a817a1fa52d9154305bf5997a5ee73ba4f018ede84b6214ff7e2e66cf`  
		Last Modified: Wed, 09 Nov 2016 01:10:08 GMT  
		Size: 29.3 MB (29296953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff05e4673fb7313ba5d6f7b1da820efb625ae46085cf9f309b2e7f1bd1410c8`  
		Last Modified: Wed, 09 Nov 2016 01:09:59 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.0`

```console
$ docker pull rethinkdb@sha256:45ec30652b20f297413ab006bc2269e071d70f740033af55a1e3800a9d2a56fa
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80655681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:074a3bee120648f064caae392734cc4147a0b85574326627a72cce6782c3c83e`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:08:10 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 09 Nov 2016 01:08:12 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 09 Nov 2016 01:08:13 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 09 Nov 2016 01:09:32 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.0.4~0jessie
# Wed, 09 Nov 2016 01:09:46 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:09:46 GMT
VOLUME [/data]
# Wed, 09 Nov 2016 01:09:47 GMT
WORKDIR /data
# Wed, 09 Nov 2016 01:09:47 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 09 Nov 2016 01:09:48 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0ce168200d1f2b683ae06b95054485d80f68b684b65af53ea5ff250661288a`  
		Last Modified: Wed, 09 Nov 2016 01:08:41 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:445819b58189c634db5a0690719b0f3abd1374dc7cb9690675dd54916fdb310d`  
		Last Modified: Wed, 09 Nov 2016 01:08:42 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9f660a817a1fa52d9154305bf5997a5ee73ba4f018ede84b6214ff7e2e66cf`  
		Last Modified: Wed, 09 Nov 2016 01:10:08 GMT  
		Size: 29.3 MB (29296953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff05e4673fb7313ba5d6f7b1da820efb625ae46085cf9f309b2e7f1bd1410c8`  
		Last Modified: Wed, 09 Nov 2016 01:09:59 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.1.6`

```console
$ docker pull rethinkdb@sha256:fe6bee0f3d9616972ad42526632f4a7086271ccc24a27cf911c8e8f8d4294be7
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.1.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.3 MB (75277646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a18816303379ae90e7c46e22865de20d3895456ac9e344dc754af9649c9fc88`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:08:10 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 09 Nov 2016 01:08:12 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 09 Nov 2016 01:08:13 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 09 Nov 2016 01:10:30 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.1.6+1~0jessie
# Wed, 09 Nov 2016 01:10:43 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:10:44 GMT
VOLUME [/data]
# Wed, 09 Nov 2016 01:10:44 GMT
WORKDIR /data
# Wed, 09 Nov 2016 01:10:45 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 09 Nov 2016 01:10:45 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0ce168200d1f2b683ae06b95054485d80f68b684b65af53ea5ff250661288a`  
		Last Modified: Wed, 09 Nov 2016 01:08:41 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:445819b58189c634db5a0690719b0f3abd1374dc7cb9690675dd54916fdb310d`  
		Last Modified: Wed, 09 Nov 2016 01:08:42 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313432bbc408b5ec3f1a4e8fc1ef02e0310c6748f7de1a25929b28bd5d8cc568`  
		Last Modified: Wed, 09 Nov 2016 01:11:03 GMT  
		Size: 23.9 MB (23918918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b36690f7409243ac31b3629250ead428ab9fb98111c0da0382b4c69365851f`  
		Last Modified: Wed, 09 Nov 2016 01:10:56 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.1`

```console
$ docker pull rethinkdb@sha256:fe6bee0f3d9616972ad42526632f4a7086271ccc24a27cf911c8e8f8d4294be7
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.3 MB (75277646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a18816303379ae90e7c46e22865de20d3895456ac9e344dc754af9649c9fc88`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:08:10 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 09 Nov 2016 01:08:12 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 09 Nov 2016 01:08:13 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 09 Nov 2016 01:10:30 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.1.6+1~0jessie
# Wed, 09 Nov 2016 01:10:43 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:10:44 GMT
VOLUME [/data]
# Wed, 09 Nov 2016 01:10:44 GMT
WORKDIR /data
# Wed, 09 Nov 2016 01:10:45 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 09 Nov 2016 01:10:45 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0ce168200d1f2b683ae06b95054485d80f68b684b65af53ea5ff250661288a`  
		Last Modified: Wed, 09 Nov 2016 01:08:41 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:445819b58189c634db5a0690719b0f3abd1374dc7cb9690675dd54916fdb310d`  
		Last Modified: Wed, 09 Nov 2016 01:08:42 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313432bbc408b5ec3f1a4e8fc1ef02e0310c6748f7de1a25929b28bd5d8cc568`  
		Last Modified: Wed, 09 Nov 2016 01:11:03 GMT  
		Size: 23.9 MB (23918918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b36690f7409243ac31b3629250ead428ab9fb98111c0da0382b4c69365851f`  
		Last Modified: Wed, 09 Nov 2016 01:10:56 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.2.6`

```console
$ docker pull rethinkdb@sha256:07f68bad0b270220a198594fd499eee7eb8dd5ec427b57d9f980650cfae5cc20
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.2.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.5 MB (75458975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fafb66683f94dd8cb5f7fe486a3917f9261622fde08fabd142941cf76bfd5ec1`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:08:10 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 09 Nov 2016 01:08:12 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 09 Nov 2016 01:08:13 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 09 Nov 2016 01:11:23 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.2.6~0jessie
# Wed, 09 Nov 2016 01:11:38 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:11:38 GMT
VOLUME [/data]
# Wed, 09 Nov 2016 01:11:39 GMT
WORKDIR /data
# Wed, 09 Nov 2016 01:11:39 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 09 Nov 2016 01:11:39 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0ce168200d1f2b683ae06b95054485d80f68b684b65af53ea5ff250661288a`  
		Last Modified: Wed, 09 Nov 2016 01:08:41 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:445819b58189c634db5a0690719b0f3abd1374dc7cb9690675dd54916fdb310d`  
		Last Modified: Wed, 09 Nov 2016 01:08:42 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f4bf54e0efc315f7f4eb09b6877a63b545e3009432f3a4996c74d5f348ec57`  
		Last Modified: Wed, 09 Nov 2016 01:11:57 GMT  
		Size: 24.1 MB (24100247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ea32ce4add4a49109fd4d5b01b6bdfabbe1b6b870f0c27bc11a3629a5910b8`  
		Last Modified: Wed, 09 Nov 2016 01:11:51 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.2`

```console
$ docker pull rethinkdb@sha256:07f68bad0b270220a198594fd499eee7eb8dd5ec427b57d9f980650cfae5cc20
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.5 MB (75458975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fafb66683f94dd8cb5f7fe486a3917f9261622fde08fabd142941cf76bfd5ec1`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:08:10 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 09 Nov 2016 01:08:12 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 09 Nov 2016 01:08:13 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 09 Nov 2016 01:11:23 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.2.6~0jessie
# Wed, 09 Nov 2016 01:11:38 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:11:38 GMT
VOLUME [/data]
# Wed, 09 Nov 2016 01:11:39 GMT
WORKDIR /data
# Wed, 09 Nov 2016 01:11:39 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 09 Nov 2016 01:11:39 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0ce168200d1f2b683ae06b95054485d80f68b684b65af53ea5ff250661288a`  
		Last Modified: Wed, 09 Nov 2016 01:08:41 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:445819b58189c634db5a0690719b0f3abd1374dc7cb9690675dd54916fdb310d`  
		Last Modified: Wed, 09 Nov 2016 01:08:42 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f4bf54e0efc315f7f4eb09b6877a63b545e3009432f3a4996c74d5f348ec57`  
		Last Modified: Wed, 09 Nov 2016 01:11:57 GMT  
		Size: 24.1 MB (24100247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ea32ce4add4a49109fd4d5b01b6bdfabbe1b6b870f0c27bc11a3629a5910b8`  
		Last Modified: Wed, 09 Nov 2016 01:11:51 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3.4`

```console
$ docker pull rethinkdb@sha256:5189349db765a5caff75477b9c06b5aa04cd54306c7556bb9bbb080b82bb6fcc
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75958280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b69a920f62700303ab985033446baa9161c3b1b0697bd1b16c9995f3b8027b3`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:08:10 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 09 Nov 2016 01:08:12 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 09 Nov 2016 01:08:13 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 09 Nov 2016 01:12:18 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.4~0jessie
# Wed, 09 Nov 2016 01:12:32 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:12:32 GMT
VOLUME [/data]
# Wed, 09 Nov 2016 01:12:33 GMT
WORKDIR /data
# Wed, 09 Nov 2016 01:12:33 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 09 Nov 2016 01:12:34 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0ce168200d1f2b683ae06b95054485d80f68b684b65af53ea5ff250661288a`  
		Last Modified: Wed, 09 Nov 2016 01:08:41 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:445819b58189c634db5a0690719b0f3abd1374dc7cb9690675dd54916fdb310d`  
		Last Modified: Wed, 09 Nov 2016 01:08:42 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcfeab1a84ab9d594f24902abe27d777cef77da151e9cb4f2f0e19cc773fb77e`  
		Last Modified: Wed, 09 Nov 2016 01:12:52 GMT  
		Size: 24.6 MB (24599552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342743987a62491cf7c2b818436def20a8832ddef3ebf2f0db39384c204bdcab`  
		Last Modified: Wed, 09 Nov 2016 01:12:46 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3.5`

```console
$ docker pull rethinkdb@sha256:2a5a37f7a3334f4301d8cfc1df97bfbddabb0b8435ec33b3df1d18a8b8ad0b60
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75962487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28ed6f59cec279e9aa082fb954aa974728da01dccedf69104156e3940c1fb015`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:08:10 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 09 Nov 2016 01:08:12 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 09 Nov 2016 01:08:13 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 09 Nov 2016 01:08:13 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Wed, 09 Nov 2016 01:08:28 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:08:28 GMT
VOLUME [/data]
# Wed, 09 Nov 2016 01:08:28 GMT
WORKDIR /data
# Wed, 09 Nov 2016 01:08:29 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 09 Nov 2016 01:08:29 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0ce168200d1f2b683ae06b95054485d80f68b684b65af53ea5ff250661288a`  
		Last Modified: Wed, 09 Nov 2016 01:08:41 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:445819b58189c634db5a0690719b0f3abd1374dc7cb9690675dd54916fdb310d`  
		Last Modified: Wed, 09 Nov 2016 01:08:42 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57bfe95bd9b5b91e15e39c909eb32a5137d3913311567d687d0fdc6ce239783`  
		Last Modified: Wed, 09 Nov 2016 01:08:47 GMT  
		Size: 24.6 MB (24603759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29409880b303eebc6d1f69f6ab6da439bf146e96126d4a3217284bb9a252c594`  
		Last Modified: Wed, 09 Nov 2016 01:08:41 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2.3`

```console
$ docker pull rethinkdb@sha256:2a5a37f7a3334f4301d8cfc1df97bfbddabb0b8435ec33b3df1d18a8b8ad0b60
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75962487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28ed6f59cec279e9aa082fb954aa974728da01dccedf69104156e3940c1fb015`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:08:10 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 09 Nov 2016 01:08:12 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 09 Nov 2016 01:08:13 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 09 Nov 2016 01:08:13 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Wed, 09 Nov 2016 01:08:28 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:08:28 GMT
VOLUME [/data]
# Wed, 09 Nov 2016 01:08:28 GMT
WORKDIR /data
# Wed, 09 Nov 2016 01:08:29 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 09 Nov 2016 01:08:29 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0ce168200d1f2b683ae06b95054485d80f68b684b65af53ea5ff250661288a`  
		Last Modified: Wed, 09 Nov 2016 01:08:41 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:445819b58189c634db5a0690719b0f3abd1374dc7cb9690675dd54916fdb310d`  
		Last Modified: Wed, 09 Nov 2016 01:08:42 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57bfe95bd9b5b91e15e39c909eb32a5137d3913311567d687d0fdc6ce239783`  
		Last Modified: Wed, 09 Nov 2016 01:08:47 GMT  
		Size: 24.6 MB (24603759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29409880b303eebc6d1f69f6ab6da439bf146e96126d4a3217284bb9a252c594`  
		Last Modified: Wed, 09 Nov 2016 01:08:41 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:2`

```console
$ docker pull rethinkdb@sha256:2a5a37f7a3334f4301d8cfc1df97bfbddabb0b8435ec33b3df1d18a8b8ad0b60
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75962487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28ed6f59cec279e9aa082fb954aa974728da01dccedf69104156e3940c1fb015`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:08:10 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 09 Nov 2016 01:08:12 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 09 Nov 2016 01:08:13 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 09 Nov 2016 01:08:13 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Wed, 09 Nov 2016 01:08:28 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:08:28 GMT
VOLUME [/data]
# Wed, 09 Nov 2016 01:08:28 GMT
WORKDIR /data
# Wed, 09 Nov 2016 01:08:29 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 09 Nov 2016 01:08:29 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0ce168200d1f2b683ae06b95054485d80f68b684b65af53ea5ff250661288a`  
		Last Modified: Wed, 09 Nov 2016 01:08:41 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:445819b58189c634db5a0690719b0f3abd1374dc7cb9690675dd54916fdb310d`  
		Last Modified: Wed, 09 Nov 2016 01:08:42 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57bfe95bd9b5b91e15e39c909eb32a5137d3913311567d687d0fdc6ce239783`  
		Last Modified: Wed, 09 Nov 2016 01:08:47 GMT  
		Size: 24.6 MB (24603759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29409880b303eebc6d1f69f6ab6da439bf146e96126d4a3217284bb9a252c594`  
		Last Modified: Wed, 09 Nov 2016 01:08:41 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rethinkdb:latest`

```console
$ docker pull rethinkdb@sha256:2a5a37f7a3334f4301d8cfc1df97bfbddabb0b8435ec33b3df1d18a8b8ad0b60
```

-	Platforms:
	-	linux; amd64

### `rethinkdb:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75962487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28ed6f59cec279e9aa082fb954aa974728da01dccedf69104156e3940c1fb015`
-	Default Command: `["rethinkdb","--bind","all"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 01:08:10 GMT
MAINTAINER Daniel Alan Miller <dalanmiller@rethinkdb.com>
# Wed, 09 Nov 2016 01:08:12 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 1614552E5765227AEC39EFCFA7E00EF33A8F2399
# Wed, 09 Nov 2016 01:08:13 GMT
RUN echo "deb http://download.rethinkdb.com/apt jessie main" > /etc/apt/sources.list.d/rethinkdb.list
# Wed, 09 Nov 2016 01:08:13 GMT
ENV RETHINKDB_PACKAGE_VERSION=2.3.5~0jessie
# Wed, 09 Nov 2016 01:08:28 GMT
RUN apt-get update 	&& apt-get install -y rethinkdb=$RETHINKDB_PACKAGE_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:08:28 GMT
VOLUME [/data]
# Wed, 09 Nov 2016 01:08:28 GMT
WORKDIR /data
# Wed, 09 Nov 2016 01:08:29 GMT
CMD ["rethinkdb" "--bind" "all"]
# Wed, 09 Nov 2016 01:08:29 GMT
EXPOSE 28015/tcp 29015/tcp 8080/tcp
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0ce168200d1f2b683ae06b95054485d80f68b684b65af53ea5ff250661288a`  
		Last Modified: Wed, 09 Nov 2016 01:08:41 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:445819b58189c634db5a0690719b0f3abd1374dc7cb9690675dd54916fdb310d`  
		Last Modified: Wed, 09 Nov 2016 01:08:42 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57bfe95bd9b5b91e15e39c909eb32a5137d3913311567d687d0fdc6ce239783`  
		Last Modified: Wed, 09 Nov 2016 01:08:47 GMT  
		Size: 24.6 MB (24603759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29409880b303eebc6d1f69f6ab6da439bf146e96126d4a3217284bb9a252c594`  
		Last Modified: Wed, 09 Nov 2016 01:08:41 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
