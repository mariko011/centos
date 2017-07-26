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
$ docker pull mono@sha256:515753ecd70313f6107fcba1cadeaaad691848ed4c82d89e38e42c058a3e270e
```

-	Platforms:
	-	linux; amd64

### `mono:3.12.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128132498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fe26674f2d9f2710b81a29b4dc1f5720e651f011d7049f018c7d1b2754a4a24`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:45 GMT
ADD file:6c63dbdde9330ed01af8ef6252996d655a70725462f0a4fefe957062226c464e in / 
# Mon, 24 Jul 2017 16:53:46 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:45:41 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 26 Jul 2017 06:45:55 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:45:58 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 26 Jul 2017 06:47:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c699c241757a98573c75a48425026d0b9644c4e1e1435592d2a40b40bd802ee9`  
		Last Modified: Mon, 24 Jul 2017 17:01:12 GMT  
		Size: 38.1 MB (38103637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4e8e7e88e082468ca6e3abc2947988edce06e2d7e44c8b462c752539b59a983`  
		Last Modified: Wed, 26 Jul 2017 06:56:38 GMT  
		Size: 7.8 MB (7755102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45ce2c1e3bdfdd4b08eaf7f79bc03af61201a17cd9023019ce7905ee491709b8`  
		Last Modified: Wed, 26 Jul 2017 06:56:35 GMT  
		Size: 29.9 KB (29903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065e7b0522e5a1ceaf674b68943a4edce886bd18c86aaf16a6f0ed9bff196c5f`  
		Last Modified: Wed, 26 Jul 2017 06:56:56 GMT  
		Size: 82.2 MB (82243856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.12.0`

```console
$ docker pull mono@sha256:515753ecd70313f6107fcba1cadeaaad691848ed4c82d89e38e42c058a3e270e
```

-	Platforms:
	-	linux; amd64

### `mono:3.12.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128132498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fe26674f2d9f2710b81a29b4dc1f5720e651f011d7049f018c7d1b2754a4a24`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:45 GMT
ADD file:6c63dbdde9330ed01af8ef6252996d655a70725462f0a4fefe957062226c464e in / 
# Mon, 24 Jul 2017 16:53:46 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:45:41 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 26 Jul 2017 06:45:55 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:45:58 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 26 Jul 2017 06:47:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c699c241757a98573c75a48425026d0b9644c4e1e1435592d2a40b40bd802ee9`  
		Last Modified: Mon, 24 Jul 2017 17:01:12 GMT  
		Size: 38.1 MB (38103637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4e8e7e88e082468ca6e3abc2947988edce06e2d7e44c8b462c752539b59a983`  
		Last Modified: Wed, 26 Jul 2017 06:56:38 GMT  
		Size: 7.8 MB (7755102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45ce2c1e3bdfdd4b08eaf7f79bc03af61201a17cd9023019ce7905ee491709b8`  
		Last Modified: Wed, 26 Jul 2017 06:56:35 GMT  
		Size: 29.9 KB (29903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065e7b0522e5a1ceaf674b68943a4edce886bd18c86aaf16a6f0ed9bff196c5f`  
		Last Modified: Wed, 26 Jul 2017 06:56:56 GMT  
		Size: 82.2 MB (82243856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.12`

```console
$ docker pull mono@sha256:515753ecd70313f6107fcba1cadeaaad691848ed4c82d89e38e42c058a3e270e
```

-	Platforms:
	-	linux; amd64

### `mono:3.12` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128132498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fe26674f2d9f2710b81a29b4dc1f5720e651f011d7049f018c7d1b2754a4a24`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:45 GMT
ADD file:6c63dbdde9330ed01af8ef6252996d655a70725462f0a4fefe957062226c464e in / 
# Mon, 24 Jul 2017 16:53:46 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:45:41 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 26 Jul 2017 06:45:55 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:45:58 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 26 Jul 2017 06:47:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c699c241757a98573c75a48425026d0b9644c4e1e1435592d2a40b40bd802ee9`  
		Last Modified: Mon, 24 Jul 2017 17:01:12 GMT  
		Size: 38.1 MB (38103637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4e8e7e88e082468ca6e3abc2947988edce06e2d7e44c8b462c752539b59a983`  
		Last Modified: Wed, 26 Jul 2017 06:56:38 GMT  
		Size: 7.8 MB (7755102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45ce2c1e3bdfdd4b08eaf7f79bc03af61201a17cd9023019ce7905ee491709b8`  
		Last Modified: Wed, 26 Jul 2017 06:56:35 GMT  
		Size: 29.9 KB (29903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065e7b0522e5a1ceaf674b68943a4edce886bd18c86aaf16a6f0ed9bff196c5f`  
		Last Modified: Wed, 26 Jul 2017 06:56:56 GMT  
		Size: 82.2 MB (82243856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3`

```console
$ docker pull mono@sha256:515753ecd70313f6107fcba1cadeaaad691848ed4c82d89e38e42c058a3e270e
```

-	Platforms:
	-	linux; amd64

### `mono:3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128132498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fe26674f2d9f2710b81a29b4dc1f5720e651f011d7049f018c7d1b2754a4a24`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:53:45 GMT
ADD file:6c63dbdde9330ed01af8ef6252996d655a70725462f0a4fefe957062226c464e in / 
# Mon, 24 Jul 2017 16:53:46 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:45:41 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Wed, 26 Jul 2017 06:45:55 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:45:58 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 26 Jul 2017 06:47:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c699c241757a98573c75a48425026d0b9644c4e1e1435592d2a40b40bd802ee9`  
		Last Modified: Mon, 24 Jul 2017 17:01:12 GMT  
		Size: 38.1 MB (38103637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4e8e7e88e082468ca6e3abc2947988edce06e2d7e44c8b462c752539b59a983`  
		Last Modified: Wed, 26 Jul 2017 06:56:38 GMT  
		Size: 7.8 MB (7755102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45ce2c1e3bdfdd4b08eaf7f79bc03af61201a17cd9023019ce7905ee491709b8`  
		Last Modified: Wed, 26 Jul 2017 06:56:35 GMT  
		Size: 29.9 KB (29903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065e7b0522e5a1ceaf674b68943a4edce886bd18c86aaf16a6f0ed9bff196c5f`  
		Last Modified: Wed, 26 Jul 2017 06:56:56 GMT  
		Size: 82.2 MB (82243856 bytes)  
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

## `mono:5.0.0.100`

```console
$ docker pull mono@sha256:3e581cfaedf921bbb4b3b09581fed4a3abe5fc4ae2698fe94bac03de800f68ca
```

-	Platforms:
	-	linux; amd64

### `mono:5.0.0.100` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.2 MB (164204095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f284d57ad8f227551e6957271a7768a5e2d567d79c7712592ac767821f4facb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:49:48 GMT
ENV MONO_VERSION=5.0.0.100
# Wed, 26 Jul 2017 06:52:26 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:52:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 26 Jul 2017 06:54:38 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a56537e57119797dd26ed181d1198c76d88b49aa708d4dae424528cfb43751`  
		Last Modified: Wed, 26 Jul 2017 06:58:10 GMT  
		Size: 5.0 MB (5012189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f2cf06cece9eaf1e9de70908663795518a190518d2b26028ce30399045e8fab`  
		Last Modified: Wed, 26 Jul 2017 06:58:08 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce416e3e3a598b4268c03f0cccfc3804e617acb5f3c5f5fc2cfac27f43230a4e`  
		Last Modified: Wed, 26 Jul 2017 06:58:44 GMT  
		Size: 129.1 MB (129068128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.0.0`

```console
$ docker pull mono@sha256:3e581cfaedf921bbb4b3b09581fed4a3abe5fc4ae2698fe94bac03de800f68ca
```

-	Platforms:
	-	linux; amd64

### `mono:5.0.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.2 MB (164204095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f284d57ad8f227551e6957271a7768a5e2d567d79c7712592ac767821f4facb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:35 GMT
ADD file:9f2ffbca4af360bf690b4594501908bc985dfce32953ad8b733fc2a290b75a80 in / 
# Mon, 24 Jul 2017 16:51:35 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 06:49:48 GMT
ENV MONO_VERSION=5.0.0.100
# Wed, 26 Jul 2017 06:52:26 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 06:52:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Wed, 26 Jul 2017 06:54:38 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:5233d9aed181939c195efdc439722dc3e56f4f8d8d80f8844d0b7881f6ce9f99`  
		Last Modified: Mon, 24 Jul 2017 16:55:56 GMT  
		Size: 30.1 MB (30121718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a56537e57119797dd26ed181d1198c76d88b49aa708d4dae424528cfb43751`  
		Last Modified: Wed, 26 Jul 2017 06:58:10 GMT  
		Size: 5.0 MB (5012189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f2cf06cece9eaf1e9de70908663795518a190518d2b26028ce30399045e8fab`  
		Last Modified: Wed, 26 Jul 2017 06:58:08 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce416e3e3a598b4268c03f0cccfc3804e617acb5f3c5f5fc2cfac27f43230a4e`  
		Last Modified: Wed, 26 Jul 2017 06:58:44 GMT  
		Size: 129.1 MB (129068128 bytes)  
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

## `mono:5`

```console
$ docker pull mono@sha256:0e585274d866ad78e29a0cd7531b81fcdd350bb324a5316f32b2b06f496e4ec8
```

-	Platforms:
	-	linux; amd64

### `mono:5` - linux; amd64

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

## `mono:latest`

```console
$ docker pull mono@sha256:0e585274d866ad78e29a0cd7531b81fcdd350bb324a5316f32b2b06f496e4ec8
```

-	Platforms:
	-	linux; amd64

### `mono:latest` - linux; amd64

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
