<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mono`

-	[`mono:3.12.1`](#mono3121)
-	[`mono:3.12.0`](#mono3120)
-	[`mono:3.12`](#mono312)
-	[`mono:3`](#mono3)
-	[`mono:4.8.0.524`](#mono480524)
-	[`mono:4.8.0`](#mono480)
-	[`mono:4.8`](#mono48)
-	[`mono:4`](#mono4)
-	[`mono:5.0.0.100`](#mono500100)
-	[`mono:5.0.0`](#mono500)
-	[`mono:5.0.1.1`](#mono5011)
-	[`mono:5.0.1`](#mono501)
-	[`mono:5.0`](#mono50)
-	[`mono:5`](#mono5)
-	[`mono:latest`](#monolatest)

## `mono:3.12.1`

```console
$ docker pull mono@sha256:0f48a48f3be1e5dc51978c0569dab5abf7096b29adea40773abc03f3ad466a14
```

-	Platforms:
	-	linux; amd64

### `mono:3.12.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.2 MB (128150982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcdbe714405d6368de58bbc17fdad7025cf0b1977093191609813946dfe8cb3e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:41:02 GMT
ADD file:5f4eeb9d08ac23595a4130e8b7689bd25379e92fecf5f62e18ea0f1c95d73c33 in / 
# Mon, 08 May 2017 23:41:17 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:36:45 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 09 May 2017 17:36:55 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:36:57 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 09 May 2017 17:38:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:af65d799fdb4729bcd56cfa8da95fe4f787ead4b4f434e878c60b3dfa0cebba1`  
		Last Modified: Mon, 08 May 2017 23:58:57 GMT  
		Size: 38.1 MB (38116549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1cc233de6d80e440ec9b336e9fca89ffcbd96d62c80c625afd0a5234875fc48`  
		Last Modified: Sat, 13 May 2017 07:14:42 GMT  
		Size: 7.8 MB (7759615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e665d578482f0750ac89e42cb743735160e843b093f7819c0a83335db995c0e`  
		Last Modified: Sat, 13 May 2017 07:14:42 GMT  
		Size: 29.9 KB (29903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720434b59836de6b0b2c7b22fa98bab1473efb43cc53a2dc5db8231ccaf12d95`  
		Last Modified: Sat, 13 May 2017 07:17:06 GMT  
		Size: 82.2 MB (82244915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.12.0`

```console
$ docker pull mono@sha256:0f48a48f3be1e5dc51978c0569dab5abf7096b29adea40773abc03f3ad466a14
```

-	Platforms:
	-	linux; amd64

### `mono:3.12.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.2 MB (128150982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcdbe714405d6368de58bbc17fdad7025cf0b1977093191609813946dfe8cb3e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:41:02 GMT
ADD file:5f4eeb9d08ac23595a4130e8b7689bd25379e92fecf5f62e18ea0f1c95d73c33 in / 
# Mon, 08 May 2017 23:41:17 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:36:45 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 09 May 2017 17:36:55 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:36:57 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 09 May 2017 17:38:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:af65d799fdb4729bcd56cfa8da95fe4f787ead4b4f434e878c60b3dfa0cebba1`  
		Last Modified: Mon, 08 May 2017 23:58:57 GMT  
		Size: 38.1 MB (38116549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1cc233de6d80e440ec9b336e9fca89ffcbd96d62c80c625afd0a5234875fc48`  
		Last Modified: Sat, 13 May 2017 07:14:42 GMT  
		Size: 7.8 MB (7759615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e665d578482f0750ac89e42cb743735160e843b093f7819c0a83335db995c0e`  
		Last Modified: Sat, 13 May 2017 07:14:42 GMT  
		Size: 29.9 KB (29903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720434b59836de6b0b2c7b22fa98bab1473efb43cc53a2dc5db8231ccaf12d95`  
		Last Modified: Sat, 13 May 2017 07:17:06 GMT  
		Size: 82.2 MB (82244915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.12`

```console
$ docker pull mono@sha256:0f48a48f3be1e5dc51978c0569dab5abf7096b29adea40773abc03f3ad466a14
```

-	Platforms:
	-	linux; amd64

### `mono:3.12` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.2 MB (128150982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcdbe714405d6368de58bbc17fdad7025cf0b1977093191609813946dfe8cb3e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:41:02 GMT
ADD file:5f4eeb9d08ac23595a4130e8b7689bd25379e92fecf5f62e18ea0f1c95d73c33 in / 
# Mon, 08 May 2017 23:41:17 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:36:45 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 09 May 2017 17:36:55 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:36:57 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 09 May 2017 17:38:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:af65d799fdb4729bcd56cfa8da95fe4f787ead4b4f434e878c60b3dfa0cebba1`  
		Last Modified: Mon, 08 May 2017 23:58:57 GMT  
		Size: 38.1 MB (38116549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1cc233de6d80e440ec9b336e9fca89ffcbd96d62c80c625afd0a5234875fc48`  
		Last Modified: Sat, 13 May 2017 07:14:42 GMT  
		Size: 7.8 MB (7759615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e665d578482f0750ac89e42cb743735160e843b093f7819c0a83335db995c0e`  
		Last Modified: Sat, 13 May 2017 07:14:42 GMT  
		Size: 29.9 KB (29903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720434b59836de6b0b2c7b22fa98bab1473efb43cc53a2dc5db8231ccaf12d95`  
		Last Modified: Sat, 13 May 2017 07:17:06 GMT  
		Size: 82.2 MB (82244915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3`

```console
$ docker pull mono@sha256:0f48a48f3be1e5dc51978c0569dab5abf7096b29adea40773abc03f3ad466a14
```

-	Platforms:
	-	linux; amd64

### `mono:3` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.2 MB (128150982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcdbe714405d6368de58bbc17fdad7025cf0b1977093191609813946dfe8cb3e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:41:02 GMT
ADD file:5f4eeb9d08ac23595a4130e8b7689bd25379e92fecf5f62e18ea0f1c95d73c33 in / 
# Mon, 08 May 2017 23:41:17 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:36:45 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 09 May 2017 17:36:55 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:36:57 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 09 May 2017 17:38:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:af65d799fdb4729bcd56cfa8da95fe4f787ead4b4f434e878c60b3dfa0cebba1`  
		Last Modified: Mon, 08 May 2017 23:58:57 GMT  
		Size: 38.1 MB (38116549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1cc233de6d80e440ec9b336e9fca89ffcbd96d62c80c625afd0a5234875fc48`  
		Last Modified: Sat, 13 May 2017 07:14:42 GMT  
		Size: 7.8 MB (7759615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e665d578482f0750ac89e42cb743735160e843b093f7819c0a83335db995c0e`  
		Last Modified: Sat, 13 May 2017 07:14:42 GMT  
		Size: 29.9 KB (29903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720434b59836de6b0b2c7b22fa98bab1473efb43cc53a2dc5db8231ccaf12d95`  
		Last Modified: Sat, 13 May 2017 07:17:06 GMT  
		Size: 82.2 MB (82244915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0.524`

```console
$ docker pull mono@sha256:7a53ff858b9ccca5344f6e07e60092ec7585f5094314df885f989feabe7b3755
```

-	Platforms:
	-	linux; amd64

### `mono:4.8.0.524` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153028243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8c01a0b704889c3f7c86e97bd2aa7264ec735497f18fa21d24d260c4bd2ef67`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:41:02 GMT
ADD file:5f4eeb9d08ac23595a4130e8b7689bd25379e92fecf5f62e18ea0f1c95d73c33 in / 
# Mon, 08 May 2017 23:41:17 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:36:45 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 09 May 2017 17:45:00 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 09 May 2017 17:45:14 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:45:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 09 May 2017 17:46:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:af65d799fdb4729bcd56cfa8da95fe4f787ead4b4f434e878c60b3dfa0cebba1`  
		Last Modified: Mon, 08 May 2017 23:58:57 GMT  
		Size: 38.1 MB (38116549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d7d3aa18d3adc68f72564aa4cb27504383c641ad3434d149d2f0ab3e50d2a3`  
		Last Modified: Sat, 13 May 2017 07:54:58 GMT  
		Size: 7.8 MB (7759602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3277ca299b13f5f3834043d569e01bc29b889a7b46864e11b358b6d66720550f`  
		Last Modified: Sat, 13 May 2017 07:54:57 GMT  
		Size: 29.9 KB (29904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9bd75a784bc45cc92fe59cec611ed628a6dfd47e40a2fc14b41bfc0559e165`  
		Last Modified: Sat, 13 May 2017 07:55:26 GMT  
		Size: 107.1 MB (107122188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0`

```console
$ docker pull mono@sha256:7a53ff858b9ccca5344f6e07e60092ec7585f5094314df885f989feabe7b3755
```

-	Platforms:
	-	linux; amd64

### `mono:4.8.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153028243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8c01a0b704889c3f7c86e97bd2aa7264ec735497f18fa21d24d260c4bd2ef67`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:41:02 GMT
ADD file:5f4eeb9d08ac23595a4130e8b7689bd25379e92fecf5f62e18ea0f1c95d73c33 in / 
# Mon, 08 May 2017 23:41:17 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:36:45 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 09 May 2017 17:45:00 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 09 May 2017 17:45:14 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:45:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 09 May 2017 17:46:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:af65d799fdb4729bcd56cfa8da95fe4f787ead4b4f434e878c60b3dfa0cebba1`  
		Last Modified: Mon, 08 May 2017 23:58:57 GMT  
		Size: 38.1 MB (38116549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d7d3aa18d3adc68f72564aa4cb27504383c641ad3434d149d2f0ab3e50d2a3`  
		Last Modified: Sat, 13 May 2017 07:54:58 GMT  
		Size: 7.8 MB (7759602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3277ca299b13f5f3834043d569e01bc29b889a7b46864e11b358b6d66720550f`  
		Last Modified: Sat, 13 May 2017 07:54:57 GMT  
		Size: 29.9 KB (29904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9bd75a784bc45cc92fe59cec611ed628a6dfd47e40a2fc14b41bfc0559e165`  
		Last Modified: Sat, 13 May 2017 07:55:26 GMT  
		Size: 107.1 MB (107122188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8`

```console
$ docker pull mono@sha256:7a53ff858b9ccca5344f6e07e60092ec7585f5094314df885f989feabe7b3755
```

-	Platforms:
	-	linux; amd64

### `mono:4.8` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153028243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8c01a0b704889c3f7c86e97bd2aa7264ec735497f18fa21d24d260c4bd2ef67`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:41:02 GMT
ADD file:5f4eeb9d08ac23595a4130e8b7689bd25379e92fecf5f62e18ea0f1c95d73c33 in / 
# Mon, 08 May 2017 23:41:17 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:36:45 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 09 May 2017 17:45:00 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 09 May 2017 17:45:14 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:45:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 09 May 2017 17:46:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:af65d799fdb4729bcd56cfa8da95fe4f787ead4b4f434e878c60b3dfa0cebba1`  
		Last Modified: Mon, 08 May 2017 23:58:57 GMT  
		Size: 38.1 MB (38116549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d7d3aa18d3adc68f72564aa4cb27504383c641ad3434d149d2f0ab3e50d2a3`  
		Last Modified: Sat, 13 May 2017 07:54:58 GMT  
		Size: 7.8 MB (7759602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3277ca299b13f5f3834043d569e01bc29b889a7b46864e11b358b6d66720550f`  
		Last Modified: Sat, 13 May 2017 07:54:57 GMT  
		Size: 29.9 KB (29904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9bd75a784bc45cc92fe59cec611ed628a6dfd47e40a2fc14b41bfc0559e165`  
		Last Modified: Sat, 13 May 2017 07:55:26 GMT  
		Size: 107.1 MB (107122188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4`

```console
$ docker pull mono@sha256:7a53ff858b9ccca5344f6e07e60092ec7585f5094314df885f989feabe7b3755
```

-	Platforms:
	-	linux; amd64

### `mono:4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153028243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8c01a0b704889c3f7c86e97bd2aa7264ec735497f18fa21d24d260c4bd2ef67`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:41:02 GMT
ADD file:5f4eeb9d08ac23595a4130e8b7689bd25379e92fecf5f62e18ea0f1c95d73c33 in / 
# Mon, 08 May 2017 23:41:17 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:36:45 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Tue, 09 May 2017 17:45:00 GMT
ENV MONO_VERSION=4.8.0.524
# Tue, 09 May 2017 17:45:14 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:45:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Tue, 09 May 2017 17:46:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:af65d799fdb4729bcd56cfa8da95fe4f787ead4b4f434e878c60b3dfa0cebba1`  
		Last Modified: Mon, 08 May 2017 23:58:57 GMT  
		Size: 38.1 MB (38116549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d7d3aa18d3adc68f72564aa4cb27504383c641ad3434d149d2f0ab3e50d2a3`  
		Last Modified: Sat, 13 May 2017 07:54:58 GMT  
		Size: 7.8 MB (7759602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3277ca299b13f5f3834043d569e01bc29b889a7b46864e11b358b6d66720550f`  
		Last Modified: Sat, 13 May 2017 07:54:57 GMT  
		Size: 29.9 KB (29904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9bd75a784bc45cc92fe59cec611ed628a6dfd47e40a2fc14b41bfc0559e165`  
		Last Modified: Sat, 13 May 2017 07:55:26 GMT  
		Size: 107.1 MB (107122188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.0.0.100`

```console
$ docker pull mono@sha256:de2179504b5be6693299e3803e2dc23e65dc62f7cb7619793f7016fef8d2085a
```

-	Platforms:
	-	linux; amd64

### `mono:5.0.0.100` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.8 MB (203790766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4a9afed02d5a4909d16487be57d37f60af7e75507b4d0fa9323851d0ece2534`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 15 May 2017 18:01:04 GMT
ENV MONO_VERSION=5.0.0.100
# Mon, 15 May 2017 18:01:45 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 18:01:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 15 May 2017 18:03:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:591f2cad416ec132b2246f472dc040d5743f4accce26bf4c0fe91d7fe0ed5687`  
		Last Modified: Mon, 15 May 2017 18:09:46 GMT  
		Size: 9.5 MB (9502014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4fff4de40e24c2223b02ccd191a67c811f34b0f34afa5ae3a0e7d1d52fbd13`  
		Last Modified: Mon, 15 May 2017 18:09:44 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e71168bbfcd53a7c42062dc45f615dea1646d6d1f4faabb0d8be5308d6c16b`  
		Last Modified: Mon, 15 May 2017 18:10:14 GMT  
		Size: 141.7 MB (141702676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.0.0`

```console
$ docker pull mono@sha256:de2179504b5be6693299e3803e2dc23e65dc62f7cb7619793f7016fef8d2085a
```

-	Platforms:
	-	linux; amd64

### `mono:5.0.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.8 MB (203790766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4a9afed02d5a4909d16487be57d37f60af7e75507b4d0fa9323851d0ece2534`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 15 May 2017 18:01:04 GMT
ENV MONO_VERSION=5.0.0.100
# Mon, 15 May 2017 18:01:45 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 18:01:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 15 May 2017 18:03:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:591f2cad416ec132b2246f472dc040d5743f4accce26bf4c0fe91d7fe0ed5687`  
		Last Modified: Mon, 15 May 2017 18:09:46 GMT  
		Size: 9.5 MB (9502014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4fff4de40e24c2223b02ccd191a67c811f34b0f34afa5ae3a0e7d1d52fbd13`  
		Last Modified: Mon, 15 May 2017 18:09:44 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e71168bbfcd53a7c42062dc45f615dea1646d6d1f4faabb0d8be5308d6c16b`  
		Last Modified: Mon, 15 May 2017 18:10:14 GMT  
		Size: 141.7 MB (141702676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.0.1.1`

**does not exist** (yet?)

## `mono:5.0.1`

**does not exist** (yet?)

## `mono:5.0`

```console
$ docker pull mono@sha256:de2179504b5be6693299e3803e2dc23e65dc62f7cb7619793f7016fef8d2085a
```

-	Platforms:
	-	linux; amd64

### `mono:5.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.8 MB (203790766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4a9afed02d5a4909d16487be57d37f60af7e75507b4d0fa9323851d0ece2534`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 15 May 2017 18:01:04 GMT
ENV MONO_VERSION=5.0.0.100
# Mon, 15 May 2017 18:01:45 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 18:01:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 15 May 2017 18:03:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:591f2cad416ec132b2246f472dc040d5743f4accce26bf4c0fe91d7fe0ed5687`  
		Last Modified: Mon, 15 May 2017 18:09:46 GMT  
		Size: 9.5 MB (9502014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4fff4de40e24c2223b02ccd191a67c811f34b0f34afa5ae3a0e7d1d52fbd13`  
		Last Modified: Mon, 15 May 2017 18:09:44 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e71168bbfcd53a7c42062dc45f615dea1646d6d1f4faabb0d8be5308d6c16b`  
		Last Modified: Mon, 15 May 2017 18:10:14 GMT  
		Size: 141.7 MB (141702676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5`

```console
$ docker pull mono@sha256:de2179504b5be6693299e3803e2dc23e65dc62f7cb7619793f7016fef8d2085a
```

-	Platforms:
	-	linux; amd64

### `mono:5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.8 MB (203790766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4a9afed02d5a4909d16487be57d37f60af7e75507b4d0fa9323851d0ece2534`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 15 May 2017 18:01:04 GMT
ENV MONO_VERSION=5.0.0.100
# Mon, 15 May 2017 18:01:45 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 18:01:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 15 May 2017 18:03:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:591f2cad416ec132b2246f472dc040d5743f4accce26bf4c0fe91d7fe0ed5687`  
		Last Modified: Mon, 15 May 2017 18:09:46 GMT  
		Size: 9.5 MB (9502014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4fff4de40e24c2223b02ccd191a67c811f34b0f34afa5ae3a0e7d1d52fbd13`  
		Last Modified: Mon, 15 May 2017 18:09:44 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e71168bbfcd53a7c42062dc45f615dea1646d6d1f4faabb0d8be5308d6c16b`  
		Last Modified: Mon, 15 May 2017 18:10:14 GMT  
		Size: 141.7 MB (141702676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:latest`

```console
$ docker pull mono@sha256:de2179504b5be6693299e3803e2dc23e65dc62f7cb7619793f7016fef8d2085a
```

-	Platforms:
	-	linux; amd64

### `mono:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.8 MB (203790766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4a9afed02d5a4909d16487be57d37f60af7e75507b4d0fa9323851d0ece2534`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 15 May 2017 18:01:04 GMT
ENV MONO_VERSION=5.0.0.100
# Mon, 15 May 2017 18:01:45 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 18:01:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 15 May 2017 18:03:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:591f2cad416ec132b2246f472dc040d5743f4accce26bf4c0fe91d7fe0ed5687`  
		Last Modified: Mon, 15 May 2017 18:09:46 GMT  
		Size: 9.5 MB (9502014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4fff4de40e24c2223b02ccd191a67c811f34b0f34afa5ae3a0e7d1d52fbd13`  
		Last Modified: Mon, 15 May 2017 18:09:44 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97e71168bbfcd53a7c42062dc45f615dea1646d6d1f4faabb0d8be5308d6c16b`  
		Last Modified: Mon, 15 May 2017 18:10:14 GMT  
		Size: 141.7 MB (141702676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
