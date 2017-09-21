<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mono`

-	[`mono:4`](#mono4)
-	[`mono:4.8`](#mono48)
-	[`mono:4.8.0`](#mono480)
-	[`mono:4.8.0.524`](#mono480524)
-	[`mono:5`](#mono5)
-	[`mono:5.0`](#mono50)
-	[`mono:5.0.1`](#mono501)
-	[`mono:5.0.1.1`](#mono5011)
-	[`mono:5.2`](#mono52)
-	[`mono:5.2.0`](#mono520)
-	[`mono:5.2.0.224`](#mono520224)
-	[`mono:5.2.0.224-slim`](#mono520224-slim)
-	[`mono:5.2.0-slim`](#mono520-slim)
-	[`mono:5.2-slim`](#mono52-slim)
-	[`mono:5-slim`](#mono5-slim)
-	[`mono:latest`](#monolatest)
-	[`mono:slim`](#monoslim)

## `mono:4`

```console
$ docker pull mono@sha256:e8f383cc5b2f372fc6bae99b68d606911842f294038fa8bc8757803dda8d1221
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4` - linux; amd64

```console
$ docker pull mono@sha256:d3f68290e9961bff6d8874d697424e77d77100b708dabef0b6f1a5ac5c66ffb9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153024253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79b2af545f897094c99726aca8787c7ae8e4beaeab610d849a6b5e5f88f8ccf0`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:42:15 GMT
ADD file:240ed8d95c0f51cf9dbb7c83f7a0af7e37ee15c7449b864e8770a65f3e771b86 in / 
# Wed, 13 Sep 2017 08:42:15 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 01:00:40 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 19 Sep 2017 01:00:40 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 19 Sep 2017 01:00:56 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 01:00:57 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 19 Sep 2017 01:02:05 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:48b042a4691b27483afd6b309d6dd2fc12f2c1d388409709b418094a3a4cdf54`  
		Last Modified: Thu, 07 Sep 2017 23:23:34 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ed76d57a5fbd8987366bd6fa962f9c0a72be5e0edcb54ad33bf59890c1c6a2`  
		Last Modified: Tue, 19 Sep 2017 01:04:55 GMT  
		Size: 7.8 MB (7756500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3e50d8966df2dfafb9cba5783e36dc07b6400b7763fa860dbf9b8e507a1822`  
		Last Modified: Tue, 19 Sep 2017 01:04:54 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7512701bbced6f521b30401d7ce6c35cfaf9576dcf1bc2ce1327ecf5d9ed76f0`  
		Last Modified: Tue, 19 Sep 2017 01:05:11 GMT  
		Size: 107.1 MB (107134721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4` - linux; arm variant v7

```console
$ docker pull mono@sha256:2d76c520c4ca22f016b0d19454295eebc06ec66cebbd5805885bade413a1e498
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138920141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:195958719f6acfab204fe46e651565b5a0a496a6a9a020ed753467e39fa12d01`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 13:01:57 GMT
ADD file:383f867e58ac7d7020c618a7428b47b8b1911785ac6ae78a6751fb7f55eeb5c2 in / 
# Tue, 25 Jul 2017 13:01:59 GMT
CMD ["bash"]
# Mon, 21 Aug 2017 18:59:42 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 21 Aug 2017 18:59:43 GMT
ENV MONO_VERSION=4.8.0.524
# Mon, 21 Aug 2017 19:09:41 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 21 Aug 2017 19:09:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 21 Aug 2017 22:17:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ada306cd59ed8be1f27f62bff2346a7c5647fef217a4b7fe851279c6c305e1f1`  
		Last Modified: Tue, 25 Jul 2017 13:16:28 GMT  
		Size: 35.7 MB (35656025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65fe06a51c537d8d8a580063324752ae832aaeadd86657a988aa5892d7b157a`  
		Last Modified: Tue, 22 Aug 2017 20:41:46 GMT  
		Size: 7.2 MB (7184515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01be4390708771b6c63e5050721f22fa19eacb3b8861db0c5ad0fba81868a6ef`  
		Last Modified: Tue, 22 Aug 2017 20:41:35 GMT  
		Size: 29.9 KB (29920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac2105eece8e1d64a887f8a1c2357ea6e64e62176b2d45c9ec7a1be186742fe`  
		Last Modified: Tue, 22 Aug 2017 20:42:53 GMT  
		Size: 96.0 MB (96049681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4` - linux; 386

```console
$ docker pull mono@sha256:ecfe02a03176620d67a57a5bd33d52d22533c7909932d3d9758967c7363f02fa
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153007233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84b13b149eed408ca6ebf5c6484710868571eb568a22417e14c9e17600db1721`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:20:48 GMT
ADD file:6e69a03d6dde108627b32e45abd197b90df267d161800ebec8416063a64aef06 in / 
# Fri, 08 Sep 2017 13:20:48 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 15:03:22 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 08 Sep 2017 15:03:22 GMT
ENV MONO_VERSION=4.8.0.524
# Fri, 08 Sep 2017 15:03:39 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 15:03:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 15:05:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:62bb183541ac6fc75244fe087faa7c427d0bc7cd70f749e3415bc6cb2e02638a`  
		Last Modified: Fri, 08 Sep 2017 13:29:31 GMT  
		Size: 37.4 MB (37433264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4b46b12d9c14c1a58efcf657bb1ece830e223d45b6f6b47426f7069fd3eb16`  
		Last Modified: Fri, 08 Sep 2017 15:15:48 GMT  
		Size: 9.6 MB (9606347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:def8499eb61ff5538eb97cd88a98aa2dbd2ccc9ee75b6c439d684048ef2d6199`  
		Last Modified: Fri, 08 Sep 2017 15:15:45 GMT  
		Size: 29.9 KB (29904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a0e076c959794a10fc9aff2ba5789e98b2fdae5738e7efb3b88c47a50fb26c`  
		Last Modified: Fri, 08 Sep 2017 15:16:18 GMT  
		Size: 105.9 MB (105937718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8`

```console
$ docker pull mono@sha256:e8f383cc5b2f372fc6bae99b68d606911842f294038fa8bc8757803dda8d1221
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8` - linux; amd64

```console
$ docker pull mono@sha256:d3f68290e9961bff6d8874d697424e77d77100b708dabef0b6f1a5ac5c66ffb9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153024253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79b2af545f897094c99726aca8787c7ae8e4beaeab610d849a6b5e5f88f8ccf0`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:42:15 GMT
ADD file:240ed8d95c0f51cf9dbb7c83f7a0af7e37ee15c7449b864e8770a65f3e771b86 in / 
# Wed, 13 Sep 2017 08:42:15 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 01:00:40 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 19 Sep 2017 01:00:40 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 19 Sep 2017 01:00:56 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 01:00:57 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 19 Sep 2017 01:02:05 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:48b042a4691b27483afd6b309d6dd2fc12f2c1d388409709b418094a3a4cdf54`  
		Last Modified: Thu, 07 Sep 2017 23:23:34 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ed76d57a5fbd8987366bd6fa962f9c0a72be5e0edcb54ad33bf59890c1c6a2`  
		Last Modified: Tue, 19 Sep 2017 01:04:55 GMT  
		Size: 7.8 MB (7756500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3e50d8966df2dfafb9cba5783e36dc07b6400b7763fa860dbf9b8e507a1822`  
		Last Modified: Tue, 19 Sep 2017 01:04:54 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7512701bbced6f521b30401d7ce6c35cfaf9576dcf1bc2ce1327ecf5d9ed76f0`  
		Last Modified: Tue, 19 Sep 2017 01:05:11 GMT  
		Size: 107.1 MB (107134721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8` - linux; arm variant v7

```console
$ docker pull mono@sha256:2d76c520c4ca22f016b0d19454295eebc06ec66cebbd5805885bade413a1e498
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138920141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:195958719f6acfab204fe46e651565b5a0a496a6a9a020ed753467e39fa12d01`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 13:01:57 GMT
ADD file:383f867e58ac7d7020c618a7428b47b8b1911785ac6ae78a6751fb7f55eeb5c2 in / 
# Tue, 25 Jul 2017 13:01:59 GMT
CMD ["bash"]
# Mon, 21 Aug 2017 18:59:42 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 21 Aug 2017 18:59:43 GMT
ENV MONO_VERSION=4.8.0.524
# Mon, 21 Aug 2017 19:09:41 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 21 Aug 2017 19:09:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 21 Aug 2017 22:17:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ada306cd59ed8be1f27f62bff2346a7c5647fef217a4b7fe851279c6c305e1f1`  
		Last Modified: Tue, 25 Jul 2017 13:16:28 GMT  
		Size: 35.7 MB (35656025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65fe06a51c537d8d8a580063324752ae832aaeadd86657a988aa5892d7b157a`  
		Last Modified: Tue, 22 Aug 2017 20:41:46 GMT  
		Size: 7.2 MB (7184515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01be4390708771b6c63e5050721f22fa19eacb3b8861db0c5ad0fba81868a6ef`  
		Last Modified: Tue, 22 Aug 2017 20:41:35 GMT  
		Size: 29.9 KB (29920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac2105eece8e1d64a887f8a1c2357ea6e64e62176b2d45c9ec7a1be186742fe`  
		Last Modified: Tue, 22 Aug 2017 20:42:53 GMT  
		Size: 96.0 MB (96049681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8` - linux; 386

```console
$ docker pull mono@sha256:ecfe02a03176620d67a57a5bd33d52d22533c7909932d3d9758967c7363f02fa
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153007233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84b13b149eed408ca6ebf5c6484710868571eb568a22417e14c9e17600db1721`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:20:48 GMT
ADD file:6e69a03d6dde108627b32e45abd197b90df267d161800ebec8416063a64aef06 in / 
# Fri, 08 Sep 2017 13:20:48 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 15:03:22 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 08 Sep 2017 15:03:22 GMT
ENV MONO_VERSION=4.8.0.524
# Fri, 08 Sep 2017 15:03:39 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 15:03:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 15:05:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:62bb183541ac6fc75244fe087faa7c427d0bc7cd70f749e3415bc6cb2e02638a`  
		Last Modified: Fri, 08 Sep 2017 13:29:31 GMT  
		Size: 37.4 MB (37433264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4b46b12d9c14c1a58efcf657bb1ece830e223d45b6f6b47426f7069fd3eb16`  
		Last Modified: Fri, 08 Sep 2017 15:15:48 GMT  
		Size: 9.6 MB (9606347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:def8499eb61ff5538eb97cd88a98aa2dbd2ccc9ee75b6c439d684048ef2d6199`  
		Last Modified: Fri, 08 Sep 2017 15:15:45 GMT  
		Size: 29.9 KB (29904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a0e076c959794a10fc9aff2ba5789e98b2fdae5738e7efb3b88c47a50fb26c`  
		Last Modified: Fri, 08 Sep 2017 15:16:18 GMT  
		Size: 105.9 MB (105937718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0`

```console
$ docker pull mono@sha256:e8f383cc5b2f372fc6bae99b68d606911842f294038fa8bc8757803dda8d1221
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8.0` - linux; amd64

```console
$ docker pull mono@sha256:d3f68290e9961bff6d8874d697424e77d77100b708dabef0b6f1a5ac5c66ffb9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153024253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79b2af545f897094c99726aca8787c7ae8e4beaeab610d849a6b5e5f88f8ccf0`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:42:15 GMT
ADD file:240ed8d95c0f51cf9dbb7c83f7a0af7e37ee15c7449b864e8770a65f3e771b86 in / 
# Wed, 13 Sep 2017 08:42:15 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 01:00:40 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 19 Sep 2017 01:00:40 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 19 Sep 2017 01:00:56 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 01:00:57 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 19 Sep 2017 01:02:05 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:48b042a4691b27483afd6b309d6dd2fc12f2c1d388409709b418094a3a4cdf54`  
		Last Modified: Thu, 07 Sep 2017 23:23:34 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ed76d57a5fbd8987366bd6fa962f9c0a72be5e0edcb54ad33bf59890c1c6a2`  
		Last Modified: Tue, 19 Sep 2017 01:04:55 GMT  
		Size: 7.8 MB (7756500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3e50d8966df2dfafb9cba5783e36dc07b6400b7763fa860dbf9b8e507a1822`  
		Last Modified: Tue, 19 Sep 2017 01:04:54 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7512701bbced6f521b30401d7ce6c35cfaf9576dcf1bc2ce1327ecf5d9ed76f0`  
		Last Modified: Tue, 19 Sep 2017 01:05:11 GMT  
		Size: 107.1 MB (107134721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0` - linux; arm variant v7

```console
$ docker pull mono@sha256:2d76c520c4ca22f016b0d19454295eebc06ec66cebbd5805885bade413a1e498
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138920141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:195958719f6acfab204fe46e651565b5a0a496a6a9a020ed753467e39fa12d01`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 13:01:57 GMT
ADD file:383f867e58ac7d7020c618a7428b47b8b1911785ac6ae78a6751fb7f55eeb5c2 in / 
# Tue, 25 Jul 2017 13:01:59 GMT
CMD ["bash"]
# Mon, 21 Aug 2017 18:59:42 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 21 Aug 2017 18:59:43 GMT
ENV MONO_VERSION=4.8.0.524
# Mon, 21 Aug 2017 19:09:41 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 21 Aug 2017 19:09:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 21 Aug 2017 22:17:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ada306cd59ed8be1f27f62bff2346a7c5647fef217a4b7fe851279c6c305e1f1`  
		Last Modified: Tue, 25 Jul 2017 13:16:28 GMT  
		Size: 35.7 MB (35656025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65fe06a51c537d8d8a580063324752ae832aaeadd86657a988aa5892d7b157a`  
		Last Modified: Tue, 22 Aug 2017 20:41:46 GMT  
		Size: 7.2 MB (7184515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01be4390708771b6c63e5050721f22fa19eacb3b8861db0c5ad0fba81868a6ef`  
		Last Modified: Tue, 22 Aug 2017 20:41:35 GMT  
		Size: 29.9 KB (29920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac2105eece8e1d64a887f8a1c2357ea6e64e62176b2d45c9ec7a1be186742fe`  
		Last Modified: Tue, 22 Aug 2017 20:42:53 GMT  
		Size: 96.0 MB (96049681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0` - linux; 386

```console
$ docker pull mono@sha256:ecfe02a03176620d67a57a5bd33d52d22533c7909932d3d9758967c7363f02fa
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153007233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84b13b149eed408ca6ebf5c6484710868571eb568a22417e14c9e17600db1721`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:20:48 GMT
ADD file:6e69a03d6dde108627b32e45abd197b90df267d161800ebec8416063a64aef06 in / 
# Fri, 08 Sep 2017 13:20:48 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 15:03:22 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 08 Sep 2017 15:03:22 GMT
ENV MONO_VERSION=4.8.0.524
# Fri, 08 Sep 2017 15:03:39 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 15:03:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 15:05:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:62bb183541ac6fc75244fe087faa7c427d0bc7cd70f749e3415bc6cb2e02638a`  
		Last Modified: Fri, 08 Sep 2017 13:29:31 GMT  
		Size: 37.4 MB (37433264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4b46b12d9c14c1a58efcf657bb1ece830e223d45b6f6b47426f7069fd3eb16`  
		Last Modified: Fri, 08 Sep 2017 15:15:48 GMT  
		Size: 9.6 MB (9606347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:def8499eb61ff5538eb97cd88a98aa2dbd2ccc9ee75b6c439d684048ef2d6199`  
		Last Modified: Fri, 08 Sep 2017 15:15:45 GMT  
		Size: 29.9 KB (29904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a0e076c959794a10fc9aff2ba5789e98b2fdae5738e7efb3b88c47a50fb26c`  
		Last Modified: Fri, 08 Sep 2017 15:16:18 GMT  
		Size: 105.9 MB (105937718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0.524`

```console
$ docker pull mono@sha256:e8f383cc5b2f372fc6bae99b68d606911842f294038fa8bc8757803dda8d1221
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8.0.524` - linux; amd64

```console
$ docker pull mono@sha256:d3f68290e9961bff6d8874d697424e77d77100b708dabef0b6f1a5ac5c66ffb9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153024253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79b2af545f897094c99726aca8787c7ae8e4beaeab610d849a6b5e5f88f8ccf0`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:42:15 GMT
ADD file:240ed8d95c0f51cf9dbb7c83f7a0af7e37ee15c7449b864e8770a65f3e771b86 in / 
# Wed, 13 Sep 2017 08:42:15 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 01:00:40 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 19 Sep 2017 01:00:40 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 19 Sep 2017 01:00:56 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 01:00:57 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 19 Sep 2017 01:02:05 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:48b042a4691b27483afd6b309d6dd2fc12f2c1d388409709b418094a3a4cdf54`  
		Last Modified: Thu, 07 Sep 2017 23:23:34 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ed76d57a5fbd8987366bd6fa962f9c0a72be5e0edcb54ad33bf59890c1c6a2`  
		Last Modified: Tue, 19 Sep 2017 01:04:55 GMT  
		Size: 7.8 MB (7756500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3e50d8966df2dfafb9cba5783e36dc07b6400b7763fa860dbf9b8e507a1822`  
		Last Modified: Tue, 19 Sep 2017 01:04:54 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7512701bbced6f521b30401d7ce6c35cfaf9576dcf1bc2ce1327ecf5d9ed76f0`  
		Last Modified: Tue, 19 Sep 2017 01:05:11 GMT  
		Size: 107.1 MB (107134721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0.524` - linux; arm variant v7

```console
$ docker pull mono@sha256:2d76c520c4ca22f016b0d19454295eebc06ec66cebbd5805885bade413a1e498
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138920141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:195958719f6acfab204fe46e651565b5a0a496a6a9a020ed753467e39fa12d01`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 25 Jul 2017 13:01:57 GMT
ADD file:383f867e58ac7d7020c618a7428b47b8b1911785ac6ae78a6751fb7f55eeb5c2 in / 
# Tue, 25 Jul 2017 13:01:59 GMT
CMD ["bash"]
# Mon, 21 Aug 2017 18:59:42 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 21 Aug 2017 18:59:43 GMT
ENV MONO_VERSION=4.8.0.524
# Mon, 21 Aug 2017 19:09:41 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 21 Aug 2017 19:09:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 21 Aug 2017 22:17:01 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:ada306cd59ed8be1f27f62bff2346a7c5647fef217a4b7fe851279c6c305e1f1`  
		Last Modified: Tue, 25 Jul 2017 13:16:28 GMT  
		Size: 35.7 MB (35656025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65fe06a51c537d8d8a580063324752ae832aaeadd86657a988aa5892d7b157a`  
		Last Modified: Tue, 22 Aug 2017 20:41:46 GMT  
		Size: 7.2 MB (7184515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01be4390708771b6c63e5050721f22fa19eacb3b8861db0c5ad0fba81868a6ef`  
		Last Modified: Tue, 22 Aug 2017 20:41:35 GMT  
		Size: 29.9 KB (29920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac2105eece8e1d64a887f8a1c2357ea6e64e62176b2d45c9ec7a1be186742fe`  
		Last Modified: Tue, 22 Aug 2017 20:42:53 GMT  
		Size: 96.0 MB (96049681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0.524` - linux; 386

```console
$ docker pull mono@sha256:ecfe02a03176620d67a57a5bd33d52d22533c7909932d3d9758967c7363f02fa
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153007233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84b13b149eed408ca6ebf5c6484710868571eb568a22417e14c9e17600db1721`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:20:48 GMT
ADD file:6e69a03d6dde108627b32e45abd197b90df267d161800ebec8416063a64aef06 in / 
# Fri, 08 Sep 2017 13:20:48 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 15:03:22 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 08 Sep 2017 15:03:22 GMT
ENV MONO_VERSION=4.8.0.524
# Fri, 08 Sep 2017 15:03:39 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 15:03:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 15:05:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:62bb183541ac6fc75244fe087faa7c427d0bc7cd70f749e3415bc6cb2e02638a`  
		Last Modified: Fri, 08 Sep 2017 13:29:31 GMT  
		Size: 37.4 MB (37433264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4b46b12d9c14c1a58efcf657bb1ece830e223d45b6f6b47426f7069fd3eb16`  
		Last Modified: Fri, 08 Sep 2017 15:15:48 GMT  
		Size: 9.6 MB (9606347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:def8499eb61ff5538eb97cd88a98aa2dbd2ccc9ee75b6c439d684048ef2d6199`  
		Last Modified: Fri, 08 Sep 2017 15:15:45 GMT  
		Size: 29.9 KB (29904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a0e076c959794a10fc9aff2ba5789e98b2fdae5738e7efb3b88c47a50fb26c`  
		Last Modified: Fri, 08 Sep 2017 15:16:18 GMT  
		Size: 105.9 MB (105937718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5`

```console
$ docker pull mono@sha256:5f633c0e67ed7140f4e539cb69872916a3ef394f27a7785fc65bad7249417f78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5` - linux; amd64

```console
$ docker pull mono@sha256:21b5fe8205cdb80c995ee7e7077ca14b132ea2ee30e925a8caf07b920f92b36e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.0 MB (167043261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a35e8c27ec7c293fb70e5d3188bb6083ef33003cd429d3fc9742edbb8e348751`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 00:34:24 GMT
ENV MONO_VERSION=5.2.0.224
# Thu, 21 Sep 2017 00:34:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 21 Sep 2017 00:35:06 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 21 Sep 2017 00:36:15 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a1596910ba1a7570cb42499fc4085f3d6e777577a754e22eb801e2a8872bed2`  
		Last Modified: Thu, 21 Sep 2017 00:36:33 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1ec38a76b29d53e7fe6a6796eb28aa54b5ab73992058b44608040202734ee8d`  
		Last Modified: Thu, 21 Sep 2017 00:36:38 GMT  
		Size: 27.2 MB (27240470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0e4031f3b22d1118efe22a49f62821a76e99b3ddb93feb812ecdad8f8151db`  
		Last Modified: Thu, 21 Sep 2017 00:37:26 GMT  
		Size: 109.7 MB (109687593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.0`

```console
$ docker pull mono@sha256:8e03b374ac5811f9d4990e162b2b339afdf4c9cd5093eba07e4efdd4e57cd5d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.0` - linux; amd64

```console
$ docker pull mono@sha256:895a17ab316bc6d9ea8109defbebc71574ecb249c95a6b8524770d1827a341f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.2 MB (164211931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c47402603bd04dba89e1af76a87d61590d6616651287a00a9713242f8683b6ac`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:57:30 GMT
ENV MONO_VERSION=5.0.1.1
# Tue, 19 Sep 2017 00:58:05 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:58:12 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 19 Sep 2017 01:00:24 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd48e85f9e2b071670908493a89409b10a29443f5f68d2f72589ee091ae858f7`  
		Last Modified: Tue, 19 Sep 2017 01:04:12 GMT  
		Size: 5.0 MB (5012346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eac37d781b31f0913be890dd3dd2eb933b74b6ab4d96507c8348775390a038e`  
		Last Modified: Tue, 19 Sep 2017 01:04:11 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a267c32db5daca005a3b82d654ab7fce544bd3fc67276254139a5ead31a6b1a8`  
		Last Modified: Tue, 19 Sep 2017 01:04:33 GMT  
		Size: 129.1 MB (129084386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.0` - linux; arm variant v7

```console
$ docker pull mono@sha256:750a07f72d02db7e418e07edb75f3c14b25ebead1bd5c808e20c19b1f155e05b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.1 MB (143128373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54284a69a142084ab24a5e849669707804dd040235e515e11ee8459f52aa8966`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:46 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Sat, 09 Sep 2017 01:40:47 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 06:06:51 GMT
ENV MONO_VERSION=5.0.1.1
# Tue, 19 Sep 2017 06:09:10 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 06:09:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 19 Sep 2017 06:28:24 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5ec7d30a9a8c4943b1650d24c5857d17b69f0e4bb62241d56894484ff9315547`  
		Last Modified: Sat, 09 Sep 2017 01:51:42 GMT  
		Size: 26.3 MB (26279463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9ebee89abb4b8df48d4d7d7af274b05e789cf54535f83e9c45cc8ceb4f6b26`  
		Last Modified: Tue, 19 Sep 2017 07:09:50 GMT  
		Size: 4.3 MB (4344423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542149d485d4d1ea3094dd66df4aa95407207c58219a8ae172359cbfcf735c56`  
		Last Modified: Tue, 19 Sep 2017 07:09:48 GMT  
		Size: 2.1 KB (2070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6950438162a68e461d4afed4fc05fea1a56003befc6543fa6eaefd74232d77d1`  
		Last Modified: Tue, 19 Sep 2017 07:10:54 GMT  
		Size: 112.5 MB (112502417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.0` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:819b1010bbab592af9c120de6346375bbe2b357f8c919ac3b5098ea56de2dda2
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.6 MB (157631943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00d6158b8e0b43b6b0c33fcf58b989110e01bbb7cc2fab7ce4b70248d1245713`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:24:21 GMT
ADD file:e941b26069cf288fadf2ab835d4f0c3a681f3f882d81686662d20f9642928795 in / 
# Fri, 08 Sep 2017 17:24:22 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 21:38:07 GMT
ENV MONO_VERSION=5.0.1.1
# Fri, 08 Sep 2017 21:38:58 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 21:39:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 21:48:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:01c8fcecd171557c0af8130e86fd47e393a2791dc2ea655cb5f4f0ed6b95ef51`  
		Last Modified: Fri, 08 Sep 2017 17:36:14 GMT  
		Size: 27.5 MB (27480389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc4494d0af88f8ae875ba7ce9b23aeaefca51c9c836adb02e2aa6f9d2caa5c1d`  
		Last Modified: Fri, 08 Sep 2017 21:59:48 GMT  
		Size: 4.5 MB (4504367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7009872ee5201a7fb5230f507975e25684424c7fe5fe1a59f39ebd208e11b350`  
		Last Modified: Fri, 08 Sep 2017 21:59:45 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e1c815ffac30487a0da7c7d84f542faa5c0cccb76fa1e4d83e62325563093a`  
		Last Modified: Fri, 08 Sep 2017 22:01:11 GMT  
		Size: 125.6 MB (125645123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.0` - linux; 386

```console
$ docker pull mono@sha256:8630e1ad8eb9f61846ac3d220883f4d0af71a60766cd20e457ede245ac0edd34
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166719618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7502ce2bd5973dca2e1b5e326df9a152852f45afd18eedca77448954841e9183`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:05 GMT
ADD file:cd8c8c04f635ce6e14de5271949afcf67b9c480ea35ba633423d385975e330ad in / 
# Fri, 08 Sep 2017 13:18:05 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 15:00:36 GMT
ENV MONO_VERSION=5.0.1.1
# Fri, 08 Sep 2017 15:01:14 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 15:01:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 15:03:19 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:60dc9bcedd31a278f8b25a98451958fb75022352fe550042039e16ce32422ecf`  
		Last Modified: Fri, 08 Sep 2017 13:23:15 GMT  
		Size: 30.3 MB (30264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b528578fc03834d74d71cf1a698eb7ec0865388e4d92d07392eef3781e6e528`  
		Last Modified: Fri, 08 Sep 2017 15:12:25 GMT  
		Size: 7.2 MB (7220126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcb857166ff45c35204de020682db19937e3dba9861f63e23ae521388c9fa8e1`  
		Last Modified: Fri, 08 Sep 2017 15:12:22 GMT  
		Size: 2.1 KB (2070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fdcd762b235a6b980c6dc15173783850a90d52c8bb77283cdab311c0e9c703a`  
		Last Modified: Fri, 08 Sep 2017 15:13:05 GMT  
		Size: 129.2 MB (129233256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.0.1`

```console
$ docker pull mono@sha256:8e03b374ac5811f9d4990e162b2b339afdf4c9cd5093eba07e4efdd4e57cd5d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.0.1` - linux; amd64

```console
$ docker pull mono@sha256:895a17ab316bc6d9ea8109defbebc71574ecb249c95a6b8524770d1827a341f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.2 MB (164211931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c47402603bd04dba89e1af76a87d61590d6616651287a00a9713242f8683b6ac`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:57:30 GMT
ENV MONO_VERSION=5.0.1.1
# Tue, 19 Sep 2017 00:58:05 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:58:12 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 19 Sep 2017 01:00:24 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd48e85f9e2b071670908493a89409b10a29443f5f68d2f72589ee091ae858f7`  
		Last Modified: Tue, 19 Sep 2017 01:04:12 GMT  
		Size: 5.0 MB (5012346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eac37d781b31f0913be890dd3dd2eb933b74b6ab4d96507c8348775390a038e`  
		Last Modified: Tue, 19 Sep 2017 01:04:11 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a267c32db5daca005a3b82d654ab7fce544bd3fc67276254139a5ead31a6b1a8`  
		Last Modified: Tue, 19 Sep 2017 01:04:33 GMT  
		Size: 129.1 MB (129084386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.0.1` - linux; arm variant v7

```console
$ docker pull mono@sha256:750a07f72d02db7e418e07edb75f3c14b25ebead1bd5c808e20c19b1f155e05b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.1 MB (143128373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54284a69a142084ab24a5e849669707804dd040235e515e11ee8459f52aa8966`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:46 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Sat, 09 Sep 2017 01:40:47 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 06:06:51 GMT
ENV MONO_VERSION=5.0.1.1
# Tue, 19 Sep 2017 06:09:10 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 06:09:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 19 Sep 2017 06:28:24 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5ec7d30a9a8c4943b1650d24c5857d17b69f0e4bb62241d56894484ff9315547`  
		Last Modified: Sat, 09 Sep 2017 01:51:42 GMT  
		Size: 26.3 MB (26279463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9ebee89abb4b8df48d4d7d7af274b05e789cf54535f83e9c45cc8ceb4f6b26`  
		Last Modified: Tue, 19 Sep 2017 07:09:50 GMT  
		Size: 4.3 MB (4344423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542149d485d4d1ea3094dd66df4aa95407207c58219a8ae172359cbfcf735c56`  
		Last Modified: Tue, 19 Sep 2017 07:09:48 GMT  
		Size: 2.1 KB (2070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6950438162a68e461d4afed4fc05fea1a56003befc6543fa6eaefd74232d77d1`  
		Last Modified: Tue, 19 Sep 2017 07:10:54 GMT  
		Size: 112.5 MB (112502417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.0.1` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:819b1010bbab592af9c120de6346375bbe2b357f8c919ac3b5098ea56de2dda2
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.6 MB (157631943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00d6158b8e0b43b6b0c33fcf58b989110e01bbb7cc2fab7ce4b70248d1245713`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:24:21 GMT
ADD file:e941b26069cf288fadf2ab835d4f0c3a681f3f882d81686662d20f9642928795 in / 
# Fri, 08 Sep 2017 17:24:22 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 21:38:07 GMT
ENV MONO_VERSION=5.0.1.1
# Fri, 08 Sep 2017 21:38:58 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 21:39:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 21:48:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:01c8fcecd171557c0af8130e86fd47e393a2791dc2ea655cb5f4f0ed6b95ef51`  
		Last Modified: Fri, 08 Sep 2017 17:36:14 GMT  
		Size: 27.5 MB (27480389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc4494d0af88f8ae875ba7ce9b23aeaefca51c9c836adb02e2aa6f9d2caa5c1d`  
		Last Modified: Fri, 08 Sep 2017 21:59:48 GMT  
		Size: 4.5 MB (4504367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7009872ee5201a7fb5230f507975e25684424c7fe5fe1a59f39ebd208e11b350`  
		Last Modified: Fri, 08 Sep 2017 21:59:45 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e1c815ffac30487a0da7c7d84f542faa5c0cccb76fa1e4d83e62325563093a`  
		Last Modified: Fri, 08 Sep 2017 22:01:11 GMT  
		Size: 125.6 MB (125645123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.0.1` - linux; 386

```console
$ docker pull mono@sha256:8630e1ad8eb9f61846ac3d220883f4d0af71a60766cd20e457ede245ac0edd34
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166719618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7502ce2bd5973dca2e1b5e326df9a152852f45afd18eedca77448954841e9183`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:05 GMT
ADD file:cd8c8c04f635ce6e14de5271949afcf67b9c480ea35ba633423d385975e330ad in / 
# Fri, 08 Sep 2017 13:18:05 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 15:00:36 GMT
ENV MONO_VERSION=5.0.1.1
# Fri, 08 Sep 2017 15:01:14 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 15:01:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 15:03:19 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:60dc9bcedd31a278f8b25a98451958fb75022352fe550042039e16ce32422ecf`  
		Last Modified: Fri, 08 Sep 2017 13:23:15 GMT  
		Size: 30.3 MB (30264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b528578fc03834d74d71cf1a698eb7ec0865388e4d92d07392eef3781e6e528`  
		Last Modified: Fri, 08 Sep 2017 15:12:25 GMT  
		Size: 7.2 MB (7220126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcb857166ff45c35204de020682db19937e3dba9861f63e23ae521388c9fa8e1`  
		Last Modified: Fri, 08 Sep 2017 15:12:22 GMT  
		Size: 2.1 KB (2070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fdcd762b235a6b980c6dc15173783850a90d52c8bb77283cdab311c0e9c703a`  
		Last Modified: Fri, 08 Sep 2017 15:13:05 GMT  
		Size: 129.2 MB (129233256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.0.1.1`

```console
$ docker pull mono@sha256:8e03b374ac5811f9d4990e162b2b339afdf4c9cd5093eba07e4efdd4e57cd5d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.0.1.1` - linux; amd64

```console
$ docker pull mono@sha256:895a17ab316bc6d9ea8109defbebc71574ecb249c95a6b8524770d1827a341f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.2 MB (164211931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c47402603bd04dba89e1af76a87d61590d6616651287a00a9713242f8683b6ac`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:57:30 GMT
ENV MONO_VERSION=5.0.1.1
# Tue, 19 Sep 2017 00:58:05 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:58:12 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 19 Sep 2017 01:00:24 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd48e85f9e2b071670908493a89409b10a29443f5f68d2f72589ee091ae858f7`  
		Last Modified: Tue, 19 Sep 2017 01:04:12 GMT  
		Size: 5.0 MB (5012346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eac37d781b31f0913be890dd3dd2eb933b74b6ab4d96507c8348775390a038e`  
		Last Modified: Tue, 19 Sep 2017 01:04:11 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a267c32db5daca005a3b82d654ab7fce544bd3fc67276254139a5ead31a6b1a8`  
		Last Modified: Tue, 19 Sep 2017 01:04:33 GMT  
		Size: 129.1 MB (129084386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.0.1.1` - linux; arm variant v7

```console
$ docker pull mono@sha256:750a07f72d02db7e418e07edb75f3c14b25ebead1bd5c808e20c19b1f155e05b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.1 MB (143128373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54284a69a142084ab24a5e849669707804dd040235e515e11ee8459f52aa8966`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:46 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Sat, 09 Sep 2017 01:40:47 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 06:06:51 GMT
ENV MONO_VERSION=5.0.1.1
# Tue, 19 Sep 2017 06:09:10 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 06:09:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 19 Sep 2017 06:28:24 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5ec7d30a9a8c4943b1650d24c5857d17b69f0e4bb62241d56894484ff9315547`  
		Last Modified: Sat, 09 Sep 2017 01:51:42 GMT  
		Size: 26.3 MB (26279463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9ebee89abb4b8df48d4d7d7af274b05e789cf54535f83e9c45cc8ceb4f6b26`  
		Last Modified: Tue, 19 Sep 2017 07:09:50 GMT  
		Size: 4.3 MB (4344423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542149d485d4d1ea3094dd66df4aa95407207c58219a8ae172359cbfcf735c56`  
		Last Modified: Tue, 19 Sep 2017 07:09:48 GMT  
		Size: 2.1 KB (2070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6950438162a68e461d4afed4fc05fea1a56003befc6543fa6eaefd74232d77d1`  
		Last Modified: Tue, 19 Sep 2017 07:10:54 GMT  
		Size: 112.5 MB (112502417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.0.1.1` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:819b1010bbab592af9c120de6346375bbe2b357f8c919ac3b5098ea56de2dda2
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.6 MB (157631943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00d6158b8e0b43b6b0c33fcf58b989110e01bbb7cc2fab7ce4b70248d1245713`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:24:21 GMT
ADD file:e941b26069cf288fadf2ab835d4f0c3a681f3f882d81686662d20f9642928795 in / 
# Fri, 08 Sep 2017 17:24:22 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 21:38:07 GMT
ENV MONO_VERSION=5.0.1.1
# Fri, 08 Sep 2017 21:38:58 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 21:39:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 21:48:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:01c8fcecd171557c0af8130e86fd47e393a2791dc2ea655cb5f4f0ed6b95ef51`  
		Last Modified: Fri, 08 Sep 2017 17:36:14 GMT  
		Size: 27.5 MB (27480389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc4494d0af88f8ae875ba7ce9b23aeaefca51c9c836adb02e2aa6f9d2caa5c1d`  
		Last Modified: Fri, 08 Sep 2017 21:59:48 GMT  
		Size: 4.5 MB (4504367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7009872ee5201a7fb5230f507975e25684424c7fe5fe1a59f39ebd208e11b350`  
		Last Modified: Fri, 08 Sep 2017 21:59:45 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e1c815ffac30487a0da7c7d84f542faa5c0cccb76fa1e4d83e62325563093a`  
		Last Modified: Fri, 08 Sep 2017 22:01:11 GMT  
		Size: 125.6 MB (125645123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.0.1.1` - linux; 386

```console
$ docker pull mono@sha256:8630e1ad8eb9f61846ac3d220883f4d0af71a60766cd20e457ede245ac0edd34
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166719618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7502ce2bd5973dca2e1b5e326df9a152852f45afd18eedca77448954841e9183`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:05 GMT
ADD file:cd8c8c04f635ce6e14de5271949afcf67b9c480ea35ba633423d385975e330ad in / 
# Fri, 08 Sep 2017 13:18:05 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 15:00:36 GMT
ENV MONO_VERSION=5.0.1.1
# Fri, 08 Sep 2017 15:01:14 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 15:01:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 15:03:19 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:60dc9bcedd31a278f8b25a98451958fb75022352fe550042039e16ce32422ecf`  
		Last Modified: Fri, 08 Sep 2017 13:23:15 GMT  
		Size: 30.3 MB (30264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b528578fc03834d74d71cf1a698eb7ec0865388e4d92d07392eef3781e6e528`  
		Last Modified: Fri, 08 Sep 2017 15:12:25 GMT  
		Size: 7.2 MB (7220126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcb857166ff45c35204de020682db19937e3dba9861f63e23ae521388c9fa8e1`  
		Last Modified: Fri, 08 Sep 2017 15:12:22 GMT  
		Size: 2.1 KB (2070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fdcd762b235a6b980c6dc15173783850a90d52c8bb77283cdab311c0e9c703a`  
		Last Modified: Fri, 08 Sep 2017 15:13:05 GMT  
		Size: 129.2 MB (129233256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.2`

```console
$ docker pull mono@sha256:5f633c0e67ed7140f4e539cb69872916a3ef394f27a7785fc65bad7249417f78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.2` - linux; amd64

```console
$ docker pull mono@sha256:21b5fe8205cdb80c995ee7e7077ca14b132ea2ee30e925a8caf07b920f92b36e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.0 MB (167043261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a35e8c27ec7c293fb70e5d3188bb6083ef33003cd429d3fc9742edbb8e348751`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 00:34:24 GMT
ENV MONO_VERSION=5.2.0.224
# Thu, 21 Sep 2017 00:34:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 21 Sep 2017 00:35:06 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 21 Sep 2017 00:36:15 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a1596910ba1a7570cb42499fc4085f3d6e777577a754e22eb801e2a8872bed2`  
		Last Modified: Thu, 21 Sep 2017 00:36:33 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1ec38a76b29d53e7fe6a6796eb28aa54b5ab73992058b44608040202734ee8d`  
		Last Modified: Thu, 21 Sep 2017 00:36:38 GMT  
		Size: 27.2 MB (27240470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0e4031f3b22d1118efe22a49f62821a76e99b3ddb93feb812ecdad8f8151db`  
		Last Modified: Thu, 21 Sep 2017 00:37:26 GMT  
		Size: 109.7 MB (109687593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.2.0`

```console
$ docker pull mono@sha256:5f633c0e67ed7140f4e539cb69872916a3ef394f27a7785fc65bad7249417f78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.2.0` - linux; amd64

```console
$ docker pull mono@sha256:21b5fe8205cdb80c995ee7e7077ca14b132ea2ee30e925a8caf07b920f92b36e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.0 MB (167043261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a35e8c27ec7c293fb70e5d3188bb6083ef33003cd429d3fc9742edbb8e348751`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 00:34:24 GMT
ENV MONO_VERSION=5.2.0.224
# Thu, 21 Sep 2017 00:34:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 21 Sep 2017 00:35:06 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 21 Sep 2017 00:36:15 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a1596910ba1a7570cb42499fc4085f3d6e777577a754e22eb801e2a8872bed2`  
		Last Modified: Thu, 21 Sep 2017 00:36:33 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1ec38a76b29d53e7fe6a6796eb28aa54b5ab73992058b44608040202734ee8d`  
		Last Modified: Thu, 21 Sep 2017 00:36:38 GMT  
		Size: 27.2 MB (27240470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0e4031f3b22d1118efe22a49f62821a76e99b3ddb93feb812ecdad8f8151db`  
		Last Modified: Thu, 21 Sep 2017 00:37:26 GMT  
		Size: 109.7 MB (109687593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.2.0.224`

```console
$ docker pull mono@sha256:5f633c0e67ed7140f4e539cb69872916a3ef394f27a7785fc65bad7249417f78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.2.0.224` - linux; amd64

```console
$ docker pull mono@sha256:21b5fe8205cdb80c995ee7e7077ca14b132ea2ee30e925a8caf07b920f92b36e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.0 MB (167043261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a35e8c27ec7c293fb70e5d3188bb6083ef33003cd429d3fc9742edbb8e348751`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 00:34:24 GMT
ENV MONO_VERSION=5.2.0.224
# Thu, 21 Sep 2017 00:34:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 21 Sep 2017 00:35:06 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 21 Sep 2017 00:36:15 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a1596910ba1a7570cb42499fc4085f3d6e777577a754e22eb801e2a8872bed2`  
		Last Modified: Thu, 21 Sep 2017 00:36:33 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1ec38a76b29d53e7fe6a6796eb28aa54b5ab73992058b44608040202734ee8d`  
		Last Modified: Thu, 21 Sep 2017 00:36:38 GMT  
		Size: 27.2 MB (27240470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0e4031f3b22d1118efe22a49f62821a76e99b3ddb93feb812ecdad8f8151db`  
		Last Modified: Thu, 21 Sep 2017 00:37:26 GMT  
		Size: 109.7 MB (109687593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.2.0.224-slim`

```console
$ docker pull mono@sha256:f5eb474edaf76e88448fe560918311f46a18698292e41bcc3d850d6dece07859
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.2.0.224-slim` - linux; amd64

```console
$ docker pull mono@sha256:8c656e76dd6da950ee0023a440cba59fdd0334c113e7ce42324cb3a6863d94da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57355668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cc434c6491a380726ad5226c8aaa362a788461ffb25cb50f181a23f1cce1525`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 00:34:24 GMT
ENV MONO_VERSION=5.2.0.224
# Thu, 21 Sep 2017 00:34:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 21 Sep 2017 00:35:06 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a1596910ba1a7570cb42499fc4085f3d6e777577a754e22eb801e2a8872bed2`  
		Last Modified: Thu, 21 Sep 2017 00:36:33 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1ec38a76b29d53e7fe6a6796eb28aa54b5ab73992058b44608040202734ee8d`  
		Last Modified: Thu, 21 Sep 2017 00:36:38 GMT  
		Size: 27.2 MB (27240470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.2.0-slim`

```console
$ docker pull mono@sha256:f5eb474edaf76e88448fe560918311f46a18698292e41bcc3d850d6dece07859
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.2.0-slim` - linux; amd64

```console
$ docker pull mono@sha256:8c656e76dd6da950ee0023a440cba59fdd0334c113e7ce42324cb3a6863d94da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57355668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cc434c6491a380726ad5226c8aaa362a788461ffb25cb50f181a23f1cce1525`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 00:34:24 GMT
ENV MONO_VERSION=5.2.0.224
# Thu, 21 Sep 2017 00:34:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 21 Sep 2017 00:35:06 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a1596910ba1a7570cb42499fc4085f3d6e777577a754e22eb801e2a8872bed2`  
		Last Modified: Thu, 21 Sep 2017 00:36:33 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1ec38a76b29d53e7fe6a6796eb28aa54b5ab73992058b44608040202734ee8d`  
		Last Modified: Thu, 21 Sep 2017 00:36:38 GMT  
		Size: 27.2 MB (27240470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.2-slim`

```console
$ docker pull mono@sha256:f5eb474edaf76e88448fe560918311f46a18698292e41bcc3d850d6dece07859
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5.2-slim` - linux; amd64

```console
$ docker pull mono@sha256:8c656e76dd6da950ee0023a440cba59fdd0334c113e7ce42324cb3a6863d94da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57355668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cc434c6491a380726ad5226c8aaa362a788461ffb25cb50f181a23f1cce1525`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 00:34:24 GMT
ENV MONO_VERSION=5.2.0.224
# Thu, 21 Sep 2017 00:34:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 21 Sep 2017 00:35:06 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a1596910ba1a7570cb42499fc4085f3d6e777577a754e22eb801e2a8872bed2`  
		Last Modified: Thu, 21 Sep 2017 00:36:33 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1ec38a76b29d53e7fe6a6796eb28aa54b5ab73992058b44608040202734ee8d`  
		Last Modified: Thu, 21 Sep 2017 00:36:38 GMT  
		Size: 27.2 MB (27240470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5-slim`

```console
$ docker pull mono@sha256:f5eb474edaf76e88448fe560918311f46a18698292e41bcc3d850d6dece07859
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:5-slim` - linux; amd64

```console
$ docker pull mono@sha256:8c656e76dd6da950ee0023a440cba59fdd0334c113e7ce42324cb3a6863d94da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57355668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cc434c6491a380726ad5226c8aaa362a788461ffb25cb50f181a23f1cce1525`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 00:34:24 GMT
ENV MONO_VERSION=5.2.0.224
# Thu, 21 Sep 2017 00:34:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 21 Sep 2017 00:35:06 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a1596910ba1a7570cb42499fc4085f3d6e777577a754e22eb801e2a8872bed2`  
		Last Modified: Thu, 21 Sep 2017 00:36:33 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1ec38a76b29d53e7fe6a6796eb28aa54b5ab73992058b44608040202734ee8d`  
		Last Modified: Thu, 21 Sep 2017 00:36:38 GMT  
		Size: 27.2 MB (27240470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:latest`

```console
$ docker pull mono@sha256:5f633c0e67ed7140f4e539cb69872916a3ef394f27a7785fc65bad7249417f78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:latest` - linux; amd64

```console
$ docker pull mono@sha256:21b5fe8205cdb80c995ee7e7077ca14b132ea2ee30e925a8caf07b920f92b36e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.0 MB (167043261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a35e8c27ec7c293fb70e5d3188bb6083ef33003cd429d3fc9742edbb8e348751`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 00:34:24 GMT
ENV MONO_VERSION=5.2.0.224
# Thu, 21 Sep 2017 00:34:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 21 Sep 2017 00:35:06 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 21 Sep 2017 00:36:15 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a1596910ba1a7570cb42499fc4085f3d6e777577a754e22eb801e2a8872bed2`  
		Last Modified: Thu, 21 Sep 2017 00:36:33 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1ec38a76b29d53e7fe6a6796eb28aa54b5ab73992058b44608040202734ee8d`  
		Last Modified: Thu, 21 Sep 2017 00:36:38 GMT  
		Size: 27.2 MB (27240470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0e4031f3b22d1118efe22a49f62821a76e99b3ddb93feb812ecdad8f8151db`  
		Last Modified: Thu, 21 Sep 2017 00:37:26 GMT  
		Size: 109.7 MB (109687593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:slim`

```console
$ docker pull mono@sha256:f5eb474edaf76e88448fe560918311f46a18698292e41bcc3d850d6dece07859
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mono:slim` - linux; amd64

```console
$ docker pull mono@sha256:8c656e76dd6da950ee0023a440cba59fdd0334c113e7ce42324cb3a6863d94da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57355668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cc434c6491a380726ad5226c8aaa362a788461ffb25cb50f181a23f1cce1525`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 00:34:24 GMT
ENV MONO_VERSION=5.2.0.224
# Thu, 21 Sep 2017 00:34:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 21 Sep 2017 00:35:06 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a1596910ba1a7570cb42499fc4085f3d6e777577a754e22eb801e2a8872bed2`  
		Last Modified: Thu, 21 Sep 2017 00:36:33 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1ec38a76b29d53e7fe6a6796eb28aa54b5ab73992058b44608040202734ee8d`  
		Last Modified: Thu, 21 Sep 2017 00:36:38 GMT  
		Size: 27.2 MB (27240470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
