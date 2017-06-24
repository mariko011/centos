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
$ docker pull mono@sha256:7dc2d4d68a2c81873ab35f0c487daeba96e73833c3c9b6a721ee4d68c93912c6
```

-	Platforms:
	-	linux; amd64

### `mono:3.12.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128131359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d78f354e89756deb7ef0c02191fce8f2ce6696bdb49c14bf99ea6957253d9658`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:29:57 GMT
ADD file:e58836121f9e162887b70de3a328bb9ff8944a1307cf5f05b9d768a1a49afe60 in / 
# Tue, 20 Jun 2017 20:29:58 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:35:28 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 23 Jun 2017 00:35:40 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:35:43 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 23 Jun 2017 00:37:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5b825a4651ef2855128f8b498adaf68d54840a4b4b66c406e4ea30ede531f1fd`  
		Last Modified: Tue, 20 Jun 2017 21:02:17 GMT  
		Size: 38.1 MB (38103640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b24cf03b28a3fddca745433cead9f5cc6ed5a4d195672dc7fa662481acaac6`  
		Last Modified: Sat, 24 Jun 2017 13:13:45 GMT  
		Size: 7.8 MB (7754789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b919063735b7f9f2bff5be05a128628c62045fce161fe72423d6888e2d6ab305`  
		Last Modified: Sat, 24 Jun 2017 13:13:43 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08be049a6d5c03ab31f78676ed7ca9e4c4874a431ae9dcc6fb253b6a50e35701`  
		Last Modified: Sat, 24 Jun 2017 13:14:02 GMT  
		Size: 82.2 MB (82243024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.12.0`

```console
$ docker pull mono@sha256:7dc2d4d68a2c81873ab35f0c487daeba96e73833c3c9b6a721ee4d68c93912c6
```

-	Platforms:
	-	linux; amd64

### `mono:3.12.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128131359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d78f354e89756deb7ef0c02191fce8f2ce6696bdb49c14bf99ea6957253d9658`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:29:57 GMT
ADD file:e58836121f9e162887b70de3a328bb9ff8944a1307cf5f05b9d768a1a49afe60 in / 
# Tue, 20 Jun 2017 20:29:58 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:35:28 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 23 Jun 2017 00:35:40 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:35:43 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 23 Jun 2017 00:37:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5b825a4651ef2855128f8b498adaf68d54840a4b4b66c406e4ea30ede531f1fd`  
		Last Modified: Tue, 20 Jun 2017 21:02:17 GMT  
		Size: 38.1 MB (38103640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b24cf03b28a3fddca745433cead9f5cc6ed5a4d195672dc7fa662481acaac6`  
		Last Modified: Sat, 24 Jun 2017 13:13:45 GMT  
		Size: 7.8 MB (7754789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b919063735b7f9f2bff5be05a128628c62045fce161fe72423d6888e2d6ab305`  
		Last Modified: Sat, 24 Jun 2017 13:13:43 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08be049a6d5c03ab31f78676ed7ca9e4c4874a431ae9dcc6fb253b6a50e35701`  
		Last Modified: Sat, 24 Jun 2017 13:14:02 GMT  
		Size: 82.2 MB (82243024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.12`

```console
$ docker pull mono@sha256:7dc2d4d68a2c81873ab35f0c487daeba96e73833c3c9b6a721ee4d68c93912c6
```

-	Platforms:
	-	linux; amd64

### `mono:3.12` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128131359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d78f354e89756deb7ef0c02191fce8f2ce6696bdb49c14bf99ea6957253d9658`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:29:57 GMT
ADD file:e58836121f9e162887b70de3a328bb9ff8944a1307cf5f05b9d768a1a49afe60 in / 
# Tue, 20 Jun 2017 20:29:58 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:35:28 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 23 Jun 2017 00:35:40 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:35:43 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 23 Jun 2017 00:37:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5b825a4651ef2855128f8b498adaf68d54840a4b4b66c406e4ea30ede531f1fd`  
		Last Modified: Tue, 20 Jun 2017 21:02:17 GMT  
		Size: 38.1 MB (38103640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b24cf03b28a3fddca745433cead9f5cc6ed5a4d195672dc7fa662481acaac6`  
		Last Modified: Sat, 24 Jun 2017 13:13:45 GMT  
		Size: 7.8 MB (7754789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b919063735b7f9f2bff5be05a128628c62045fce161fe72423d6888e2d6ab305`  
		Last Modified: Sat, 24 Jun 2017 13:13:43 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08be049a6d5c03ab31f78676ed7ca9e4c4874a431ae9dcc6fb253b6a50e35701`  
		Last Modified: Sat, 24 Jun 2017 13:14:02 GMT  
		Size: 82.2 MB (82243024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3`

```console
$ docker pull mono@sha256:7dc2d4d68a2c81873ab35f0c487daeba96e73833c3c9b6a721ee4d68c93912c6
```

-	Platforms:
	-	linux; amd64

### `mono:3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128131359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d78f354e89756deb7ef0c02191fce8f2ce6696bdb49c14bf99ea6957253d9658`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:29:57 GMT
ADD file:e58836121f9e162887b70de3a328bb9ff8944a1307cf5f05b9d768a1a49afe60 in / 
# Tue, 20 Jun 2017 20:29:58 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:35:28 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 23 Jun 2017 00:35:40 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:35:43 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 23 Jun 2017 00:37:25 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5b825a4651ef2855128f8b498adaf68d54840a4b4b66c406e4ea30ede531f1fd`  
		Last Modified: Tue, 20 Jun 2017 21:02:17 GMT  
		Size: 38.1 MB (38103640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b24cf03b28a3fddca745433cead9f5cc6ed5a4d195672dc7fa662481acaac6`  
		Last Modified: Sat, 24 Jun 2017 13:13:45 GMT  
		Size: 7.8 MB (7754789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b919063735b7f9f2bff5be05a128628c62045fce161fe72423d6888e2d6ab305`  
		Last Modified: Sat, 24 Jun 2017 13:13:43 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08be049a6d5c03ab31f78676ed7ca9e4c4874a431ae9dcc6fb253b6a50e35701`  
		Last Modified: Sat, 24 Jun 2017 13:14:02 GMT  
		Size: 82.2 MB (82243024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0.524`

```console
$ docker pull mono@sha256:f617a88c4e87447e7b7c71dcf4feafbf14908eb4d7e251303f17451f2e3b700a
```

-	Platforms:
	-	linux; amd64

### `mono:4.8.0.524` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153006105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef2950b151a7ca0fb7ae3f3a43f2011abcd3cee972aedf0dc4c0b06a46ad4c20`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:29:57 GMT
ADD file:e58836121f9e162887b70de3a328bb9ff8944a1307cf5f05b9d768a1a49afe60 in / 
# Tue, 20 Jun 2017 20:29:58 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:35:28 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 23 Jun 2017 00:37:51 GMT
ENV MONO_VERSION=4.8.0.524
# Fri, 23 Jun 2017 00:38:01 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:38:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 23 Jun 2017 00:39:34 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5b825a4651ef2855128f8b498adaf68d54840a4b4b66c406e4ea30ede531f1fd`  
		Last Modified: Tue, 20 Jun 2017 21:02:17 GMT  
		Size: 38.1 MB (38103640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92ad95faf9d5733d98a0531f478304eb9ed7d0e907c978cfa3b84531a1b39a9`  
		Last Modified: Sat, 24 Jun 2017 13:15:55 GMT  
		Size: 7.8 MB (7754781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059d54e2875ba9fc94bda26e1b779653f023034a77b274409ca4366b538c6568`  
		Last Modified: Sat, 24 Jun 2017 13:15:54 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e736d885f759b6f22240c52861edef3d60a5365c0b7c763daf879f0a8065dd76`  
		Last Modified: Sat, 24 Jun 2017 13:16:19 GMT  
		Size: 107.1 MB (107117778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0`

```console
$ docker pull mono@sha256:f617a88c4e87447e7b7c71dcf4feafbf14908eb4d7e251303f17451f2e3b700a
```

-	Platforms:
	-	linux; amd64

### `mono:4.8.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153006105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef2950b151a7ca0fb7ae3f3a43f2011abcd3cee972aedf0dc4c0b06a46ad4c20`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:29:57 GMT
ADD file:e58836121f9e162887b70de3a328bb9ff8944a1307cf5f05b9d768a1a49afe60 in / 
# Tue, 20 Jun 2017 20:29:58 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:35:28 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 23 Jun 2017 00:37:51 GMT
ENV MONO_VERSION=4.8.0.524
# Fri, 23 Jun 2017 00:38:01 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:38:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 23 Jun 2017 00:39:34 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5b825a4651ef2855128f8b498adaf68d54840a4b4b66c406e4ea30ede531f1fd`  
		Last Modified: Tue, 20 Jun 2017 21:02:17 GMT  
		Size: 38.1 MB (38103640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92ad95faf9d5733d98a0531f478304eb9ed7d0e907c978cfa3b84531a1b39a9`  
		Last Modified: Sat, 24 Jun 2017 13:15:55 GMT  
		Size: 7.8 MB (7754781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059d54e2875ba9fc94bda26e1b779653f023034a77b274409ca4366b538c6568`  
		Last Modified: Sat, 24 Jun 2017 13:15:54 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e736d885f759b6f22240c52861edef3d60a5365c0b7c763daf879f0a8065dd76`  
		Last Modified: Sat, 24 Jun 2017 13:16:19 GMT  
		Size: 107.1 MB (107117778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8`

```console
$ docker pull mono@sha256:f617a88c4e87447e7b7c71dcf4feafbf14908eb4d7e251303f17451f2e3b700a
```

-	Platforms:
	-	linux; amd64

### `mono:4.8` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153006105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef2950b151a7ca0fb7ae3f3a43f2011abcd3cee972aedf0dc4c0b06a46ad4c20`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:29:57 GMT
ADD file:e58836121f9e162887b70de3a328bb9ff8944a1307cf5f05b9d768a1a49afe60 in / 
# Tue, 20 Jun 2017 20:29:58 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:35:28 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 23 Jun 2017 00:37:51 GMT
ENV MONO_VERSION=4.8.0.524
# Fri, 23 Jun 2017 00:38:01 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:38:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 23 Jun 2017 00:39:34 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5b825a4651ef2855128f8b498adaf68d54840a4b4b66c406e4ea30ede531f1fd`  
		Last Modified: Tue, 20 Jun 2017 21:02:17 GMT  
		Size: 38.1 MB (38103640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92ad95faf9d5733d98a0531f478304eb9ed7d0e907c978cfa3b84531a1b39a9`  
		Last Modified: Sat, 24 Jun 2017 13:15:55 GMT  
		Size: 7.8 MB (7754781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059d54e2875ba9fc94bda26e1b779653f023034a77b274409ca4366b538c6568`  
		Last Modified: Sat, 24 Jun 2017 13:15:54 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e736d885f759b6f22240c52861edef3d60a5365c0b7c763daf879f0a8065dd76`  
		Last Modified: Sat, 24 Jun 2017 13:16:19 GMT  
		Size: 107.1 MB (107117778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4`

```console
$ docker pull mono@sha256:f617a88c4e87447e7b7c71dcf4feafbf14908eb4d7e251303f17451f2e3b700a
```

-	Platforms:
	-	linux; amd64

### `mono:4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153006105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef2950b151a7ca0fb7ae3f3a43f2011abcd3cee972aedf0dc4c0b06a46ad4c20`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:29:57 GMT
ADD file:e58836121f9e162887b70de3a328bb9ff8944a1307cf5f05b9d768a1a49afe60 in / 
# Tue, 20 Jun 2017 20:29:58 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:35:28 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Fri, 23 Jun 2017 00:37:51 GMT
ENV MONO_VERSION=4.8.0.524
# Fri, 23 Jun 2017 00:38:01 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:38:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 23 Jun 2017 00:39:34 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5b825a4651ef2855128f8b498adaf68d54840a4b4b66c406e4ea30ede531f1fd`  
		Last Modified: Tue, 20 Jun 2017 21:02:17 GMT  
		Size: 38.1 MB (38103640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92ad95faf9d5733d98a0531f478304eb9ed7d0e907c978cfa3b84531a1b39a9`  
		Last Modified: Sat, 24 Jun 2017 13:15:55 GMT  
		Size: 7.8 MB (7754781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059d54e2875ba9fc94bda26e1b779653f023034a77b274409ca4366b538c6568`  
		Last Modified: Sat, 24 Jun 2017 13:15:54 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e736d885f759b6f22240c52861edef3d60a5365c0b7c763daf879f0a8065dd76`  
		Last Modified: Sat, 24 Jun 2017 13:16:19 GMT  
		Size: 107.1 MB (107117778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.0.0.100`

```console
$ docker pull mono@sha256:ea8df345c99f0f3711e05b056bdeb5ad592c55356c02a667c1f8e7dc7343b2fc
```

-	Platforms:
	-	linux; amd64

### `mono:5.0.0.100` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.2 MB (164212074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15c16368ef043d0944b24a6e1b681ec73760391aeccfad1831be1e618b962868`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:40:00 GMT
ENV MONO_VERSION=5.0.0.100
# Fri, 23 Jun 2017 00:40:13 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:40:16 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 23 Jun 2017 00:41:22 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0614ab49347524cf30be581c2e128dcee266555f43ff96ff95f374355bbf63`  
		Last Modified: Sat, 24 Jun 2017 13:18:13 GMT  
		Size: 5.0 MB (5013352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a541ff04e4742e699e86e2d20931ae6222e10e8dad23828c0c49a0922e16464c`  
		Last Modified: Sat, 24 Jun 2017 13:18:11 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc91227e038cdf9cfbb7914ef0c46a2016539dad17ca5ef16eded69e5b6074a2`  
		Last Modified: Sat, 24 Jun 2017 13:18:43 GMT  
		Size: 129.1 MB (129066365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.0.0`

```console
$ docker pull mono@sha256:ea8df345c99f0f3711e05b056bdeb5ad592c55356c02a667c1f8e7dc7343b2fc
```

-	Platforms:
	-	linux; amd64

### `mono:5.0.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.2 MB (164212074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15c16368ef043d0944b24a6e1b681ec73760391aeccfad1831be1e618b962868`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:40:00 GMT
ENV MONO_VERSION=5.0.0.100
# Fri, 23 Jun 2017 00:40:13 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:40:16 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 23 Jun 2017 00:41:22 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0614ab49347524cf30be581c2e128dcee266555f43ff96ff95f374355bbf63`  
		Last Modified: Sat, 24 Jun 2017 13:18:13 GMT  
		Size: 5.0 MB (5013352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a541ff04e4742e699e86e2d20931ae6222e10e8dad23828c0c49a0922e16464c`  
		Last Modified: Sat, 24 Jun 2017 13:18:11 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc91227e038cdf9cfbb7914ef0c46a2016539dad17ca5ef16eded69e5b6074a2`  
		Last Modified: Sat, 24 Jun 2017 13:18:43 GMT  
		Size: 129.1 MB (129066365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.0.1.1`

```console
$ docker pull mono@sha256:829a3e9ff6b43ae376cdf681c05bbd9fbb58d8f7f89c025c9bb8784eae45b2cc
```

-	Platforms:
	-	linux; amd64

### `mono:5.0.1.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.2 MB (164216853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34ff573d43b0e6d3ff3708d9bddde8dfcc3a3fd3787aa623ea552b4903692975`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:41:48 GMT
ENV MONO_VERSION=5.0.1.1
# Fri, 23 Jun 2017 00:42:02 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:42:05 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 23 Jun 2017 00:43:22 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8278a0cf55fdc1c24cedb938ea57056335d4bc23b4a21b88a88ba944503fb170`  
		Last Modified: Sat, 24 Jun 2017 13:20:34 GMT  
		Size: 5.0 MB (5013355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c09996afb812cd793915fabb6ddf78ae57cafdfdd35bbe403befdf88c896fc6`  
		Last Modified: Sat, 24 Jun 2017 13:20:33 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a6bd0396c72d54001f7deb912024563cdca639350a21b87650e833da1a9d27`  
		Last Modified: Sat, 24 Jun 2017 13:21:03 GMT  
		Size: 129.1 MB (129071142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.0.1`

```console
$ docker pull mono@sha256:829a3e9ff6b43ae376cdf681c05bbd9fbb58d8f7f89c025c9bb8784eae45b2cc
```

-	Platforms:
	-	linux; amd64

### `mono:5.0.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.2 MB (164216853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34ff573d43b0e6d3ff3708d9bddde8dfcc3a3fd3787aa623ea552b4903692975`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:41:48 GMT
ENV MONO_VERSION=5.0.1.1
# Fri, 23 Jun 2017 00:42:02 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:42:05 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 23 Jun 2017 00:43:22 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8278a0cf55fdc1c24cedb938ea57056335d4bc23b4a21b88a88ba944503fb170`  
		Last Modified: Sat, 24 Jun 2017 13:20:34 GMT  
		Size: 5.0 MB (5013355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c09996afb812cd793915fabb6ddf78ae57cafdfdd35bbe403befdf88c896fc6`  
		Last Modified: Sat, 24 Jun 2017 13:20:33 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a6bd0396c72d54001f7deb912024563cdca639350a21b87650e833da1a9d27`  
		Last Modified: Sat, 24 Jun 2017 13:21:03 GMT  
		Size: 129.1 MB (129071142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.0`

```console
$ docker pull mono@sha256:829a3e9ff6b43ae376cdf681c05bbd9fbb58d8f7f89c025c9bb8784eae45b2cc
```

-	Platforms:
	-	linux; amd64

### `mono:5.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.2 MB (164216853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34ff573d43b0e6d3ff3708d9bddde8dfcc3a3fd3787aa623ea552b4903692975`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:41:48 GMT
ENV MONO_VERSION=5.0.1.1
# Fri, 23 Jun 2017 00:42:02 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:42:05 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 23 Jun 2017 00:43:22 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8278a0cf55fdc1c24cedb938ea57056335d4bc23b4a21b88a88ba944503fb170`  
		Last Modified: Sat, 24 Jun 2017 13:20:34 GMT  
		Size: 5.0 MB (5013355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c09996afb812cd793915fabb6ddf78ae57cafdfdd35bbe403befdf88c896fc6`  
		Last Modified: Sat, 24 Jun 2017 13:20:33 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a6bd0396c72d54001f7deb912024563cdca639350a21b87650e833da1a9d27`  
		Last Modified: Sat, 24 Jun 2017 13:21:03 GMT  
		Size: 129.1 MB (129071142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5`

```console
$ docker pull mono@sha256:829a3e9ff6b43ae376cdf681c05bbd9fbb58d8f7f89c025c9bb8784eae45b2cc
```

-	Platforms:
	-	linux; amd64

### `mono:5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.2 MB (164216853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34ff573d43b0e6d3ff3708d9bddde8dfcc3a3fd3787aa623ea552b4903692975`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:41:48 GMT
ENV MONO_VERSION=5.0.1.1
# Fri, 23 Jun 2017 00:42:02 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:42:05 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 23 Jun 2017 00:43:22 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8278a0cf55fdc1c24cedb938ea57056335d4bc23b4a21b88a88ba944503fb170`  
		Last Modified: Sat, 24 Jun 2017 13:20:34 GMT  
		Size: 5.0 MB (5013355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c09996afb812cd793915fabb6ddf78ae57cafdfdd35bbe403befdf88c896fc6`  
		Last Modified: Sat, 24 Jun 2017 13:20:33 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a6bd0396c72d54001f7deb912024563cdca639350a21b87650e833da1a9d27`  
		Last Modified: Sat, 24 Jun 2017 13:21:03 GMT  
		Size: 129.1 MB (129071142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:latest`

```console
$ docker pull mono@sha256:829a3e9ff6b43ae376cdf681c05bbd9fbb58d8f7f89c025c9bb8784eae45b2cc
```

-	Platforms:
	-	linux; amd64

### `mono:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.2 MB (164216853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34ff573d43b0e6d3ff3708d9bddde8dfcc3a3fd3787aa623ea552b4903692975`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:14:51 GMT
ADD file:ede5a88363e384813454439a3c2b44c445aea433284d040a20e4149bf9f18a5c in / 
# Tue, 20 Jun 2017 20:14:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:41:48 GMT
ENV MONO_VERSION=5.0.1.1
# Fri, 23 Jun 2017 00:42:02 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:42:05 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Fri, 23 Jun 2017 00:43:22 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:f5cc0ee7a6f68b065e4d0a517a2cbae2e3bffb242b3252b53fe77496adaae514`  
		Last Modified: Tue, 20 Jun 2017 20:38:12 GMT  
		Size: 30.1 MB (30130289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8278a0cf55fdc1c24cedb938ea57056335d4bc23b4a21b88a88ba944503fb170`  
		Last Modified: Sat, 24 Jun 2017 13:20:34 GMT  
		Size: 5.0 MB (5013355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c09996afb812cd793915fabb6ddf78ae57cafdfdd35bbe403befdf88c896fc6`  
		Last Modified: Sat, 24 Jun 2017 13:20:33 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a6bd0396c72d54001f7deb912024563cdca639350a21b87650e833da1a9d27`  
		Last Modified: Sat, 24 Jun 2017 13:21:03 GMT  
		Size: 129.1 MB (129071142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
