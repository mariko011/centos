<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mono`

-	[`mono:5.2.0.215`](#mono520215)
-	[`mono:5.2.0`](#mono520)
-	[`mono:5.2`](#mono52)
-	[`mono:5`](#mono5)
-	[`mono:latest`](#monolatest)
-	[`mono:5.2.0.215-slim`](#mono520215-slim)
-	[`mono:5.2.0-slim`](#mono520-slim)
-	[`mono:5.2-slim`](#mono52-slim)
-	[`mono:5-slim`](#mono5-slim)
-	[`mono:slim`](#monoslim)
-	[`mono:5.0.1.1`](#mono5011)
-	[`mono:5.0.1`](#mono501)
-	[`mono:5.0`](#mono50)
-	[`mono:4.8.0.524`](#mono480524)
-	[`mono:4.8.0`](#mono480)
-	[`mono:4.8`](#mono48)
-	[`mono:4`](#mono4)

## `mono:5.2.0.215`

```console
$ docker pull mono@sha256:32b9d2580388688b8d57742e659f2d021d3d90f036141b1fee81ded64062dd9e
```

-	Platforms:
	-	linux; amd64

### `mono:5.2.0.215` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.0 MB (167022631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd6e21ac4fab2de2887a456c3c0f15ed7e23c9671d374d2426c737d342e026f2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Mon, 21 Aug 2017 17:24:01 GMT
ENV MONO_VERSION=5.2.0.215
# Mon, 21 Aug 2017 17:24:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 21 Aug 2017 17:24:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 21 Aug 2017 17:26:04 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666418377e5b4b88ab2e41737eab5c605446736eb83290b7e977fe14df67da47`  
		Last Modified: Mon, 21 Aug 2017 17:26:13 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a87e0601e5ae8edf2874594c6e4365477af944ca44f78c6ea512ee43a509f7`  
		Last Modified: Mon, 21 Aug 2017 17:26:20 GMT  
		Size: 27.2 MB (27240344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3dafbe502df3cb1a9556a1de78b10008530fdfe5e3355f06014bb7e85b2225`  
		Last Modified: Mon, 21 Aug 2017 17:26:32 GMT  
		Size: 109.7 MB (109658509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.2.0`

```console
$ docker pull mono@sha256:32b9d2580388688b8d57742e659f2d021d3d90f036141b1fee81ded64062dd9e
```

-	Platforms:
	-	linux; amd64

### `mono:5.2.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.0 MB (167022631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd6e21ac4fab2de2887a456c3c0f15ed7e23c9671d374d2426c737d342e026f2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Mon, 21 Aug 2017 17:24:01 GMT
ENV MONO_VERSION=5.2.0.215
# Mon, 21 Aug 2017 17:24:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 21 Aug 2017 17:24:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 21 Aug 2017 17:26:04 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666418377e5b4b88ab2e41737eab5c605446736eb83290b7e977fe14df67da47`  
		Last Modified: Mon, 21 Aug 2017 17:26:13 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a87e0601e5ae8edf2874594c6e4365477af944ca44f78c6ea512ee43a509f7`  
		Last Modified: Mon, 21 Aug 2017 17:26:20 GMT  
		Size: 27.2 MB (27240344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3dafbe502df3cb1a9556a1de78b10008530fdfe5e3355f06014bb7e85b2225`  
		Last Modified: Mon, 21 Aug 2017 17:26:32 GMT  
		Size: 109.7 MB (109658509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.2`

```console
$ docker pull mono@sha256:32b9d2580388688b8d57742e659f2d021d3d90f036141b1fee81ded64062dd9e
```

-	Platforms:
	-	linux; amd64

### `mono:5.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.0 MB (167022631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd6e21ac4fab2de2887a456c3c0f15ed7e23c9671d374d2426c737d342e026f2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Mon, 21 Aug 2017 17:24:01 GMT
ENV MONO_VERSION=5.2.0.215
# Mon, 21 Aug 2017 17:24:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 21 Aug 2017 17:24:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 21 Aug 2017 17:26:04 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666418377e5b4b88ab2e41737eab5c605446736eb83290b7e977fe14df67da47`  
		Last Modified: Mon, 21 Aug 2017 17:26:13 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a87e0601e5ae8edf2874594c6e4365477af944ca44f78c6ea512ee43a509f7`  
		Last Modified: Mon, 21 Aug 2017 17:26:20 GMT  
		Size: 27.2 MB (27240344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3dafbe502df3cb1a9556a1de78b10008530fdfe5e3355f06014bb7e85b2225`  
		Last Modified: Mon, 21 Aug 2017 17:26:32 GMT  
		Size: 109.7 MB (109658509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5`

```console
$ docker pull mono@sha256:32b9d2580388688b8d57742e659f2d021d3d90f036141b1fee81ded64062dd9e
```

-	Platforms:
	-	linux; amd64

### `mono:5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.0 MB (167022631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd6e21ac4fab2de2887a456c3c0f15ed7e23c9671d374d2426c737d342e026f2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Mon, 21 Aug 2017 17:24:01 GMT
ENV MONO_VERSION=5.2.0.215
# Mon, 21 Aug 2017 17:24:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 21 Aug 2017 17:24:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 21 Aug 2017 17:26:04 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666418377e5b4b88ab2e41737eab5c605446736eb83290b7e977fe14df67da47`  
		Last Modified: Mon, 21 Aug 2017 17:26:13 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a87e0601e5ae8edf2874594c6e4365477af944ca44f78c6ea512ee43a509f7`  
		Last Modified: Mon, 21 Aug 2017 17:26:20 GMT  
		Size: 27.2 MB (27240344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3dafbe502df3cb1a9556a1de78b10008530fdfe5e3355f06014bb7e85b2225`  
		Last Modified: Mon, 21 Aug 2017 17:26:32 GMT  
		Size: 109.7 MB (109658509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:latest`

```console
$ docker pull mono@sha256:32b9d2580388688b8d57742e659f2d021d3d90f036141b1fee81ded64062dd9e
```

-	Platforms:
	-	linux; amd64

### `mono:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.0 MB (167022631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd6e21ac4fab2de2887a456c3c0f15ed7e23c9671d374d2426c737d342e026f2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Mon, 21 Aug 2017 17:24:01 GMT
ENV MONO_VERSION=5.2.0.215
# Mon, 21 Aug 2017 17:24:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 21 Aug 2017 17:24:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Mon, 21 Aug 2017 17:26:04 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666418377e5b4b88ab2e41737eab5c605446736eb83290b7e977fe14df67da47`  
		Last Modified: Mon, 21 Aug 2017 17:26:13 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a87e0601e5ae8edf2874594c6e4365477af944ca44f78c6ea512ee43a509f7`  
		Last Modified: Mon, 21 Aug 2017 17:26:20 GMT  
		Size: 27.2 MB (27240344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3dafbe502df3cb1a9556a1de78b10008530fdfe5e3355f06014bb7e85b2225`  
		Last Modified: Mon, 21 Aug 2017 17:26:32 GMT  
		Size: 109.7 MB (109658509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.2.0.215-slim`

```console
$ docker pull mono@sha256:34c6c0a900347476c2e18fc54a7699c56d1d4990a5512fa98eba035b12db5dd5
```

-	Platforms:
	-	linux; amd64

### `mono:5.2.0.215-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57364122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4394b1c02fe0ed0990f6e2fac49db133f196db326111090b4f1b747a2f41b3ce`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Mon, 21 Aug 2017 17:24:01 GMT
ENV MONO_VERSION=5.2.0.215
# Mon, 21 Aug 2017 17:24:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 21 Aug 2017 17:24:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666418377e5b4b88ab2e41737eab5c605446736eb83290b7e977fe14df67da47`  
		Last Modified: Mon, 21 Aug 2017 17:26:13 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a87e0601e5ae8edf2874594c6e4365477af944ca44f78c6ea512ee43a509f7`  
		Last Modified: Mon, 21 Aug 2017 17:26:20 GMT  
		Size: 27.2 MB (27240344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.2.0-slim`

```console
$ docker pull mono@sha256:34c6c0a900347476c2e18fc54a7699c56d1d4990a5512fa98eba035b12db5dd5
```

-	Platforms:
	-	linux; amd64

### `mono:5.2.0-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57364122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4394b1c02fe0ed0990f6e2fac49db133f196db326111090b4f1b747a2f41b3ce`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Mon, 21 Aug 2017 17:24:01 GMT
ENV MONO_VERSION=5.2.0.215
# Mon, 21 Aug 2017 17:24:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 21 Aug 2017 17:24:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666418377e5b4b88ab2e41737eab5c605446736eb83290b7e977fe14df67da47`  
		Last Modified: Mon, 21 Aug 2017 17:26:13 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a87e0601e5ae8edf2874594c6e4365477af944ca44f78c6ea512ee43a509f7`  
		Last Modified: Mon, 21 Aug 2017 17:26:20 GMT  
		Size: 27.2 MB (27240344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.2-slim`

```console
$ docker pull mono@sha256:34c6c0a900347476c2e18fc54a7699c56d1d4990a5512fa98eba035b12db5dd5
```

-	Platforms:
	-	linux; amd64

### `mono:5.2-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57364122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4394b1c02fe0ed0990f6e2fac49db133f196db326111090b4f1b747a2f41b3ce`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Mon, 21 Aug 2017 17:24:01 GMT
ENV MONO_VERSION=5.2.0.215
# Mon, 21 Aug 2017 17:24:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 21 Aug 2017 17:24:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666418377e5b4b88ab2e41737eab5c605446736eb83290b7e977fe14df67da47`  
		Last Modified: Mon, 21 Aug 2017 17:26:13 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a87e0601e5ae8edf2874594c6e4365477af944ca44f78c6ea512ee43a509f7`  
		Last Modified: Mon, 21 Aug 2017 17:26:20 GMT  
		Size: 27.2 MB (27240344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5-slim`

```console
$ docker pull mono@sha256:34c6c0a900347476c2e18fc54a7699c56d1d4990a5512fa98eba035b12db5dd5
```

-	Platforms:
	-	linux; amd64

### `mono:5-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57364122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4394b1c02fe0ed0990f6e2fac49db133f196db326111090b4f1b747a2f41b3ce`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Mon, 21 Aug 2017 17:24:01 GMT
ENV MONO_VERSION=5.2.0.215
# Mon, 21 Aug 2017 17:24:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 21 Aug 2017 17:24:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666418377e5b4b88ab2e41737eab5c605446736eb83290b7e977fe14df67da47`  
		Last Modified: Mon, 21 Aug 2017 17:26:13 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a87e0601e5ae8edf2874594c6e4365477af944ca44f78c6ea512ee43a509f7`  
		Last Modified: Mon, 21 Aug 2017 17:26:20 GMT  
		Size: 27.2 MB (27240344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:slim`

```console
$ docker pull mono@sha256:34c6c0a900347476c2e18fc54a7699c56d1d4990a5512fa98eba035b12db5dd5
```

-	Platforms:
	-	linux; amd64

### `mono:slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57364122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4394b1c02fe0ed0990f6e2fac49db133f196db326111090b4f1b747a2f41b3ce`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Mon, 21 Aug 2017 17:24:01 GMT
ENV MONO_VERSION=5.2.0.215
# Mon, 21 Aug 2017 17:24:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 21 Aug 2017 17:24:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:666418377e5b4b88ab2e41737eab5c605446736eb83290b7e977fe14df67da47`  
		Last Modified: Mon, 21 Aug 2017 17:26:13 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a87e0601e5ae8edf2874594c6e4365477af944ca44f78c6ea512ee43a509f7`  
		Last Modified: Mon, 21 Aug 2017 17:26:20 GMT  
		Size: 27.2 MB (27240344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.0.1.1`

```console
$ docker pull mono@sha256:0e585274d866ad78e29a0cd7531b81fcdd350bb324a5316f32b2b06f496e4ec8
```

-	Platforms:
	-	linux; amd64

### `mono:5.0.1.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.2 MB (164205195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57708f493ffd7683ad838867339fd71c1bf155ac3e61925d1b0a4617aec6f8e6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:54:40 GMT
ENV MONO_VERSION=5.0.1.1
# Wed, 26 Jul 2017 06:55:01 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:55:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 26 Jul 2017 06:56:29 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc11bb9690f80f19d60056e8c3596089da340044d6f94bddf62051f6b59a5612`  
		Last Modified: Wed, 26 Jul 2017 06:59:00 GMT  
		Size: 5.0 MB (5012272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6b49f25a28853d402ce7cea7678a5a599659ac734f0d6b5734e366148bef44`  
		Last Modified: Wed, 26 Jul 2017 06:58:58 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bd4c098ea79d2f1eebf1337550b0d8300eb57fc261bae280c64d51f63a0dac6`  
		Last Modified: Wed, 26 Jul 2017 06:59:31 GMT  
		Size: 129.1 MB (129069138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.0.1`

```console
$ docker pull mono@sha256:0e585274d866ad78e29a0cd7531b81fcdd350bb324a5316f32b2b06f496e4ec8
```

-	Platforms:
	-	linux; amd64

### `mono:5.0.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.2 MB (164205195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57708f493ffd7683ad838867339fd71c1bf155ac3e61925d1b0a4617aec6f8e6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:54:40 GMT
ENV MONO_VERSION=5.0.1.1
# Wed, 26 Jul 2017 06:55:01 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:55:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 26 Jul 2017 06:56:29 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc11bb9690f80f19d60056e8c3596089da340044d6f94bddf62051f6b59a5612`  
		Last Modified: Wed, 26 Jul 2017 06:59:00 GMT  
		Size: 5.0 MB (5012272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6b49f25a28853d402ce7cea7678a5a599659ac734f0d6b5734e366148bef44`  
		Last Modified: Wed, 26 Jul 2017 06:58:58 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bd4c098ea79d2f1eebf1337550b0d8300eb57fc261bae280c64d51f63a0dac6`  
		Last Modified: Wed, 26 Jul 2017 06:59:31 GMT  
		Size: 129.1 MB (129069138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.0`

```console
$ docker pull mono@sha256:0e585274d866ad78e29a0cd7531b81fcdd350bb324a5316f32b2b06f496e4ec8
```

-	Platforms:
	-	linux; amd64

### `mono:5.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.2 MB (164205195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57708f493ffd7683ad838867339fd71c1bf155ac3e61925d1b0a4617aec6f8e6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:54:40 GMT
ENV MONO_VERSION=5.0.1.1
# Wed, 26 Jul 2017 06:55:01 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:55:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 26 Jul 2017 06:56:29 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc11bb9690f80f19d60056e8c3596089da340044d6f94bddf62051f6b59a5612`  
		Last Modified: Wed, 26 Jul 2017 06:59:00 GMT  
		Size: 5.0 MB (5012272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6b49f25a28853d402ce7cea7678a5a599659ac734f0d6b5734e366148bef44`  
		Last Modified: Wed, 26 Jul 2017 06:58:58 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bd4c098ea79d2f1eebf1337550b0d8300eb57fc261bae280c64d51f63a0dac6`  
		Last Modified: Wed, 26 Jul 2017 06:59:31 GMT  
		Size: 129.1 MB (129069138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0.524`

```console
$ docker pull mono@sha256:4410885f64125f42f103c84071f10c3980bbdb17ea186d167dc8a0f3d54e66e5
```

-	Platforms:
	-	linux; amd64

### `mono:4.8.0.524` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153007710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dca8a18b462627d1cd85d42c067fd201a0dc138e28508fde9721dca6403fbb8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:45 GMT
ADD file:6c63dbdde9330ed01af8ef6252996d655a70725462f0a4fefe957062226c464e in / 
# Mon, 24 Jul 2017 16:53:46 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:45:41 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 26 Jul 2017 06:47:53 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 26 Jul 2017 06:48:04 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:48:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 26 Jul 2017 06:49:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:c699c241757a98573c75a48425026d0b9644c4e1e1435592d2a40b40bd802ee9`  
		Last Modified: Mon, 24 Jul 2017 17:01:12 GMT  
		Size: 38.1 MB (38103637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:218d94ee09ddfdded1cacebace5b30e2229e1af9aa3f1ada3cf70ab2939cea02`  
		Last Modified: Wed, 26 Jul 2017 06:57:20 GMT  
		Size: 7.8 MB (7755201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6e1d8e62f6bac987eee0f04ba78a115981de71961b711d201c9f1fa9bc2edc6`  
		Last Modified: Wed, 26 Jul 2017 06:57:18 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e216ff0fdff6b03858c9ec5c93895726e6519df7fe98201e1620e7b217e78e08`  
		Last Modified: Wed, 26 Jul 2017 06:57:44 GMT  
		Size: 107.1 MB (107118970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0`

```console
$ docker pull mono@sha256:4410885f64125f42f103c84071f10c3980bbdb17ea186d167dc8a0f3d54e66e5
```

-	Platforms:
	-	linux; amd64

### `mono:4.8.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153007710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dca8a18b462627d1cd85d42c067fd201a0dc138e28508fde9721dca6403fbb8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:45 GMT
ADD file:6c63dbdde9330ed01af8ef6252996d655a70725462f0a4fefe957062226c464e in / 
# Mon, 24 Jul 2017 16:53:46 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:45:41 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 26 Jul 2017 06:47:53 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 26 Jul 2017 06:48:04 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:48:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 26 Jul 2017 06:49:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:c699c241757a98573c75a48425026d0b9644c4e1e1435592d2a40b40bd802ee9`  
		Last Modified: Mon, 24 Jul 2017 17:01:12 GMT  
		Size: 38.1 MB (38103637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:218d94ee09ddfdded1cacebace5b30e2229e1af9aa3f1ada3cf70ab2939cea02`  
		Last Modified: Wed, 26 Jul 2017 06:57:20 GMT  
		Size: 7.8 MB (7755201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6e1d8e62f6bac987eee0f04ba78a115981de71961b711d201c9f1fa9bc2edc6`  
		Last Modified: Wed, 26 Jul 2017 06:57:18 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e216ff0fdff6b03858c9ec5c93895726e6519df7fe98201e1620e7b217e78e08`  
		Last Modified: Wed, 26 Jul 2017 06:57:44 GMT  
		Size: 107.1 MB (107118970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8`

```console
$ docker pull mono@sha256:4410885f64125f42f103c84071f10c3980bbdb17ea186d167dc8a0f3d54e66e5
```

-	Platforms:
	-	linux; amd64

### `mono:4.8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153007710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dca8a18b462627d1cd85d42c067fd201a0dc138e28508fde9721dca6403fbb8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:45 GMT
ADD file:6c63dbdde9330ed01af8ef6252996d655a70725462f0a4fefe957062226c464e in / 
# Mon, 24 Jul 2017 16:53:46 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:45:41 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 26 Jul 2017 06:47:53 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 26 Jul 2017 06:48:04 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:48:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 26 Jul 2017 06:49:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:c699c241757a98573c75a48425026d0b9644c4e1e1435592d2a40b40bd802ee9`  
		Last Modified: Mon, 24 Jul 2017 17:01:12 GMT  
		Size: 38.1 MB (38103637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:218d94ee09ddfdded1cacebace5b30e2229e1af9aa3f1ada3cf70ab2939cea02`  
		Last Modified: Wed, 26 Jul 2017 06:57:20 GMT  
		Size: 7.8 MB (7755201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6e1d8e62f6bac987eee0f04ba78a115981de71961b711d201c9f1fa9bc2edc6`  
		Last Modified: Wed, 26 Jul 2017 06:57:18 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e216ff0fdff6b03858c9ec5c93895726e6519df7fe98201e1620e7b217e78e08`  
		Last Modified: Wed, 26 Jul 2017 06:57:44 GMT  
		Size: 107.1 MB (107118970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4`

```console
$ docker pull mono@sha256:4410885f64125f42f103c84071f10c3980bbdb17ea186d167dc8a0f3d54e66e5
```

-	Platforms:
	-	linux; amd64

### `mono:4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153007710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dca8a18b462627d1cd85d42c067fd201a0dc138e28508fde9721dca6403fbb8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:45 GMT
ADD file:6c63dbdde9330ed01af8ef6252996d655a70725462f0a4fefe957062226c464e in / 
# Mon, 24 Jul 2017 16:53:46 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:45:41 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 26 Jul 2017 06:47:53 GMT
ENV MONO_VERSION=4.8.0.524
# Wed, 26 Jul 2017 06:48:04 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:48:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 26 Jul 2017 06:49:41 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:c699c241757a98573c75a48425026d0b9644c4e1e1435592d2a40b40bd802ee9`  
		Last Modified: Mon, 24 Jul 2017 17:01:12 GMT  
		Size: 38.1 MB (38103637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:218d94ee09ddfdded1cacebace5b30e2229e1af9aa3f1ada3cf70ab2939cea02`  
		Last Modified: Wed, 26 Jul 2017 06:57:20 GMT  
		Size: 7.8 MB (7755201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6e1d8e62f6bac987eee0f04ba78a115981de71961b711d201c9f1fa9bc2edc6`  
		Last Modified: Wed, 26 Jul 2017 06:57:18 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e216ff0fdff6b03858c9ec5c93895726e6519df7fe98201e1620e7b217e78e08`  
		Last Modified: Wed, 26 Jul 2017 06:57:44 GMT  
		Size: 107.1 MB (107118970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
