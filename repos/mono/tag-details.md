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
$ docker pull mono@sha256:9c7ed1fcea0286c63129cbc0b6623fe787ccad84394dd2e971dab55699094438
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5` - linux; amd64

```console
$ docker pull mono@sha256:85418563842c443b2a76fefe7313b97f76b41bd27a867c816246e2650c7e44ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.0 MB (167041813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f02b86b92cd59bf80fd90888204cf57e60722a0066149d7c8c0ede3687490325`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:56:16 GMT
ENV MONO_VERSION=5.2.0.215
# Tue, 19 Sep 2017 00:56:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 19 Sep 2017 00:57:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Sep 2017 01:03:27 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb401839c656aca137e79a90a17705a7eb5c0a97eafe20074eec0b3273e1dc3f`  
		Last Modified: Tue, 19 Sep 2017 01:03:37 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e11b1cfd586adb3805e1ecf2a0a52c008069552f775ccb6fab1aef5f86f6e95`  
		Last Modified: Tue, 19 Sep 2017 01:03:43 GMT  
		Size: 27.2 MB (27240505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425accfb7f8fe9395733145b7bf822575cf7efe5238ccd3e07ccaddc191afae5`  
		Last Modified: Tue, 19 Sep 2017 01:05:58 GMT  
		Size: 109.7 MB (109686105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; arm variant v7

```console
$ docker pull mono@sha256:7b30cd9999bd6ccdcc222a0e00a82c5bd051fbbb03fd92e39715697777fdbcdf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.9 MB (145903251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:265947c7539066ad6106c94a003529f5338ff6ca54761ab9f49f435c8d811222`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:46 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Sat, 09 Sep 2017 01:40:47 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 05:49:45 GMT
ENV MONO_VERSION=5.2.0.215
# Tue, 19 Sep 2017 05:50:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 19 Sep 2017 06:06:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Sep 2017 07:07:44 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5ec7d30a9a8c4943b1650d24c5857d17b69f0e4bb62241d56894484ff9315547`  
		Last Modified: Sat, 09 Sep 2017 01:51:42 GMT  
		Size: 26.3 MB (26279463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891200f3d3e7d995b4231de8b6d233191c66445194e7c6ff1f8ae9e0b6ce57cd`  
		Last Modified: Tue, 19 Sep 2017 07:08:48 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4259c958ab0adbb9807178995543b82b2247ad0bd3a3c50c80fb48b0b1365f6`  
		Last Modified: Tue, 19 Sep 2017 07:09:01 GMT  
		Size: 21.1 MB (21085705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927d457281b9a97cf7d657365322b8b81a11665eab44f9fb778c143bdf39b014`  
		Last Modified: Tue, 19 Sep 2017 07:12:26 GMT  
		Size: 98.5 MB (98536015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:c66cb460bd80ea896ce2033717aaa2637af44bc024ecc5ca99535c6181c02c0e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.5 MB (160488661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:803f978922ec733b276b827e01ac1b968dc50e61255fc1aa675f6de4498a435c`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:24:21 GMT
ADD file:e941b26069cf288fadf2ab835d4f0c3a681f3f882d81686662d20f9642928795 in / 
# Fri, 08 Sep 2017 17:24:22 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 21:36:14 GMT
ENV MONO_VERSION=5.2.0.215
# Fri, 08 Sep 2017 21:36:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 21:38:00 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 08 Sep 2017 21:57:07 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:01c8fcecd171557c0af8130e86fd47e393a2791dc2ea655cb5f4f0ed6b95ef51`  
		Last Modified: Fri, 08 Sep 2017 17:36:14 GMT  
		Size: 27.5 MB (27480389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba25909a569941f571a4d7a8476b98f797f5985e5d5d3c2d4d51833f7d4be57`  
		Last Modified: Fri, 08 Sep 2017 21:57:32 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d88b9da28f7d692e1b6ef4b73d23901156b68d0f299e5c39476ac06221eff2`  
		Last Modified: Fri, 08 Sep 2017 21:57:45 GMT  
		Size: 25.2 MB (25220231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e709a0d3e3ce778bad5004c45914becc348bad7a2248ccc033f364881b338302`  
		Last Modified: Fri, 08 Sep 2017 21:58:25 GMT  
		Size: 107.8 MB (107785976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; 386

```console
$ docker pull mono@sha256:7600f29450588abc55360c785bf9192b7e361e37d6656652e1e8996f9eedc002
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.4 MB (169437931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b21562c286248adf684456ac1309a6589aa887e7c45884daf126a01b97fa46d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:05 GMT
ADD file:cd8c8c04f635ce6e14de5271949afcf67b9c480ea35ba633423d385975e330ad in / 
# Fri, 08 Sep 2017 13:18:05 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 14:59:21 GMT
ENV MONO_VERSION=5.2.0.215
# Fri, 08 Sep 2017 14:59:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 15:00:33 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 08 Sep 2017 15:10:00 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:60dc9bcedd31a278f8b25a98451958fb75022352fe550042039e16ce32422ecf`  
		Last Modified: Fri, 08 Sep 2017 13:23:15 GMT  
		Size: 30.3 MB (30264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325b9bac4dce8f564f62f1e3679087d1017b8a1519d6cc9697fdf1f8d3a07b8a`  
		Last Modified: Fri, 08 Sep 2017 15:11:12 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf1c078a2bda3af6881583c84ffd48e8ccb2e90708fb2e1e067fe68a9542127`  
		Last Modified: Fri, 08 Sep 2017 15:11:23 GMT  
		Size: 29.0 MB (29021118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856fcfadb75d8447fa682ea2070bc78d832248250f1456ba5d2a8edbf8d44d82`  
		Last Modified: Fri, 08 Sep 2017 15:11:30 GMT  
		Size: 110.2 MB (110150581 bytes)  
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
$ docker pull mono@sha256:9c7ed1fcea0286c63129cbc0b6623fe787ccad84394dd2e971dab55699094438
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.2` - linux; amd64

```console
$ docker pull mono@sha256:85418563842c443b2a76fefe7313b97f76b41bd27a867c816246e2650c7e44ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.0 MB (167041813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f02b86b92cd59bf80fd90888204cf57e60722a0066149d7c8c0ede3687490325`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:56:16 GMT
ENV MONO_VERSION=5.2.0.215
# Tue, 19 Sep 2017 00:56:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 19 Sep 2017 00:57:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Sep 2017 01:03:27 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb401839c656aca137e79a90a17705a7eb5c0a97eafe20074eec0b3273e1dc3f`  
		Last Modified: Tue, 19 Sep 2017 01:03:37 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e11b1cfd586adb3805e1ecf2a0a52c008069552f775ccb6fab1aef5f86f6e95`  
		Last Modified: Tue, 19 Sep 2017 01:03:43 GMT  
		Size: 27.2 MB (27240505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425accfb7f8fe9395733145b7bf822575cf7efe5238ccd3e07ccaddc191afae5`  
		Last Modified: Tue, 19 Sep 2017 01:05:58 GMT  
		Size: 109.7 MB (109686105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2` - linux; arm variant v7

```console
$ docker pull mono@sha256:7b30cd9999bd6ccdcc222a0e00a82c5bd051fbbb03fd92e39715697777fdbcdf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.9 MB (145903251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:265947c7539066ad6106c94a003529f5338ff6ca54761ab9f49f435c8d811222`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:46 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Sat, 09 Sep 2017 01:40:47 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 05:49:45 GMT
ENV MONO_VERSION=5.2.0.215
# Tue, 19 Sep 2017 05:50:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 19 Sep 2017 06:06:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Sep 2017 07:07:44 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5ec7d30a9a8c4943b1650d24c5857d17b69f0e4bb62241d56894484ff9315547`  
		Last Modified: Sat, 09 Sep 2017 01:51:42 GMT  
		Size: 26.3 MB (26279463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891200f3d3e7d995b4231de8b6d233191c66445194e7c6ff1f8ae9e0b6ce57cd`  
		Last Modified: Tue, 19 Sep 2017 07:08:48 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4259c958ab0adbb9807178995543b82b2247ad0bd3a3c50c80fb48b0b1365f6`  
		Last Modified: Tue, 19 Sep 2017 07:09:01 GMT  
		Size: 21.1 MB (21085705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927d457281b9a97cf7d657365322b8b81a11665eab44f9fb778c143bdf39b014`  
		Last Modified: Tue, 19 Sep 2017 07:12:26 GMT  
		Size: 98.5 MB (98536015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:c66cb460bd80ea896ce2033717aaa2637af44bc024ecc5ca99535c6181c02c0e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.5 MB (160488661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:803f978922ec733b276b827e01ac1b968dc50e61255fc1aa675f6de4498a435c`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:24:21 GMT
ADD file:e941b26069cf288fadf2ab835d4f0c3a681f3f882d81686662d20f9642928795 in / 
# Fri, 08 Sep 2017 17:24:22 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 21:36:14 GMT
ENV MONO_VERSION=5.2.0.215
# Fri, 08 Sep 2017 21:36:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 21:38:00 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 08 Sep 2017 21:57:07 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:01c8fcecd171557c0af8130e86fd47e393a2791dc2ea655cb5f4f0ed6b95ef51`  
		Last Modified: Fri, 08 Sep 2017 17:36:14 GMT  
		Size: 27.5 MB (27480389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba25909a569941f571a4d7a8476b98f797f5985e5d5d3c2d4d51833f7d4be57`  
		Last Modified: Fri, 08 Sep 2017 21:57:32 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d88b9da28f7d692e1b6ef4b73d23901156b68d0f299e5c39476ac06221eff2`  
		Last Modified: Fri, 08 Sep 2017 21:57:45 GMT  
		Size: 25.2 MB (25220231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e709a0d3e3ce778bad5004c45914becc348bad7a2248ccc033f364881b338302`  
		Last Modified: Fri, 08 Sep 2017 21:58:25 GMT  
		Size: 107.8 MB (107785976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2` - linux; 386

```console
$ docker pull mono@sha256:7600f29450588abc55360c785bf9192b7e361e37d6656652e1e8996f9eedc002
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.4 MB (169437931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b21562c286248adf684456ac1309a6589aa887e7c45884daf126a01b97fa46d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:05 GMT
ADD file:cd8c8c04f635ce6e14de5271949afcf67b9c480ea35ba633423d385975e330ad in / 
# Fri, 08 Sep 2017 13:18:05 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 14:59:21 GMT
ENV MONO_VERSION=5.2.0.215
# Fri, 08 Sep 2017 14:59:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 15:00:33 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 08 Sep 2017 15:10:00 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:60dc9bcedd31a278f8b25a98451958fb75022352fe550042039e16ce32422ecf`  
		Last Modified: Fri, 08 Sep 2017 13:23:15 GMT  
		Size: 30.3 MB (30264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325b9bac4dce8f564f62f1e3679087d1017b8a1519d6cc9697fdf1f8d3a07b8a`  
		Last Modified: Fri, 08 Sep 2017 15:11:12 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf1c078a2bda3af6881583c84ffd48e8ccb2e90708fb2e1e067fe68a9542127`  
		Last Modified: Fri, 08 Sep 2017 15:11:23 GMT  
		Size: 29.0 MB (29021118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856fcfadb75d8447fa682ea2070bc78d832248250f1456ba5d2a8edbf8d44d82`  
		Last Modified: Fri, 08 Sep 2017 15:11:30 GMT  
		Size: 110.2 MB (110150581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.2.0`

```console
$ docker pull mono@sha256:9c7ed1fcea0286c63129cbc0b6623fe787ccad84394dd2e971dab55699094438
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.2.0` - linux; amd64

```console
$ docker pull mono@sha256:85418563842c443b2a76fefe7313b97f76b41bd27a867c816246e2650c7e44ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.0 MB (167041813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f02b86b92cd59bf80fd90888204cf57e60722a0066149d7c8c0ede3687490325`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:56:16 GMT
ENV MONO_VERSION=5.2.0.215
# Tue, 19 Sep 2017 00:56:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 19 Sep 2017 00:57:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Sep 2017 01:03:27 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb401839c656aca137e79a90a17705a7eb5c0a97eafe20074eec0b3273e1dc3f`  
		Last Modified: Tue, 19 Sep 2017 01:03:37 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e11b1cfd586adb3805e1ecf2a0a52c008069552f775ccb6fab1aef5f86f6e95`  
		Last Modified: Tue, 19 Sep 2017 01:03:43 GMT  
		Size: 27.2 MB (27240505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425accfb7f8fe9395733145b7bf822575cf7efe5238ccd3e07ccaddc191afae5`  
		Last Modified: Tue, 19 Sep 2017 01:05:58 GMT  
		Size: 109.7 MB (109686105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2.0` - linux; arm variant v7

```console
$ docker pull mono@sha256:7b30cd9999bd6ccdcc222a0e00a82c5bd051fbbb03fd92e39715697777fdbcdf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.9 MB (145903251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:265947c7539066ad6106c94a003529f5338ff6ca54761ab9f49f435c8d811222`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:46 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Sat, 09 Sep 2017 01:40:47 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 05:49:45 GMT
ENV MONO_VERSION=5.2.0.215
# Tue, 19 Sep 2017 05:50:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 19 Sep 2017 06:06:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Sep 2017 07:07:44 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5ec7d30a9a8c4943b1650d24c5857d17b69f0e4bb62241d56894484ff9315547`  
		Last Modified: Sat, 09 Sep 2017 01:51:42 GMT  
		Size: 26.3 MB (26279463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891200f3d3e7d995b4231de8b6d233191c66445194e7c6ff1f8ae9e0b6ce57cd`  
		Last Modified: Tue, 19 Sep 2017 07:08:48 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4259c958ab0adbb9807178995543b82b2247ad0bd3a3c50c80fb48b0b1365f6`  
		Last Modified: Tue, 19 Sep 2017 07:09:01 GMT  
		Size: 21.1 MB (21085705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927d457281b9a97cf7d657365322b8b81a11665eab44f9fb778c143bdf39b014`  
		Last Modified: Tue, 19 Sep 2017 07:12:26 GMT  
		Size: 98.5 MB (98536015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2.0` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:c66cb460bd80ea896ce2033717aaa2637af44bc024ecc5ca99535c6181c02c0e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.5 MB (160488661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:803f978922ec733b276b827e01ac1b968dc50e61255fc1aa675f6de4498a435c`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:24:21 GMT
ADD file:e941b26069cf288fadf2ab835d4f0c3a681f3f882d81686662d20f9642928795 in / 
# Fri, 08 Sep 2017 17:24:22 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 21:36:14 GMT
ENV MONO_VERSION=5.2.0.215
# Fri, 08 Sep 2017 21:36:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 21:38:00 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 08 Sep 2017 21:57:07 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:01c8fcecd171557c0af8130e86fd47e393a2791dc2ea655cb5f4f0ed6b95ef51`  
		Last Modified: Fri, 08 Sep 2017 17:36:14 GMT  
		Size: 27.5 MB (27480389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba25909a569941f571a4d7a8476b98f797f5985e5d5d3c2d4d51833f7d4be57`  
		Last Modified: Fri, 08 Sep 2017 21:57:32 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d88b9da28f7d692e1b6ef4b73d23901156b68d0f299e5c39476ac06221eff2`  
		Last Modified: Fri, 08 Sep 2017 21:57:45 GMT  
		Size: 25.2 MB (25220231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e709a0d3e3ce778bad5004c45914becc348bad7a2248ccc033f364881b338302`  
		Last Modified: Fri, 08 Sep 2017 21:58:25 GMT  
		Size: 107.8 MB (107785976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2.0` - linux; 386

```console
$ docker pull mono@sha256:7600f29450588abc55360c785bf9192b7e361e37d6656652e1e8996f9eedc002
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.4 MB (169437931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b21562c286248adf684456ac1309a6589aa887e7c45884daf126a01b97fa46d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:05 GMT
ADD file:cd8c8c04f635ce6e14de5271949afcf67b9c480ea35ba633423d385975e330ad in / 
# Fri, 08 Sep 2017 13:18:05 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 14:59:21 GMT
ENV MONO_VERSION=5.2.0.215
# Fri, 08 Sep 2017 14:59:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 15:00:33 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 08 Sep 2017 15:10:00 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:60dc9bcedd31a278f8b25a98451958fb75022352fe550042039e16ce32422ecf`  
		Last Modified: Fri, 08 Sep 2017 13:23:15 GMT  
		Size: 30.3 MB (30264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325b9bac4dce8f564f62f1e3679087d1017b8a1519d6cc9697fdf1f8d3a07b8a`  
		Last Modified: Fri, 08 Sep 2017 15:11:12 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf1c078a2bda3af6881583c84ffd48e8ccb2e90708fb2e1e067fe68a9542127`  
		Last Modified: Fri, 08 Sep 2017 15:11:23 GMT  
		Size: 29.0 MB (29021118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856fcfadb75d8447fa682ea2070bc78d832248250f1456ba5d2a8edbf8d44d82`  
		Last Modified: Fri, 08 Sep 2017 15:11:30 GMT  
		Size: 110.2 MB (110150581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.2.0.224`

**does not exist** (yet?)

## `mono:5.2.0.224-slim`

**does not exist** (yet?)

## `mono:5.2.0-slim`

```console
$ docker pull mono@sha256:132f93538f0e8841e7104c97f2eed465393f6aba157a0f7a2e234e768bf18415
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.2.0-slim` - linux; amd64

```console
$ docker pull mono@sha256:ec2c4e364488e3683ac33b1646a368de0d5e5391003a3b8dd0b3a3ad5e959127
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57355708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3183f1822da893ed1669956b0b6a1c103bf2b2678be8d2376e811db32b38e59`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:56:16 GMT
ENV MONO_VERSION=5.2.0.215
# Tue, 19 Sep 2017 00:56:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 19 Sep 2017 00:57:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb401839c656aca137e79a90a17705a7eb5c0a97eafe20074eec0b3273e1dc3f`  
		Last Modified: Tue, 19 Sep 2017 01:03:37 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e11b1cfd586adb3805e1ecf2a0a52c008069552f775ccb6fab1aef5f86f6e95`  
		Last Modified: Tue, 19 Sep 2017 01:03:43 GMT  
		Size: 27.2 MB (27240505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2.0-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:c2a175f339cdefc3f564111618925a781bf3e80ad0be5a4237029c4d248e84f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.4 MB (47367236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7727e0e0c9a112b375d13415f2924cfe9ece6720719383399ed7be6942bc1c74`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:46 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Sat, 09 Sep 2017 01:40:47 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 05:49:45 GMT
ENV MONO_VERSION=5.2.0.215
# Tue, 19 Sep 2017 05:50:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 19 Sep 2017 06:06:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5ec7d30a9a8c4943b1650d24c5857d17b69f0e4bb62241d56894484ff9315547`  
		Last Modified: Sat, 09 Sep 2017 01:51:42 GMT  
		Size: 26.3 MB (26279463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891200f3d3e7d995b4231de8b6d233191c66445194e7c6ff1f8ae9e0b6ce57cd`  
		Last Modified: Tue, 19 Sep 2017 07:08:48 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4259c958ab0adbb9807178995543b82b2247ad0bd3a3c50c80fb48b0b1365f6`  
		Last Modified: Tue, 19 Sep 2017 07:09:01 GMT  
		Size: 21.1 MB (21085705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2.0-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:07bde0662fe8e219a5ffc3cbc8639c1e91f50f8e9440a1d4cbe129bf09dfe507
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52702685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31f0b21bb4602ebd3fec639ece8f9f0c60aee3fb0fb747f8a204e7a1c55df41f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:24:21 GMT
ADD file:e941b26069cf288fadf2ab835d4f0c3a681f3f882d81686662d20f9642928795 in / 
# Fri, 08 Sep 2017 17:24:22 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 21:36:14 GMT
ENV MONO_VERSION=5.2.0.215
# Fri, 08 Sep 2017 21:36:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 21:38:00 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:01c8fcecd171557c0af8130e86fd47e393a2791dc2ea655cb5f4f0ed6b95ef51`  
		Last Modified: Fri, 08 Sep 2017 17:36:14 GMT  
		Size: 27.5 MB (27480389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba25909a569941f571a4d7a8476b98f797f5985e5d5d3c2d4d51833f7d4be57`  
		Last Modified: Fri, 08 Sep 2017 21:57:32 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d88b9da28f7d692e1b6ef4b73d23901156b68d0f299e5c39476ac06221eff2`  
		Last Modified: Fri, 08 Sep 2017 21:57:45 GMT  
		Size: 25.2 MB (25220231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2.0-slim` - linux; 386

```console
$ docker pull mono@sha256:08609af96127a10c78bdbeb52ee200ca0c36c0df7a9e18675c02dde7fdbbaf17
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.3 MB (59287350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31db445013577c0fbcebc88247b31748133037829e916e437c663a7893a62435`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:05 GMT
ADD file:cd8c8c04f635ce6e14de5271949afcf67b9c480ea35ba633423d385975e330ad in / 
# Fri, 08 Sep 2017 13:18:05 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 14:59:21 GMT
ENV MONO_VERSION=5.2.0.215
# Fri, 08 Sep 2017 14:59:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 15:00:33 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:60dc9bcedd31a278f8b25a98451958fb75022352fe550042039e16ce32422ecf`  
		Last Modified: Fri, 08 Sep 2017 13:23:15 GMT  
		Size: 30.3 MB (30264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325b9bac4dce8f564f62f1e3679087d1017b8a1519d6cc9697fdf1f8d3a07b8a`  
		Last Modified: Fri, 08 Sep 2017 15:11:12 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf1c078a2bda3af6881583c84ffd48e8ccb2e90708fb2e1e067fe68a9542127`  
		Last Modified: Fri, 08 Sep 2017 15:11:23 GMT  
		Size: 29.0 MB (29021118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.2-slim`

```console
$ docker pull mono@sha256:132f93538f0e8841e7104c97f2eed465393f6aba157a0f7a2e234e768bf18415
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.2-slim` - linux; amd64

```console
$ docker pull mono@sha256:ec2c4e364488e3683ac33b1646a368de0d5e5391003a3b8dd0b3a3ad5e959127
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57355708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3183f1822da893ed1669956b0b6a1c103bf2b2678be8d2376e811db32b38e59`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:56:16 GMT
ENV MONO_VERSION=5.2.0.215
# Tue, 19 Sep 2017 00:56:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 19 Sep 2017 00:57:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb401839c656aca137e79a90a17705a7eb5c0a97eafe20074eec0b3273e1dc3f`  
		Last Modified: Tue, 19 Sep 2017 01:03:37 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e11b1cfd586adb3805e1ecf2a0a52c008069552f775ccb6fab1aef5f86f6e95`  
		Last Modified: Tue, 19 Sep 2017 01:03:43 GMT  
		Size: 27.2 MB (27240505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:c2a175f339cdefc3f564111618925a781bf3e80ad0be5a4237029c4d248e84f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.4 MB (47367236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7727e0e0c9a112b375d13415f2924cfe9ece6720719383399ed7be6942bc1c74`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:46 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Sat, 09 Sep 2017 01:40:47 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 05:49:45 GMT
ENV MONO_VERSION=5.2.0.215
# Tue, 19 Sep 2017 05:50:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 19 Sep 2017 06:06:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5ec7d30a9a8c4943b1650d24c5857d17b69f0e4bb62241d56894484ff9315547`  
		Last Modified: Sat, 09 Sep 2017 01:51:42 GMT  
		Size: 26.3 MB (26279463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891200f3d3e7d995b4231de8b6d233191c66445194e7c6ff1f8ae9e0b6ce57cd`  
		Last Modified: Tue, 19 Sep 2017 07:08:48 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4259c958ab0adbb9807178995543b82b2247ad0bd3a3c50c80fb48b0b1365f6`  
		Last Modified: Tue, 19 Sep 2017 07:09:01 GMT  
		Size: 21.1 MB (21085705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:07bde0662fe8e219a5ffc3cbc8639c1e91f50f8e9440a1d4cbe129bf09dfe507
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52702685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31f0b21bb4602ebd3fec639ece8f9f0c60aee3fb0fb747f8a204e7a1c55df41f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:24:21 GMT
ADD file:e941b26069cf288fadf2ab835d4f0c3a681f3f882d81686662d20f9642928795 in / 
# Fri, 08 Sep 2017 17:24:22 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 21:36:14 GMT
ENV MONO_VERSION=5.2.0.215
# Fri, 08 Sep 2017 21:36:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 21:38:00 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:01c8fcecd171557c0af8130e86fd47e393a2791dc2ea655cb5f4f0ed6b95ef51`  
		Last Modified: Fri, 08 Sep 2017 17:36:14 GMT  
		Size: 27.5 MB (27480389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba25909a569941f571a4d7a8476b98f797f5985e5d5d3c2d4d51833f7d4be57`  
		Last Modified: Fri, 08 Sep 2017 21:57:32 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d88b9da28f7d692e1b6ef4b73d23901156b68d0f299e5c39476ac06221eff2`  
		Last Modified: Fri, 08 Sep 2017 21:57:45 GMT  
		Size: 25.2 MB (25220231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2-slim` - linux; 386

```console
$ docker pull mono@sha256:08609af96127a10c78bdbeb52ee200ca0c36c0df7a9e18675c02dde7fdbbaf17
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.3 MB (59287350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31db445013577c0fbcebc88247b31748133037829e916e437c663a7893a62435`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:05 GMT
ADD file:cd8c8c04f635ce6e14de5271949afcf67b9c480ea35ba633423d385975e330ad in / 
# Fri, 08 Sep 2017 13:18:05 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 14:59:21 GMT
ENV MONO_VERSION=5.2.0.215
# Fri, 08 Sep 2017 14:59:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 15:00:33 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:60dc9bcedd31a278f8b25a98451958fb75022352fe550042039e16ce32422ecf`  
		Last Modified: Fri, 08 Sep 2017 13:23:15 GMT  
		Size: 30.3 MB (30264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325b9bac4dce8f564f62f1e3679087d1017b8a1519d6cc9697fdf1f8d3a07b8a`  
		Last Modified: Fri, 08 Sep 2017 15:11:12 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf1c078a2bda3af6881583c84ffd48e8ccb2e90708fb2e1e067fe68a9542127`  
		Last Modified: Fri, 08 Sep 2017 15:11:23 GMT  
		Size: 29.0 MB (29021118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5-slim`

```console
$ docker pull mono@sha256:132f93538f0e8841e7104c97f2eed465393f6aba157a0f7a2e234e768bf18415
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5-slim` - linux; amd64

```console
$ docker pull mono@sha256:ec2c4e364488e3683ac33b1646a368de0d5e5391003a3b8dd0b3a3ad5e959127
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57355708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3183f1822da893ed1669956b0b6a1c103bf2b2678be8d2376e811db32b38e59`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:56:16 GMT
ENV MONO_VERSION=5.2.0.215
# Tue, 19 Sep 2017 00:56:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 19 Sep 2017 00:57:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb401839c656aca137e79a90a17705a7eb5c0a97eafe20074eec0b3273e1dc3f`  
		Last Modified: Tue, 19 Sep 2017 01:03:37 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e11b1cfd586adb3805e1ecf2a0a52c008069552f775ccb6fab1aef5f86f6e95`  
		Last Modified: Tue, 19 Sep 2017 01:03:43 GMT  
		Size: 27.2 MB (27240505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:c2a175f339cdefc3f564111618925a781bf3e80ad0be5a4237029c4d248e84f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.4 MB (47367236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7727e0e0c9a112b375d13415f2924cfe9ece6720719383399ed7be6942bc1c74`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:46 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Sat, 09 Sep 2017 01:40:47 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 05:49:45 GMT
ENV MONO_VERSION=5.2.0.215
# Tue, 19 Sep 2017 05:50:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 19 Sep 2017 06:06:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5ec7d30a9a8c4943b1650d24c5857d17b69f0e4bb62241d56894484ff9315547`  
		Last Modified: Sat, 09 Sep 2017 01:51:42 GMT  
		Size: 26.3 MB (26279463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891200f3d3e7d995b4231de8b6d233191c66445194e7c6ff1f8ae9e0b6ce57cd`  
		Last Modified: Tue, 19 Sep 2017 07:08:48 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4259c958ab0adbb9807178995543b82b2247ad0bd3a3c50c80fb48b0b1365f6`  
		Last Modified: Tue, 19 Sep 2017 07:09:01 GMT  
		Size: 21.1 MB (21085705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:07bde0662fe8e219a5ffc3cbc8639c1e91f50f8e9440a1d4cbe129bf09dfe507
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52702685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31f0b21bb4602ebd3fec639ece8f9f0c60aee3fb0fb747f8a204e7a1c55df41f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:24:21 GMT
ADD file:e941b26069cf288fadf2ab835d4f0c3a681f3f882d81686662d20f9642928795 in / 
# Fri, 08 Sep 2017 17:24:22 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 21:36:14 GMT
ENV MONO_VERSION=5.2.0.215
# Fri, 08 Sep 2017 21:36:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 21:38:00 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:01c8fcecd171557c0af8130e86fd47e393a2791dc2ea655cb5f4f0ed6b95ef51`  
		Last Modified: Fri, 08 Sep 2017 17:36:14 GMT  
		Size: 27.5 MB (27480389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba25909a569941f571a4d7a8476b98f797f5985e5d5d3c2d4d51833f7d4be57`  
		Last Modified: Fri, 08 Sep 2017 21:57:32 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d88b9da28f7d692e1b6ef4b73d23901156b68d0f299e5c39476ac06221eff2`  
		Last Modified: Fri, 08 Sep 2017 21:57:45 GMT  
		Size: 25.2 MB (25220231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; 386

```console
$ docker pull mono@sha256:08609af96127a10c78bdbeb52ee200ca0c36c0df7a9e18675c02dde7fdbbaf17
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.3 MB (59287350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31db445013577c0fbcebc88247b31748133037829e916e437c663a7893a62435`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:05 GMT
ADD file:cd8c8c04f635ce6e14de5271949afcf67b9c480ea35ba633423d385975e330ad in / 
# Fri, 08 Sep 2017 13:18:05 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 14:59:21 GMT
ENV MONO_VERSION=5.2.0.215
# Fri, 08 Sep 2017 14:59:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 15:00:33 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:60dc9bcedd31a278f8b25a98451958fb75022352fe550042039e16ce32422ecf`  
		Last Modified: Fri, 08 Sep 2017 13:23:15 GMT  
		Size: 30.3 MB (30264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325b9bac4dce8f564f62f1e3679087d1017b8a1519d6cc9697fdf1f8d3a07b8a`  
		Last Modified: Fri, 08 Sep 2017 15:11:12 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf1c078a2bda3af6881583c84ffd48e8ccb2e90708fb2e1e067fe68a9542127`  
		Last Modified: Fri, 08 Sep 2017 15:11:23 GMT  
		Size: 29.0 MB (29021118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:latest`

```console
$ docker pull mono@sha256:9c7ed1fcea0286c63129cbc0b6623fe787ccad84394dd2e971dab55699094438
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:latest` - linux; amd64

```console
$ docker pull mono@sha256:85418563842c443b2a76fefe7313b97f76b41bd27a867c816246e2650c7e44ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.0 MB (167041813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f02b86b92cd59bf80fd90888204cf57e60722a0066149d7c8c0ede3687490325`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:56:16 GMT
ENV MONO_VERSION=5.2.0.215
# Tue, 19 Sep 2017 00:56:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 19 Sep 2017 00:57:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Sep 2017 01:03:27 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb401839c656aca137e79a90a17705a7eb5c0a97eafe20074eec0b3273e1dc3f`  
		Last Modified: Tue, 19 Sep 2017 01:03:37 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e11b1cfd586adb3805e1ecf2a0a52c008069552f775ccb6fab1aef5f86f6e95`  
		Last Modified: Tue, 19 Sep 2017 01:03:43 GMT  
		Size: 27.2 MB (27240505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425accfb7f8fe9395733145b7bf822575cf7efe5238ccd3e07ccaddc191afae5`  
		Last Modified: Tue, 19 Sep 2017 01:05:58 GMT  
		Size: 109.7 MB (109686105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm variant v7

```console
$ docker pull mono@sha256:7b30cd9999bd6ccdcc222a0e00a82c5bd051fbbb03fd92e39715697777fdbcdf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.9 MB (145903251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:265947c7539066ad6106c94a003529f5338ff6ca54761ab9f49f435c8d811222`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:46 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Sat, 09 Sep 2017 01:40:47 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 05:49:45 GMT
ENV MONO_VERSION=5.2.0.215
# Tue, 19 Sep 2017 05:50:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 19 Sep 2017 06:06:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 19 Sep 2017 07:07:44 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5ec7d30a9a8c4943b1650d24c5857d17b69f0e4bb62241d56894484ff9315547`  
		Last Modified: Sat, 09 Sep 2017 01:51:42 GMT  
		Size: 26.3 MB (26279463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891200f3d3e7d995b4231de8b6d233191c66445194e7c6ff1f8ae9e0b6ce57cd`  
		Last Modified: Tue, 19 Sep 2017 07:08:48 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4259c958ab0adbb9807178995543b82b2247ad0bd3a3c50c80fb48b0b1365f6`  
		Last Modified: Tue, 19 Sep 2017 07:09:01 GMT  
		Size: 21.1 MB (21085705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927d457281b9a97cf7d657365322b8b81a11665eab44f9fb778c143bdf39b014`  
		Last Modified: Tue, 19 Sep 2017 07:12:26 GMT  
		Size: 98.5 MB (98536015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:c66cb460bd80ea896ce2033717aaa2637af44bc024ecc5ca99535c6181c02c0e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.5 MB (160488661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:803f978922ec733b276b827e01ac1b968dc50e61255fc1aa675f6de4498a435c`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:24:21 GMT
ADD file:e941b26069cf288fadf2ab835d4f0c3a681f3f882d81686662d20f9642928795 in / 
# Fri, 08 Sep 2017 17:24:22 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 21:36:14 GMT
ENV MONO_VERSION=5.2.0.215
# Fri, 08 Sep 2017 21:36:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 21:38:00 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 08 Sep 2017 21:57:07 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:01c8fcecd171557c0af8130e86fd47e393a2791dc2ea655cb5f4f0ed6b95ef51`  
		Last Modified: Fri, 08 Sep 2017 17:36:14 GMT  
		Size: 27.5 MB (27480389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba25909a569941f571a4d7a8476b98f797f5985e5d5d3c2d4d51833f7d4be57`  
		Last Modified: Fri, 08 Sep 2017 21:57:32 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d88b9da28f7d692e1b6ef4b73d23901156b68d0f299e5c39476ac06221eff2`  
		Last Modified: Fri, 08 Sep 2017 21:57:45 GMT  
		Size: 25.2 MB (25220231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e709a0d3e3ce778bad5004c45914becc348bad7a2248ccc033f364881b338302`  
		Last Modified: Fri, 08 Sep 2017 21:58:25 GMT  
		Size: 107.8 MB (107785976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; 386

```console
$ docker pull mono@sha256:7600f29450588abc55360c785bf9192b7e361e37d6656652e1e8996f9eedc002
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.4 MB (169437931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b21562c286248adf684456ac1309a6589aa887e7c45884daf126a01b97fa46d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:05 GMT
ADD file:cd8c8c04f635ce6e14de5271949afcf67b9c480ea35ba633423d385975e330ad in / 
# Fri, 08 Sep 2017 13:18:05 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 14:59:21 GMT
ENV MONO_VERSION=5.2.0.215
# Fri, 08 Sep 2017 14:59:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 15:00:33 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 08 Sep 2017 15:10:00 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:60dc9bcedd31a278f8b25a98451958fb75022352fe550042039e16ce32422ecf`  
		Last Modified: Fri, 08 Sep 2017 13:23:15 GMT  
		Size: 30.3 MB (30264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325b9bac4dce8f564f62f1e3679087d1017b8a1519d6cc9697fdf1f8d3a07b8a`  
		Last Modified: Fri, 08 Sep 2017 15:11:12 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf1c078a2bda3af6881583c84ffd48e8ccb2e90708fb2e1e067fe68a9542127`  
		Last Modified: Fri, 08 Sep 2017 15:11:23 GMT  
		Size: 29.0 MB (29021118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856fcfadb75d8447fa682ea2070bc78d832248250f1456ba5d2a8edbf8d44d82`  
		Last Modified: Fri, 08 Sep 2017 15:11:30 GMT  
		Size: 110.2 MB (110150581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:slim`

```console
$ docker pull mono@sha256:132f93538f0e8841e7104c97f2eed465393f6aba157a0f7a2e234e768bf18415
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:slim` - linux; amd64

```console
$ docker pull mono@sha256:ec2c4e364488e3683ac33b1646a368de0d5e5391003a3b8dd0b3a3ad5e959127
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57355708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3183f1822da893ed1669956b0b6a1c103bf2b2678be8d2376e811db32b38e59`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:50 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Wed, 13 Sep 2017 08:40:50 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:56:16 GMT
ENV MONO_VERSION=5.2.0.215
# Tue, 19 Sep 2017 00:56:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 19 Sep 2017 00:57:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb401839c656aca137e79a90a17705a7eb5c0a97eafe20074eec0b3273e1dc3f`  
		Last Modified: Tue, 19 Sep 2017 01:03:37 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e11b1cfd586adb3805e1ecf2a0a52c008069552f775ccb6fab1aef5f86f6e95`  
		Last Modified: Tue, 19 Sep 2017 01:03:43 GMT  
		Size: 27.2 MB (27240505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:c2a175f339cdefc3f564111618925a781bf3e80ad0be5a4237029c4d248e84f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.4 MB (47367236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7727e0e0c9a112b375d13415f2924cfe9ece6720719383399ed7be6942bc1c74`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:40:46 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Sat, 09 Sep 2017 01:40:47 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 05:49:45 GMT
ENV MONO_VERSION=5.2.0.215
# Tue, 19 Sep 2017 05:50:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 19 Sep 2017 06:06:26 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5ec7d30a9a8c4943b1650d24c5857d17b69f0e4bb62241d56894484ff9315547`  
		Last Modified: Sat, 09 Sep 2017 01:51:42 GMT  
		Size: 26.3 MB (26279463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891200f3d3e7d995b4231de8b6d233191c66445194e7c6ff1f8ae9e0b6ce57cd`  
		Last Modified: Tue, 19 Sep 2017 07:08:48 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4259c958ab0adbb9807178995543b82b2247ad0bd3a3c50c80fb48b0b1365f6`  
		Last Modified: Tue, 19 Sep 2017 07:09:01 GMT  
		Size: 21.1 MB (21085705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:07bde0662fe8e219a5ffc3cbc8639c1e91f50f8e9440a1d4cbe129bf09dfe507
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52702685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31f0b21bb4602ebd3fec639ece8f9f0c60aee3fb0fb747f8a204e7a1c55df41f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:24:21 GMT
ADD file:e941b26069cf288fadf2ab835d4f0c3a681f3f882d81686662d20f9642928795 in / 
# Fri, 08 Sep 2017 17:24:22 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 21:36:14 GMT
ENV MONO_VERSION=5.2.0.215
# Fri, 08 Sep 2017 21:36:20 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 21:38:00 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:01c8fcecd171557c0af8130e86fd47e393a2791dc2ea655cb5f4f0ed6b95ef51`  
		Last Modified: Fri, 08 Sep 2017 17:36:14 GMT  
		Size: 27.5 MB (27480389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba25909a569941f571a4d7a8476b98f797f5985e5d5d3c2d4d51833f7d4be57`  
		Last Modified: Fri, 08 Sep 2017 21:57:32 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d88b9da28f7d692e1b6ef4b73d23901156b68d0f299e5c39476ac06221eff2`  
		Last Modified: Fri, 08 Sep 2017 21:57:45 GMT  
		Size: 25.2 MB (25220231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; 386

```console
$ docker pull mono@sha256:08609af96127a10c78bdbeb52ee200ca0c36c0df7a9e18675c02dde7fdbbaf17
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.3 MB (59287350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31db445013577c0fbcebc88247b31748133037829e916e437c663a7893a62435`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:05 GMT
ADD file:cd8c8c04f635ce6e14de5271949afcf67b9c480ea35ba633423d385975e330ad in / 
# Fri, 08 Sep 2017 13:18:05 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 14:59:21 GMT
ENV MONO_VERSION=5.2.0.215
# Fri, 08 Sep 2017 14:59:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 15:00:33 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:60dc9bcedd31a278f8b25a98451958fb75022352fe550042039e16ce32422ecf`  
		Last Modified: Fri, 08 Sep 2017 13:23:15 GMT  
		Size: 30.3 MB (30264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325b9bac4dce8f564f62f1e3679087d1017b8a1519d6cc9697fdf1f8d3a07b8a`  
		Last Modified: Fri, 08 Sep 2017 15:11:12 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf1c078a2bda3af6881583c84ffd48e8ccb2e90708fb2e1e067fe68a9542127`  
		Last Modified: Fri, 08 Sep 2017 15:11:23 GMT  
		Size: 29.0 MB (29021118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
