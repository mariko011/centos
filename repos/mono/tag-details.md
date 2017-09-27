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
$ docker pull mono@sha256:fb99e7518bc1f8b18192f71e8bd3107fcc88da845bff35a8d9c8068751a84295
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
$ docker pull mono@sha256:bcef5424baebfb1a3980bef7c82f67dc0cff885745e7f84cca5789dc8722cbc1
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138941764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c91e033f9d0c90e4ff048d426def76b792eaa01264876b6d312a53e95c37029c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:15:52 GMT
ADD file:6fef303ff382655f8d1b02443e95419e1f9610b563e8b11e7e4a021e4feaf3cc in / 
# Wed, 27 Sep 2017 04:15:53 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 05:34:34 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 27 Sep 2017 05:34:35 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 27 Sep 2017 05:34:49 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 05:34:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Sep 2017 05:36:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4ef58d6ed384b29697e2eecab4fcac62ff529eaef9f19f5a7b6183002b94947a`  
		Last Modified: Wed, 27 Sep 2017 04:22:15 GMT  
		Size: 35.7 MB (35656317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:122d8f4669505c6f96713737c09cf0dbb1bb82dfd8ec859526140f58bad36011`  
		Last Modified: Wed, 27 Sep 2017 05:39:46 GMT  
		Size: 7.2 MB (7185001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e3b4531c1b3384d07bcb7411f703a805e915ec22cafa8b3a939faec30cf900c`  
		Last Modified: Wed, 27 Sep 2017 05:39:45 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd232ac41cc187ed91d30adb78ba3f6f625207bff9d47af78c14053ff0c48c1`  
		Last Modified: Wed, 27 Sep 2017 05:40:20 GMT  
		Size: 96.1 MB (96070540 bytes)  
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
$ docker pull mono@sha256:fb99e7518bc1f8b18192f71e8bd3107fcc88da845bff35a8d9c8068751a84295
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
$ docker pull mono@sha256:bcef5424baebfb1a3980bef7c82f67dc0cff885745e7f84cca5789dc8722cbc1
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138941764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c91e033f9d0c90e4ff048d426def76b792eaa01264876b6d312a53e95c37029c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:15:52 GMT
ADD file:6fef303ff382655f8d1b02443e95419e1f9610b563e8b11e7e4a021e4feaf3cc in / 
# Wed, 27 Sep 2017 04:15:53 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 05:34:34 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 27 Sep 2017 05:34:35 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 27 Sep 2017 05:34:49 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 05:34:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Sep 2017 05:36:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4ef58d6ed384b29697e2eecab4fcac62ff529eaef9f19f5a7b6183002b94947a`  
		Last Modified: Wed, 27 Sep 2017 04:22:15 GMT  
		Size: 35.7 MB (35656317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:122d8f4669505c6f96713737c09cf0dbb1bb82dfd8ec859526140f58bad36011`  
		Last Modified: Wed, 27 Sep 2017 05:39:46 GMT  
		Size: 7.2 MB (7185001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e3b4531c1b3384d07bcb7411f703a805e915ec22cafa8b3a939faec30cf900c`  
		Last Modified: Wed, 27 Sep 2017 05:39:45 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd232ac41cc187ed91d30adb78ba3f6f625207bff9d47af78c14053ff0c48c1`  
		Last Modified: Wed, 27 Sep 2017 05:40:20 GMT  
		Size: 96.1 MB (96070540 bytes)  
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
$ docker pull mono@sha256:fb99e7518bc1f8b18192f71e8bd3107fcc88da845bff35a8d9c8068751a84295
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
$ docker pull mono@sha256:bcef5424baebfb1a3980bef7c82f67dc0cff885745e7f84cca5789dc8722cbc1
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138941764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c91e033f9d0c90e4ff048d426def76b792eaa01264876b6d312a53e95c37029c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:15:52 GMT
ADD file:6fef303ff382655f8d1b02443e95419e1f9610b563e8b11e7e4a021e4feaf3cc in / 
# Wed, 27 Sep 2017 04:15:53 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 05:34:34 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 27 Sep 2017 05:34:35 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 27 Sep 2017 05:34:49 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 05:34:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Sep 2017 05:36:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4ef58d6ed384b29697e2eecab4fcac62ff529eaef9f19f5a7b6183002b94947a`  
		Last Modified: Wed, 27 Sep 2017 04:22:15 GMT  
		Size: 35.7 MB (35656317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:122d8f4669505c6f96713737c09cf0dbb1bb82dfd8ec859526140f58bad36011`  
		Last Modified: Wed, 27 Sep 2017 05:39:46 GMT  
		Size: 7.2 MB (7185001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e3b4531c1b3384d07bcb7411f703a805e915ec22cafa8b3a939faec30cf900c`  
		Last Modified: Wed, 27 Sep 2017 05:39:45 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd232ac41cc187ed91d30adb78ba3f6f625207bff9d47af78c14053ff0c48c1`  
		Last Modified: Wed, 27 Sep 2017 05:40:20 GMT  
		Size: 96.1 MB (96070540 bytes)  
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
$ docker pull mono@sha256:fb99e7518bc1f8b18192f71e8bd3107fcc88da845bff35a8d9c8068751a84295
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
$ docker pull mono@sha256:bcef5424baebfb1a3980bef7c82f67dc0cff885745e7f84cca5789dc8722cbc1
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138941764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c91e033f9d0c90e4ff048d426def76b792eaa01264876b6d312a53e95c37029c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:15:52 GMT
ADD file:6fef303ff382655f8d1b02443e95419e1f9610b563e8b11e7e4a021e4feaf3cc in / 
# Wed, 27 Sep 2017 04:15:53 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 05:34:34 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 27 Sep 2017 05:34:35 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 27 Sep 2017 05:34:49 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 05:34:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Sep 2017 05:36:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:4ef58d6ed384b29697e2eecab4fcac62ff529eaef9f19f5a7b6183002b94947a`  
		Last Modified: Wed, 27 Sep 2017 04:22:15 GMT  
		Size: 35.7 MB (35656317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:122d8f4669505c6f96713737c09cf0dbb1bb82dfd8ec859526140f58bad36011`  
		Last Modified: Wed, 27 Sep 2017 05:39:46 GMT  
		Size: 7.2 MB (7185001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e3b4531c1b3384d07bcb7411f703a805e915ec22cafa8b3a939faec30cf900c`  
		Last Modified: Wed, 27 Sep 2017 05:39:45 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd232ac41cc187ed91d30adb78ba3f6f625207bff9d47af78c14053ff0c48c1`  
		Last Modified: Wed, 27 Sep 2017 05:40:20 GMT  
		Size: 96.1 MB (96070540 bytes)  
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
$ docker pull mono@sha256:6b553ac00e63f048ae40832b334f5d2fe8d2a125a316711e54da74d82b154b0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

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

### `mono:5` - linux; arm variant v7

```console
$ docker pull mono@sha256:3691d674d96ee13b21bce1319e60d0ab4906428cc35bb4409f7465bc9b235626
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.4 MB (147394048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e16f297920715c9b098cd7997fb1c7a7dc0973914ac177edafdca60a23dce3cc`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:37 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Wed, 27 Sep 2017 04:12:37 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 05:29:57 GMT
ENV MONO_VERSION=5.2.0.224
# Wed, 27 Sep 2017 05:30:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Sep 2017 05:31:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 27 Sep 2017 05:38:10 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0e9b2aa411a3770acc2fe23d7335dce32b7951c10e3083478590237e945abbf5`  
		Last Modified: Wed, 27 Sep 2017 04:17:43 GMT  
		Size: 26.3 MB (26280181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996f0768a208aba47f4b233e4811f01563155ffcb0229c033de9e914c2cf0bb1`  
		Last Modified: Wed, 27 Sep 2017 05:38:31 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b28f6be90b01ebdeb5af3cdeba7f58f00e3c10a26b0efbe1767ee52caa06586`  
		Last Modified: Wed, 27 Sep 2017 05:38:40 GMT  
		Size: 22.6 MB (22556017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b185ad0cd0b8add29762fab79a18e9fc149f1d4642759df7c81cb7708cf271`  
		Last Modified: Wed, 27 Sep 2017 05:41:15 GMT  
		Size: 98.6 MB (98555781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:36a6f53636bb3c429393f2412a611c1101c9ca47b882deade235249724f55bd6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.0 MB (161988644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b22e566845389cec3e9f474baa6336bb45a7414138b94f80945a4fb1482fdcb`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:24:21 GMT
ADD file:e941b26069cf288fadf2ab835d4f0c3a681f3f882d81686662d20f9642928795 in / 
# Fri, 08 Sep 2017 17:24:22 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 19:46:14 GMT
ENV MONO_VERSION=5.2.0.224
# Thu, 21 Sep 2017 19:46:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 21 Sep 2017 19:48:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 21 Sep 2017 19:53:39 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:01c8fcecd171557c0af8130e86fd47e393a2791dc2ea655cb5f4f0ed6b95ef51`  
		Last Modified: Fri, 08 Sep 2017 17:36:14 GMT  
		Size: 27.5 MB (27480389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d096ab8bd60d945622610873d1f1270da5ad1fd8ea6888944af6c947898340`  
		Last Modified: Thu, 21 Sep 2017 19:54:00 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5124b5cb1141efbdccb20f130b052b89d03025851d69410ebdb394c523fcb160`  
		Last Modified: Thu, 21 Sep 2017 19:54:11 GMT  
		Size: 26.7 MB (26722127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414b92f57da575836e097b774f47c35e32eb7f5b6ef433064e0e9d7d756e9c9e`  
		Last Modified: Thu, 21 Sep 2017 19:55:39 GMT  
		Size: 107.8 MB (107784062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; 386

```console
$ docker pull mono@sha256:8e5d13dcb093947043247eadcee2be8e6716995c50c054185193321499ddc00a
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.4 MB (169437972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0811cdbf3f158c2932c6ea9bb0befa56a138ad0006d10cd67a3f7c9366c4f3a`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:05 GMT
ADD file:cd8c8c04f635ce6e14de5271949afcf67b9c480ea35ba633423d385975e330ad in / 
# Fri, 08 Sep 2017 13:18:05 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 00:56:44 GMT
ENV MONO_VERSION=5.2.0.224
# Thu, 21 Sep 2017 00:56:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 21 Sep 2017 00:57:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 21 Sep 2017 00:59:46 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:60dc9bcedd31a278f8b25a98451958fb75022352fe550042039e16ce32422ecf`  
		Last Modified: Fri, 08 Sep 2017 13:23:15 GMT  
		Size: 30.3 MB (30264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15175880c961a6b7c900b029a277d3894efc64a4646a436385786ee4cfd6da64`  
		Last Modified: Thu, 21 Sep 2017 01:03:20 GMT  
		Size: 2.1 KB (2070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc83f83df1ed776f204a3232440dcae199369201687e900d13f6bf7f3f54189`  
		Last Modified: Thu, 21 Sep 2017 01:03:28 GMT  
		Size: 29.0 MB (29020722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c560d45c2d827612e123b2086ecd6ce007522fc0da32907d858fc4cf699678`  
		Last Modified: Thu, 21 Sep 2017 01:04:25 GMT  
		Size: 110.2 MB (110151014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.0`

```console
$ docker pull mono@sha256:04de1d742d1ecd6f5e347c0a897c07dbf9a54a9a14efe2dc892e01b7e82636a9
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
$ docker pull mono@sha256:cb1332a9b373a3f5c2355d4a4a1b7a79fe5283b0777d002b8d8958b311451efc
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.6 MB (144618500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e84389471cfc81f09e99ac63830b79374243508670cfbedd2a25644f2cf107f2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:37 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Wed, 27 Sep 2017 04:12:37 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 05:31:30 GMT
ENV MONO_VERSION=5.0.1.1
# Wed, 27 Sep 2017 05:32:05 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 05:32:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Sep 2017 05:34:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0e9b2aa411a3770acc2fe23d7335dce32b7951c10e3083478590237e945abbf5`  
		Last Modified: Wed, 27 Sep 2017 04:17:43 GMT  
		Size: 26.3 MB (26280181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77a261fbc3ff33ec1e0686b4c34ec78300a57c98b3cbdb1c09897874b71a844`  
		Last Modified: Wed, 27 Sep 2017 05:38:54 GMT  
		Size: 4.3 MB (4344485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ba8db1a8fce8f9936b2e910c49e5937a6372514d80b60a2068415a6ed537dc`  
		Last Modified: Wed, 27 Sep 2017 05:38:53 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05b476201aae5b5c14c3baf9ea5a1186db383243104e4350ee3fafca33b6554b`  
		Last Modified: Wed, 27 Sep 2017 05:39:34 GMT  
		Size: 114.0 MB (113991765 bytes)  
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
$ docker pull mono@sha256:04de1d742d1ecd6f5e347c0a897c07dbf9a54a9a14efe2dc892e01b7e82636a9
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
$ docker pull mono@sha256:cb1332a9b373a3f5c2355d4a4a1b7a79fe5283b0777d002b8d8958b311451efc
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.6 MB (144618500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e84389471cfc81f09e99ac63830b79374243508670cfbedd2a25644f2cf107f2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:37 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Wed, 27 Sep 2017 04:12:37 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 05:31:30 GMT
ENV MONO_VERSION=5.0.1.1
# Wed, 27 Sep 2017 05:32:05 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 05:32:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Sep 2017 05:34:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0e9b2aa411a3770acc2fe23d7335dce32b7951c10e3083478590237e945abbf5`  
		Last Modified: Wed, 27 Sep 2017 04:17:43 GMT  
		Size: 26.3 MB (26280181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77a261fbc3ff33ec1e0686b4c34ec78300a57c98b3cbdb1c09897874b71a844`  
		Last Modified: Wed, 27 Sep 2017 05:38:54 GMT  
		Size: 4.3 MB (4344485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ba8db1a8fce8f9936b2e910c49e5937a6372514d80b60a2068415a6ed537dc`  
		Last Modified: Wed, 27 Sep 2017 05:38:53 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05b476201aae5b5c14c3baf9ea5a1186db383243104e4350ee3fafca33b6554b`  
		Last Modified: Wed, 27 Sep 2017 05:39:34 GMT  
		Size: 114.0 MB (113991765 bytes)  
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
$ docker pull mono@sha256:04de1d742d1ecd6f5e347c0a897c07dbf9a54a9a14efe2dc892e01b7e82636a9
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
$ docker pull mono@sha256:cb1332a9b373a3f5c2355d4a4a1b7a79fe5283b0777d002b8d8958b311451efc
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.6 MB (144618500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e84389471cfc81f09e99ac63830b79374243508670cfbedd2a25644f2cf107f2`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:37 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Wed, 27 Sep 2017 04:12:37 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 05:31:30 GMT
ENV MONO_VERSION=5.0.1.1
# Wed, 27 Sep 2017 05:32:05 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 05:32:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Sep 2017 05:34:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0e9b2aa411a3770acc2fe23d7335dce32b7951c10e3083478590237e945abbf5`  
		Last Modified: Wed, 27 Sep 2017 04:17:43 GMT  
		Size: 26.3 MB (26280181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77a261fbc3ff33ec1e0686b4c34ec78300a57c98b3cbdb1c09897874b71a844`  
		Last Modified: Wed, 27 Sep 2017 05:38:54 GMT  
		Size: 4.3 MB (4344485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ba8db1a8fce8f9936b2e910c49e5937a6372514d80b60a2068415a6ed537dc`  
		Last Modified: Wed, 27 Sep 2017 05:38:53 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05b476201aae5b5c14c3baf9ea5a1186db383243104e4350ee3fafca33b6554b`  
		Last Modified: Wed, 27 Sep 2017 05:39:34 GMT  
		Size: 114.0 MB (113991765 bytes)  
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
$ docker pull mono@sha256:6b553ac00e63f048ae40832b334f5d2fe8d2a125a316711e54da74d82b154b0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

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

### `mono:5.2` - linux; arm variant v7

```console
$ docker pull mono@sha256:3691d674d96ee13b21bce1319e60d0ab4906428cc35bb4409f7465bc9b235626
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.4 MB (147394048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e16f297920715c9b098cd7997fb1c7a7dc0973914ac177edafdca60a23dce3cc`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:37 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Wed, 27 Sep 2017 04:12:37 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 05:29:57 GMT
ENV MONO_VERSION=5.2.0.224
# Wed, 27 Sep 2017 05:30:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Sep 2017 05:31:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 27 Sep 2017 05:38:10 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0e9b2aa411a3770acc2fe23d7335dce32b7951c10e3083478590237e945abbf5`  
		Last Modified: Wed, 27 Sep 2017 04:17:43 GMT  
		Size: 26.3 MB (26280181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996f0768a208aba47f4b233e4811f01563155ffcb0229c033de9e914c2cf0bb1`  
		Last Modified: Wed, 27 Sep 2017 05:38:31 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b28f6be90b01ebdeb5af3cdeba7f58f00e3c10a26b0efbe1767ee52caa06586`  
		Last Modified: Wed, 27 Sep 2017 05:38:40 GMT  
		Size: 22.6 MB (22556017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b185ad0cd0b8add29762fab79a18e9fc149f1d4642759df7c81cb7708cf271`  
		Last Modified: Wed, 27 Sep 2017 05:41:15 GMT  
		Size: 98.6 MB (98555781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:36a6f53636bb3c429393f2412a611c1101c9ca47b882deade235249724f55bd6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.0 MB (161988644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b22e566845389cec3e9f474baa6336bb45a7414138b94f80945a4fb1482fdcb`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:24:21 GMT
ADD file:e941b26069cf288fadf2ab835d4f0c3a681f3f882d81686662d20f9642928795 in / 
# Fri, 08 Sep 2017 17:24:22 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 19:46:14 GMT
ENV MONO_VERSION=5.2.0.224
# Thu, 21 Sep 2017 19:46:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 21 Sep 2017 19:48:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 21 Sep 2017 19:53:39 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:01c8fcecd171557c0af8130e86fd47e393a2791dc2ea655cb5f4f0ed6b95ef51`  
		Last Modified: Fri, 08 Sep 2017 17:36:14 GMT  
		Size: 27.5 MB (27480389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d096ab8bd60d945622610873d1f1270da5ad1fd8ea6888944af6c947898340`  
		Last Modified: Thu, 21 Sep 2017 19:54:00 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5124b5cb1141efbdccb20f130b052b89d03025851d69410ebdb394c523fcb160`  
		Last Modified: Thu, 21 Sep 2017 19:54:11 GMT  
		Size: 26.7 MB (26722127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414b92f57da575836e097b774f47c35e32eb7f5b6ef433064e0e9d7d756e9c9e`  
		Last Modified: Thu, 21 Sep 2017 19:55:39 GMT  
		Size: 107.8 MB (107784062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2` - linux; 386

```console
$ docker pull mono@sha256:8e5d13dcb093947043247eadcee2be8e6716995c50c054185193321499ddc00a
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.4 MB (169437972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0811cdbf3f158c2932c6ea9bb0befa56a138ad0006d10cd67a3f7c9366c4f3a`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:05 GMT
ADD file:cd8c8c04f635ce6e14de5271949afcf67b9c480ea35ba633423d385975e330ad in / 
# Fri, 08 Sep 2017 13:18:05 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 00:56:44 GMT
ENV MONO_VERSION=5.2.0.224
# Thu, 21 Sep 2017 00:56:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 21 Sep 2017 00:57:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 21 Sep 2017 00:59:46 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:60dc9bcedd31a278f8b25a98451958fb75022352fe550042039e16ce32422ecf`  
		Last Modified: Fri, 08 Sep 2017 13:23:15 GMT  
		Size: 30.3 MB (30264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15175880c961a6b7c900b029a277d3894efc64a4646a436385786ee4cfd6da64`  
		Last Modified: Thu, 21 Sep 2017 01:03:20 GMT  
		Size: 2.1 KB (2070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc83f83df1ed776f204a3232440dcae199369201687e900d13f6bf7f3f54189`  
		Last Modified: Thu, 21 Sep 2017 01:03:28 GMT  
		Size: 29.0 MB (29020722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c560d45c2d827612e123b2086ecd6ce007522fc0da32907d858fc4cf699678`  
		Last Modified: Thu, 21 Sep 2017 01:04:25 GMT  
		Size: 110.2 MB (110151014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.2.0`

```console
$ docker pull mono@sha256:6b553ac00e63f048ae40832b334f5d2fe8d2a125a316711e54da74d82b154b0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

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

### `mono:5.2.0` - linux; arm variant v7

```console
$ docker pull mono@sha256:3691d674d96ee13b21bce1319e60d0ab4906428cc35bb4409f7465bc9b235626
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.4 MB (147394048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e16f297920715c9b098cd7997fb1c7a7dc0973914ac177edafdca60a23dce3cc`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:37 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Wed, 27 Sep 2017 04:12:37 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 05:29:57 GMT
ENV MONO_VERSION=5.2.0.224
# Wed, 27 Sep 2017 05:30:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Sep 2017 05:31:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 27 Sep 2017 05:38:10 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0e9b2aa411a3770acc2fe23d7335dce32b7951c10e3083478590237e945abbf5`  
		Last Modified: Wed, 27 Sep 2017 04:17:43 GMT  
		Size: 26.3 MB (26280181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996f0768a208aba47f4b233e4811f01563155ffcb0229c033de9e914c2cf0bb1`  
		Last Modified: Wed, 27 Sep 2017 05:38:31 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b28f6be90b01ebdeb5af3cdeba7f58f00e3c10a26b0efbe1767ee52caa06586`  
		Last Modified: Wed, 27 Sep 2017 05:38:40 GMT  
		Size: 22.6 MB (22556017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b185ad0cd0b8add29762fab79a18e9fc149f1d4642759df7c81cb7708cf271`  
		Last Modified: Wed, 27 Sep 2017 05:41:15 GMT  
		Size: 98.6 MB (98555781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2.0` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:36a6f53636bb3c429393f2412a611c1101c9ca47b882deade235249724f55bd6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.0 MB (161988644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b22e566845389cec3e9f474baa6336bb45a7414138b94f80945a4fb1482fdcb`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:24:21 GMT
ADD file:e941b26069cf288fadf2ab835d4f0c3a681f3f882d81686662d20f9642928795 in / 
# Fri, 08 Sep 2017 17:24:22 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 19:46:14 GMT
ENV MONO_VERSION=5.2.0.224
# Thu, 21 Sep 2017 19:46:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 21 Sep 2017 19:48:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 21 Sep 2017 19:53:39 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:01c8fcecd171557c0af8130e86fd47e393a2791dc2ea655cb5f4f0ed6b95ef51`  
		Last Modified: Fri, 08 Sep 2017 17:36:14 GMT  
		Size: 27.5 MB (27480389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d096ab8bd60d945622610873d1f1270da5ad1fd8ea6888944af6c947898340`  
		Last Modified: Thu, 21 Sep 2017 19:54:00 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5124b5cb1141efbdccb20f130b052b89d03025851d69410ebdb394c523fcb160`  
		Last Modified: Thu, 21 Sep 2017 19:54:11 GMT  
		Size: 26.7 MB (26722127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414b92f57da575836e097b774f47c35e32eb7f5b6ef433064e0e9d7d756e9c9e`  
		Last Modified: Thu, 21 Sep 2017 19:55:39 GMT  
		Size: 107.8 MB (107784062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2.0` - linux; 386

```console
$ docker pull mono@sha256:8e5d13dcb093947043247eadcee2be8e6716995c50c054185193321499ddc00a
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.4 MB (169437972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0811cdbf3f158c2932c6ea9bb0befa56a138ad0006d10cd67a3f7c9366c4f3a`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:05 GMT
ADD file:cd8c8c04f635ce6e14de5271949afcf67b9c480ea35ba633423d385975e330ad in / 
# Fri, 08 Sep 2017 13:18:05 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 00:56:44 GMT
ENV MONO_VERSION=5.2.0.224
# Thu, 21 Sep 2017 00:56:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 21 Sep 2017 00:57:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 21 Sep 2017 00:59:46 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:60dc9bcedd31a278f8b25a98451958fb75022352fe550042039e16ce32422ecf`  
		Last Modified: Fri, 08 Sep 2017 13:23:15 GMT  
		Size: 30.3 MB (30264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15175880c961a6b7c900b029a277d3894efc64a4646a436385786ee4cfd6da64`  
		Last Modified: Thu, 21 Sep 2017 01:03:20 GMT  
		Size: 2.1 KB (2070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc83f83df1ed776f204a3232440dcae199369201687e900d13f6bf7f3f54189`  
		Last Modified: Thu, 21 Sep 2017 01:03:28 GMT  
		Size: 29.0 MB (29020722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c560d45c2d827612e123b2086ecd6ce007522fc0da32907d858fc4cf699678`  
		Last Modified: Thu, 21 Sep 2017 01:04:25 GMT  
		Size: 110.2 MB (110151014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.2.0.224`

```console
$ docker pull mono@sha256:6b553ac00e63f048ae40832b334f5d2fe8d2a125a316711e54da74d82b154b0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

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

### `mono:5.2.0.224` - linux; arm variant v7

```console
$ docker pull mono@sha256:3691d674d96ee13b21bce1319e60d0ab4906428cc35bb4409f7465bc9b235626
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.4 MB (147394048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e16f297920715c9b098cd7997fb1c7a7dc0973914ac177edafdca60a23dce3cc`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:37 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Wed, 27 Sep 2017 04:12:37 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 05:29:57 GMT
ENV MONO_VERSION=5.2.0.224
# Wed, 27 Sep 2017 05:30:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Sep 2017 05:31:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 27 Sep 2017 05:38:10 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0e9b2aa411a3770acc2fe23d7335dce32b7951c10e3083478590237e945abbf5`  
		Last Modified: Wed, 27 Sep 2017 04:17:43 GMT  
		Size: 26.3 MB (26280181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996f0768a208aba47f4b233e4811f01563155ffcb0229c033de9e914c2cf0bb1`  
		Last Modified: Wed, 27 Sep 2017 05:38:31 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b28f6be90b01ebdeb5af3cdeba7f58f00e3c10a26b0efbe1767ee52caa06586`  
		Last Modified: Wed, 27 Sep 2017 05:38:40 GMT  
		Size: 22.6 MB (22556017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b185ad0cd0b8add29762fab79a18e9fc149f1d4642759df7c81cb7708cf271`  
		Last Modified: Wed, 27 Sep 2017 05:41:15 GMT  
		Size: 98.6 MB (98555781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2.0.224` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:36a6f53636bb3c429393f2412a611c1101c9ca47b882deade235249724f55bd6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.0 MB (161988644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b22e566845389cec3e9f474baa6336bb45a7414138b94f80945a4fb1482fdcb`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:24:21 GMT
ADD file:e941b26069cf288fadf2ab835d4f0c3a681f3f882d81686662d20f9642928795 in / 
# Fri, 08 Sep 2017 17:24:22 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 19:46:14 GMT
ENV MONO_VERSION=5.2.0.224
# Thu, 21 Sep 2017 19:46:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 21 Sep 2017 19:48:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 21 Sep 2017 19:53:39 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:01c8fcecd171557c0af8130e86fd47e393a2791dc2ea655cb5f4f0ed6b95ef51`  
		Last Modified: Fri, 08 Sep 2017 17:36:14 GMT  
		Size: 27.5 MB (27480389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d096ab8bd60d945622610873d1f1270da5ad1fd8ea6888944af6c947898340`  
		Last Modified: Thu, 21 Sep 2017 19:54:00 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5124b5cb1141efbdccb20f130b052b89d03025851d69410ebdb394c523fcb160`  
		Last Modified: Thu, 21 Sep 2017 19:54:11 GMT  
		Size: 26.7 MB (26722127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414b92f57da575836e097b774f47c35e32eb7f5b6ef433064e0e9d7d756e9c9e`  
		Last Modified: Thu, 21 Sep 2017 19:55:39 GMT  
		Size: 107.8 MB (107784062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2.0.224` - linux; 386

```console
$ docker pull mono@sha256:8e5d13dcb093947043247eadcee2be8e6716995c50c054185193321499ddc00a
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.4 MB (169437972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0811cdbf3f158c2932c6ea9bb0befa56a138ad0006d10cd67a3f7c9366c4f3a`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:05 GMT
ADD file:cd8c8c04f635ce6e14de5271949afcf67b9c480ea35ba633423d385975e330ad in / 
# Fri, 08 Sep 2017 13:18:05 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 00:56:44 GMT
ENV MONO_VERSION=5.2.0.224
# Thu, 21 Sep 2017 00:56:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 21 Sep 2017 00:57:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 21 Sep 2017 00:59:46 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:60dc9bcedd31a278f8b25a98451958fb75022352fe550042039e16ce32422ecf`  
		Last Modified: Fri, 08 Sep 2017 13:23:15 GMT  
		Size: 30.3 MB (30264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15175880c961a6b7c900b029a277d3894efc64a4646a436385786ee4cfd6da64`  
		Last Modified: Thu, 21 Sep 2017 01:03:20 GMT  
		Size: 2.1 KB (2070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc83f83df1ed776f204a3232440dcae199369201687e900d13f6bf7f3f54189`  
		Last Modified: Thu, 21 Sep 2017 01:03:28 GMT  
		Size: 29.0 MB (29020722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c560d45c2d827612e123b2086ecd6ce007522fc0da32907d858fc4cf699678`  
		Last Modified: Thu, 21 Sep 2017 01:04:25 GMT  
		Size: 110.2 MB (110151014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.2.0.224-slim`

```console
$ docker pull mono@sha256:351458832307a737eb647a42922c70910c6a4d088619be04cb8817674046a5cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

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

### `mono:5.2.0.224-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:6900c3f95d445abadae77dadd2378403c2947dab18e58fa9ce55d29069dab760
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48838267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e22b622ac78fe5fd5562dc03eb5f31d489cc56fda3dba8feb4c01c9c2f6c29e7`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:37 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Wed, 27 Sep 2017 04:12:37 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 05:29:57 GMT
ENV MONO_VERSION=5.2.0.224
# Wed, 27 Sep 2017 05:30:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Sep 2017 05:31:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0e9b2aa411a3770acc2fe23d7335dce32b7951c10e3083478590237e945abbf5`  
		Last Modified: Wed, 27 Sep 2017 04:17:43 GMT  
		Size: 26.3 MB (26280181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996f0768a208aba47f4b233e4811f01563155ffcb0229c033de9e914c2cf0bb1`  
		Last Modified: Wed, 27 Sep 2017 05:38:31 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b28f6be90b01ebdeb5af3cdeba7f58f00e3c10a26b0efbe1767ee52caa06586`  
		Last Modified: Wed, 27 Sep 2017 05:38:40 GMT  
		Size: 22.6 MB (22556017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2.0.224-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:b71c8e76f4905a917ae9478bd4f59fbfe03babd7c312f6570f3260eb8f123bfa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.2 MB (54204582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1769e5be9f16107f845afe6528ffb475c8dc97e4fa65c572ead4bc299d2d1d9`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:24:21 GMT
ADD file:e941b26069cf288fadf2ab835d4f0c3a681f3f882d81686662d20f9642928795 in / 
# Fri, 08 Sep 2017 17:24:22 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 19:46:14 GMT
ENV MONO_VERSION=5.2.0.224
# Thu, 21 Sep 2017 19:46:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 21 Sep 2017 19:48:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:01c8fcecd171557c0af8130e86fd47e393a2791dc2ea655cb5f4f0ed6b95ef51`  
		Last Modified: Fri, 08 Sep 2017 17:36:14 GMT  
		Size: 27.5 MB (27480389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d096ab8bd60d945622610873d1f1270da5ad1fd8ea6888944af6c947898340`  
		Last Modified: Thu, 21 Sep 2017 19:54:00 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5124b5cb1141efbdccb20f130b052b89d03025851d69410ebdb394c523fcb160`  
		Last Modified: Thu, 21 Sep 2017 19:54:11 GMT  
		Size: 26.7 MB (26722127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2.0.224-slim` - linux; 386

```console
$ docker pull mono@sha256:d921d576c42ca886a2585641c5ad84054066feed1ce85c4a61b842dec4270e0b
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.3 MB (59286958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57432770ee8caf9bb10d2c4e0442ce7b696ebb92c06fd25f729003e485728ad8`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:05 GMT
ADD file:cd8c8c04f635ce6e14de5271949afcf67b9c480ea35ba633423d385975e330ad in / 
# Fri, 08 Sep 2017 13:18:05 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 00:56:44 GMT
ENV MONO_VERSION=5.2.0.224
# Thu, 21 Sep 2017 00:56:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 21 Sep 2017 00:57:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:60dc9bcedd31a278f8b25a98451958fb75022352fe550042039e16ce32422ecf`  
		Last Modified: Fri, 08 Sep 2017 13:23:15 GMT  
		Size: 30.3 MB (30264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15175880c961a6b7c900b029a277d3894efc64a4646a436385786ee4cfd6da64`  
		Last Modified: Thu, 21 Sep 2017 01:03:20 GMT  
		Size: 2.1 KB (2070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc83f83df1ed776f204a3232440dcae199369201687e900d13f6bf7f3f54189`  
		Last Modified: Thu, 21 Sep 2017 01:03:28 GMT  
		Size: 29.0 MB (29020722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.2.0-slim`

```console
$ docker pull mono@sha256:351458832307a737eb647a42922c70910c6a4d088619be04cb8817674046a5cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

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

### `mono:5.2.0-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:6900c3f95d445abadae77dadd2378403c2947dab18e58fa9ce55d29069dab760
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48838267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e22b622ac78fe5fd5562dc03eb5f31d489cc56fda3dba8feb4c01c9c2f6c29e7`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:37 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Wed, 27 Sep 2017 04:12:37 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 05:29:57 GMT
ENV MONO_VERSION=5.2.0.224
# Wed, 27 Sep 2017 05:30:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Sep 2017 05:31:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0e9b2aa411a3770acc2fe23d7335dce32b7951c10e3083478590237e945abbf5`  
		Last Modified: Wed, 27 Sep 2017 04:17:43 GMT  
		Size: 26.3 MB (26280181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996f0768a208aba47f4b233e4811f01563155ffcb0229c033de9e914c2cf0bb1`  
		Last Modified: Wed, 27 Sep 2017 05:38:31 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b28f6be90b01ebdeb5af3cdeba7f58f00e3c10a26b0efbe1767ee52caa06586`  
		Last Modified: Wed, 27 Sep 2017 05:38:40 GMT  
		Size: 22.6 MB (22556017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2.0-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:b71c8e76f4905a917ae9478bd4f59fbfe03babd7c312f6570f3260eb8f123bfa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.2 MB (54204582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1769e5be9f16107f845afe6528ffb475c8dc97e4fa65c572ead4bc299d2d1d9`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:24:21 GMT
ADD file:e941b26069cf288fadf2ab835d4f0c3a681f3f882d81686662d20f9642928795 in / 
# Fri, 08 Sep 2017 17:24:22 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 19:46:14 GMT
ENV MONO_VERSION=5.2.0.224
# Thu, 21 Sep 2017 19:46:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 21 Sep 2017 19:48:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:01c8fcecd171557c0af8130e86fd47e393a2791dc2ea655cb5f4f0ed6b95ef51`  
		Last Modified: Fri, 08 Sep 2017 17:36:14 GMT  
		Size: 27.5 MB (27480389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d096ab8bd60d945622610873d1f1270da5ad1fd8ea6888944af6c947898340`  
		Last Modified: Thu, 21 Sep 2017 19:54:00 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5124b5cb1141efbdccb20f130b052b89d03025851d69410ebdb394c523fcb160`  
		Last Modified: Thu, 21 Sep 2017 19:54:11 GMT  
		Size: 26.7 MB (26722127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2.0-slim` - linux; 386

```console
$ docker pull mono@sha256:d921d576c42ca886a2585641c5ad84054066feed1ce85c4a61b842dec4270e0b
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.3 MB (59286958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57432770ee8caf9bb10d2c4e0442ce7b696ebb92c06fd25f729003e485728ad8`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:05 GMT
ADD file:cd8c8c04f635ce6e14de5271949afcf67b9c480ea35ba633423d385975e330ad in / 
# Fri, 08 Sep 2017 13:18:05 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 00:56:44 GMT
ENV MONO_VERSION=5.2.0.224
# Thu, 21 Sep 2017 00:56:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 21 Sep 2017 00:57:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:60dc9bcedd31a278f8b25a98451958fb75022352fe550042039e16ce32422ecf`  
		Last Modified: Fri, 08 Sep 2017 13:23:15 GMT  
		Size: 30.3 MB (30264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15175880c961a6b7c900b029a277d3894efc64a4646a436385786ee4cfd6da64`  
		Last Modified: Thu, 21 Sep 2017 01:03:20 GMT  
		Size: 2.1 KB (2070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc83f83df1ed776f204a3232440dcae199369201687e900d13f6bf7f3f54189`  
		Last Modified: Thu, 21 Sep 2017 01:03:28 GMT  
		Size: 29.0 MB (29020722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.2-slim`

```console
$ docker pull mono@sha256:351458832307a737eb647a42922c70910c6a4d088619be04cb8817674046a5cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

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

### `mono:5.2-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:6900c3f95d445abadae77dadd2378403c2947dab18e58fa9ce55d29069dab760
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48838267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e22b622ac78fe5fd5562dc03eb5f31d489cc56fda3dba8feb4c01c9c2f6c29e7`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:37 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Wed, 27 Sep 2017 04:12:37 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 05:29:57 GMT
ENV MONO_VERSION=5.2.0.224
# Wed, 27 Sep 2017 05:30:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Sep 2017 05:31:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0e9b2aa411a3770acc2fe23d7335dce32b7951c10e3083478590237e945abbf5`  
		Last Modified: Wed, 27 Sep 2017 04:17:43 GMT  
		Size: 26.3 MB (26280181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996f0768a208aba47f4b233e4811f01563155ffcb0229c033de9e914c2cf0bb1`  
		Last Modified: Wed, 27 Sep 2017 05:38:31 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b28f6be90b01ebdeb5af3cdeba7f58f00e3c10a26b0efbe1767ee52caa06586`  
		Last Modified: Wed, 27 Sep 2017 05:38:40 GMT  
		Size: 22.6 MB (22556017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:b71c8e76f4905a917ae9478bd4f59fbfe03babd7c312f6570f3260eb8f123bfa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.2 MB (54204582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1769e5be9f16107f845afe6528ffb475c8dc97e4fa65c572ead4bc299d2d1d9`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:24:21 GMT
ADD file:e941b26069cf288fadf2ab835d4f0c3a681f3f882d81686662d20f9642928795 in / 
# Fri, 08 Sep 2017 17:24:22 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 19:46:14 GMT
ENV MONO_VERSION=5.2.0.224
# Thu, 21 Sep 2017 19:46:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 21 Sep 2017 19:48:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:01c8fcecd171557c0af8130e86fd47e393a2791dc2ea655cb5f4f0ed6b95ef51`  
		Last Modified: Fri, 08 Sep 2017 17:36:14 GMT  
		Size: 27.5 MB (27480389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d096ab8bd60d945622610873d1f1270da5ad1fd8ea6888944af6c947898340`  
		Last Modified: Thu, 21 Sep 2017 19:54:00 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5124b5cb1141efbdccb20f130b052b89d03025851d69410ebdb394c523fcb160`  
		Last Modified: Thu, 21 Sep 2017 19:54:11 GMT  
		Size: 26.7 MB (26722127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2-slim` - linux; 386

```console
$ docker pull mono@sha256:d921d576c42ca886a2585641c5ad84054066feed1ce85c4a61b842dec4270e0b
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.3 MB (59286958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57432770ee8caf9bb10d2c4e0442ce7b696ebb92c06fd25f729003e485728ad8`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:05 GMT
ADD file:cd8c8c04f635ce6e14de5271949afcf67b9c480ea35ba633423d385975e330ad in / 
# Fri, 08 Sep 2017 13:18:05 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 00:56:44 GMT
ENV MONO_VERSION=5.2.0.224
# Thu, 21 Sep 2017 00:56:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 21 Sep 2017 00:57:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:60dc9bcedd31a278f8b25a98451958fb75022352fe550042039e16ce32422ecf`  
		Last Modified: Fri, 08 Sep 2017 13:23:15 GMT  
		Size: 30.3 MB (30264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15175880c961a6b7c900b029a277d3894efc64a4646a436385786ee4cfd6da64`  
		Last Modified: Thu, 21 Sep 2017 01:03:20 GMT  
		Size: 2.1 KB (2070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc83f83df1ed776f204a3232440dcae199369201687e900d13f6bf7f3f54189`  
		Last Modified: Thu, 21 Sep 2017 01:03:28 GMT  
		Size: 29.0 MB (29020722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5-slim`

```console
$ docker pull mono@sha256:351458832307a737eb647a42922c70910c6a4d088619be04cb8817674046a5cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

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

### `mono:5-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:6900c3f95d445abadae77dadd2378403c2947dab18e58fa9ce55d29069dab760
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48838267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e22b622ac78fe5fd5562dc03eb5f31d489cc56fda3dba8feb4c01c9c2f6c29e7`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:37 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Wed, 27 Sep 2017 04:12:37 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 05:29:57 GMT
ENV MONO_VERSION=5.2.0.224
# Wed, 27 Sep 2017 05:30:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Sep 2017 05:31:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0e9b2aa411a3770acc2fe23d7335dce32b7951c10e3083478590237e945abbf5`  
		Last Modified: Wed, 27 Sep 2017 04:17:43 GMT  
		Size: 26.3 MB (26280181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996f0768a208aba47f4b233e4811f01563155ffcb0229c033de9e914c2cf0bb1`  
		Last Modified: Wed, 27 Sep 2017 05:38:31 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b28f6be90b01ebdeb5af3cdeba7f58f00e3c10a26b0efbe1767ee52caa06586`  
		Last Modified: Wed, 27 Sep 2017 05:38:40 GMT  
		Size: 22.6 MB (22556017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:b71c8e76f4905a917ae9478bd4f59fbfe03babd7c312f6570f3260eb8f123bfa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.2 MB (54204582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1769e5be9f16107f845afe6528ffb475c8dc97e4fa65c572ead4bc299d2d1d9`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:24:21 GMT
ADD file:e941b26069cf288fadf2ab835d4f0c3a681f3f882d81686662d20f9642928795 in / 
# Fri, 08 Sep 2017 17:24:22 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 19:46:14 GMT
ENV MONO_VERSION=5.2.0.224
# Thu, 21 Sep 2017 19:46:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 21 Sep 2017 19:48:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:01c8fcecd171557c0af8130e86fd47e393a2791dc2ea655cb5f4f0ed6b95ef51`  
		Last Modified: Fri, 08 Sep 2017 17:36:14 GMT  
		Size: 27.5 MB (27480389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d096ab8bd60d945622610873d1f1270da5ad1fd8ea6888944af6c947898340`  
		Last Modified: Thu, 21 Sep 2017 19:54:00 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5124b5cb1141efbdccb20f130b052b89d03025851d69410ebdb394c523fcb160`  
		Last Modified: Thu, 21 Sep 2017 19:54:11 GMT  
		Size: 26.7 MB (26722127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; 386

```console
$ docker pull mono@sha256:d921d576c42ca886a2585641c5ad84054066feed1ce85c4a61b842dec4270e0b
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.3 MB (59286958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57432770ee8caf9bb10d2c4e0442ce7b696ebb92c06fd25f729003e485728ad8`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:05 GMT
ADD file:cd8c8c04f635ce6e14de5271949afcf67b9c480ea35ba633423d385975e330ad in / 
# Fri, 08 Sep 2017 13:18:05 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 00:56:44 GMT
ENV MONO_VERSION=5.2.0.224
# Thu, 21 Sep 2017 00:56:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 21 Sep 2017 00:57:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:60dc9bcedd31a278f8b25a98451958fb75022352fe550042039e16ce32422ecf`  
		Last Modified: Fri, 08 Sep 2017 13:23:15 GMT  
		Size: 30.3 MB (30264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15175880c961a6b7c900b029a277d3894efc64a4646a436385786ee4cfd6da64`  
		Last Modified: Thu, 21 Sep 2017 01:03:20 GMT  
		Size: 2.1 KB (2070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc83f83df1ed776f204a3232440dcae199369201687e900d13f6bf7f3f54189`  
		Last Modified: Thu, 21 Sep 2017 01:03:28 GMT  
		Size: 29.0 MB (29020722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:latest`

```console
$ docker pull mono@sha256:6b553ac00e63f048ae40832b334f5d2fe8d2a125a316711e54da74d82b154b0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

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

### `mono:latest` - linux; arm variant v7

```console
$ docker pull mono@sha256:3691d674d96ee13b21bce1319e60d0ab4906428cc35bb4409f7465bc9b235626
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.4 MB (147394048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e16f297920715c9b098cd7997fb1c7a7dc0973914ac177edafdca60a23dce3cc`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:37 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Wed, 27 Sep 2017 04:12:37 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 05:29:57 GMT
ENV MONO_VERSION=5.2.0.224
# Wed, 27 Sep 2017 05:30:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Sep 2017 05:31:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Wed, 27 Sep 2017 05:38:10 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0e9b2aa411a3770acc2fe23d7335dce32b7951c10e3083478590237e945abbf5`  
		Last Modified: Wed, 27 Sep 2017 04:17:43 GMT  
		Size: 26.3 MB (26280181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996f0768a208aba47f4b233e4811f01563155ffcb0229c033de9e914c2cf0bb1`  
		Last Modified: Wed, 27 Sep 2017 05:38:31 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b28f6be90b01ebdeb5af3cdeba7f58f00e3c10a26b0efbe1767ee52caa06586`  
		Last Modified: Wed, 27 Sep 2017 05:38:40 GMT  
		Size: 22.6 MB (22556017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b185ad0cd0b8add29762fab79a18e9fc149f1d4642759df7c81cb7708cf271`  
		Last Modified: Wed, 27 Sep 2017 05:41:15 GMT  
		Size: 98.6 MB (98555781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:36a6f53636bb3c429393f2412a611c1101c9ca47b882deade235249724f55bd6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.0 MB (161988644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b22e566845389cec3e9f474baa6336bb45a7414138b94f80945a4fb1482fdcb`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:24:21 GMT
ADD file:e941b26069cf288fadf2ab835d4f0c3a681f3f882d81686662d20f9642928795 in / 
# Fri, 08 Sep 2017 17:24:22 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 19:46:14 GMT
ENV MONO_VERSION=5.2.0.224
# Thu, 21 Sep 2017 19:46:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 21 Sep 2017 19:48:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 21 Sep 2017 19:53:39 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:01c8fcecd171557c0af8130e86fd47e393a2791dc2ea655cb5f4f0ed6b95ef51`  
		Last Modified: Fri, 08 Sep 2017 17:36:14 GMT  
		Size: 27.5 MB (27480389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d096ab8bd60d945622610873d1f1270da5ad1fd8ea6888944af6c947898340`  
		Last Modified: Thu, 21 Sep 2017 19:54:00 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5124b5cb1141efbdccb20f130b052b89d03025851d69410ebdb394c523fcb160`  
		Last Modified: Thu, 21 Sep 2017 19:54:11 GMT  
		Size: 26.7 MB (26722127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414b92f57da575836e097b774f47c35e32eb7f5b6ef433064e0e9d7d756e9c9e`  
		Last Modified: Thu, 21 Sep 2017 19:55:39 GMT  
		Size: 107.8 MB (107784062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; 386

```console
$ docker pull mono@sha256:8e5d13dcb093947043247eadcee2be8e6716995c50c054185193321499ddc00a
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.4 MB (169437972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0811cdbf3f158c2932c6ea9bb0befa56a138ad0006d10cd67a3f7c9366c4f3a`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:05 GMT
ADD file:cd8c8c04f635ce6e14de5271949afcf67b9c480ea35ba633423d385975e330ad in / 
# Fri, 08 Sep 2017 13:18:05 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 00:56:44 GMT
ENV MONO_VERSION=5.2.0.224
# Thu, 21 Sep 2017 00:56:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 21 Sep 2017 00:57:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Thu, 21 Sep 2017 00:59:46 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:60dc9bcedd31a278f8b25a98451958fb75022352fe550042039e16ce32422ecf`  
		Last Modified: Fri, 08 Sep 2017 13:23:15 GMT  
		Size: 30.3 MB (30264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15175880c961a6b7c900b029a277d3894efc64a4646a436385786ee4cfd6da64`  
		Last Modified: Thu, 21 Sep 2017 01:03:20 GMT  
		Size: 2.1 KB (2070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc83f83df1ed776f204a3232440dcae199369201687e900d13f6bf7f3f54189`  
		Last Modified: Thu, 21 Sep 2017 01:03:28 GMT  
		Size: 29.0 MB (29020722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c560d45c2d827612e123b2086ecd6ce007522fc0da32907d858fc4cf699678`  
		Last Modified: Thu, 21 Sep 2017 01:04:25 GMT  
		Size: 110.2 MB (110151014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:slim`

```console
$ docker pull mono@sha256:351458832307a737eb647a42922c70910c6a4d088619be04cb8817674046a5cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

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

### `mono:slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:6900c3f95d445abadae77dadd2378403c2947dab18e58fa9ce55d29069dab760
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 MB (48838267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e22b622ac78fe5fd5562dc03eb5f31d489cc56fda3dba8feb4c01c9c2f6c29e7`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:12:37 GMT
ADD file:57987b9433dedaf9ae81e7468bc4c360fb4cdb30c58bab120fb378b5ecfe0956 in / 
# Wed, 27 Sep 2017 04:12:37 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 05:29:57 GMT
ENV MONO_VERSION=5.2.0.224
# Wed, 27 Sep 2017 05:30:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 27 Sep 2017 05:31:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:0e9b2aa411a3770acc2fe23d7335dce32b7951c10e3083478590237e945abbf5`  
		Last Modified: Wed, 27 Sep 2017 04:17:43 GMT  
		Size: 26.3 MB (26280181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996f0768a208aba47f4b233e4811f01563155ffcb0229c033de9e914c2cf0bb1`  
		Last Modified: Wed, 27 Sep 2017 05:38:31 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b28f6be90b01ebdeb5af3cdeba7f58f00e3c10a26b0efbe1767ee52caa06586`  
		Last Modified: Wed, 27 Sep 2017 05:38:40 GMT  
		Size: 22.6 MB (22556017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:b71c8e76f4905a917ae9478bd4f59fbfe03babd7c312f6570f3260eb8f123bfa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.2 MB (54204582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1769e5be9f16107f845afe6528ffb475c8dc97e4fa65c572ead4bc299d2d1d9`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:24:21 GMT
ADD file:e941b26069cf288fadf2ab835d4f0c3a681f3f882d81686662d20f9642928795 in / 
# Fri, 08 Sep 2017 17:24:22 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 19:46:14 GMT
ENV MONO_VERSION=5.2.0.224
# Thu, 21 Sep 2017 19:46:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 21 Sep 2017 19:48:09 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:01c8fcecd171557c0af8130e86fd47e393a2791dc2ea655cb5f4f0ed6b95ef51`  
		Last Modified: Fri, 08 Sep 2017 17:36:14 GMT  
		Size: 27.5 MB (27480389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d096ab8bd60d945622610873d1f1270da5ad1fd8ea6888944af6c947898340`  
		Last Modified: Thu, 21 Sep 2017 19:54:00 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5124b5cb1141efbdccb20f130b052b89d03025851d69410ebdb394c523fcb160`  
		Last Modified: Thu, 21 Sep 2017 19:54:11 GMT  
		Size: 26.7 MB (26722127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; 386

```console
$ docker pull mono@sha256:d921d576c42ca886a2585641c5ad84054066feed1ce85c4a61b842dec4270e0b
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.3 MB (59286958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57432770ee8caf9bb10d2c4e0442ce7b696ebb92c06fd25f729003e485728ad8`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 13:18:05 GMT
ADD file:cd8c8c04f635ce6e14de5271949afcf67b9c480ea35ba633423d385975e330ad in / 
# Fri, 08 Sep 2017 13:18:05 GMT
CMD ["bash"]
# Thu, 21 Sep 2017 00:56:44 GMT
ENV MONO_VERSION=5.2.0.224
# Thu, 21 Sep 2017 00:56:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 21 Sep 2017 00:57:50 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:60dc9bcedd31a278f8b25a98451958fb75022352fe550042039e16ce32422ecf`  
		Last Modified: Fri, 08 Sep 2017 13:23:15 GMT  
		Size: 30.3 MB (30264166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15175880c961a6b7c900b029a277d3894efc64a4646a436385786ee4cfd6da64`  
		Last Modified: Thu, 21 Sep 2017 01:03:20 GMT  
		Size: 2.1 KB (2070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc83f83df1ed776f204a3232440dcae199369201687e900d13f6bf7f3f54189`  
		Last Modified: Thu, 21 Sep 2017 01:03:28 GMT  
		Size: 29.0 MB (29020722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
