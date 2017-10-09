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
$ docker pull mono@sha256:b79b9c1c5e8e2df2296b0e8c03d2428ea2f44bccb58fda1fcbac3f42ccafe72e
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
$ docker pull mono@sha256:b79b9c1c5e8e2df2296b0e8c03d2428ea2f44bccb58fda1fcbac3f42ccafe72e
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
$ docker pull mono@sha256:b79b9c1c5e8e2df2296b0e8c03d2428ea2f44bccb58fda1fcbac3f42ccafe72e
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
$ docker pull mono@sha256:b79b9c1c5e8e2df2296b0e8c03d2428ea2f44bccb58fda1fcbac3f42ccafe72e
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
$ docker pull mono@sha256:51535014b3caffd6ec98b779f29bcb867c1da0f23425ee446e91b6912deefb69
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
$ docker pull mono@sha256:6ab68cd0b4e5e7297ad1f36093e836223653dec6fcad5d62c8db50a15108a016
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
$ docker pull mono@sha256:6ab68cd0b4e5e7297ad1f36093e836223653dec6fcad5d62c8db50a15108a016
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
$ docker pull mono@sha256:6ab68cd0b4e5e7297ad1f36093e836223653dec6fcad5d62c8db50a15108a016
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
$ docker pull mono@sha256:51535014b3caffd6ec98b779f29bcb867c1da0f23425ee446e91b6912deefb69
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
$ docker pull mono@sha256:51535014b3caffd6ec98b779f29bcb867c1da0f23425ee446e91b6912deefb69
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
$ docker pull mono@sha256:51535014b3caffd6ec98b779f29bcb867c1da0f23425ee446e91b6912deefb69
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
$ docker pull mono@sha256:7f4f7a88c143c5eaea4c69ec376e3d481377899fec8aa55e6d5f560d6b99130e
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
$ docker pull mono@sha256:7f4f7a88c143c5eaea4c69ec376e3d481377899fec8aa55e6d5f560d6b99130e
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
$ docker pull mono@sha256:7f4f7a88c143c5eaea4c69ec376e3d481377899fec8aa55e6d5f560d6b99130e
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
$ docker pull mono@sha256:7f4f7a88c143c5eaea4c69ec376e3d481377899fec8aa55e6d5f560d6b99130e
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
$ docker pull mono@sha256:51535014b3caffd6ec98b779f29bcb867c1da0f23425ee446e91b6912deefb69
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
$ docker pull mono@sha256:7f4f7a88c143c5eaea4c69ec376e3d481377899fec8aa55e6d5f560d6b99130e
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
