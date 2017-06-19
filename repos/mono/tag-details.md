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
$ docker pull mono@sha256:3b1f9e819344e6fadba279adc14d636ff1aa49e03a8419d381896b0be55c002f
```

-	Platforms:
	-	linux; amd64

### `mono:3.12.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128128562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d105d8a2ccda76ce135bbc12659bb3eb97f48d0f836ee2771ab66c5749fa076a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:55:03 GMT
ADD file:a5a45130c6822d80986466e602b511ac799abed828e4374257fce47b771c0ce6 in / 
# Wed, 07 Jun 2017 17:55:04 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 06:43:35 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Thu, 08 Jun 2017 06:43:48 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 06:43:50 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 08 Jun 2017 06:45:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1498fd2556ea270ebbd3f95f3f48f6679ed3414bcd74e52ff946c64682378074`  
		Last Modified: Wed, 07 Jun 2017 18:16:00 GMT  
		Size: 38.1 MB (38105086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da0a01463dd4d409122fb9a51b6ae1df4d9a892bc53c78bbd6f392b9e4c3a4a0`  
		Last Modified: Wed, 14 Jun 2017 05:20:04 GMT  
		Size: 7.8 MB (7754851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9eeb0209894288ab1bac9186b9de5a58bc4207c9d3d383c3b77146393f427b`  
		Last Modified: Wed, 14 Jun 2017 05:20:00 GMT  
		Size: 29.9 KB (29894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4037fdd7dc0f6ede1bd225ff1068bd4cec35dd85fd22a68d9bae9d3a2349f3a`  
		Last Modified: Wed, 14 Jun 2017 05:20:25 GMT  
		Size: 82.2 MB (82238731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.12.0`

```console
$ docker pull mono@sha256:3b1f9e819344e6fadba279adc14d636ff1aa49e03a8419d381896b0be55c002f
```

-	Platforms:
	-	linux; amd64

### `mono:3.12.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128128562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d105d8a2ccda76ce135bbc12659bb3eb97f48d0f836ee2771ab66c5749fa076a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:55:03 GMT
ADD file:a5a45130c6822d80986466e602b511ac799abed828e4374257fce47b771c0ce6 in / 
# Wed, 07 Jun 2017 17:55:04 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 06:43:35 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Thu, 08 Jun 2017 06:43:48 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 06:43:50 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 08 Jun 2017 06:45:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1498fd2556ea270ebbd3f95f3f48f6679ed3414bcd74e52ff946c64682378074`  
		Last Modified: Wed, 07 Jun 2017 18:16:00 GMT  
		Size: 38.1 MB (38105086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da0a01463dd4d409122fb9a51b6ae1df4d9a892bc53c78bbd6f392b9e4c3a4a0`  
		Last Modified: Wed, 14 Jun 2017 05:20:04 GMT  
		Size: 7.8 MB (7754851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9eeb0209894288ab1bac9186b9de5a58bc4207c9d3d383c3b77146393f427b`  
		Last Modified: Wed, 14 Jun 2017 05:20:00 GMT  
		Size: 29.9 KB (29894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4037fdd7dc0f6ede1bd225ff1068bd4cec35dd85fd22a68d9bae9d3a2349f3a`  
		Last Modified: Wed, 14 Jun 2017 05:20:25 GMT  
		Size: 82.2 MB (82238731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3.12`

```console
$ docker pull mono@sha256:3b1f9e819344e6fadba279adc14d636ff1aa49e03a8419d381896b0be55c002f
```

-	Platforms:
	-	linux; amd64

### `mono:3.12` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128128562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d105d8a2ccda76ce135bbc12659bb3eb97f48d0f836ee2771ab66c5749fa076a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:55:03 GMT
ADD file:a5a45130c6822d80986466e602b511ac799abed828e4374257fce47b771c0ce6 in / 
# Wed, 07 Jun 2017 17:55:04 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 06:43:35 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Thu, 08 Jun 2017 06:43:48 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 06:43:50 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 08 Jun 2017 06:45:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1498fd2556ea270ebbd3f95f3f48f6679ed3414bcd74e52ff946c64682378074`  
		Last Modified: Wed, 07 Jun 2017 18:16:00 GMT  
		Size: 38.1 MB (38105086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da0a01463dd4d409122fb9a51b6ae1df4d9a892bc53c78bbd6f392b9e4c3a4a0`  
		Last Modified: Wed, 14 Jun 2017 05:20:04 GMT  
		Size: 7.8 MB (7754851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9eeb0209894288ab1bac9186b9de5a58bc4207c9d3d383c3b77146393f427b`  
		Last Modified: Wed, 14 Jun 2017 05:20:00 GMT  
		Size: 29.9 KB (29894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4037fdd7dc0f6ede1bd225ff1068bd4cec35dd85fd22a68d9bae9d3a2349f3a`  
		Last Modified: Wed, 14 Jun 2017 05:20:25 GMT  
		Size: 82.2 MB (82238731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:3`

```console
$ docker pull mono@sha256:3b1f9e819344e6fadba279adc14d636ff1aa49e03a8419d381896b0be55c002f
```

-	Platforms:
	-	linux; amd64

### `mono:3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128128562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d105d8a2ccda76ce135bbc12659bb3eb97f48d0f836ee2771ab66c5749fa076a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:55:03 GMT
ADD file:a5a45130c6822d80986466e602b511ac799abed828e4374257fce47b771c0ce6 in / 
# Wed, 07 Jun 2017 17:55:04 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 06:43:35 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Thu, 08 Jun 2017 06:43:48 GMT
RUN apt-get update 	&& apt-get install -y curl 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 06:43:50 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 08 Jun 2017 06:45:43 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/3.12.0 main" > /etc/apt/sources.list.d/mono-xamarin.list         && echo "deb http://download.mono-project.com/repo/debian 312-security main" >> /etc/apt/sources.list.d/mono-xamarin.list 	&& apt-get update 	&& apt-get install -y mono-devel ca-certificates-mono fsharp mono-vbnc nuget 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1498fd2556ea270ebbd3f95f3f48f6679ed3414bcd74e52ff946c64682378074`  
		Last Modified: Wed, 07 Jun 2017 18:16:00 GMT  
		Size: 38.1 MB (38105086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da0a01463dd4d409122fb9a51b6ae1df4d9a892bc53c78bbd6f392b9e4c3a4a0`  
		Last Modified: Wed, 14 Jun 2017 05:20:04 GMT  
		Size: 7.8 MB (7754851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9eeb0209894288ab1bac9186b9de5a58bc4207c9d3d383c3b77146393f427b`  
		Last Modified: Wed, 14 Jun 2017 05:20:00 GMT  
		Size: 29.9 KB (29894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4037fdd7dc0f6ede1bd225ff1068bd4cec35dd85fd22a68d9bae9d3a2349f3a`  
		Last Modified: Wed, 14 Jun 2017 05:20:25 GMT  
		Size: 82.2 MB (82238731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0.524`

```console
$ docker pull mono@sha256:edac06605be001885cfa2cd4060df2e3b6dc5a9aa3ec8a435e6641f70b24af67
```

-	Platforms:
	-	linux; amd64

### `mono:4.8.0.524` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153007674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd016744019fb99e828a162eea67576e4b7144f29b6b46e4a1a3c2e437fa3d8e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:55:03 GMT
ADD file:a5a45130c6822d80986466e602b511ac799abed828e4374257fce47b771c0ce6 in / 
# Wed, 07 Jun 2017 17:55:04 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 06:43:35 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Thu, 08 Jun 2017 06:46:06 GMT
ENV MONO_VERSION=4.8.0.524
# Thu, 08 Jun 2017 06:46:19 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 06:46:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 08 Jun 2017 06:48:06 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1498fd2556ea270ebbd3f95f3f48f6679ed3414bcd74e52ff946c64682378074`  
		Last Modified: Wed, 07 Jun 2017 18:16:00 GMT  
		Size: 38.1 MB (38105086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b257b7a0f26f1436a93d6a18fa8acb5d469c07244cb80baa94f4f5b5fd1066`  
		Last Modified: Wed, 14 Jun 2017 05:22:15 GMT  
		Size: 7.8 MB (7754844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfc0bbba53d9d3ac8366c881f63706a61ef9d684e1732a58501209ca1e2cc22`  
		Last Modified: Wed, 14 Jun 2017 05:22:12 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2c51536ee0c88377b6d8141d29c87e5119b4e897fbde92b31d48e1d0a18ee0`  
		Last Modified: Wed, 14 Jun 2017 05:22:42 GMT  
		Size: 107.1 MB (107117838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8.0`

```console
$ docker pull mono@sha256:edac06605be001885cfa2cd4060df2e3b6dc5a9aa3ec8a435e6641f70b24af67
```

-	Platforms:
	-	linux; amd64

### `mono:4.8.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153007674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd016744019fb99e828a162eea67576e4b7144f29b6b46e4a1a3c2e437fa3d8e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:55:03 GMT
ADD file:a5a45130c6822d80986466e602b511ac799abed828e4374257fce47b771c0ce6 in / 
# Wed, 07 Jun 2017 17:55:04 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 06:43:35 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Thu, 08 Jun 2017 06:46:06 GMT
ENV MONO_VERSION=4.8.0.524
# Thu, 08 Jun 2017 06:46:19 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 06:46:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 08 Jun 2017 06:48:06 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1498fd2556ea270ebbd3f95f3f48f6679ed3414bcd74e52ff946c64682378074`  
		Last Modified: Wed, 07 Jun 2017 18:16:00 GMT  
		Size: 38.1 MB (38105086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b257b7a0f26f1436a93d6a18fa8acb5d469c07244cb80baa94f4f5b5fd1066`  
		Last Modified: Wed, 14 Jun 2017 05:22:15 GMT  
		Size: 7.8 MB (7754844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfc0bbba53d9d3ac8366c881f63706a61ef9d684e1732a58501209ca1e2cc22`  
		Last Modified: Wed, 14 Jun 2017 05:22:12 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2c51536ee0c88377b6d8141d29c87e5119b4e897fbde92b31d48e1d0a18ee0`  
		Last Modified: Wed, 14 Jun 2017 05:22:42 GMT  
		Size: 107.1 MB (107117838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4.8`

```console
$ docker pull mono@sha256:edac06605be001885cfa2cd4060df2e3b6dc5a9aa3ec8a435e6641f70b24af67
```

-	Platforms:
	-	linux; amd64

### `mono:4.8` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153007674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd016744019fb99e828a162eea67576e4b7144f29b6b46e4a1a3c2e437fa3d8e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:55:03 GMT
ADD file:a5a45130c6822d80986466e602b511ac799abed828e4374257fce47b771c0ce6 in / 
# Wed, 07 Jun 2017 17:55:04 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 06:43:35 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Thu, 08 Jun 2017 06:46:06 GMT
ENV MONO_VERSION=4.8.0.524
# Thu, 08 Jun 2017 06:46:19 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 06:46:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 08 Jun 2017 06:48:06 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1498fd2556ea270ebbd3f95f3f48f6679ed3414bcd74e52ff946c64682378074`  
		Last Modified: Wed, 07 Jun 2017 18:16:00 GMT  
		Size: 38.1 MB (38105086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b257b7a0f26f1436a93d6a18fa8acb5d469c07244cb80baa94f4f5b5fd1066`  
		Last Modified: Wed, 14 Jun 2017 05:22:15 GMT  
		Size: 7.8 MB (7754844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfc0bbba53d9d3ac8366c881f63706a61ef9d684e1732a58501209ca1e2cc22`  
		Last Modified: Wed, 14 Jun 2017 05:22:12 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2c51536ee0c88377b6d8141d29c87e5119b4e897fbde92b31d48e1d0a18ee0`  
		Last Modified: Wed, 14 Jun 2017 05:22:42 GMT  
		Size: 107.1 MB (107117838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:4`

```console
$ docker pull mono@sha256:edac06605be001885cfa2cd4060df2e3b6dc5a9aa3ec8a435e6641f70b24af67
```

-	Platforms:
	-	linux; amd64

### `mono:4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153007674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd016744019fb99e828a162eea67576e4b7144f29b6b46e4a1a3c2e437fa3d8e`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:55:03 GMT
ADD file:a5a45130c6822d80986466e602b511ac799abed828e4374257fce47b771c0ce6 in / 
# Wed, 07 Jun 2017 17:55:04 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 06:43:35 GMT
MAINTAINER Jo Shields <jo.shields@xamarin.com>
# Thu, 08 Jun 2017 06:46:06 GMT
ENV MONO_VERSION=4.8.0.524
# Thu, 08 Jun 2017 06:46:19 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 06:46:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Thu, 08 Jun 2017 06:48:06 GMT
RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:1498fd2556ea270ebbd3f95f3f48f6679ed3414bcd74e52ff946c64682378074`  
		Last Modified: Wed, 07 Jun 2017 18:16:00 GMT  
		Size: 38.1 MB (38105086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b257b7a0f26f1436a93d6a18fa8acb5d469c07244cb80baa94f4f5b5fd1066`  
		Last Modified: Wed, 14 Jun 2017 05:22:15 GMT  
		Size: 7.8 MB (7754844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfc0bbba53d9d3ac8366c881f63706a61ef9d684e1732a58501209ca1e2cc22`  
		Last Modified: Wed, 14 Jun 2017 05:22:12 GMT  
		Size: 29.9 KB (29906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2c51536ee0c88377b6d8141d29c87e5119b4e897fbde92b31d48e1d0a18ee0`  
		Last Modified: Wed, 14 Jun 2017 05:22:42 GMT  
		Size: 107.1 MB (107117838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.0.0.100`

```console
$ docker pull mono@sha256:1e58ad250c5654496ccfff651a4696a724cd30f70881e3d213662f3fdd9af971
```

-	Platforms:
	-	linux; amd64

### `mono:5.0.0.100` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.2 MB (164178886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d58cfebefe4f2e71f86b695fe84483656ddbe1b50d47e0faa80758e4f0c77672`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Mon, 19 Jun 2017 20:40:55 GMT
ENV MONO_VERSION=5.0.0.100
# Mon, 19 Jun 2017 20:41:14 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Jun 2017 20:41:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Jun 2017 20:43:06 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:23e3d0773492d1b2fdc72507c0c8409a08ea9d94b45442954f5ff66a3975aaa4`  
		Last Modified: Wed, 07 Jun 2017 18:01:23 GMT  
		Size: 30.1 MB (30098598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7c54cf63f591d1f8ed30e84e77112833ce9fbd9363e72360beb7f781891ff54`  
		Last Modified: Mon, 19 Jun 2017 20:52:17 GMT  
		Size: 5.0 MB (5012009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335c17d3182c1946008a4ec03ecc0e76fbd94708f257d8fea82805009ce503b3`  
		Last Modified: Mon, 19 Jun 2017 20:52:15 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a113864ea59a195f4e0af8111806a21797a906aea1ccec8b243fb1a9e67dc480`  
		Last Modified: Mon, 19 Jun 2017 20:52:56 GMT  
		Size: 129.1 MB (129066214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.0.0`

```console
$ docker pull mono@sha256:1e58ad250c5654496ccfff651a4696a724cd30f70881e3d213662f3fdd9af971
```

-	Platforms:
	-	linux; amd64

### `mono:5.0.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.2 MB (164178886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d58cfebefe4f2e71f86b695fe84483656ddbe1b50d47e0faa80758e4f0c77672`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Mon, 19 Jun 2017 20:40:55 GMT
ENV MONO_VERSION=5.0.0.100
# Mon, 19 Jun 2017 20:41:14 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Jun 2017 20:41:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Jun 2017 20:43:06 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:23e3d0773492d1b2fdc72507c0c8409a08ea9d94b45442954f5ff66a3975aaa4`  
		Last Modified: Wed, 07 Jun 2017 18:01:23 GMT  
		Size: 30.1 MB (30098598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7c54cf63f591d1f8ed30e84e77112833ce9fbd9363e72360beb7f781891ff54`  
		Last Modified: Mon, 19 Jun 2017 20:52:17 GMT  
		Size: 5.0 MB (5012009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335c17d3182c1946008a4ec03ecc0e76fbd94708f257d8fea82805009ce503b3`  
		Last Modified: Mon, 19 Jun 2017 20:52:15 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a113864ea59a195f4e0af8111806a21797a906aea1ccec8b243fb1a9e67dc480`  
		Last Modified: Mon, 19 Jun 2017 20:52:56 GMT  
		Size: 129.1 MB (129066214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.0.1.1`

```console
$ docker pull mono@sha256:89b2ccc5588ddadf4f4808ef8441a461e3c996424c96334f555fd70a9f08951c
```

-	Platforms:
	-	linux; amd64

### `mono:5.0.1.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.2 MB (164183009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fdf84de26c4797f05285211df8aa10ce0b8af607f43621f84488d82a07e7e47`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Mon, 19 Jun 2017 20:43:34 GMT
ENV MONO_VERSION=5.0.1.1
# Mon, 19 Jun 2017 20:43:50 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Jun 2017 20:44:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Jun 2017 20:45:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:23e3d0773492d1b2fdc72507c0c8409a08ea9d94b45442954f5ff66a3975aaa4`  
		Last Modified: Wed, 07 Jun 2017 18:01:23 GMT  
		Size: 30.1 MB (30098598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2189b9a3348bd85d39ebb160e826d40db7c79e5d480e4ad83e0bee32a43c032f`  
		Last Modified: Mon, 19 Jun 2017 20:54:15 GMT  
		Size: 5.0 MB (5011987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff61106bb1a89a92c1b24b882bcd2c9753e9920944e167b44af878a824f31d6b`  
		Last Modified: Mon, 19 Jun 2017 20:54:13 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1e675d071f513b2d3db81bdd1eaa07a49b74e2ced4bfff85a1838f5db74b23`  
		Last Modified: Mon, 19 Jun 2017 20:54:57 GMT  
		Size: 129.1 MB (129070359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.0.1`

```console
$ docker pull mono@sha256:89b2ccc5588ddadf4f4808ef8441a461e3c996424c96334f555fd70a9f08951c
```

-	Platforms:
	-	linux; amd64

### `mono:5.0.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.2 MB (164183009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fdf84de26c4797f05285211df8aa10ce0b8af607f43621f84488d82a07e7e47`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Mon, 19 Jun 2017 20:43:34 GMT
ENV MONO_VERSION=5.0.1.1
# Mon, 19 Jun 2017 20:43:50 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Jun 2017 20:44:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Jun 2017 20:45:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:23e3d0773492d1b2fdc72507c0c8409a08ea9d94b45442954f5ff66a3975aaa4`  
		Last Modified: Wed, 07 Jun 2017 18:01:23 GMT  
		Size: 30.1 MB (30098598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2189b9a3348bd85d39ebb160e826d40db7c79e5d480e4ad83e0bee32a43c032f`  
		Last Modified: Mon, 19 Jun 2017 20:54:15 GMT  
		Size: 5.0 MB (5011987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff61106bb1a89a92c1b24b882bcd2c9753e9920944e167b44af878a824f31d6b`  
		Last Modified: Mon, 19 Jun 2017 20:54:13 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1e675d071f513b2d3db81bdd1eaa07a49b74e2ced4bfff85a1838f5db74b23`  
		Last Modified: Mon, 19 Jun 2017 20:54:57 GMT  
		Size: 129.1 MB (129070359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5.0`

```console
$ docker pull mono@sha256:89b2ccc5588ddadf4f4808ef8441a461e3c996424c96334f555fd70a9f08951c
```

-	Platforms:
	-	linux; amd64

### `mono:5.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.2 MB (164183009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fdf84de26c4797f05285211df8aa10ce0b8af607f43621f84488d82a07e7e47`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Mon, 19 Jun 2017 20:43:34 GMT
ENV MONO_VERSION=5.0.1.1
# Mon, 19 Jun 2017 20:43:50 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Jun 2017 20:44:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Jun 2017 20:45:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:23e3d0773492d1b2fdc72507c0c8409a08ea9d94b45442954f5ff66a3975aaa4`  
		Last Modified: Wed, 07 Jun 2017 18:01:23 GMT  
		Size: 30.1 MB (30098598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2189b9a3348bd85d39ebb160e826d40db7c79e5d480e4ad83e0bee32a43c032f`  
		Last Modified: Mon, 19 Jun 2017 20:54:15 GMT  
		Size: 5.0 MB (5011987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff61106bb1a89a92c1b24b882bcd2c9753e9920944e167b44af878a824f31d6b`  
		Last Modified: Mon, 19 Jun 2017 20:54:13 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1e675d071f513b2d3db81bdd1eaa07a49b74e2ced4bfff85a1838f5db74b23`  
		Last Modified: Mon, 19 Jun 2017 20:54:57 GMT  
		Size: 129.1 MB (129070359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:5`

```console
$ docker pull mono@sha256:89b2ccc5588ddadf4f4808ef8441a461e3c996424c96334f555fd70a9f08951c
```

-	Platforms:
	-	linux; amd64

### `mono:5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.2 MB (164183009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fdf84de26c4797f05285211df8aa10ce0b8af607f43621f84488d82a07e7e47`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Mon, 19 Jun 2017 20:43:34 GMT
ENV MONO_VERSION=5.0.1.1
# Mon, 19 Jun 2017 20:43:50 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Jun 2017 20:44:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Jun 2017 20:45:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:23e3d0773492d1b2fdc72507c0c8409a08ea9d94b45442954f5ff66a3975aaa4`  
		Last Modified: Wed, 07 Jun 2017 18:01:23 GMT  
		Size: 30.1 MB (30098598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2189b9a3348bd85d39ebb160e826d40db7c79e5d480e4ad83e0bee32a43c032f`  
		Last Modified: Mon, 19 Jun 2017 20:54:15 GMT  
		Size: 5.0 MB (5011987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff61106bb1a89a92c1b24b882bcd2c9753e9920944e167b44af878a824f31d6b`  
		Last Modified: Mon, 19 Jun 2017 20:54:13 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1e675d071f513b2d3db81bdd1eaa07a49b74e2ced4bfff85a1838f5db74b23`  
		Last Modified: Mon, 19 Jun 2017 20:54:57 GMT  
		Size: 129.1 MB (129070359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mono:latest`

```console
$ docker pull mono@sha256:89b2ccc5588ddadf4f4808ef8441a461e3c996424c96334f555fd70a9f08951c
```

-	Platforms:
	-	linux; amd64

### `mono:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.2 MB (164183009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fdf84de26c4797f05285211df8aa10ce0b8af607f43621f84488d82a07e7e47`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Jun 2017 17:42:58 GMT
ADD file:d4a1325be126ab5f43577dfb1ef2d3cf370a819123195659487b61bf651b8f00 in / 
# Wed, 07 Jun 2017 17:42:59 GMT
CMD ["bash"]
# Mon, 19 Jun 2017 20:43:34 GMT
ENV MONO_VERSION=5.0.1.1
# Mon, 19 Jun 2017 20:43:50 GMT
RUN apt-get update   && apt-get install -y curl   && rm -rf /var/lib/apt/lists/*
# Mon, 19 Jun 2017 20:44:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# Mon, 19 Jun 2017 20:45:46 GMT
RUN echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list   && apt-get update   && apt-get install -y binutils mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl   && rm -rf /var/lib/apt/lists/* /tmp/*
```

-	Layers:
	-	`sha256:23e3d0773492d1b2fdc72507c0c8409a08ea9d94b45442954f5ff66a3975aaa4`  
		Last Modified: Wed, 07 Jun 2017 18:01:23 GMT  
		Size: 30.1 MB (30098598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2189b9a3348bd85d39ebb160e826d40db7c79e5d480e4ad83e0bee32a43c032f`  
		Last Modified: Mon, 19 Jun 2017 20:54:15 GMT  
		Size: 5.0 MB (5011987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff61106bb1a89a92c1b24b882bcd2c9753e9920944e167b44af878a824f31d6b`  
		Last Modified: Mon, 19 Jun 2017 20:54:13 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1e675d071f513b2d3db81bdd1eaa07a49b74e2ced4bfff85a1838f5db74b23`  
		Last Modified: Mon, 19 Jun 2017 20:54:57 GMT  
		Size: 129.1 MB (129070359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
