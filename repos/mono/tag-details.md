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
$ docker pull mono@sha256:d29d6644dd753a82c64c25163ccc0cdf809364511874ce7138924941a2e192af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4` - linux; amd64

```console
$ docker pull mono@sha256:ff8097ebaf39ddc2c6e8fbd346301c048f12fd952848e4f2ea62f03c830cea27
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153024349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70f1b797135b116f95c5cef971ef6ff81e03b600ac1550bb0649aaf5d5e1f54a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:34:51 GMT
ADD file:4a0b4ab0f637224302bf3f7a7eedc5b75a404bc1188499ef2f98edb7ce44d0ed in / 
# Mon, 09 Oct 2017 21:34:51 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:17:14 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 10 Oct 2017 00:17:14 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 10 Oct 2017 00:17:26 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:17:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 10 Oct 2017 00:18:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:39e552a2b1f74a9985244528219d26fc1c27f1447a3d04e64b63bd70a4e68e2c`  
		Last Modified: Mon, 09 Oct 2017 21:44:19 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:180cd2499a2a4b629526fdc68105bc629ca63a7bea8a833441122827454a86f5`  
		Last Modified: Tue, 10 Oct 2017 00:22:24 GMT  
		Size: 7.8 MB (7756847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b9a0d63277d1d98df3fb4df30d210a668c428c5bbe976638470e13b05bebad`  
		Last Modified: Tue, 10 Oct 2017 00:22:22 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae42c686a790511fbf3e7662f3b37eae2cfb135f7ec0953612a658318cbfe32`  
		Last Modified: Tue, 10 Oct 2017 00:23:39 GMT  
		Size: 107.1 MB (107134470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4` - linux; arm variant v7

```console
$ docker pull mono@sha256:c8282c63b0657e85ca373a757d4a850fb0cfe6130a71e8bdf25d4a2f3c74429c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138941885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6525f935a0b30889a88f34dbc57ef3b51a1808ad464e212dde3c2d792bc7c410`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:03 GMT
ADD file:2e5b4a4fc5b75973c1d5baf0c2d71c37c885ed3b7f8aa0b0b9f34ed22cd4b952 in / 
# Mon, 09 Oct 2017 21:47:04 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:42:44 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 09 Oct 2017 22:42:44 GMT
ENV MONO_VERSION=4.8.0.524
# Mon, 09 Oct 2017 22:43:00 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:43:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 09 Oct 2017 22:44:12 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:485e828d0b07d98838a9442f5d3a10b1e2bf33bfd798a57660b9133a8fa44228`  
		Last Modified: Mon, 09 Oct 2017 21:55:54 GMT  
		Size: 35.7 MB (35656407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4ba70ddab89634918ba367ef6ac77d5596028f4dc763528650b2c78ed6a23a`  
		Last Modified: Mon, 09 Oct 2017 22:48:15 GMT  
		Size: 7.2 MB (7185219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aceca04ff4a1d3d3f4e6e2cd90d650f727125cc39e1f817ab8f852a68a21ce9`  
		Last Modified: Mon, 09 Oct 2017 22:48:13 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d2d9df1964d7221d99ece2c0451f48ba27f196b87d09e10707f9d0e3c0979f`  
		Last Modified: Mon, 09 Oct 2017 22:48:49 GMT  
		Size: 96.1 MB (96070353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4` - linux; 386

```console
$ docker pull mono@sha256:c25f804fcdba6c94aa923cde4cfcbde6242c2fe2b51d4344ed0b22c7fa6d2bce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153031073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f62f6604e72f7ccc28b7503d620b28645f4d1b70ec087c962189fd756c15ea5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:46:33 GMT
ADD file:f5171b66c2082a6d1e8b5777fb0292564788effc1338f44ece9dc7b4eccd2374 in / 
# Mon, 09 Oct 2017 21:46:33 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:27:38 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 09 Oct 2017 22:27:38 GMT
ENV MONO_VERSION=4.8.0.524
# Mon, 09 Oct 2017 22:27:55 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:27:57 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 09 Oct 2017 22:29:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:827d66beec7d37d54d975d338834e5a422854c71c84b2ad3b652f85537277bae`  
		Last Modified: Mon, 09 Oct 2017 22:00:34 GMT  
		Size: 37.4 MB (37433248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8070f4756a69574994ccaa2600f91a9a0120f8c4d6abd8b55d4b30c2674c32b1`  
		Last Modified: Mon, 09 Oct 2017 22:41:17 GMT  
		Size: 9.6 MB (9606718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee92c800704e678bd3b210eca76793a8b500af53c626e263ffa41f1017521c72`  
		Last Modified: Mon, 09 Oct 2017 22:41:14 GMT  
		Size: 29.9 KB (29907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeeaa104eb3b78a5310fd9e38ec0e7f86cd3c9018dd91563d05da2bc8ed74ed5`  
		Last Modified: Mon, 09 Oct 2017 22:41:40 GMT  
		Size: 106.0 MB (105961200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8`

```console
$ docker pull mono@sha256:d29d6644dd753a82c64c25163ccc0cdf809364511874ce7138924941a2e192af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8` - linux; amd64

```console
$ docker pull mono@sha256:ff8097ebaf39ddc2c6e8fbd346301c048f12fd952848e4f2ea62f03c830cea27
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153024349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70f1b797135b116f95c5cef971ef6ff81e03b600ac1550bb0649aaf5d5e1f54a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:34:51 GMT
ADD file:4a0b4ab0f637224302bf3f7a7eedc5b75a404bc1188499ef2f98edb7ce44d0ed in / 
# Mon, 09 Oct 2017 21:34:51 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:17:14 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 10 Oct 2017 00:17:14 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 10 Oct 2017 00:17:26 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:17:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 10 Oct 2017 00:18:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:39e552a2b1f74a9985244528219d26fc1c27f1447a3d04e64b63bd70a4e68e2c`  
		Last Modified: Mon, 09 Oct 2017 21:44:19 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:180cd2499a2a4b629526fdc68105bc629ca63a7bea8a833441122827454a86f5`  
		Last Modified: Tue, 10 Oct 2017 00:22:24 GMT  
		Size: 7.8 MB (7756847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b9a0d63277d1d98df3fb4df30d210a668c428c5bbe976638470e13b05bebad`  
		Last Modified: Tue, 10 Oct 2017 00:22:22 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae42c686a790511fbf3e7662f3b37eae2cfb135f7ec0953612a658318cbfe32`  
		Last Modified: Tue, 10 Oct 2017 00:23:39 GMT  
		Size: 107.1 MB (107134470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8` - linux; arm variant v7

```console
$ docker pull mono@sha256:c8282c63b0657e85ca373a757d4a850fb0cfe6130a71e8bdf25d4a2f3c74429c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138941885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6525f935a0b30889a88f34dbc57ef3b51a1808ad464e212dde3c2d792bc7c410`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:03 GMT
ADD file:2e5b4a4fc5b75973c1d5baf0c2d71c37c885ed3b7f8aa0b0b9f34ed22cd4b952 in / 
# Mon, 09 Oct 2017 21:47:04 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:42:44 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 09 Oct 2017 22:42:44 GMT
ENV MONO_VERSION=4.8.0.524
# Mon, 09 Oct 2017 22:43:00 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:43:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 09 Oct 2017 22:44:12 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:485e828d0b07d98838a9442f5d3a10b1e2bf33bfd798a57660b9133a8fa44228`  
		Last Modified: Mon, 09 Oct 2017 21:55:54 GMT  
		Size: 35.7 MB (35656407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4ba70ddab89634918ba367ef6ac77d5596028f4dc763528650b2c78ed6a23a`  
		Last Modified: Mon, 09 Oct 2017 22:48:15 GMT  
		Size: 7.2 MB (7185219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aceca04ff4a1d3d3f4e6e2cd90d650f727125cc39e1f817ab8f852a68a21ce9`  
		Last Modified: Mon, 09 Oct 2017 22:48:13 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d2d9df1964d7221d99ece2c0451f48ba27f196b87d09e10707f9d0e3c0979f`  
		Last Modified: Mon, 09 Oct 2017 22:48:49 GMT  
		Size: 96.1 MB (96070353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8` - linux; 386

```console
$ docker pull mono@sha256:c25f804fcdba6c94aa923cde4cfcbde6242c2fe2b51d4344ed0b22c7fa6d2bce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153031073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f62f6604e72f7ccc28b7503d620b28645f4d1b70ec087c962189fd756c15ea5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:46:33 GMT
ADD file:f5171b66c2082a6d1e8b5777fb0292564788effc1338f44ece9dc7b4eccd2374 in / 
# Mon, 09 Oct 2017 21:46:33 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:27:38 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 09 Oct 2017 22:27:38 GMT
ENV MONO_VERSION=4.8.0.524
# Mon, 09 Oct 2017 22:27:55 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:27:57 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 09 Oct 2017 22:29:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:827d66beec7d37d54d975d338834e5a422854c71c84b2ad3b652f85537277bae`  
		Last Modified: Mon, 09 Oct 2017 22:00:34 GMT  
		Size: 37.4 MB (37433248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8070f4756a69574994ccaa2600f91a9a0120f8c4d6abd8b55d4b30c2674c32b1`  
		Last Modified: Mon, 09 Oct 2017 22:41:17 GMT  
		Size: 9.6 MB (9606718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee92c800704e678bd3b210eca76793a8b500af53c626e263ffa41f1017521c72`  
		Last Modified: Mon, 09 Oct 2017 22:41:14 GMT  
		Size: 29.9 KB (29907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeeaa104eb3b78a5310fd9e38ec0e7f86cd3c9018dd91563d05da2bc8ed74ed5`  
		Last Modified: Mon, 09 Oct 2017 22:41:40 GMT  
		Size: 106.0 MB (105961200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0`

```console
$ docker pull mono@sha256:d29d6644dd753a82c64c25163ccc0cdf809364511874ce7138924941a2e192af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8.0` - linux; amd64

```console
$ docker pull mono@sha256:ff8097ebaf39ddc2c6e8fbd346301c048f12fd952848e4f2ea62f03c830cea27
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153024349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70f1b797135b116f95c5cef971ef6ff81e03b600ac1550bb0649aaf5d5e1f54a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:34:51 GMT
ADD file:4a0b4ab0f637224302bf3f7a7eedc5b75a404bc1188499ef2f98edb7ce44d0ed in / 
# Mon, 09 Oct 2017 21:34:51 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:17:14 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 10 Oct 2017 00:17:14 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 10 Oct 2017 00:17:26 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:17:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 10 Oct 2017 00:18:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:39e552a2b1f74a9985244528219d26fc1c27f1447a3d04e64b63bd70a4e68e2c`  
		Last Modified: Mon, 09 Oct 2017 21:44:19 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:180cd2499a2a4b629526fdc68105bc629ca63a7bea8a833441122827454a86f5`  
		Last Modified: Tue, 10 Oct 2017 00:22:24 GMT  
		Size: 7.8 MB (7756847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b9a0d63277d1d98df3fb4df30d210a668c428c5bbe976638470e13b05bebad`  
		Last Modified: Tue, 10 Oct 2017 00:22:22 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae42c686a790511fbf3e7662f3b37eae2cfb135f7ec0953612a658318cbfe32`  
		Last Modified: Tue, 10 Oct 2017 00:23:39 GMT  
		Size: 107.1 MB (107134470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0` - linux; arm variant v7

```console
$ docker pull mono@sha256:c8282c63b0657e85ca373a757d4a850fb0cfe6130a71e8bdf25d4a2f3c74429c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138941885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6525f935a0b30889a88f34dbc57ef3b51a1808ad464e212dde3c2d792bc7c410`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:03 GMT
ADD file:2e5b4a4fc5b75973c1d5baf0c2d71c37c885ed3b7f8aa0b0b9f34ed22cd4b952 in / 
# Mon, 09 Oct 2017 21:47:04 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:42:44 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 09 Oct 2017 22:42:44 GMT
ENV MONO_VERSION=4.8.0.524
# Mon, 09 Oct 2017 22:43:00 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:43:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 09 Oct 2017 22:44:12 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:485e828d0b07d98838a9442f5d3a10b1e2bf33bfd798a57660b9133a8fa44228`  
		Last Modified: Mon, 09 Oct 2017 21:55:54 GMT  
		Size: 35.7 MB (35656407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4ba70ddab89634918ba367ef6ac77d5596028f4dc763528650b2c78ed6a23a`  
		Last Modified: Mon, 09 Oct 2017 22:48:15 GMT  
		Size: 7.2 MB (7185219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aceca04ff4a1d3d3f4e6e2cd90d650f727125cc39e1f817ab8f852a68a21ce9`  
		Last Modified: Mon, 09 Oct 2017 22:48:13 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d2d9df1964d7221d99ece2c0451f48ba27f196b87d09e10707f9d0e3c0979f`  
		Last Modified: Mon, 09 Oct 2017 22:48:49 GMT  
		Size: 96.1 MB (96070353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0` - linux; 386

```console
$ docker pull mono@sha256:c25f804fcdba6c94aa923cde4cfcbde6242c2fe2b51d4344ed0b22c7fa6d2bce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153031073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f62f6604e72f7ccc28b7503d620b28645f4d1b70ec087c962189fd756c15ea5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:46:33 GMT
ADD file:f5171b66c2082a6d1e8b5777fb0292564788effc1338f44ece9dc7b4eccd2374 in / 
# Mon, 09 Oct 2017 21:46:33 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:27:38 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 09 Oct 2017 22:27:38 GMT
ENV MONO_VERSION=4.8.0.524
# Mon, 09 Oct 2017 22:27:55 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:27:57 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 09 Oct 2017 22:29:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:827d66beec7d37d54d975d338834e5a422854c71c84b2ad3b652f85537277bae`  
		Last Modified: Mon, 09 Oct 2017 22:00:34 GMT  
		Size: 37.4 MB (37433248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8070f4756a69574994ccaa2600f91a9a0120f8c4d6abd8b55d4b30c2674c32b1`  
		Last Modified: Mon, 09 Oct 2017 22:41:17 GMT  
		Size: 9.6 MB (9606718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee92c800704e678bd3b210eca76793a8b500af53c626e263ffa41f1017521c72`  
		Last Modified: Mon, 09 Oct 2017 22:41:14 GMT  
		Size: 29.9 KB (29907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeeaa104eb3b78a5310fd9e38ec0e7f86cd3c9018dd91563d05da2bc8ed74ed5`  
		Last Modified: Mon, 09 Oct 2017 22:41:40 GMT  
		Size: 106.0 MB (105961200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0.524`

```console
$ docker pull mono@sha256:d29d6644dd753a82c64c25163ccc0cdf809364511874ce7138924941a2e192af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; 386

### `mono:4.8.0.524` - linux; amd64

```console
$ docker pull mono@sha256:ff8097ebaf39ddc2c6e8fbd346301c048f12fd952848e4f2ea62f03c830cea27
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153024349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70f1b797135b116f95c5cef971ef6ff81e03b600ac1550bb0649aaf5d5e1f54a`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:34:51 GMT
ADD file:4a0b4ab0f637224302bf3f7a7eedc5b75a404bc1188499ef2f98edb7ce44d0ed in / 
# Mon, 09 Oct 2017 21:34:51 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:17:14 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 10 Oct 2017 00:17:14 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 10 Oct 2017 00:17:26 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:17:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 10 Oct 2017 00:18:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:39e552a2b1f74a9985244528219d26fc1c27f1447a3d04e64b63bd70a4e68e2c`  
		Last Modified: Mon, 09 Oct 2017 21:44:19 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:180cd2499a2a4b629526fdc68105bc629ca63a7bea8a833441122827454a86f5`  
		Last Modified: Tue, 10 Oct 2017 00:22:24 GMT  
		Size: 7.8 MB (7756847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b9a0d63277d1d98df3fb4df30d210a668c428c5bbe976638470e13b05bebad`  
		Last Modified: Tue, 10 Oct 2017 00:22:22 GMT  
		Size: 29.9 KB (29905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae42c686a790511fbf3e7662f3b37eae2cfb135f7ec0953612a658318cbfe32`  
		Last Modified: Tue, 10 Oct 2017 00:23:39 GMT  
		Size: 107.1 MB (107134470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0.524` - linux; arm variant v7

```console
$ docker pull mono@sha256:c8282c63b0657e85ca373a757d4a850fb0cfe6130a71e8bdf25d4a2f3c74429c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138941885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6525f935a0b30889a88f34dbc57ef3b51a1808ad464e212dde3c2d792bc7c410`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:03 GMT
ADD file:2e5b4a4fc5b75973c1d5baf0c2d71c37c885ed3b7f8aa0b0b9f34ed22cd4b952 in / 
# Mon, 09 Oct 2017 21:47:04 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:42:44 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 09 Oct 2017 22:42:44 GMT
ENV MONO_VERSION=4.8.0.524
# Mon, 09 Oct 2017 22:43:00 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:43:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 09 Oct 2017 22:44:12 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:485e828d0b07d98838a9442f5d3a10b1e2bf33bfd798a57660b9133a8fa44228`  
		Last Modified: Mon, 09 Oct 2017 21:55:54 GMT  
		Size: 35.7 MB (35656407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4ba70ddab89634918ba367ef6ac77d5596028f4dc763528650b2c78ed6a23a`  
		Last Modified: Mon, 09 Oct 2017 22:48:15 GMT  
		Size: 7.2 MB (7185219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aceca04ff4a1d3d3f4e6e2cd90d650f727125cc39e1f817ab8f852a68a21ce9`  
		Last Modified: Mon, 09 Oct 2017 22:48:13 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d2d9df1964d7221d99ece2c0451f48ba27f196b87d09e10707f9d0e3c0979f`  
		Last Modified: Mon, 09 Oct 2017 22:48:49 GMT  
		Size: 96.1 MB (96070353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:4.8.0.524` - linux; 386

```console
$ docker pull mono@sha256:c25f804fcdba6c94aa923cde4cfcbde6242c2fe2b51d4344ed0b22c7fa6d2bce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153031073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f62f6604e72f7ccc28b7503d620b28645f4d1b70ec087c962189fd756c15ea5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:46:33 GMT
ADD file:f5171b66c2082a6d1e8b5777fb0292564788effc1338f44ece9dc7b4eccd2374 in / 
# Mon, 09 Oct 2017 21:46:33 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:27:38 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Mon, 09 Oct 2017 22:27:38 GMT
ENV MONO_VERSION=4.8.0.524
# Mon, 09 Oct 2017 22:27:55 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:27:57 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 09 Oct 2017 22:29:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:827d66beec7d37d54d975d338834e5a422854c71c84b2ad3b652f85537277bae`  
		Last Modified: Mon, 09 Oct 2017 22:00:34 GMT  
		Size: 37.4 MB (37433248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8070f4756a69574994ccaa2600f91a9a0120f8c4d6abd8b55d4b30c2674c32b1`  
		Last Modified: Mon, 09 Oct 2017 22:41:17 GMT  
		Size: 9.6 MB (9606718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee92c800704e678bd3b210eca76793a8b500af53c626e263ffa41f1017521c72`  
		Last Modified: Mon, 09 Oct 2017 22:41:14 GMT  
		Size: 29.9 KB (29907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeeaa104eb3b78a5310fd9e38ec0e7f86cd3c9018dd91563d05da2bc8ed74ed5`  
		Last Modified: Mon, 09 Oct 2017 22:41:40 GMT  
		Size: 106.0 MB (105961200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5`

```console
$ docker pull mono@sha256:d0a58d5b964e7455a3b33d511cf193fb3c5ad6490c20762cfa0ecc10c1623e50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5` - linux; amd64

```console
$ docker pull mono@sha256:9a61311f382cca999579d4ceb75015e41f3b1c4aadf3d81d3f6915363c46f114
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.0 MB (170039430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6df13f0b8472f903345aa10b310e849d6e8ee03035895d53a805b4d19ba9ad9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:10:52 GMT
ENV MONO_VERSION=5.2.0.224
# Tue, 10 Oct 2017 00:10:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 10 Oct 2017 00:11:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 10 Oct 2017 00:20:10 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752ae4b42e2f5c6231e4c843dd5c8afde29150a1124d4720d9ef641e35b8bf7f`  
		Last Modified: Tue, 10 Oct 2017 00:20:30 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7865de4a94d89f524c7706d368c9d1695df91cc9cb22d8e08a796f511aaf3`  
		Last Modified: Tue, 10 Oct 2017 00:20:38 GMT  
		Size: 27.2 MB (27240757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b6ed2742ed96eaf012de781ddf0dab03056127a4742536d08659ae4dc5bdf9`  
		Last Modified: Tue, 10 Oct 2017 00:24:57 GMT  
		Size: 112.7 MB (112683295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; arm variant v7

```console
$ docker pull mono@sha256:6e9525473bd50383ed051de2684191f7b1fdc3302d5de4427784f167b11308a3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148926184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fc645b4287b2e09c20b160ab09826ce50340bb8db3154dede723b22c120cf28`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:0cd8ed314febdbf680645d20f346d9bac16fad5654c0b0d6ce2dec7c27c17b9a in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:38:16 GMT
ENV MONO_VERSION=5.2.0.224
# Mon, 09 Oct 2017 22:38:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 09 Oct 2017 22:39:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 09 Oct 2017 22:46:21 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:02620033936d6cf3514a813f366025a14370f5dfe654e89eaca3a56b357e88c2`  
		Last Modified: Mon, 09 Oct 2017 21:49:15 GMT  
		Size: 26.3 MB (26280982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a56441a0716875f22a9f06959373f0a4996fa3191b02886e369c44e807e3204`  
		Last Modified: Mon, 09 Oct 2017 22:46:44 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9587a8ff6452a2e1fc4be530cee25fb8d71cc6d55058572cb5e8e2646d13518`  
		Last Modified: Mon, 09 Oct 2017 22:46:53 GMT  
		Size: 21.1 MB (21089899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f6ae07749836a1d621d2b4845d6f5933b4e707793cde023a4a9b3bd8b0cc08`  
		Last Modified: Mon, 09 Oct 2017 22:49:47 GMT  
		Size: 101.6 MB (101553239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:fb7985d24357e4b148439e36383f8bef8d7c1867ef6f7f3cb7d3bc10092f35f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.5 MB (163490268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44373cb770a49a7726792c5350bc4d741ecce60d041fd381b1d2c885e9be7abe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:51 GMT
ADD file:75f5768db078e9eee90676141a2c9faa9ce02768b7c9cd6e588bdd5ffc0f65e3 in / 
# Mon, 09 Oct 2017 21:43:51 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:32:53 GMT
ENV MONO_VERSION=5.2.0.224
# Tue, 10 Oct 2017 01:33:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 10 Oct 2017 01:38:36 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 10 Oct 2017 01:59:39 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f2da27d97c13e9e531eda9577a28eb81b0d9034d7fd7e6575bd92744eed500f6`  
		Last Modified: Mon, 09 Oct 2017 21:53:20 GMT  
		Size: 27.5 MB (27480591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae39572730019ff3f4db8884b4c1bf3c1de81cdd121dd3ab0475a279d18809fd`  
		Last Modified: Tue, 10 Oct 2017 02:00:19 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be99f966e1dbb256ca4032fbc6388b8507d4fe83692101907a11fad70e6f2f8b`  
		Last Modified: Tue, 10 Oct 2017 02:00:31 GMT  
		Size: 25.2 MB (25220657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996c092fc7ef0fcd0f6dfa55f1bf82a6358092ed832c60269d6de3af2b500098`  
		Last Modified: Tue, 10 Oct 2017 02:04:16 GMT  
		Size: 110.8 MB (110786954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5` - linux; 386

```console
$ docker pull mono@sha256:e341094d302b3ca4b0b3fca0b96741fdd462e4a2895e76e558b7a91dae5373b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.5 MB (172479663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4a529a31f872997045344a825cb70b3a722ab302729ece5432fbafd20ce616b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:30 GMT
ADD file:169ab3194fd1b25e06359d6eceb655093f44f0255c799ae8a3fc5bf8ba50fd8d in / 
# Mon, 09 Oct 2017 21:42:31 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:19:09 GMT
ENV MONO_VERSION=5.2.0.224
# Mon, 09 Oct 2017 22:19:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 09 Oct 2017 22:20:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 09 Oct 2017 22:32:14 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d8b3cf5f6e0f087738d5589b812e12f5b8781935412c95d15f2f77d68657b006`  
		Last Modified: Mon, 09 Oct 2017 21:48:54 GMT  
		Size: 30.3 MB (30264454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2c998c1029c632021db5f103d73d3d976670e9b49dc7bfbfd3151098e30ac8`  
		Last Modified: Mon, 09 Oct 2017 22:35:57 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c26cf3f2f75893c1984b2db1156c5e8070ab23332250940e960ba44a5e6440`  
		Last Modified: Mon, 09 Oct 2017 22:36:09 GMT  
		Size: 29.0 MB (29021157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf125317f61dc10c728b70c279d3f98c9a2493524969f7a234838e3fd8312c0f`  
		Last Modified: Mon, 09 Oct 2017 22:42:38 GMT  
		Size: 113.2 MB (113191983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.0`

```console
$ docker pull mono@sha256:911b28c379d087e94cbea08119b8f3be659a543c4bfb644a632bae76546e54a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.0` - linux; amd64

```console
$ docker pull mono@sha256:e8da9def071fc47e6dd2f5102db16313aff03037e98f3fb3095390cedf04c0d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.2 MB (164211802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:483677300523a085f08a64fcd84ea19dae1f40ff96d9d91fc32a8b0a1b70751e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:11:55 GMT
ENV MONO_VERSION=5.0.1.1
# Tue, 10 Oct 2017 00:12:15 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:12:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 10 Oct 2017 00:14:00 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e2af775a980fcdbefdd95eaba5ebdde0de8938700b70e2fd2dd6eba32ad7be`  
		Last Modified: Tue, 10 Oct 2017 00:21:20 GMT  
		Size: 5.0 MB (5012281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66fd3f03e293d9db4071bb033333fcd463846801b90749fb170f93109d363bf`  
		Last Modified: Tue, 10 Oct 2017 00:21:18 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e09466150fe902300311aebbaac8136a1cd793bd29f62c508bc93cfa64538284`  
		Last Modified: Tue, 10 Oct 2017 00:21:55 GMT  
		Size: 129.1 MB (129084140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.0` - linux; arm variant v7

```console
$ docker pull mono@sha256:7666b7f06508ebfa695b8e8665611f49a3d4b287ae96f58311d34dc634172282
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.2 MB (143151960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd3f1238bf128d519963e0e3ca2e89f190ffc96db5233fdcb2ea76583b02826e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:0cd8ed314febdbf680645d20f346d9bac16fad5654c0b0d6ce2dec7c27c17b9a in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:39:37 GMT
ENV MONO_VERSION=5.0.1.1
# Mon, 09 Oct 2017 22:40:15 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:40:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 09 Oct 2017 22:42:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:02620033936d6cf3514a813f366025a14370f5dfe654e89eaca3a56b357e88c2`  
		Last Modified: Mon, 09 Oct 2017 21:49:15 GMT  
		Size: 26.3 MB (26280982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16f474b755ce91b784371ad9ceca65cabfa4eafb76ab056c9ab8241e9de21636`  
		Last Modified: Mon, 09 Oct 2017 22:47:18 GMT  
		Size: 4.3 MB (4344556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5f708c46e5198ec506c8c1bb4a53923f412eaf47cb4cae22055f49a57dc619`  
		Last Modified: Mon, 09 Oct 2017 22:47:16 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ddf21b723d758ca620e277d7673d750edd5ef133d932409a35f880837dd5243`  
		Last Modified: Mon, 09 Oct 2017 22:47:56 GMT  
		Size: 112.5 MB (112524359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.0` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:db9f940fdab8eeb3743b1d34399c9fbd2f31effe6ceff44e8beea992b71ca3c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.6 MB (157632508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd8986981a9949636a1150af0fda18991846f0d52abda5edc38277694806121`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:51 GMT
ADD file:75f5768db078e9eee90676141a2c9faa9ce02768b7c9cd6e588bdd5ffc0f65e3 in / 
# Mon, 09 Oct 2017 21:43:51 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:38:49 GMT
ENV MONO_VERSION=5.0.1.1
# Tue, 10 Oct 2017 01:39:51 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:39:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 10 Oct 2017 01:49:45 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f2da27d97c13e9e531eda9577a28eb81b0d9034d7fd7e6575bd92744eed500f6`  
		Last Modified: Mon, 09 Oct 2017 21:53:20 GMT  
		Size: 27.5 MB (27480591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2e04d9663a82121214acf4066c6e05ae84e8c793822bd9b4e9d81cfdc6f082`  
		Last Modified: Tue, 10 Oct 2017 02:01:57 GMT  
		Size: 4.5 MB (4504418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95506ca08b1400981d76f9b0900856a5aa3fc3c6455b9a8dd6a8da6ee422b1`  
		Last Modified: Tue, 10 Oct 2017 02:01:56 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1a5e274a20d20b06a7d31c08ec62e97572ff1171c16632bb7e202e7597e4a43`  
		Last Modified: Tue, 10 Oct 2017 02:02:47 GMT  
		Size: 125.6 MB (125645434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.0` - linux; 386

```console
$ docker pull mono@sha256:3eb1aa6ac73ac0c8b44aaec2ac8ec53edc8e4e7adbc1e344ff9318bbe33fb506
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166732474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0726b9eb52c21ad3ab223e89027a666af2eaee18cd258b3cbc8547b932566bcd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:30 GMT
ADD file:169ab3194fd1b25e06359d6eceb655093f44f0255c799ae8a3fc5bf8ba50fd8d in / 
# Mon, 09 Oct 2017 21:42:31 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:20:31 GMT
ENV MONO_VERSION=5.0.1.1
# Mon, 09 Oct 2017 22:21:15 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:21:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 09 Oct 2017 22:24:10 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d8b3cf5f6e0f087738d5589b812e12f5b8781935412c95d15f2f77d68657b006`  
		Last Modified: Mon, 09 Oct 2017 21:48:54 GMT  
		Size: 30.3 MB (30264454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e00b7c099e0fab0246987e5a2a83b9da214447324376c79a2722690f5143c290`  
		Last Modified: Mon, 09 Oct 2017 22:36:47 GMT  
		Size: 7.2 MB (7220159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eebdc1774b375a33151ebabf3767200b356625f41d6b39c84719b8fba57ec2e`  
		Last Modified: Mon, 09 Oct 2017 22:36:45 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4079c32977232d8dd336a8dfbb00f462c9425ab3875b4f6fff06c6950b9856`  
		Last Modified: Mon, 09 Oct 2017 22:37:21 GMT  
		Size: 129.2 MB (129245796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.0.1`

```console
$ docker pull mono@sha256:911b28c379d087e94cbea08119b8f3be659a543c4bfb644a632bae76546e54a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.0.1` - linux; amd64

```console
$ docker pull mono@sha256:e8da9def071fc47e6dd2f5102db16313aff03037e98f3fb3095390cedf04c0d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.2 MB (164211802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:483677300523a085f08a64fcd84ea19dae1f40ff96d9d91fc32a8b0a1b70751e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:11:55 GMT
ENV MONO_VERSION=5.0.1.1
# Tue, 10 Oct 2017 00:12:15 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:12:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 10 Oct 2017 00:14:00 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e2af775a980fcdbefdd95eaba5ebdde0de8938700b70e2fd2dd6eba32ad7be`  
		Last Modified: Tue, 10 Oct 2017 00:21:20 GMT  
		Size: 5.0 MB (5012281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66fd3f03e293d9db4071bb033333fcd463846801b90749fb170f93109d363bf`  
		Last Modified: Tue, 10 Oct 2017 00:21:18 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e09466150fe902300311aebbaac8136a1cd793bd29f62c508bc93cfa64538284`  
		Last Modified: Tue, 10 Oct 2017 00:21:55 GMT  
		Size: 129.1 MB (129084140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.0.1` - linux; arm variant v7

```console
$ docker pull mono@sha256:7666b7f06508ebfa695b8e8665611f49a3d4b287ae96f58311d34dc634172282
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.2 MB (143151960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd3f1238bf128d519963e0e3ca2e89f190ffc96db5233fdcb2ea76583b02826e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:0cd8ed314febdbf680645d20f346d9bac16fad5654c0b0d6ce2dec7c27c17b9a in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:39:37 GMT
ENV MONO_VERSION=5.0.1.1
# Mon, 09 Oct 2017 22:40:15 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:40:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 09 Oct 2017 22:42:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:02620033936d6cf3514a813f366025a14370f5dfe654e89eaca3a56b357e88c2`  
		Last Modified: Mon, 09 Oct 2017 21:49:15 GMT  
		Size: 26.3 MB (26280982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16f474b755ce91b784371ad9ceca65cabfa4eafb76ab056c9ab8241e9de21636`  
		Last Modified: Mon, 09 Oct 2017 22:47:18 GMT  
		Size: 4.3 MB (4344556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5f708c46e5198ec506c8c1bb4a53923f412eaf47cb4cae22055f49a57dc619`  
		Last Modified: Mon, 09 Oct 2017 22:47:16 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ddf21b723d758ca620e277d7673d750edd5ef133d932409a35f880837dd5243`  
		Last Modified: Mon, 09 Oct 2017 22:47:56 GMT  
		Size: 112.5 MB (112524359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.0.1` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:db9f940fdab8eeb3743b1d34399c9fbd2f31effe6ceff44e8beea992b71ca3c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.6 MB (157632508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd8986981a9949636a1150af0fda18991846f0d52abda5edc38277694806121`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:51 GMT
ADD file:75f5768db078e9eee90676141a2c9faa9ce02768b7c9cd6e588bdd5ffc0f65e3 in / 
# Mon, 09 Oct 2017 21:43:51 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:38:49 GMT
ENV MONO_VERSION=5.0.1.1
# Tue, 10 Oct 2017 01:39:51 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:39:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 10 Oct 2017 01:49:45 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f2da27d97c13e9e531eda9577a28eb81b0d9034d7fd7e6575bd92744eed500f6`  
		Last Modified: Mon, 09 Oct 2017 21:53:20 GMT  
		Size: 27.5 MB (27480591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2e04d9663a82121214acf4066c6e05ae84e8c793822bd9b4e9d81cfdc6f082`  
		Last Modified: Tue, 10 Oct 2017 02:01:57 GMT  
		Size: 4.5 MB (4504418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95506ca08b1400981d76f9b0900856a5aa3fc3c6455b9a8dd6a8da6ee422b1`  
		Last Modified: Tue, 10 Oct 2017 02:01:56 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1a5e274a20d20b06a7d31c08ec62e97572ff1171c16632bb7e202e7597e4a43`  
		Last Modified: Tue, 10 Oct 2017 02:02:47 GMT  
		Size: 125.6 MB (125645434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.0.1` - linux; 386

```console
$ docker pull mono@sha256:3eb1aa6ac73ac0c8b44aaec2ac8ec53edc8e4e7adbc1e344ff9318bbe33fb506
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166732474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0726b9eb52c21ad3ab223e89027a666af2eaee18cd258b3cbc8547b932566bcd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:30 GMT
ADD file:169ab3194fd1b25e06359d6eceb655093f44f0255c799ae8a3fc5bf8ba50fd8d in / 
# Mon, 09 Oct 2017 21:42:31 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:20:31 GMT
ENV MONO_VERSION=5.0.1.1
# Mon, 09 Oct 2017 22:21:15 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:21:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 09 Oct 2017 22:24:10 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d8b3cf5f6e0f087738d5589b812e12f5b8781935412c95d15f2f77d68657b006`  
		Last Modified: Mon, 09 Oct 2017 21:48:54 GMT  
		Size: 30.3 MB (30264454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e00b7c099e0fab0246987e5a2a83b9da214447324376c79a2722690f5143c290`  
		Last Modified: Mon, 09 Oct 2017 22:36:47 GMT  
		Size: 7.2 MB (7220159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eebdc1774b375a33151ebabf3767200b356625f41d6b39c84719b8fba57ec2e`  
		Last Modified: Mon, 09 Oct 2017 22:36:45 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4079c32977232d8dd336a8dfbb00f462c9425ab3875b4f6fff06c6950b9856`  
		Last Modified: Mon, 09 Oct 2017 22:37:21 GMT  
		Size: 129.2 MB (129245796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.0.1.1`

```console
$ docker pull mono@sha256:911b28c379d087e94cbea08119b8f3be659a543c4bfb644a632bae76546e54a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.0.1.1` - linux; amd64

```console
$ docker pull mono@sha256:e8da9def071fc47e6dd2f5102db16313aff03037e98f3fb3095390cedf04c0d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.2 MB (164211802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:483677300523a085f08a64fcd84ea19dae1f40ff96d9d91fc32a8b0a1b70751e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:11:55 GMT
ENV MONO_VERSION=5.0.1.1
# Tue, 10 Oct 2017 00:12:15 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:12:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 10 Oct 2017 00:14:00 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e2af775a980fcdbefdd95eaba5ebdde0de8938700b70e2fd2dd6eba32ad7be`  
		Last Modified: Tue, 10 Oct 2017 00:21:20 GMT  
		Size: 5.0 MB (5012281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66fd3f03e293d9db4071bb033333fcd463846801b90749fb170f93109d363bf`  
		Last Modified: Tue, 10 Oct 2017 00:21:18 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e09466150fe902300311aebbaac8136a1cd793bd29f62c508bc93cfa64538284`  
		Last Modified: Tue, 10 Oct 2017 00:21:55 GMT  
		Size: 129.1 MB (129084140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.0.1.1` - linux; arm variant v7

```console
$ docker pull mono@sha256:7666b7f06508ebfa695b8e8665611f49a3d4b287ae96f58311d34dc634172282
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.2 MB (143151960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd3f1238bf128d519963e0e3ca2e89f190ffc96db5233fdcb2ea76583b02826e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:0cd8ed314febdbf680645d20f346d9bac16fad5654c0b0d6ce2dec7c27c17b9a in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:39:37 GMT
ENV MONO_VERSION=5.0.1.1
# Mon, 09 Oct 2017 22:40:15 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:40:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 09 Oct 2017 22:42:31 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:02620033936d6cf3514a813f366025a14370f5dfe654e89eaca3a56b357e88c2`  
		Last Modified: Mon, 09 Oct 2017 21:49:15 GMT  
		Size: 26.3 MB (26280982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16f474b755ce91b784371ad9ceca65cabfa4eafb76ab056c9ab8241e9de21636`  
		Last Modified: Mon, 09 Oct 2017 22:47:18 GMT  
		Size: 4.3 MB (4344556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5f708c46e5198ec506c8c1bb4a53923f412eaf47cb4cae22055f49a57dc619`  
		Last Modified: Mon, 09 Oct 2017 22:47:16 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ddf21b723d758ca620e277d7673d750edd5ef133d932409a35f880837dd5243`  
		Last Modified: Mon, 09 Oct 2017 22:47:56 GMT  
		Size: 112.5 MB (112524359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.0.1.1` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:db9f940fdab8eeb3743b1d34399c9fbd2f31effe6ceff44e8beea992b71ca3c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.6 MB (157632508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd8986981a9949636a1150af0fda18991846f0d52abda5edc38277694806121`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:51 GMT
ADD file:75f5768db078e9eee90676141a2c9faa9ce02768b7c9cd6e588bdd5ffc0f65e3 in / 
# Mon, 09 Oct 2017 21:43:51 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:38:49 GMT
ENV MONO_VERSION=5.0.1.1
# Tue, 10 Oct 2017 01:39:51 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 01:39:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 10 Oct 2017 01:49:45 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f2da27d97c13e9e531eda9577a28eb81b0d9034d7fd7e6575bd92744eed500f6`  
		Last Modified: Mon, 09 Oct 2017 21:53:20 GMT  
		Size: 27.5 MB (27480591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2e04d9663a82121214acf4066c6e05ae84e8c793822bd9b4e9d81cfdc6f082`  
		Last Modified: Tue, 10 Oct 2017 02:01:57 GMT  
		Size: 4.5 MB (4504418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b95506ca08b1400981d76f9b0900856a5aa3fc3c6455b9a8dd6a8da6ee422b1`  
		Last Modified: Tue, 10 Oct 2017 02:01:56 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1a5e274a20d20b06a7d31c08ec62e97572ff1171c16632bb7e202e7597e4a43`  
		Last Modified: Tue, 10 Oct 2017 02:02:47 GMT  
		Size: 125.6 MB (125645434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.0.1.1` - linux; 386

```console
$ docker pull mono@sha256:3eb1aa6ac73ac0c8b44aaec2ac8ec53edc8e4e7adbc1e344ff9318bbe33fb506
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166732474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0726b9eb52c21ad3ab223e89027a666af2eaee18cd258b3cbc8547b932566bcd`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:30 GMT
ADD file:169ab3194fd1b25e06359d6eceb655093f44f0255c799ae8a3fc5bf8ba50fd8d in / 
# Mon, 09 Oct 2017 21:42:31 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:20:31 GMT
ENV MONO_VERSION=5.0.1.1
# Mon, 09 Oct 2017 22:21:15 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:21:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 09 Oct 2017 22:24:10 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d8b3cf5f6e0f087738d5589b812e12f5b8781935412c95d15f2f77d68657b006`  
		Last Modified: Mon, 09 Oct 2017 21:48:54 GMT  
		Size: 30.3 MB (30264454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e00b7c099e0fab0246987e5a2a83b9da214447324376c79a2722690f5143c290`  
		Last Modified: Mon, 09 Oct 2017 22:36:47 GMT  
		Size: 7.2 MB (7220159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eebdc1774b375a33151ebabf3767200b356625f41d6b39c84719b8fba57ec2e`  
		Last Modified: Mon, 09 Oct 2017 22:36:45 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4079c32977232d8dd336a8dfbb00f462c9425ab3875b4f6fff06c6950b9856`  
		Last Modified: Mon, 09 Oct 2017 22:37:21 GMT  
		Size: 129.2 MB (129245796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.2`

```console
$ docker pull mono@sha256:d0a58d5b964e7455a3b33d511cf193fb3c5ad6490c20762cfa0ecc10c1623e50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.2` - linux; amd64

```console
$ docker pull mono@sha256:9a61311f382cca999579d4ceb75015e41f3b1c4aadf3d81d3f6915363c46f114
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.0 MB (170039430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6df13f0b8472f903345aa10b310e849d6e8ee03035895d53a805b4d19ba9ad9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:10:52 GMT
ENV MONO_VERSION=5.2.0.224
# Tue, 10 Oct 2017 00:10:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 10 Oct 2017 00:11:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 10 Oct 2017 00:20:10 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752ae4b42e2f5c6231e4c843dd5c8afde29150a1124d4720d9ef641e35b8bf7f`  
		Last Modified: Tue, 10 Oct 2017 00:20:30 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7865de4a94d89f524c7706d368c9d1695df91cc9cb22d8e08a796f511aaf3`  
		Last Modified: Tue, 10 Oct 2017 00:20:38 GMT  
		Size: 27.2 MB (27240757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b6ed2742ed96eaf012de781ddf0dab03056127a4742536d08659ae4dc5bdf9`  
		Last Modified: Tue, 10 Oct 2017 00:24:57 GMT  
		Size: 112.7 MB (112683295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2` - linux; arm variant v7

```console
$ docker pull mono@sha256:6e9525473bd50383ed051de2684191f7b1fdc3302d5de4427784f167b11308a3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148926184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fc645b4287b2e09c20b160ab09826ce50340bb8db3154dede723b22c120cf28`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:0cd8ed314febdbf680645d20f346d9bac16fad5654c0b0d6ce2dec7c27c17b9a in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:38:16 GMT
ENV MONO_VERSION=5.2.0.224
# Mon, 09 Oct 2017 22:38:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 09 Oct 2017 22:39:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 09 Oct 2017 22:46:21 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:02620033936d6cf3514a813f366025a14370f5dfe654e89eaca3a56b357e88c2`  
		Last Modified: Mon, 09 Oct 2017 21:49:15 GMT  
		Size: 26.3 MB (26280982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a56441a0716875f22a9f06959373f0a4996fa3191b02886e369c44e807e3204`  
		Last Modified: Mon, 09 Oct 2017 22:46:44 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9587a8ff6452a2e1fc4be530cee25fb8d71cc6d55058572cb5e8e2646d13518`  
		Last Modified: Mon, 09 Oct 2017 22:46:53 GMT  
		Size: 21.1 MB (21089899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f6ae07749836a1d621d2b4845d6f5933b4e707793cde023a4a9b3bd8b0cc08`  
		Last Modified: Mon, 09 Oct 2017 22:49:47 GMT  
		Size: 101.6 MB (101553239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:fb7985d24357e4b148439e36383f8bef8d7c1867ef6f7f3cb7d3bc10092f35f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.5 MB (163490268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44373cb770a49a7726792c5350bc4d741ecce60d041fd381b1d2c885e9be7abe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:51 GMT
ADD file:75f5768db078e9eee90676141a2c9faa9ce02768b7c9cd6e588bdd5ffc0f65e3 in / 
# Mon, 09 Oct 2017 21:43:51 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:32:53 GMT
ENV MONO_VERSION=5.2.0.224
# Tue, 10 Oct 2017 01:33:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 10 Oct 2017 01:38:36 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 10 Oct 2017 01:59:39 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f2da27d97c13e9e531eda9577a28eb81b0d9034d7fd7e6575bd92744eed500f6`  
		Last Modified: Mon, 09 Oct 2017 21:53:20 GMT  
		Size: 27.5 MB (27480591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae39572730019ff3f4db8884b4c1bf3c1de81cdd121dd3ab0475a279d18809fd`  
		Last Modified: Tue, 10 Oct 2017 02:00:19 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be99f966e1dbb256ca4032fbc6388b8507d4fe83692101907a11fad70e6f2f8b`  
		Last Modified: Tue, 10 Oct 2017 02:00:31 GMT  
		Size: 25.2 MB (25220657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996c092fc7ef0fcd0f6dfa55f1bf82a6358092ed832c60269d6de3af2b500098`  
		Last Modified: Tue, 10 Oct 2017 02:04:16 GMT  
		Size: 110.8 MB (110786954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2` - linux; 386

```console
$ docker pull mono@sha256:e341094d302b3ca4b0b3fca0b96741fdd462e4a2895e76e558b7a91dae5373b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.5 MB (172479663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4a529a31f872997045344a825cb70b3a722ab302729ece5432fbafd20ce616b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:30 GMT
ADD file:169ab3194fd1b25e06359d6eceb655093f44f0255c799ae8a3fc5bf8ba50fd8d in / 
# Mon, 09 Oct 2017 21:42:31 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:19:09 GMT
ENV MONO_VERSION=5.2.0.224
# Mon, 09 Oct 2017 22:19:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 09 Oct 2017 22:20:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 09 Oct 2017 22:32:14 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d8b3cf5f6e0f087738d5589b812e12f5b8781935412c95d15f2f77d68657b006`  
		Last Modified: Mon, 09 Oct 2017 21:48:54 GMT  
		Size: 30.3 MB (30264454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2c998c1029c632021db5f103d73d3d976670e9b49dc7bfbfd3151098e30ac8`  
		Last Modified: Mon, 09 Oct 2017 22:35:57 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c26cf3f2f75893c1984b2db1156c5e8070ab23332250940e960ba44a5e6440`  
		Last Modified: Mon, 09 Oct 2017 22:36:09 GMT  
		Size: 29.0 MB (29021157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf125317f61dc10c728b70c279d3f98c9a2493524969f7a234838e3fd8312c0f`  
		Last Modified: Mon, 09 Oct 2017 22:42:38 GMT  
		Size: 113.2 MB (113191983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.2.0`

```console
$ docker pull mono@sha256:d0a58d5b964e7455a3b33d511cf193fb3c5ad6490c20762cfa0ecc10c1623e50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.2.0` - linux; amd64

```console
$ docker pull mono@sha256:9a61311f382cca999579d4ceb75015e41f3b1c4aadf3d81d3f6915363c46f114
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.0 MB (170039430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6df13f0b8472f903345aa10b310e849d6e8ee03035895d53a805b4d19ba9ad9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:10:52 GMT
ENV MONO_VERSION=5.2.0.224
# Tue, 10 Oct 2017 00:10:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 10 Oct 2017 00:11:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 10 Oct 2017 00:20:10 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752ae4b42e2f5c6231e4c843dd5c8afde29150a1124d4720d9ef641e35b8bf7f`  
		Last Modified: Tue, 10 Oct 2017 00:20:30 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7865de4a94d89f524c7706d368c9d1695df91cc9cb22d8e08a796f511aaf3`  
		Last Modified: Tue, 10 Oct 2017 00:20:38 GMT  
		Size: 27.2 MB (27240757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b6ed2742ed96eaf012de781ddf0dab03056127a4742536d08659ae4dc5bdf9`  
		Last Modified: Tue, 10 Oct 2017 00:24:57 GMT  
		Size: 112.7 MB (112683295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2.0` - linux; arm variant v7

```console
$ docker pull mono@sha256:6e9525473bd50383ed051de2684191f7b1fdc3302d5de4427784f167b11308a3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148926184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fc645b4287b2e09c20b160ab09826ce50340bb8db3154dede723b22c120cf28`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:0cd8ed314febdbf680645d20f346d9bac16fad5654c0b0d6ce2dec7c27c17b9a in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:38:16 GMT
ENV MONO_VERSION=5.2.0.224
# Mon, 09 Oct 2017 22:38:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 09 Oct 2017 22:39:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 09 Oct 2017 22:46:21 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:02620033936d6cf3514a813f366025a14370f5dfe654e89eaca3a56b357e88c2`  
		Last Modified: Mon, 09 Oct 2017 21:49:15 GMT  
		Size: 26.3 MB (26280982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a56441a0716875f22a9f06959373f0a4996fa3191b02886e369c44e807e3204`  
		Last Modified: Mon, 09 Oct 2017 22:46:44 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9587a8ff6452a2e1fc4be530cee25fb8d71cc6d55058572cb5e8e2646d13518`  
		Last Modified: Mon, 09 Oct 2017 22:46:53 GMT  
		Size: 21.1 MB (21089899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f6ae07749836a1d621d2b4845d6f5933b4e707793cde023a4a9b3bd8b0cc08`  
		Last Modified: Mon, 09 Oct 2017 22:49:47 GMT  
		Size: 101.6 MB (101553239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2.0` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:fb7985d24357e4b148439e36383f8bef8d7c1867ef6f7f3cb7d3bc10092f35f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.5 MB (163490268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44373cb770a49a7726792c5350bc4d741ecce60d041fd381b1d2c885e9be7abe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:51 GMT
ADD file:75f5768db078e9eee90676141a2c9faa9ce02768b7c9cd6e588bdd5ffc0f65e3 in / 
# Mon, 09 Oct 2017 21:43:51 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:32:53 GMT
ENV MONO_VERSION=5.2.0.224
# Tue, 10 Oct 2017 01:33:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 10 Oct 2017 01:38:36 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 10 Oct 2017 01:59:39 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f2da27d97c13e9e531eda9577a28eb81b0d9034d7fd7e6575bd92744eed500f6`  
		Last Modified: Mon, 09 Oct 2017 21:53:20 GMT  
		Size: 27.5 MB (27480591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae39572730019ff3f4db8884b4c1bf3c1de81cdd121dd3ab0475a279d18809fd`  
		Last Modified: Tue, 10 Oct 2017 02:00:19 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be99f966e1dbb256ca4032fbc6388b8507d4fe83692101907a11fad70e6f2f8b`  
		Last Modified: Tue, 10 Oct 2017 02:00:31 GMT  
		Size: 25.2 MB (25220657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996c092fc7ef0fcd0f6dfa55f1bf82a6358092ed832c60269d6de3af2b500098`  
		Last Modified: Tue, 10 Oct 2017 02:04:16 GMT  
		Size: 110.8 MB (110786954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2.0` - linux; 386

```console
$ docker pull mono@sha256:e341094d302b3ca4b0b3fca0b96741fdd462e4a2895e76e558b7a91dae5373b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.5 MB (172479663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4a529a31f872997045344a825cb70b3a722ab302729ece5432fbafd20ce616b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:30 GMT
ADD file:169ab3194fd1b25e06359d6eceb655093f44f0255c799ae8a3fc5bf8ba50fd8d in / 
# Mon, 09 Oct 2017 21:42:31 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:19:09 GMT
ENV MONO_VERSION=5.2.0.224
# Mon, 09 Oct 2017 22:19:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 09 Oct 2017 22:20:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 09 Oct 2017 22:32:14 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d8b3cf5f6e0f087738d5589b812e12f5b8781935412c95d15f2f77d68657b006`  
		Last Modified: Mon, 09 Oct 2017 21:48:54 GMT  
		Size: 30.3 MB (30264454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2c998c1029c632021db5f103d73d3d976670e9b49dc7bfbfd3151098e30ac8`  
		Last Modified: Mon, 09 Oct 2017 22:35:57 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c26cf3f2f75893c1984b2db1156c5e8070ab23332250940e960ba44a5e6440`  
		Last Modified: Mon, 09 Oct 2017 22:36:09 GMT  
		Size: 29.0 MB (29021157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf125317f61dc10c728b70c279d3f98c9a2493524969f7a234838e3fd8312c0f`  
		Last Modified: Mon, 09 Oct 2017 22:42:38 GMT  
		Size: 113.2 MB (113191983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.2.0.224`

```console
$ docker pull mono@sha256:d0a58d5b964e7455a3b33d511cf193fb3c5ad6490c20762cfa0ecc10c1623e50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.2.0.224` - linux; amd64

```console
$ docker pull mono@sha256:9a61311f382cca999579d4ceb75015e41f3b1c4aadf3d81d3f6915363c46f114
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.0 MB (170039430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6df13f0b8472f903345aa10b310e849d6e8ee03035895d53a805b4d19ba9ad9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:10:52 GMT
ENV MONO_VERSION=5.2.0.224
# Tue, 10 Oct 2017 00:10:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 10 Oct 2017 00:11:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 10 Oct 2017 00:20:10 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752ae4b42e2f5c6231e4c843dd5c8afde29150a1124d4720d9ef641e35b8bf7f`  
		Last Modified: Tue, 10 Oct 2017 00:20:30 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7865de4a94d89f524c7706d368c9d1695df91cc9cb22d8e08a796f511aaf3`  
		Last Modified: Tue, 10 Oct 2017 00:20:38 GMT  
		Size: 27.2 MB (27240757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b6ed2742ed96eaf012de781ddf0dab03056127a4742536d08659ae4dc5bdf9`  
		Last Modified: Tue, 10 Oct 2017 00:24:57 GMT  
		Size: 112.7 MB (112683295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2.0.224` - linux; arm variant v7

```console
$ docker pull mono@sha256:6e9525473bd50383ed051de2684191f7b1fdc3302d5de4427784f167b11308a3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148926184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fc645b4287b2e09c20b160ab09826ce50340bb8db3154dede723b22c120cf28`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:0cd8ed314febdbf680645d20f346d9bac16fad5654c0b0d6ce2dec7c27c17b9a in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:38:16 GMT
ENV MONO_VERSION=5.2.0.224
# Mon, 09 Oct 2017 22:38:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 09 Oct 2017 22:39:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 09 Oct 2017 22:46:21 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:02620033936d6cf3514a813f366025a14370f5dfe654e89eaca3a56b357e88c2`  
		Last Modified: Mon, 09 Oct 2017 21:49:15 GMT  
		Size: 26.3 MB (26280982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a56441a0716875f22a9f06959373f0a4996fa3191b02886e369c44e807e3204`  
		Last Modified: Mon, 09 Oct 2017 22:46:44 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9587a8ff6452a2e1fc4be530cee25fb8d71cc6d55058572cb5e8e2646d13518`  
		Last Modified: Mon, 09 Oct 2017 22:46:53 GMT  
		Size: 21.1 MB (21089899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f6ae07749836a1d621d2b4845d6f5933b4e707793cde023a4a9b3bd8b0cc08`  
		Last Modified: Mon, 09 Oct 2017 22:49:47 GMT  
		Size: 101.6 MB (101553239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2.0.224` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:fb7985d24357e4b148439e36383f8bef8d7c1867ef6f7f3cb7d3bc10092f35f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.5 MB (163490268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44373cb770a49a7726792c5350bc4d741ecce60d041fd381b1d2c885e9be7abe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:51 GMT
ADD file:75f5768db078e9eee90676141a2c9faa9ce02768b7c9cd6e588bdd5ffc0f65e3 in / 
# Mon, 09 Oct 2017 21:43:51 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:32:53 GMT
ENV MONO_VERSION=5.2.0.224
# Tue, 10 Oct 2017 01:33:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 10 Oct 2017 01:38:36 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 10 Oct 2017 01:59:39 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f2da27d97c13e9e531eda9577a28eb81b0d9034d7fd7e6575bd92744eed500f6`  
		Last Modified: Mon, 09 Oct 2017 21:53:20 GMT  
		Size: 27.5 MB (27480591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae39572730019ff3f4db8884b4c1bf3c1de81cdd121dd3ab0475a279d18809fd`  
		Last Modified: Tue, 10 Oct 2017 02:00:19 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be99f966e1dbb256ca4032fbc6388b8507d4fe83692101907a11fad70e6f2f8b`  
		Last Modified: Tue, 10 Oct 2017 02:00:31 GMT  
		Size: 25.2 MB (25220657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996c092fc7ef0fcd0f6dfa55f1bf82a6358092ed832c60269d6de3af2b500098`  
		Last Modified: Tue, 10 Oct 2017 02:04:16 GMT  
		Size: 110.8 MB (110786954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2.0.224` - linux; 386

```console
$ docker pull mono@sha256:e341094d302b3ca4b0b3fca0b96741fdd462e4a2895e76e558b7a91dae5373b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.5 MB (172479663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4a529a31f872997045344a825cb70b3a722ab302729ece5432fbafd20ce616b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:30 GMT
ADD file:169ab3194fd1b25e06359d6eceb655093f44f0255c799ae8a3fc5bf8ba50fd8d in / 
# Mon, 09 Oct 2017 21:42:31 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:19:09 GMT
ENV MONO_VERSION=5.2.0.224
# Mon, 09 Oct 2017 22:19:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 09 Oct 2017 22:20:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 09 Oct 2017 22:32:14 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d8b3cf5f6e0f087738d5589b812e12f5b8781935412c95d15f2f77d68657b006`  
		Last Modified: Mon, 09 Oct 2017 21:48:54 GMT  
		Size: 30.3 MB (30264454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2c998c1029c632021db5f103d73d3d976670e9b49dc7bfbfd3151098e30ac8`  
		Last Modified: Mon, 09 Oct 2017 22:35:57 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c26cf3f2f75893c1984b2db1156c5e8070ab23332250940e960ba44a5e6440`  
		Last Modified: Mon, 09 Oct 2017 22:36:09 GMT  
		Size: 29.0 MB (29021157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf125317f61dc10c728b70c279d3f98c9a2493524969f7a234838e3fd8312c0f`  
		Last Modified: Mon, 09 Oct 2017 22:42:38 GMT  
		Size: 113.2 MB (113191983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.2.0.224-slim`

```console
$ docker pull mono@sha256:9de9c4f7fc99d3d8272f1b0c98ecca854de1d360b72dfb7829e69ec9684cdaf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.2.0.224-slim` - linux; amd64

```console
$ docker pull mono@sha256:b4b807705a172aedd3a22eb20ca16e8c0a229139d6feea9189c59287eef8627f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57356135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7daf8ffb27d929a87763d48d39be8161f2bb813028ea41eb7df147e0f5eb663d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:10:52 GMT
ENV MONO_VERSION=5.2.0.224
# Tue, 10 Oct 2017 00:10:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 10 Oct 2017 00:11:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752ae4b42e2f5c6231e4c843dd5c8afde29150a1124d4720d9ef641e35b8bf7f`  
		Last Modified: Tue, 10 Oct 2017 00:20:30 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7865de4a94d89f524c7706d368c9d1695df91cc9cb22d8e08a796f511aaf3`  
		Last Modified: Tue, 10 Oct 2017 00:20:38 GMT  
		Size: 27.2 MB (27240757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2.0.224-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:5cd42475948ffa583df52134779351574a036a004860605532c746e9c1af6603
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.4 MB (47372945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9459e53906fc3b55776589c20ce4355955692e915edb8e74156379ddf6b6b027`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:0cd8ed314febdbf680645d20f346d9bac16fad5654c0b0d6ce2dec7c27c17b9a in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:38:16 GMT
ENV MONO_VERSION=5.2.0.224
# Mon, 09 Oct 2017 22:38:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 09 Oct 2017 22:39:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:02620033936d6cf3514a813f366025a14370f5dfe654e89eaca3a56b357e88c2`  
		Last Modified: Mon, 09 Oct 2017 21:49:15 GMT  
		Size: 26.3 MB (26280982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a56441a0716875f22a9f06959373f0a4996fa3191b02886e369c44e807e3204`  
		Last Modified: Mon, 09 Oct 2017 22:46:44 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9587a8ff6452a2e1fc4be530cee25fb8d71cc6d55058572cb5e8e2646d13518`  
		Last Modified: Mon, 09 Oct 2017 22:46:53 GMT  
		Size: 21.1 MB (21089899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2.0.224-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:b9f8c9e035c0031920173caa133fa2535de70528bede9238cf2ce5d5f227c3c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52703314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3e175ff9fc68b50d83c4a18051deaf08e21afcaee3294705d4db39b42c67b96`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:51 GMT
ADD file:75f5768db078e9eee90676141a2c9faa9ce02768b7c9cd6e588bdd5ffc0f65e3 in / 
# Mon, 09 Oct 2017 21:43:51 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:32:53 GMT
ENV MONO_VERSION=5.2.0.224
# Tue, 10 Oct 2017 01:33:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 10 Oct 2017 01:38:36 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f2da27d97c13e9e531eda9577a28eb81b0d9034d7fd7e6575bd92744eed500f6`  
		Last Modified: Mon, 09 Oct 2017 21:53:20 GMT  
		Size: 27.5 MB (27480591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae39572730019ff3f4db8884b4c1bf3c1de81cdd121dd3ab0475a279d18809fd`  
		Last Modified: Tue, 10 Oct 2017 02:00:19 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be99f966e1dbb256ca4032fbc6388b8507d4fe83692101907a11fad70e6f2f8b`  
		Last Modified: Tue, 10 Oct 2017 02:00:31 GMT  
		Size: 25.2 MB (25220657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2.0.224-slim` - linux; 386

```console
$ docker pull mono@sha256:3e9f329445756d18b6ef76a0ad5e8464bf0a4865e2aba4cf008fc3c630440740
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.3 MB (59287680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29cf6239b87a6631d10186ab7a3818e9963695977b3c3326242972eddf333ac3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:30 GMT
ADD file:169ab3194fd1b25e06359d6eceb655093f44f0255c799ae8a3fc5bf8ba50fd8d in / 
# Mon, 09 Oct 2017 21:42:31 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:19:09 GMT
ENV MONO_VERSION=5.2.0.224
# Mon, 09 Oct 2017 22:19:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 09 Oct 2017 22:20:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d8b3cf5f6e0f087738d5589b812e12f5b8781935412c95d15f2f77d68657b006`  
		Last Modified: Mon, 09 Oct 2017 21:48:54 GMT  
		Size: 30.3 MB (30264454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2c998c1029c632021db5f103d73d3d976670e9b49dc7bfbfd3151098e30ac8`  
		Last Modified: Mon, 09 Oct 2017 22:35:57 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c26cf3f2f75893c1984b2db1156c5e8070ab23332250940e960ba44a5e6440`  
		Last Modified: Mon, 09 Oct 2017 22:36:09 GMT  
		Size: 29.0 MB (29021157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.2.0-slim`

```console
$ docker pull mono@sha256:9de9c4f7fc99d3d8272f1b0c98ecca854de1d360b72dfb7829e69ec9684cdaf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.2.0-slim` - linux; amd64

```console
$ docker pull mono@sha256:b4b807705a172aedd3a22eb20ca16e8c0a229139d6feea9189c59287eef8627f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57356135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7daf8ffb27d929a87763d48d39be8161f2bb813028ea41eb7df147e0f5eb663d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:10:52 GMT
ENV MONO_VERSION=5.2.0.224
# Tue, 10 Oct 2017 00:10:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 10 Oct 2017 00:11:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752ae4b42e2f5c6231e4c843dd5c8afde29150a1124d4720d9ef641e35b8bf7f`  
		Last Modified: Tue, 10 Oct 2017 00:20:30 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7865de4a94d89f524c7706d368c9d1695df91cc9cb22d8e08a796f511aaf3`  
		Last Modified: Tue, 10 Oct 2017 00:20:38 GMT  
		Size: 27.2 MB (27240757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2.0-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:5cd42475948ffa583df52134779351574a036a004860605532c746e9c1af6603
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.4 MB (47372945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9459e53906fc3b55776589c20ce4355955692e915edb8e74156379ddf6b6b027`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:0cd8ed314febdbf680645d20f346d9bac16fad5654c0b0d6ce2dec7c27c17b9a in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:38:16 GMT
ENV MONO_VERSION=5.2.0.224
# Mon, 09 Oct 2017 22:38:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 09 Oct 2017 22:39:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:02620033936d6cf3514a813f366025a14370f5dfe654e89eaca3a56b357e88c2`  
		Last Modified: Mon, 09 Oct 2017 21:49:15 GMT  
		Size: 26.3 MB (26280982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a56441a0716875f22a9f06959373f0a4996fa3191b02886e369c44e807e3204`  
		Last Modified: Mon, 09 Oct 2017 22:46:44 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9587a8ff6452a2e1fc4be530cee25fb8d71cc6d55058572cb5e8e2646d13518`  
		Last Modified: Mon, 09 Oct 2017 22:46:53 GMT  
		Size: 21.1 MB (21089899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2.0-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:b9f8c9e035c0031920173caa133fa2535de70528bede9238cf2ce5d5f227c3c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52703314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3e175ff9fc68b50d83c4a18051deaf08e21afcaee3294705d4db39b42c67b96`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:51 GMT
ADD file:75f5768db078e9eee90676141a2c9faa9ce02768b7c9cd6e588bdd5ffc0f65e3 in / 
# Mon, 09 Oct 2017 21:43:51 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:32:53 GMT
ENV MONO_VERSION=5.2.0.224
# Tue, 10 Oct 2017 01:33:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 10 Oct 2017 01:38:36 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f2da27d97c13e9e531eda9577a28eb81b0d9034d7fd7e6575bd92744eed500f6`  
		Last Modified: Mon, 09 Oct 2017 21:53:20 GMT  
		Size: 27.5 MB (27480591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae39572730019ff3f4db8884b4c1bf3c1de81cdd121dd3ab0475a279d18809fd`  
		Last Modified: Tue, 10 Oct 2017 02:00:19 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be99f966e1dbb256ca4032fbc6388b8507d4fe83692101907a11fad70e6f2f8b`  
		Last Modified: Tue, 10 Oct 2017 02:00:31 GMT  
		Size: 25.2 MB (25220657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2.0-slim` - linux; 386

```console
$ docker pull mono@sha256:3e9f329445756d18b6ef76a0ad5e8464bf0a4865e2aba4cf008fc3c630440740
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.3 MB (59287680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29cf6239b87a6631d10186ab7a3818e9963695977b3c3326242972eddf333ac3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:30 GMT
ADD file:169ab3194fd1b25e06359d6eceb655093f44f0255c799ae8a3fc5bf8ba50fd8d in / 
# Mon, 09 Oct 2017 21:42:31 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:19:09 GMT
ENV MONO_VERSION=5.2.0.224
# Mon, 09 Oct 2017 22:19:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 09 Oct 2017 22:20:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d8b3cf5f6e0f087738d5589b812e12f5b8781935412c95d15f2f77d68657b006`  
		Last Modified: Mon, 09 Oct 2017 21:48:54 GMT  
		Size: 30.3 MB (30264454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2c998c1029c632021db5f103d73d3d976670e9b49dc7bfbfd3151098e30ac8`  
		Last Modified: Mon, 09 Oct 2017 22:35:57 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c26cf3f2f75893c1984b2db1156c5e8070ab23332250940e960ba44a5e6440`  
		Last Modified: Mon, 09 Oct 2017 22:36:09 GMT  
		Size: 29.0 MB (29021157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.2-slim`

```console
$ docker pull mono@sha256:9de9c4f7fc99d3d8272f1b0c98ecca854de1d360b72dfb7829e69ec9684cdaf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5.2-slim` - linux; amd64

```console
$ docker pull mono@sha256:b4b807705a172aedd3a22eb20ca16e8c0a229139d6feea9189c59287eef8627f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57356135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7daf8ffb27d929a87763d48d39be8161f2bb813028ea41eb7df147e0f5eb663d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:10:52 GMT
ENV MONO_VERSION=5.2.0.224
# Tue, 10 Oct 2017 00:10:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 10 Oct 2017 00:11:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752ae4b42e2f5c6231e4c843dd5c8afde29150a1124d4720d9ef641e35b8bf7f`  
		Last Modified: Tue, 10 Oct 2017 00:20:30 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7865de4a94d89f524c7706d368c9d1695df91cc9cb22d8e08a796f511aaf3`  
		Last Modified: Tue, 10 Oct 2017 00:20:38 GMT  
		Size: 27.2 MB (27240757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:5cd42475948ffa583df52134779351574a036a004860605532c746e9c1af6603
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.4 MB (47372945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9459e53906fc3b55776589c20ce4355955692e915edb8e74156379ddf6b6b027`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:0cd8ed314febdbf680645d20f346d9bac16fad5654c0b0d6ce2dec7c27c17b9a in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:38:16 GMT
ENV MONO_VERSION=5.2.0.224
# Mon, 09 Oct 2017 22:38:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 09 Oct 2017 22:39:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:02620033936d6cf3514a813f366025a14370f5dfe654e89eaca3a56b357e88c2`  
		Last Modified: Mon, 09 Oct 2017 21:49:15 GMT  
		Size: 26.3 MB (26280982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a56441a0716875f22a9f06959373f0a4996fa3191b02886e369c44e807e3204`  
		Last Modified: Mon, 09 Oct 2017 22:46:44 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9587a8ff6452a2e1fc4be530cee25fb8d71cc6d55058572cb5e8e2646d13518`  
		Last Modified: Mon, 09 Oct 2017 22:46:53 GMT  
		Size: 21.1 MB (21089899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:b9f8c9e035c0031920173caa133fa2535de70528bede9238cf2ce5d5f227c3c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52703314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3e175ff9fc68b50d83c4a18051deaf08e21afcaee3294705d4db39b42c67b96`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:51 GMT
ADD file:75f5768db078e9eee90676141a2c9faa9ce02768b7c9cd6e588bdd5ffc0f65e3 in / 
# Mon, 09 Oct 2017 21:43:51 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:32:53 GMT
ENV MONO_VERSION=5.2.0.224
# Tue, 10 Oct 2017 01:33:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 10 Oct 2017 01:38:36 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f2da27d97c13e9e531eda9577a28eb81b0d9034d7fd7e6575bd92744eed500f6`  
		Last Modified: Mon, 09 Oct 2017 21:53:20 GMT  
		Size: 27.5 MB (27480591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae39572730019ff3f4db8884b4c1bf3c1de81cdd121dd3ab0475a279d18809fd`  
		Last Modified: Tue, 10 Oct 2017 02:00:19 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be99f966e1dbb256ca4032fbc6388b8507d4fe83692101907a11fad70e6f2f8b`  
		Last Modified: Tue, 10 Oct 2017 02:00:31 GMT  
		Size: 25.2 MB (25220657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5.2-slim` - linux; 386

```console
$ docker pull mono@sha256:3e9f329445756d18b6ef76a0ad5e8464bf0a4865e2aba4cf008fc3c630440740
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.3 MB (59287680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29cf6239b87a6631d10186ab7a3818e9963695977b3c3326242972eddf333ac3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:30 GMT
ADD file:169ab3194fd1b25e06359d6eceb655093f44f0255c799ae8a3fc5bf8ba50fd8d in / 
# Mon, 09 Oct 2017 21:42:31 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:19:09 GMT
ENV MONO_VERSION=5.2.0.224
# Mon, 09 Oct 2017 22:19:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 09 Oct 2017 22:20:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d8b3cf5f6e0f087738d5589b812e12f5b8781935412c95d15f2f77d68657b006`  
		Last Modified: Mon, 09 Oct 2017 21:48:54 GMT  
		Size: 30.3 MB (30264454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2c998c1029c632021db5f103d73d3d976670e9b49dc7bfbfd3151098e30ac8`  
		Last Modified: Mon, 09 Oct 2017 22:35:57 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c26cf3f2f75893c1984b2db1156c5e8070ab23332250940e960ba44a5e6440`  
		Last Modified: Mon, 09 Oct 2017 22:36:09 GMT  
		Size: 29.0 MB (29021157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5-slim`

```console
$ docker pull mono@sha256:9de9c4f7fc99d3d8272f1b0c98ecca854de1d360b72dfb7829e69ec9684cdaf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:5-slim` - linux; amd64

```console
$ docker pull mono@sha256:b4b807705a172aedd3a22eb20ca16e8c0a229139d6feea9189c59287eef8627f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57356135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7daf8ffb27d929a87763d48d39be8161f2bb813028ea41eb7df147e0f5eb663d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:10:52 GMT
ENV MONO_VERSION=5.2.0.224
# Tue, 10 Oct 2017 00:10:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 10 Oct 2017 00:11:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752ae4b42e2f5c6231e4c843dd5c8afde29150a1124d4720d9ef641e35b8bf7f`  
		Last Modified: Tue, 10 Oct 2017 00:20:30 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7865de4a94d89f524c7706d368c9d1695df91cc9cb22d8e08a796f511aaf3`  
		Last Modified: Tue, 10 Oct 2017 00:20:38 GMT  
		Size: 27.2 MB (27240757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:5cd42475948ffa583df52134779351574a036a004860605532c746e9c1af6603
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.4 MB (47372945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9459e53906fc3b55776589c20ce4355955692e915edb8e74156379ddf6b6b027`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:0cd8ed314febdbf680645d20f346d9bac16fad5654c0b0d6ce2dec7c27c17b9a in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:38:16 GMT
ENV MONO_VERSION=5.2.0.224
# Mon, 09 Oct 2017 22:38:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 09 Oct 2017 22:39:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:02620033936d6cf3514a813f366025a14370f5dfe654e89eaca3a56b357e88c2`  
		Last Modified: Mon, 09 Oct 2017 21:49:15 GMT  
		Size: 26.3 MB (26280982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a56441a0716875f22a9f06959373f0a4996fa3191b02886e369c44e807e3204`  
		Last Modified: Mon, 09 Oct 2017 22:46:44 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9587a8ff6452a2e1fc4be530cee25fb8d71cc6d55058572cb5e8e2646d13518`  
		Last Modified: Mon, 09 Oct 2017 22:46:53 GMT  
		Size: 21.1 MB (21089899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:b9f8c9e035c0031920173caa133fa2535de70528bede9238cf2ce5d5f227c3c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52703314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3e175ff9fc68b50d83c4a18051deaf08e21afcaee3294705d4db39b42c67b96`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:51 GMT
ADD file:75f5768db078e9eee90676141a2c9faa9ce02768b7c9cd6e588bdd5ffc0f65e3 in / 
# Mon, 09 Oct 2017 21:43:51 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:32:53 GMT
ENV MONO_VERSION=5.2.0.224
# Tue, 10 Oct 2017 01:33:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 10 Oct 2017 01:38:36 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f2da27d97c13e9e531eda9577a28eb81b0d9034d7fd7e6575bd92744eed500f6`  
		Last Modified: Mon, 09 Oct 2017 21:53:20 GMT  
		Size: 27.5 MB (27480591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae39572730019ff3f4db8884b4c1bf3c1de81cdd121dd3ab0475a279d18809fd`  
		Last Modified: Tue, 10 Oct 2017 02:00:19 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be99f966e1dbb256ca4032fbc6388b8507d4fe83692101907a11fad70e6f2f8b`  
		Last Modified: Tue, 10 Oct 2017 02:00:31 GMT  
		Size: 25.2 MB (25220657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:5-slim` - linux; 386

```console
$ docker pull mono@sha256:3e9f329445756d18b6ef76a0ad5e8464bf0a4865e2aba4cf008fc3c630440740
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.3 MB (59287680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29cf6239b87a6631d10186ab7a3818e9963695977b3c3326242972eddf333ac3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:30 GMT
ADD file:169ab3194fd1b25e06359d6eceb655093f44f0255c799ae8a3fc5bf8ba50fd8d in / 
# Mon, 09 Oct 2017 21:42:31 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:19:09 GMT
ENV MONO_VERSION=5.2.0.224
# Mon, 09 Oct 2017 22:19:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 09 Oct 2017 22:20:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d8b3cf5f6e0f087738d5589b812e12f5b8781935412c95d15f2f77d68657b006`  
		Last Modified: Mon, 09 Oct 2017 21:48:54 GMT  
		Size: 30.3 MB (30264454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2c998c1029c632021db5f103d73d3d976670e9b49dc7bfbfd3151098e30ac8`  
		Last Modified: Mon, 09 Oct 2017 22:35:57 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c26cf3f2f75893c1984b2db1156c5e8070ab23332250940e960ba44a5e6440`  
		Last Modified: Mon, 09 Oct 2017 22:36:09 GMT  
		Size: 29.0 MB (29021157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:latest`

```console
$ docker pull mono@sha256:d0a58d5b964e7455a3b33d511cf193fb3c5ad6490c20762cfa0ecc10c1623e50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:latest` - linux; amd64

```console
$ docker pull mono@sha256:9a61311f382cca999579d4ceb75015e41f3b1c4aadf3d81d3f6915363c46f114
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.0 MB (170039430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6df13f0b8472f903345aa10b310e849d6e8ee03035895d53a805b4d19ba9ad9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:10:52 GMT
ENV MONO_VERSION=5.2.0.224
# Tue, 10 Oct 2017 00:10:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 10 Oct 2017 00:11:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 10 Oct 2017 00:20:10 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752ae4b42e2f5c6231e4c843dd5c8afde29150a1124d4720d9ef641e35b8bf7f`  
		Last Modified: Tue, 10 Oct 2017 00:20:30 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7865de4a94d89f524c7706d368c9d1695df91cc9cb22d8e08a796f511aaf3`  
		Last Modified: Tue, 10 Oct 2017 00:20:38 GMT  
		Size: 27.2 MB (27240757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b6ed2742ed96eaf012de781ddf0dab03056127a4742536d08659ae4dc5bdf9`  
		Last Modified: Tue, 10 Oct 2017 00:24:57 GMT  
		Size: 112.7 MB (112683295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm variant v7

```console
$ docker pull mono@sha256:6e9525473bd50383ed051de2684191f7b1fdc3302d5de4427784f167b11308a3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148926184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fc645b4287b2e09c20b160ab09826ce50340bb8db3154dede723b22c120cf28`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:0cd8ed314febdbf680645d20f346d9bac16fad5654c0b0d6ce2dec7c27c17b9a in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:38:16 GMT
ENV MONO_VERSION=5.2.0.224
# Mon, 09 Oct 2017 22:38:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 09 Oct 2017 22:39:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 09 Oct 2017 22:46:21 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:02620033936d6cf3514a813f366025a14370f5dfe654e89eaca3a56b357e88c2`  
		Last Modified: Mon, 09 Oct 2017 21:49:15 GMT  
		Size: 26.3 MB (26280982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a56441a0716875f22a9f06959373f0a4996fa3191b02886e369c44e807e3204`  
		Last Modified: Mon, 09 Oct 2017 22:46:44 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9587a8ff6452a2e1fc4be530cee25fb8d71cc6d55058572cb5e8e2646d13518`  
		Last Modified: Mon, 09 Oct 2017 22:46:53 GMT  
		Size: 21.1 MB (21089899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f6ae07749836a1d621d2b4845d6f5933b4e707793cde023a4a9b3bd8b0cc08`  
		Last Modified: Mon, 09 Oct 2017 22:49:47 GMT  
		Size: 101.6 MB (101553239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:fb7985d24357e4b148439e36383f8bef8d7c1867ef6f7f3cb7d3bc10092f35f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.5 MB (163490268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44373cb770a49a7726792c5350bc4d741ecce60d041fd381b1d2c885e9be7abe`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:51 GMT
ADD file:75f5768db078e9eee90676141a2c9faa9ce02768b7c9cd6e588bdd5ffc0f65e3 in / 
# Mon, 09 Oct 2017 21:43:51 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:32:53 GMT
ENV MONO_VERSION=5.2.0.224
# Tue, 10 Oct 2017 01:33:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 10 Oct 2017 01:38:36 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Tue, 10 Oct 2017 01:59:39 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f2da27d97c13e9e531eda9577a28eb81b0d9034d7fd7e6575bd92744eed500f6`  
		Last Modified: Mon, 09 Oct 2017 21:53:20 GMT  
		Size: 27.5 MB (27480591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae39572730019ff3f4db8884b4c1bf3c1de81cdd121dd3ab0475a279d18809fd`  
		Last Modified: Tue, 10 Oct 2017 02:00:19 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be99f966e1dbb256ca4032fbc6388b8507d4fe83692101907a11fad70e6f2f8b`  
		Last Modified: Tue, 10 Oct 2017 02:00:31 GMT  
		Size: 25.2 MB (25220657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996c092fc7ef0fcd0f6dfa55f1bf82a6358092ed832c60269d6de3af2b500098`  
		Last Modified: Tue, 10 Oct 2017 02:04:16 GMT  
		Size: 110.8 MB (110786954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:latest` - linux; 386

```console
$ docker pull mono@sha256:e341094d302b3ca4b0b3fca0b96741fdd462e4a2895e76e558b7a91dae5373b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.5 MB (172479663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4a529a31f872997045344a825cb70b3a722ab302729ece5432fbafd20ce616b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:30 GMT
ADD file:169ab3194fd1b25e06359d6eceb655093f44f0255c799ae8a3fc5bf8ba50fd8d in / 
# Mon, 09 Oct 2017 21:42:31 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:19:09 GMT
ENV MONO_VERSION=5.2.0.224
# Mon, 09 Oct 2017 22:19:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 09 Oct 2017 22:20:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 09 Oct 2017 22:32:14 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d8b3cf5f6e0f087738d5589b812e12f5b8781935412c95d15f2f77d68657b006`  
		Last Modified: Mon, 09 Oct 2017 21:48:54 GMT  
		Size: 30.3 MB (30264454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2c998c1029c632021db5f103d73d3d976670e9b49dc7bfbfd3151098e30ac8`  
		Last Modified: Mon, 09 Oct 2017 22:35:57 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c26cf3f2f75893c1984b2db1156c5e8070ab23332250940e960ba44a5e6440`  
		Last Modified: Mon, 09 Oct 2017 22:36:09 GMT  
		Size: 29.0 MB (29021157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf125317f61dc10c728b70c279d3f98c9a2493524969f7a234838e3fd8312c0f`  
		Last Modified: Mon, 09 Oct 2017 22:42:38 GMT  
		Size: 113.2 MB (113191983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:slim`

```console
$ docker pull mono@sha256:9de9c4f7fc99d3d8272f1b0c98ecca854de1d360b72dfb7829e69ec9684cdaf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386

### `mono:slim` - linux; amd64

```console
$ docker pull mono@sha256:b4b807705a172aedd3a22eb20ca16e8c0a229139d6feea9189c59287eef8627f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57356135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7daf8ffb27d929a87763d48d39be8161f2bb813028ea41eb7df147e0f5eb663d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:10:52 GMT
ENV MONO_VERSION=5.2.0.224
# Tue, 10 Oct 2017 00:10:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 10 Oct 2017 00:11:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752ae4b42e2f5c6231e4c843dd5c8afde29150a1124d4720d9ef641e35b8bf7f`  
		Last Modified: Tue, 10 Oct 2017 00:20:30 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7865de4a94d89f524c7706d368c9d1695df91cc9cb22d8e08a796f511aaf3`  
		Last Modified: Tue, 10 Oct 2017 00:20:38 GMT  
		Size: 27.2 MB (27240757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm variant v7

```console
$ docker pull mono@sha256:5cd42475948ffa583df52134779351574a036a004860605532c746e9c1af6603
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.4 MB (47372945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9459e53906fc3b55776589c20ce4355955692e915edb8e74156379ddf6b6b027`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:41 GMT
ADD file:0cd8ed314febdbf680645d20f346d9bac16fad5654c0b0d6ce2dec7c27c17b9a in / 
# Mon, 09 Oct 2017 21:42:41 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:38:16 GMT
ENV MONO_VERSION=5.2.0.224
# Mon, 09 Oct 2017 22:38:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 09 Oct 2017 22:39:28 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:02620033936d6cf3514a813f366025a14370f5dfe654e89eaca3a56b357e88c2`  
		Last Modified: Mon, 09 Oct 2017 21:49:15 GMT  
		Size: 26.3 MB (26280982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a56441a0716875f22a9f06959373f0a4996fa3191b02886e369c44e807e3204`  
		Last Modified: Mon, 09 Oct 2017 22:46:44 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9587a8ff6452a2e1fc4be530cee25fb8d71cc6d55058572cb5e8e2646d13518`  
		Last Modified: Mon, 09 Oct 2017 22:46:53 GMT  
		Size: 21.1 MB (21089899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; arm64 variant v8

```console
$ docker pull mono@sha256:b9f8c9e035c0031920173caa133fa2535de70528bede9238cf2ce5d5f227c3c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52703314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3e175ff9fc68b50d83c4a18051deaf08e21afcaee3294705d4db39b42c67b96`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:51 GMT
ADD file:75f5768db078e9eee90676141a2c9faa9ce02768b7c9cd6e588bdd5ffc0f65e3 in / 
# Mon, 09 Oct 2017 21:43:51 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 01:32:53 GMT
ENV MONO_VERSION=5.2.0.224
# Tue, 10 Oct 2017 01:33:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 10 Oct 2017 01:38:36 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f2da27d97c13e9e531eda9577a28eb81b0d9034d7fd7e6575bd92744eed500f6`  
		Last Modified: Mon, 09 Oct 2017 21:53:20 GMT  
		Size: 27.5 MB (27480591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae39572730019ff3f4db8884b4c1bf3c1de81cdd121dd3ab0475a279d18809fd`  
		Last Modified: Tue, 10 Oct 2017 02:00:19 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be99f966e1dbb256ca4032fbc6388b8507d4fe83692101907a11fad70e6f2f8b`  
		Last Modified: Tue, 10 Oct 2017 02:00:31 GMT  
		Size: 25.2 MB (25220657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mono:slim` - linux; 386

```console
$ docker pull mono@sha256:3e9f329445756d18b6ef76a0ad5e8464bf0a4865e2aba4cf008fc3c630440740
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.3 MB (59287680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29cf6239b87a6631d10186ab7a3818e9963695977b3c3326242972eddf333ac3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:30 GMT
ADD file:169ab3194fd1b25e06359d6eceb655093f44f0255c799ae8a3fc5bf8ba50fd8d in / 
# Mon, 09 Oct 2017 21:42:31 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:19:09 GMT
ENV MONO_VERSION=5.2.0.224
# Mon, 09 Oct 2017 22:19:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 09 Oct 2017 22:20:17 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:d8b3cf5f6e0f087738d5589b812e12f5b8781935412c95d15f2f77d68657b006`  
		Last Modified: Mon, 09 Oct 2017 21:48:54 GMT  
		Size: 30.3 MB (30264454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2c998c1029c632021db5f103d73d3d976670e9b49dc7bfbfd3151098e30ac8`  
		Last Modified: Mon, 09 Oct 2017 22:35:57 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c26cf3f2f75893c1984b2db1156c5e8070ab23332250940e960ba44a5e6440`  
		Last Modified: Mon, 09 Oct 2017 22:36:09 GMT  
		Size: 29.0 MB (29021157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
