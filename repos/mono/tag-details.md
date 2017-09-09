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
$ docker pull mono@sha256:cc0391347dc78b9cd08a939d7fe0200adb9681781bfc9e43ed1a32539592aac0
```

-	Platforms:
	-	linux; amd64

### `mono:5.2.0.215` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.0 MB (167012381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b12bcc76a69e7921e9fc5875680223713e6cb09ab16a752a4ab7474005168cbf`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:10:10 GMT
ENV MONO_VERSION=5.2.0.215
# Fri, 08 Sep 2017 08:10:14 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 08:10:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 08 Sep 2017 08:16:18 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b10866cb2d8d50baf4ef8f0a448ecc7fecb113c6df5919e112690866edbc14`  
		Last Modified: Fri, 08 Sep 2017 23:31:48 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c342d75b4aff0439878811ba8c5bfef4981b7395f85b5049569e979bf6b09dd`  
		Last Modified: Fri, 08 Sep 2017 23:31:56 GMT  
		Size: 27.2 MB (27240356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197556ef6492800ee51904c2d9bbd14c2aadff3185d76fb9a39cd44d1c33a701`  
		Last Modified: Fri, 08 Sep 2017 23:32:16 GMT  
		Size: 109.7 MB (109656824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.2.0`

```console
$ docker pull mono@sha256:cc0391347dc78b9cd08a939d7fe0200adb9681781bfc9e43ed1a32539592aac0
```

-	Platforms:
	-	linux; amd64

### `mono:5.2.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.0 MB (167012381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b12bcc76a69e7921e9fc5875680223713e6cb09ab16a752a4ab7474005168cbf`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:10:10 GMT
ENV MONO_VERSION=5.2.0.215
# Fri, 08 Sep 2017 08:10:14 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 08:10:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 08 Sep 2017 08:16:18 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b10866cb2d8d50baf4ef8f0a448ecc7fecb113c6df5919e112690866edbc14`  
		Last Modified: Fri, 08 Sep 2017 23:31:48 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c342d75b4aff0439878811ba8c5bfef4981b7395f85b5049569e979bf6b09dd`  
		Last Modified: Fri, 08 Sep 2017 23:31:56 GMT  
		Size: 27.2 MB (27240356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197556ef6492800ee51904c2d9bbd14c2aadff3185d76fb9a39cd44d1c33a701`  
		Last Modified: Fri, 08 Sep 2017 23:32:16 GMT  
		Size: 109.7 MB (109656824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.2`

```console
$ docker pull mono@sha256:cc0391347dc78b9cd08a939d7fe0200adb9681781bfc9e43ed1a32539592aac0
```

-	Platforms:
	-	linux; amd64

### `mono:5.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.0 MB (167012381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b12bcc76a69e7921e9fc5875680223713e6cb09ab16a752a4ab7474005168cbf`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:10:10 GMT
ENV MONO_VERSION=5.2.0.215
# Fri, 08 Sep 2017 08:10:14 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 08:10:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 08 Sep 2017 08:16:18 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b10866cb2d8d50baf4ef8f0a448ecc7fecb113c6df5919e112690866edbc14`  
		Last Modified: Fri, 08 Sep 2017 23:31:48 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c342d75b4aff0439878811ba8c5bfef4981b7395f85b5049569e979bf6b09dd`  
		Last Modified: Fri, 08 Sep 2017 23:31:56 GMT  
		Size: 27.2 MB (27240356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197556ef6492800ee51904c2d9bbd14c2aadff3185d76fb9a39cd44d1c33a701`  
		Last Modified: Fri, 08 Sep 2017 23:32:16 GMT  
		Size: 109.7 MB (109656824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5`

```console
$ docker pull mono@sha256:cc0391347dc78b9cd08a939d7fe0200adb9681781bfc9e43ed1a32539592aac0
```

-	Platforms:
	-	linux; amd64

### `mono:5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.0 MB (167012381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b12bcc76a69e7921e9fc5875680223713e6cb09ab16a752a4ab7474005168cbf`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:10:10 GMT
ENV MONO_VERSION=5.2.0.215
# Fri, 08 Sep 2017 08:10:14 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 08:10:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 08 Sep 2017 08:16:18 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b10866cb2d8d50baf4ef8f0a448ecc7fecb113c6df5919e112690866edbc14`  
		Last Modified: Fri, 08 Sep 2017 23:31:48 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c342d75b4aff0439878811ba8c5bfef4981b7395f85b5049569e979bf6b09dd`  
		Last Modified: Fri, 08 Sep 2017 23:31:56 GMT  
		Size: 27.2 MB (27240356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197556ef6492800ee51904c2d9bbd14c2aadff3185d76fb9a39cd44d1c33a701`  
		Last Modified: Fri, 08 Sep 2017 23:32:16 GMT  
		Size: 109.7 MB (109656824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:latest`

```console
$ docker pull mono@sha256:cc0391347dc78b9cd08a939d7fe0200adb9681781bfc9e43ed1a32539592aac0
```

-	Platforms:
	-	linux; amd64

### `mono:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.0 MB (167012381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b12bcc76a69e7921e9fc5875680223713e6cb09ab16a752a4ab7474005168cbf`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:10:10 GMT
ENV MONO_VERSION=5.2.0.215
# Fri, 08 Sep 2017 08:10:14 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 08:10:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
# Fri, 08 Sep 2017 08:16:18 GMT
RUN apt-get update   && apt-get install -y binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b10866cb2d8d50baf4ef8f0a448ecc7fecb113c6df5919e112690866edbc14`  
		Last Modified: Fri, 08 Sep 2017 23:31:48 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c342d75b4aff0439878811ba8c5bfef4981b7395f85b5049569e979bf6b09dd`  
		Last Modified: Fri, 08 Sep 2017 23:31:56 GMT  
		Size: 27.2 MB (27240356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197556ef6492800ee51904c2d9bbd14c2aadff3185d76fb9a39cd44d1c33a701`  
		Last Modified: Fri, 08 Sep 2017 23:32:16 GMT  
		Size: 109.7 MB (109656824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.2.0.215-slim`

```console
$ docker pull mono@sha256:e8db6c188ec8d082459d8164c9971d6e38ceffba2d29702dc50b4315175d8050
```

-	Platforms:
	-	linux; amd64

### `mono:5.2.0.215-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57355557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:290ecc0d3a09bb94665c1a48b07654d4dd71894da134d89a01085a0604c6a45e`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:10:10 GMT
ENV MONO_VERSION=5.2.0.215
# Fri, 08 Sep 2017 08:10:14 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 08:10:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b10866cb2d8d50baf4ef8f0a448ecc7fecb113c6df5919e112690866edbc14`  
		Last Modified: Fri, 08 Sep 2017 23:31:48 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c342d75b4aff0439878811ba8c5bfef4981b7395f85b5049569e979bf6b09dd`  
		Last Modified: Fri, 08 Sep 2017 23:31:56 GMT  
		Size: 27.2 MB (27240356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.2.0-slim`

```console
$ docker pull mono@sha256:e8db6c188ec8d082459d8164c9971d6e38ceffba2d29702dc50b4315175d8050
```

-	Platforms:
	-	linux; amd64

### `mono:5.2.0-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57355557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:290ecc0d3a09bb94665c1a48b07654d4dd71894da134d89a01085a0604c6a45e`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:10:10 GMT
ENV MONO_VERSION=5.2.0.215
# Fri, 08 Sep 2017 08:10:14 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 08:10:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b10866cb2d8d50baf4ef8f0a448ecc7fecb113c6df5919e112690866edbc14`  
		Last Modified: Fri, 08 Sep 2017 23:31:48 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c342d75b4aff0439878811ba8c5bfef4981b7395f85b5049569e979bf6b09dd`  
		Last Modified: Fri, 08 Sep 2017 23:31:56 GMT  
		Size: 27.2 MB (27240356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.2-slim`

```console
$ docker pull mono@sha256:e8db6c188ec8d082459d8164c9971d6e38ceffba2d29702dc50b4315175d8050
```

-	Platforms:
	-	linux; amd64

### `mono:5.2-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57355557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:290ecc0d3a09bb94665c1a48b07654d4dd71894da134d89a01085a0604c6a45e`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:10:10 GMT
ENV MONO_VERSION=5.2.0.215
# Fri, 08 Sep 2017 08:10:14 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 08:10:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b10866cb2d8d50baf4ef8f0a448ecc7fecb113c6df5919e112690866edbc14`  
		Last Modified: Fri, 08 Sep 2017 23:31:48 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c342d75b4aff0439878811ba8c5bfef4981b7395f85b5049569e979bf6b09dd`  
		Last Modified: Fri, 08 Sep 2017 23:31:56 GMT  
		Size: 27.2 MB (27240356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5-slim`

```console
$ docker pull mono@sha256:e8db6c188ec8d082459d8164c9971d6e38ceffba2d29702dc50b4315175d8050
```

-	Platforms:
	-	linux; amd64

### `mono:5-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57355557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:290ecc0d3a09bb94665c1a48b07654d4dd71894da134d89a01085a0604c6a45e`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:10:10 GMT
ENV MONO_VERSION=5.2.0.215
# Fri, 08 Sep 2017 08:10:14 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 08:10:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b10866cb2d8d50baf4ef8f0a448ecc7fecb113c6df5919e112690866edbc14`  
		Last Modified: Fri, 08 Sep 2017 23:31:48 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c342d75b4aff0439878811ba8c5bfef4981b7395f85b5049569e979bf6b09dd`  
		Last Modified: Fri, 08 Sep 2017 23:31:56 GMT  
		Size: 27.2 MB (27240356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:slim`

```console
$ docker pull mono@sha256:e8db6c188ec8d082459d8164c9971d6e38ceffba2d29702dc50b4315175d8050
```

-	Platforms:
	-	linux; amd64

### `mono:slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57355557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:290ecc0d3a09bb94665c1a48b07654d4dd71894da134d89a01085a0604c6a45e`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:10:10 GMT
ENV MONO_VERSION=5.2.0.215
# Fri, 08 Sep 2017 08:10:14 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 08:10:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y mono-runtime   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b10866cb2d8d50baf4ef8f0a448ecc7fecb113c6df5919e112690866edbc14`  
		Last Modified: Fri, 08 Sep 2017 23:31:48 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c342d75b4aff0439878811ba8c5bfef4981b7395f85b5049569e979bf6b09dd`  
		Last Modified: Fri, 08 Sep 2017 23:31:56 GMT  
		Size: 27.2 MB (27240356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.0.1.1`

```console
$ docker pull mono@sha256:26e4fdd241d3b25f129ec30a2aaf33623fc777e28750d11994d6e7b582e08307
```

-	Platforms:
	-	linux; amd64

### `mono:5.0.1.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.2 MB (164197002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c05a44170c68a2982cf9ddea3481ae2386fd86596e5f6fcb928f5888bcb9b1e0`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:10:51 GMT
ENV MONO_VERSION=5.0.1.1
# Fri, 08 Sep 2017 08:11:13 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:11:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 08:13:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6f253f466e58c080176773e94d737f7857e078138e9ec01cd2ef04dbbfe38a`  
		Last Modified: Fri, 08 Sep 2017 23:33:40 GMT  
		Size: 5.0 MB (5012192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4daeadfde69fcfc95fb0567dca2c0ef07600c2b3be8a05877459a9680890c76`  
		Last Modified: Fri, 08 Sep 2017 23:33:38 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078eecb0a3594323a2a0b71a9e7b5a7d87dc6c9972789b5c5eb221a4cea2f94c`  
		Last Modified: Fri, 08 Sep 2017 23:34:11 GMT  
		Size: 129.1 MB (129069616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.0.1`

```console
$ docker pull mono@sha256:26e4fdd241d3b25f129ec30a2aaf33623fc777e28750d11994d6e7b582e08307
```

-	Platforms:
	-	linux; amd64

### `mono:5.0.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.2 MB (164197002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c05a44170c68a2982cf9ddea3481ae2386fd86596e5f6fcb928f5888bcb9b1e0`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:10:51 GMT
ENV MONO_VERSION=5.0.1.1
# Fri, 08 Sep 2017 08:11:13 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:11:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 08:13:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6f253f466e58c080176773e94d737f7857e078138e9ec01cd2ef04dbbfe38a`  
		Last Modified: Fri, 08 Sep 2017 23:33:40 GMT  
		Size: 5.0 MB (5012192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4daeadfde69fcfc95fb0567dca2c0ef07600c2b3be8a05877459a9680890c76`  
		Last Modified: Fri, 08 Sep 2017 23:33:38 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078eecb0a3594323a2a0b71a9e7b5a7d87dc6c9972789b5c5eb221a4cea2f94c`  
		Last Modified: Fri, 08 Sep 2017 23:34:11 GMT  
		Size: 129.1 MB (129069616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.0`

```console
$ docker pull mono@sha256:26e4fdd241d3b25f129ec30a2aaf33623fc777e28750d11994d6e7b582e08307
```

-	Platforms:
	-	linux; amd64

### `mono:5.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.2 MB (164197002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c05a44170c68a2982cf9ddea3481ae2386fd86596e5f6fcb928f5888bcb9b1e0`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:10:51 GMT
ENV MONO_VERSION=5.0.1.1
# Fri, 08 Sep 2017 08:11:13 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:11:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 08:13:14 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6f253f466e58c080176773e94d737f7857e078138e9ec01cd2ef04dbbfe38a`  
		Last Modified: Fri, 08 Sep 2017 23:33:40 GMT  
		Size: 5.0 MB (5012192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4daeadfde69fcfc95fb0567dca2c0ef07600c2b3be8a05877459a9680890c76`  
		Last Modified: Fri, 08 Sep 2017 23:33:38 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078eecb0a3594323a2a0b71a9e7b5a7d87dc6c9972789b5c5eb221a4cea2f94c`  
		Last Modified: Fri, 08 Sep 2017 23:34:11 GMT  
		Size: 129.1 MB (129069616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0.524`

```console
$ docker pull mono@sha256:b94d8e735007f1da9936b2890992bef961c778d4e88ca4d181c461b0b5c08736
```

-	Platforms:
	-	linux; amd64

### `mono:4.8.0.524` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153008703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b844957d5976bef3bd392086e783d35c267868c12b892a3e52439b13b9304dd`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:08:56 GMT
ADD file:240ed8d95c0f51cf9dbb7c83f7a0af7e37ee15c7449b864e8770a65f3e771b86 in / 
# Thu, 07 Sep 2017 23:08:56 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:13:20 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 08 Sep 2017 08:13:21 GMT
ENV MONO_VERSION=4.8.0.524
# Fri, 08 Sep 2017 08:13:32 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:13:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 08:15:10 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:48b042a4691b27483afd6b309d6dd2fc12f2c1d388409709b418094a3a4cdf54`  
		Last Modified: Thu, 07 Sep 2017 23:23:34 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e76c429a6c1a4a709a1611dad716b76065f4b6c5028582322e8d6c7b5b7617`  
		Last Modified: Fri, 08 Sep 2017 23:34:40 GMT  
		Size: 7.8 MB (7756337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5476f448ee17077656c5f0e884ab34378bead6842a465597cf93be7e43b83395`  
		Last Modified: Fri, 08 Sep 2017 23:34:38 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bbd9b018865818aa014259f6cbbfca8189de51bc291554f2d4952f153804d0`  
		Last Modified: Fri, 08 Sep 2017 23:35:06 GMT  
		Size: 107.1 MB (107119337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0`

```console
$ docker pull mono@sha256:b94d8e735007f1da9936b2890992bef961c778d4e88ca4d181c461b0b5c08736
```

-	Platforms:
	-	linux; amd64

### `mono:4.8.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153008703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b844957d5976bef3bd392086e783d35c267868c12b892a3e52439b13b9304dd`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:08:56 GMT
ADD file:240ed8d95c0f51cf9dbb7c83f7a0af7e37ee15c7449b864e8770a65f3e771b86 in / 
# Thu, 07 Sep 2017 23:08:56 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:13:20 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 08 Sep 2017 08:13:21 GMT
ENV MONO_VERSION=4.8.0.524
# Fri, 08 Sep 2017 08:13:32 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:13:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 08:15:10 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:48b042a4691b27483afd6b309d6dd2fc12f2c1d388409709b418094a3a4cdf54`  
		Last Modified: Thu, 07 Sep 2017 23:23:34 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e76c429a6c1a4a709a1611dad716b76065f4b6c5028582322e8d6c7b5b7617`  
		Last Modified: Fri, 08 Sep 2017 23:34:40 GMT  
		Size: 7.8 MB (7756337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5476f448ee17077656c5f0e884ab34378bead6842a465597cf93be7e43b83395`  
		Last Modified: Fri, 08 Sep 2017 23:34:38 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bbd9b018865818aa014259f6cbbfca8189de51bc291554f2d4952f153804d0`  
		Last Modified: Fri, 08 Sep 2017 23:35:06 GMT  
		Size: 107.1 MB (107119337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8`

```console
$ docker pull mono@sha256:b94d8e735007f1da9936b2890992bef961c778d4e88ca4d181c461b0b5c08736
```

-	Platforms:
	-	linux; amd64

### `mono:4.8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153008703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b844957d5976bef3bd392086e783d35c267868c12b892a3e52439b13b9304dd`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:08:56 GMT
ADD file:240ed8d95c0f51cf9dbb7c83f7a0af7e37ee15c7449b864e8770a65f3e771b86 in / 
# Thu, 07 Sep 2017 23:08:56 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:13:20 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 08 Sep 2017 08:13:21 GMT
ENV MONO_VERSION=4.8.0.524
# Fri, 08 Sep 2017 08:13:32 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:13:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 08:15:10 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:48b042a4691b27483afd6b309d6dd2fc12f2c1d388409709b418094a3a4cdf54`  
		Last Modified: Thu, 07 Sep 2017 23:23:34 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e76c429a6c1a4a709a1611dad716b76065f4b6c5028582322e8d6c7b5b7617`  
		Last Modified: Fri, 08 Sep 2017 23:34:40 GMT  
		Size: 7.8 MB (7756337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5476f448ee17077656c5f0e884ab34378bead6842a465597cf93be7e43b83395`  
		Last Modified: Fri, 08 Sep 2017 23:34:38 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bbd9b018865818aa014259f6cbbfca8189de51bc291554f2d4952f153804d0`  
		Last Modified: Fri, 08 Sep 2017 23:35:06 GMT  
		Size: 107.1 MB (107119337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4`

```console
$ docker pull mono@sha256:b94d8e735007f1da9936b2890992bef961c778d4e88ca4d181c461b0b5c08736
```

-	Platforms:
	-	linux; amd64

### `mono:4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153008703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b844957d5976bef3bd392086e783d35c267868c12b892a3e52439b13b9304dd`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:08:56 GMT
ADD file:240ed8d95c0f51cf9dbb7c83f7a0af7e37ee15c7449b864e8770a65f3e771b86 in / 
# Thu, 07 Sep 2017 23:08:56 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:13:20 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 08 Sep 2017 08:13:21 GMT
ENV MONO_VERSION=4.8.0.524
# Fri, 08 Sep 2017 08:13:32 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:13:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 08 Sep 2017 08:15:10 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:48b042a4691b27483afd6b309d6dd2fc12f2c1d388409709b418094a3a4cdf54`  
		Last Modified: Thu, 07 Sep 2017 23:23:34 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e76c429a6c1a4a709a1611dad716b76065f4b6c5028582322e8d6c7b5b7617`  
		Last Modified: Fri, 08 Sep 2017 23:34:40 GMT  
		Size: 7.8 MB (7756337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5476f448ee17077656c5f0e884ab34378bead6842a465597cf93be7e43b83395`  
		Last Modified: Fri, 08 Sep 2017 23:34:38 GMT  
		Size: 29.9 KB (29902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bbd9b018865818aa014259f6cbbfca8189de51bc291554f2d4952f153804d0`  
		Last Modified: Fri, 08 Sep 2017 23:35:06 GMT  
		Size: 107.1 MB (107119337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
